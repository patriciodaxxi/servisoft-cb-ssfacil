unit UCadPedWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RzPanel, NxCollection, DBCtrls,
  ExtCtrls, Menus, Grids, DBGrids, SMDBGrid, UDMCadPedWeb, rsDBUtils,
  RzPrgres, ComCtrls, JvStatusBar, uUtilPadrao, CurrEdit, uDMCadPedido, uConsPedWeb_Item,
  RxLookup;

type
  TfrmCadPedWeb = class(TForm)
    SMDBGrid1: TSMDBGrid;
    PopupMenu1: TPopupMenu;
    SelecionarTodos1: TMenuItem;
    Panel2: TPanel;
    Panel1: TPanel;
    JvStatusBar1: TJvStatusBar;
    Panel3: TPanel;
    RzProgressBar1: TRzProgressBar;
    Panel4: TPanel;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtValorTotalDesconto: TCurrencyEdit;
    edtValorTotal: TCurrencyEdit;
    Label3: TLabel;
    btnConfirmar: TNxButton;
    NxButton1: TNxButton;
    edtDate: TDateEdit;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    Label30: TLabel;
    rxdbVendedor: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    ctComando : String;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Gravar_Itens;
    procedure prc_Consultar;
    procedure prc_Calcular_Totais;
  public
    ffrmConsPedWeb_Item : TfrmConsPedWeb_Item;
    fdmCadPedWeb : TDMCadPedWeb;
    fdmCadPedido : TDMCadPedido;
    { Public declarations }
  end;

var
  frmCadPedWeb: TfrmCadPedWeb;

implementation

uses DB, uGrava_Pedido, uCalculo_Pedido;


{$R *.dfm}

procedure TfrmCadPedWeb.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fdmCadPedWeb);
end;

procedure TfrmCadPedWeb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadPedWeb.btnConfirmarClick(Sender: TObject);
var
  vGerar : Boolean;
  vContador : Integer;
begin
  if fdmCadPedWeb.qParametros_GeralFILIAL_PADRAO_PEDWEB.AsInteger <= 0 then
  begin
    ShowMessage('Filial padrão do Pedido Web não configurado no Parâmetro!');
    Exit;
  end;
  vFilial := fdmCadPedWeb.qParametros_GeralFILIAL_PADRAO_PEDWEB.AsInteger;
  vGerar := False;
  vContador := 0;
  fdmCadPedWeb.cdsConsultaPedWeb.First;
  RzProgressBar1.Visible := True;
  RzProgressBar1.TotalParts := fdmCadPedWeb.cdsConsultaPedWeb.RecordCount;
  while not fdmCadPedWeb.cdsConsultaPedWeb.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      RzProgressBar1.IncPartsByOne;
      vGerar := True;
      Inc(vContador);
      fdmCadPedWeb.prc_Localizar(fdmCadPedWeb.cdsConsultaPedWebID.AsInteger);
      prc_Inserir_Registro;
      prc_Gravar_Registro;

      // Grava Aprovação na tabela PEDWEB
      fdmCadPedWeb.cdsPedWeb.Edit;
      fdmCadPedWeb.cdsPedWebGERADO.AsString := 'S';
      fdmCadPedWeb.cdsPedWebDATA_APROVADO.AsDateTime := edtDate.Date;
      fdmCadPedWeb.cdsPedWeb.Post;
      fdmCadPedWeb.cdsPedWeb.ApplyUpdates(0);
    end;
    fdmCadPedWeb.cdsConsultaPedWeb.Next;
  end;
  if not vGerar then
  begin
    ShowMessage('Nenhum Registro foi selecionado');
    exit;
  end
  else
    ShowMessage('Pedido(s): ' + IntToStr(vContador)+ ' Gerado(s)');
  RzProgressBar1.TotalParts := 0;
  RzProgressBar1.Visible := False;
  btnConsultarClick(Sender);
end;

procedure TfrmCadPedWeb.NxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedWeb.prc_Inserir_Registro;
var
  vID_LocalAux: Integer;
begin
  vID_LocalAux := fnc_Verificar_Local(fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
  if vID_LocalAux <= 0 then
    exit;
  uGrava_Pedido.prc_Inserir_Ped(fdmCadPedido);
  fDMCadPedido.cdsPedidoTIPO_REG.AsString := 'P';
  if (fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P') or (vID_LocalAux > 0) then
    fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;
  fDMCadPedido.cdsPedidoID_REGIMETRIB.AsInteger := fDMCadPedido.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString := fDMCadPedido.cdsFilialSIMPLES.AsString;
  fDMCadPedido.cdsPedidoID_REGIMETRIB.AsInteger := fDMCadPedido.cdsFilialID_REGIME_TRIB.AsInteger;
  fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString := fDMCadPedido.cdsFilialSIMPLES.AsString;
  fDMCadPedido.prc_Abrir_CSTICMS(fDMCadPedido.cdsFilialSIMPLES.AsString);
  fDMCadPedido.cdsPedidoTIPO_ATENDIMENTO.AsInteger := 1;
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
  fdmCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fdmCadPedWeb.cdsPedWebID_USUARIO.AsInteger;
  fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger  := fdmCadPedWeb.cdsPedWebID_PESSOA.AsInteger;
  if (fdmCadPedido.qParametros_PedUSA_OPERACAO_AUT.AsString = 'S') and (fdmCadPedido.cdsParametrosID_OPERACAO_VENDA.AsInteger > 0) then
  begin
    fdmCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger := fdmCadPedido.cdsParametrosID_OPERACAO_VENDA.AsInteger;
    if (trim(fdmCadPedido.cdsFilialFINALIDADE_PADRAO.AsString) <> '') and (not(fdmCadPedido.cdsFilialFINALIDADE_PADRAO.IsNull)) then
      fDMCadPedido.cdsPedidoFINALIDADE.AsString := fdmCadPedido.cdsFilialFINALIDADE_PADRAO.AsString;
  end;
  fdmCadPedido.cdsPedidoNOME_CLIENTE.AsString := SQLLocate('PESSOA','CODIGO','NOME',fdmCadPedWeb.cdsPedWebID_PESSOA.AsString);
  fdmCadPedido.cdsPedidoID_CONDPGTO.AsInteger := fdmCadPedWeb.cdsPedWebID_FORMA_PAGAMENTO.AsInteger;
  fdmCadPedido.cdsPedidoVLR_DESCONTO.AsFloat  := fdmCadPedWeb.cdsPedWebVLR_DESCONTO.AsFloat;
  fdmCadPedido.cdsPedidoVLR_TOTAL.AsFloat     := fdmCadPedWeb.cdsPedWebVLR_TOTAL.AsFloat;
  fdmCadPedido.cdsPedidoDTEMISSAO.AsDateTime  := fdmCadPedWeb.cdsPedWebDATA_EMISSAO.AsDateTime;
  fdmCadPedido.cdsPedidoUSUARIO.AsString      := vUsuario;
end;

procedure TfrmCadPedWeb.prc_Gravar_Registro;
begin
  prc_Gravar_Itens;
  uCalculo_Pedido.prc_Calcula_Perc_Comissao(fDMCadPedido);
  if fdmCadPedido.cdsPedido.State in [dsBrowse] then
    fdmCadPedido.cdsPedido.Edit;
  uGrava_Pedido.prc_Gravar(fDMCadPedido,'ALT');
end;

procedure TfrmCadPedWeb.prc_Gravar_Itens;
begin
  fdmCadPedWeb.cdsPedWeb_Item.First;
  while not fdmCadPedWeb.cdsPedWeb_Item.Eof do
  begin
    fDMCadPedido.prc_Inserir_Itens;
    fdmCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fdmCadPedWeb.cdsPedWeb_ItemID_PRODUTO.AsInteger;
    fdmCadPedido.cdsPedido_ItensQTD.AsFloat          := fdmCadPedWeb.cdsPedWeb_ItemQUANTIDADE.AsFloat;
    fdmCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fdmCadPedWeb.cdsPedWeb_ItemQUANTIDADE.AsFloat;
    fdmCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := fdmCadPedWeb.cdsPedWeb_ItemVLR_DESCONTO.AsFloat;
    fdmCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fdmCadPedWeb.cdsPedWeb_ItemVLR_UNITARIO.AsFloat;
    fdmCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := fdmCadPedWeb.cdsPedWeb_ItemVLR_TOTAL.AsFloat;
    fdmCadPedido.cdsPedido_ItensOBS.AsString         := fdmCadPedWeb.cdsPedWeb_ItemOBS.AsString;
    fdmCadPedido.cdsPedido_ItensUNIDADE.AsString     := SQLLocate('PRODUTO','ID','UNIDADE',fdmCadPedWeb.cdsPedWeb_ItemID_PRODUTO.AsString);
    fdmCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := SQLLocate('PRODUTO','ID','NOME',fdmCadPedWeb.cdsPedWeb_ItemID_PRODUTO.AsString);
    fDMCadPedido.cdsPedido_Itens.Post;
    fDMCadPedido.cdsPedido_Itens.ApplyUpdates(0);
    fdmCadPedWeb.cdsPedWeb_Item.Next;
  end;
end;

procedure TfrmCadPedWeb.FormShow(Sender: TObject);
begin
  fdmCadPedWeb := TDMCadPedWeb.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fdmCadPedWeb);
  fdmCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fdmCadPedido);
  fdmCadPedWeb.cdsConsultaPedWeb.Close;
  fdmCadPedWeb.cdsConsultaPedWeb.Open;
  fdmCadPedWeb.cdsVendedor.Close;
  fdmCadPedWeb.cdsVendedor.Open;
  edtDate.Date := Date;
  prc_Calcular_Totais;
  fdmCadPedWeb.qParametros_Geral.Open;
  fdmCadPedido.cdsCliente.Close;
  fdmCadPedido.cdsCliente.Open;
  ctComando := fdmCadPedWeb.sdsConsultaPedWeb.CommandText;
end;

procedure TfrmCadPedWeb.SMDBGrid1DblClick(Sender: TObject);
begin
  if (fdmCadPedWeb.cdsConsultaPedWeb.IsEmpty) then
    exit;

  fdmCadPedWeb.prc_Localizar(fdmCadPedWeb.cdsConsultaPedWebID.AsInteger);
  ffrmConsPedWeb_Item := TfrmConsPedWeb_Item.Create(self);
  ffrmConsPedWeb_Item.ShowModal;
  FreeAndNil(ffrmConsPedWeb_Item);
end;

procedure TfrmCadPedWeb.prc_Consultar;
var
  vComando : String;
begin
  vComando := ctComando;
  fdmCadPedWeb.cdsConsultaPedWeb.Close;
  if DateEdit1.date > 10 then
    vComando := vComando + ' AND PWEB.DATA_EMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.Date));
  if DateEdit2.date > 10 then
    vComando := vComando + ' AND PWEB.DATA_EMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.Date));
  if rxdbVendedor.KeyValue > 0 then
    vComando := vComando + ' AND PWEB.ID_USUARIO = ' + IntToStr(fdmCadPedWeb.cdsVendedorCOD_VENDEDOR.AsInteger);
  fdmCadPedWeb.sdsConsultaPedWeb.CommandText := vComando;
  fdmCadPedWeb.cdsConsultaPedWeb.Open;
  prc_Calcular_Totais;
end;

procedure TfrmCadPedWeb.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPedWeb.prc_Calcular_Totais;
begin
  if not (fdmCadPedWeb.cdsConsultaPedWeb.IsEmpty) then
  begin
    edtValorTotalDesconto.Value := fdmCadPedWeb.cdsConsultaPedWeb.AggFields.FindField('ValorTotalDesconto').Value;
    edtValorTotal.Value := fdmCadPedWeb.cdsConsultaPedWeb.AggFields.FindField('ValorTotal').Value;
  end
  else
  begin
    edtValorTotalDesconto.Value := 0;
    edtValorTotal.Value := 0;
  end;

end;

end.
