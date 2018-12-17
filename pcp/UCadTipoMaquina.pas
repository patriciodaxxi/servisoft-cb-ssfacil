unit UCadTipoMaquina;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadTipoMaquina,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadMaquina_Matriz, UCBase, RxLookup, Mask,
  jpeg, NxCollection, CurrEdit, RzPanel, RxDBComb;

type
  TfrmCadTipoMaquina = class(TForm)
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
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    RxDBComboBox1: TRxDBComboBox;
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
  private
    { Private declarations }
    fDMCadTipoMaquina: TDMCadTipoMaquina;

    ffrmCadMaquina_Matriz: TfrmCadMaquina_Matriz;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

    procedure Habilita_Campos;

  public
    { Public declarations }

  end;

var
  frmCadTipoMaquina: TfrmCadTipoMaquina;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadTipoMaquina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTipoMaquina.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTipoMaquina.cdsTipoMaquina.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTipoMaquina.prc_Excluir_Registro;
begin
  fDMCadTipoMaquina.prc_Excluir;
end;

procedure TfrmCadTipoMaquina.prc_Gravar_Registro;
begin
  fDMCadTipoMaquina.prc_Gravar;
  if fDMCadTipoMaquina.cdsTipoMaquina.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTipoMaquina.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  Habilita_Campos;
end;

procedure TfrmCadTipoMaquina.prc_Inserir_Registro;
begin
  fDMCadTipoMaquina.prc_Inserir;

  if fDMCadTipoMaquina.cdsTipoMaquina.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  Habilita_Campos;
  DBEdit7.SetFocus;
end;

procedure TfrmCadTipoMaquina.FormShow(Sender: TObject);
begin
  fDMCadTipoMaquina := TDMCadTipoMaquina.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTipoMaquina);
end;

procedure TfrmCadTipoMaquina.prc_Consultar;
begin
  fDMCadTipoMaquina.cdsTipoMaquina.Close;
  fDMCadTipoMaquina.sdsTipoMaquina.CommandText := fDMCadTipoMaquina.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadTipoMaquina.sdsTipoMaquina.CommandText := fDMCadTipoMaquina.sdsTipoMaquina.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadTipoMaquina.cdsTipoMaquina.Open;
end;

procedure TfrmCadTipoMaquina.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTipoMaquina.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTipoMaquina.cdsTipoMaquina.State in [dsBrowse]) or not(fDMCadTipoMaquina.cdsTipoMaquina.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTipoMaquina.cdsTipoMaquina.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  Habilita_Campos;
end;

procedure TfrmCadTipoMaquina.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTipoMaquina.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTipoMaquina.cdsTipoMaquina.IsEmpty) or not(fDMCadTipoMaquina.cdsTipoMaquina.Active) or (fDMCadTipoMaquina.cdsTipoMaquinaID.AsInteger < 1) then
    exit;

  fDMCadTipoMaquina.cdsTipoMaquina.Edit;

  TS_Consulta.TabEnabled := False;
  Habilita_Campos;
end;

procedure TfrmCadTipoMaquina.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTipoMaquina.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTipoMaquina);
end;

procedure TfrmCadTipoMaquina.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTipoMaquina.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTipoMaquina.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadTipoMaquina.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadTipoMaquina.Habilita_Campos;
begin
  pnlCadastro.Enabled := not(pnlCadastro.Enabled);
  
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
end;

end.
