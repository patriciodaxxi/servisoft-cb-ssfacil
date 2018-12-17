unit UTalaoAux_ES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  FMTBcd, DB, UDMBaixaPedido, RxLookup, UCBase, Mask, ToolEdit, NxCollection, NxEdit, CurrEdit, ComCtrls, RzDTP, RzEdit,
  RzPanel, SqlExpr, dbXPress, UMov_Atelier;

type
  TfrmTalaoAux_ES = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cbOpcao_ES: TNxComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label7: TLabel;
    gbxOrdProducao: TRzGroupBox;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnConfirmar: TNxButton;
    Label8: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label11: TLabel;
    Panel2: TPanel;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbOpcao_ESChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMBaixaPedido: TDMBaixaPedido;

    vContador: Integer;

    function fnc_Talao_OK: Boolean;
    function fnc_Mostra_Talao_Gravado(ID_Talao: Integer): String;
    procedure prc_Gravar_ES;
    //procedure prc_Gravar_Saida_OP;
    procedure prc_Gravar_Saida_OP_Novo;

  public
    { Public declarations }
  end;

var
  frmTalaoAux_ES: TfrmTalaoAux_ES;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmTalaoAux_ES.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmTalaoAux_ES.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMBaixaPedido := TDMBaixaPedido.Create(Self);
  fDMBaixaPedido.cdsAtelier.Open;
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaPedido);
  fDMBaixaPedido.cdsFilial.First;

  DateEdit1.Date       := Date;
  RzDateTimeEdit1.Time := Now;
end;

procedure TfrmTalaoAux_ES.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if fnc_Talao_OK then
      prc_Gravar_ES;
  end;
end;


function TfrmTalaoAux_ES.fnc_Talao_OK: Boolean;
var
  vID_Talao: Integer;
  vItem_Talao: Integer;
begin
  Result := False;
  if DateEdit1.Date < 10 then
  begin
    MessageDlg('*** Data do movimento não informada!', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    exit;
  end;
  if cbOpcao_ES.ItemIndex < 0 then
  begin
    MessageDlg('*** Opção não escolhida!', mtError, [mbOk], 0);
    cbOpcao_ES.SetFocus;
    exit;
  end;

  Edit1.Text := Monta_Numero(Edit1.Text,0);
  if Length(Edit1.Text) < 12 then
  begin
    MessageDlg('*** Código informado incorreto!', mtError, [mbOk], 0);
    exit;
  end;
  vID_Talao   := StrToInt(copy(Edit1.Text,2,7));
  vItem_Talao := StrToInt(copy(Edit1.Text,9,4));
  fDMBaixaPedido.cdsTalao_Aux.Close;
  fDMBaixaPedido.sdsTalao_Aux.ParamByName('ID').AsInteger   := vID_Talao;
  fDMBaixaPedido.sdsTalao_Aux.ParamByName('ITEM').AsInteger := vItem_Talao;
  fDMBaixaPedido.cdsTalao_Aux.Open;
  if fDMBaixaPedido.cdsTalao_Aux.IsEmpty then
  begin
    MessageDlg('*** Talão não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if not(fDMBaixaPedido.cdsTalao_AuxDTSAIDA.IsNull) and not(fDMBaixaPedido.cdsTalao_AuxDTRETORNO.IsNull) then
  begin
    MessageDlg('*** Talão já foi Retornado para a empresa!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (cbOpcao_ES.ItemIndex = 0) and not(fDMBaixaPedido.cdsTalao_AuxDTSAIDA.IsNull) then
  begin
    MessageDlg('*** Talão já foi dada a Saída no dia ' + fDMBaixaPedido.cdsTalao_AuxDTSAIDA.AsString, mtInformation, [mbOk], 0);
    exit;
  end;
  if (cbOpcao_ES.ItemIndex = 1) and not(fDMBaixaPedido.cdsTalao_AuxDTRETORNO.IsNull) then
  begin
    MessageDlg('*** Talão já foi retornado a empresa no dia ' + fDMBaixaPedido.cdsTalao_AuxDTRETORNO.AsString, mtInformation, [mbOk], 0);
    exit;
  end;
  if (cbOpcao_ES.ItemIndex = 1) and (fDMBaixaPedido.cdsTalao_AuxDTSAIDA.IsNull) then
  begin
    MessageDlg('*** Talão sem o registro da saida', mtInformation, [mbOk], 0);
    exit;
  end;
  if (cbOpcao_ES.ItemIndex = 1) and (fDMBaixaPedido.cdsTalao_AuxDTSAIDA.AsDateTime < fDMBaixaPedido.cdsTalao_AuxDTRETORNO.AsDateTime) then
  begin
    MessageDlg('*** Data de retorno menor que data de saida!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (cbOpcao_ES.ItemIndex = 0) and (RxDBLookupCombo2.Text = '') and (fDMBaixaPedido.cdsTalao_AuxID_ATELIER.AsInteger = fDMBaixaPedido.qParametrosID_ATELIER_ADEFINIR.AsInteger) then
  begin
    MessageDlg('*** Atelier não informada, e no talão original esta sem o Atelier!', mtInformation, [mbOk], 0);
    exit;
  end;
  Result := True;
end;

procedure TfrmTalaoAux_ES.prc_Gravar_ES;
var
  vHora: TTime;
  ID: TTransactionDesc;
begin
  vHora := Now;
  if trim(RzDateTimeEdit1.Text) <> '' then
    vHora := RzDateTimeEdit1.Time;
  if (cbOpcao_ES.ItemIndex = 0) and (RxDBLookupCombo2.Text <> '') and (RxDBLookupCombo2.KeyValue = fDMBaixaPedido.qParametrosID_ATELIER_ADEFINIR.AsInteger) then
  begin
    MessageDlg('*** Atelier informado incorreto!', mtError, [mbOk], 0);
    exit;
  end;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try

    fDMBaixaPedido.cdsTalao_Aux.Edit;
    if cbOpcao_ES.ItemIndex = 0 then
    begin
      fDMBaixaPedido.cdsTalao_AuxDTSAIDA.AsDateTime   := DateEdit1.Date;
      fDMBaixaPedido.cdsTalao_AuxHRSAIDA.AsDateTime   := vHora;
      fDMBaixaPedido.cdsTalao_AuxDTSISTEMA.AsDateTime := Date;
      fDMBaixaPedido.cdsTalao_AuxHRSISTEMA.AsDateTime := Now;
      if RxDBLookupCombo2.Text <> '' then
      begin
        fDMBaixaPedido.cdsTalao_AuxID_ATELIER_ORIG.AsInteger := fDMBaixaPedido.cdsTalao_AuxID_ATELIER.AsInteger;
        fDMBaixaPedido.cdsTalao_AuxID_ATELIER.AsInteger      := RxDBLookupCombo2.KeyValue;
      end;
    end
    else
    begin
      fDMBaixaPedido.cdsTalao_AuxDTRETORNO.AsDateTime := DateEdit1.Date;
      fDMBaixaPedido.cdsTalao_AuxHRRETORNO.AsDateTime := vHora;
    end;

    fDMBaixaPedido.cdsTalao_Aux.Post;
    fDMBaixaPedido.cdsTalao_Aux.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
    Label5.Caption := fnc_Mostra_Talao_Gravado(fDMBaixaPedido.cdsTalao_AuxID.AsInteger);

  except
      on e: Exception do
      begin
        raise Exception.Create('Erro ao gravar talao auxiliar: ' + #13+#13 + e.Message);
        dmDatabase.scoDados.Rollback(ID);
      end;
  end;
  Edit1.SelectAll;
end;

procedure TfrmTalaoAux_ES.cbOpcao_ESChange(Sender: TObject);
begin
  Label6.Caption := cbOpcao_ES.Text;

  gbxOrdProducao.Visible := (cbOpcao_ES.ItemIndex >= 2);
  Label1.Visible         := (cbOpcao_ES.ItemIndex < 2);
  Label3.Visible         := (cbOpcao_ES.ItemIndex < 2);
  Edit1.Visible          := (cbOpcao_ES.ItemIndex < 2);

  RxDBLookupCombo2.Visible := (cbOpcao_ES.ItemIndex = 0);
  Label10.Visible          := (cbOpcao_ES.ItemIndex = 0);
  Label11.Visible          := (cbOpcao_ES.ItemIndex = 0);
end;

procedure TfrmTalaoAux_ES.Edit1Change(Sender: TObject);
begin
  Label5.Caption := '';
end;

procedure TfrmTalaoAux_ES.DateEdit1Exit(Sender: TObject);
begin
  Label7.Visible          := (DateEdit1.Date <> Date);
  RzDateTimeEdit1.Visible := (DateEdit1.Date <> Date);
end;

function TfrmTalaoAux_ES.fnc_Mostra_Talao_Gravado(ID_Talao: Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT L.num_lote, L.num_ordem, T.item '
                     + 'FROM LOTE L '
                     + 'INNER JOIN TALAO_AUX T '
                     + 'ON L.id = T.ID '
                     + 'WHERE L.id = :ID ';
    sds.ParamByName('ID').AsInteger  := ID_Talao;
    sds.Open;

    Result := 'OP: ' + sds.FieldByName('NUM_ORDEM').AsString;
    Result := Result + #13 + 'Lote: ' + sds.FieldByName('NUM_LOTE').AsString;
    Result := Result + #13 + 'Talão: ' + sds.FieldByName('ITEM').AsString;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmTalaoAux_ES.btnConfirmarClick(Sender: TObject);
begin
  if MessageDlg('Gerar a saída para atelier de todos os talões da Ordem: ' + CurrencyEdit1.Text + ' ?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  vContador := 0;
  prc_Gravar_Saida_OP_Novo;
  MessageDlg('*** Talões gravados: ' + IntToStr(vContador), mtInformation, [mbOk], 0);
end;

procedure TfrmTalaoAux_ES.CurrencyEdit1Exit(Sender: TObject);
begin
  fDMBaixaPedido.cdsAtelier_OP.Close;
  if CurrencyEdit1.AsInteger > 0 then
  begin
    fDMBaixaPedido.sdsAtelier_OP.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit1.AsInteger;
    case cbOpcao_ES.ItemIndex of
      2 : fDMBaixaPedido.sdsAtelier_OP.ParamByName('TIPO').AsString := 'E';
      3 : fDMBaixaPedido.sdsAtelier_OP.ParamByName('TIPO').AsString := 'R';
    end;
    fDMBaixaPedido.cdsAtelier_OP.Open;
  end;                              
end;

{procedure TfrmTalaoAux_ES.prc_Gravar_Saida_OP;
var
  sds: TSQLDataSet;
  vHora: TTime;
  ID: TTransactionDesc;
begin
  vHora := Now;
  if trim(RzDateTimeEdit1.Text) <> '' then
    vHora := RzDateTimeEdit1.Time;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.Close;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR '
                     + 'FROM TALAO_AUX T '
                     + 'INNER JOIN LOTE L '
                     + 'ON T.ID = L.ID '
                     + 'WHERE L.NUM_ORDEM = :NUM_ORDEM '
                     + 'AND T.DTSAIDA IS NULL ';
    if RxDBLookupCombo1.Text <> '' then
    begin
      sds.CommandText := sds.CommandText + 'AND T.ID_ATELIER = :ID_ATELIER ';
      sds.ParamByName('ID_ATELIER').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
    sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit1.AsInteger;
    sds.Open;
    vContador := sds.FieldByName('CONTADOR').AsInteger;
    sds.Close;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TALAO_AUX T SET T.DTSAIDA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                       + ', T.HRSAIDA = ' + QuotedStr(FormatDateTime('HH:MM:SS',vHora))
                       + ', T.DTSISTEMA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                       + ', T.HRSISTEMA = ' + QuotedStr(FormatDateTime('HH:MM:SS',Now))
                       + ' WHERE T.ID IN (SELECT L.ID FROM LOTE L WHERE L.NUM_ORDEM = :NUM_ORDEM) '
                       + 'AND T.DTSAIDA IS NULL';
    if RxDBLookupCombo1.Text <> '' then
    begin
      sds.CommandText := sds.CommandText + ' AND T.ID_ATELIER = :ID_ATELIER ';
      sds.ParamByName('ID_ATELIER').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
    sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit1.AsInteger;
    sds.ExecSQL();

    dmDatabase.scoDados.Commit(ID);

  except
      on E: exception do
      begin
        vContador := 0;
        MessageDlg('*** Erro ao gravar a Data de Saída nos talões!' , mtError, [mbOk], 0);
        dmDatabase.scoDados.Rollback(ID);
      end;
  end;
  FreeAndNil(sds);
end;}

procedure TfrmTalaoAux_ES.btnImprimirClick(Sender: TObject);
var
  ffrmMov_Atelier: TfrmMov_Atelier;
begin
  ffrmMov_Atelier := TfrmMov_Atelier.Create(self);
  ffrmMov_Atelier.NxComboBox2.ItemIndex := 2;
  ffrmMov_Atelier.DateEdit4.Date        := Date;
  ffrmMov_Atelier.DateEdit5.Date        := Date;
  ffrmMov_Atelier.ShowModal;
  FreeAndNil(ffrmMov_Atelier);
end;

procedure TfrmTalaoAux_ES.prc_Gravar_Saida_OP_Novo;
var
  sds: TSQLDataSet;
  vHora: TTime;
  ID: TTransactionDesc;
  vTexto : String;
begin
  vHora := Now;
  //if trim(RzDateTimeEdit1.Text) <> '' then
  //  vHora := RzDateTimeEdit1.Time;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.Close;
    sds.CommandText := 'SELECT COUNT(1) CONTADOR '
                     + 'FROM TALAO_AUX T '
                     + 'INNER JOIN LOTE L '
                     + 'ON T.ID = L.ID '
                     + 'WHERE L.NUM_ORDEM = :NUM_ORDEM ';
    if cbOpcao_ES.ItemIndex = 2 then
      sds.CommandText := sds.CommandText + ' AND T.DTSAIDA IS NULL '
    else
      sds.CommandText := sds.CommandText + ' AND T.DTSAIDA IS NOT NULL ' + ' AND T.DTRETORNO IS NULL ';

    if RxDBLookupCombo1.Text <> '' then
    begin
      sds.CommandText := sds.CommandText + 'AND T.ID_ATELIER = :ID_ATELIER ';
      sds.ParamByName('ID_ATELIER').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
    sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit1.AsInteger;
    sds.Open;
    vContador := sds.FieldByName('CONTADOR').AsInteger;
    sds.Close;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    if cbOpcao_ES.ItemIndex = 2 then
    begin
      sds.CommandText   := 'UPDATE TALAO_AUX T SET T.DTSAIDA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                         + ', T.HRSAIDA = ' + QuotedStr(FormatDateTime('HH:MM:SS',vHora))
                         + ', T.DTSISTEMA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                         + ', T.HRSISTEMA = ' + QuotedStr(FormatDateTime('HH:MM:SS',Now))
                         + ' WHERE T.ID IN (SELECT L.ID FROM LOTE L WHERE L.NUM_ORDEM = :NUM_ORDEM) '
                         + ' AND T.DTSAIDA IS NULL ';
    end
    else
    begin
      sds.CommandText   := 'UPDATE TALAO_AUX T SET T.DTRETORNO = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                         + ', T.HRRETORNO = ' + QuotedStr(FormatDateTime('HH:MM:SS',vHora))
                         + ' WHERE T.ID IN (SELECT L.ID FROM LOTE L WHERE L.NUM_ORDEM = :NUM_ORDEM) '
                         + ' AND T.DTSAIDA IS NOT NULL ' + ' AND T.DTRETORNO IS NULL ';
    end;
    if RxDBLookupCombo1.Text <> '' then
    begin
      sds.CommandText := sds.CommandText + ' AND T.ID_ATELIER = :ID_ATELIER ';
      sds.ParamByName('ID_ATELIER').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
    sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit1.AsInteger;
    sds.ExecSQL();

    dmDatabase.scoDados.Commit(ID);

  except
      on E: exception do
      begin
        vContador := 0;
        if cbOpcao_ES.ItemIndex = 2 then
          vTexto := 'Saída'
        else
          vTexto := 'Retorno';
        MessageDlg('*** Erro ao gravar a Data de ' + vTexto + ' nos talões!' , mtError, [mbOk], 0);
        dmDatabase.scoDados.Rollback(ID);
      end;
  end;
  FreeAndNil(sds);
end;

end.
