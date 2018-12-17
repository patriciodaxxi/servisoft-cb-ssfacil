unit UCadMarca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadMarca,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit;

type
  TfrmCadMarca = class(TForm)
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
    edtNome: TEdit;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    UCControls1: TUCControls;
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
    procedure edtGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadMarca: TDMCadMarca;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmCadMarca: TfrmCadMarca;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMarca.btnExcluirClick(Sender: TObject);
begin
  if fDMCadMarca.cdsMarca.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadMarca.prc_Excluir_Registro;
begin
  fDMCadMarca.prc_Excluir;
end;

procedure TfrmCadMarca.prc_Gravar_Registro;
begin
  fDMCadMarca.prc_Gravar;
  if fDMCadMarca.cdsMarca.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMarca.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMarca.prc_Inserir_Registro;
begin
  fDMCadMarca.prc_Inserir;

  if fDMCadMarca.cdsMarca.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadMarca.FormShow(Sender: TObject);
begin
  fDMCadMarca := TDMCadMarca.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMarca);
end;

procedure TfrmCadMarca.prc_Consultar;
begin
  fDMCadMarca.cdsMarca.Close;
  fDMCadMarca.sdsMarca.CommandText := fDMCadMarca.ctCommand + ' WHERE 0 = 0';
  if Trim(edtNome.Text) <> '' then
    fDMCadMarca.sdsMarca.CommandText := fDMCadMarca.sdsMarca.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadMarca.cdsMarca.Open;
end;

procedure TfrmCadMarca.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMarca.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadMarca.cdsMarca.State in [dsBrowse]) or not(fDMCadMarca.cdsMarca.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMarca.cdsMarca.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMarca.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMarca.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadMarca.cdsMarca.IsEmpty) or not(fDMCadMarca.cdsMarca.Active) or (fDMCadMarca.cdsMarcaID.AsInteger < 1) then
    exit;

  fDMCadMarca.cdsMarca.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadMarca.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMarca.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMarca);
end;

procedure TfrmCadMarca.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMarca.edtGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMarca.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMarca.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadMarca.cdsMarca);
end;

procedure TfrmCadMarca.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadMarca.cdsMarca.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
