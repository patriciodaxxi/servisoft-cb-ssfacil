unit UCadAtelier_Mov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadAtelier_Mov,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl;

type
  TfrmCadAtelier_Mov = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    Panel3: TPanel;
    Label6: TLabel;
    btnConsultar: TBitBtn;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    Label31: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label16: TLabel;
    DateEdit2: TDateEdit;
    Label19: TLabel;
    DateEdit3: TDateEdit;
    Label23: TLabel;
    DateEdit4: TDateEdit;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label2: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadAtelier_Mov: TDMCadAtelier_Mov;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadAtelier_Mov: TfrmCadAtelier_Mov;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadAtelier_Mov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadAtelier_Mov.btnExcluirClick(Sender: TObject);
begin
  if fDMCadAtelier_Mov.cdsAtelier_Mov.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadAtelier_Mov.prc_Excluir_Registro;
begin
  fDMCadAtelier_Mov.prc_Excluir;
end;

procedure TfrmCadAtelier_Mov.prc_Gravar_Registro;
begin
  fDMCadAtelier_Mov.cdsAtelier_MovNOME_ATELIER.AsString := RxDBLookupCombo5.Text;
  fDMCadAtelier_Mov.cdsAtelier_MovNOME_CONTA.AsString   := RxDBLookupCombo2.Text;

  fDMCadAtelier_Mov.cdsAtelier.Locate('ID',fDMCadAtelier_Mov.cdsAtelier_MovID_ATELIER.AsInteger,[loCaseInsensitive]);

  fDMCadAtelier_Mov.prc_Gravar;
  if fDMCadAtelier_Mov.cdsAtelier_Mov.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadAtelier_Mov.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadAtelier_Mov.prc_Inserir_Registro;
begin
  fDMCadAtelier_Mov.prc_Inserir;

  if fDMCadAtelier_Mov.cdsAtelier_Mov.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadAtelier_Mov.FormShow(Sender: TObject);
begin
  fDMCadAtelier_Mov := TDMCadAtelier_Mov.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadAtelier_Mov);

  if fDMCadAtelier_Mov.cdsFilial.RecordCount <= 1 then
    RxDBLookupCombo3.Visible := False;
  Label7.Visible := RxDBLookupCombo3.Visible;
end;

procedure TfrmCadAtelier_Mov.prc_Consultar;
var
  vCommando: String;
begin
  fDMCadAtelier_Mov.cdsAtelier_Mov.IndexFieldNames := 'DT_REFERENCIA';
  fDMCadAtelier_Mov.cdsAtelier_Mov.Close;
  vCommando := fDMCadAtelier_Mov.ctCommand + ' WHERE 0 = 0';
  if DateEdit1.Date > 10 then
    vCommando := vCommando + ' AND MOV.DT_MOV >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vCommando := vCommando + ' AND MOV.DT_MOV <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit3.Date > 10 then
    vCommando := vCommando + ' AND MOV.DT_REFERENCIA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vCommando := vCommando + ' AND MOV.DT_REFERENCIA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  if trim(RxDBLookupCombo1.Text) <> '' then
    vCommando := vCommando + ' AND MOV.ID_ATELIER <= ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMCadAtelier_Mov.sdsAtelier_Mov.CommandText := vCommando;  
  fDMCadAtelier_Mov.cdsAtelier_Mov.Open;
end;

procedure TfrmCadAtelier_Mov.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadAtelier_Mov.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadAtelier_Mov.cdsAtelier_Mov.State in [dsBrowse]) or not(fDMCadAtelier_Mov.cdsAtelier_Mov.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadAtelier_Mov.cdsAtelier_Mov.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadAtelier_Mov.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadAtelier_Mov.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadAtelier_Mov.cdsAtelier_Mov.IsEmpty) or not(fDMCadAtelier_Mov.cdsAtelier_Mov.Active) or (fDMCadAtelier_Mov.cdsAtelier_MovID.AsInteger < 1) then
    exit;

  fDMCadAtelier_Mov.cdsAtelier_Mov.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadAtelier_Mov.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadAtelier_Mov.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadAtelier_Mov);
end;

procedure TfrmCadAtelier_Mov.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadAtelier_Mov.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadAtelier_Mov.cdsAtelier_Mov);
end;

procedure TfrmCadAtelier_Mov.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadAtelier_Mov.cdsAtelier_Mov.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
