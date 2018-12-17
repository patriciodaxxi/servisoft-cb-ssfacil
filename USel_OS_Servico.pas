//tag 11  é a copia do pedido sem cobrança (Fututo)
unit USel_OS_Servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls, Buttons,
  UDMCadNotaServico, Grids, DBGrids, SMDBGrid, DB, UCadNotaServico_Itens, NxCollection;

type
  TfrmSel_OS_Servico = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_OS_Simples;
    procedure prc_Consultar_OS_Serv;
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens;
    procedure Gravar_OS_Simples;
    procedure Gravar_OS_Serv;
  public
    { Public declarations }
    vCodCliente: Integer;

    fDMCadNotaServico: TDMCadNotaServico;
    ffrmCadNotaServico_Itens: TfrmCadNotaServico_Itens;
  end;

var
  frmSel_OS_Servico: TfrmSel_OS_Servico;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_OS_Servico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_OS_Servico.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadNotaServico);
  prc_Consultar_OS_Simples;
  prc_Consultar_OS_Serv;
end;

procedure TfrmSel_OS_Servico.prc_Consultar_OS_Simples;
begin
  SMDBGrid1.DisableScroll;
  fDMCadNotaServico.cdsOS_Simples.Close;
  fDMCadNotaServico.sdsOS_Simples.CommandText := fDMCadNotaServico.ctOS_Simples;
  if vCodCliente > 0 then
    fDMCadNotaServico.sdsOS_Simples.CommandText := fDMCadNotaServico.sdsOS_Simples.CommandText +
                                              ' AND ((O.ID_CLIENTE = ' + IntToStr(vCodCliente) + ') OR (O.ID_CLIENTE IS NULL))';
  fDMCadNotaServico.cdsOS_Simples.Open;
  fDMCadNotaServico.cdsOS_Simples.IndexFieldNames := 'NUM_OS;ITEM';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_OS_Servico.prc_Gravar_NotaItens;
begin
  Gravar_OS_Simples;
  Gravar_OS_Serv;
end;

procedure TfrmSel_OS_Servico.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_OS_Simples;
end;

procedure TfrmSel_OS_Servico.btnImportarClick(Sender: TObject);
begin
  prc_Gravar_Nota;
end;

procedure TfrmSel_OS_Servico.prc_Gravar_Nota;
var
  vMsgErro: String;
begin
  if (fDMCadNotaServico.cdsOS_Simples.IsEmpty) and (fDMCadNotaServico.cdsOS_Serv.IsEmpty) then
    Exit;

  vMsgErro := '';
  try
    fDMCadNotaServico.cdsOS_Simples.First;
    while not fDMCadNotaServico.cdsOS_Simples.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        Gravar_OS_Simples;
      fDMCadNotaServico.cdsOS_Simples.Next;
    end;
  except
    on E: exception do
    begin
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  vMsgErro := '';
  try
    fDMCadNotaServico.cdsOS_Serv.First;
    while not fDMCadNotaServico.cdsOS_Serv.Eof do
    begin
      if SMDBGrid2.SelectedRows.CurrentRowSelected then
        Gravar_OS_Serv;
      fDMCadNotaServico.cdsOS_Serv.Next;
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

procedure TfrmSel_OS_Servico.prc_Consultar_OS_Serv;
begin
  SMDBGrid2.DisableScroll;
  fDMCadNotaServico.cdsOS_Serv.Close;
  fDMCadNotaServico.sdsOS_Serv.CommandText := fDMCadNotaServico.ctOS_Serv;
  if vCodCliente > 0 then
    fDMCadNotaServico.sdsOS_Serv.ParamByName('C1').AsInteger := vCodCliente;
  fDMCadNotaServico.cdsOS_Serv.Open;
  fDMCadNotaServico.cdsOS_Serv.IndexFieldNames := 'NUM_OS;ITEM';
  SMDBGrid2.EnableScroll;
end;

procedure TfrmSel_OS_Servico.Gravar_OS_Serv;
var
  vItemAux: Integer;
  vNum_Controle_Tam: Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto: String;
begin
  if fDMCadNotaServico.cdsNotaServico_Itens.Locate('ID_OS_SIMPLES;ITEM_OS_SIMPLES',VarArrayOf([fDMCadNotaServico.cdsOS_ServID.AsInteger,
                                                                                               fDMCadNotaServico.cdsOS_ServITEM.AsInteger]),
                                                                                               [locaseinsensitive]) then
    Exit;

  fDMCadNotaServico.cdsNotaServico_Itens.Last;
  vItemAux := fDMCadNotaServico.cdsNotaServico_ItensITEM.AsInteger + 1;

  fDMCadNotaServico.cdsNotaServico_Itens.Insert;
  fDMCadNotaServico.cdsNotaServico_ItensID.AsInteger         := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensITEM.AsInteger       := vItemAux;
  fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsOS_ServVLR_TOTAL.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsOS_ServTEMPO_TOTAL.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsOS_ServVLR_TOTAL.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensGERAR_DUPLICATA.AsString := 'S';
  fDMCadNotaServico.cdsNotaServico_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsOS_ServVLR_TOTAL.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger  := fDMCadNotaServico.cdsOS_ServID_SERVICO.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString := fDMCadNotaServico.cdsOS_ServNOME.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString := trim(fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString);
  fDMCadNotaServico.cdsNotaServico_ItensID_OS_SIMPLES.AsInteger   := fDMCadNotaServico.cdsOS_ServID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensITEM_OS_SIMPLES.AsInteger := fDMCadNotaServico.cdsOS_ServITEM.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensNUM_OS_SIMPLES.AsInteger  := fDMCadNotaServico.cdsOS_ServNUM_OS.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensTIPO.AsString             := 'C';

  if fDMCadNotaServico.cdsServico_IntID.AsInteger <> fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger then
    fDMCadNotaServico.cdsServico_Int.Locate('ID',fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaServico.cdsServicoID.AsInteger <> fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger then
    fDMCadNotaServico.cdsServico.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaServico.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P') or
     (copy(fDMCadNotaServico.cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'P') then
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

procedure TfrmSel_OS_Servico.Gravar_OS_Simples;
var
  vItemAux: Integer;
  vNum_Controle_Tam: Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto: String;
begin
  if fDMCadNotaServico.cdsNotaServico_Itens.Locate('ID_OS_SIMPLES;ITEM_OS_SIMPLES',VarArrayOf([fDMCadNotaServico.cdsOS_SimplesID.AsInteger,
                                                                                               fDMCadNotaServico.cdsOS_SimplesITEM.AsInteger]),
                                                                                               [locaseinsensitive]) then
    Exit;

  fDMCadNotaServico.cdsNotaServico_Itens.Last;
  vItemAux := fDMCadNotaServico.cdsNotaServico_ItensITEM.AsInteger + 1;

  fDMCadNotaServico.cdsNotaServico_Itens.Insert;
  fDMCadNotaServico.cdsNotaServico_ItensID.AsInteger         := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensITEM.AsInteger       := vItemAux;
  fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsOS_SimplesVLR_UNITARIO.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadNotaServico.cdsOS_SimplesQTD.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsOS_SimplesVLR_TOTAL.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensGERAR_DUPLICATA.AsString := 'S';
  fDMCadNotaServico.cdsNotaServico_ItensVLR_DUPLICATA.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsOS_SimplesVLR_TOTAL.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger  := fDMCadNotaServico.cdsOS_SimplesID_SERVICO.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString := fDMCadNotaServico.cdsOS_SimplesNOME_SERVICO.AsString;
  if not(fDMCadNotaServico.cdsOS_SimplesDESCRICAO.IsNull) then
    fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString := fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString + ' ' + fDMCadNotaServico.cdsOS_SimplesDESCRICAO.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString := trim(fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString);
  fDMCadNotaServico.cdsNotaServico_ItensID_OS_SIMPLES.AsInteger   := fDMCadNotaServico.cdsOS_SimplesID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensITEM_OS_SIMPLES.AsInteger := fDMCadNotaServico.cdsOS_SimplesITEM.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensNUM_OS_SIMPLES.AsInteger  := fDMCadNotaServico.cdsOS_SimplesNUM_OS.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensTIPO.AsString             := 'S';

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

end.
