unit UEscolhe_Filial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Mask,
  DBCtrls, DB, RxLookup, FMTBcd, Provider, SqlExpr, DBClient;

type
  TfrmEscolhe_Filial = class(TForm)
    Panel2: TPanel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    dsFilial: TDataSource;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialDDDFAX: TIntegerField;
    cdsFilialFAX: TStringField;
    cdsFilialPESSOA: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialENDLOGO: TStringField;
    cdsFilialCALCULAR_IPI: TStringField;
    cdsFilialINATIVO: TStringField;
    cdsFilialINSCMUNICIPAL: TStringField;
    cdsFilialCNAE: TStringField;
    cdsFilialHOMEPAGE: TStringField;
    cdsFilialUSARICMSSIMPLES: TStringField;
    cdsFilialID_REGIME_TRIB: TIntegerField;
    cdsFilialID_PIS: TIntegerField;
    cdsFilialID_COFINS: TIntegerField;
    cdsFilialTIPO_PIS: TStringField;
    cdsFilialTIPO_COFINS: TStringField;
    cdsFilialPERC_PIS: TFloatField;
    cdsFilialPERC_COFINS: TFloatField;
    cdsFilialID_CSTICMS: TIntegerField;
    cdsFilialID_CSTIPI: TIntegerField;
    cdsFilialEMAIL_NFE: TStringField;
    cdsFilialDTESTOQUE: TDateField;
    sdsFilial: TSQLDataSet;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    sdsFilialENDERECO: TStringField;
    sdsFilialCOMPLEMENTO_END: TStringField;
    sdsFilialNUM_END: TStringField;
    sdsFilialBAIRRO: TStringField;
    sdsFilialCEP: TStringField;
    sdsFilialID_CIDADE: TIntegerField;
    sdsFilialCIDADE: TStringField;
    sdsFilialUF: TStringField;
    sdsFilialDDD1: TIntegerField;
    sdsFilialFONE1: TStringField;
    sdsFilialDDD2: TIntegerField;
    sdsFilialFONE: TStringField;
    sdsFilialDDDFAX: TIntegerField;
    sdsFilialFAX: TStringField;
    sdsFilialPESSOA: TStringField;
    sdsFilialCNPJ_CPF: TStringField;
    sdsFilialINSCR_EST: TStringField;
    sdsFilialSIMPLES: TStringField;
    sdsFilialENDLOGO: TStringField;
    sdsFilialCALCULAR_IPI: TStringField;
    sdsFilialINATIVO: TStringField;
    sdsFilialINSCMUNICIPAL: TStringField;
    sdsFilialCNAE: TStringField;
    sdsFilialHOMEPAGE: TStringField;
    sdsFilialUSARICMSSIMPLES: TStringField;
    sdsFilialID_REGIME_TRIB: TIntegerField;
    sdsFilialID_PIS: TIntegerField;
    sdsFilialID_COFINS: TIntegerField;
    sdsFilialTIPO_PIS: TStringField;
    sdsFilialTIPO_COFINS: TStringField;
    sdsFilialPERC_PIS: TFloatField;
    sdsFilialPERC_COFINS: TFloatField;
    sdsFilialID_CSTICMS: TIntegerField;
    sdsFilialID_CSTIPI: TIntegerField;
    sdsFilialEMAIL_NFE: TStringField;
    sdsFilialDTESTOQUE: TDateField;
    dspFilial: TDataSetProvider;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEscolhe_Filial: TfrmEscolhe_Filial;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmEscolhe_Filial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmEscolhe_Filial.FormShow(Sender: TObject);
begin
  cdsFilial.Close;
  cdsFilial.Open;
  cdsFilial.First;
  if cdsFilialID.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := cdsFilialID.AsInteger;
end;

procedure TfrmEscolhe_Filial.BitBtn1Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  vFilial      := 0;
  vFilial_Nome := '';

  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;
  vFilial      := RxDBLookupCombo1.KeyValue;
  vFilial_Nome := RxDBLookupCombo1.Text;
  Close;
end;

procedure TfrmEscolhe_Filial.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    RxDBLookupCombo1.CloseUp(True);
    BitBtn1.SetFocus;
    BitBtn1Click(Sender);
  end;
end;

end.
