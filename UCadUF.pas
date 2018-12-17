unit UCadUF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadUF, DBGrids,
  ExtCtrls, StdCtrls, DB, SqlExpr, RzTabs,UCadPais, UCBase, RxLookup, Mask, DBCtrls, NxCollection;

type
  TfrmCadUF = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    StaticText1: TStaticText;
    UCControls1: TUCControls;
    Panel4: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    Panel1: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadUF: TDMCadUF;

    ffrmCadPais: TfrmCadPais;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmCadUF: TfrmCadUF;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadUF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadUF.btnExcluirClick(Sender: TObject);
begin
  if fDMCadUF.cdsUF.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadUF.prc_Excluir_Registro;
begin
  fDMCadUF.prc_Excluir;
end;

procedure TfrmCadUF.prc_Gravar_Registro;
begin
  fDMCadUF.prc_Gravar;
  if fDMCadUF.cdsUF.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadUF.vMsgUF, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadUF.prc_Inserir_Registro;
begin
  fDMCadUF.prc_Inserir;

  if fDMCadUF.cdsUF.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadUF.FormShow(Sender: TObject);
begin
  fDMCadUF := TDMCadUF.Create(Self);
  fDMCadUF.cdsPais.Close;
  fDMCadUF.cdsPais.Open;
  oDBUtils.SetDataSourceProperties(Self, fDMCadUF);
end;

procedure TfrmCadUF.prc_Consultar;
begin
  fDMCadUF.cdsUF.Close;
  fDMCadUF.sdsUF.CommandText := fDMCadUF.ctCommand;
  if Trim(Edit1.Text) <> '' then
    fDMCadUF.sdsUF.CommandText := fDMCadUF.sdsUF.CommandText
                                    + ' WHERE UF = ' + QuotedStr(Edit1.Text);
  fDMCadUF.cdsUF.Open;
end;

procedure TfrmCadUF.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadUF.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadUF.cdsUF.State in [dsBrowse]) or not(fDMCadUF.cdsUF.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadUF.cdsUF.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadUF.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadUF.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadUF.cdsUF.IsEmpty) or not(fDMCadUF.cdsUF.Active) or (fDMCadUF.cdsUFUF.AsString = '') then
    exit;

  fDMCadUF.cdsUF.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadUF.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadUF.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadUF);
end;

procedure TfrmCadUF.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadPais := TfrmCadPais.Create(self);
  ffrmCadPais.FormStyle := fsNormal;
  ffrmCadPais.Visible   := False;
  ffrmCadPais.ShowModal;

  FreeAndNil(ffrmCadPais);
  fDMCadUF.cdsPais.Close;
  fDMCadUF.cdsPais.Open;

{Application.CreateForm(TForm25, Form25);
Form25:= TForm25.Create(nil);
Form25.ShowModal;}
end;

procedure TfrmCadUF.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadUF.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadUF.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    Edit1.Clear;
end;

end.
