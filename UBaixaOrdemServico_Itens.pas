unit UBaixaOrdemServico_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls,
  RzPanel, Grids, DBGrids, SMDBGrid, StdCtrls, RxLookup, Mask, ToolEdit, CurrEdit, NxCollection, RzEdit, DB, RzDBEdit,
  RXDBCtrl, UBaixaOrdemServico_Mat, UBaixaOrdemServico_Serv, dbXPress, SqlExpr, UBaixaOrdemServico_Def, RxDBComb;

type
  TfrmBaixaOrdemServico_Itens = class(TForm)
    RzGroupBox3: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    Panel1: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label8: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label7: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label9: TLabel;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    Panel5: TPanel;
    btnConfBaixa: TNxButton;
    Panel2: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    btnDefeito: TNxButton;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Panel6: TPanel;
    Label3: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label2: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label4: TLabel;
    RzDBDateTimeEdit3: TRzDBDateTimeEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure btnDefeitoClick(Sender: TObject);
    procedure RxDBComboBox3Exit(Sender: TObject);
    procedure RxDBComboBox3Change(Sender: TObject);
  private
    { Private declarations }
    ffrmBaixaOrdemServico_Mat: TfrmBaixaOrdemServico_Mat;
    ffrmBaixaOrdemServico_Serv: TfrmBaixaOrdemServico_Serv;
    ffrmBaixaOrdemServico_Def: TfrmBaixaOrdemServico_Def;
    procedure prc_Gravar_Reprovacao;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmBaixaOrdemServico_Itens: TfrmBaixaOrdemServico_Itens;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmBaixaOrdemServico_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixaOrdemServico_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  Panel6.Visible := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');

  Label2.Visible            := (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '9');
  DBDateEdit3.Visible       := (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '9');
  Label4.Visible            := (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '9');
  RzDBDateTimeEdit3.Visible := (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '9');
end;

procedure TfrmBaixaOrdemServico_Itens.btnInserir_ItensClick(
  Sender: TObject);
begin
  fDMCadOrdemServico.prc_Inserir_Mat;

  ffrmBaixaOrdemServico_Mat := TfrmBaixaOrdemServico_Mat.Create(self);
  ffrmBaixaOrdemServico_Mat.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmBaixaOrdemServico_Mat.ShowModal;
  FreeAndNil(ffrmBaixaOrdemServico_Mat);
end;

procedure TfrmBaixaOrdemServico_Itens.btnAlterar_ItensClick(
  Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Mat.IsEmpty then
    exit;
  if StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_FATURADO.AsFloat)) > 0 then
  begin
    MessageDlg('*** Item já possui faturamento!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadOrdemServico.cdsOrdemServico_Mat.Edit;

  ffrmBaixaOrdemServico_Mat := TfrmBaixaOrdemServico_Mat.Create(self);
  ffrmBaixaOrdemServico_Mat.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmBaixaOrdemServico_Mat.ShowModal;
  FreeAndNil(ffrmBaixaOrdemServico_Mat);
end;

procedure TfrmBaixaOrdemServico_Itens.btnExcluir_ItensClick(
  Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Mat.IsEmpty then
    exit;
  if StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_FATURADO.AsFloat)) > 0 then
  begin
    MessageDlg('*** Item já possui faturamento!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMCadOrdemServico.cdsOrdemServico_Mat.Delete;
end;

procedure TfrmBaixaOrdemServico_Itens.NxButton1Click(Sender: TObject);
begin
  fDMCadOrdemServico.prc_Inserir_Serv;

  ffrmBaixaOrdemServico_Serv := TfrmBaixaOrdemServico_Serv.Create(self);
  ffrmBaixaOrdemServico_Serv.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmBaixaOrdemServico_Serv.ShowModal;
  FreeAndNil(ffrmBaixaOrdemServico_Serv);
end;

procedure TfrmBaixaOrdemServico_Itens.NxButton2Click(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Serv.IsEmpty then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Serv.Edit;

  ffrmBaixaOrdemServico_Serv := TfrmBaixaOrdemServico_Serv.Create(self);
  ffrmBaixaOrdemServico_Serv.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmBaixaOrdemServico_Serv.ShowModal;
  FreeAndNil(ffrmBaixaOrdemServico_Serv);
end;

procedure TfrmBaixaOrdemServico_Itens.NxButton3Click(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Serv.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMCadOrdemServico.cdsOrdemServico_Serv.Delete;
end;

procedure TfrmBaixaOrdemServico_Itens.btnConfBaixaClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vVlrMat, vVlrServico: Real;
  vVlrMat_OS, vVlrServico_OS: Real;
  vFlag: Boolean;
  vDtConcluido: TDateTime;
  vHrConcluido: TDateTime;
  vFlag_Concluido: Boolean;
  vStatus: String;
  vDtEntrega: TDateTime;
  vHrEntrega: TDateTime;
  texto : string;
  vVerificaStatus : Boolean;
begin
  if (fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10) and (fDMCadOrdemServico.cdsOrdemServico_Serv.IsEmpty) and
     (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString <> '6') then
  begin
    MessageDlg('*** Para concluir o serviço é necessário informar o serviço prestado!', mtError, [mbok], 0);
    exit;
  end;
  if (fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10) and (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString <> '6') and
     ((fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_APROV.AsString <> 'A') and (fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_APROV.AsString <> 'R')) then
  begin
    MessageDlg('*** Falta informar o tipo de aprovação!', mtError, [mbok], 0);
    RxDBComboBox1.SetFocus;
    exit;
  end;
  if ((fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '8') or (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '9') or
     (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '6')) and (fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime <= 10) then
  begin
    MessageDlg('*** Data Concluído precisa ser informada!' + #13 +
               'Status <PRONTO>, <ENTREGUE> ou <SEM CONSERTO>!', mtError, [mbok], 0);
    RxDBComboBox3.SetFocus;
    exit;
  end;
  texto := Monta_Numero(fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString,0);
  if texto = '' then
    texto := '1';
  vVerificaStatus := False;
  case AnsiIndexStr(UpperCase(fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString),['1','2','3','4','5']) of
    1 : vVerificaStatus := True;
    2 : vVerificaStatus := True;
    3 : vVerificaStatus := True;
    4 : vVerificaStatus := True;
    5 : vVerificaStatus := True;
  else vVerificaStatus := False;
  end;

    //  if (fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10) and (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsInteger < 6) and (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S') then
  if (fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10) and (vVerificaStatus) and (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S') then
  begin
    MessageDlg('*** Informar o Status de <PRONTO> pois há data de conclusão!', mtError, [mbok], 0);
    RxDBComboBox3.SetFocus;
    exit;
  end;
  if (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '9') and (fDMCadOrdemServico.cdsOrdemServico_ItensDTENTREGA.AsDateTime <= 10) then
  begin
    MessageDlg('*** Data Entrega precisa ser informada quando o Status for <ENTREGUE>!', mtError, [mbok], 0);
    DBDateEdit3.SetFocus;
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  vFlag := False;
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' +
                       ' WHERE TABELA = ' + QuotedStr('ORDEMSERVICO');
    sds.ExecSQL();

    vVlrMat_OS      := 0;
    vVlrServico_OS  := 0;
    vFlag_Concluido := True;
    vDtConcluido    := 0;
    vHrConcluido    := 0;
    vDtEntrega      := 0;
    vHrEntrega      := 0;
    vStatus := '';
    fDMCadOrdemServico.cdsOrdemServico_Itens.First;
    while not fDMCadOrdemServico.cdsOrdemServico_Itens.Eof do
    begin
      vVlrMat     := 0;
      vVlrServico := 0;
      fDMCadOrdemServico.cdsOrdemServico_Mat.First;
      while not fDMCadOrdemServico.cdsOrdemServico_Mat.Eof do
      begin
        vVlrMat := vVlrMat + fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat;
        fDMCadOrdemServico.cdsOrdemServico_Mat.Next;
      end;
      fDMCadOrdemServico.cdsOrdemServico_Serv.First;
      while not fDMCadOrdemServico.cdsOrdemServico_Serv.Eof do
      begin
        vVlrServico := vVlrServico + fDMCadOrdemServico.cdsOrdemServico_ServVLR_TOTAL.AsFloat;
        fDMCadOrdemServico.cdsOrdemServico_Serv.Next;
      end;
      fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;
      if fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 10 then
      begin
        fDMCadOrdemServico.cdsOrdemServico_ItensCONCLUIDO.AsString := 'S';
        if fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 0 then
        begin
          vDtConcluido := fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime;
          vHrConcluido := fDMCadOrdemServico.cdsOrdemServico_ItensHRCONCLUIDO.AsDateTime;
        end;
      end
      else
      begin
        fDMCadOrdemServico.cdsOrdemServico_ItensCONCLUIDO.AsString := 'N';
        vFlag_Concluido := False;
      end;
      fDMCadOrdemServico.cdsOrdemServico_ItensVLR_MATERIAL.AsFloat := vVlrMat;
      fDMCadOrdemServico.cdsOrdemServico_ItensVLR_SERVICO.AsFloat  := vVlrServico;
      fDMCadOrdemServico.cdsOrdemServico_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrMat + vVlrServico));
      fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
      vVlrMat_OS     := StrToFloat(FormatFloat('0.00',vVlrMat_OS + fDMCadOrdemServico.cdsOrdemServico_ItensVLR_MATERIAL.AsFloat));
      vVlrServico_OS := StrToFloat(FormatFloat('0.00',vVlrServico_OS + fDMCadOrdemServico.cdsOrdemServico_ItensVLR_SERVICO.AsFloat));
      if vStatus = '' then
        vStatus := fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString
      else
      if ((vStatus = '8') or (vStatus = '9')) and ((fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString <> '8') and (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString <> '9')) then
        vStatus := fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString
      else
      if (vStatus <> '') and ((fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString <> '8') and (fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString <> '9')) then
        vStatus := fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString;
      if fDMCadOrdemServico.cdsOrdemServico_ItensDTENTREGA.AsDateTime > vDtEntrega then
      begin
        vDtEntrega := fDMCadOrdemServico.cdsOrdemServico_ItensDTENTREGA.AsDateTime;
        vHrEntrega := fDMCadOrdemServico.cdsOrdemServico_ItensHRENTREGA.AsDateTime;
      end;
      fDMCadOrdemServico.cdsOrdemServico_Itens.Next;
    end;
    if vStatus = '' then
      vStatus := '1';
    fDMCadOrdemServico.cdsOrdemServico.Edit;
    fDMCadOrdemServico.cdsOrdemServicoVLR_MATERIAL.AsFloat := StrToFloat(FormatFloat('0.00',vVlrMat_OS));
    fDMCadOrdemServico.cdsOrdemServicoVLR_SERVICO.AsFloat  := StrToFloat(FormatFloat('0.00',vVlrServico_OS));
    fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServicoVLR_MATERIAL.AsFloat + fDMCadOrdemServico.cdsOrdemServicoVLR_SERVICO.AsFloat));
    if (vFlag_Concluido) and (vDtConcluido > 10) then
    begin
      fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime := vDtConcluido;
      fDMCadOrdemServico.cdsOrdemServicoHRCONCLUIDO.AsDateTime := vHrConcluido;
      fDMCadOrdemServico.cdsOrdemServicoCONCLUIDO.AsString     := 'S';
    end
    else
    begin
      fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.Clear;
      fDMCadOrdemServico.cdsOrdemServicoHRCONCLUIDO.Clear;
      fDMCadOrdemServico.cdsOrdemServicoCONCLUIDO.AsString := 'N';
    end;
    if vStatus = '9' then
    begin
      fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime := vDtEntrega;
      fDMCadOrdemServico.cdsOrdemServicoHRENTREGA.AsDateTime := vHrEntrega;
    end;
    fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString := vStatus;
    fDMCadOrdemServico.cdsOrdemServico.Post;
    fDMCadOrdemServico.cdsOrdemServico.ApplyUpdates(0);

    if RxDBComboBox1.ItemIndex = 1 then
      prc_Gravar_Reprovacao;

    dmDatabase.scoDados.Commit(ID);
    vFlag := True;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
  if vFlag then
    Close;
end;

procedure TfrmBaixaOrdemServico_Itens.NxButton4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar as informações?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_Mat.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Mat.CancelUpdates;
  if fDMCadOrdemServico.cdsOrdemServico_Serv.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Serv.CancelUpdates;
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.CancelUpdates;
  Close;
end;

procedure TfrmBaixaOrdemServico_Itens.btnDefeitoClick(Sender: TObject);
begin
  Panel5.Visible := False;
  try
    ffrmBaixaOrdemServico_Def := TfrmBaixaOrdemServico_Def.Create(self);
    ffrmBaixaOrdemServico_Def.fDMCadOrdemServico := fDMCadOrdemServico;
    ffrmBaixaOrdemServico_Def.ShowModal;
    FreeAndNil(ffrmBaixaOrdemServico_Def);
  finally
    Panel5.Visible := True;
  end;
end;

procedure TfrmBaixaOrdemServico_Itens.prc_Gravar_Reprovacao;
var
  sds: TSQLDataSet;
  vAux: Integer;
  vAux2: String;
begin
  sds := TSQLDataSet.Create(nil);
  try
    vAux2 := Monta_Numero(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString,0);
    if trim(vAux2) <> '' then
    begin
      vAux  := StrToInt(vAux2);
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := 'UPDATE PRODUTO_SERIE SET INATIVO = ' + QuotedStr('S')
                       + ', DTINATIVO = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date))
                       + 'WHERE NUM_SERIE = ' + IntToStr(vAux);
      sds.ExecSQL();
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmBaixaOrdemServico_Itens.RxDBComboBox3Exit(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_ItensSTATUS.AsString = '4' then
    fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_APROV.AsString := 'A';
end;

procedure TfrmBaixaOrdemServico_Itens.RxDBComboBox3Change(Sender: TObject);
begin
  Label2.Visible            := (RxDBComboBox3.ItemIndex = 7);
  DBDateEdit3.Visible       := (RxDBComboBox3.ItemIndex = 7);
  Label4.Visible            := (RxDBComboBox3.ItemIndex = 7);
  RzDBDateTimeEdit3.Visible := (RxDBComboBox3.ItemIndex = 7);
end;

end.
