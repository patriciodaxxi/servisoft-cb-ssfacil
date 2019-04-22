unit URelOC_Projeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsOC;

type
  TfRelOC_Projeto = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel15: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel16: TRLLabel;
    RLLabel10: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText8: TRLDBText;
    RLBand5: TRLBand;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel23: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel6: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel24: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vSaldo : Real;
    vVlrContrato : Real;
  public
    { Public declarations }
    vOpcaoImp : String;
    vImp_Vlr : Boolean;
    fDMConsOC: TDMConsOC;

  end;

var
  fRelOC_Projeto: TfRelOC_Projeto;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelOC_Projeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelOC_Projeto.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsOC);
  RLLabel13.Visible := vImp_Vlr;
  RLDBText5.Visible := vImp_Vlr;

  RLLabel16.Visible   := vImp_Vlr;
  RLLabel23.Visible   := vImp_Vlr;
  RLDBResult2.Visible := vImp_Vlr;
  RLDBResult6.Visible := vImp_Vlr;
  RLLabel17.Visible   := vImp_Vlr;
  RLLabel18.Visible   := vImp_Vlr;
  RLLabel14.Visible   := vImp_Vlr;
  RLLabel24.Visible   := vImp_Vlr;

  vVlrContrato := 0;
  vSaldo       := 0;
end;

procedure TfRelOC_Projeto.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := vOpcaoImp;
end;

procedure TfRelOC_Projeto.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vVlrContrato := StrToFloat(FormatFloat('0.00',fDMConsOC.cdsOC_ProjetoVLR_CONTRATO.AsFloat));
  RLLabel24.Caption := FormatFloat('###,###,##0.00',fDMConsOC.cdsOC_ProjetoVLR_CONTRATO.AsFloat);
end;

procedure TfRelOC_Projeto.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vSaldo := StrToFloat(FormatFloat('0.00',vSaldo + fDMConsOC.cdsOC_ProjetoVLR_PROJETO.AsFloat));
end;

procedure TfRelOC_Projeto.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel18.Caption := FormatFloat('###,###,##0.00',vVlrContrato - vSaldo);
  vSaldo            := 0;
  vVlrContrato      := 0;
end;

end.
