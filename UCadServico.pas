unit UCadServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadServico,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb,
  NxCollection;

type
  TfrmCadServico = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label21: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    btnGerar: TBitBtn;
    UCControls1: TUCControls;
    edtCodigo: TEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label34: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
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
    procedure edtServicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnGerarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadServico: TDMCadServico;
    vItemServico: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }
  end;

var
  frmCadServico: TfrmCadServico;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadServico.btnExcluirClick(Sender: TObject);
begin
  if fDMCadServico.cdsServico.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadServico.prc_Excluir_Registro;
begin
  fDMCadServico.prc_Excluir;
end;

procedure TfrmCadServico.prc_Gravar_Registro;
begin
  fDMCadServico.prc_Gravar;
  if fDMCadServico.cdsServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadServico.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadServico.prc_Inserir_Registro;
begin
  fDMCadServico.prc_Inserir;

  if fDMCadServico.cdsServico.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

  DBEdit7.SetFocus;
end;

procedure TfrmCadServico.FormShow(Sender: TObject);
begin
  fDMCadServico := TDMCadServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadServico);
end;

procedure TfrmCadServico.prc_Consultar;
begin
  fDMCadServico.cdsServico.IndexFieldNames := 'CODIGO';
  fDMCadServico.cdsServico.Close;
  fDMCadServico.sdsServico.CommandText := fDMCadServico.ctCommand + ' WHERE 0 = 0';
  if Trim(edtCodigo.Text) <> '' then
    fDMCadServico.sdsServico.CommandText := fDMCadServico.sdsServico.CommandText
                                    + ' AND CODIGO LIKE ' + QuotedStr('%'+edtCodigo.Text);
  if Trim(edtNome.Text) <> '' then
    fDMCadServico.sdsServico.CommandText := fDMCadServico.sdsServico.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadServico.cdsServico.Open;
end;

procedure TfrmCadServico.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadServico.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadServico.cdsServico.State in [dsBrowse]) or not(fDMCadServico.cdsServico.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadServico.cdsServico.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadServico.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadServico.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadServico.cdsServico.IsEmpty) or not(fDMCadServico.cdsServico.Active) or (fDMCadServico.cdsServicoID.AsInteger < 1) then
    exit;

  fDMCadServico.cdsServico.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadServico.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadServico.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadServico);
end;

procedure TfrmCadServico.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadServico.edtServicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadServico.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadServico.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadServico.cdsServico);
end;

procedure TfrmCadServico.btnGerarClick(Sender: TObject);
var
  Txt: TextFile;
  vRegistro: String;
  vArquivo: String;
  i: Integer;
  vCodAux: String;
begin
  vArquivo := ExtractFileDir(Application.ExeName) + '\ItemLista.txt';

  try
    AssignFile(Txt,vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt,vRegistro);
      i := pos('=',vRegistro);
      vCodAux := copy(vRegistro,1,i-1);
      fDMCadServico.qVerifica_Sintetica.Close;
      fDMCadServico.qVerifica_Sintetica.ParamByName('CODIGO').AsString := Trim(vCodAux);
      fDMCadServico.qVerifica_Sintetica.Open;
      if fDMCadServico.qVerifica_Sintetica.IsEmpty then
      begin
        fDMCadServico.prc_Inserir;
        fDMCadServico.cdsServicoCODIGO.AsString := trim(vCodAux);
        fDMCadServico.cdsServicoNOME.AsString   := copy(vRegistro,i+1,Length(vRegistro)-i);
        if pos('.',vCodAux) > 0 then
          fDMCadServico.cdsServicoTIPO_AS.AsString := 'A'
        else
          fDMCadServico.cdsServicoTIPO_AS.AsString := 'S';
        fDMCadServico.cdsServico.Post;
        fDMCadServico.cdsServico.ApplyUpdates(0);
      end;
    end;

  finally
    CloseFile(Txt);
  end;

  ShowMessage('Geração concluída!');
end;

procedure TfrmCadServico.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadServico.cdsServico.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadServico.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadServico.prc_Limpar_Edit_Consulta;
begin
  edtCodigo.Clear;
  edtNome.Clear;
end;

end.
