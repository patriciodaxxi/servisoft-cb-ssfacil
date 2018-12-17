unit URelRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadRecibo, UDMRel;

type
  TfRelRecibo = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLSubDetail4: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw10: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    rlEndFilial: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel59: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText31: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel4: TRLLabel;
    rlEndCliente: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLLabel12: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand8: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLBand9: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBMemo4: TRLDBMemo;
    RLBand12: TRLBand;
    RLBand10: TRLBand;
    RLLabel29: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand13: TRLBand;
    RLLabel11: TRLLabel;
    RLMemo1: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vImpContador : Integer;
  public
    { Public declarations }
    fDMCadRecibo  : TDMCadRecibo;
    
  end;

var
  fRelRecibo: TfRelRecibo;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRecibo.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadRecibo);
end;

procedure TfRelRecibo.FormCreate(Sender: TObject);
begin
  fDMRel       := TDMRel.Create(Self);
  vImpContador := 0;
end;

procedure TfRelRecibo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelRecibo.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fDMCadRecibo.cdsReciboImp.Close;
  fDMCadRecibo.sdsReciboImp.ParamByName('ID').AsInteger := fDMCadRecibo.mImpNotaID_Nota.AsInteger;
  fDMCadRecibo.cdsReciboImp.Open;

  fDMCadRecibo.cdsReciboImp_Itens.Close;
  fDMCadRecibo.sdsReciboImp_Itens.ParamByName('ID').AsInteger := fDMCadRecibo.mImpNotaID_Nota.AsInteger;
  fDMCadRecibo.cdsReciboImp_Itens.Open;


  rlEndFilial.Caption  := fDMCadRecibo.cdsFilialENDERECO.AsString + ', ' + fDMCadRecibo.cdsFilialNUM_END.AsString;
  rlEndCliente.Caption := fDMCadRecibo.cdsReciboImpENDERECO.AsString + ', ' + fDMCadRecibo.cdsReciboImpNUM_END.AsString;
  if fDMCadRecibo.cdsReciboImpPESSOA.AsString = 'F' then
    RLLabel3.Caption := 'CPF:'
  else
    RLLabel3.Caption := 'CNPJ:';

  if FileExists(fDMCadRecibo.cdsFilialENDLOGO.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadRecibo.cdsFilialENDLOGO.AsString)
  else
     RLImage1.Picture := nil;
end;

procedure TfRelRecibo.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel13.Caption := FormatFloat('###,###,##0.00',fDMCadRecibo.cdsReciboImpVLR_TOTAL.AsFloat);
end;

procedure TfRelRecibo.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadRecibo.cdsReciboImpOBS.Value;
  vImpContador       := 0;
end;

procedure TfRelRecibo.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadRecibo.cdsReciboImp_Itens.Eof then
  begin
    vImpContador := vImpContador + 1;
    if vImpContador > 1 then
      RLBand9.Borders.DrawTop := False;
  end;
end;

end.
