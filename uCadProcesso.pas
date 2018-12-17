unit UCadProcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadSetor, Mask, 
  db, RxDBComb, UCBase, StdCtrls, DBCtrls, ExtCtrls, RzTabs, DBGrids, ToolEdit, CurrEdit, NxCollection, RzPanel;

type
  TfrmCadProcesso = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    UCControls1: TUCControls;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Label5: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit4: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    dbrdgEncerado: TDBRadioGroup;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
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
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadSetor: TDMCadSetor;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }       
  end;

var
  frmCadProcesso: TfrmCadProcesso;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfrmCadProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                             
  Action := Cafree;
end;

procedure TfrmCadProcesso.btnExcluirClick(Sender: TObject);
begin
  if fDMCadSetor.cdsProcesso.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadProcesso.prc_Excluir_Registro;
begin
  fDMCadSetor.prc_Excluir_Processo;
end;

procedure TfrmCadProcesso.prc_Gravar_Registro;
begin
  fDMCadSetor.prc_Gravar_Processo;
  if fDMCadSetor.cdsProcesso.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadSetor.vMsgSetor, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProcesso.prc_Inserir_Registro;
begin
  fDMCadSetor.prc_Inserir_Processo;

  if fDMCadSetor.cdsProcesso.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadProcesso.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadSetor := TDMCadSetor.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadSetor);
  Edit4.SetFocus;
  Label2.Visible        := (fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString <> 'S');
  RxDBComboBox1.Visible := (fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString <> 'S');
  RzGroupBox1.Visible   := ((fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString <> 'S') and (fDMCadSetor.qParametros_LoteTIPO_PROCESSO.AsString <> 'L'));
  DBCheckBox1.Visible   := (fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString = 'S');
  dbrdgEncerado.Visible := ((fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString <> 'S') and (fDMCadSetor.qParametros_LoteLOTE_TEXTIL.AsString = 'S'));
  Label4.Visible        := ((fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString <> 'S') and (fDMCadSetor.qParametros_LoteLOTE_TEXTIL.AsString = 'S'));
  DBCheckBox4.Visible   := (trim(fDMCadSetor.qParametros_LoteTIPO_PROCESSO.AsString) <> 'L');
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'DESCRICAO_TIPO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString <> 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'CALCULA_AREA') then
      SMDBGrid1.Columns[i].Visible := (fDMCadSetor.qParametros_SerUSA_PROCESSO_OS.AsString = 'S');
  end;
end;

procedure TfrmCadProcesso.prc_Consultar;
begin
  fDMCadSetor.cdsProcesso.Close;
  fDMCadSetor.sdsProcesso.CommandText := fDMCadSetor.ctProcesso + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadSetor.sdsProcesso.CommandText := fDMCadSetor.sdsProcesso.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadSetor.cdsProcesso.Open;
end;

procedure TfrmCadProcesso.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProcesso.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadSetor.cdsProcesso.State in [dsBrowse]) or not(fDMCadSetor.cdsProcesso.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadSetor.cdsProcesso.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProcesso.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProcesso.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadSetor.cdsProcesso.IsEmpty) or not(fDMCadSetor.cdsProcesso.Active) or (fDMCadSetor.cdsProcessoID.AsInteger < 1) then
    exit;

  fDMCadSetor.cdsProcesso.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadProcesso.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadProcesso.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadSetor);
end;

procedure TfrmCadProcesso.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProcesso.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProcesso.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus;
end;

procedure TfrmCadProcesso.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadSetor.cdsProcesso.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
