unit UCadNFe_Inutilizacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, DBGrids,
  UDMCadNFe_Inutilizacao, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, UDMNFe, UNFe,
  NxCollection, RXDBCtrl;

type
  TfrmCadNFe_Inutilizacao = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel12: TPanel;
    Shape1: TShape;
    Label5: TLabel;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnNFe: TNxButton;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
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
    procedure btnNFeClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadNFe_Inutilizacao: TDMCadNFe_Inutilizacao;
    fDMNFE: TDMNFE;
    ffNFe: TfNFe;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations } 
  end;

var
  frmCadNFe_Inutilizacao: TfrmCadNFe_Inutilizacao;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadNFe_Inutilizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNFe_Inutilizacao.btnExcluirClick(Sender: TObject);
begin
  if fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.IsEmpty then
    exit;

  if trim(fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMPROTOCOLO.AsString) <> '' then
  begin
    MessageDlg('*** Registro não pode ser excluído pois já está validado!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadNFe_Inutilizacao.prc_Excluir_Registro;
begin
  fDMCadNFe_Inutilizacao.prc_Excluir;
end;

procedure TfrmCadNFe_Inutilizacao.prc_Gravar_Registro;
begin
  fDMCadNFe_Inutilizacao.prc_Gravar;
  if fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadNFe_Inutilizacao.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  btnNFeClick(btnConfirmar);
end;

procedure TfrmCadNFe_Inutilizacao.prc_Inserir_Registro;
begin
  fDMCadNFe_Inutilizacao.prc_Inserir;

  if fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus
end;

procedure TfrmCadNFe_Inutilizacao.FormShow(Sender: TObject);
begin
  fDMCadNFe_Inutilizacao := TDMCadNFe_Inutilizacao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNFe_Inutilizacao);
end;

procedure TfrmCadNFe_Inutilizacao.prc_Consultar;
begin
  fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.Close;
  fDMCadNFe_Inutilizacao.sdsNFe_Inutilizacao.CommandText := fDMCadNFe_Inutilizacao.ctCommand;
  fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.Open;
end;

procedure TfrmCadNFe_Inutilizacao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadNFe_Inutilizacao.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.State in [dsBrowse]) or not(fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadNFe_Inutilizacao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadNFe_Inutilizacao.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.IsEmpty) or not(fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.Active) or (fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoID.AsInteger < 1) then
    exit;
  if trim(fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMPROTOCOLO.AsString) <> '' then
  begin
    MessageDlg('*** Registro não pode ser alterado pois já está validado', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadNFe_Inutilizacao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadNFe_Inutilizacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNFe_Inutilizacao);
end;

procedure TfrmCadNFe_Inutilizacao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;

  if fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.State in [dsbrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadNFe_Inutilizacao.btnNFeClick(Sender: TObject);
begin
  fDMNFe := TDMNFe.Create(Self);

  ffNFe := TfNFe.Create(fNFe);
  ffNfe.fDMCadNFe_Inutilizacao := fDMCadNFe_Inutilizacao;
  ffNfe.Tag                    := 1;
  ffNfe.fDMNFe                 := fDMNFe;
  vFilial                      := fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoFILIAL.AsInteger;
  //10/07/2018
  //ffNFe.ShowModal;
  ffNFe.prc_Configura_Tela;
  ffNFe.btInutilizarClick(ffNFe);
  //ffNFe.ShowModal;

  FreeAndNil(ffNFe);
end;

procedure TfrmCadNFe_Inutilizacao.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.IsEmpty) and (trim(fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMPROTOCOLO.AsString) = '') then
    Background := clYellow;
end;

procedure TfrmCadNFe_Inutilizacao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadNFe_Inutilizacao.DBEdit3Exit(Sender: TObject);
begin
  if fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger > 0 then
    fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_FIN.AsInteger := fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_INI.AsInteger;
end;

end.
