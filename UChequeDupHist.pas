unit UChequeDupHist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, DBClient, Provider, ExtCtrls, StdCtrls,
  Buttons, Grids, DBGrids, SMDBGrid;

type
  TfrmChequeDupHist = class(TForm)
    sdsCheque: TSQLDataSet;
    dspCheque: TDataSetProvider;
    cdsCheque: TClientDataSet;
    dsCheque: TDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    cdsChequeID: TIntegerField;
    cdsChequeITEM: TIntegerField;
    cdsChequeNUM_CHEQUE: TStringField;
    cdsChequeTITULAR: TStringField;
    cdsChequeNOME_CLIENTE: TStringField;
    cdsChequeAGENCIA: TStringField;
    cdsChequeCONTA: TStringField;
    cdsChequeDTEMISSAO: TDateField;
    cdsChequeFONE_CONTATO: TStringField;
    cdsChequeVALOR: TFloatField;
    cdsChequeDTBOM_PARA: TDateField;
    cdsChequeID_BANCO: TIntegerField;
    cdsChequeNOME_BANCO: TStringField;
    cdsChequeNOME_EMITIDO_POR: TStringField;
    cdsChequeDEVOLVIDO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vID_Duplicata_Loc : Integer;
    vItem_Hist_Loc : Integer;
    
  end;

var
  frmChequeDupHist: TfrmChequeDupHist;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmChequeDupHist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmChequeDupHist.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmChequeDupHist.FormShow(Sender: TObject);
begin
  cdsCheque.Close;
  sdsCheque.ParamByName('ID_DUPLICATA').AsInteger := vID_Duplicata_Loc;
  sdsCheque.ParamByName('ITEM_HIST').AsInteger    := vItem_Hist_Loc;
  cdsCheque.Open;
end;

procedure TfrmChequeDupHist.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsChequeDEVOLVIDO.AsString = 'S' then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;
end;

end.
