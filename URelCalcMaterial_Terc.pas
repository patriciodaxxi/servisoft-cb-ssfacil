unit URelCalcMaterial_Terc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsPedido;

type
  TfRelCalcMaterial_Terc = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    rllbFilial: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLMemo1: TRLMemo;
    RLLabel8: TRLLabel;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLLabel4: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsPedido: TDMConsPedido;
    vOpcaoImp : String;

  end;

var
  fRelCalcMaterial_Terc: TfRelCalcMaterial_Terc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelCalcMaterial_Terc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCalcMaterial_Terc.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFilial.Caption := fDMConsPedido.cdsFilialNOME.AsString;
  rllbOpcao.Caption  := vOpcaoImp;
end;

procedure TfRelCalcMaterial_Terc.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsPedido);
end;

end.
