unit UAjuste_Contrato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOS, RzDTP, 
  DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus,
  RXDBCtrl, RzEdit, RzDBEdit, RzButton, UCBase, RzPanel, dbXPress, NxCollection, StrUtils, DateUtils,
  ComCtrls, RzDBDTP, NxEdit, Variants;

type
  TfrmAjuste_Contrato = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Contratos: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel11: TPanel;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    TS_Ajustes: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel1: TPanel;
    btnConsultar_Ajuste: TNxButton;
    btnExcluir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Panel4Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConsultar_AjusteClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vID_Cliente_Ant: Integer;
    vQtd_Contrato: Integer;

    fDMCadOS: TDMCadOS;

    procedure prc_Consultar(ID: Integer);

    procedure prc_Le_Servico_Int;

  public
    { Public declarations }
  end;

var
  frmAjuste_Contrato: TfrmAjuste_Contrato;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmAjuste_Contrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAjuste_Contrato.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadOS := TDMCadOS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOS);

  if fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString <> 'S' then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i-1].FieldName = 'ANO_CONTRATO') then
        SMDBGrid1.Columns[i-1].Visible := False;
    end;
  end;
end;

procedure TfrmAjuste_Contrato.prc_Consultar(ID: Integer);
begin
  fDMCadOS.cdsOS_Consulta.Close;
  fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.ctConsulta;
  fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                         ' WHERE ((TIPO_REG = ''C'') OR (TIPO_REG = ''U''))';
  if trim(RxDBLookupCombo1.Text) <> '' then
    fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText +
                                           ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText + 'and (OS.DTCONTRATO_INI <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ')'
                                       + ' AND ((OS.DTCONTRATO_FIN >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ')'
                                       + '  OR (OS.DTCONTRATO_FIN IS NULL))'
                                       + ' AND ((OS.DTENCERRAMENTO IS NULL) or (OS.DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + '))';
  if DateEdit1.Date > 10 then
    fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText + 'and (OS.DTCONTRATO_INI >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date)) + ')';
  if DateEdit2.Date > 10 then
    fDMCadOS.sdsOS_Consulta.CommandText := fDMCadOS.sdsOS_Consulta.CommandText + 'and (OS.DTCONTRATO_INI <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date)) + ')';
  fDMCadOS.cdsOS_Consulta.Open;
end;

procedure TfrmAjuste_Contrato.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar(0);
end;

procedure TfrmAjuste_Contrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOS);
end;

procedure TfrmAjuste_Contrato.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadOS.cdsOS);
end;

procedure TfrmAjuste_Contrato.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmAjuste_Contrato.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmAjuste_Contrato.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmAjuste_Contrato.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOS.cdsOS_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmAjuste_Contrato.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
end;

procedure TfrmAjuste_Contrato.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadOS.cdsOS_Consulta.Active) or (fDMCadOS.cdsOS_Consulta.IsEmpty) then
    exit;
  if ((fDMCadOS.cdsOS_ConsultaDTENCERRAMENTO.AsDateTime > 10) and (fDMCadOS.cdsOS_ConsultaDTENCERRAMENTO.AsDateTime < Date)) or
     ((fDMCadOS.cdsOS_ConsultaDTCONTRATO_FIN.AsDateTime > 10) and (fDMCadOS.cdsOS_ConsultaDTCONTRATO_FIN.AsDateTime < Date)) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMCadOS.cdsOS_ConsultaDTCONTRATO_INI.AsDateTime > Date then
    Background  := clYellow;
end;

procedure TfrmAjuste_Contrato.btnInserirClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vTipoAux: String;
begin
  if StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value)) <= 0 then
  begin
    MessageDlg('*** % não informado', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja gerar o ajuste dos contratos?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vQtd_Contrato := 0;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('AJUSTE_CONTRATO');
    sds.ExecSQL();
    case ComboBox2.ItemIndex of
      0: vTipoAux := 'A';
      1: vTipoAux := 'D';
    end;
    fDMCadOS.prc_Inserir_Ajuste(CurrencyEdit1.Value,vTipoAux,0);

    fDMCadOS.cdsOS_Consulta.First;
    while not fDMCadOS.cdsOS_Consulta.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        vQtd_Contrato := vQtd_Contrato + 1;
        fDMCadOS.prc_Localizar(fDMCadOS.cdsOS_ConsultaID.AsInteger);
        prc_Le_Servico_Int;
      end;
      fDMCadOS.cdsOS_Consulta.Next;
    end;

    fDMCadOS.prc_Abrir_Ajuste(fDMCadOS.vID_Ajuste);
    fDMCadOS.cdsAjuste_Contrato.Edit;
    fDMCadOS.cdsAjuste_ContratoQTD_CONTRATO.AsInteger := vQtd_Contrato;
    fDMCadOS.cdsAjuste_Contrato.Post;
    fDMCadOS.cdsAjuste_Contrato.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
  CurrencyEdit1.Clear;
  prc_Consultar(0);
end;

procedure TfrmAjuste_Contrato.prc_Le_Servico_Int;
var
  vVlrNovo: Real;
  vItemAux: Integer;
  vVlrAnt: Real;
  vVlrTotalAnt: Real;
begin
  fDMCadOS.cdsOS_Servico_Int.First;
  while not fDMCadOS.cdsOS_Servico_Int.Eof do
  begin
    vVlrNovo := StrToFloat(FormatFloat('0.00',(fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat * CurrencyEdit1.Value) / 100));
    if ComboBox2.ItemIndex = 0 then
      vVlrNovo := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat + vVlrNovo))
    else
      vVlrNovo := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat - vVlrNovo));
    vVlrAnt      := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat));
    vVlrTotalAnt := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat));

    fDMCadOS.cdsOS_Servico_Int.Edit;
    fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrNovo));
    fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat
                                                   * fDMCadOS.cdsOS_Servico_IntQTD.AsFloat));
    fDMCadOS.cdsOS_Servico_Int.Post;

    fDMCadOS.cdsOS.Edit;
    fDMCadOS.cdsOSVLR_SERVICO.AsFloat := (fDMCadOS.cdsOSVLR_SERVICO.AsFloat - vVlrTotalAnt) + fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat;
    fDMCadOS.cdsOSVLR_TOTAL.AsFloat   := (fDMCadOS.cdsOSVLR_TOTAL.AsFloat - vVlrTotalAnt) + fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat;
    fDMCadOS.cdsOSDTAJUSTE.AsDateTime := Date;
    fDMCadOS.cdsOS.Post;

    fDMCadOS.cdsOS_Servico_Hist.Last;
    vItemAux := fDMCadOS.cdsOS_Servico_HistITEM.AsInteger;
    fDMCadOS.cdsOS_Servico_Hist.Insert;
    fDMCadOS.cdsOS_Servico_HistID.AsInteger   := fDMCadOS.cdsOSID.AsInteger;
    fDMCadOS.cdsOS_Servico_HistITEM.AsInteger := fDMCadOS.cdsOS_Servico_IntITEM.AsInteger;
    fDMCadOS.cdsOS_Servico_HistITEM_HIST.AsInteger := vItemAux + 1;
    fDMCadOS.cdsOS_Servico_HistID_SERVICO_INT.AsInteger := fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger;
    fDMCadOS.cdsOS_Servico_HistVLR_ANT.AsFloat          := StrToFloat(FormatFloat('0.00',vVlrAnt));
    fDMCadOS.cdsOS_Servico_HistVLR_NOVO.AsFloat         := StrToFloat(FormatFloat('0.00',vVlrNovo));
    fDMCadOS.cdsOS_Servico_HistDTAJUSTE.AsDateTime      := Date;
    fDMCadOS.cdsOS_Servico_HistHRAJUSTE.AsDateTime      := Now;
    fDMCadOS.cdsOS_Servico_HistID_AJUSTE.AsInteger      := fDMCadOS.vID_Ajuste;
    fDMCadOS.cdsOS_Servico_HistPERC_AJUSTE.AsFloat      := CurrencyEdit1.Value;
    fDMCadOS.cdsOS_Servico_Hist.Post;

    fDMCadOS.cdsOS_Servico_Int.Next;
  end;
  fDMCadOS.cdsOS.ApplyUpdates(0);
end;

procedure TfrmAjuste_Contrato.btnConsultar_AjusteClick(Sender: TObject);
begin
  fDMCadOS.cdsAjuste_Contrato.Close;
  fDMCadOS.sdsAjuste_Contrato.CommandText := fDMCadOS.ctAjuste_Contrato;
  fDMCadOS.cdsAjuste_Contrato.Open;
end;

procedure TfrmAjuste_Contrato.btnExcluirClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vIDAux: Integer;
begin
  if not(fDMCadOS.cdsAjuste_Contrato.Active) or (fDMCadOS.cdsAjuste_Contrato.IsEmpty) then
    exit;
  if MessageDlg('Deseja excluir este ajuste?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vIDAux := fDMCadOS.cdsAjuste_ContratoID.AsInteger;
    fDMCadOS.cdsAjuste_Contrato.Delete;
    fDMCadOS.cdsAjuste_Contrato.ApplyUpdates(0);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT H.ID, H.ITEM, H.item_hist, H.vlr_ant, H.vlr_novo, H.id_ajuste '
                       + ' FROM os_servico_hist h '
                       + ' WHERE H.id_ajuste = :ID_AJUSTE ';
    sds.ParamByName('ID_AJUSTE').AsInteger := vIDAux;
    sds.Open;
    while not sds.Eof do
    begin
      fDMCadOS.prc_Localizar(sds.FieldByName('ID').AsInteger);
      if not fDMCadOS.cdsOS.IsEmpty then
      begin
        if fDMCadOS.cdsOS_Servico_Int.Locate('ID;ITEM',VarArrayOf([sds.FieldByName('ID').AsInteger,sds.FieldByName('ITEM').AsInteger]),([loCaseInsensitive])) then
        begin
          fDMCadOS.cdsOS_Servico_Int.Edit;
          fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat := StrToFloat(FormatFloat('0.00',sds.FieldByName('VLR_ANT').AsFloat));
          fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat * fDMCadOS.cdsOS_Servico_IntQTD.AsFloat));
          fDMCadOS.cdsOS_Servico_Int.Post;

          if fDMCadOS.cdsOS_Servico_Hist.Locate('ID;ITEM;ITEM_HIST',VarArrayOf([sds.FieldByName('ID').AsInteger,sds.FieldByName('ITEM').AsInteger,sds.FieldByName('ITEM_HIST').AsInteger]),([loCaseInsensitive])) then
            fDMCadOS.cdsOS_Servico_Hist.Delete;


          fDMCadOS.cdsOS.Edit;
          fDMCadOS.cdsOSVLR_TOTAL.AsFloat   := StrToFloat(FormatFloat('0.00',(fDMCadOS.cdsOSVLR_TOTAL.AsFloat -  sds.FieldByName('VLR_NOVO').AsFloat) + sds.FieldByName('VLR_ANT').AsFloat));
          fDMCadOS.cdsOSVLR_SERVICO.AsFloat := fDMCadOS.cdsOSVLR_TOTAL.AsFloat;
          fDMCadOS.cdsOS_Servico_Hist.Last;
          fDMCadOS.cdsOSDTAJUSTE.AsDateTime := fDMCadOS.cdsOS_Servico_HistDTAJUSTE.AsDateTime;
          if fDMCadOS.cdsOSDTAJUSTE.AsDateTime < 10 then
            fDMCadOS.cdsOSDTAJUSTE.Clear;
          fDMCadOS.cdsOS.Post;
        end;

        fDMCadOS.cdsOS.ApplyUpdates(0);
      end;
      sds.Next;
    end;
    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

  FreeAndNil(sds);
  MessageDlg('*** Processo de exclusão concluído!', mtConfirmation, [mbOk], 0);
end;

end.
