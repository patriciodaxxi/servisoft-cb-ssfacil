unit UCadGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadGrade,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, DBVGrids,
  NxCollection, RzPanel;

type
  TfrmCadGrade = class(TForm)
    RZPageControl1: TRzPageControl;
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
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    edtNome: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
    VDBGrid1: TVDBGrid;
    RzGroupBox2: TRzGroupBox;
    VDBGrid2: TVDBGrid;
    DBCheckBox1: TDBCheckBox;
    pnlTamanho: TPanel;
    rxdbTamanho: TRxDBLookupCombo;
    Label1: TLabel;
    pnlTamanho_USA: TPanel;
    Label2: TLabel;
    rxdbTamanho_USA: TRxDBLookupCombo;
    pnlTamanho_EUR: TPanel;
    Label3: TLabel;
    rxdbTamanho_EUR: TRxDBLookupCombo;
    Panel3: TPanel;
    SpeedButton8: TSpeedButton;
    btnInserir_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    NxButton1: TNxButton;
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
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure edtNCMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadGrade: TDMCadGrade;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    
  public
    { Public declarations }

  end;

var
  frmCadGrade: TfrmCadGrade;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadGrade.btnExcluirClick(Sender: TObject);
begin
  if fDMCadGrade.cdsGrade.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadGrade.prc_Excluir_Registro;
begin
  fDMCadGrade.prc_Excluir;
end;

procedure TfrmCadGrade.prc_Gravar_Registro;
begin
  fDMCadGrade.prc_Gravar;
  if fDMCadGrade.cdsGrade.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadGrade.vMsgGrade, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadGrade.prc_Inserir_Registro;
begin
  fDMCadGrade.prc_Inserir;

  if fDMCadGrade.cdsGrade.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadGrade.FormShow(Sender: TObject);
begin
  fDMCadGrade := TDMCadGrade.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadGrade);
end;

procedure TfrmCadGrade.prc_Consultar;
begin
  fDMCadGrade.cdsGrade.Close;
  fDMCadGrade.sdsGrade.CommandText := fDMCadGrade.ctCommand;
  if Trim(edtNome.Text) <> '' then
    fDMCadGrade.sdsGrade.CommandText := fDMCadGrade.sdsGrade.CommandText
                                    + ' WHERE NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadGrade.cdsGrade.Open;
end;

procedure TfrmCadGrade.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadGrade.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadGrade.cdsGrade.State in [dsBrowse]) or not(fDMCadGrade.cdsGrade.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadGrade.cdsGrade.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadGrade.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadGrade.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadGrade.cdsGrade.IsEmpty) or not(fDMCadGrade.cdsGrade.Active) or (fDMCadGrade.cdsGradeID.AsInteger < 1) then
    exit;

  fDMCadGrade.cdsGrade.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadGrade.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadGrade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadGrade);
end;

procedure TfrmCadGrade.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadGrade.btnInserir_ItensClick(Sender: TObject);
var
  vMsgErroItem: String;
begin
  vMsgErroItem := '';
  if rxdbTamanho.Text = '' then
    vMsgErroItem := vMsgErroItem + #13 + '*** Tamanho não informado!';
  if trim(vMsgErroItem) <> '' then
  begin
    MessageDlg(vMsgErroItem, mtError, [mbOk], 0);
    exit;
  end;
  {if (fDMCadGrade.cdsGrade_Itens.Locate('TAMANHO',rxdbTamanho.Text,[loCaseInsensitive])) then
  begin
    MessageDlg('*** Tamanho já informado!', mtError, [mbOk], 0);
    rxdbTamanho.SetFocus;
    exit;
  end;}

  if (fDMCadGrade.cdsGrade_Itens.Locate('TAMANHO',rxdbTamanho.Text,[loCaseInsensitive])) then
    fDMCadGrade.cdsGrade_Itens.Edit
  else
  begin
    fDMCadGrade.cdsGrade_Itens.Last;
    fDMCadGrade.cdsGrade_Itens.Insert;
    fDMCadGrade.cdsGrade_ItensID.AsInteger      := fDMCadGrade.cdsGradeID.AsInteger;
    fDMCadGrade.cdsGrade_ItensTAMANHO.AsString  := rxdbTamanho.Text;
  end;
  if fDMCadGrade.cdsGradePOSSUI_MARCACAO.AsString <> 'S' then
  begin
    fDMCadGrade.cdsGrade_ItensTAMANHO_USA.Clear;
    fDMCadGrade.cdsGrade_ItensTAMANHO_EUR.Clear;
  end
  else
  begin
    fDMCadGrade.cdsGrade_ItensTAMANHO_USA.AsString := rxdbTamanho_USA.Text;
    fDMCadGrade.cdsGrade_ItensTAMANHO_EUR.AsString := rxdbTamanho_EUR.Text;
  end;
  fDMCadGrade.cdsGrade_Itens.Post;
  rxdbTamanho.ClearValue;
  rxdbTamanho_USA.ClearValue;
  rxdbTamanho_EUR.ClearValue;
  rxdbTamanho.SetFocus;
end;

procedure TfrmCadGrade.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadGrade.cdsGrade_Itens.IsEmpty) or (fDMCadGrade.cdsGrade_ItensID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadGrade.cdsGrade_Itens.Delete;
end;

procedure TfrmCadGrade.edtNCMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadGrade.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadGrade.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
end;

procedure TfrmCadGrade.SpeedButton8Click(Sender: TObject);
begin
  fDMCadGrade.cdsTamanho.Close;
  fDMCadGrade.cdsTamanho.Open;
end;

procedure TfrmCadGrade.DBCheckBox1Click(Sender: TObject);
begin
  pnlTamanho_USA.Visible := DBCheckBox1.Checked;
  pnlTamanho_EUR.Visible := DBCheckBox1.Checked;
end;

procedure TfrmCadGrade.NxButton1Click(Sender: TObject);
begin
  if fDMCadGrade.cdsGrade_Itens.IsEmpty then
    exit;
  rxdbTamanho.Value := fDMCadGrade.cdsGrade_ItensTAMANHO.AsString;
  if fDMCadGrade.cdsGradePOSSUI_MARCACAO.AsString = 'S' then
  begin
    rxdbTamanho_USA.Value := fDMCadGrade.cdsGrade_ItensTAMANHO_USA.AsString;
    rxdbTamanho_EUR.Value := fDMCadGrade.cdsGrade_ItensTAMANHO_EUR.AsString;
  end;
end;

end.
