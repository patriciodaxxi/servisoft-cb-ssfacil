unit UCadAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, DBTables,
  Db, ComCtrls, RXCtrls, Menus, CurrEdit, RxDBComb, Planner, DBPlanner, DBPlannerMonthView, PlanDraw, SMDBGrid, FMTBcd, SqlExpr,
  ToolEdit, Grids, DBGrids, PlannerMonthView, Provider, RxLookup, UCBase, UDMCadAgenda, RzTabs, plancheck, DBPlannerDatePicker,
  UCadAgenda_Inf, NxCollection, PlanPeriodEdit, PlanItemEdit,
  PlanSimpleEdit;

type
  TfrmCadAgenda = class(TForm)
    UCControls1: TUCControls;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBPlannerMonthView1: TDBPlannerMonthView;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    CheckBox1: TCheckBox;
    TabSheet2: TRzTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Shape3: TShape;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    SMDBGrid2: TSMDBGrid;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBMemo2: TDBMemo;
    RzTabSheet2: TRzTabSheet;
    DBMemo3: TDBMemo;
    TabSheet3: TRzTabSheet;
    DBMemo4: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo5: TDBMemo;
    Label12: TLabel;
    pnlFuncionario: TPanel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    BitBtn3: TNxButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Edit3: TEdit;
    CapitalPlannerCheck1: TCapitalPlannerCheck;
    AlarmMessage1: TAlarmMessage;
    SimpleItemEditor1: TSimpleItemEditor;
    DefaultItemEditor1: TDefaultItemEditor;
    PeriodItemEditor1: TPeriodItemEditor;
    ShapeDrawTool1: TShapeDrawTool;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure DBPlannerMonthView1GetDayProp(Sender: TObject;
      Date: TDateTime; var Caption: String; CaptionBrush: TBrush;
      AFont: TFont; var BKColor, BKColorTo: TColor);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadAgenda: TDMCadAgenda;
    ffrmCadAgenda_Inf: TfrmCadAgenda_Inf;

    function fnc_Existe_Agenda(Data: TDateTime ): Boolean;
    procedure Monta_sdsAgendaLoc(Tipo: String ; ID: Integer);

    procedure prc_Consultar_Det;
  public
    { Public declarations }
  end;

var
  frmCadAgenda: TfrmCadAgenda;

implementation

uses DateUtils, Math, DmdDatabase, UMenu, rsDBUtils;

{$R *.DFM}

procedure TfrmCadAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadAgenda.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDMCadAgenda := TDMCadAgenda.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadAgenda);

  DBPlannerMonthView1.Day   := DayOf(Date);
  DBPlannerMonthView1.Month := MonthOf(Date);
  DBPlannerMonthView1.Year  := YearOf(Date);

  pnlFuncionario.Visible := (fDMCadAgenda.qParametrosUSA_AGENDA_POR_FUNC.AsString = 'S');

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit2.Date := vData;
end;

procedure TfrmCadAgenda.DBPlannerMonthView1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  DateEdit2.Date := SelDate;
  DateEdit3.Date := SelDate;
  btnConsultarClick(Sender);
end;

procedure TfrmCadAgenda.DBPlannerMonthView1GetDayProp(Sender: TObject;
  Date: TDateTime; var Caption: String; CaptionBrush: TBrush; AFont: TFont;
  var BKColor, BKColorTo: TColor);
begin
  if fnc_Existe_Agenda(Date) then
    BKColor := clAqua;
end;

procedure TfrmCadAgenda.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit2.Date > 1) and (DateEdit3.Date > 1) then
    Monta_sdsAgendaLoc('P',0)
  else
    ShowMessage('Data Inicial e Final são obrigatórias!');
end;

procedure TfrmCadAgenda.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(fDMCadAgenda.cdsAgenda.Active) or (fDMCadAgenda.cdsAgenda.IsEmpty) then
    exit;

  ffrmCadAgenda_Inf := TfrmCadAgenda_Inf.Create(Self);
  ffrmCadAgenda_Inf.fDMCadAgenda := fDMCadAgenda;
  ffrmCadAgenda_Inf.Tag := 2;
  ffrmCadAgenda_Inf.ShowModal;
  FreeAndNil(ffrmCadAgenda_Inf);
end;

function TfrmCadAgenda.fnc_Existe_Agenda(Data: TDateTime ): Boolean;
var
  ID_Funcionario: Integer;
begin
  Result := False;
  fDMCadAgenda.qAgenda.Close;
  
  if fDMCadAgenda.qParametrosUSA_AGENDA_POR_FUNC.AsString = 'S' then
  begin
    if RxDBLookupCombo1.Text <> '' then
    begin
      ID_Funcionario := RxDBLookupCombo1.KeyValue;
      fDMCadAgenda.qAgenda.SQL.Text := fDMCadAgenda.qAgenda.SQL.Text + ' AND ((ID_FUNCIONARIO = ' + IntToStr(ID_Funcionario) + ') or (ID_FUNCIONARIO <= 0)) ' ;
    end;
  end;
  fDMCadAgenda.qAgenda.ParamByName('DTAGENDA').AsDate := Data;
  fDMCadAgenda.qAgenda.Open;
  if not fDMCadAgenda.qAgenda.IsEmpty then
    Result := True;
end;

procedure TfrmCadAgenda.Monta_sdsAgendaLoc(Tipo: String ; ID: Integer);
begin
  fDMCadAgenda.cdsAgenda.Close;
  fDMCadAgenda.sdsAgenda.CommandText := fDMCadAgenda.ctCommand;
  if (Tipo = 'N') or (ID > 0) then
    fDMCadAgenda.sdsAgenda.CommandText := fDMCadAgenda.sdsAgenda.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
  begin
    fDMCadAgenda.sdsAgenda.CommandText := fDMCadAgenda.sdsAgenda.CommandText + ' WHERE A.DTAGENDA BETWEEN ' +
                             QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ' AND ' +
                             QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if trim(Edit3.Text) <> '' then
      fDMCadAgenda.sdsAgenda.CommandText := fDMCadAgenda.sdsAgenda.CommandText + ' AND NOME_PESSOA LIKE ' + QuotedStr('%'+Edit3.Text+'%');
    if trim(RxDBLookupCombo3.Text) <> '' then
      fDMCadAgenda.sdsAgenda.CommandText := fDMCadAgenda.sdsAgenda.CommandText + ' AND ID_FUNCIONARIO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if not CheckBox1.Checked then
      fDMCadAgenda.sdsAgenda.CommandText := fDMCadAgenda.sdsAgenda.CommandText + ' AND CONCLUIDO = ' + QuotedStr('N');
    if fDMCadAgenda.qParametrosUSA_AGENDA_POR_FUNC.AsString = 'S' then
    begin
      if RxDBLookupCombo1.Text <> '' then
        fDMCadAgenda.sdsAgenda.CommandText := fDMCadAgenda.sdsAgenda.CommandText + ' AND ((A.ID_FUNCIONARIO = ' + IntToStr(RxDBLookupCombo1.KeyValue) + ') or (A.ID_FUNCIONARIO <= 0))';
    end;
  end;
  fDMCadAgenda.cdsAgenda.Open;
end;

procedure TfrmCadAgenda.btnInserirClick(Sender: TObject);
begin
  ffrmCadAgenda_Inf := TfrmCadAgenda_Inf.Create(Self);
  ffrmCadAgenda_Inf.fDMCadAgenda := fDMCadAgenda;
  ffrmCadAgenda_Inf.Tag := 1;
  ffrmCadAgenda_Inf.ShowModal;
  FreeAndNil(ffrmCadAgenda_Inf);
end;

procedure TfrmCadAgenda.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadAgenda.cdsAgendaConcluido.AsString = 'S' then
    Background  := clMoneyGreen;
end;

procedure TfrmCadAgenda.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar o registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadAgenda.prc_Excluir;
end;

procedure TfrmCadAgenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 45) then
    btnInserirClick(Sender);
end;

procedure TfrmCadAgenda.BitBtn3Click(Sender: TObject);
begin
  prc_Consultar_Det;
end;

procedure TfrmCadAgenda.prc_Consultar_Det;
var
  vComando: String;
begin
  fDMCadAgenda.cdsConsulta.Close;
  vComando := fDMCadAgenda.ctConsulta + ' WHERE 0 = 0';

  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND A.ID_FUNCIONARIO = ' + IntToStr(RxDBLookupCombo1.KeyValue);

  if Trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND (A.TITULO LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')';
  if Trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND (A.NOME_PESSOA LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')';
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND A.DTAGENDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND A.DTAGENDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  if DateEdit5.Date > 10 then
    vComando := vComando + ' AND A.DTCADASTRO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  if DateEdit6.Date > 10 then
    vComando := vComando + ' AND A.DTCADASTRO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  case ComboBox1.ItemIndex of
    0: vComando := vComando + ' AND A.CONCLUIDO = ' + QuotedStr('N');
    1: vComando := vComando + ' AND A.CONCLUIDO = ' + QuotedStr('S');
  end;
  fDMCadAgenda.sdsConsulta.CommandText := vComando;
  fDMCadAgenda.cdsConsulta.Open;
end;

procedure TfrmCadAgenda.SMDBGrid2DblClick(Sender: TObject);
begin
  if not(fDMCadAgenda.cdsConsulta.Active) or (fDMCadAgenda.cdsConsulta.IsEmpty) then
    exit;

  fDMCadAgenda.prc_Localizar(fDMCadAgenda.cdsConsultaID.AsInteger);

  ffrmCadAgenda_Inf := TfrmCadAgenda_Inf.Create(Self);
  ffrmCadAgenda_Inf.fDMCadAgenda := fDMCadAgenda;
  ffrmCadAgenda_Inf.Tag := 2;
  ffrmCadAgenda_Inf.ShowModal;
  FreeAndNil(ffrmCadAgenda_Inf);
end;

procedure TfrmCadAgenda.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadAgenda.cdsConsultaCONCLUIDO.AsString = 'S' then
    Background  := clMoneyGreen;
end;

procedure TfrmCadAgenda.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadAgenda.cdsAgenda.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
