unit USel_CBenef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient,
  RxLookup, NxCollection, Grids, DBGrids, SMDBGrid;

type
  TfrmSel_CBenef = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    sdsCBenef: TSQLDataSet;
    dspCBenef: TDataSetProvider;
    cdsCBenef: TClientDataSet;
    dsCBenef: TDataSource;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    cdsCBenefID: TIntegerField;
    cdsCBenefCODIGO: TStringField;
    cdsCBenefUF: TStringField;
    cdsCBenefDESCRICAO: TStringField;
    cdsCBenefOBS: TStringField;
    cdsCBenefDTINICIO: TDateField;
    cdsCBenefDTFINAL: TDateField;
    cdsCBenefCST_00: TStringField;
    cdsCBenefCST_10: TStringField;
    cdsCBenefCST_20: TStringField;
    cdsCBenefCST_30: TStringField;
    cdsCBenefCST_40: TStringField;
    cdsCBenefCST_41: TStringField;
    cdsCBenefCST_50: TStringField;
    cdsCBenefCST_51: TStringField;
    cdsCBenefCST_60: TStringField;
    cdsCBenefCST_70: TStringField;
    cdsCBenefCST_90: TStringField;
    edtCST: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ctCBenef : String;

    procedure prc_Consultar;
        
  public
    { Public declarations }
    vCod_CST : String;
    
  end;

var
  frmSel_CBenef: TfrmSel_CBenef;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_CBenef.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_CBenef.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_CBenef.prc_Consultar;
begin
  cdsCBenef.Close;
  sdsCBenef.CommandText := ctCBenef;
  if edtCST.Text <> '' then
    sdsCBenef.CommandText := sdsCBenef.CommandText + ' WHERE CST_' + edtCST.Text + ' = ' + QuotedStr('S');
  cdsCBenef.Open;
end;

procedure TfrmSel_CBenef.FormShow(Sender: TObject);
begin
  ctCBenef := sdsCBenef.CommandText;
  if trim(vCod_CST) <> '' then
    edtCST.Text := vCod_CST;
  prc_Consultar;
end;

procedure TfrmSel_CBenef.SMDBGrid1DblClick(Sender: TObject);
begin
  if trim(cdsCBenefCODIGO.AsString) <> '' then
    vCod_CBenef := cdsCBenefCODIGO.AsString;
  Close;
end;

procedure TfrmSel_CBenef.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if trim(cdsCBenefCODIGO.AsString) <> '' then
      vCod_CBenef := cdsCBenefCODIGO.AsString;
    Close;
  end;
end;

procedure TfrmSel_CBenef.edtCSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

end.
