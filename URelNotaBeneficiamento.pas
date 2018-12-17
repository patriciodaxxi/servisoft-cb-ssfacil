unit URelNotaBeneficiamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsNotaBeneficiamento, UDMRel;

type
  TfRelNotaBeneficiamento = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText11: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel28: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel29: TRLLabel;
    RLReport2: TRLReport;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    rllbOpcao_Mat: TRLLabel;
    rllbFornecedor_Mat: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel36: TRLLabel;
    RLBand5: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLBand6: TRLBand;
    RLDraw5: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDBText19: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMConsNotaBeneficiamento: TDMConsNotaBeneficiamento;
    vImpNota : Boolean;
    vOpcaoImp : String;
    vOpcaoForn : String;
  end;

var
  fRelNotaBeneficiamento: TfRelNotaBeneficiamento;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelNotaBeneficiamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotaBeneficiamento.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption  := vOpcaoImp;
  RLLabel29.Caption  := vOpcaoForn;
end;

procedure TfRelNotaBeneficiamento.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vVlrAux : Real;
begin
  fDMConsNotaBeneficiamento.cdsNotaDevolvida.Close;
  if vImpNota then
  begin
    fDMConsNotaBeneficiamento.sdsNotaDevolvida.ParamByName('ID_NTE').AsInteger   := fDMConsNotaBeneficiamento.cdsNotaEntradaID_NTE.AsInteger;
    fDMConsNotaBeneficiamento.sdsNotaDevolvida.ParamByName('ITEM_NTE').AsInteger := fDMConsNotaBeneficiamento.cdsNotaEntradaITEM_NTE.AsInteger;
    fDMConsNotaBeneficiamento.cdsNotaDevolvida.Open;
  end;

  vVlrAux := StrToFloat(FormatFloat('0.00',fDMConsNotaBeneficiamento.cdsNotaEntradaQTDRESTANTE.AsFloat * fDMConsNotaBeneficiamento.cdsNotaEntradaVLR_UNITARIO.AsFloat));
  RLLabel5.Caption := FormatFloat('###,###,##0.00',vVlrAux);
end;

procedure TfRelNotaBeneficiamento.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsNotaBeneficiamento);
end;

procedure TfRelNotaBeneficiamento.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   PrintIt := vImpNota;
   if (PrintIt) and (fDMConsNotaBeneficiamento.cdsNotaDevolvida.IsEmpty) then
     PrintIt := False;
end;

procedure TfRelNotaBeneficiamento.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   PrintIt := vImpNota;
   RLLabel33.Caption := '';
   if PrintIt then
     RLLabel33.Caption := fDMConsNotaBeneficiamento.cdsNotaDevolvidaTIPO_NOTA.AsString;
end;

procedure TfRelNotaBeneficiamento.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao_Mat.Caption      := vOpcaoImp;
  rllbFornecedor_Mat.Caption := vOpcaoForn;
end;

procedure TfRelNotaBeneficiamento.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsNotaBeneficiamento);
end;

procedure TfRelNotaBeneficiamento.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelNotaBeneficiamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelNotaBeneficiamento.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpNota;
end;

end.
