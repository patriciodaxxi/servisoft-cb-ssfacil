unit UConsExtrato_Atelier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,DB, dbXPress, SqlExpr, RzTabs,
  CurrEdit, Mask, ToolEdit, RxLookup, Menus, UCBase, ExtCtrls, NxCollection, NxEdit, RzPanel, Grids, DBGrids, SMDBGrid,
  ComCtrls, UDMMov_Atelier, UPagto_Atelier;

type
  TfrmConsExtrato_Atelier = class(TForm)
    RzPageControl2: TRzPageControl;
    TS_Detalhado: TRzTabSheet;
    TS_Resumido: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    NxLabel2: TNxLabel;
    NxLabel15: TNxLabel;
    NxLabel17: TNxLabel;
    NxLabel3: TNxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsAtelier_Ret: TNxButton;
    RxDBLookupCombo5: TRxDBLookupCombo;
    NxButton2: TNxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnPagamento: TNxButton;
    TS_MovPagto: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    ckImpDetalhado: TCheckBox;
    Panel2: TPanel;
    NxButton1: TNxButton;
    Panel3: TPanel;
    btnSelecionar: TNxButton;
    Panel4: TPanel;
    SMDBGrid3: TSMDBGrid;
    gbxPagamentos: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Shape1: TShape;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsAtelier_RetClick(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure btnPagamentoClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMMov_Atelier: TDMMov_Atelier;

    procedure prc_Consultar_Talao_Aux;
    procedure prc_Consultar_Atelier_Ret;
    procedure prc_Consultar_ConsMov_Pagto;

  public
    { Public declarations }
  end;

var
  frmConsExtrato_Atelier: TfrmConsExtrato_Atelier;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao, USel_Produto, UMenu, StrUtils;


{$R *.dfm}

procedure TfrmConsExtrato_Atelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsExtrato_Atelier.FormShow(Sender: TObject);
begin
  fDMMov_Atelier := TDMMov_Atelier.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMMov_Atelier);
  if fDMMov_Atelier.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMMov_Atelier.cdsFilialID.AsInteger
end;

procedure TfrmConsExtrato_Atelier.prc_Consultar_Talao_Aux;
var
  vComando: String;
begin
  fDMMov_Atelier.cdsConsulta_Talao_Aux.Close;
  vComando := fDMMov_Atelier.ctConsulta_Talao_Aux;
  vComando := vComando + ' WHERE FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  vComando := vComando + ' AND DTRETORNO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  vComando := vComando + ' AND DTRETORNO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if RxDBLookupCombo5.Text <> '' then
    vComando := vComando + ' AND ID_Atelier = ' + IntToStr(RxDBLookupCombo5.KeyValue);
  fDMMov_Atelier.sdsConsulta_Talao_Aux.CommandText := vComando;
  fDMMov_Atelier.cdsConsulta_Talao_Aux.Open;
end;

procedure TfrmConsExtrato_Atelier.btnConsAtelier_RetClick(Sender: TObject);
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** Data não informada!', mtError, [mbOk], 0);
    Exit;
  end;
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    Exit;
  end;
  fDMMov_Atelier.cdsConsulta_Talao_Aux.Filtered := False;
  fDMMov_Atelier.cdsConsMov_Pagto.Filtered      := False;
  prc_Consultar_Atelier_Ret;
  prc_Consultar_Talao_Aux;
  prc_Consultar_ConsMov_Pagto;
end;

procedure TfrmConsExtrato_Atelier.prc_Consultar_Atelier_Ret;
var
  vComando: String;
  vComando2: String;
  i: Integer;
begin
  fDMMov_Atelier.cdsConsAtelier_Ret.Close;
  i := PosEx('GROUP',fDMMov_Atelier.ctConsAtelier_Ret,0);
  vComando2  := copy(fDMMov_Atelier.ctConsAtelier_Ret,i,Length(fDMMov_Atelier.ctConsAtelier_Ret) - i + 1);
  vComando   := copy(fDMMov_Atelier.ctConsAtelier_Ret,1,i-1);
  if RxDBLookupCombo5.Text <> '' then
    vComando := vComando + ' AND V.ID_ATELIER = ' + IntToStr(RxDBLookupCombo5.KeyValue);
  fDMMov_Atelier.sdsConsAtelier_Ret.CommandText := vComando + vComando2;
  fDMMov_Atelier.sdsConsAtelier_Ret.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMMov_Atelier.sdsConsAtelier_Ret.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMMov_Atelier.sdsConsAtelier_Ret.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMMov_Atelier.cdsConsAtelier_Ret.Open;
end;

procedure TfrmConsExtrato_Atelier.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage <> TS_Detalhado then
  begin
    fDMMov_Atelier.cdsConsulta_Talao_Aux.Filtered := False;
    fDMMov_Atelier.cdsConsMov_Pagto.Filtered      := False;
    exit;
  end;

  if not fDMMov_Atelier.cdsConsulta_Talao_Aux.Active then
    exit;
  if fDMMov_Atelier.cdsConsAtelier_RetID_ATELIER.AsInteger <= 0 then
    exit;

  fDMMov_Atelier.cdsConsulta_Talao_Aux.Filtered := False;
  fDMMov_Atelier.cdsConsulta_Talao_Aux.Filter   :=  'ID_ATELIER = ' + QuotedStr(fDMMov_Atelier.cdsConsAtelier_RetID_ATELIER.AsString);
  fDMMov_Atelier.cdsConsulta_Talao_Aux.Filtered := True;

  fDMMov_Atelier.cdsConsMov_Pagto.Filtered := False;
  fDMMov_Atelier.cdsConsMov_Pagto.Filter   :=  'ID_ATELIER = ' + QuotedStr(fDMMov_Atelier.cdsConsAtelier_RetID_ATELIER.AsString);
  fDMMov_Atelier.cdsConsMov_Pagto.Filtered := True;
end;

procedure TfrmConsExtrato_Atelier.btnPagamentoClick(Sender: TObject);
var
  ffrmPagto_Atelier: TfrmPagto_Atelier;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if (not(fDMMov_Atelier.cdsConsAtelier_Ret.Active)) or (fDMMov_Atelier.cdsConsAtelier_Ret.IsEmpty) then
  begin
    MessageDlg('*** Atelier não selecionado!', mtError, [mbOk], 0);
    exit;
  end;

  if RzPageControl2.ActivePage <> TS_Detalhado then
  begin
    fDMMov_Atelier.cdsConsulta_Talao_Aux.Filtered := False;
    fDMMov_Atelier.cdsConsulta_Talao_Aux.Filter   :=  'ID_ATELIER = ' + QuotedStr(fDMMov_Atelier.cdsConsAtelier_RetID_ATELIER.AsString);
    fDMMov_Atelier.cdsConsulta_Talao_Aux.Filtered := True;
  end;

  ffrmPagto_Atelier  := TfrmPagto_Atelier.Create(self);
  ffrmPagto_Atelier.fDMMov_Atelier := fDMMov_Atelier;
  ffrmPagto_Atelier.vID_Atelier    := fDMMov_Atelier.cdsConsAtelier_RetID_ATELIER.AsInteger;
  vFilial                          := RxDBLookupCombo1.KeyValue;
  vFilial_Nome  := RxDBLookupCombo1.Text;
  ffrmPagto_Atelier.ShowModal;
  FreeAndNil(ffrmPagto_Atelier);
  btnConsAtelier_RetClick(Sender);
end;

procedure TfrmConsExtrato_Atelier.prc_Consultar_ConsMov_Pagto;
begin
  fDMMov_Atelier.cdsConsMov_Pagto.Close;
  fDMMov_Atelier.sdsConsMov_Pagto.CommandText := fDMMov_Atelier.ctConsMov_Pagto;
  if RxDBLookupCombo5.Text <> '' then
  begin
    fDMMov_Atelier.sdsConsMov_Pagto.CommandText := fDMMov_Atelier.sdsConsMov_Pagto.CommandText + ' AND PAG.ID_ATELIER = :ID_ATELIER';
    fDMMov_Atelier.sdsConsMov_Pagto.ParamByName('ID_ATELIER').AsInteger := RxDBLookupCombo5.KeyValue;
  end;
  fDMMov_Atelier.sdsConsMov_Pagto.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMMov_Atelier.sdsConsMov_Pagto.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMMov_Atelier.sdsConsMov_Pagto.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMMov_Atelier.cdsConsMov_Pagto.Open;
end;

procedure TfrmConsExtrato_Atelier.NxButton2Click(Sender: TObject);
var
  vArq: String;
begin
  //fDMMov_Atelier.cdsConsulta_Talao_Aux.IndexFieldNames := 'NOME_ATELIER;NUM_ORDEM;NUM_LOTE;ITEM';
  fDMMov_Atelier.vTipo_Rel := 2;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pag_Atelier.fr3';
  if FileExists(vArq) then
    fDMMov_Atelier.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  if ckImpDetalhado.Checked then
    fDMMov_Atelier.frxReport1.variables['Imp_Detalhado'] := QuotedStr('S')
  else
    fDMMov_Atelier.frxReport1.variables['Imp_Detalhado'] := QuotedStr('N');
  fDMMov_Atelier.frxReport1.variables['Opcao_Imp'] := QuotedStr('Relatório Pagamento Atelier - Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text);
  {if ckMostrarValor.Checked then
    fDMMov_Atelier.frxReport1.variables['ImpValor'] := QuotedStr('S')
  else
    fDMMov_Atelier.frxReport1.variables['ImpValor'] := QuotedStr('N');}
  fDMMov_Atelier.frxReport1.ShowReport;
end;

procedure TfrmConsExtrato_Atelier.NxButton1Click(Sender: TObject);
var
  vIDAux: Integer;
  sds: TSQLDataSet;
  //sds2: TSQLDataSet;
  ID: TTransactionDesc;
begin
  if not(fDMMov_Atelier.cdsConsMov_Pagto.Active) then
    exit;
  if fDMMov_Atelier.cdsConsMov_Pagto.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o pagamento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  fDMMov_Atelier.prc_Localizar(fDMMov_Atelier.cdsConsMov_PagtoID.AsInteger);

  vIDAux := fDMMov_Atelier.cdsMov_AtelierID.AsInteger;

  sds := TSQLDataSet.Create(nil);
  //sds2 := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 ' +
                         ' WHERE TABELA = ' + QuotedStr('MOV_ATELIER');
    sds.ExecSQL();

    fDMMov_Atelier.prc_Excluir;
    fDMMov_Atelier.prc_Excluir_Financeiro(vIDAux);

    //sds2.NoMetadata    := True;
    //sds2.GetMetadata   := False;
    //sds2.CommandText   := ' UPDATE TALAO_AUX SET DTPAGAMENTO = NULL '
    //                    + ', ID_MOV_ATELIER = 0 '
    //                    + ' WHERE ID_MOV_ATELIER = ' + IntToStr(vIDAux);
    //sds2.ExecSQL();

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

  prc_Consultar_ConsMov_Pagto;

end;

procedure TfrmConsExtrato_Atelier.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMMov_Atelier.cdsConsulta_Talao_AuxDTPAGAMENTO.AsDateTime > 10 then
    Background := clMoneyGreen;
end;

end.
