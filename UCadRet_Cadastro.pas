unit UCadRet_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadRet_Cadastro,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask,  RxDBComb;

type
  TfrmCadRet_Cadastro = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label9: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    UCControls1: TUCControls;
    Label7: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
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
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure RxDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMCadRet_Cadastro: TDMCadRet_Cadastro;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadRet_Cadastro: TfrmCadRet_Cadastro;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadRet_Cadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadRet_Cadastro.btnExcluirClick(Sender: TObject);
begin
  if fDMCadRet_Cadastro.cdsRet_Cadastro.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadRet_Cadastro.prc_Excluir_Registro;
begin
  fDMCadRet_Cadastro.prc_Excluir;
end;

procedure TfrmCadRet_Cadastro.prc_Gravar_Registro;
begin
  fDMCadRet_Cadastro.prc_Gravar;
  if fDMCadRet_Cadastro.cdsRet_Cadastro.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadRet_Cadastro.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadRet_Cadastro.prc_Inserir_Registro;
begin
  fDMCadRet_Cadastro.prc_Inserir;

  if fDMCadRet_Cadastro.cdsRet_Cadastro.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadRet_Cadastro.FormShow(Sender: TObject);
begin
  fDMCadRet_Cadastro := TDMCadRet_Cadastro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadRet_Cadastro);
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadRet_Cadastro.prc_Consultar;
var
  vComando : String;
begin
  fDMCadRet_Cadastro.cdsRet_Cadastro.Close;
  vComando := fDMCadRet_Cadastro.ctCommand + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND ID_BANCO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  case ComboBox1.ItemIndex of
    0 : vComando := vComando + ' AND TIPO_REG = ' + QuotedStr('OCO');
    1 : vComando := vComando + ' AND TIPO_REG = ' + QuotedStr('ERR');
    2 : vComando := vComando + ' AND TIPO_REG = ' + QuotedStr('LIQ');
    3 : vComando := vComando + ' AND TIPO_REG = ' + QuotedStr('OUT');
  end;
  fDMCadRet_Cadastro.sdsRet_Cadastro.CommandText := vComando;
  fDMCadRet_Cadastro.cdsRet_Cadastro.Open;
end;

procedure TfrmCadRet_Cadastro.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadRet_Cadastro.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadRet_Cadastro.cdsRet_Cadastro.State in [dsBrowse]) or not(fDMCadRet_Cadastro.cdsRet_Cadastro.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRet_Cadastro.cdsRet_Cadastro.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadRet_Cadastro.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRet_Cadastro.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadRet_Cadastro.cdsRet_Cadastro.IsEmpty) or not(fDMCadRet_Cadastro.cdsRet_Cadastro.Active) or (fDMCadRet_Cadastro.cdsRet_CadastroID.AsInteger < 1) then
    exit;

  fDMCadRet_Cadastro.cdsRet_Cadastro.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadRet_Cadastro.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadRet_Cadastro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadRet_Cadastro);
end;

procedure TfrmCadRet_Cadastro.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRet_Cadastro.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRet_Cadastro.RxDBComboBox1Change(Sender: TObject);
begin
  Label9.Visible        := RxDBComboBox1.ItemIndex = 0;
  RxDBComboBox2.Visible := RxDBComboBox1.ItemIndex = 0;
  Label10.Visible       := RxDBComboBox1.ItemIndex = 0;

  Label7.Visible        := ((RxDBComboBox1.ItemIndex = 2) or (RxDBComboBox2.ItemIndex = 1));
  RxDBComboBox3.Visible := ((RxDBComboBox1.ItemIndex = 2) or (RxDBComboBox2.ItemIndex = 1));
end;

procedure TfrmCadRet_Cadastro.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadRet_Cadastro.cdsRet_Cadastro.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadRet_Cadastro.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
    RxDBComboBox1Change(Sender);
end;

procedure TfrmCadRet_Cadastro.RxDBComboBox2Change(Sender: TObject);
begin
  Label7.Visible        := ((RxDBComboBox1.ItemIndex = 2) or (RxDBComboBox2.ItemIndex = 1));
  RxDBComboBox3.Visible := ((RxDBComboBox1.ItemIndex = 2) or (RxDBComboBox2.ItemIndex = 1));
end;

procedure TfrmCadRet_Cadastro.RxDBComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    fDMCadRet_Cadastro.cdsRet_CadastroTIPO_REG.AsString := '';
end;

procedure TfrmCadRet_Cadastro.RxDBComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    fDMCadRet_Cadastro.cdsRet_CadastroTIPO_RET.AsString := '';
end;

procedure TfrmCadRet_Cadastro.RxDBComboBox3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    fDMCadRet_Cadastro.cdsRet_CadastroTIPO_LIQ.AsString := '';
end;

end.
