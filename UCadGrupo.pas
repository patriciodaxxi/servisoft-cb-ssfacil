unit UCadGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadGrupo, DBGrids,
  ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection, RXSpin, AdvCombo,
  ColCombo, ComCtrls, treelist, AdvDBLookupComboBox, AdvTreeComboBox, Lucombo, dblucomb;

type
  TfrmCadGrupo = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    UCControls1: TUCControls;
    Label1: TLabel;
    Label38: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    UCControls2: TUCControls;
    RxSpinButton1: TRxSpinButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Label5: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    Label10: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton7: TSpeedButton;
    Label7: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure RxSpinButton1TopClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadGrupo: TDMCadGrupo;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmCadGrupo: TfrmCadGrupo;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, URelGrupo;

{$R *.dfm}

procedure TfrmCadGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadGrupo.prc_Excluir_Registro;
begin
  fDMCadGrupo.prc_Excluir;
end;

procedure TfrmCadGrupo.prc_Gravar_Registro;
begin
  fDMCadGrupo.cdsGrupoNOME_AUX.AsString := fDMCadGrupo.cdsGrupoNOME.AsString;
  if fDMCadGrupo.cdsGrupoNIVEL.AsInteger = 2 then
    fDMCadGrupo.cdsGrupoNOME_AUX.AsString := '   ' + fDMCadGrupo.cdsGrupoNOME.AsString;
  fDMCadGrupo.prc_Gravar;
  if fDMCadGrupo.cdsGrupo.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadGrupo.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadGrupo.prc_Inserir_Registro;
begin
  fDMCadGrupo.prc_Inserir;

  if fDMCadGrupo.cdsGrupo.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  fDMCadGrupo.cdsSuperior.Close;
  fDMCadGrupo.cdsSuperior.Open;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadGrupo.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadGrupo := TDMCadGrupo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMCadGrupo);
  btnConsultarClick(Sender);
  fDMCadGrupo.cdsSuperior.IndexFieldNames := 'NOME';
  Label5.Visible        := (fDMCadGrupo.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
  RxDBComboBox1.Visible := (fDMCadGrupo.qParametrosEMPRESA_AMBIENTES.AsString = 'S');

  Label7.Visible        := not(fDMCadGrupo.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
  RxDBComboBox3.Visible := not(fDMCadGrupo.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
end;

procedure TfrmCadGrupo.prc_Consultar;
begin
  fDMCadGrupo.cdsGrupo.Close;
  if Trim(edtNome.Text) <> '' then
    fDMCadGrupo.sdsGrupo.CommandText := fDMCadGrupo.sdsGrupo.CommandText +
                                        ' WHERE NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadGrupo.cdsGrupo.IndexFieldNames := 'CODIGO';
  fDMCadGrupo.cdsGrupo.Open;
end;

procedure TfrmCadGrupo.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadGrupo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadGrupo);
end;

procedure TfrmCadGrupo.edtGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadGrupo.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadGrupo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadGrupo.cdsGrupo);
end;

procedure TfrmCadGrupo.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  if Column.FieldName = 'CODIGO' then
    fDMCadGrupo.cdsGrupo.IndexFieldNames := 'COD_PRINCIPAL;ID'
  else
    fDMCadGrupo.cdsGrupo.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadGrupo.RxSpinButton1BottomClick(Sender: TObject);
begin
  fDMCadGrupo.cdsGrupoNIVEL.AsInteger := fDMCadGrupo.cdsGrupoNIVEL.AsInteger - 1;
end;

procedure TfrmCadGrupo.RxSpinButton1TopClick(Sender: TObject);
begin
  fDMCadGrupo.cdsGrupoNIVEL.AsInteger := fDMCadGrupo.cdsGrupoNIVEL.AsInteger + 1;
end;

procedure TfrmCadGrupo.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadGrupo.cdsGrupo.IsEmpty) or not(fDMCadGrupo.cdsGrupo.Active) or (fDMCadGrupo.cdsGrupoID.AsInteger < 1) then
    exit;
  
  fDMCadGrupo.cdsGrupo.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadGrupo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadGrupo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadGrupo.cdsGrupo.State in [dsBrowse]) or not(fDMCadGrupo.cdsGrupo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadGrupo.cdsGrupo.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadGrupo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadGrupo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadGrupo.cdsGrupo.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadGrupo.DBEdit2Enter(Sender: TObject);
begin
  fDMCadGrupo.prc_Proximo_Codigo;
end;

procedure TfrmCadGrupo.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Value = '' then
  begin
    fDMCadGrupo.cdsGrupoNIVEL.AsInteger := 1;
    fDMCadGrupo.cdsGrupoTIPO.AsString   := 'S';
  end
  else
  begin
    fDMCadGrupo.cdsGrupoNIVEL.AsInteger := fDMCadGrupo.cdsSuperiorNIVEL.AsInteger + 1;
  end;
end;

procedure TfrmCadGrupo.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMCadGrupo.cdsGrupoCODIGO.Clear;
end;

procedure TfrmCadGrupo.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadGrupo.cdsGrupoTIPO.AsString = 'S' then
  begin
    AFont.Style := [fsBold];
    //AFont.Color := clNavy;
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmCadGrupo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadGrupo.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadGrupo.DBEdit2Exit(Sender: TObject);
var
  i: Word;
begin
  //for i := 1 to 6 - Length(fDMCadGrupo.cdsGrupoCODIGO.AsString) do
  //  fDmFaca.cdsGrupoCODIGO.AsString := '0' + fDmFaca.cdsGrupoCODIGO.AsString;
end;

procedure TfrmCadGrupo.btnImprimirClick(Sender: TObject);
begin
  if not(fDMCadGrupo.cdsGrupo.Active) or (fDMCadGrupo.cdsGrupo.IsEmpty) or (fDMCadGrupo.cdsGrupoID.AsInteger <= 0) then
    exit;
  vTipo_Config_Email := 3;
  fRelGrupo := TfRelGrupo.Create(Self);
  fRelGrupo.fDMCadGrupo := fDMCadGrupo;
  fRelGrupo.RLReport1.PreviewModal;
  fRelGrupo.RLReport1.Free;
  FreeAndNil(fRelGrupo);
end;

procedure TfrmCadGrupo.SpeedButton5Click(Sender: TObject);
begin
  fDMCadGrupo.cdsUnidade.Close;
  fDMCadGrupo.cdsUnidade.Open;
end;

procedure TfrmCadGrupo.SpeedButton7Click(Sender: TObject);
begin
  fDMCadGrupo.cdsNCM.Close;
  fDMCadGrupo.cdsNCM.Open;
end;

end.
