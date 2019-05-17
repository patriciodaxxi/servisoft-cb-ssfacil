unit UCadProduto_CA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadProduto, StdCtrls, Mask, ToolEdit, NxCollection, Grids,
  DBGrids, SMDBGrid;

type
  TfrmCadProduto_CA = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnAlterar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    btnExcluir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    vItem_CA : Integer;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    vStatus : String;

  end;

var
  frmCadProduto_CA: TfrmCadProduto_CA;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfrmCadProduto_CA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProduto_CA.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnAlterar.Enabled   := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnConfirmar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  vItem_CA := 0;
end;

procedure TfrmCadProduto_CA.btnConfirmarClick(Sender: TObject);
begin
  if trim(Edit1.Text) = '' then
  begin
    MessageDlg('*** CA não foi informado!', mtError, [mbOk], 0);
    exit;
  end;
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data não foi informada!', mtError, [mbOk], 0);
    exit;
  end;
  if vItem_CA > 0 then
  begin
    if fDMCadProduto.cdsProduto_CA.Locate('ITEM',vItem_CA,([Locaseinsensitive])) then
      fDMCadProduto.cdsProduto_CA.Edit;
  end;
  if not(fDMCadProduto.cdsProduto_CA.State in [dsEdit]) then
    fDMCadProduto.prc_Inserir_ProdCA;
  if vItem_CA > 0 then
    fDMCadProduto.cdsProduto_CAITEM.AsInteger := vItem_CA;
  fDMCadProduto.cdsProduto_CANUM_CA.AsString := Edit1.Text;
  fDMCadProduto.cdsProduto_CADATA.AsDateTime := DateEdit1.Date;
  fDMCadProduto.cdsProduto_CA.Post;
  vItem_CA := 0;
  Edit1.Clear;
  Edit1.SetFocus;
  fDMCadProduto.cdsProduto_CA.Last;
  fDMCadProduto.cdsProdutoCA.AsString := fDMCadProduto.cdsProduto_CANUM_CA.AsString;
end;

procedure TfrmCadProduto_CA.btnCancelarClick(Sender: TObject);
begin
  Edit1.Clear;
  DateEdit1.Clear;
  Edit1.SetFocus;
end;

procedure TfrmCadProduto_CA.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_CA.IsEmpty then
    exit;
  Edit1.Text     := fDMCadProduto.cdsProduto_CANUM_CA.AsString;
  DateEdit1.Date := fDMCadProduto.cdsProduto_CADATA.AsDateTime;
  
  Edit1.SetFocus;
end;

procedure TfrmCadProduto_CA.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_CA.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
    
  fDMCadProduto.cdsProduto_CA.Delete;

  if not fDMCadProduto.cdsProduto_CA.IsEmpty then
  begin
    fDMCadProduto.cdsProduto_CA.Last;
    if trim(fDMCadProduto.cdsProduto_CANUM_CA.AsString) <> '' then
      fDMCadProduto.cdsProdutoCA.AsString := fDMCadProduto.cdsProduto_CANUM_CA.AsString;
  end;

end;

end.
