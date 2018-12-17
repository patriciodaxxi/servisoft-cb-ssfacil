unit uRelPagarReceber2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadDuplicata, UDMRel;

type
  TfRelPagarReceber2 = class(TForm)
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
    RLLabel8: TRLLabel;
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
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    RLDBResult2: TRLDBResult;
    RLLabel13: TRLLabel;
    RLBand6: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLBand7: TRLBand;
    RLLabel15: TRLLabel;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLLabel16: TRLLabel;
    RLBand8: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel27: TRLLabel;
    rllbOpcao: TRLLabel;
    RLBand9: TRLBand;
    RLLabel29: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand10: TRLBand;
    RLLabel34: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel42: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBResult6: TRLDBResult;
    RLLabel35: TRLLabel;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLBand11: TRLBand;
    RLLabel41: TRLLabel;
    RLLabel43: TRLLabel;
    RLBand12: TRLBand;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    
    vVlrCReceber_Tit, vVlrCReceber_Pag, vVlrCReceber_Res, vSaldo_Dia, vSaldo_Total: Real;
    vVlrCPagar_Tit, vVlrCPagar_Pag, vVlrCPagar_Res: Real;
    vVlrCheque_Tit, vVlrCheque_Res: Real;
    vVlrDespesa_Rec, vVlrDespesa_Pag : Real;
    vVlrDescontado_Dia, vVlrDescontado_Total : Real;

  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
    vTipo_ES: String;
    vOpcaoImp: String;
    vOpcaoImp2: String;
    vDataInicial: TDateTime;
    vCReceberAnt, vCPagarAnt: Real;
    vChequeAnt: Real;
    vFilialOpc: Integer;
    vLista: Boolean;
    vTipo_Lista : String; //S=Simples  A=Agrupada

  end;

var
  fRelPagarReceber2: TfRelPagarReceber2;

implementation

uses UCadDuplicata, rsDBUtils, DB;

{$R *.dfm}

procedure TfRelPagarReceber2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  if fDMCadDuplicata.qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP.AsString = 'S' then
    RLDBText6.DataField := 'VLR_TOTALPAGO'
  else
    RLDBText6.DataField := 'VLR_PAGO';
  RLDBResult3.DataField := RLDBText6.DataField;
  RLDBResult5.DataField := RLDBText6.DataField;
  RLDBResult8.DataField := RLDBText6.DataField;
end;

procedure TfRelPagarReceber2.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'E' then
  begin
    RLLabel12.Caption := 'REC';
    vSaldo_Dia        := StrToFloat(FormatFloat('0.00',vSaldo_Dia + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    vSaldo_Total      := StrToFloat(FormatFloat('0.00',vSaldo_Total + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    vVlrCReceber_Tit  := StrToFloat(FormatFloat('0.00',vVlrCReceber_Tit + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat));
    if fDMCadDuplicata.qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP.AsString = 'S' then
      vVlrCReceber_Pag  := StrToFloat(FormatFloat('0.00',vVlrCReceber_Pag + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_TOTALPAGO.AsFloat))
    else
      vVlrCReceber_Pag  := StrToFloat(FormatFloat('0.00',vVlrCReceber_Pag + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat));
    vVlrCReceber_Res  := StrToFloat(FormatFloat('0.00',vVlrCReceber_Res + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    vVlrDespesa_Rec   := StrToFloat(FormatFloat('0.00',vVlrDespesa_Rec + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_DESPESAS.AsFloat));
  end
  else
  begin
    if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_LANCAMENTO.AsString = 'CHE' then
      RLLabel12.Caption := 'CHE'
    else
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
    if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_LANCAMENTO.AsString = 'CHE' then
    begin
      vVlrCheque_Tit    := StrToFloat(FormatFloat('0.00',vVlrCheque_Tit + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat));
      vVlrCheque_Res    := StrToFloat(FormatFloat('0.00',vVlrCheque_Res + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
    end
    else
    begin
      vVlrCPagar_Tit    := StrToFloat(FormatFloat('0.00',vVlrCPagar_Tit + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PARCELA.AsFloat));
      if fDMCadDuplicata.qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP.AsString = 'S' then
        vVlrCPagar_Pag    := StrToFloat(FormatFloat('0.00',vVlrCPagar_Pag + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_TOTALPAGO.AsFloat))
      else
        vVlrCPagar_Pag    := StrToFloat(FormatFloat('0.00',vVlrCPagar_Pag + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat));
      vVlrCPagar_Res    := StrToFloat(FormatFloat('0.00',vVlrCPagar_Res + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat));
      vVlrDespesa_Pag   := StrToFloat(FormatFloat('0.00',vVlrDespesa_Pag + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_DESPESAS.AsFloat));
    end;
  end;
  if (trim(fDMCadDuplicata.qParametros_FinSEPARADOR_NUM_DA_PARC.AsString) = '') or (fDMCadDuplicata.qParametros_FinSEPARADOR_NUM_DA_PARC.IsNull) then
    RLLabel10.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaNUMDUPLICATA.AsString + '/' + fDMCadDuplicata.cdsDuplicata_ConsultaPARCELA.AsString
  else
    RLLabel10.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaNUMDUPLICATA.AsString + fDMCadDuplicata.qParametros_FinSEPARADOR_NUM_DA_PARC.AsString + fDMCadDuplicata.cdsDuplicata_ConsultaPARCELA.AsString;
  RLLabel28.Caption := '(' + fDMCadDuplicata.cdsDuplicata_ConsultaFILIAL.AsString + ')';

  if (fDMCadDuplicata.cdsDuplicata_ConsultaID_DESCONTADA.AsInteger > 0) and (fDMCadDuplicata.cdsDuplicata_ConsultaCONFIRMA_PGTO.AsString <> 'S') then
  begin
    RLLabel40.Caption := '*Desc';
    if fDMCadDuplicata.qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP.AsString = 'S' then
      vVlrDescontado_Dia  := StrToFloat(FormatFloat('0.00',vVlrDescontado_Dia + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_TOTALPAGO.AsFloat))
    else
      vVlrDescontado_Dia  := StrToFloat(FormatFloat('0.00',vVlrDescontado_Dia + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat));
    vVlrDescontado_Total := vVlrDescontado_Total + vVlrDescontado_Dia;
    RLLabel28.Caption := RLLabel28.Caption + '**';
  end
  else
    RLLabel40.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaCOD_BANCO.AsString;
end;

procedure TfRelPagarReceber2.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (not vLista) and (vTipo_ES = 'A');
  RLLabel13.Caption := RLLabel14.Caption + '(Total).....';
end;

procedure TfRelPagarReceber2.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'E' then
    RLLabel14.Caption := 'Contas a Receber'
  else
  if ((fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_MOV.AsString = 'D') OR (fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_MOV.AsString = 'N')) then
    RLLabel14.Caption := 'Contas a Pagar'
  else
    RLLabel14.Caption := 'Cheques';

   PrintIt := False;
end;

procedure TfRelPagarReceber2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vTipo_ES = 'E' then
    RLLabel1.Caption := 'RELATÓRIO DO CONTAS A RECEBER '
  else
  if vTipo_ES = 'S' then
    RLLabel1.Caption := 'RELATÓRIO DO CONTAS A PAGAR '
  else
  if vTipo_ES = 'A' then
    RLLabel1.Caption := 'RELATÓRIO DO CONTAS A RECEBER/PAGAR ';
  if trim(vOpcaoImp2) <> '' then
    RLLabel1.Caption := RLLabel1.Caption + vOpcaoImp2;
  rllbOpcao.Caption  := vOpcaoImp;
end;

procedure TfRelPagarReceber2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vTipo_Lista := '';
  Action      := Cafree;
end;

procedure TfRelPagarReceber2.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrCReceber_Tit := 0;
  vVlrCReceber_Pag := 0;
  vVlrCReceber_Res := 0;
  vVlrDespesa_Rec  := 0;
  vSaldo_Dia       := 0;
  vSaldo_Total     := 0;
  vVlrCPagar_Tit   := 0;
  vVlrCPagar_Pag   := 0;
  vVlrCPagar_Res   := 0;
  vVlrDespesa_Pag  := 0;
  vDataInicial     := 0;
  vVlrCheque_Res   := 0;
  vVlrCheque_Tit       := 0;
  vVlrDescontado_Dia   := 0;
  vVlrDescontado_Total := 0;
  if (vLista) and (vTipo_Lista = 'S') then
  begin
    RLGroup1.DataFields := '';
    RLGroup2.DataFields := '';
  end;
end;

procedure TfRelPagarReceber2.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (not vLista);
  if not PrintIt then
    exit;
  RLLabel16.Caption   := FormatFloat('###,###,##0.00',vSaldo_Dia);
  vSaldo_Dia          := 0;
  RLDBResult1.Visible := (vTipo_ES <> 'A');
  RLDBResult5.Visible := (vTipo_ES <> 'A');
end;

procedure TfRelPagarReceber2.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux: Real;
begin
  PrintIt := (vTipo_ES <> 'A');
  if not PrintIt then
    exit;

  vAux := vCReceberAnt - vCPagarAnt - vChequeAnt;
  if vTipo_ES = 'E' then
    vAux := vAux + RLDBResult8.Value
  else
    vAux := vAux - RLDBResult9.Value;
  RLLabel33.Caption := FormatFloat('###,###,##0.00',vAux);
end;

procedure TfRelPagarReceber2.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux: Real;
begin
  PrintIt := (vTipo_ES = 'A');
  if not PrintIt then
    Exit;

  RLLabel21.Caption := FormatFloat('###,###,##0.00',vVlrCReceber_Tit);
  RLLabel20.Caption := FormatFloat('###,###,##0.00',vVlrCReceber_Pag);
  RLLabel19.Caption := FormatFloat('###,###,##0.00',vVlrCReceber_Res);
  RLLabel37.Caption := FormatFloat('###,###,##0.00',vVlrDespesa_Rec);

  RLLabel24.Caption := FormatFloat('###,###,##0.00',vVlrCPagar_Tit);
  RLLabel23.Caption := FormatFloat('###,###,##0.00',vVlrCPagar_Pag);
  RLLabel22.Caption := FormatFloat('###,###,##0.00',vVlrCPagar_Res);
  RLLabel39.Caption := FormatFloat('###,###,##0.00',vVlrDespesa_Pag);

  vAux := StrToFloat(FormatFloat('0.00',vVlrCReceber_Res - vVlrCPagar_Res - vVlrCheque_Res));

  RLLabel26.Caption := FormatFloat('###,###,##0.00',vAux);

  vAux := (vCReceberAnt + vVlrCReceber_Res) - vCPagarAnt - vVlrCPagar_Res - vChequeAnt - vVlrCheque_Res;
  RLLabel31.Caption := FormatFloat('###,###,##0.00',vAux);
end;

procedure TfRelPagarReceber2.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux: Real;
begin
  PrintIt := (fDMCadDuplicata.qTotalAtraso.Active);
  if not PrintIt then
    exit;
  vCReceberAnt := 0;
  vCPagarAnt   := 0;
  vChequeAnt   := 0;
  RLLabel29.Caption := 'Saldo até ' + DateToStr(vDataInicial) + ': ';
  while not fDMCadDuplicata.qTotalAtraso.Eof do
  begin
    if (vFilialOpc = 0) or (fDMCadDuplicata.qTotalAtrasoFILIAL.AsInteger = vFilialOpc) then
    begin
      if fDMCadDuplicata.qTotalAtrasoTIPO_ES.AsString = 'E' then
        vCReceberAnt := vCReceberAnt + fDMCadDuplicata.qTotalAtrasoVLR_RESTANTE.AsFloat
      else
      if fDMCadDuplicata.qTotalAtrasoTIPO_MOV.AsString = 'H' then
        vChequeAnt := vChequeAnt + fDMCadDuplicata.qTotalAtrasoVLR_RESTANTE.AsFloat
      else
        vCPagarAnt := vCPagarAnt + fDMCadDuplicata.qTotalAtrasoVLR_RESTANTE.AsFloat;
    end;
    fDMCadDuplicata.qTotalAtraso.Next;
  end;
  vAux := vCReceberAnt - vCPagarAnt - vChequeAnt;
  RLLabel29.Caption := RLLabel29.Caption + FormatFloat('###,###,##0.00',vAux) + '   C.Receber: ' + FormatFloat('###,###,##0.00',vCReceberAnt) + '   C.Pagar: ' + FormatFloat('###,###,##0.00',vCPagarAnt)
                     + '  Cheque: ' + FormatFloat('###,###,##0.00',vChequeAnt);
end;

procedure TfRelPagarReceber2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelPagarReceber2.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel38.Caption := FormatFloat('###,###,##0.00',vVlrCheque_Tit);
  RLLabel36.Caption := FormatFloat('###,###,##0.00',vVlrCheque_Res);
  vVlrCheque_Res    := 0;
  vVlrCheque_Tit    := 0;
end;

procedure TfRelPagarReceber2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (vTipo_Lista <> 'S');
end;

procedure TfRelPagarReceber2.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (not vLista) ;
  if not PrintIt then
    exit;
  PrintIt := (StrToFloat(FormatFloat('0.00',vVlrDescontado_Dia)) > 0);
  if not PrintIt then
    exit;
  RLLabel43.Caption  := FormatFloat('###,###,##0.00',vVlrDescontado_Dia);
  vVlrDescontado_Dia := 0;
end;

procedure TfRelPagarReceber2.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (StrToFloat(FormatFloat('0.00',vVlrDescontado_Total)) > 0);
  if not PrintIt then
    exit;
  RLLabel45.Caption  := FormatFloat('###,###,##0.00',vVlrDescontado_Total);
  vVlrDescontado_Total := 0;
end;

end.

