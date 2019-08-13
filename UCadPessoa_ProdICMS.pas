unit UCadPessoa_ProdICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, UDMCadPessoa,
  Grids, DBGrids, SMDBGrid, DB;

type
  TfrmCadPessoa_ProdICMS = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NxPanel2: TNxPanel;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    Label5: TLabel;
    SMDBGrid9: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;
    
  end;

var
  frmCadPessoa_ProdICMS: TfrmCadPessoa_ProdICMS;

implementation

uses rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmCadPessoa_ProdICMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPessoa_ProdICMS.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  btnConfirmar.Enabled := (fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled   := (fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadPessoa_ProdICMS.btnConfirmarClick(Sender: TObject);
var
  vItem : Integer;
begin
  if (CurrencyEdit1.AsInteger <= 0) or (RxDBLookupCombo1.Text = '') then
  begin
    MessageDlg('*** ID Produto e a CST ICMS são campos obrigatórios!', mtError, [mbOk], 0);
    CurrencyEdit1.SetFocus;
    exit;
  end;
  fDMCadPessoa.cdsPessoa_ProdICMS.Last;
  vItem := fDMCadPessoa.cdsPessoa_ProdICMSITEM.AsInteger;

  fDMCadPessoa.cdsPessoa_ProdICMS.Insert;
  fDMCadPessoa.cdsPessoa_ProdICMSCODIGO.AsInteger     := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
  fDMCadPessoa.cdsPessoa_ProdICMSITEM.AsInteger       := vItem + 1;
  fDMCadPessoa.cdsPessoa_ProdICMSID_PRODUTO.AsInteger := CurrencyEdit1.AsInteger;
  fDMCadPessoa.cdsPessoa_ProdICMSID_CSTICMS.AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadPessoa.cdsPessoa_ProdICMS.Post;

  CurrencyEdit1.Clear;
  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.SetFocus;
end;

procedure TfrmCadPessoa_ProdICMS.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro ?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  fDMCadPessoa.cdsPessoa_ProdICMS.Delete;
end;

procedure TfrmCadPessoa_ProdICMS.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger <= 0 then
    exit;
  fDMCadPessoa.qProd.Close;
  fDMCadPessoa.qProd.ParamByName('ID').AsInteger := CurrencyEdit1.AsInteger;
  fDMCadPessoa.qProd.Open;
  if fDMCadPessoa.qProd.IsEmpty then
  begin
    MessageDlg('*** ID Produto não encontrado!', mtError, [mbOk], 0);
    CurrencyEdit1.SetFocus;
    exit;
  end;
  Label3.Caption := 'Referência: ' + fDMCadPessoa.qProdREFERENCIA.AsString;
  Label4.Caption := 'Nome: ' + fDMCadPessoa.qProdNOME.AsString;
end;

procedure TfrmCadPessoa_ProdICMS.CurrencyEdit1Change(Sender: TObject);
begin
  Label3.Caption := '';
  Label4.Caption := '';
end;

procedure TfrmCadPessoa_ProdICMS.RxDBLookupCombo1Change(Sender: TObject);
begin
  Label5.Caption := '%';
  if RxDBLookupCombo1.Text = '' then
    exit;
  Label5.Caption := '% Base: ' + FormatFloat('0.000',fDMCadPessoa.cdsTab_CSTICMSPERCENTUAL.AsFloat);
  if fDMCadPessoa.cdsTab_CSTICMSCOD_CST.AsString = '51' then
    Label5.Caption := Label5.Caption +  '   % Diferimento: ' + FormatFloat('0.000',fDMCadPessoa.cdsTab_CSTICMSPERC_DIFERIMENTO.AsFloat);
end;

procedure TfrmCadPessoa_ProdICMS.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := CurrencyEdit1.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    CurrencyEdit1.AsInteger := vCodProduto_Pos;
  end;
end;

end.
