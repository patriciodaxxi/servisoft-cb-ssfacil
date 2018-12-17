unit URelCheque_Copia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCheque, UDMRel, RLReport, ValorPor;

type
  TfRelCheque_Copia = class(TForm)
    RLReport1: TRLReport;
    ValorPorExtenso1: TValorPorExtenso;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel6: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw2: TRLDraw;
    RLPanel1: TRLPanel;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLMemo2: TRLMemo;
    RLBand3: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand4: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw3: TRLDraw;
    RLDBText9: TRLDBText;
    RLBand5: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDmCadCheque: TDmCadCheque;
  end;

var
  fRelCheque_Copia: TfRelCheque_Copia;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelCheque_Copia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCheque_Copia.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelCheque_Copia.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelCheque_Copia.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadCheque);
end;

procedure TfRelCheque_Copia.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := fDmCadCheque.cdsCheque_ImpAGENCIA_CONTA.AsString;
  if trim(fDmCadCheque.cdsCheque_ImpDIG_AGENCIA.AsString) <> '' then
    RLLabel3.Caption := RLLabel3.Caption + '-' + fDmCadCheque.cdsCheque_ImpDIG_AGENCIA.AsString;
  RLLabel5.Caption := fDmCadCheque.cdsCheque_ImpNUMCONTA.AsString;
  if trim(fDmCadCheque.cdsCheque_ImpDIG_CONTA.AsString) <> '' then
    RLLabel5.Caption := RLLabel5.Caption + '-' + fDmCadCheque.cdsCheque_ImpDIG_CONTA.AsString;

  RLMemo1.Lines.Clear;
  ValorPorExtenso1.Valor := StrToFloat(FormatFloat('0.00',fDmCadCheque.cdsCheque_ImpVALOR.AsFloat));
  RLMemo1.Lines.Text     := ValorPorExtenso1.texto;

  RLLabel7.Caption  := fDmCadCheque.cdsCheque_ImpCIDADE_FIL.AsString + ' ' + FormatDateTime('dddddd',fDmCadCheque.cdsCheque_ImpDTEMISSAO.AsDateTime);
  RLLabel14.Caption := 'R$ ' + FormatFloat('###,###,##0.00',fDmCadCheque.cdsCheque_ImpVALOR.AsFloat);
  RLLabel16.Caption := fDmCadCheque.cdsCheque_ImpNOME_FILIAL.AsString;
end;

procedure TfRelCheque_Copia.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo2.Lines.Clear;
  PrintIt := (fDmCadCheque.cdsCheque_Imp_Tit.IsEmpty);
  if not PrintIt then
    exit;
  RLMemo2.Lines.Text := fDmCadCheque.cdsCheque_ImpUTILIZADO_PARA.Value;
end;

end.
