unit UCadProduto_GradeNum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadProduto, NxCollection, Grids,
  DBGrids, SMDBGrid, RxLookup, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DBVGrids, DB;

type
  TfrmCadProduto_GradeNum = class(TForm)
    pnlDados: TPanel;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Habilita;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    
  end;

var
  frmCadProduto_GradeNum: TfrmCadProduto_GradeNum;

implementation

uses rsDBUtils, Math;

{$R *.dfm}

procedure TfrmCadProduto_GradeNum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProduto_GradeNum.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);

  fDMCadProduto.cdsProduto_GradeNum.Open;
end;

procedure TfrmCadProduto_GradeNum.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsTamanho.Close;
  fDMCadProduto.cdsTamanho.Open;
end;

procedure TfrmCadProduto_GradeNum.btnInserirClick(Sender: TObject);
begin
  fDMCadProduto.prc_Inserir_ProdGradeNum;
  prc_Habilita;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProduto_GradeNum.prc_Habilita;
begin
  pnlDados.Enabled     := not(pnlDados.Enabled);
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  SMDBGrid1.Enabled    := not(SMDBGrid1.Enabled);
  RxDBLookupCombo1.ReadOnly := False;
end;

procedure TfrmCadProduto_GradeNum.btnConfirmarClick(Sender: TObject);
begin
  if trim(fDMCadProduto.cdsProduto_GradeNumTAMANHO.AsString) = '' then
  begin
    MessageDlg('*** Tamanho do Produto não informado', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if trim(fDMCadProduto.cdsProduto_GradeNumTAM_MATERIAL.AsString) = '' then
  begin
    MessageDlg('*** Tamanho do Material não informado', mtError, [mbOk], 0);
    RxDBLookupCombo2.SetFocus;
    exit;
  end;

  try
    fDMCadProduto.cdsProduto_GradeNum.Post;
    prc_Habilita;
    btnInserir.SetFocus;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_GradeNum.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_GradeNum.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if fDMCadProduto.cdsProduto_GradeNum.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_GradeNum.Cancel;
  prc_Habilita;
end;

procedure TfrmCadProduto_GradeNum.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_GradeNumID.AsInteger <= 0 then
    exit;
  prc_Habilita;
  RxDBLookupCombo1.ReadOnly := True;
  RxDBLookupCombo2.SetFocus;
end;

procedure TfrmCadProduto_GradeNum.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_GradeNumID.AsInteger <= 0 then
    exit;
  if MessageDlg('Deseja Excluir o Tamanho Selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_GradeNum.Delete;
end;

end.
