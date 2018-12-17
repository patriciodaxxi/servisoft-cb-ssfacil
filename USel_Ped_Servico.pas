unit USel_Ped_Servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadNotaServico, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadNotaServico_Itens, NxCollection;

type
  TfrmSel_Ped_Servico = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_Pedido;
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens;

  public
    { Public declarations }

    fDMCadNotaServico: TDMCadNotaServico;
    ffrmCadNotaServico_Itens: TfrmCadNotaServico_Itens;

  end;

var
  frmSel_Ped_Servico: TfrmSel_Ped_Servico;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Ped_Servico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Ped_Servico.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadNotaServico);
  fDMCadNotaServico.qParametros_Ped.Close;
  fDMCadNotaServico.qParametros_Ped.Open;
  prc_Consultar_Pedido;
end;

procedure TfrmSel_Ped_Servico.prc_Consultar_Pedido;
begin
  SMDBGrid1.DisableScroll;
  fDMCadNotaServico.cdsPedido.Close;
  fDMCadNotaServico.sdsPedido.CommandText := fDMCadNotaServico.ctPedido;
  if fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger > 0 then
    fDMCadNotaServico.sdsPedido.CommandText := fDMCadNotaServico.sdsPedido.CommandText +
                                              ' AND (PE.ID_CLIENTE = ' + IntToStr(fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger) + ') ';

  if fDMCadNotaServico.qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA.AsString = 'S' then
    fDMCadNotaServico.sdsPedido.CommandText := fDMCadNotaServico.sdsPedido.CommandText + ' AND PE.FILIAL = ' + fDMCadNotaServico.cdsNotaServicoFILIAL.AsString;

  fDMCadNotaServico.cdsPedido.Open;
  fDMCadNotaServico.cdsPedido.IndexFieldNames := 'NUM_PEDIDO;ITEM';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_Ped_Servico.prc_Gravar_NotaItens;
var
  vItemAux: Integer;
  vNum_Controle_Tam : Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto : String;
begin
  if fDMCadNotaServico.cdsNotaServico_Itens.Locate('ID_PEDIDO;ITEM_PEDIDO',VarArrayOf([fDMCadNotaServico.cdsPedidoID.AsInteger,fDMCadNotaServico.cdsPedidoITEM.AsInteger]),[locaseinsensitive]) then
    exit;

  fDMCadNotaServico.cdsNotaServico_Itens.Last;
  vItemAux := fDMCadNotaServico.cdsNotaServico_ItensITEM.AsInteger + 1;

  fDMCadNotaServico.cdsNotaServico_Itens.Insert;
  fDMCadNotaServico.cdsNotaServico_ItensID.AsInteger         := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensITEM.AsInteger       := vItemAux;
  fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsPedidoVLR_UNITARIO.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsPedidoQTD_RESTANTE.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsPedidoVLR_UNITARIO.AsFloat * fDMCadNotaServico.cdsPedidoQTD_RESTANTE.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensGERAR_DUPLICATA.AsString := 'S';
  fDMCadNotaServico.cdsNotaServico_ItensVLR_DUPLICATA.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger  := fDMCadNotaServico.cdsPedidoID_SERVICO_INT.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString := fDMCadNotaServico.cdsPedidoNOME_SERVICO_INT.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensPEDIDO_CLIENTE.AsString := fDMCadNotaServico.cdsPedidoPEDIDO_CLIENTE.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensNUM_OS_PED.AsString := fDMCadNotaServico.cdsPedidoNUMOS.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensID_PEDIDO.AsInteger     := fDMCadNotaServico.cdsPedidoID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensITEM_PEDIDO.AsInteger   := fDMCadNotaServico.cdsPedidoITEM.AsInteger;
  if fDMCadNotaServico.cdsPedidoID_CONDPGTO.AsInteger > 0 then
    fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger := fDMCadNotaServico.cdsPedidoID_CONDPGTO.AsInteger;
  if fDMCadNotaServico.cdsPedidoID_TIPO_COBRANCA.AsInteger > 0 then
    fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger := fDMCadNotaServico.cdsPedidoID_TIPO_COBRANCA.AsInteger;
  if fDMCadNotaServico.cdsPedidoID_CONTA.AsInteger > 0 then
    fDMCadNotaServico.cdsNotaServicoID_CONTA.AsInteger := fDMCadNotaServico.cdsPedidoID_CONTA.AsInteger;
  if fDMCadNotaServico.cdsPedidoID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadNotaServico.cdsNotaServicoID_VENDEDOR.AsInteger := fDMCadNotaServico.cdsPedidoID_VENDEDOR.AsInteger;
    fDMCadNotaServico.cdsNotaServicoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsPedidoPERC_COMISSAO.AsFloat));
  end;
  if fDMCadNotaServico.cdsServico_IntID.AsInteger <> fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger then
    fDMCadNotaServico.cdsServico_Int.Locate('ID',fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaServico.cdsServicoID.AsInteger <> fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger then
    fDMCadNotaServico.cdsServico.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaServico.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P') or (copy(fDMCadNotaServico.cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'P') then
  begin
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_ESTADUAL.AsFloat));
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_FEDERAL.AsFloat));
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_MUNICIPAL.AsFloat));
  end
  else
  begin
    if trim(fDMCadNotaServico.cdsServico_IntCODIGO_NBS.AsString) <> '' then
      fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServico_IntCODIGO_NBS.AsString,'I')
    else
    if trim(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString) <> '' then
      fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString,'I')
    else
    begin
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO.AsFloat           := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',0));
    end;
  end;
  fDMCadNotaServico.cdsNotaServico_Itens.Post;
end;

procedure TfrmSel_Ped_Servico.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_Pedido;
end;

procedure TfrmSel_Ped_Servico.btnImportarClick(Sender: TObject);
begin
  prc_Gravar_Nota;
end;

procedure TfrmSel_Ped_Servico.prc_Gravar_Nota;
var
  vMsgErro: String;
begin
  if (fDMCadNotaServico.cdsPedido.IsEmpty) then
    exit;

  vMsgErro := '';
  try
    fDMCadNotaServico.cdsPedido.First;
    while not fDMCadNotaServico.cdsPedido.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        prc_Gravar_NotaItens;
      fDMCadNotaServico.cdsPedido.Next;
    end;
  except
    on E: exception do
    begin
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
