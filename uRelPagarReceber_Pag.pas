unit uRelPagarReceber_Pag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadDuplicata, UDMRel;

type
  TfRelPagarReceber_Pag = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand5: TRLBand;
    RLLabel11: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand3: TRLBand;
    RLLabel13: TRLLabel;
    RLBand6: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLBand7: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel27: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBText2: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
    
    vVlrCReceber_Tit, vVlrCReceber_Pag, vVlrCReceber_Res, vSaldo_Dia, vSaldo_Total : Real;
    vVlrCPagar_Tit, vVlrCPagar_Pag, vVlrCPagar_Res : Real;
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
    vTipo_ES : String;
    
    vOpcaoImp : String;
    vOpcaoImp2 : String;
    vDataInicial : TDateTime;
    vCReceberAnt, vCPagarAnt : Real;

  end;

var
  fRelPagarReceber_Pag: TfRelPagarReceber_Pag;

implementation

uses UCadDuplicata, rsDBUtils, DB;

{$R *.dfm}

procedure TfRelPagarReceber_Pag.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
end;

procedure TfRelPagarReceber_Pag.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  {if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'E' then
  begin
    vSaldo_Dia        := StrToFloat(FormatFloat('0.00',vSaldo_Dia + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    vSaldo_Total      := StrToFloat(FormatFloat('0.00',vSaldo_Total + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    vVlrCReceber_Tit  := StrToFloat(FormatFloat('0.00',vVlrCReceber_Tit + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat));
    vVlrCReceber_Pag  := StrToFloat(FormatFloat('0.00',vVlrCReceber_Pag + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat));
    vVlrCReceber_Res  := StrToFloat(FormatFloat('0.00',vVlrCReceber_Res + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
  end
  else
  begin
    RLLabel12.Caption := 'PAG';
    if vTipo_ES = 'A' then
    begin
      vSaldo_Dia        := StrToFloat(FormatFloat('0.00',vSaldo_Dia - fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
      vSaldo_Total      := StrToFloat(FormatFloat('0.00',vSaldo_Total - fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    end
    else
    begin
      vSaldo_Dia        := StrToFloat(FormatFloat('0.00',vSaldo_Dia + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
      vSaldo_Total      := StrToFloat(FormatFloat('0.00',vSaldo_Total + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    end;
    vVlrCPagar_Tit    := StrToFloat(FormatFloat('0.00',vVlrCPagar_Tit + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat));
    vVlrCPagar_Pag    := StrToFloat(FormatFloat('0.00',vVlrCPagar_Pag + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat));
    vVlrCPagar_Res    := StrToFloat(FormatFloat('0.00',vVlrCPagar_Res + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
  end;}
  RLDBText7.Visible := (StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsPagtoVLR_JUROSPAGOS.AsFloat)) > 0);
  if (trim(fDMCadDuplicata.qParametros_FinSEPARADOR_NUM_DA_PARC.AsString) = '') or (fDMCadDuplicata.qParametros_FinSEPARADOR_NUM_DA_PARC.IsNull) then
    RLLabel10.Caption := fDMCadDuplicata.cdsPagtoNUMDUPLICATA.AsString + '/' + fDMCadDuplicata.cdsPagtoPARCELA.AsString
  else
    RLLabel10.Caption := fDMCadDuplicata.cdsPagtoNUMDUPLICATA.AsString + fDMCadDuplicata.qParametros_FinSEPARADOR_NUM_DA_PARC.AsString + fDMCadDuplicata.cdsPagtoPARCELA.AsString
end;

procedure TfRelPagarReceber_Pag.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (vTipo_ES = 'A');
  RLLabel13.Caption := RLLabel14.Caption + '(Total).....';
end;

procedure TfRelPagarReceber_Pag.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadDuplicata.cdsPagtoTIPO_ES.AsString = 'E' then
    RLLabel14.Caption := 'Contas a Receber'
  else
    RLLabel14.Caption := 'Contas a Pagar';
  PrintIt := False;
end;

procedure TfRelPagarReceber_Pag.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vTipo_ES = 'E' then
    RLLabel1.Caption := 'RELATÓRIO DO CONTAS A RECEBER (PAGAMENTOS)'
  else
  if vTipo_ES = 'S' then
    RLLabel1.Caption := 'RELATÓRIO DO CONTAS A PAGAR (PAGAMENTOS)';
  if trim(vOpcaoImp2) <> '' then
    RLLabel1.Caption := RLLabel1.Caption + vOpcaoImp2;
  rllbOpcao.Caption  := vOpcaoImp;
end;

procedure TfRelPagarReceber_Pag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPagarReceber_Pag.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrCReceber_Tit := 0;
  vVlrCReceber_Pag := 0;
  vVlrCReceber_Res := 0;
  vSaldo_Dia       := 0;
  vSaldo_Total     := 0;
  vVlrCPagar_Tit   := 0;
  vVlrCPagar_Pag   := 0;
  vVlrCPagar_Res   := 0;
  vDataInicial     := 0;
end;

procedure TfRelPagarReceber_Pag.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vSaldo_Dia          := 0;
  RLDBResult1.Visible := (vTipo_ES <> 'A');
  RLDBResult5.Visible := (vTipo_ES <> 'A');
end;

procedure TfRelPagarReceber_Pag.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.

