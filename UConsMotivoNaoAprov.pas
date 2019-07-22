unit UConsMotivoNaoAprov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient, Provider,
  SqlExpr, StdCtrls, DBCtrls;

type
  TfrmConsMotivoNaoAprov = class(TForm)
    SMDBGrid1: TSMDBGrid;
    sdsMotivo: TSQLDataSet;
    dspMotivo: TDataSetProvider;
    cdsMotivo: TClientDataSet;
    dsMotivo: TDataSource;
    cdsMotivoID: TIntegerField;
    cdsMotivoITEM: TIntegerField;
    cdsMotivoITEM_APROV: TIntegerField;
    cdsMotivoUSUARIO: TStringField;
    cdsMotivoDTUSUARIO: TDateField;
    cdsMotivoHRUSUARIO: TTimeField;
    cdsMotivoID_FUNCIONARIO: TIntegerField;
    cdsMotivoAPROVADO: TStringField;
    cdsMotivoMOTIVO_NAO_APROV: TStringField;
    cdsMotivoDATA: TDateField;
    cdsMotivoNOME_FUNCIONARIO: TStringField;
    cdsMotivoREFERENCIA: TStringField;
    cdsMotivoID_PRODUTO: TIntegerField;
    cdsMotivoNOMEPRODUTO: TStringField;
    cdsMotivoDESC_APROVADO: TStringField;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vID_OC_Loc : Integer;
    vItem_OC_Loc : Integer;
    ctMotivo : String;

    procedure prc_Consultar;

  end;

var
  frmConsMotivoNaoAprov: TfrmConsMotivoNaoAprov;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmConsMotivoNaoAprov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMotivoNaoAprov.FormCreate(Sender: TObject);
begin
  ctMotivo := sdsMotivo.CommandText;
end;

procedure TfrmConsMotivoNaoAprov.FormShow(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsMotivoNaoAprov.prc_Consultar;
begin
  cdsMotivo.Close;
  sdsMotivo.CommandText := ctMotivo;
  if vItem_OC_Loc > 0 then
  begin
    sdsMotivo.CommandText := sdsMotivo.CommandText + ' AND A.ITEM = :ITEM ';
    sdsMotivo.ParamByName('ITEM').AsInteger := vItem_OC_Loc;
  end;
  sdsMotivo.ParamByName('ID').AsInteger := vID_OC_Loc;
  cdsMotivo.Open;
end;

procedure TfrmConsMotivoNaoAprov.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (cdsMotivoAPROVADO.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end
  else
  if (cdsMotivoAPROVADO.AsString = 'N') then
  begin
    Background  := $00AAAAFF;
    AFont.Color := clBlack;
  end;
end;

end.
