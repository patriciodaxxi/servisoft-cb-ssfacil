unit UCadFeriado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadFeriado, Mask,
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, ToolEdit, RXDBCtrl, PlannerCal, CurrEdit,
  UCadFeriado_Dig;

type
  TfrmCadFeriado = class(TForm)
    pnlPesquisa: TPanel;
    Label3: TLabel;
    btnConsultar: TNxButton;
    CurrencyEdit1: TCurrencyEdit;
    PlannerCalendarGroup1: TPlannerCalendarGroup;
    Shape5: TShape;
    Label49: TLabel;
    Label1: TLabel;
    btnGerar_Feriado: TNxButton;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PlannerCalendarGroup1GetDateHint(Sender: TObject;
      dt: TDateTime; var isEvent: Boolean);
    procedure PlannerCalendarGroup1DblClick(Sender: TObject);
    procedure btnGerar_FeriadoClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadFeriado: TDMCadFeriado;
    ffrmCadFeriado_Dig: TfrmCadFeriado_Dig;
    procedure prc_Inserir_Registro;
    procedure prc_Consultar;
    procedure prc_Gerar_Feriado;
    function fnc_Existe_Data(Dia, Mes: Integer): Boolean;

  public
    { Public declarations }

  end;

var
  frmCadFeriado: TfrmCadFeriado;

implementation

uses DmdDatabase, rsDBUtils, DateUtils, UMenu;

{$R *.dfm}

procedure TfrmCadFeriado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFeriado.prc_Inserir_Registro;
begin
  fDMCadFeriado.prc_Inserir;

  if fDMCadFeriado.cdsFeriado.State in [dsBrowse] then
    exit;
end;

procedure TfrmCadFeriado.FormShow(Sender: TObject);
begin
  fDMCadFeriado := TDMCadFeriado.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFeriado);
  CurrencyEdit1.AsInteger := 2013;
end;

procedure TfrmCadFeriado.prc_Consultar;
begin
  fDMCadFeriado.cdsFeriado.Close;
  fDMCadFeriado.sdsFeriado.CommandText := fDMCadFeriado.ctCommand + ' WHERE 0 = 0 ';
  fDMCadFeriado.cdsFeriado.Open;

  PlannerCalendarGroup1.Year  := CurrencyEdit1.AsInteger;
  PlannerCalendarGroup1.Month := 1;
end;

procedure TfrmCadFeriado.btnConsultarClick(Sender: TObject);
begin
  Tag := 0;
  if CurrencyEdit1.AsInteger < 2000 then
  begin
    PlannerCalendarGroup1.Visible := False;
    exit;
  end;
  prc_Consultar;
  PlannerCalendarGroup1.Events.Clear;
  PlannerCalendarGroup1.Visible := True;
  fDMCadFeriado.qData.Close;
  fDMCadFeriado.qData.ParamByName('ANO').AsInteger := CurrencyEdit1.AsInteger;
  fDMCadFeriado.qData.Open;
  while not fDMCadFeriado.qData.Eof do
  begin
    PlannerCalendarGroup1.Events.Add.Date := fDMCadFeriado.qDataDATA.AsDateTime;
    fDMCadFeriado.qData.Next;
  end;
  PlannerCalendarGroup1.Date := Date;
end;

procedure TfrmCadFeriado.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadFeriado);
end;

procedure TfrmCadFeriado.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadFeriado.cdsFeriado.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      DMCadFeriado.cdsFeriado.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadFeriado.PlannerCalendarGroup1GetDateHint(Sender: TObject;
  dt: TDateTime; var isEvent: Boolean);
begin
  //PlannerCalendarGroup1.Events.Add := Date;
  {if (Dt > 10) and not(isEvent) then
  begin
    fDMCadFeriado.qData.Close;
    fDMCadFeriado.qData.ParamByName('DATA').AsDate := dt;
    fDMCadFeriado.qData.Open;
    if not fDMCadFeriado.qData.IsEmpty then
     isEvent := True;
    if DayOf(dt)
  end;}

//  if dt = DateEdit1.date then
  //  isEvent := True;
end;

procedure TfrmCadFeriado.PlannerCalendarGroup1DblClick(Sender: TObject);
var
  vInserir: Boolean;
begin
  vInserir := False;
  fDMCadFeriado.vDataFeriado := 0;
  fDMCadFeriado.prc_Localizar(0,PlannerCalendarGroup1.Date);
  if fDMCadFeriado.cdsFeriado.IsEmpty then
  begin
    prc_Inserir_Registro;
    fDMCadFeriado.cdsFeriadoDATA.AsDateTime := PlannerCalendarGroup1.Date;
    vInserir := True;
  end;

  ffrmCadFeriado_Dig := TfrmCadFeriado_Dig.Create(self);
  ffrmCadFeriado_Dig.fDMCadFeriado   := fDMCadFeriado;
  ffrmCadFeriado_Dig.ShowModal;
  FreeAndNil(ffrmCadFeriado_Dig);
  if fDMCadFeriado.vDataFeriado > 10 then
  begin
    if vInserir then
      PlannerCalendarGroup1.Events.Add.Date := fDMCadFeriado.vDataFeriado
    else
      btnConsultarClick(Sender);
  end;
end;

procedure TfrmCadFeriado.btnGerar_FeriadoClick(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger < 2000 then
  begin
    MessageDlg('*** Ano não foi informado!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja gerar a tabela de feriado nacional para o ano ' + CurrencyEdit1.Text +'?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
    exit;
  fDMCadFeriado.cdsFeriado_Fixo.Close;
  fDMCadFeriado.cdsFeriado_Fixo.Open;
  prc_Gerar_Feriado;
  MessageDlg('*** Geração concluída !', mtInformation, [mbOk], 0);
  btnConsultarClick(Sender);
end;

procedure TfrmCadFeriado.prc_Gerar_Feriado;
begin
  fDMCadFeriado.cdsFeriado_Fixo.First;
  while not fDMCadFeriado.cdsFeriado_Fixo.Eof do
  begin
    if not fnc_Existe_Data(fDMCadFeriado.cdsFeriado_FixoDia.AsInteger,fDMCadFeriado.cdsFeriado_FixoMes.AsInteger) then
    begin
      fDMCadFeriado.prc_Inserir;
      fDMCadFeriado.cdsFeriadoDATA.AsDateTime    := EncodeDate(CurrencyEdit1.AsInteger,fDMCadFeriado.cdsFeriado_FixoMes.AsInteger,fDMCadFeriado.cdsFeriado_FixoDia.AsInteger);
      fDMCadFeriado.cdsFeriadoDESCRICAO.AsString := fDMCadFeriado.cdsFeriado_FixoNOME.AsString;
      fDMCadFeriado.cdsFeriadoFIXOS.AsString     := 'S';
      fDMCadFeriado.cdsFeriado.Post;
      fDMCadFeriado.cdsFeriado.ApplyUpdates(0);
    end;
    fDMCadFeriado.cdsFeriado_Fixo.Next;
  end;
end;

function TfrmCadFeriado.fnc_Existe_Data(Dia, Mes: Integer): Boolean;
var
  vData: TDateTime;
begin
  vData := EncodeDate(CurrencyEdit1.AsInteger,Mes,Dia);
  fDMCadFeriado.cdsFeriado.Close;
  fDMCadFeriado.sdsFeriado.CommandText := fDMCadFeriado.ctCommand
                                        + ' WHERE DATA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vData));
  fDMCadFeriado.cdsFeriado.Open;
  if fDMCadFeriado.cdsFeriado.IsEmpty then
    Result := False
  else
    Result := True;
end;

end.
