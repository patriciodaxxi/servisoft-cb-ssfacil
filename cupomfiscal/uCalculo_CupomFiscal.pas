unit uCalculo_CupomFiscal;

interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, SqlExpr, DmdDatabase, UDMCupomFiscal;

  procedure prc_Calculo_GeralItem(fDMCupomFiscal: TDMCupomFiscal; Qtd, VlrUnitario, DescontoItem, PercDescontoItem,
            VlrTotal, VlrAcrescimo: Real; GeraDupl: String; Desc_Rateio: Real = 0);
  procedure prc_Calcular_ICMS(fDMCupomFiscal: TDMCupomFiscal; VlrTotal, VlrDesconto, VlrIPI, PercIcms: Real; CodSitTrib: Integer; CodCST_ICMS: String = '');
  procedure prc_Calcular_PisCofins(fDMCupomFiscal: TDMCupomFiscal; VlrTotal: Real);
  procedure prc_Calcular_Tributos_Transparencia(fDMCupomFiscal: TDMCupomFiscal);
  procedure prc_Calcular_Geral(fDMCupomFiscal: TDMCupomFiscal);
  function fnc_Calcular_IPI(fDMCupomFiscal: TDMCupomFiscal; VlrTotal, VlrDesconto, PercIPI: Real): Real;
  procedure prc_Move_Itens_Ajuste(fDMCupomFiscal: TDMCupomFiscal);

implementation

uses Math;

//var
  //vCalcTotalNota, vCalcSeguro, vCalcOutrasDesp, vCalcImportacao, vCalcAduaneira: Real;

procedure prc_Calculo_GeralItem(fDMCupomFiscal: TDMCupomFiscal; Qtd, VlrUnitario,
  DescontoItem, PercDescontoItem, VlrTotal, VlrAcrescimo: Real; GeraDupl: String; Desc_Rateio: Real = 0);
var
  vVlrTotalItem: Real;
  vVlrDescontoItem: Real;
  vVlrAux: Real;
  vVlrFreteAnt, vVlrSeguroAnt, vVlrOutrasDespAnt, vVlrPisAnt, vVlrCofinsAnt, vVlrIPIAnt: Real;
  vCodCST: String;
begin
  if (StrToCurr(FormatCurr('0.0000',Qtd)) > 0) and (StrToCurr(FormatCurr('0.0000000000',VlrUnitario)) > 0) then
    vVlrTotalItem := StrToCurr(FormatCurr('0.00',Qtd * VlrUnitario))
  else
    vVlrTotalItem := StrToCurr(FormatCurr('0.00',VlrTotal));

  if (StrToFloat(FormatFloat('0.0000',PercDescontoItem)) > 0) and (StrToFloat(FormatFloat('0.0000',DescontoItem)) <= 0) then
    DescontoItem := StrToCurr(FormatCurr('0.00',vVlrTotalItem * PercDescontoItem / 100));
  vVlrDescontoItem  := 0;
  vVlrFreteAnt      := 0;
  vVlrSeguroAnt     := 0;
  vVlrOutrasDespAnt := 0;
  vVlrPisAnt        := 0;
  vVlrCofinsAnt     := 0;
  vVlrIPIAnt        := 0;
  //vPesoBruto        := 0;
  //vPesoLiquido      := 0;
  //vVlrIcms_Operacao := 0;
  //***************

  if fDMCupomFiscal.cdsCFOPID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger then
    fDMCupomFiscal.cdsCFOP.Locate('ID',fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger,([Locaseinsensitive]));
  if fDMCupomFiscal.cdsFilialID.AsInteger <> fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger then
    fDMCupomFiscal.cdsFilial.Locate('ID',fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger,([Locaseinsensitive]));
  if fDMCupomFiscal.cdsPessoaCODIGO.AsInteger <> fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger then
    fDMCupomFiscal.cdsPessoa.Locate('CODIGO',fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,([Locaseinsensitive]));
  if fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger > 0 then
  begin
    fDMCupomFiscal.qUF.Close;
    fDMCupomFiscal.qUF.ParamByName('UF').AsString := fDMCupomFiscal.cdsPessoaUF.AsString;
    fDMCupomFiscal.qUF.Open;
  end;

  if (fDMCupomFiscal.cdsCupomFiscalTIPO_DESCONTO.AsString = 'N') and (GeraDupl = 'S') then
  begin
    vVlrAux := StrToCurr(FormatCurr('0.00',vVlrTotalItem));
    vVlrDescontoItem := StrToCurr(FormatCurr('0.00',fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat));
  end
  else
  if (fDMCupomFiscal.cdsCupomFiscalTIPO_DESCONTO.AsString <> 'N') and (StrToCurr(FormatFloat('0.000',PercDescontoItem)) > 0) then
    vVlrDescontoItem := StrToCurr(FormatCurr('0.00',vVlrTotalItem * PercDescontoItem / 100))
  else
  if (fDMCupomFiscal.cdsCupomFiscalTIPO_DESCONTO.AsString <> 'N') and (StrToFloat(FormatFloat('0.000',DescontoItem)) > 0) then
    vVlrDescontoItem := StrToCurr(FormatCurr('0.00',DescontoItem));

  if (fDMCupomFiscal.cdsCupomFiscalTIPO_DESCONTO.AsString = 'I') and (StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsCupom_ItensPERC_DESCONTO.AsFloat)) > 0) then
    fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat := StrToCurr(FormatCurr('0.00',vVlrDescontoItem));

  fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTORATEIO.AsFloat := StrToFloat(FormatFloat('0.00',Desc_Rateio));
//  fDMCupomFiscal.cdsCupom_ItensVLR_ACRESCIMO.AsFloat      := StrToFloat(FormatFloat('0.00',VlrAcrescimo));
  fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat          := StrToFloat(FormatFloat('0.00',vVlrTotalItem - vVlrDescontoItem - fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTORATEIO.AsFloat));
  fDMCupomFiscal.cdsCupom_ItensVLR_IPI.AsFloat            := fnc_Calcular_IPI(fDMCupomFiscal,fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,vVlrDescontoItem +
                                                             Desc_Rateio, fDMCupomFiscal.cdsCupom_ItensPERC_IPI.AsFloat);
  fDMCupomFiscal.cdsCupom_ItensVLR_PIS.AsFloat    := 0;
  fDMCupomFiscal.cdsCupom_ItensVLR_COFINS.AsFloat := 0;
  prc_Calcular_PisCofins(fDMCupomFiscal, fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat);

  prc_Calcular_ICMS(fDMCupomFiscal, vVlrTotalItem - vVlrDescontoItem - Desc_Rateio,vVlrDescontoItem + Desc_Rateio,
                    fDMCupomFiscal.cdsCupom_ItensVLR_IPI.AsFloat,fDMCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat,
                    fDMCupomFiscal.cdsCupom_ItensID_CSTICMS.AsInteger,'');
  //Cálculo tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12
  prc_Calcular_Tributos_Transparencia(fDMCupomFiscal);
  fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsCurrency + fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTORATEIO.AsFloat));
  fDMCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsCurrency
                                                          + fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsCurrency
                                                          + fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTORATEIO.AsFloat));

  fDMCupomFiscal.cdsCupomFiscalBASE_ICMS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalBASE_ICMS.AsCurrency + fDMCupomFiscal.cdsCupom_ItensBASE_ICMS.AsCurrency));
  fDMCupomFiscal.cdsCupomFiscalVLR_ICMS.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_ICMS.AsCurrency + fDMCupomFiscal.cdsCupom_ItensVLR_ICMS.AsCurrency));
  fDMCupomFiscal.cdsCupomFiscalVLR_IPI.AsCurrency   := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_IPI.AsCurrency + fDMCupomFiscal.cdsCupom_ItensVLR_IPI.AsCurrency));
  fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat    := fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_IPI.AsFloat - vVlrIPIAnt;
  fDMCupomFiscal.cdsCupomFiscalVLR_PIS.AsFloat      := fDMCupomFiscal.cdsCupomFiscalVLR_PIS.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_PIS.AsFloat - vVlrPisAnt;
  fDMCupomFiscal.cdsCupomFiscalVLR_COFINS.AsFloat   := fDMCupomFiscal.cdsCupomFiscalVLR_COFINS.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_COFINS.AsFloat - vVlrCofinsAnt;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat  := fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat   := fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat  := fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat := fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat;
end;

procedure prc_Calcular_ICMS(fDMCupomFiscal: TDMCupomFiscal; VlrTotal, VlrDesconto,
  VlrIPI, PercIcms: Real; CodSitTrib: Integer; CodCST_ICMS: String); //3.10 foi incluido a variável CodCST_ICMS
var
  vBaseAux, vVlrIcmsAux: Real;
begin
  fDMCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat := 0;
  fDMCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat  := 0;
  if (fDMCupomFiscal.cdsProdutoTIPO_REG.AsString = 'N') then
    exit;

  if fDMCupomFiscal.cdsParametrosAPLICARDESCONTONOICMS.AsString = 'S' then
    vBaseAux := VlrTotal
  else
    vBaseAux := StrToCurr(FormatCurr('0.00',VlrTotal + VlrDesconto));
  if (StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat)) <> StrToFloat(FormatFloat('0.0000',100))) then
    vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux * fDMCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat / 100));
  if vBaseAux > 0 then
    vVlrIcmsAux := StrToCurr(FormatCurr('0.00',vBaseAux * PercIcms / 100))
  else
    vVlrIcmsAux := 0;
  if StrToFloat(FormatFloat('0.00',vVlrIcmsAux)) > 0 then
  begin
    fDMCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat := vBaseAux;
    fDMCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat  := vVlrIcmsAux;
  end;
end;

procedure prc_Calcular_PisCofins(fDMCupomFiscal: TDMCupomFiscal; VlrTotal: Real);
begin
  if fDMCupomFiscal.cdsCupom_ItensPERC_PIS.AsFloat > 0 then
    fDMCupomFiscal.cdsCupom_ItensVLR_PIS.AsFloat := StrToCurr(FormatFloat('0.00',(fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat *
                                                    fDMCupomFiscal.cdsCupom_ItensPERC_PIS.AsFloat) / 100));

  if fDMCupomFiscal.cdsCupom_ItensPERC_COFINS.AsFloat > 0 then
   fDMCupomFiscal.cdsCupom_ItensVLR_COFINS.AsFloat := StrToCurr(FormatCurr('0.00',(fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat *
                                                      fDMCupomFiscal.cdsCupom_ItensPERC_COFINS.AsFloat) / 100))
end;

function fnc_Calcular_IPI(fDMCupomFiscal: TDMCupomFiscal; VlrTotal, VlrDesconto,
  PercIPI: Real): Real;
var
  vAux: Real;
begin
  Result := 0;
  if fDMCupomFiscal.cdsParametrosAPLICARDESCONTONOIPI.AsString = 'S' then
    vAux := StrToCurr(FormatCurr('0.00',VlrTotal))
  else
    vAux := StrToCurr(FormatCurr('0.00',VlrTotal + VlrDesconto));
  if (PercIPI > 0) then
    Result := StrToCurr(FormatCurr('0.00',vAux * PercIPI / 100))
end;

procedure prc_Calcular_Tributos_Transparencia(fDMCupomFiscal: TDMCupomFiscal);
var
  vAux: Real;
begin
  fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat           := 0;
  fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat   := 0;
  fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat  := 0;
  fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat := 0;
  if (fDMCupomFiscal.cdsCFOPGERAR_TRIBUTO.AsString = 'S') then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat)) > 0) then
    begin
      vAux := StrToCurr(FormatCurr('0.00',(fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat * fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat) / 100));
      fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    end;
    if (StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)) > 0) then
    begin
      vAux := StrToCurr(FormatCurr('0.00',(fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat * fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat) / 100));
      fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    end;
    if (StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)) > 0) then
    begin
      vAux := StrToCurr(FormatCurr('0.00',(fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat * fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat) / 100));
      fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    end;
    fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat := fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat
                                                      + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat
                                                      + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat;
  end;
end;

procedure prc_Calcular_Geral(fDMCupomFiscal: TDMCupomFiscal);
var
  vVlrDesconto, vAux: Real;
  vVlrDesconto_Ori: Real;
  vVlrTotal: Real;
  vContador: Integer;
begin
  if not(fDMCupomFiscal.cdsCupomFiscal.State in [dsEdit,dsInsert]) then
    fDMCupomFiscal.cdsCupomFiscal.Edit;
  vVlrDesconto     := fDMCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat;
  vVlrDesconto_Ori := fDMCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat;
  vVlrTotal        := fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat;

  fDMCupomFiscal.cdsCupomFiscalVLR_COFINS.AsFloat   := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_ICMS.AsFloat     := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_IPI.AsFloat      := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_PIS.AsFloat      := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_PRODUTOS.AsFloat := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat    := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat  := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat  := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat   := 0;
  fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat := 0;

  vContador := 0;
  fDMCupomFiscal.cdsCupom_Itens.First;
  while not fDMCupomFiscal.cdsCupom_Itens.Eof do
  begin
    vContador := vContador + 1;
    vAux := StrToFloat(FormatFloat('0.00',0));
    if StrToFloat(FormatFloat('0.00',vVlrDesconto)) > 0 then
    begin
      vAux := StrToFloat(FormatFloat('0.00',(vVlrDesconto_Ori * ((fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat / vVlrTotal) * 100)) / 100));
      if StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',vVlrDesconto)) then
        vAux := StrToFloat(FormatFloat('0.00',vVlrDesconto));
      vVlrDesconto := StrToFloat(FormatFloat('0.00',vVlrDesconto - vAux));
      if (vContador = fDMCupomFiscal.cdsCupom_Itens.RecordCount) then
      begin
        if StrToFloat(FormatFloat('0.00',vVlrDesconto)) <> StrToFloat(FormatFloat('0.00',0)) then
          vAux := StrToFloat(FormatFloat('0.00',vAux + vVlrDesconto));
        vVlrDesconto := StrToFloat(FormatFloat('0.00',0));
      end;
    end;

    fDMCupomFiscal.cdsCupom_Itens.Edit;

    fDmCupomFiscal.vID_CFOP     := fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger;
    fDmCupomFiscal.vID_Variacao := fDmCupomFiscal.cdsCupom_ItensID_VARIACAO.AsInteger;
    prc_Move_Itens_Ajuste(fDmCupomFiscal);

    if fDmCupomFiscal.vID_CFOP > 0 then
    begin
      fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger := fDmCupomFiscal.vID_CFOP;
      if fDmCupomFiscal.vID_Variacao > 0 then
        fDmCupomFiscal.cdsCupom_ItensID_VARIACAO.AsInteger := fDmCupomFiscal.vID_Variacao;
    end;

    if fDmCupomFiscal.vID_Pis > 0 then
      fDmCupomFiscal.cdsCupom_ItensID_PIS.AsInteger := fDmCupomFiscal.vID_Pis;
    if fDmCupomFiscal.vID_Cofins > 0 then
      fDmCupomFiscal.cdsCupom_ItensID_COFINS.AsInteger := fDmCupomFiscal.vID_Cofins;
    if fDmCupomFiscal.vID_CSTICMS > 0 then
      fDmCupomFiscal.cdsCupom_ItensID_CSTICMS.AsInteger := fDmCupomFiscal.vID_CSTICMS;

    fDmCupomFiscal.cdsCupom_ItensTIPO_PIS.AsString     := fDmCupomFiscal.vTipo_Pis;
    fDmCupomFiscal.cdsCupom_ItensTIPO_COFINS.AsString  := fDmCupomFiscal.vTipo_Cofins;
    fDmCupomFiscal.cdsCupom_ItensPERC_PIS.AsFloat      := fDmCupomFiscal.vPerc_Pis;
    fDmCupomFiscal.cdsCupom_ItensPERC_COFINS.AsFloat   := fDmCupomFiscal.vPerc_Cofins;
    fDmCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat := fDmCupomFiscal.vPerc_TribICMS;
    fDmCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat     := fDmCupomFiscal.vPerc_ICMS;
    fDmCupomFiscal.cdsCupom_ItensPERC_IPI.AsFloat      := fDmCupomFiscal.vPerc_IPI;

    prc_Calculo_GeralItem(fDmCupomFiscal,fDmCupomFiscal.cdsCupom_ItensQTD.AsFloat,fDmCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat,
                                         fDmCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat,fDmCupomFiscal.cdsCupom_ItensPERC_DESCONTO.AsFloat,
                                         fDmCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat,0,'S',StrToFloat(FormatFloat('0.00',vAux)));
    fDMCupomFiscal.cdsCupom_Itens.Post;
    fDMCupomFiscal.cdsCupom_Itens.Next;
  end;

  fDMCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrDesconto_Ori));
  fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat    := fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat -
                                                       fDMCupomFiscal.cdsCupomFiscalVLR_DESCONTO.AsFloat;
end;

procedure prc_Move_Itens_Ajuste(fDMCupomFiscal: TDMCupomFiscal);
var
  vGeraIcms: Boolean;
begin
  if (fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString <> 'S') then
    exit;

  fDmCupomFiscal.prc_Abrir_Produto('ID',fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsString);

  if fDmCupomFiscal.cdsProdutoID.AsInteger <> fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger  then
    fDmCupomFiscal.cdsProduto.Locate('ID',fDmCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

  fDmCupomFiscal.vID_NCM := fDmCupomFiscal.cdsProdutoID_NCM.AsInteger;
  if fDmCupomFiscal.vID_NCM > 0 then
    fDmCupomFiscal.cdsTab_NCM.Locate('ID',fDmCupomFiscal.vID_NCM,[loCaseInsensitive]);

  if fDmCupomFiscal.cdsProdutoID_CFOP_NFCE.AsInteger > 0 then
    fDmCupomFiscal.vID_CFOP := fDmCupomFiscal.cdsProdutoID_CFOP_NFCE.AsInteger
  else
  if (fDmCupomFiscal.cdsTab_NCMID_CFOP.AsInteger > 0) and (fDmCupomFiscal.cdsTab_NCMID.AsInteger = fDmCupomFiscal.cdsCupom_ItensID_NCM.AsInteger) then
    fDmCupomFiscal.vID_CFOP := fDmCupomFiscal.cdsTab_NCMID_CFOP.AsInteger
  else
  if fDmCupomFiscal.cdsFilialID_CFOP_NFCE_PADRAO.AsInteger > 0 then
    fDmCupomFiscal.vID_CFOP := fDmCupomFiscal.cdsFilialID_CFOP_NFCE_PADRAO.AsInteger;
  if fDmCupomFiscal.vID_CFOP > 0 then
  begin
    fDmCupomFiscal.cdsCFOP.Locate('ID',fDmCupomFiscal.vID_CFOP,[loCaseInsensitive]);
    vGeraIcms := fDmCupomFiscal.cdsCFOPGERAR_ICMS.AsString = 'S';
  end;
  fDmCupomFiscal.vID_Variacao := 0;
  if fDmCupomFiscal.vID_CFOP > 0 then
    fDmCupomFiscal.vID_Variacao := fDmCupomFiscal.fnc_Buscar_Regra_CFOP(fDmCupomFiscal.vID_CFOP);
  if fDmCupomFiscal.vID_Variacao = 0 then
    ShowMessage('Variação da CFOP não localizada para a operação!' + #13 +
                'Cupom fiscal não será validado!')
  else
    fDmCupomFiscal.prc_Mover_CST;
end;

end.
