unit UConsDuplicata_Pessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLstBox, RzChkLst, NxEdit, NxCollection, ExtCtrls,
  RxLookup;

type
  TfrmConsDuplicata_Pessoa = class(TForm)
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    btnConsultar: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxDatePicker3: TNxDatePicker;
    NxDatePicker4: TNxDatePicker;
    Panel3: TPanel;
    RadioGroup2: TRadioGroup;
    Label48: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsDuplicata_Pessoa: TfrmConsDuplicata_Pessoa;

implementation

{$R *.dfm}

procedure TfrmConsDuplicata_Pessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
