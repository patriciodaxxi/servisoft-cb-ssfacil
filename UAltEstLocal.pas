unit UAltEstLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, UDMEstoque, Buttons;

type
  TfrmAltEstLocal = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDMEstoque: TDMEstoque;
    
  public
    { Public declarations }
    vID_Produto, vID_Cor : Integer;
    vLocalizacao : String;
    vQtd : Real;

  end;

var
  frmAltEstLocal: TfrmAltEstLocal;

implementation

{$R *.dfm}

procedure TfrmAltEstLocal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMEstoque);
  Action := Cafree;
end;

procedure TfrmAltEstLocal.FormShow(Sender: TObject);
begin
  fDMEstoque := TDMEstoque.Create(Self);
end;

procedure TfrmAltEstLocal.BitBtn1Click(Sender: TObject);
begin
  fDMEstoque.cdsEstoque_Local.Close;
  fDMEstoque.sdsEstoque_Local.ParamByName('ID_PRODUTO').AsInteger := vID_Produto;
  fDMEstoque.sdsEstoque_Local.ParamByName('ID_COR').AsInteger     := vID_Cor;
  fDMEstoque.sdsEstoque_Local.ParamByName('LOCALIZACAO').AsString := vLocalizacao;
  fDMEstoque.cdsEstoque_Local.Open;
  if CurrencyEdit1.AsInteger <= 0 then
    fDMEstoque.cdsEstoque_Local.Delete
  else
  begin
    fDMEstoque.cdsEstoque_Local.Edit;
    fDMEstoque.cdsEstoque_LocalQTD.AsFloat := CurrencyEdit1.Value;
    fDMEstoque.cdsEstoque_Local.Post;
  end;
  fDMEstoque.cdsEstoque_Local.ApplyUpdates(0);
  Close;
end;

end.
