unit UCadNCM_ST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadNCM, DBCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup;

type
  TfrmCadNCM_ST = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CurrencyEdit2: TCurrencyEdit;
    ComboBox1: TComboBox;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    ComboBox2: TComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    Label38: TLabel;
    CurrencyEdit8: TCurrencyEdit;
    Label39: TLabel;
    CurrencyEdit9: TCurrencyEdit;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadNCM: TDMCadNCM;

  end;

var
  frmCadNCM_ST: TfrmCadNCM_ST;

implementation

uses rsDBUtils;

{$R *.dfm}

end.
