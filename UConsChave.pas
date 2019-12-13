unit UConsChave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, FMTBcd, DB,
  SqlExpr, Grids, DBGrids, SMDBGrid, Provider, DBClient, UDMCadNotaFiscal;

type
  TfrmConsChave = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    SMDBGrid1: TSMDBGrid;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaID: TIntegerField;
    cdsConsultaNUMNOTA: TIntegerField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNFECHAVEACESSO: TStringField;
    cdsConsultaDTEMISSAO: TDateField;
    dsConsulta: TDataSource;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    
  end;

var
  frmConsChave: TfrmConsChave;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmConsChave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsChave.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    prc_Consultar;
    if cdsConsulta.RecordCount > 0 then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmConsChave.prc_Consultar;
begin
  cdsConsulta.Close;
  sdsConsulta.ParamByName('NUMNOTA').AsInteger := CurrencyEdit1.AsInteger;
  sdsConsulta.ParamByName('FILIAL').AsInteger  := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  cdsConsulta.Open;
end;

procedure TfrmConsChave.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (cdsConsulta.Active) then
  begin
    if cdsConsultaNUMNOTA.AsInteger > 0 then
      fDMCadNotaFiscal.vNFeChave_Acesso := cdsConsultaNFECHAVEACESSO.AsString;
    Close;
  end;
end;

procedure TfrmConsChave.SMDBGrid1DblClick(Sender: TObject);
begin
  if (cdsConsulta.Active) then
  begin
    if cdsConsultaNUMNOTA.AsInteger > 0 then
      fDMCadNotaFiscal.vNFeChave_Acesso := cdsConsultaNFECHAVEACESSO.AsString;
    Close;
  end;
end;

end.
