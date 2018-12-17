unit UCadPercSimples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPercSimples,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, UCadPercSimples_Fat,
  NxCollection;

type
  TfrmCadPercSimples = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    UCControls1: TUCControls;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    btnFaixaSimples: TBitBtn;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
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
    procedure btnFaixaSimplesClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadPercSimples: TDMCadPercSimples;
    ffrmCadPercSimples_Fat: TfrmCadPercSimples_Fat;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadPercSimples: TfrmCadPercSimples;

implementation

uses DmdDatabase, rsDBUtils, TypInfo;

{$R *.dfm}

procedure TfrmCadPercSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                        
  Action := Cafree;
end;

procedure TfrmCadPercSimples.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPercSimples.cdsPercentual_Simples.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPercSimples.prc_Excluir_Registro;
begin
  fDMCadPercSimples.prc_Excluir;
end;

procedure TfrmCadPercSimples.prc_Gravar_Registro;
begin
  fDMCadPercSimples.cdsPercentual_SimplesNOME_INTERNO.AsString := RxDBLookupCombo3.Text;
  fDMCadPercSimples.prc_Gravar;
  if fDMCadPercSimples.cdsPercentual_Simples.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPercSimples.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPercSimples.prc_Inserir_Registro;
begin
  fDMCadPercSimples.prc_Inserir;

  if fDMCadPercSimples.cdsPercentual_Simples.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  RxDBLookupCombo3.SetFocus;
end;

procedure TfrmCadPercSimples.FormShow(Sender: TObject);
begin
  fDMCadPercSimples := TDMCadPercSimples.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPercSimples);

  btnFaixaSimples.Visible := (fDMCadPercSimples.qParametrosUSA_FAIXA_SIMPLES.AsString = 'S');
end;

procedure TfrmCadPercSimples.prc_Consultar;
begin
  fDMCadPercSimples.cdsPercentual_Simples.Close;
  fDMCadPercSimples.sdsPercentual_Simples.CommandText := fDMCadPercSimples.ctCommand
                                                       + ' WHERE 0 = 0 ';
  if RxDBLookupCombo2.Text <> '' then
    fDMCadPercSimples.sdsPercentual_Simples.CommandText := fDMCadPercSimples.sdsPercentual_Simples.CommandText
                                    + ' AND FILIAL = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if CurrencyEdit1.AsInteger > 0 then
    fDMCadPercSimples.sdsPercentual_Simples.CommandText := fDMCadPercSimples.sdsPercentual_Simples.CommandText
                                    + ' AND ANO = ' + IntToStr(CurrencyEdit1.AsInteger);
  fDMCadPercSimples.cdsPercentual_Simples.Open;
end;

procedure TfrmCadPercSimples.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPercSimples.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPercSimples.cdsPercentual_Simples.State in [dsBrowse]) or not(fDMCadPercSimples.cdsPercentual_Simples.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPercSimples.cdsPercentual_Simples.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPercSimples.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPercSimples.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPercSimples.cdsPercentual_Simples.IsEmpty) or not(fDMCadPercSimples.cdsPercentual_Simples.Active) or (fDMCadPercSimples.cdsPercentual_SimplesID.AsInteger < 1) then
    exit;

  fDMCadPercSimples.cdsPercentual_Simples.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPercSimples.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPercSimples.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPercSimples);
end;

procedure TfrmCadPercSimples.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPercSimples.btnFaixaSimplesClick(Sender: TObject);
begin
  ffrmCadPercSimples_Fat := TfrmCadPercSimples_Fat.Create(self);
  ffrmCadPercSimples_Fat.fDMCadPercSimples := fDMCadPercSimples;
  ffrmCadPercSimples_Fat.ShowModal;

  FreeAndNil(ffrmCadPercSimples_Fat);
end;

procedure TfrmCadPercSimples.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    RxDBLookupCombo2.SetFocus;
end;

end.
