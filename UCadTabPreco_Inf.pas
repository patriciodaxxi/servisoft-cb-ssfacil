unit UCadTabPreco_Inf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadTab_Preco, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons;

type
  TfrmCadTabPreco_Inf = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadTab_Preco: TDMCadTab_Preco;

  end;

var
  frmCadTabPreco_Inf: TfrmCadTabPreco_Inf;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfrmCadTabPreco_Inf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTabPreco_Inf.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadTab_Preco);
end;

procedure TfrmCadTabPreco_Inf.BitBtn2Click(Sender: TObject);
begin
  fDMCadTab_Preco.vPreco_Sel := -1;
  Close;
end;

procedure TfrmCadTabPreco_Inf.BitBtn1Click(Sender: TObject);
begin
  fDMCadTab_Preco.vPreco_Sel := CurrencyEdit1.Value;
  Close;
end;

end.
