unit UCadProduto_Atelier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, Grids, DBGrids, SMDBGrid, NxCollection,
  UCadPessoa, UCadSetor;

type
  TfrmCadProduto_Atelier = class(TForm)
    Panel3: TPanel;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    pnlDados: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    DBEdit2: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    ffrmCadPessoa: TfrmCadPessoa;
    ffrmCadSetor: TfrmCadSetor;

    function  fnc_Erro: Boolean;

    procedure prc_Habilita;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Atelier: TfrmCadProduto_Atelier;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProduto_Atelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Atelier.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Atelier.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Atelier.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
end;

function TfrmCadProduto_Atelier.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_AtelierID_ATELIER.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Atelier não informada!';
  if fDMCadProduto.cdsProduto_AtelierID_SETOR.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Setor não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Atelier.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadProduto_Atelier.btnConfirmarClick(Sender: TObject);
begin
  if fnc_Erro then
    exit;
  try
    //if fDMCadProduto.cdsMaterial.Locate('ID',fDMCadProduto.cdsProduto_AtelierID_MATERIAL.AsInteger,([Locaseinsensitive])) then
    //  fDMCadProduto.cdsProduto_CorNOME.AsString := fDMCadProduto.cdsCorNOME.AsString;
    fDMCadProduto.cdsProduto_Atelier.Post;
    prc_Habilita;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_Atelier.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Atelier);
end;

procedure TfrmCadProduto_Atelier.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Atelier.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if fDMCadProduto.cdsProduto_Atelier.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Atelier.Cancel;
  prc_Habilita;
  SMDBGrid1.SetFocus;
end;

procedure TfrmCadProduto_Atelier.btnInserirClick(Sender: TObject);
begin
  prc_Habilita;
  fDMCadProduto.prc_Inserir_ProdAtelier;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProduto_Atelier.prc_Habilita;
begin
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  pnlDados.Enabled     := not(pnlDados.Enabled);
  SMDBGrid1.Enabled    := not(SMDBGrid1.Enabled);
end;

procedure TfrmCadProduto_Atelier.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Atelier.IsEmpty then
    exit;
  fDMCadProduto.cdsProduto_Atelier.Edit;
  prc_Habilita;
  DBEdit2.SetFocus;
end;

procedure TfrmCadProduto_Atelier.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Atelier.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Atelier.Delete;
end;

procedure TfrmCadProduto_Atelier.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsAtelier.Close;
  fDMCadProduto.cdsAtelier.Open;
end;

procedure TfrmCadProduto_Atelier.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadPessoa := TfrmCadPessoa.Create(self);
  ffrmCadPessoa.ShowModal;
  FreeAndNil(ffrmCadPessoa);
  SpeedButton5Click(Sender);
end;

procedure TfrmCadProduto_Atelier.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadSetor := TfrmCadSetor.Create(self);
  ffrmCadSetor.ShowModal;
  FreeAndNil(ffrmCadSetor);
  SpeedButton3Click(Sender);
end;

procedure TfrmCadProduto_Atelier.SpeedButton3Click(Sender: TObject);
begin
  fDMCadProduto.cdsSetor.Close;
  fDMCadProduto.cdsSetor.Open;
end;

procedure TfrmCadProduto_Atelier.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadProduto.cdsProduto_Atelier.IsEmpty) and (fDMCadProduto.cdsProduto_AtelierID_SETOR.AsInteger > 0) then
  begin
    if not fDMCadProduto.mSetor.FindKey([fDMCadProduto.cdsProduto_AtelierID_SETOR.AsInteger]) then
      AFont.Color := clRed;
  end;
end;

end.
