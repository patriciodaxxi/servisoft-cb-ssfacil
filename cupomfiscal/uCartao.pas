unit uCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit,
  uDmCupomFiscal;

type
  TfCartao = class(TForm)
    CurrencyEdit1: TCurrencyEdit;
    Label1: TLabel;
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  fCartao: TfCartao;

implementation

{$R *.dfm}

procedure TfCartao.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    fDmCupomFiscal.vNumCartao := CurrencyEdit1.AsInteger;
{    if Length(CurrencyEdit1.Text) = 13 then
      fDmCupomFiscal.cdsCupomFiscalNUM_CARTAO.AsString := Copy(CurrencyEdit1.Text,2,11)
    else
      fDmCupomFiscal.cdsCupomFiscalNUM_CARTAO.AsString := CurrencyEdit1.Text;
}
   Close;
  end;
end;

procedure TfCartao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
