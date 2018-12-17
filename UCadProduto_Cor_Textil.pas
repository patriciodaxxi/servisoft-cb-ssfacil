unit UCadProduto_Cor_Textil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadCor,
  Grids, DBGrids, SMDBGrid, NxCollection;

type
  TfrmCadProduto_Cor_Textil = class(TForm)
    Panel3: TPanel;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDados: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    SMDBGrid1: TSMDBGrid;
    pnlItem: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnCopiarCombinacao: TNxButton;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadCor: TfrmCadCor;

    function  fnc_Erro: Boolean;

    procedure prc_Habilita;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Cor_Textil: TfrmCadProduto_Cor_Textil;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, USel_Cor;

{$R *.dfm}

procedure TfrmCadProduto_Cor_Textil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Cor.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Cor.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Cor_Textil.FormShow(Sender: TObject);
var
  i : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);

  if (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString <> 'S') then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO') or (SMDBGrid1.Columns[i].FieldName = 'PRECO_VENDA')  then
        SMDBGrid1.Columns[i].Visible := False;
    end;
  end;
  Label1.Visible  := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
  DBEdit1.Visible := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
  Label5.Visible  := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
  DBEdit3.Visible := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
end;

function TfrmCadProduto_Cor_Textil.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_CorID_COR_COMBINACAO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Cor não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Cor_Textil.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadProduto_Cor_Textil.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadProduto.cdsProduto_CorID.AsInteger > 0) and (fDMCadProduto.cdsProduto_CorINATIVO.AsString = 'S') then
    AFont.Color := clRed;
end;

procedure TfrmCadProduto_Cor_Textil.btnConfirmarClick(Sender: TObject);
begin
  if fnc_Erro then
    exit;
  try
    if fDMCadProduto.cdsCor.Locate('ID',fDMCadProduto.cdsProduto_CorID_COR_COMBINACAO.AsInteger,([Locaseinsensitive])) then
      fDMCadProduto.cdsProduto_CorNOME.AsString := fDMCadProduto.cdsCorNOME.AsString;
    fDMCadProduto.cdsProduto_Cor.Post;
    prc_Habilita;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_Cor_Textil.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Cor);
end;

procedure TfrmCadProduto_Cor_Textil.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Cor.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if fDMCadProduto.cdsProduto_Cor.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Cor.Cancel;
  prc_Habilita;
  SMDBGrid1.SetFocus;
end;

procedure TfrmCadProduto_Cor_Textil.btnInserirClick(Sender: TObject);
begin
  prc_Habilita;
  fDMCadProduto.prc_Inserir_ProdCor;
  if fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S' then
    fDMCadProduto.cdsProduto_CorPRECO_VENDA.AsFloat := fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProduto_Cor_Textil.prc_Habilita;
begin
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  pnlDados.Enabled     := not(pnlDados.Enabled);
  SMDBGrid1.Enabled    := not(SMDBGrid1.Enabled);
end;

procedure TfrmCadProduto_Cor_Textil.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Cor.IsEmpty then
    exit;
  fDMCadProduto.cdsProduto_Cor.Edit;
  prc_Habilita;
  DBEdit2.SetFocus;
end;

procedure TfrmCadProduto_Cor_Textil.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Cor.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a Cor?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Cor.Delete;
end;

procedure TfrmCadProduto_Cor_Textil.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadCor := TfrmCadCor.Create(self);
  ffrmCadCor.ShowModal;
  FreeAndNil(ffrmCadCor);

  SpeedButton5Click(sender);
end;

procedure TfrmCadProduto_Cor_Textil.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsCor.Close;
  fDMCadProduto.cdsCor.Open;
end;

end.
