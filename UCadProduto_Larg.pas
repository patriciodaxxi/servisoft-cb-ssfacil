unit UCadProduto_Larg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, NxCollection, UDMCadProduto;

type
  TfrmCadProduto_Larg = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Label4: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    procedure NxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    
  end;

var
  frmCadProduto_Larg: TfrmCadProduto_Larg;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadProduto_Larg.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadProduto_Larg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProduto_Larg.FormShow(Sender: TObject);
begin
  fDMCadProduto.vGravar_Larg := False;
end;

procedure TfrmCadProduto_Larg.NxButton1Click(Sender: TObject);
begin
  fDMCadProduto.vGravar_Larg := True;
  if (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoLARGURA.AsFloat)) <> CurrencyEdit1.Value) or (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoALTURA.AsFloat)) <> CurrencyEdit2.Value)
    or (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoESPESSURA.AsFloat)) <> CurrencyEdit3.Value) or (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoMULTIPLICADOR.AsFloat)) <> CurrencyEdit4.Value)  then
  begin
    fDMCadProduto.cdsProdutoLARGURA.AsFloat   := CurrencyEdit1.Value;
    fDMCadProduto.cdsProdutoALTURA.AsFloat    := CurrencyEdit2.Value;
    fDMCadProduto.cdsProdutoESPESSURA.AsFloat := CurrencyEdit3.Value;
    fDMCadProduto.cdsProdutoMULTIPLICADOR.AsFloat := CurrencyEdit4.Value;
    if (CurrencyEdit1.Value <= 0) or (CurrencyEdit2.Value <= 0) or (CurrencyEdit3.Value <= 0) then
      fDMCadProduto.vGravar_Larg := False;
  end
  else
    fDMCadProduto.vGravar_Larg := False;
  Close;
end;

end.
