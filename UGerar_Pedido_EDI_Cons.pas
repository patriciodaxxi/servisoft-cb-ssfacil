unit UGerar_Pedido_EDI_Cons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMGerar_EDI, ExtCtrls, Grids, DBGrids,
  SMDBGrid, RzTabs, StdCtrls, NxCollection, Mask, ToolEdit, CurrEdit, UDMCadProduto, UCadProduto_Forn, dbXPress, UCadProduto;

type
  TfrmGerar_Pedido_EDI_Cons = class(TForm)
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    RzTabSheet2: TRzTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    SMDBGrid1: TSMDBGrid;
    Edit1: TEdit;
    btnSelecionar_Prod: TNxButton;
    pnlProduto_Proprio: TPanel;
    btnConfirmar: TNxButton;
    Edit2: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label6: TLabel;
    btnInserir: TNxButton;
    Edit3: TEdit;
    Label7: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Edit4: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelecionar_ProdClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto_Forn: TfrmCadProduto_Forn;
    ffrmCadProduto: TfrmCadproduto;
    procedure prc_Opcao;
  public
    { Public declarations }
    fDMGerar_EDI: TDMGerar_EDI;
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmGerar_Pedido_EDI_Cons: TfrmGerar_Pedido_EDI_Cons;

implementation

uses rsDBUtils, uUtilPadrao, USel_Produto_Cor, DBClient, DB, DmdDatabase;

{$R *.dfm}

procedure TfrmGerar_Pedido_EDI_Cons.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMGerar_EDI);
  fDMGerar_EDI.cdsProduto_Forn.Close;
  if Length(Edit1.Text) > 1 then
  begin
    fDMGerar_EDI.sdsProduto_Forn.ParamByName('COD_MATERIAL_FORN').AsString := Edit1.Text;
    fDMGerar_EDI.sdsProduto_Forn.ParamByName('COD_COR_FORN').AsString      := Edit4.Text;
    fDMGerar_EDI.sdsProduto_Forn.ParamByName('TAMANHO_CLIENTE').AsString   := Edit5.Text;
    fDMGerar_EDI.cdsProduto_Forn.Open;
  end;
  fDMGerar_EDI.cdsProduto_Forn_CNPJ.Close;
  fDMGerar_EDI.sdsProduto_Forn_CNPJ.ParamByName('CNPJ_CPF').AsString := Label4.Caption;
  fDMGerar_EDI.cdsProduto_Forn_CNPJ.Open;

  //if fDMGerar_EDI.cdsProduto_Forn_CNPJ.Locate('COD_MATERIAL_FORN',Edit1.Text,[loCaseInsensitive]) then
  if fDMGerar_EDI.cdsProduto_Forn_CNPJ.Locate('COD_MATERIAL_FORN;COD_COR_FORN;TAMANHO_CLIENTE',VarArrayOf([Edit1.Text,Edit4.Text,Edit5.Text]),[locaseinsensitive]) then
  begin
    btnSelecionar_Prod.Visible := False;
    btnInserir.Visible         := False;
  end
  else
  begin
    btnSelecionar_Prod.Visible := True;
    btnInserir.Visible         := True;
  end;
end;

procedure TfrmGerar_Pedido_EDI_Cons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_Pedido_EDI_Cons.btnSelecionar_ProdClick(Sender: TObject);
begin
  vCodProduto_Pos    := 0;
  vCodCombinacao_Pos := 0;
  vReferencia_Pos    := '';
  frmSel_Produto_Cor  := TfrmSel_Produto_Cor.Create(Self);
  frmSel_Produto_Cor.vTipo_Prod := 'P';
  frmSel_Produto_Cor.ShowModal;
  FreeAndNil(frmSel_Produto_Cor);
  Edit2.Text := vReferencia_Pos;
  prc_Opcao;
end;

procedure TfrmGerar_Pedido_EDI_Cons.btnConfirmarClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vAux : String;
begin
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    MessageDlg('*** Produto interno não foi selecionado!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadProduto := TDMCadProduto.Create(Self);
  fDMCadProduto.prc_Localizar(CurrencyEdit1.AsInteger);
  if fDMCadProduto.cdsProduto.IsEmpty then
    exit;
  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;

  ID.TransactionID  := 15;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadProduto.cdsProduto.Edit;
    fDMCadProduto.prc_Inserir_ProdForn;

    ffrmCadProduto_Forn.RxDBLookupCombo2.KeyValue            := fDMGerar_EDI.mAuxiliarID_Cliente.AsInteger;
    fDMCadProduto.cdsProduto_FornID_FORNECEDOR.AsInteger     := fDMGerar_EDI.mAuxiliarID_Cliente.AsInteger;
    fDMCadProduto.cdsProduto_FornNOME_MATERIAL_FORN.AsString := fDMCadProduto.cdsProdutoNOME.AsString;
    fDMCadProduto.cdsProduto_FornCOD_MATERIAL_FORN.AsString  := TrimLeft(Edit1.Text);
    fDMCadProduto.cdsProduto_FornPRECO_CUSTO.AsFloat         := fDMGerar_EDI.mAuxiliarVlrUnitario.AsFloat;
    if CurrencyEdit2.AsInteger > 0 then
      fDMCadProduto.cdsProduto_FornID_COR.AsInteger := CurrencyEdit2.AsInteger;
    ffrmCadProduto_Forn.ckTamanho.Checked := True;
    fDMCadProduto.cdsProduto_FornTAMANHO_CLIENTE.AsString := '';
    if (trim(fDMGerar_EDI.mAuxiliarTamnanho.AsString) <> '')  then
      fDMCadProduto.cdsProduto_FornTAMANHO_CLIENTE.AsString := fDMGerar_EDI.mAuxiliarTamnanho.AsString;
    fDMCadProduto.cdsProduto_FornCOD_COR_FORN.AsString  := fDMGerar_EDI.mAuxiliarCodCorCli.AsString;
    fDMCadProduto.cdsProduto_FornNOME_COR_FORN.AsString := fDMGerar_EDI.mAuxiliarNomeCorCli.AsString;
    
    ffrmCadProduto_Forn.BitBtn1Click(ffrmCadProduto_Forn);

    if fDMCadProduto.cdsProduto.State in [dsEdit] then
      fDMCadProduto.cdsProduto.Post;
    fDMCadProduto.cdsProduto.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(fDMCadProduto);
  FreeAndNil(ffrmCadProduto_Forn);
  MessageDlg('*** Gravação concluída!', mtConfirmation, [mbOk], 0);
  Close;
end;

procedure TfrmGerar_Pedido_EDI_Cons.btnInserirClick(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(Self);
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
  prc_Opcao;
end;

procedure TfrmGerar_Pedido_EDI_Cons.prc_Opcao;
var
  vCodAux: String;
begin
  CurrencyEdit1.AsInteger := vCodProduto_Pos;
  CurrencyEdit2.AsInteger := vCodCombinacao_Pos;
  pnlProduto_Proprio.Visible := (CurrencyEdit1.AsInteger > 0);
  if CurrencyEdit1.AsInteger > 0 then
  begin
    fDMGerar_EDI.qProduto_Tam.Close;
    fDMGerar_EDI.qProduto_Tam.ParamByName('ID').AsInteger := vCodProduto_Pos;
    fDMGerar_EDI.qProduto_Tam.Open;
    vCodAux    := copy(Edit1.Text,1,Length(Edit1.Text) - Length(fDMGerar_EDI.qProduto_TamTAMANHO.AsString));
    Edit1.Text := vCodAux;
    Label6.Caption := 'Gerar o relacionamento do produto com o cliente CNPJ: ' + fDMGerar_EDI.mAuxiliarCNPJCliente.AsString;
  end;
  if CurrencyEdit2.AsInteger > 0 then
  begin
    fDMGerar_EDI.qComb.Close;
    fDMGerar_EDI.qComb.ParamByName('ID').AsInteger := CurrencyEdit2.AsInteger;
    fDMGerar_EDI.qComb.Open;
    Edit3.Text := fDMGerar_EDI.qCombNOME.AsString;
  end;
end;

end.
