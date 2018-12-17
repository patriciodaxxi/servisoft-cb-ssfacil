unit uOPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmOp, RLBarcode, rsDBUtils;

type
  TfOPR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel22: TRLLabel;
    RLBarcode1: TRLBarcode;
    RLSubDetail4: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText68: TRLDBText;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLDBText71: TRLDBText;
    RLDBText72: TRLDBText;
    RLDBText73: TRLDBText;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLDBText51: TRLDBText;
    RLSubDetail5: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText56: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLSubDetail6: TRLSubDetail;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLDBText67: TRLDBText;
    RLLabel53: TRLLabel;
    RLBand8: TRLBand;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLDBText66: TRLDBText;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLDBText74: TRLDBText;
    RLDBText75: TRLDBText;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText76: TRLDBText;
    RLDBText77: TRLDBText;
    RLLabel58: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmOp: TDmOp;
  end;

var
  fOPR: TfOPR;

implementation

{$R *.dfm}

procedure TfOPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfOPR.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel1.Caption   := 'ORDEM DE PRODUÇÃO Nº ' + fDmOP.cdsOPID.AsString;
  RLBarcode1.Caption := IntToStr(1000000 + fDmOp.cdsOPID.AsInteger);
end;

procedure TfOPR.FormCreate(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmOp);
end;

end.
