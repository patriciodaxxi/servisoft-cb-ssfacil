unit USel_OS_PROC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadPedido, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadPedido_Itens, 
  NxCollection, uCadVale_Itens, FMTBcd, SqlExpr, DBClient, Provider;

type
  TfrmSel_OS_Proc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    sdsOS: TSQLDataSet;
    dspOS: TDataSetProvider;
    cdsOS: TClientDataSet;
    dsOS: TDataSource;
    cdsOSID: TIntegerField;
    cdsOSITEM: TIntegerField;
    cdsOSQTD: TIntegerField;
    cdsOSQTD_FATURADO: TIntegerField;
    cdsOSQTD_RESTANTE: TIntegerField;
    cdsOSID_PRODUTO: TIntegerField;
    cdsOSNOME_PRODUTO: TStringField;
    cdsOSUNIDADE: TStringField;
    cdsOSID_NCM: TIntegerField;
    cdsOSID_CLIENTE: TIntegerField;
    cdsOSNOME: TStringField;
    cdsOSCNPJ_CPF: TStringField;
    cdsOSPRODUZIDO: TStringField;
    cdsOSNUM_OS: TIntegerField;
    cdsOSREFERENCIA: TStringField;
    cdsOSVLR_TOTAL: TFloatField;
    cdsOSNUM_NOTA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_OS;
    procedure prc_Gravar_Pedido;
    procedure prc_Gravar_PedidoItens;

  public
    { Public declarations }
    vCodCliente: Integer;
    vFilial_Loc : Integer;

    fDMCadPedido: TDMCadPedido;
    ffrmCadPedido_Itens: TfrmCadPedido_Itens;

  end;

var
  frmSel_OS_Proc: TfrmSel_OS_Proc;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmSel_OS_Proc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_OS_Proc.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadPedido);
  RxDBLookupCombo1.KeyValue := fDMCadPedido.vID_CFOP;
end;

procedure TfrmSel_OS_Proc.prc_Consultar_OS;
begin
  SMDBGrid1.DisableScroll;
  cdsOS.Close;
  sdsOS.ParamByName('ID_CLIENTE').AsInteger := vCodCliente;
  sdsOS.ParamByName('FILIAL').AsInteger     := vFilial_Loc;
  cdsOS.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_OS_Proc.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd_Faturado : Real;  
begin
{  if (SMDBGrid1.SelectedRows.CurrentRowSelected) and
     (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsOSQTD_AFATURAR.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsOSQTD_FATURADO.AsFloat)) <= 0) then
    Background  := clRed
  else
  begin
    vQtd_Faturado := fDMCadPedido.cdsOSQTD_FATURADO.AsFloat;
    if StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0 then
    begin
      Background  := clGreen;
      AFont.Color := clWhite;
    end;
    if (Field = fDMCadPedido.cdsOSQTD_AFATURAR) then
    begin
      Background  := clYellow;
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
    end
    else
    if (Field = fDMCadPedido.cdsOSQTD_RESTANTE) then
    begin
      Background  := clMoneyGreen;
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
    end;
  end;}
end;

procedure TfrmSel_OS_Proc.prc_Gravar_PedidoItens;
var
  vItemAux: Integer;
  vNum_Controle_Tam : Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto : String;
  vID_VariacaoAux: Integer;
begin
  fDMCadPedido.cdsPedido_Itens.Last;
  vItemAux := fDMCadPedido.cdsPedido_ItensITEM.AsInteger + 1;

  fDMCadPedido.cdsPedido_Itens.Insert;
  fDMCadPedido.cdsPedido_ItensID.AsInteger          := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMCadPedido.cdsPedido_ItensITEM.AsInteger        := vItemAux;
  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger  := cdsOSID_PRODUTO.AsInteger;
  fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger     := RxDBLookupCombo1.KeyValue;
  vID_VariacaoAux := fDMCadPedido.fnc_Buscar_Regra_CFOP(fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger);
  if vID_VariacaoAux > 0 then
  begin
    fDMCadPedido.vID_Variacao := vID_VariacaoAux;
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := vID_VariacaoAux;
  end
  else
  begin
    fDMCadPedido.vID_Variacao := 0;
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := 0;
  end;
  //ffrmCadPedido_Itens.RxDBLookupCombo1.KeyValue     := RxDBLookupCombo1.KeyValue;
  //ffrmCadPedido_Itens.RxDBLookupCombo1Exit(ffrmCadPedido_Itens);
  //fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := fDMCadPedido.vID_Variacao;

  ffrmCadPedido_Itens.prc_Move_Dados_Itens;
  
  if cdsOSID_NCM.AsInteger > 0 then
    fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := cdsOSID_NCM.AsInteger;
      
  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString     := cdsOSUNIDADE.AsString;
  fDMCadPedido.cdsPedido_ItensQTD.AsInteger        := cdsOSQTD_RESTANTE.AsInteger;
  fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',cdsOSVLR_TOTAL.AsFloat / cdsOSQTD_RESTANTE.AsInteger));
  vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat * fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat / 100));
  fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString     := cdsOSNOME_PRODUTO.AsString;
  fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString      := cdsOSREFERENCIA.AsString;
  fDMCadPedido.cdsPedido_ItensID_MOVESTOQUE.AsInteger  := 0;
  fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat     := 0;
  fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsInteger     := fDMCadPedido.cdsPedido_ItensQTD.AsInteger;
  fDMCadPedido.cdsPedido_ItensNUMOS.AsString             := '';
  fDMCadPedido.cdsPedido_ItensNUM_OS_SERV.AsInteger      := cdsOSNUM_OS.AsInteger;
  fDMCadPedido.cdsPedido_ItensID_OS_SERV.AsInteger        := cdsOSID.AsInteger;
  fDMCadPedido.cdsPedido_ItensNUM_NOTA_ENT.AsInteger    := cdsOSNUM_NOTA.AsInteger;

  ffrmCadPedido_Itens.vPedidoSelecionado := True;
  ffrmCadPedido_Itens.BitBtn1Click(ffrmCadPedido_Itens);
  ffrmCadPedido_Itens.vPedidoSelecionado := False;

  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Itens.Post;
  vFlag := ffrmCadPedido_Itens.vGravacao_Ok;

  if vFlag then
  begin
    cdsOS.Edit;
    cdsOSQTD_FATURADO.AsInteger := cdsOSQTD_FATURADO.AsInteger + cdsOSQTD_RESTANTE.AsInteger;
    cdsOSQTD_RESTANTE.AsInteger := 0;
    cdsOS.Post;
  end;
end;

procedure TfrmSel_OS_Proc.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_OS;
end;

procedure TfrmSel_OS_Proc.btnImportarClick(Sender: TObject);
begin
  prc_Gravar_Pedido;
end;

procedure TfrmSel_OS_Proc.prc_Gravar_Pedido;
var
  vMsgErro: String;
begin
  if (cdsOS.IsEmpty) then
    exit;
  if (RxDBLookupCombo1.Text = '') then
  begin
    MessageDlg('*** CFOP não foi informada!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;

  vMsgErro := '';
  try
    cdsOS.First;
    while not cdsOS.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        if StrToFloat(FormatFloat('0.00000',cdsOSVLR_TOTAL.AsFloat)) <= 0 then
          vMsgErro := vMsgErro + #13 + ' OS: ' + cdsOSNUM_OS.AsString + ', não possui valor'
        else
        if StrToFloat(FormatFloat('0.000000',cdsOSQTD_RESTANTE.AsFloat)) > StrToFloat(FormatFloat('0.000000',0)) then
          prc_Gravar_PedidoItens
        else
          vMsgErro := vMsgErro + #13 + '*** Quantidade não informada, Ped: ' + cdsOSNUM_OS.AsString;
      end;
      cdsOS.Next;
    end;
  except
    on E: exception do
    begin
      if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
        fDMCadPedido.cdsPedido_Itens.Cancel;
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0)
  else
  if trim(vMsgErro) = '' then
    Close;
end;

end.
