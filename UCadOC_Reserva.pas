unit UCadOC_Reserva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  SMDBGrid;

type
  TfrmCadOC_Reserva = class(TForm)
    sdsReserva: TSQLDataSet;
    dspReserva: TDataSetProvider;
    cdsReserva: TClientDataSet;
    dsReserva: TDataSource;
    SMDBGrid1: TSMDBGrid;
    cdsReservaNUM_ORDEM: TIntegerField;
    cdsReservaQTD_RESERVADA: TFloatField;
    cdsReservaITEM_OC: TIntegerField;
    cdsReservaREFERENCIA: TStringField;
    cdsReservaID_PRODUTO: TIntegerField;
    cdsReservaNOMEPRODUTO: TStringField;
    cdsReservaQTD_OC: TFloatField;
    cdsReservaQTD_SOBRA: TFloatField;
    cdsReservaQTD_SALDO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vID_OC_Loc : Integer;
  end;

var
  frmCadOC_Reserva: TfrmCadOC_Reserva;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmCadOC_Reserva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOC_Reserva.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmCadOC_Reserva.FormShow(Sender: TObject);
begin
  cdsReserva.Close;
  sdsReserva.ParamByName('ID_OC').AsInteger   := vID_OC_Loc;
  cdsReserva.Open;
end;

end.
