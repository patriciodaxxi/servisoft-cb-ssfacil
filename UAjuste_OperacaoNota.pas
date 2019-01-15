unit UAjuste_OperacaoNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadNotaFiscal, NxEdit, NxCollection, StdCtrls, Buttons,
  RxLookup, Mask, ToolEdit, CurrEdit, ExtCtrls, Grids, DBGrids, SMDBGrid;

type
  TfrmAjuste_OperacaoNota = class(TForm)
    pnlPesquisa: TPanel;
    lblCliente: TLabel;
    lblSerie: TLabel;
    lblNumNota: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    edtSerie: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    NxButton1: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    
  public
    { Public declarations }
  end;

var
  frmAjuste_OperacaoNota: TfrmAjuste_OperacaoNota;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmAjuste_OperacaoNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
  
end;

procedure TfrmAjuste_OperacaoNota.FormShow(Sender: TObject);
begin
  fDMCadNotaFiscal := TDMCadNotaFiscal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

end.
