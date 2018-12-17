unit UCadMatriz_Preco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadMatriz_Preco, Mask,
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection;

type
  TfrmCadMatriz_Preco = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label68: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    UCControls1: TUCControls;
    Label3: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
    RxDBComboBox3: TRxDBComboBox;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadMatriz_Preco: TDMCadMatriz_Preco;
    xNossoNum: Int64;
    vNossoNumero: String;
    vNossoNumero_Montado: String;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }            
  end;

var
  frmCadMatriz_Preco: TfrmCadMatriz_Preco;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadMatriz_Preco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMatriz_Preco.btnExcluirClick(Sender: TObject);
begin
  if fDMCadMatriz_Preco.cdsMatriz_Preco.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadMatriz_Preco.prc_Excluir_Registro;
begin
  fDMCadMatriz_Preco.prc_Excluir;
end;

procedure TfrmCadMatriz_Preco.prc_Gravar_Registro;
begin
  fDMCadMatriz_Preco.prc_Gravar;
  if fDMCadMatriz_Preco.cdsMatriz_Preco.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMatriz_Preco.vMsgMatriz_Preco, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMatriz_Preco.prc_Inserir_Registro;
begin
  fDMCadMatriz_Preco.prc_Inserir;

  if fDMCadMatriz_Preco.cdsMatriz_Preco.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBComboBox2.SetFocus;
end;

procedure TfrmCadMatriz_Preco.FormShow(Sender: TObject);
begin
  fDMCadMatriz_Preco := TDMCadMatriz_Preco.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMatriz_Preco);
end;

procedure TfrmCadMatriz_Preco.prc_Consultar;
begin
  fDMCadMatriz_Preco.cdsMatriz_Preco.Close;
  fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  case ComboBox2.ItemIndex of
    0: fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText + ' AND TIPO_REG = ' + QuotedStr('ACB');
    1: fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText + ' AND TIPO_REG = ' + QuotedStr('RMO');
    2: fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText + ' AND TIPO_REG = ' + QuotedStr('CMO');
    3: fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText + ' AND TIPO_REG = ' + QuotedStr('FRS');
    4: fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText + ' AND TIPO_REG = ' + QuotedStr('FRC');
    5: fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText := fDMCadMatriz_Preco.sdsMatriz_Preco.CommandText + ' AND TIPO_REG = ' + QuotedStr('QFR');
  end;
  fDMCadMatriz_Preco.cdsMatriz_Preco.Open;
end;

procedure TfrmCadMatriz_Preco.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMatriz_Preco.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadMatriz_Preco.cdsMatriz_Preco.State in [dsBrowse]) or not(fDMCadMatriz_Preco.cdsMatriz_Preco.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMatriz_Preco.cdsMatriz_Preco.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMatriz_Preco.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMatriz_Preco.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadMatriz_Preco.cdsMatriz_Preco.IsEmpty) or not(fDMCadMatriz_Preco.cdsMatriz_Preco.Active) or (fDMCadMatriz_Preco.cdsMatriz_PrecoID.AsInteger < 1) then
    exit;

  fDMCadMatriz_Preco.cdsMatriz_Preco.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadMatriz_Preco.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMatriz_Preco.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMatriz_Preco);
end;

procedure TfrmCadMatriz_Preco.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMatriz_Preco.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMatriz_Preco.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadMatriz_Preco.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadMatriz_Preco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadMatriz_Preco.cdsMatriz_Preco.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCadMatriz_Preco.cdsMatriz_Preco.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadMatriz_Preco.RxDBComboBox1Change(Sender: TObject);
begin
  Label2.Visible  := ((RxDBComboBox1.ItemIndex = 1) or (fDMCadMatriz_Preco.cdsMatriz_PrecoTIPO_PRECO.AsString <> 'P'));
  DBEdit1.Visible := ((RxDBComboBox1.ItemIndex = 1) or (fDMCadMatriz_Preco.cdsMatriz_PrecoTIPO_PRECO.AsString <> 'P'));
  Label4.Visible  := ((RxDBComboBox1.ItemIndex = 1) or (fDMCadMatriz_Preco.cdsMatriz_PrecoTIPO_PRECO.AsString <> 'P'));
  RxDBComboBox3.Visible := ((RxDBComboBox1.ItemIndex = 1) or (fDMCadMatriz_Preco.cdsMatriz_PrecoTIPO_PRECO.AsString <> 'P'));
end;

end.
