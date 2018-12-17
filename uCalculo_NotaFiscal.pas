unit uCalculo_NotaFiscal;

interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, SqlExpr, DmdDatabase, UDMCadNotaFiscal, uDMCadProduto_Lote;

  procedure prc_Calcular_Desconto_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal;Repetir: Boolean);
  procedure prc_Calcular_Desconto_RNF(fDMCadNotaFiscal: TDMCadNotaFiscal;Repetir: Boolean);

  procedure prc_Calculo_GeralItem(fDMCadNotaFiscal: TDMCadNotaFiscal; Qtd, VlrUnitario, DescontoItem, PercDescontoItem, VlrTotal: Real; GeraDupl: String);
  procedure prc_Calcular_ICMS_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal; VlrTotal, VlrDesconto, VlrIPI, PercIcms: Real; CodSitTrib: Integer; CodCST_ICMS: String);

  procedure prc_Calculo_RECNF_Itens(fDMCadNotaFiscal: TDMCadNotaFiscal; Qtd, VlrUnitario, DescontoItem, PercDescontoItem, VlrTotal: Real; GeraDupl: String);

  procedure prc_Calcular_ICMSSimples_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal;VlrTotal: Real; CodSitTrib: Integer);
  procedure prc_Calcular_PisCofins_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal;VlrTotal: Real);
  procedure prc_Calcular_PisCofins_Suframa(fDMCadNotaFiscal: TDMCadNotaFiscal;VlrTotal: Real);

  procedure prc_Calcular_Frete_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_AFRMM_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_TaxaCiscomex_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Seguro_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Vlr_Outros(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_OutrasDespesas_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Importacao_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Aduaneira_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_SubstTributaria_ICMS(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Tributos_Transparencia(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Peso(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Diferencial_ICMS(fDMCadNotaFiscal: TDMCadNotaFiscal);

  //08/12/2015
  procedure prc_Calcular_ICMS_UF_Dest(fDMCadNotaFiscal: TDMCadNotaFiscal);

  procedure prc_Calcular_FCP(fDMCadNotaFiscal: TDMCadNotaFiscal);

  function fnc_Calcular_IPI_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal;VlrTotal, VlrDesconto, PercIPI: Real): Real;
  function fnc_Calcula_Importacao(fDMCadNotaFiscal: TDMCadNotaFiscal): Real;
  function fnc_Gerar_NotaFiscal_Parc(fDMCadNotaFiscal: TDMCadNotaFiscal): Boolean;

  procedure prc_Abrir_qNCM_UF(fDMCadNotaFiscal: TDMCadNotaFiscal;ID_NCM: Integer; UF, Importado_Nacional: String);
  procedure prc_Abrir_qProduto_UF(fDMCadNotaFiscal: TDMCadNotaFiscal;ID_NCM: Integer; UF: String);

  procedure prc_Calcula_Volume(fDMCadNotaFiscal: TDMCadNotaFiscal);
  function fnc_Le_mEmbAux(fDMCadNotaFiscal: TDMCadNotaFiscal): Integer;

  procedure prc_Gravar_cdsNotaFiscal_ItensAux(fDMCadNotaFiscal: TDMCadNotaFiscal);
  function fnc_busca_icm(fDMCadNotaFiscal: TDMCadNotaFiscal): Real;

  procedure prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal: TDMCadNotaFiscal; ID_Operacao: Integer; Finalidade: String ; Cabecalho : Boolean = False);

  procedure Atualiza_Preco2(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Aplicar_Margem2(fDMCadNotaFiscal: TDMCadNotaFiscal);

  procedure prc_Calcular_Custo_Total(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Calcular_Ajuste_Custo(fDMCadNotaFiscal: TDMCadNotaFiscal);
  procedure prc_Atualiza_Estoque(ID: Integer; Preco: Real);
  procedure prc_Atualiza_Movimento(ID: Integer; Preco: Real);

  function fnc_Unidade_Conv(fDMCadNotaFiscal: TDMCadNotaFiscal): Real;
  function fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal: TDMCadNotaFiscal; ID_CFOP: Integer): Integer;
var
  vVlrCusto: Real;
  vVlrCusto_Total: Real;
  vVlrTotal_Nota_Calc : Real;

implementation

uses DateUtils, uUtilPadrao;

var
  vCalcFrete, vCalcTotalNota, vCalcSeguro, vCalcTaxaCiscomex, vCalcOutrasDesp, vCalcImportacao, vCalcAduaneira,
  vCalcVlr_Outros, vCalcAFRM: Real;
  vContadorOutros: Integer;
  vPesoBruto, vPesoLiquido: Real;
  vFlagGeraDupl: Boolean;
  vPerc_PisCofins_Imp: Real;
  vDrawBack: Boolean = False;
  vCalcAjuste_Custo: Real;
    
procedure prc_Abrir_qProduto_UF(fDMCadNotaFiscal: TDMCadNotaFiscal;ID_NCM: Integer; UF: String);
begin
  fDMCadNotaFiscal.qProduto_UF.Close;
  fDMCadNotaFiscal.qProduto_UF.ParamByName('ID').AsInteger := ID_NCM;
  fDMCadNotaFiscal.qProduto_UF.ParamByName('UF').AsString  := UF;
  fDMCadNotaFiscal.qProduto_UF.Open;
end;

procedure prc_Abrir_qNCM_UF(fDMCadNotaFiscal: TDMCadNotaFiscal;ID_NCM: Integer; UF,Importado_Nacional: String);
begin
  fDMCadNotaFiscal.qNCM_UF.Close;
  fDMCadNotaFiscal.qNCM_UF.ParamByName('ID').AsInteger          := ID_NCM;
  fDMCadNotaFiscal.qNCM_UF.ParamByName('UF').AsString           := UF;
  fDMCadNotaFiscal.qNCM_UF.ParamByName('TIPO_PRODUTO').AsString := Importado_Nacional;
  fDMCadNotaFiscal.qNCM_UF.Open;
end;

procedure prc_Calcular_Desconto_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal; Repetir: Boolean);
var
  vDesconto: Real;
  vDescAux: Real;
  vVlrAux: Real;
  vContador: Integer;
  vVlrTotalItens: Real;
  vDescontoItem: Real;
  vVlrDuplicata: Real;
  vVlrDuplicataOutros: Real;
  vQtdVolume: Integer;
  vID_PedAnt: Integer;
  sds: TSQLDataSet;
  vBaseComissao: Real;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount <= 0) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat             := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat                := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat       := 0;

    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat        := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATAOUTROS.AsFloat := 0;
    //08/02/2016
    fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat         := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSOUTROS.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat             := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat            := 0;
    if fDMCadNotaFiscal.qParametros_NFeCALC_VOLUME_QTD.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat    := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat        := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSOUTROS.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat    := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSTRANSF.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat         := 0;
    fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat           := 0;
    //4.00
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat      := 0;
    //***********

    //08/12/2015
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat := 0;
    //*************

    //fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.Clear;
    //fDMCadNotaFiscal.cdsNotaFiscalVERSAO_TRIBUTOS.Clear;
  end;

  if (StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0) OR
     (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= 0) then
    exit;

  if not Repetir then
  begin
    vCalcFrete        := fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
    vCalcSeguro       := fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat;
    vCalcTaxaCiscomex := fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat;
    vCalcAFRM         := fDMCadNotaFiscal.cdsNotaFiscalVLR_AFRMM.AsFloat;
    vCalcOutrasDesp   := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
    vCalcVlr_Outros   := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat;
    {if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat)) <= 0 then
    begin
      //vCalcImportacao := fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat;
      //vCalcAduaneira  := fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat;
    end
    else
    begin}
      vCalcImportacao := 0;
      vCalcAduaneira  := 0;
    //end;

    vVlrDuplicata   := 0;
    vVlrDuplicataOutros := 0;
    vCalcTotalNota  := 0;
    vContador       := 0;
    vContadorOutros := 0;
    vPesoBruto      := 0;
    vPesoLiquido    := 0;
    vFlagGeraDupl   := False;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
      else
        vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
      begin
        vVlrDuplicata := vVlrDuplicata + StrToFloat(FormatFloat('0.00',vVlrAux));
        vContador     := vContador + 1;
      end;
      vCalcTotalNota := vCalcTotalNota + StrToFloat(FormatFloat('0.00',vVlrAux));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
      begin
        vContadorOutros := vContadorOutros + 1;
        vFlagGeraDupl   := True;
      end;
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'N' then
        vVlrDuplicataOutros := vVlrDuplicataOutros + StrToFloat(FormatFloat('0.00',vVlrAux));
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;
    if vFlagGeraDupl then
      vVlrDuplicataOutros := StrToFloat(FormatFloat('0.00',0))
    //else incluido no dia 21/10/2015
    else
      vContador := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
    if vContadorOutros <= 0 then
    begin
      vContadorOutros := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
      vCalcTotalNota  := fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat;
    end;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat    := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat           := 0;
    if fDMCadNotaFiscal.qParametros_NFeCALC_VOLUME_QTD.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat         := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat := 0;
    //4.00
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat      := 0;
    //***********

    fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;

    //4.00
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat := 0;
    //********

    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat := 0;
    //*****************

    //fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.Clear;
    //fDMCadNotaFiscal.cdsNotaFiscalVERSAO_TRIBUTOS.Clear;
    //01/04/2015  Feito para a Color Shoes
    if (fDMCadNotaFiscal.cdsParametrosCALC_VOLUME_EMB.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosMOSTRAR_EMBALAGEM.AsString = 'S') then
      fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger := 0;

    if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat := 0;

    if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
      fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
    if fDMCadNotaFiscal.cdsUFUF.AsString <> fDMCadNotaFiscal.cdsClienteUF.AsString then
      fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);

    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'N' then
      vDesconto := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat))
    else
    begin
      vDesconto := StrToFloat(FormatFloat('0.00',0));
      vContador := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := 0;
    end;
    vDescAux := 0;
  end;

  vQtdVolume := 0;
  vID_PedAnt := 0;
  fDMCadNotaFiscal.mEmbAux.EmptyDataSet;
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    vDescontoItem  := 0;
    vVlrTotalItens := 0;
    vDrawBack      := False; 

    if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger then
      fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,([Locaseinsensitive]));
    if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));

    if not Repetir then
    begin
      if (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and
         (vID_PedAnt <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger) then
      begin
        if not fDMCadNotaFiscal.mPedidoAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger]) then
        begin
          fDMCadNotaFiscal.mPedidoAux.Insert;
          fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger      := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
          fDMCadNotaFiscal.mPedidoAuxVlr_Adiantamento.AsFloat := StrToFloat(FormatFloat('0.00',0));
          fDMCadNotaFiscal.mPedidoAuxVlr_Entrada.AsFloat      := StrToFloat(FormatFloat('0.00',0));
          fDMCadNotaFiscal.mPedidoAux.Post;
        end;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := 0;

      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vVlrTotalItens := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
      else
        vVlrTotalItens := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));

      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
      begin
        if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat)) > 0 then
        begin
          if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
            vDesconto := StrToCurr(FormatCurr('0.00',vVlrTotalItens * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat / 100))
          else
            vDesconto := StrToFloat(FormatFloat('0.00',vVlrTotalItens * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat / 100));
        end
        else
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0 then
          vDesconto := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat       := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat   := 0;
      if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := 0;
    end;
    vDescAux := 0;
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S') and (vFlagGeraDupl) then
    begin
      vContador := vContador - 1;
      if Repetir then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;

      if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0) then
      begin
        if (vContador <= 0) or (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I') then
          vDescAux := StrToFloat(FormatFloat('0.00',vDesconto))
        else
        begin
          if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
            vDescAux := StrToCurr(FormatCurr('0.00000',(vVlrTotalItens / vVlrDuplicata) * 100))
          else
            vDescAux := StrToFloat(FormatFloat('0.00000',(vVlrTotalItens / vVlrDuplicata) * 100));
          if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
            vDescAux := StrToCurr(FormatCurr('0.00',(vDescAux * fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat) / 100))
          else
            vDescAux := StrToFloat(FormatFloat('0.00',(vDescAux * fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat) / 100));
          if StrToFloat(FormatFloat('0.00',vDescAux)) > StrToFloat(FormatFloat('0.00',vDesconto)) then
            vDescAux := StrToFloat(FormatFloat('0.00',vDesconto));
        end;
        if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
          vDesconto     := StrToCurr(FormatCurr('0.00',vDesconto - vDescAux))
        else
          vDesconto     := StrToFloat(FormatFloat('0.00',vDesconto - vDescAux));
        vDescontoItem := StrToFloat(FormatFloat('0.00',vDescAux));
      end;
    end
    //21/10/2015
    else
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'N') and not(vFlagGeraDupl) then
    begin
      vContador := vContador - 1;
      if Repetir then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;

      if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0) then
      begin
        if (vContador <= 0) or (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I') then
          vDescAux := StrToFloat(FormatFloat('0.00',vDesconto))
        else
        begin
          if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
            vDescAux := StrToCurr(FormatCurr('0.00000',(vVlrTotalItens / vVlrDuplicataOutros) * 100))
          else
            vDescAux := StrToFloat(FormatFloat('0.00000',(vVlrTotalItens / vVlrDuplicataOutros) * 100));
          if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
            vDescAux := StrToCurr(FormatCurr('0.00',(vDescAux * fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat) / 100))
          else
            vDescAux := StrToFloat(FormatFloat('0.00',(vDescAux * fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat) / 100));
          if StrToFloat(FormatFloat('0.00',vDescAux)) > StrToFloat(FormatFloat('0.00',vDesconto)) then
            vDescAux := StrToFloat(FormatFloat('0.00',vDesconto));
        end;
        if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
          vDesconto     := StrToCurr(FormatCurr('0.00',vDesconto - vDescAux))
        else
          vDesconto     := StrToFloat(FormatFloat('0.00',vDesconto - vDescAux));
        vDescontoItem := StrToFloat(FormatFloat('0.00',vDescAux));
      end;
    end;
    //****************

    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsBrowse] then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + vDescAux
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat + vDescAux;
    vDescAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));

    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat *
                                              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat) - vDescAux))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat *
                                              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat) - vDescAux));

    //09/10/2018 Foi colocado antes do cálculo do Valor de Importação
    if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S') or (not(vFlagGeraDupl))) and (not(Repetir)) then
      prc_Calcular_Frete_Novo(fDMCadNotaFiscal);
    //**********

    if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat := fnc_Calcula_Importacao(fDMCadNotaFiscal);
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat        := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat +
                                                                    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat));
      fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat       := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat +
                                                                    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat));
      vCalcOutrasDesp := StrToFloat(FormatFloat('0.00',0));
    end;

    //06/10/2016
    prc_Calcular_PisCofins_Suframa(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat);
    //*****************
    vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := fnc_Calcular_IPI_Novo(fDMCadNotaFiscal, vVlrAux, vDescAux,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat)
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := fnc_Calcular_IPI_Novo(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat, vDescAux,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat);

    //aqui vou colocar o cálculo do frete   13/06/2016
    if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S') or (not(vFlagGeraDupl))) and (not(Repetir)) then
    begin
      //Foi colocado acima do cálculo do valor de Importação 
      //prc_Calcular_Frete_Novo(fDMCadNotaFiscal);
      prc_calcular_TaxaCiscomex_Novo(fDMCadNotaFiscal);
      prc_calcular_AFRMM_Novo(fDMCadNotaFiscal);
      prc_calcular_Aduaneira_Novo(fDMCadNotaFiscal);
      prc_calcular_Seguro_Novo(fDMCadNotaFiscal);
      prc_Calcular_Vlr_Outros(fDMCadNotaFiscal);
      prc_Calcular_OutrasDespesas_Novo(fDMCadNotaFiscal);
      prc_calcular_Importacao_Novo(fDMCadNotaFiscal);
    end;
    //**************

    vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat)) > 0 then
      prc_Calcular_PisCofins_Novo(fDMCadNotaFiscal, vVlrAux)
    else
      prc_Calcular_PisCofins_Novo(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat);

    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat));

    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat));

    prc_Calcular_ICMS_Novo(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,vDescAux,fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                           fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.AsString);

    if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
      prc_Calcular_ICMSSimples_Novo(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger);

    //08/12/2015
    prc_Calcular_ICMS_UF_Dest(fDMCadNotaFiscal);

    //4.00
    prc_Calcular_FCP(fDMCadNotaFiscal);

    //*************

    //30/06/2017  calcula a ST quando for Suframa
    if fDMCadNotaFiscal.cdsTab_NCMID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger then
      fDMCadNotaFiscal.cdsTab_NCM.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger,([Locaseinsensitive]));

    //Aqui incluir substituição tributária 27/05/2013    Ciex vai usar   Foi usada a Finalidade
    if fDMCadNotaFiscal.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S' then
      prc_Calcular_SubstTributaria_ICMS(fDMCadNotaFiscal)
    else //30/06/2017
    if (fDMCadNotaFiscal.cdsTab_NCMGERAR_ST.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.AsString = '10')
       and ((fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString = '6109') or (fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString = '6110')) and
       (fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger = 0) then
      prc_Calcular_SubstTributaria_ICMS(fDMCadNotaFiscal)
    else
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat         := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat          := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO.AsFloat  := 0;
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensDIFERENCA_ICMS.AsString = 'S' then
         prc_Calcular_Diferencial_ICMS(fDMCadNotaFiscal);
    end;

    //Cálculo tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12
    prc_Calcular_Tributos_Transparencia(fDMCadNotaFiscal);

    if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
    begin
      if not Repetir then
      begin
        //prc_Calcular_Frete_Novo(fDMCadNotaFiscal);
        //prc_calcular_Seguro_Novo(fDMCadNotaFiscal);
        //prc_calcular_TaxaCiscomex_Novo(fDMCadNotaFiscal);
        //prc_Calcular_OutrasDespesas_Novo(fDMCadNotaFiscal);
        //prc_calcular_Importacao_Novo(fDMCadNotaFiscal);
        //prc_calcular_Aduaneira_Novo(fDMCadNotaFiscal);
      end;
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + vVlrTotalItens
                                                             - vDescontoItem - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat))
      else
        fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + vVlrTotalItens
                                                             - vDescontoItem - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));

      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToCurr(FormatCurr('0.00',vVlrTotalItens
                                                                   - vDescontoItem - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat))
      else
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',vVlrTotalItens
                                                                   - vDescontoItem - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));
    end;

    if not(vFlagGeraDupl) and not(Repetir) then
    begin
      //prc_Calcular_Frete_Novo(fDMCadNotaFiscal);
      //prc_calcular_Seguro_Novo(fDMCadNotaFiscal);
      //prc_calcular_TaxaCiscomex_Novo(fDMCadNotaFiscal);
      //prc_Calcular_OutrasDespesas_Novo(fDMCadNotaFiscal);
      //prc_calcular_Importacao_Novo(fDMCadNotaFiscal);
      //prc_calcular_Aduaneira_Novo(fDMCadNotaFiscal);
    end;

    if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
    begin
      //10/10/2018
      vVlrAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat;
      if (fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat > 0) and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat)) <> StrToFloat(FormatFloat('0.0000',100))) then
        vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat / (fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat / 100)));
      fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency + vVlrAux));

      //if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat)) <= 0) and not(vDrawBack) then
      if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat)) <= 0) then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat := StrToFloat(FormatFloat('0.00',0));

      //aqui coloquei 09/06/2015
    if not(Repetir) then
    begin
      if fDMCadNotaFiscal.cdsParametrosSOMAR_SISCOMEX_IMP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat));
      if fDMCadNotaFiscal.cdsParametrosSOMAR_ADUANEIRA_IMP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat));
      if fDMCadNotaFiscal.cdsParametrosSOMAR_II_IMP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat));
      if fDMCadNotaFiscal.cdsParametrosSOMAR_IPI_IMP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat));
      if fDMCadNotaFiscal.cdsParametrosSOMAR_PIS_COFINS_IMP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat));
      if fDMCadNotaFiscal.cdsParametrosSOMAR_PIS_COFINS_IMP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat));
      if fDMCadNotaFiscal.cdsParametrosSOMAR_SEGURO_IMP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat));
      if fDMCadNotaFiscal.qParametros_ImpSOMAR_FRETE_ODESP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat));
      if fDMCadNotaFiscal.qParametros_ImpSOMAR_VLR_AFRMM_ODESP.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat));
    end;

    end
    else
      fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency +
                                                            vVlrTotalItens - vDescontoItem - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));

    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat + vDescontoItem));

    //fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat));

    if fDMCadNotaFiscal.cdsCFOPSOMAR_VLRTOTALPRODUTO.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency + vVlrTotalItens));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency - vDescontoItem));

    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsCurrency   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsCurrency));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsCurrency));
    //21/11/2018
    fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsCurrency    := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_IPI.AsCurrency));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsCurrency     := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsCurrency));
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat));
    //4.00
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat));
    //**************

    if fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsCurrency));

    if fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat));

    if (fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat > 0) then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat));

    //08/12/2015
    if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '7' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat  := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat; 
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat   := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat  := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat;
    end;

    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));

    //aqui cleomar verificar
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S') and not(Repetir)  then
    begin
      if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat +
                                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat;
      if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat +
                                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat;
      if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_SEGURO.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat +
                                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat;
      if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat +
                                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat +
                                                                   fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat;
      //Incluido para descontar da base das comissões os impostos e o frete   08/02/2016
      vBaseComissao := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat));
      if fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
      begin
        vBaseComissao := StrToFloat(FormatFloat('0.00',vBaseComissao - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat -
                                                fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat -
                                                fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat));
      end;
      //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',vBaseComissao));
      //*********************
    end;

    //23/05/2018
    if fDMCadNotaFiscal.qParametros_NFeCALC_VOLUME_QTD.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsInteger;
    //*************

    if not(Repetir) then
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGerar_Duplicata.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat +
                                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
    end;
    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
    end;

    if not(Repetir) then
    begin
      if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
        fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat;
    end;

    if Repetir then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;

    if not repetir then
    begin
      if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
      begin
        prc_Calcular_Peso(fDMCadNotaFiscal);
        {if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPESOBRUTO.AsFloat)) > 0 then
        begin
          vVlrAux := fDMCadNotaFiscal.cdsProdutoPESOBRUTO.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
          vPesoBruto := StrToFloat(FormatFloat('0.00000',vPesoBruto + vVlrAux));
        end;
        if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPESOLIQUIDO.AsFloat)) > 0 then
        begin
          vVlrAux := fDMCadNotaFiscal.cdsProdutoPESOLIQUIDO.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
          vPesoLiquido := StrToFloat(FormatFloat('0.00000',vPesoLiquido + vVlrAux));
        end;}

        //Color Shoes   Calcular os volumes pela quantidade de embalagem
        if (fDMCadNotaFiscal.cdsParametrosCALC_VOLUME_EMB.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosMOSTRAR_EMBALAGEM.AsString = 'S') then
          prc_Calcula_Volume(fDMCadNotaFiscal);
        //****************
      end;

    end;
    //09/11/2015
    vID_PedAnt := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;

  //if StrToFloat(FormatFloat('0.00',vDesconto)) > 0 then
  //Foi alterado no dia 22/08/2012
  if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcFrete)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcSeguro)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcTaxaCiscomex)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcAFRM)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcOutrasDesp)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcImportacao)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcAduaneira)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcVlr_Outros)) > 0) then
    prc_Calcular_Desconto_Novo(fDMCadNotaFiscal, True);

  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_SEGURO.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat;
  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat;

  if StrToFloat(FormatFloat('0.00',vVlrDuplicata)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat;
  //if StrToFloat(FormatFloat('0.00',vVlrDuplicata)) > 0 then
  //  fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat;

  //if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  //  fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat
  //else
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat
                                                    + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat;
    //11/07/2017 Conforme Cristhian da Ciex
    if fDMCadNotaFiscal.qParametros_ImpSOMAR_NO_ICMS_OUTROS_VLR.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat;
    //************
  end
  else
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat
                                         + fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat
                                         + fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat;
  end;

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat)) <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := '';
  if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',0));

  fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.0000',0));
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
  begin
    if StrToFloat(FormatFloat('0.00000',vPesoBruto)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat := StrToFloat(FormatFloat('0.00000',vPesoBruto));
    if StrToFloat(FormatFloat('0.00000',vPesoLiquido)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.00000',vPesoLiquido));
  end;
  //Color Shoes   Calcular os volumes pela quantidade de embalagem
  if (fDMCadNotaFiscal.cdsParametrosCALC_VOLUME_EMB.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosMOSTRAR_EMBALAGEM.AsString = 'S') then
    fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger := fnc_Le_mEmbAux(fDMCadNotaFiscal);
  //****
  //09/11/2015
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  //11/05/2016
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  //if (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and not(fDMCadNotaFiscal.mPedidoAux.EmptyDataSet) then
  if (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0) then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;

      fDMCadNotaFiscal.mPedidoAux.First;
      while not fDMCadNotaFiscal.mPedidoAux.Eof do
      begin
        sds.Close;
        //11/05/2016
        sds.CommandText := ' SELECT VLR_ADIANTAMENTO, VLR_ENTRADA, GERA_ENTRADA_NO_PEDIDO '
                         + ' FROM PEDIDO '
                         + ' WHERE ID = :ID ';
        sds.ParamByName('ID').AsInteger := fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger;
        sds.Open;
        if sds.FieldByName('GERA_ENTRADA_NO_PEDIDO').AsString = 'S' then
          fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat + sds.FieldByName('VLR_ADIANTAMENTO').AsFloat))
        else
          fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat + sds.FieldByName('VLR_ENTRADA').AsFloat));
        fDMCadNotaFiscal.mPedidoAux.Next;
      end;
    finally
      FreeAndNil(sds);
    end;
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat;
  end;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat)) > 0 then
  begin
    if fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat
                                                               - fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
  end;
  //*****************
end;

procedure prc_Calculo_GeralItem(fDMCadNotaFiscal: TDMCadNotaFiscal; Qtd, VlrUnitario,
  DescontoItem, PercDescontoItem, VlrTotal: Real; GeraDupl: String);
var
  vVlrTotalItem: Real;
  vVlrDescontoItem: Real;
  vVlrAux: Real;
  vVlrDescAux: Real;
  vVlrFreteAnt, vVlrSeguroAnt, vVlrOutrasDespAnt, vVlrPisAnt, vVlrCofinsAnt, vVlrIPIAnt, vVlrTaxaCiscomex, vVlr_OutrosAnt: Real;
  vPercBase900: Real;
  vCodCST900: String;
  vCodCST: String;
  vCodDesonerado: Integer;
  vVlrIcms_Operacao: Real;
begin
  if (StrToCurr(FormatCurr('0.0000',Qtd)) > 0) and (StrToCurr(FormatCurr('0.0000000000',VlrUnitario)) > 0) then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrTotalItem := StrToCurr(FormatCurr('0.00',Qtd * VlrUnitario))
    else
      vVlrTotalItem := StrToFloat(FormatFloat('0.00',Qtd * VlrUnitario));
  end
  else
    vVlrTotalItem := StrToCurr(FormatCurr('0.00',VlrTotal));

  if (StrToFloat(FormatFloat('0.0000',PercDescontoItem)) > 0) and (StrToFloat(FormatFloat('0.0000',DescontoItem)) <= 0) then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      DescontoItem := StrToCurr(FormatCurr('0.00',vVlrTotalItem * PercDescontoItem / 100))
    else
      DescontoItem := StrToFloat(FormatFloat('0.00',vVlrTotalItem * PercDescontoItem / 100));
  end;
  vVlrDescontoItem  := 0;
  vVlrFreteAnt      := 0;
  vVlrSeguroAnt     := 0;
  vVlr_OutrosAnt    := 0;
  vVlrTaxaCiscomex  := 0;
  vVlrOutrasDespAnt := 0;
  vVlrPisAnt        := 0;
  vVlrCofinsAnt     := 0;
  vVlrIPIAnt        := 0;
  vPesoBruto        := 0;
  vPesoLiquido      := 0;
  vVlrIcms_Operacao := 0;
  //***************

  if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,([Locaseinsensitive]));
  if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,([Locaseinsensitive]));
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,([Locaseinsensitive]));
  if fDMCadNotaFiscal.cdsUFUF.AsString <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,([Locaseinsensitive]));

  vCodCST        := '';
  vCodDesonerado := 0;
  if fDMCadNotaFiscal.cdsTab_CSTIcms.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger,([Locaseinsensitive])) then
  begin
    vCodCST        := fDMCadNotaFiscal.cdsTab_CSTICMSCOD_CST.AsString;
    vCodDesonerado := fDMCadNotaFiscal.cdsTab_CSTICMSCOD_DESONERACAO.AsInteger;
  end;
  //vCodCST900   := fDMCadNotaFiscal.cdsTab_CSTICMSCOD_CST.AsString;
  //vPercBase900 := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat));

  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'N') and (GeraDupl = 'S') then
  begin
    vVlrAux := StrToCurr(FormatCurr('0.00',vVlrTotalItem));
    if not fDMCadNotaFiscal.cdsNotaFiscal_Desconto.IsEmpty then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Desconto.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Eof do
      begin
        if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
          vVlrDescAux := StrToCurr(FormatCurr('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsFloat) / 100))
        else
          vVlrDescAux := StrToFloat(FormatFloat('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsFloat) / 100));
        vVlrAux          := StrToFloat(FormatFloat('0.00',vVlrAux - vVlrDescAux));
        vVlrDescontoItem := StrToFloat(FormatFloat('0.00',vVlrDescontoItem + vVlrDescAux));
        fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Next;
      end;
    end
    else
    if fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat > 0 then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vVlrDescontoItem := StrToCurr(FormatCurr('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat) / 100))
      else
        vVlrDescontoItem := StrToFloat(FormatFloat('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat) / 100));
    end;
  end
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString <> 'N') and (StrToFloat(FormatFloat('0.000',PercDescontoItem)) > 0) then
  begin
    //aqui 07/05/2014 ==> estava somente o strtocurr
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrDescontoItem := StrToCurr(FormatCurr('0.00',vVlrTotalItem * PercDescontoItem / 100))
    else
      vVlrDescontoItem := StrToFloat(FormatFloat('0.00',vVlrTotalItem * PercDescontoItem / 100));
  end
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString <> 'N') and (StrToFloat(FormatFloat('0.000',DescontoItem)) > 0) then
    vVlrDescontoItem := StrToCurr(FormatCurr('0.00',DescontoItem));
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat)) > 0) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat := StrToCurr(FormatCurr('0.00',vVlrDescontoItem));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vVlrTotalItem - vVlrDescontoItem));

  //aqui incluido cálculo da importação - 02/03/2013
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat     := fnc_Calcula_Importacao(fDMCadNotaFiscal);
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := fnc_Calcular_IPI_Novo(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,vVlrDescontoItem,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat);

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat    := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat       := 0;

  prc_Calcular_PisCofins_Novo(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat);

  prc_Calcular_PisCofins_Suframa(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat);

  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat := 0;

  prc_Calcular_ICMS_Novo(fDMCadNotaFiscal, vVlrTotalItem,vVlrDescontoItem,fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                         fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.AsString);

  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
    prc_Calcular_ICMSSimples_Novo(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger);

  //08/12/2015
  prc_Calcular_ICMS_UF_Dest(fDMCadNotaFiscal);
  //*******************

  //4.00
  prc_Calcular_FCP(fDMCadNotaFiscal);
  //***********

  if fDMCadNotaFiscal.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S' then
    prc_Calcular_SubstTributaria_ICMS(fDMCadNotaFiscal)
  else //
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensDIFERENCA_ICMS.AsString = 'S' then
    prc_Calcular_Diferencial_ICMS(fDMCadNotaFiscal);

  //Cálculo tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12
  prc_Calcular_Tributos_Transparencia(fDMCadNotaFiscal);

  if GeraDupl = 'S' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat -
                                                           fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat));
  end;

  prc_Calcular_Frete_Novo(fDMCadNotaFiscal);
  prc_calcular_Seguro_Novo(fDMCadNotaFiscal);
  prc_Calcular_Vlr_Outros(fDMCadNotaFiscal);
  prc_calcular_TaxaCiscomex_Novo(fDMCadNotaFiscal);
  prc_calcular_AFRMM_Novo(fDMCadNotaFiscal);
  prc_Calcular_OutrasDespesas_Novo(fDMCadNotaFiscal);

  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));
  end;

  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));

  if fDMCadNotaFiscal.cdsCFOPSOMAR_VLRTOTALPRODUTO.AsString = 'S' then
   fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));

  fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));

  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsCurrency      := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsCurrency       := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsCurrency));
  //21/11/2018
  fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsCurrency       := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_IPI.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsCurrency        := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsCurrency));

  //4.00
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsCurrency));
  //*******************

  if fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsCurrency));

  //Aplicar a transferência de Icms
  if fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat));
  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat - vVlrFreteAnt;
  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat - vVlrOutrasDespAnt;
  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_SEGURO.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat - vVlrSeguroAnt;
  if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat - vVlr_OutrosAnt;
  if GeraDupl = 'S' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat - vVlrIPIAnt;
    if fDMCadNotaFiscal.cdsNotaFiscalUSA_TRANSFICMS.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat));
  end;

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  //08/02/2016
  //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  //**********

  if GeraDupl = 'S' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + (fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat - vVlrIPIAnt);
    if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat - vVlrFreteAnt;
    if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat - vVlrOutrasDespAnt;
    if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_SEGURO.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat - vVlrSeguroAnt;
    if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat - vVlr_OutrosAnt;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
    //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat;
    //if fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
      //  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_COMISSAO.AsFloat
        //                                                               - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat -
          //                                                               fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat -
            //                                                             fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat));
  end;
  //////////aqui

  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') then
  begin //aqui 07/03/2017 foi acrescentado o valor do icms de substituição tributária
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat))
                                                    + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
    //11/07/2017 Conforme Cristhian da Ciex
    if fDMCadNotaFiscal.qParametros_ImpSOMAR_NO_ICMS_OUTROS_VLR.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat - StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat));
    //**************

  end;
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat)) > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat

  else
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat
                                   + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat
                                   + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat
                                   - vVlrFreteAnt - vVlrSeguroAnt - vVlrOutrasDespAnt
                                   - vVlrIPIAnt;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat    := fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat - vVlrPisAnt;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat - vVlrCofinsAnt;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat            := fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
  //aqui incluido cálculo da importação - 29/04/2014  Ramiro Porto Alegre ver parâmetros
  //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') and (fDMCadNotaFiscal.cdsParametrosSOMAR_PIS_COFINS_IMP.AsString = 'S') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat;
  //aqui incluido cálculo da importação - 29/04/2014  Ramiro Porto Alegre ver parâmetros
  //fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat           := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat   := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') and (fDMCadNotaFiscal.cdsParametrosSOMAR_PIS_COFINS_IMP.AsString = 'S') then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat         := fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat           := fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat;

  {if ((fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.IsNull) or (trim(fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.AsString) = '')) and
     (not(fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.IsNull) and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString) <> '')) then
    fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString;
  if ((fDMCadNotaFiscal.cdsNotaFiscalVERSAO_TRIBUTOS.IsNull) or (trim(fDMCadNotaFiscal.cdsNotaFiscalVERSAO_TRIBUTOS.AsString) = '')) and
     (not(fDMCadNotaFiscal.cdsNotaFiscal_ItensVERSAO_TRIBUTO.IsNull) or (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensVERSAO_TRIBUTO.AsString) <> '')) then
    fDMCadNotaFiscal.cdsNotaFiscalVERSAO_TRIBUTOS.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensVERSAO_TRIBUTO.AsString;}

  if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',0));

  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
  begin
    prc_Calcular_Peso(fDMCadNotaFiscal);
    fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat + vPesoBruto));
    fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat + vPesoLiquido));
  end;

  //08/12/2015
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat  := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat   := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat  := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat;
  //**************

  fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));

  //08/02/2016
  //fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_COMISSAO.AsFloat;
end;

procedure prc_Calcular_ICMS_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal; VlrTotal, VlrDesconto,
  VlrIPI, PercIcms: Real; CodSitTrib: Integer; CodCST_ICMS: String);
var
  vSitTributaria: Real;
  vBaseAux, vVlrIcmsAux, vVlrIcmsOpe: Real;
  vPercAux: Real;
  vBaseDif: Real;
  vBaseICMSOpe: Real;

    procedure prc_Calcular_Desoneracao(BaseICMS, BaseIcms_Ope: Real);
    var
      vPAux: Real;
      vUFAux: String;
      vAux: Real;
    begin
      if (CodCST_ICMS <> '20') and (CodCST_ICMS <> '30') and (CodCST_ICMS <> '40') and (CodCST_ICMS <> '41') and (CodCST_ICMS <> '50')
         and (CodCST_ICMS <> '70') and (CodCST_ICMS <> '90') and (CodCST_ICMS <> '51')  then
        exit;
      if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') or (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '7') then
        vUFAux := fDMCadNotaFiscal.cdsFilialUF.AsString
      else
        vUFAux := fDMCadNotaFiscal.cdsClienteUF.AsString;
      vPAux := StrToFloat(FormatFloat('0.00##',PercIcms));
      if StrToFloat(FormatFloat('0.00',PercIcms)) <= 0 then
      begin
        fDMCadNotaFiscal.qUF.Close;
        fDMCadNotaFiscal.qUF.ParamByName('UF').AsString := vUFAux;
        fDMCadNotaFiscal.qUF.Open;
        vPAux := StrToFloat(FormatFloat('0.00##',fDMCadNotaFiscal.qUFPERC_ICMS.AsFloat));
      end;
      //20/05/2015
      {if (CodCST_ICMS = '51') and (fDMCadNotaFiscal.cdsParametrosUSA_ICMSOPERACAO_CST51.AsString = 'S') then
      begin
        vAux := StrToFloat(FormatFloat('0.00',((BaseIcms_Ope * vPAux) / 100)));
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOPERACAO.AsFloat :=  StrToFloat(FormatFloat('0.00', vAux));
        exit;
      end;}

      //Tirado dia 06/10/2016
      if fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString <> 'S' then
        exit;
      if ((CodCST_ICMS = '40') or (CodCST_ICMS = '41') or (CodCST_ICMS = '50')) and
        (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA.AsFloat)) > 0) then
        vAux := StrToFloat(FormatFloat('0.00',(((fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat) * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA.AsFloat) / 100)))
      else
        vAux := StrToFloat(FormatFloat('0.00',((BaseICMS * vPAux) / 100)));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));

      {if fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString <> 'S' then
        exit;
      vAux := StrToFloat(FormatFloat('0.00',((BaseICMS * vPAux) / 100)));
      //28/09/2016 foi incluido o IF
      if (StrToFloat(FormatFloat('0.00',vAux)) <= 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsInteger > 0) then
      begin
        vAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));
        vAux := StrToFloat(FormatFloat('0.00',(vAux * vpAux) / 100));
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat)) > 0 then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_DESON.AsFloat := StrToFloat(Formatfloat('0.00',vPAux))
      else
        fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_DESON.AsFloat := StrToFloat(Formatfloat('0.00',0));}
      //*************

      //Código vai ser informado no move_itens
      //if fDMCadNotaFiscal.cdsTab_CSTICMS.Locate('ID',CodSitTrib,([Locaseinsensitive])) then
      //begin
        //if fDMCadNotaFiscal.cdsTab_CSTICMSCOD_DESONERACAO.AsInteger > 0 then
          //fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsInteger := vCod_Desonerado;
      //end;
    end;
    //**********************

begin
  vDrawBack := False;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat          := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat           := 0;

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOPERACAO.AsFloat   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDIFERIDO.AsFloat   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_DESON.AsFloat    := 0;
  vVlrTotal_Nota_Calc := 0;

  //fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat := 0;
  //*****
  if StrToFloat(FormatFloat('0.00',PercIcms)) <= 0 then
  begin
    if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
    begin
      vBaseAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat
                + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat)) > 0 then
        vBaseAux := StrToFloat(FormatFloat('0.00',vBaseAux + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat));
      //12/11/2015
      if fDMCadNotaFiscal.cdsParametrosSOMAR_BASE_ICMS_SISCOMEX.AsString = 'S' then
        vBaseAux := vBaseAux + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat;
      //16/01/2017
      if fDMCadNotaFiscal.qParametros_ImpSOMAR_VLR_AFRMM_ICMS.AsString = 'S' then
        vBaseAux := vBaseAux + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat));
      //*****************
      //08/01/2018
      if fDMCadNotaFiscal.qParametros_ImpICMS_SOMAR_SEG.AsString = 'S' then
        vBaseAux := vBaseAux + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat));
      //*************
      fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat := vBaseAux;
    end;
    if ((fDMCadNotaFiscal.cdsFilialSIMPLES.AsString <> 'S') and (fDMCadNotaFiscal.cdsCFOPGERAR_DESONERACAO_ICMS.AsString = 'S')) or
       ((fDMCadNotaFiscal.cdsFilialSIMPLES.AsString <> 'S') and (CodCST_ICMS = '51') and (fDMCadNotaFiscal.cdsCFOPGERAR_ICMS.AsString = 'S')) then
    begin
      //31/08/2018
      if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3') and (StrToFloat(FormatFloat('0.00',vBaseAux)) <= 0) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA.AsFloat)) > 0) then
        vBaseAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
      //****************
      prc_Calcular_Desoneracao(vBaseAux,vBaseAux);
    end;
    exit;
  end;

  if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'N') then
    exit;

  vBaseAux    := 0;
  vVlrIcmsOpe := 0;
  vVlrIcmsAux := 0;
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  begin
    vBaseAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat
              + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat)) > 0 then
      vBaseAux := StrToFloat(FormatFloat('0.00',vBaseAux + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat));
    //12/11/2015
    if fDMCadNotaFiscal.cdsParametrosSOMAR_BASE_ICMS_SISCOMEX.AsString = 'S' then
      vBaseAux := vBaseAux + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat;
    if fDMCadNotaFiscal.qParametros_ImpSOMAR_VLR_AFRMM_ICMS.AsString = 'S' then
    begin
      vBaseAux := vBaseAux + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat));
    end;
    //11/07/2017 Instalado para a Ciex  Cristhian solicitou
    if fDMCadNotaFiscal.qParametros_ImpSOMAR_NO_ICMS_OUTROS_VLR.AsString = 'S' then
      vBaseAux := vBaseAux + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat));
    //**************************
    //08/01/2018
    if fDMCadNotaFiscal.qParametros_ImpICMS_SOMAR_SEG.AsString = 'S' then
      vBaseAux := vBaseAux + StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat));
    //**************************

    //10/10/2018
    vPercAux := StrToFloat(FormatFloat('0.0000',PercIcms));
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat > 0) and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat)) <> StrToFloat(FormatFloat('0.0000',100))) then
      vPercAux := StrToFloat(FormatFloat('0.0000',(PercIcms * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat) / 100));
    //vBaseAux := vBaseAux / ((1 - (PercIcms / 100)) );
    vBaseAux := vBaseAux / ((1 - (vPercAux / 100)) );
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat > 0) and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat)) <> StrToFloat(FormatFloat('0.0000',100))) then
      vBaseAux := StrToFloat(FormatFloat('0.00',(vBaseAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat) / 100));
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrIcmsAux := StrToCurr(FormatCurr('0.00',vBaseAux * PercIcms / 100))
    else
      vVlrIcmsAux := StrToFloat(FormatFloat('0.00',vBaseAux * PercIcms / 100));
    vBaseDif := StrToFloat(FormatFloat('0.00',vBaseAux));
  end
  else
  begin
    if fDMCadNotaFiscal.cdsParametrosAPLICARDESCONTONOICMS.AsString = 'S' then
      vBaseAux := VlrTotal
    else
      vBaseAux := StrToCurr(FormatCurr('0.00',VlrTotal + VlrDesconto));
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensCALCULARICMSSOBREIPI.AsString = 'S' then
      vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux + VlrIPI));
    vBaseICMSOpe   := StrToCurr(FormatCurr('0.00',vBaseAux));
    vSitTributaria := 0;
    if CodSitTrib > 0 then
    begin
      if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat)) > 0 then
        vSitTributaria := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat))
      else
      if fDMCadNotaFiscal.cdsTab_CSTICMS.Locate('ID',CodSitTrib,([Locaseinsensitive])) then
        vSitTributaria := fDMCadNotaFiscal.cdsTab_CSTICMSPERCENTUAL.AsFloat
      else
        vSitTributaria := 100;
    end;
    vBaseDif := StrToCurr(FormatCurr('0.00',vBaseAux));
    if vSitTributaria > 0 then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux * vSitTributaria  / 100))
      else
        vBaseAux := StrToFloat(FormatFloat('0.00',vBaseAux * vSitTributaria  / 100));
      vBaseDif := StrToCurr(FormatCurr('0.00',vBaseDif - vBaseAux));
    end
    else
      vBaseAux := 0;
    if ((fDMCadNotaFiscal.cdsFilialSIMPLES.AsString <> 'S') and (fDMCadNotaFiscal.cdsCFOPGERAR_DESONERACAO_ICMS.AsString = 'S')) then
      //20/05/2015
       //((fDMCadNotaFiscal.cdsFilialSIMPLES.AsString <> 'S') and (CodCST_ICMS = '51')) then
      prc_Calcular_Desoneracao(vBaseDif,vBaseICMSOpe);
    if vBaseAux > 0 then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vVlrIcmsAux := StrToCurr(FormatCurr('0.00',vBaseAux * PercIcms / 100))
      else
        vVlrIcmsAux := StrToFloat(FormatFloat('0.00',vBaseAux * PercIcms / 100));
    end
    else
      vVlrIcmsAux := 0;

    //if (CodCST_ICMS = '51') and (fDMCadNotaFiscal.cdsCFOPCALCULAR_ICMS_DIFERIDO.AsString = 'S') and
    if ((CodCST_ICMS = '51') or (CodCST_ICMS = '900')) and (fDMCadNotaFiscal.cdsCFOPGERAR_ICMS.AsString = 'S') and
       (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DIFERIMENTO.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.0000',PercIcms)) > 0) then
    begin
      vVlrIcmsOpe := StrToFloat(FormatFloat('0.00',vVlrIcmsAux));
      vVlrIcmsAux := StrToFloat(FormatFloat('0.00',vVlrIcmsOpe - ((vVlrIcmsAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DIFERIMENTO.AsFloat) / 100)));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat        := vBaseAux;
  {vDrawBack := False;
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_DRAWBACK.AsString) <> '' then
  begin
    vDrawBack := True;
    exit;
  end;}
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat         := vVlrIcmsAux;
  // 13/06/2016
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSFRETE.AsFloat)) > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat  := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSFRETE.AsFloat;
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS.AsFloat)) > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat  := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS.AsFloat;
  end;
  //****************
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOPERACAO.AsFloat := vVlrIcmsOpe;
  if StrToFloat(FormatFloat('0.00',vVlrIcmsOpe)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDIFERIDO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrIcmsOpe - vVlrIcmsAux));
end;

procedure prc_Calcular_ICMSSimples_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal; VlrTotal: Real;
  CodSitTrib: Integer);
var
  vSitTributaria: Real;
  vBaseAux, vVlrIcmsAux: Real;
begin
  if CodSitTrib <> fDMCadNotaFiscal.cdsTab_CSTICMSID.AsInteger then
    fDMCadNotaFiscal.cdsTab_CSTIcms.Locate('ID',CodSitTrib,([Locaseinsensitive]));

  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat  := 0;

  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'N' then
    exit;
  if fDMCadNotaFiscal.cdsCFOPGERAR_ICMS_SIMPLES.AsString = 'N' then
    exit;
    //Aqui verificar depois que o Carlos nos passar as regras
  //if fDMCadNotaFiscal.cdsCliente not( DM1.tClienteUsaIcmsSimples.AsBoolean) or (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalPercIcmsSimples.AsFloat)) <= 0) then
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat)) <= 0 then
    exit;

  vBaseAux := VlrTotal;
  //Lê a tabela da Situação tributária
  vSitTributaria := 0;
  if CodSitTrib > 0 then
    vSitTributaria := fDMCadNotaFiscal.cdsTab_CSTICMSPERCENTUAL.AsFloat;

  if vSitTributaria > 0 then
  begin
    //aqui 07/05/2014 ==> estava somente o strtocurr
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux * vSitTributaria  / 100))
    else
      vBaseAux := StrToFloat(FormatFloat('0.00',vBaseAux * vSitTributaria  / 100));
  end
  else
    vBaseAux := 0;
  vVlrIcmsAux := 0;

  //Calcula o valor do icms
  if vBaseAux > 0 then
  begin
    //aqui 07/05/2014 ==> estava somente o strtocurr
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrIcmsAux := StrToCurr(FormatCurr('0.00',vBaseAux * fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat / 100))
    else
      vVlrIcmsAux := StrToFloat(FormatFloat('0.00',vBaseAux * fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat / 100));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat := StrToCurr(FormatCurr('0.00',vBaseAux));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat  := StrToCurr(FormatCurr('0.00',vVlrIcmsAux));
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat)) > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString = 'CSI') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString := '';

  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsCurrency));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat  := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsCurrency));
end;

procedure prc_Calcular_PisCofins_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal; VlrTotal: Real);
var
  vAux1, vAux2: Real;
  vIcmsAux, vIPIAux, vCofinsAux, vPISAux, vImpAux: Real;
  vBaseAux: Real;
begin
  vPerc_PisCofins_Imp := 0;
  //04/11/2013 Nova lei de cálculo do Pis e Cofins
  {if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  begin
    vIcmsAux := 0;
    vIPIAux    := 0;
    vCofinsAux := 0;
    vPISAux    := 0;
    vImpAux    := 0;
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat)) > 0 then
      vIcmsAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat / 100));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat)) > 0 then
      vIPIAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat)) > 0 then
      vCofinsAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat / 100));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat)) > 0 then
      vPISAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat / 100));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat)) > 0 then
      vImpAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat / 100));
    vAux1 := 1 + vIcmsAux * ((vImpAux + vIPIAux * (1 + vImpAux)));
    vAux2 := (1 - vPISAux - vCofinsAux) * (1 - vIcmsAux);
    if (StrToFloat(FormatFloat('0.0000000',vAux1)) > 0) and (StrToFloat(FormatFloat('0.0000000',vAux2)) > 0) then
      vPerc_PisCofins_Imp := vAux1 / vAux2;
    vAux1 := 0;
    vAux2 := 0;
    if (StrToFloat(FormatFloat('0.0000000',vPerc_PisCofins_Imp)) > 0) then
    begin
      if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat)) > 0) then
        vAux1 := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * vPerc_PisCofins_Imp) * (fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat / 100)));
      if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat)) > 0) then
        vAux2 := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * vPerc_PisCofins_Imp) * (fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat / 100)));
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat    := StrToFloat(FormatFloat('0.00',vAux1));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat := StrToFloat(FormatFloat('0.00',vAux2));
  end
  else
  begin}
  //vBaseAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
  vBaseAux := StrToFloat(FormatFloat('0.00',VlrTotal));
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  begin
    if fDMCadNotaFiscal.qParametros_ImpCOFINS_SOMAR_FRETE.AsString = 'S' then
      vBaseAux := StrToFloat(FormatFloat('0.00',vBaseAux + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat));
    if fDMCadNotaFiscal.qParametros_ImpCOFINS_SOMAR_SEG.AsString = 'S' then
      vBaseAux := StrToFloat(FormatFloat('0.00',vBaseAux + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat));
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat := StrToCurr(FormatCurr('0.00',(vBaseAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat) / 100))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat := StrToFloat(FormatFloat('0.00',(vBaseAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat) / 100));
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat := StrToCurr(FormatCurr('0.00',(vBaseAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat) / 100))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat := StrToFloat(FormatFloat('0.00',(vBaseAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat) / 100));
  end;
end;

procedure prc_Calcular_PisCofins_Suframa(fDMCadNotaFiscal: TDMCadNotaFiscal; VlrTotal: Real);
var
  vAux : Real;
  vVlrDescAux : Real;
  vICMSDeson : Real;
begin
  vVlrDescAux := 0;
  vICMSDeson  := 0;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA.AsFloat) / 100))
    else
      vAux := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA.AsFloat) / 100));
    //08/10/2018
    vVlrDescAux := StrToFloat(FormatFloat('0.00',vVlrDescAux + vAux));
    vICMSDeson  := StrToFloat(FormatFloat('0.00',vAux));
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.qParametros_NFeDESCONTA_ICMS_DESON.AsString = 'S' then
      vAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat - vICMSDeson))
    else
      vAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat := StrToCurr(FormatCurr('0.00',(vAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA.AsFloat) / 100))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat := StrToFloat(FormatFloat('0.00',(vAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA.AsFloat) / 100));
    vVlrDescAux := StrToFloat(FormatFloat('0.00',vVlrDescAux + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat));
  end;
  //01/11/2018  Tirado porque o IPI acrescenta no total do produto, por isso que não se desconta
  {if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI_SUFRAMA.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.qParametros_NFeDESCONTA_ICMS_DESON.AsString = 'S' then
      vAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat - vICMSDeson))
    else
      vAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',(vAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI_SUFRAMA.AsFloat) / 100))
    else
      vAux := StrToFloat(FormatFloat('0.00',(vAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI_SUFRAMA.AsFloat) / 100));
    vVlrDescAux := StrToFloat(FormatFloat('0.00',vVlrDescAux + vAux));
  end;}
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat := StrToFloat(FormatFloat('0.00',vVlrDescAux));
end;

procedure prc_Calcular_Frete_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  vContadorOutros := vContadorOutros - 1;
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcFrete))
  else
  if StrToFloat(FormatFloat('0.00',vCalcFrete)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcFrete * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcFrete * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcFrete := StrToFloat(FormatFloat('0.00',vCalcFrete - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcFrete)) <= 0 then
    vCalcFrete := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSFRETE.AsFloat := 0;
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat)) > 0) and
     (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3') then
  begin
    //if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'N' then
    //begin
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat)) > 0 then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSFRETE.AsCurrency := StrToFloat(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsCurrency * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsCurrency) / 100))
      else
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSFRETE.AsCurrency := StrToFloat(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsCurrency * fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsCurrency) / 100));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsCurrency     := StrToFloat(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsCurrency));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsCurrency      := StrToFloat(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSFRETE.AsCurrency));
    //end;
  end;
end;

procedure prc_Calcular_Seguro_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcSeguro))
  else
  if StrToFloat(FormatFloat('0.00',vCalcSeguro)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcSeguro * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcSeguro * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcSeguro := StrToFloat(FormatFloat('0.00',vCalcSeguro - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcSeguro)) <= 0 then
    vCalcSeguro := StrToFloat(FormatFloat('0.00',0));
end;

procedure prc_Calcular_Vlr_Outros(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcVlr_Outros))
  else
  if StrToFloat(FormatFloat('0.00',vCalcVlr_Outros)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcVlr_Outros * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcVlr_Outros * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcVlr_Outros := StrToFloat(FormatFloat('0.00',vCalcVlr_Outros - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcVlr_Outros)) <= 0 then
    vCalcVlr_Outros := StrToFloat(FormatFloat('0.00',0));
end;

procedure prc_Calcular_OutrasDespesas_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  vAux := 0;
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
    exit;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcOutrasDesp))
  else
  if StrToFloat(FormatFloat('0.00',vCalcOutrasDesp)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcOutrasDesp * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcOutrasDesp * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcOutrasDesp := StrToFloat(FormatFloat('0.00',vCalcOutrasDesp - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcOutrasDesp)) <= 0 then
    vCalcOutrasDesp := StrToFloat(FormatFloat('0.00',0));

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS.AsFloat := 0;
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3' then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_OUTROSVALORES.AsFloat)) > 0) then
    begin
      if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'N' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS.AsCurrency := StrToFloat(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsCurrency * fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_OUTROSVALORES.AsCurrency) / 100));
        fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsCurrency              := StrToFloat(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsCurrency));
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsCurrency               := StrToFloat(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS.AsCurrency));
      end;
    end;
  end;
end;

procedure prc_Calcular_Importacao_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalCALCULAR_IMP_ITEM.AsString = 'S' then
    exit;
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcImportacao))
  else
  if StrToFloat(FormatFloat('0.00',vCalcImportacao)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcImportacao * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcImportacao * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcImportacao := StrToFloat(FormatFloat('0.00',vCalcImportacao - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcImportacao)) <= 0 then
    vCalcImportacao := StrToFloat(FormatFloat('0.00',0));
end;

procedure prc_Calcular_Aduaneira_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalCALCULAR_IMP_ITEM.AsString = 'S' then
    exit;
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcAduaneira))
  else
  if StrToFloat(FormatFloat('0.00',vCalcAduaneira)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcAduaneira * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcAduaneira * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcAduaneira := StrToFloat(FormatFloat('0.00',vCalcAduaneira - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcAduaneira)) <= 0 then
    vCalcAduaneira := StrToFloat(FormatFloat('0.00',0));
end;

function fnc_Calcular_IPI_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal; VlrTotal, VlrDesconto,
  PercIPI: Real): Real;
var
  vAux: Real;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_IPI.AsFloat := 0;
  Result := 0;
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  begin
    //aqui 07/05/2014 ==> estava somente o strtocurr
    if trim(fDMCadNotaFiscal.qParametros_ImpSOMAR_VLR_II_NO_IPI.AsString) = 'S' then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        VlrTotal := StrToCurr(FormatCurr('0.00',VlrTotal + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat))
      else
        VlrTotal := StrToFloat(FormatFloat('0.00',VlrTotal + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat));
    end;
  end
  else
  if fDMCadNotaFiscal.qParametros_NFeSOMAR_FRETE_IPI.AsString = 'S' then
    VlrTotal := StrToFloat(FormatFloat('0.00',VlrTotal + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat));
  if fDMCadNotaFiscal.cdsParametrosAPLICARDESCONTONOIPI.AsString = 'S' then
    vAux := StrToCurr(FormatCurr('0.00',VlrTotal))
  else
    vAux := StrToCurr(FormatCurr('0.00',VlrTotal + VlrDesconto));

  if (PercIPI > 0) then
  begin
    //21/11/2018
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vAux));

    //aqui 07/05/2014 ==> estava somente o strtocurr
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      Result := StrToCurr(FormatCurr('0.00',vAux * PercIPI / 100))
    else
      Result := StrToFloat(FormatFloat('0.00',vAux * PercIPI / 100));
  end;

end;

procedure prc_Calcular_SubstTributaria_ICMS(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vBaseSubst, vVlrSubst: Real;
  vIcmsAux: Real;
  vBaseICMAux: Real;
  vVICMS: Real;
  vPercRedST: Real;
  vPerc_Interno: Real;
  vIcmsInterno: Real;
  vUF: String;
  vTotalProdAux: Real;
  vVlrAgregado: Real;
  vIcmsProprio: Real;
  vPerc_Proprio: Real;
  vPerc_MVA: Real;
  vTipo_Cliente: String;
  vImportado_Nacional: String;
  vAux: Real;
  vPerc_Proprio_Aux, vPerc_Interno_Aux: Real;
  vPerc_Red_MVA: Real;
  vPerc_MVA2: Real;
  vID_OBS_Lei: Integer;
  vVlrTotal: Real;
  vPerc_Reducao_Base: Real;
begin
  //28/05/2014
  //Foi incluido para verificar se o estado usa o de destino ou o mesmo da filial, quando esta for simples (a emitente)
  //if (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString <> '0') and (fDMCadNotaFiscal.cdsClienteUF.AsString <> fDMCadNotaFiscal.cdsFilialUF.AsString) then
  //20/07/2016
  if (fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'F') or (fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger  = 1) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger > 0 then
    begin
      if fDMCadNotaFiscal.cdsCFOP_Variacao.Locate('ID;ITEM',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger]),[locaseinsensitive]) then
      begin
        if fDMCadNotaFiscal.cdsCFOP_VariacaoCALCULAR_ST.AsString <> 'S' then
          exit;
      end;
    end;
  end;
  //*****************

  vID_OBS_Lei := 0;
  //Alterado 26/09/2018
  //if (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString <> '0') then
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '1')  or (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '2')
    or (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '3') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '8') then
    vImportado_Nacional := 'I'
  else
    vImportado_Nacional := 'N';
  fDMCadNotaFiscal.cdsTab_NCM.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger,([Locaseinsensitive]));
  if (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S') and (fDMCadNotaFiscal.cdsTab_NCMUSAR_MVA_UF_DESTINO.AsString <> 'S') then
    vUF := fDMCadNotaFiscal.cdsFilialUF.AsString
  else
    vUF := fDMCadNotaFiscal.cdsClienteUF.AsString;
  if fDMCadNotaFiscal.cdsUFUF.AsString <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,([Locaseinsensitive]));
  vTipo_Cliente := '';
  if fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0 then
  begin
    fDMCadNotaFiscal.qRegime_Trib.Close;
    fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger;
    fDMCadNotaFiscal.qRegime_Trib.Open;
    if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger < 3 then
      vTipo_Cliente := 'S'
    else
      vTipo_Cliente := 'G';
  end;
  //**************

  //09/04/2014
  vPercRedST    := StrToFloat(FormatFloat('0.00',0));
  vPerc_Interno := StrToFloat(FormatFloat('0.00',0));
  vIcmsInterno  := StrToFloat(FormatFloat('0.00',0));
  vPerc_Proprio := StrToFloat(FormatFloat('0.00',0));
  vIcmsProprio  := StrToFloat(FormatFloat('0.00',0));
  vVlrSubst     := StrToFloat(FormatFloat('0.00',0));
  vPerc_Reducao_Base := StrToFloat(FormatFloat('0.00',0));
  //Busca Redução ST
  //10/11/2015
  //prc_Abrir_qProduto_UF(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger,vUF);
  prc_Abrir_qProduto_UF(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_Produto.AsInteger,vUF);
  
  if not(fDMCadNotaFiscal.qProduto_UF.IsEmpty) then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qProduto_UFPERC_REDUCAO_ST.AsFloat)) > 0) then
      vPercRedST := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.qProduto_UFPERC_REDUCAO_ST.AsFloat));
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qProduto_UFPERC_REDUCAO_ICMS.AsFloat)) > 0) then
      vPerc_Reducao_Base := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.qProduto_UFPERC_REDUCAO_ICMS.AsFloat));
  end;
  if (StrToFloat(FormatFloat('0.0000',vPerc_Reducao_Base)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) then
    vPerc_Reducao_Base := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPERC_REDUCAOICMS.AsFloat));
    //verificar do pedido aqui
  //Busca Icms interno e o próprio no cadastro do produto
  if vUF <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    prc_Abrir_qProduto_UF(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_Produto.AsInteger,fDMCadNotaFiscal.cdsClienteUF.AsString);
  if not(fDMCadNotaFiscal.qProduto_UF.IsEmpty) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qProduto_UFPERC_ICMS_INTERNO.AsFloat)) > 0) then
    vPerc_Interno := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qProduto_UFPERC_ICMS_INTERNO.AsFloat));
  if not(fDMCadNotaFiscal.qProduto_UF.IsEmpty) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qProduto_UFPERC_ICMS.AsFloat)) > 0) then
    vPerc_Proprio := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qProduto_UFPERC_ICMS.AsFloat));
  //28/05/2014
  prc_Abrir_qNCM_UF(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger,vUF,'A');
  if fDMCadNotaFiscal.qNCM_UF.IsEmpty then
  begin
    prc_Abrir_qNCM_UF(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger,vUF,vImportado_Nacional);
    if fDMCadNotaFiscal.qNCM_UF.IsEmpty then
      exit;
  end;
  //16/10/2018
  vID_OBS_Lei := fDMCadNotaFiscal.qNCM_UFID_OBS_LEI.AsInteger;
  if vTipo_Cliente = 'G' then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_BASE_ST.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
      vPercRedST :=  StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_BASE_ST.AsFloat))
  end
  else
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_BASE_ST_SIMPLES.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
    vPercRedST :=  StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_BASE_ST_SIMPLES.AsFloat));
  //***********

  if StrToFloat(FormatFloat('0.00',vPerc_Interno)) <= 0  then
    vPerc_Interno := fDMCadNotaFiscal.qNCM_UFPERC_ICMS_INTERNO.AsFloat;
  vBaseSubst   := 0;          
  vVlrSubst    := 0;
  if copy(fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString,1,1) <> '3' then
  begin
    if (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPERC_REDUCAOICMSSUBST.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
      vPercRedST := StrToCurr(FormatCurr('0.0000',fDMCadNotaFiscal.cdsProdutoPERC_REDUCAOICMSSUBST.AsFloat));
    if (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.qNCM_UFPERC_RED_STRIB.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPercRedST)) <= 0) then
      vPercRedST := StrToCurr(FormatCurr('0.0000',fDMCadNotaFiscal.qNCM_UFPERC_RED_STRIB.AsFloat));

    vBaseICMAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat
                 + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat));
    vVlrTotal   := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat
                 + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat));
  end
  else
  begin
    vBaseICMAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
    vVlrTotal   := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat ));
  end;
  //10/11/20/15
  if StrToFloat(FormatFloat('0.00000',vPerc_Reducao_Base)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrTotal := StrToCurr(FormatCurr('0.00',vVlrTotal * (vPerc_Reducao_Base / 100)))
    else
      vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal * (vPerc_Reducao_Base / 100)));
  end;
  //**************

  if copy(fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString,1,1) <> '3' then
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensCALCULARICMSSOBREIPI.AsString = 'S' then
      vVlrTotal   := StrToCurr(FormatCurr('0.00',vVlrTotal + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat));

  if StrToFloat(FormatFloat('0.00',vPerc_Proprio)) <= 0 then
    vPerc_Proprio := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsUFPERC_ICMS.AsFloat));
  if StrToFloat(FormatFloat('0.00',vPerc_Interno)) <= 0 then
    vPerc_Interno := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat));

  //10/05/2013 Conforme a Jaque a lista camex vai ser usado pra todos menos a origem 0
  //if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '6') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '7')) and (fDMCadNotaFiscal.cdsClienteUF.AsString <> fDMCadNotaFiscal.cdsFilialUF.AsString) then
  //26/02/2015 alterada conforme Carlos viu com a Jaque para a Skala
  //if (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString <> '0') and (fDMCadNotaFiscal.cdsClienteUF.AsString <> fDMCadNotaFiscal.cdsFilialUF.AsString) then
  if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '1') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '2') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '3')
    or (fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '8')) and ((fDMCadNotaFiscal.cdsClienteUF.AsString <> fDMCadNotaFiscal.cdsFilialUF.AsString) and (fDMCadNotaFiscal.cdsClienteUF.AsString <> 'EX')) then
    vPerc_Proprio := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsFilialPERC_LISTA_CAMEX.AsFloat));

  if StrToFloat(FormatFloat('0.00',vPerc_Proprio)) > 0 then
  begin
    //if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then vIcmsProprio := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * vPerc_Proprio / 100))
    //else vIcmsProprio := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * vPerc_Proprio / 100));
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vIcmsProprio := StrToCurr(FormatCurr('0.00',vVlrTotal * vPerc_Proprio / 100))
    else
      vIcmsProprio := StrToFloat(FormatFloat('0.00',vVlrTotal * vPerc_Proprio / 100));
  end;
  vBaseSubst := vBaseICMAux;
  //01/12/2015
  if StrToFloat(FormatFloat('0.00',vPercRedST)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vBaseSubst := vBaseSubst - StrToCurr(FormatCurr('0.00',(vBaseSubst * vPercRedST) / 100))
    else
      vBaseSubst := vBaseSubst - StrToFloat(FormatFloat('0.00',(vBaseSubst * vPercRedST) / 100));
  end;
  //*****************


  //23/05/2014
  vPerc_MVA  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFMVAINTERNO.AsFloat));
  vPerc_MVA2 := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFMVAINTERNO.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFMVAINTERNO.AsFloat)) > 0 then
  begin
    //28/05/2014
    vPerc_Red_MVA := 0;
    if (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA.AsFloat)) > 0) then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA.AsFloat))
    else
    if (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString <> 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_GERAL.AsFloat)) > 0) then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_GERAL.AsFloat));
    //16/10/2018
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat)) > 0) and (vTipo_Cliente = 'G') then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat))
    else
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat)) > 0) and (vTipo_Cliente = 'S') then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat));
    //********************
    if StrToFloat(FormatFloat('0.0000',vPerc_Red_MVA)) > 0 then
      vPerc_MVA := StrToFloat(FormatFloat('0.00',vPerc_MVA - (vPerc_MVA * vPerc_Red_MVA / 100)));
    vPerc_MVA2 := StrToCurr(FormatCurr('0.000',vPerc_MVA));
  end;

  if (fDMCadNotaFiscal.qNCM_UFAJUSTAR_MVA.AsString = 'A') or (vTipo_Cliente = fDMCadNotaFiscal.qNCM_UFAJUSTAR_MVA.AsString) then
  begin
    vPerc_MVA         := StrToCurr(FormatCurr('0.0000',(vPerc_MVA / 100) + 1));
    vPerc_Proprio_Aux := StrToCurr(FormatCurr('0.00',(100 - vPerc_Proprio)));
    vPerc_Interno_Aux := StrToCurr(FormatCurr('0.00',(100 - vPerc_Interno)));
    vPerc_MVA         := StrToCurr(FormatCurr('0.00',((((vPerc_MVA * vPerc_Proprio_Aux) / vPerc_Interno_Aux) - 1) * 100)));
    vPerc_MVA2        := StrToCurr(FormatCurr('0.00',vPerc_MVA));
  end;

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFMVAINTERNO.AsFloat)) > 0 then
  begin
    //28/05/2014
    //16/10/2018 Colocado acima do cálculo de ajuste
    {vPerc_Red_MVA := 0;
    if (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA.AsFloat)) > 0) then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA.AsFloat))
    else
    if (fDMCadNotaFiscal.cdsFilialSIMPLES.AsString <> 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_GERAL.AsFloat)) > 0) then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_GERAL.AsFloat));
    //16/10/2018
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat)) > 0) and (vTipo_Cliente = 'G') then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_GERAL.AsFloat))
    else
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat)) > 0) and (vTipo_Cliente = 'S') then
      vPerc_Red_MVA := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qNCM_UFPERC_RED_MVA_CLI_SIMPLES.AsFloat));}
    //********************
      
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin

      vBaseSubst := StrToCurr(FormatCurr('0.00',vBaseSubst + (vBaseSubst * vPerc_MVA / 100)));
      //16/10/2018
      //if (StrToCurr(FormatCurr('0.00',vPerc_Red_MVA)) > 0) then
      //  vBaseSubst := StrToCurr(FormatCurr('0.00',(vBaseSubst - (vBaseSubst * vPerc_Red_MVA) / 100)));
      //****************
      //if StrToCurr(FormatCurr('0.00',vPercRedST)) > 0 then
        //vBaseSubst := StrToCurr(FormatCurr('0.00',vBaseSubst - (vBaseSubst * vPercRedST / 100)));
      //vBaseSubst := StrToCurr(FormatCurr('0.00',vBaseSubst + (vBaseSubst * vPerc_MVA / 100)));
    end
    else
    begin
      vBaseSubst := StrToFloat(FormatFloat('0.00',vBaseSubst + (vBaseSubst * vPerc_MVA / 100)));
      //if (StrToFloat(FormatFloat('0.00',vPerc_Red_MVA)) > 0) then
      //  vBaseSubst := StrToFloat(FormatFloat('0.00',(vBaseSubst - (vBaseSubst * vPerc_Red_MVA) / 100)));
    end;
  end;
  //************************


  //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat)) > 0 then
    //vVlrSubst := StrToFloat(FormatFloat('0.00',vBaseSubst * fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat / 100)) - vIcmsProprio;
  if StrToFloat(FormatFloat('0.00',vPerc_Interno)) > 0 then
  begin
    vIcmsInterno := StrToCurr(FormatCurr('0.00',vBaseSubst * vPerc_Interno / 100));
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrSubst := StrToCurr(FormatCurr('0.00',(vBaseSubst * vPerc_Interno / 100) - vIcmsProprio))
    else
      vVlrSubst := StrToFloat(FormatFloat('0.00',(vBaseSubst * vPerc_Interno / 100) - vIcmsProprio));
  end;
  if StrToFloat(FormatFloat('0.00',vVlrSubst)) > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat := vBaseSubst;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat  := vVlrSubst;
    if StrToFloat(FormatFloat('0.00',vPerc_Red_MVA)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST.AsFloat := StrToFloat(FormatFloat('0.0000',vPerc_Red_MVA))
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST.AsFloat := StrToFloat(FormatFloat('0.0000',vPercRedST));
    //fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_MVA.AsFloat               := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.qNCM_UFMVAINTERNO.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_MVA.AsFloat               := StrToFloat(FormatFloat('0.000',vPerc_MVA2));

    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat := StrToFloat(FormatFloat('0.000',vPerc_Interno));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO.AsFloat := StrToFloat(FormatFloat('0.000',vPerc_Proprio));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat  := StrToFloat(FormatFloat('0.000',vIcmsProprio));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat := StrToFloat(FormatFloat('0.000',vVlrTotal));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO.AsFloat  := StrToFloat(FormatFloat('0.000',vIcmsInterno));
  end;
  if vID_OBS_Lei > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OBS_LEI_NCM.AsInteger := vID_OBS_Lei
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OBS_LEI_NCM.Clear;
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString = 'CST') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString := '';

  fDMCadNotaFiscal.qNCM_UF.Close;
  fDMCadNotaFiscal.qProduto_UF.Close;
end;

procedure prc_Calcular_Tributos_Transparencia(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
  vPerc: Real;
begin
  {fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat := 0;
  if (fDMCadNotaFiscal.cdsCFOPGERAR_TRIBUTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO.AsFloat)) > 0) then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO.AsFloat) / 100))
    else
      vAux := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO.AsFloat) / 100));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  end;}

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat           := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat  := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat := 0;
  if (fDMCadNotaFiscal.cdsCFOPGERAR_TRIBUTO.AsString = 'S') then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat)) > 0) then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vAux := StrToCurr(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat) / 100))
      else
        vAux := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat) / 100));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    end;
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)) > 0) then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vAux := StrToCurr(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat) / 100))
      else
        vAux := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat) / 100));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    end;
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)) > 0) then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vAux := StrToCurr(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat) / 100))
      else
        vAux := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat) / 100));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat
                                                              + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat
                                                              + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat;
  end;
end;

procedure prc_Calcular_Peso(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vVlrAux: Real;
  vQtdeAux : Real;
begin
  if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));
  if fDMCadNotaFiscal.cdsParametrosCALCULAR_PESO_CONSUMO.AsString = 'S' then
  begin
    vVlrAux := 0;
    fDMCadNotaFiscal.cdsProduto_Consumo.Close;
    fDMCadNotaFiscal.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.cdsProduto_Consumo.Open;
    fDMCadNotaFiscal.cdsProduto_Consumo.First;
    while not fDMCadNotaFiscal.cdsProduto_Consumo.Eof do
    begin
      if fDMCadNotaFiscal.cdsProduto_ConsumoTIPO_CONSUMO.AsString = 'T' then
      begin
        fDMCadNotaFiscal.cdsProduto_Consumo_Tam.Close;
        fDMCadNotaFiscal.sdsProduto_Consumo_Tam.ParamByName('ID').AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
        fDMCadNotaFiscal.sdsProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
        fDMCadNotaFiscal.sdsProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := fDMCadNotaFiscal.cdsProduto_ConsumoITEM.AsInteger;
        fDMCadNotaFiscal.cdsProduto_Consumo_Tam.Open;
        if not fDMCadNotaFiscal.cdsProduto_Consumo_Tam.IsEmpty then
          vVlrAux := StrToFloat(FormatFloat('0.00000',(fDMCadNotaFiscal.cdsProduto_Consumo_TamQTD_CONSUMO.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)));
      end
      else
      begin
        vVlrAux := StrToFloat(FormatFloat('0.00000',(fDMCadNotaFiscal.cdsProduto_ConsumoQTD_CONSUMO.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)));
      end;
      //fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat + vVlrAux));
      vPesoLiquido := StrToFloat(FormatFloat('0.00000',vPesoLiquido + vVlrAux));
      fDMCadNotaFiscal.cdsProduto_Consumo.Next;
    end;
  end
  else
  begin
  vQtdeAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
  if (fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString <> fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString) and
      (fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat > 0) then
    vQtdeAux := vQtdeAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat;
    //Foi incluido 07/11/2013 para as empresas de injetados
    fDMCadNotaFiscal.qPeso_Tam.Close;
    fDMCadNotaFiscal.qPeso_Tam.ParamByName('ID').AsInteger     := fDMCadNotaFiscal.cdsProdutoID.AsInteger;
    fDMCadNotaFiscal.qPeso_Tam.ParamByName('TAMANHO').AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
    fDMCadNotaFiscal.qPeso_Tam.Open;
    vVlrAux := 0;
    if StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.qPeso_TamPESO_BRUTO.AsFloat)) > 0 then
      vVlrAux := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.qPeso_TamPESO_BRUTO.AsFloat * vQtdeAux))  //fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat ))
    else
    if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPESOBRUTO.AsFloat)) > 0 then
      vVlrAux := fDMCadNotaFiscal.cdsProdutoPESOBRUTO.AsFloat * vQtdeAux; //fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
    vPesoBruto := StrToFloat(FormatFloat('0.00000',vPesoBruto + vVlrAux));
    vVlrAux := 0;
    if StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.qPeso_TamPESO_LIQUIDO.AsFloat)) > 0 then
      vVlrAux := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.qPeso_TamPESO_LIQUIDO.AsFloat * vQtdeAux)) //fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat ))
    else
    if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPESOLIQUIDO.AsFloat)) > 0 then
      vVlrAux := fDMCadNotaFiscal.cdsProdutoPESOLIQUIDO.AsFloat * vQtdeAux; //fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
    vPesoLiquido := StrToFloat(FormatFloat('0.00000',vPesoLiquido + vVlrAux));
  end;
end;

function fnc_Calcula_Importacao(fDMCadNotaFiscal: TDMCadNotaFiscal): Real;
var
  vAux: Real;
  vVlrFreteAux : Real;
begin
  Result := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat)) > 0 then
  begin
    vVlrFreteAux := 0;
    if fDMCadNotaFiscal.cdsNotaFiscalSOMAR_FRETE_II.AsString = 'S' then
      vVlrFreteAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat;
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + vVlrFreteAux)  * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat) / 100))
    else
      vAux := StrToFloat(FormatFloat('0.00',((fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat + vVlrFreteAux) * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IMPORTACAO.AsFloat) / 100));
    Result := StrToFloat(FormatFloat('0.00',vAux));
  end;
end;

function fnc_Gerar_NotaFiscal_Parc(fDMCadNotaFiscal: TDMCadNotaFiscal): Boolean;
var
  vParcAux: Integer;
  vDataAux: TDateTime;
  vDataOri: TDateTime;
  vValorParc, vValorOri: Real;
  i: Integer;
  vQtdParc: Integer;
  vID_Tipo_Cobranca_Aux, vID_Conta_Aux: Integer;
  vValorParc_Com, vValorOri_Com: Real;
  vPerc_Base_Com: Real;
  vVlrImposto : Real;
  vVlrFrete : Real;
  vVlrDup : Real;
  vVlrDupAux : Real;
  viparc : Integer;
  vVlrParc_Prim : Real;
  vVlrParc_Ult : Real;
  vValorParc_Orig : Real;
begin
  Result := False;
  fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;

  vPerc_Base_Com := StrToFloat(FormatFloat('0.00',100));
  if fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat)) > 0 then
      vPerc_Base_Com := StrToFloat(FormatFloat('0.00000',(fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat) * 100));
  end;

  fDMCadNotaFiscal.vMsgErroParc := '';
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString <> 'P' then
  begin
    Result := True;
    exit;
  end;
  
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0 then
    fDMCadNotaFiscal.vMsgErroParc := fDMCadNotaFiscal.vMsgErroParc + #13 + '*** Valor de duplicatas zerado!';
  if fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger < 1 then
    fDMCadNotaFiscal.vMsgErroParc := fDMCadNotaFiscal.vMsgErroParc + #13 + '*** Condição de pagamento não informada!';
  if fDMCadNotaFiscal.vMsgErroParc <> '' then
    Exit;
  fDMCadNotaFiscal.cdsCondPgto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsCondPgto_Dia.RecordCount <= 0) and (fDMCadNotaFiscal.cdsCondPgtoTIPO_CONDICAO.AsString <> 'F') then
    fDMCadNotaFiscal.vMsgErroParc := fDMCadNotaFiscal.vMsgErroParc + #13 + '*** Não existem dias informados no cadastro de condição de pagamento!';
  if (fDMCadNotaFiscal.cdsCondPgtoQTD_PARCELA.AsInteger <= 0) and (fDMCadNotaFiscal.cdsCondPgtoTIPO_CONDICAO.AsString = 'F') then
    fDMCadNotaFiscal.vMsgErroParc := fDMCadNotaFiscal.vMsgErroParc + #13 + '*** Não existe qtd. de parcelas no cadastro da condição de pagamento!';
  if fDMCadNotaFiscal.vMsgErroParc <> '' then
    Exit;

  if (fDMCadNotaFiscal.cdsCondPgtoTIPO_CONDICAO.AsString = 'F') and (fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime > 10)  then
    vDataOri := fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime
  else
  if fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime < fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime then
    vDataOri := fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime
  else
    vDataOri := fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime;

  //03/06/2018
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  //**********

  if fDMCadNotaFiscal.cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
    vQtdParc := fDMCadNotaFiscal.cdsCondPgtoQTD_PARCELA.AsInteger
  else
    vQtdParc   := fDMCadNotaFiscal.cdsCondPgto_Dia.RecordCount;
    
  //21/09/2018
  vVlrDup     := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat));
  vVlrFrete   := 0;
  vVlrImposto := 0;
  vVlrParc_Prim := 0;
  vVlrParc_Ult  := 0;
  if fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S' then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString = 'S' then
    begin
      vVlrFrete := fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
      if fDMCadNotaFiscal.cdsCondPgtoFRETE.AsString = 'P' then
        vVlrParc_Prim := vVlrParc_Prim + fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat
      else
      if fDMCadNotaFiscal.cdsCondPgtoFRETE.AsString = 'U' then
        vVlrParc_Ult := vVlrParc_Ult + fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
    end;
    if fDMCadNotaFiscal.cdsCondPgtoIMPOSTOS.AsString = 'P' then
      vVlrParc_Prim := StrToFloat(FormatFloat('0.00',vVlrParc_Prim + fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat))
    else
    if fDMCadNotaFiscal.cdsCondPgtoIMPOSTOS.AsString = 'U' then
      vVlrParc_Ult := StrToFloat(FormatFloat('0.00',vVlrParc_Ult + fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat));
    vVlrImposto := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat));
    vVlrDup     := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - vVlrParc_Prim - vVlrParc_Ult));
  end;
  //***************

  if (fDMCadNotaFiscal.cdsCondPgtoENTRADA.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat)) <= 0) then
  begin
    //11/05/2016
    if (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat)) > 0) then
    else
    begin
      i := vQtdParc + 1;
      //01/06/2018 Foi incluido a opção se usa o % nas parcelas
      if (fDMCadNotaFiscal.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsCondPgtoPERC_ENTRADA.AsFloat)) > 0) then
      begin
        //21/09/2018
        if (fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S') then
          vValorParc := StrToFloat(FormatFloat('0.00',(vVlrDup * fDMCadNotaFiscal.cdsCondPgtoPERC_ENTRADA.AsFloat) / 100))
        else
          vValorParc := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat * fDMCadNotaFiscal.cdsCondPgtoPERC_ENTRADA.AsFloat) / 100));
        //*****************
      end
      else
      begin
        //21/09/2018
        if (fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S') then
          vValorParc := StrToFloat(FormatFloat('0.00',vVlrDup / i))
        else
          vValorParc := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat / i));
        //****************
      end;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',vValorParc));
      //21/09/2018
      if fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',vValorParc + vVlrParc_Prim));
        vVlrParc_Prim := StrToFloat(FormatFloat('0.00',0));
      end;
      //**********************
    end;
    //08/02/2016 Base Comissão
    //vValorParc_Com := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat / i));
    //fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA_COM.AsFloat := StrToFloat(FormatFloat('0.00',vValorParc_Com));
    //****************
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat)) > 0 then
  begin
    vValorParc   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat));
    if StrToFloat(FormatFloat('0.00',vVlrParc_Ult)) > 0 then
      vValorParc := StrToFloat(FormatFloat('0.00',vValorParc - vVlrParc_Ult));
    //08/02/2016
    //vValorParc_Com := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA_COM.AsFloat));
    //****
    if fDMCadNotaFiscal.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger > 0 then
      vID_Tipo_Cobranca_Aux := fDMCadNotaFiscal.cdsParametrosID_TIPO_COBRANCA_PADRAO.AsInteger
    else
      vID_Tipo_Cobranca_Aux := fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger;
    if fDMCadNotaFiscal.cdsParametrosID_CONTA_PADRAO.AsInteger > 0 then
      vID_Conta_Aux := fDMCadNotaFiscal.cdsParametrosID_CONTA_PADRAO.AsInteger
    else
      vID_Conta_Aux := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger;
    //08/02/2016  Foi incluido o valor de base da comissão
    //Entrada começa com a parcela 1, alteração feita 11/09/2018
    fDMCadNotaFiscal.prc_Gravar_NotaFiscal_Parc(1,vID_Tipo_Cobranca_Aux,vID_Conta_Aux,vDataOri,fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat,StrToFloat(FormatFloat('0.00000',vPerc_Base_Com)),
                                                fDMCadNotaFiscal.cdsClienteMDIA1.AsInteger,fDMCadNotaFiscal.cdsClienteMDIA2.AsInteger);
    vVlrParc_Prim := StrToFloat(FormatFloat('0.00',0));
  end
  else
  begin
    //21/09/2018
    if fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S' then
      vValorParc := StrToFloat(FormatFloat('0.00',vVlrDup))
    else
      vValorParc := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat));
    //08/02/2016
    vValorParc_Com := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat));
  end;
  vValorOri  := StrToFloat(FormatFloat('0.00',vValorParc + vVlrParc_Prim + vVlrParc_Ult));
  vValorParc := StrToFloat(FormatFloat('0.00',vValorParc / vQtdParc));
  //08/02/2016
  vValorOri_Com  := StrToFloat(FormatFloat('0.00',vValorParc_Com));
  vValorParc_Com := StrToFloat(FormatFloat('0.00',vValorParc_Com / vQtdParc));
  //**************
  i := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat)) > 0 then
  begin
    i        := 1;
    vQtdParc := vQtdParc + 1;
  end;
  //11/09/2018  Entrada não pode mais ser a parcela 0
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat)) > 0 then
  begin
    i        := i + 1;
    vQtdParc := vQtdParc + 1;
  end;

  //19/11/2018
  if (vQtdParc = 1) and (fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S') then
  begin
    vVlrParc_Prim := StrToFloat(FormatFloat('0.00',0));
    vVlrParc_Ult  := StrToFloat(FormatFloat('0.00',0));
  end;
  //*************

  if fDMCadNotaFiscal.cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
  begin
    vQtdParc := fDMCadNotaFiscal.cdsCondPgtoQTD_PARCELA.AsInteger;
    vDataAux := vDataOri;
    while vQtdParc > 0 do
    begin
      i := i + 1;
      if vQtdParc = 1 then
      begin
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
        //08/02/2016
        vValorParc_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com));
        //************
        if fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S' then
          vVlrParc_Prim := StrToFloat(FormatFloat('0.00',0));
      end;
      if (vQtdParc = fDMCadNotaFiscal.cdsCondPgtoQTD_PARCELA.AsInteger) and (vQtdParc > 1) then
      begin
        vValorParc   := StrToFloat(FormatFloat('0.00',vValorParc + vVlrParc_Ult));
        vVlrParc_Ult := StrToFloat(FormatFloat('0.00',0));
      end;
      vDataAux := IncMonth(vDataAux);
      fDMCadNotaFiscal.prc_Gravar_NotaFiscal_Parc(i,fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger,
                                                  vDataAux,vValorParc,StrToFloat(FormatFloat('0.00000',vPerc_Base_Com)),fDMCadNotaFiscal.cdsClienteMDIA1.AsInteger,fDMCadNotaFiscal.cdsClienteMDIA2.AsInteger);
      vValorOri     := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      //08/02/2016
      vValorOri_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com - vValorParc_Com));
      vQtdParc      := vQtdParc - 1;
    end;
  end
  else
  begin
    viparc          := 0;
    vValorParc_Orig := StrToFloat(FormatFloat('0.00',vValorParc));
    fDMCadNotaFiscal.cdsCondPgto_Dia.First;
    while not fDMCadNotaFiscal.cdsCondPgto_Dia.Eof do
    begin
      viparc := viparc + 1;
      i := i + 1;
      vDataAux := vDataOri + fDMCadNotaFiscal.cdsCondPgto_DiaQTDDIAS.AsInteger;

      if i = vQtdParc then
      begin
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
        //08/02/2016
        vValorParc_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com));
      end
      else
      if (fDMCadNotaFiscal.qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsCondPgto_DiaPERC_PARCELA.AsFloat)) > 0) then
      begin
        if (fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S') then
          vValorParc := StrToFloat(FormatFloat('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - vVlrParc_Prim - vVlrParc_Ult - fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat) * fDMCadNotaFiscal.cdsCondPgto_DiaPERC_PARCELA.AsFloat) / 100))
        else
          vValorParc     := StrToFloat(FormatFloat('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat) * fDMCadNotaFiscal.cdsCondPgto_DiaPERC_PARCELA.AsFloat) / 100));
        vValorParc_Com := StrToFloat(FormatFloat('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat) * fDMCadNotaFiscal.cdsCondPgto_DiaPERC_PARCELA.AsFloat) / 100));
      end;
      if (viparc = 1) and (fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S') then
      begin
        vValorParc    := StrToFloat(FormatFloat('0.00',vValorParc + vVlrParc_Prim));
        vVlrParc_Prim := StrToFloat(FormatFloat('0.00',0));
      end;
      if (viparc = fDMCadNotaFiscal.cdsCondPgto_Dia.RecordCount) and (fDMCadNotaFiscal.qParametros_FinCONDPGTO_FRETE_IMP.AsString = 'S') then
      begin
        //vValorParc    := StrToFloat(FormatFloat('0.00',vValorParc + vVlrParc_Ult));
        vVlrParc_Ult := StrToFloat(FormatFloat('0.00',0));
      end;
      fDMCadNotaFiscal.prc_Gravar_NotaFiscal_Parc(i,fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger,fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger,
                                                   vDataAux,vValorParc,StrToFloat(FormatFloat('0.00000',vPerc_Base_Com)),fDMCadNotaFiscal.cdsClienteMDIA1.AsInteger,fDMCadNotaFiscal.cdsClienteMDIA2.AsInteger);
      vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      //08/02/2016
      vValorOri_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com - vValorParc_Com));
      fDMCadNotaFiscal.cdsCondPgto_Dia.Next;
      vValorParc := StrToFloat(FormatFloat('0.00',vValorParc_Orig));
    end;
  end;
  Result := True;
end;

procedure prc_Calcula_Volume(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  sds: TSQLDataSet;
  vAux: Integer;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT EMB.qtd_emb QTD_CAPACIDADE, EMB.ID_MATERIAL'
                       + ' FROM produto_emb EMB '
                       + ' WHERE TIPO_EMB = ' + QuotedStr('C')
                       + '   AND EMB.ID = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger);
    sds.Open;

    if fDMCadNotaFiscal.mEmbAux.Locate('ID_Material;Qtd_Capacidade',VarArrayOf([sds.FieldByName('ID_MATERIAL').AsInteger,sds.FieldByName('QTD_CAPACIDADE').AsInteger]),[locaseinsensitive]) then
      fDMCadNotaFiscal.mEmbAux.Edit
    else
    begin              
      fDMCadNotaFiscal.mEmbAux.Insert;
      fDMCadNotaFiscal.mEmbAuxID_Material.AsInteger    := sds.FieldByName('ID_MATERIAL').AsInteger;
      fDMCadNotaFiscal.mEmbAuxQtd_Capacidade.AsInteger := sds.FieldByName('QTD_CAPACIDADE').AsInteger;
    end;
    fDMCadNotaFiscal.mEmbAuxQtd_Produto.AsInteger := fDMCadNotaFiscal.mEmbAuxQtd_Produto.AsInteger + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsInteger;
    fDMCadNotaFiscal.mEmbAux.Post;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Le_mEmbAux(fDMCadNotaFiscal: TDMCadNotaFiscal): Integer;
var
  vQtdAux: Integer;
  vTotalVol: Integer;
begin
  vQtdAux   := 0;
  vTotalVol := 0;
  fDMCadNotaFiscal.mEmbAux.IndexFieldNames := 'ID_Material;Qtd_Capacidade';
  fDMCadNotaFiscal.mEmbAux.First;
  while not fDMCadNotaFiscal.mEmbAux.Eof do
  begin
    if (fDMCadNotaFiscal.mEmbAuxQtd_Capacidade.AsInteger > 0) and (fDMCadNotaFiscal.mEmbAuxQtd_Produto.AsInteger > 0) then
    begin
      vQtdAux := fDMCadNotaFiscal.mEmbAuxQtd_Produto.AsInteger div fDMCadNotaFiscal.mEmbAuxQtd_Capacidade.AsInteger;
      if fDMCadNotaFiscal.mEmbAuxQtd_Produto.AsInteger mod fDMCadNotaFiscal.mEmbAuxQtd_Capacidade.AsInteger > 0 then
        vQtdAux := vQtdAux + 1;
      vTotalVol := vTotalVol + vQtdAux;
    end;
    fDMCadNotaFiscal.mEmbAux.Next;
  end;
  Result := vTotalVol;
end;

procedure prc_Calcular_TaxaCiscomex_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcTaxaCiscomex))
  else
  if StrToFloat(FormatFloat('0.00',vCalcTaxaCiscomex)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcTaxaCiscomex * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcTaxaCiscomex * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcTaxaCiscomex := StrToFloat(FormatFloat('0.00',vCalcTaxaCiscomex - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcTaxaCiscomex)) <= 0 then
    vCalcTaxaCiscomex := StrToFloat(FormatFloat('0.00',0));
end;

procedure prc_Calcular_AFRMM_Novo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  vAux := 0;
  if vContadorOutros <= 0 then
    vAux := StrToFloat(FormatFloat('0.00',vCalcAFRM))
  else
  if StrToFloat(FormatFloat('0.00',vCalcAFRM)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    begin
      vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToCurr(FormatCurr('0.00',(vCalcAFRM * vAux) / 100));
    end
    else
    begin
      vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
      vAux := StrToFloat(FormatFloat('0.00',(vCalcAFRM * vAux) / 100));
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  vCalcAFRM := StrToFloat(FormatFloat('0.00',vCalcAFRM - vAux));
  if StrToFloat(FormatFloat('0.00',vCalcAFRM)) <= 0 then
    vCalcAFRM := StrToFloat(FormatFloat('0.00',0));
end;

procedure prc_Calcular_Diferencial_ICMS(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vPerc_Destino: Real;
  vPerc_Interno: Real;
  vPerc_Diferenca: Real;
  vVlr_Dif: Real;
  vBaseAux: Real;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat         := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat          := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_MVA.AsFloat               := StrToFloat(FormatFloat('0.0',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO.AsFloat  := StrToFloat(FormatFloat('0.00',0));

  if fDMCadNotaFiscal.cdsUFUF.AsString <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,([Locaseinsensitive]));
  vPerc_Destino := fDMCadNotaFiscal.cdsUFPERC_ICMS.AsFloat;

  //fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsFilialUF.AsString,([Locaseinsensitive]));
  vPerc_Interno := fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat;

  vPerc_Diferenca := StrToFloat(FormatFloat('0.000',vPerc_Interno - vPerc_Destino));
  if StrToFloat(FormatFloat('0.000',vPerc_Diferenca)) <= 0 then
    exit;

  vBaseAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat;
  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    vBaseAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat
               + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat +
                 fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat));
  vVlr_Dif := StrToFloat(FormatFloat('0.00',(vBaseAux * vPerc_Diferenca) / 100));

  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat := vBaseAux;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat  := vVlr_Dif;
end;

procedure prc_Gravar_cdsNotaFiscal_ItensAux(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vIDCor: Integer;
  vTamanho: String;
begin
  vIDCor   := 0;
  vTamanho := '';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensAux.Close;
  fDMCadNotaFiscal.sdsNotaFiscal_ItensAux.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
  fDMCadNotaFiscal.sdsNotaFiscal_ItensAux.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensAux.Open;


  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
    vIDCor := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') then
    vTamanho := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
    
  if not fDMCadNotaFiscal.cdsNotaFiscal_ItensAux.IsEmpty then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAux.Edit
  else
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAux.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAuxID.AsInteger         := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAuxITEM.AsInteger       := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAuxID_PRODUTO.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAuxID_COR.AsInteger     := vIDCor;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAuxTAMANHO.AsString     := vTamanho;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensAuxQTD.AsFloat          := 0;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensAuxQTD.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensAux.Post;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensAux.ApplyUpdates(0);
end;

//4.00
procedure prc_Calcular_FCP(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vBaseAux : Real;
begin
  //28/06/2018
  if fDMCadNotaFiscal.cdsTab_CSTICMSID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger then
    fDMCadNotaFiscal.cdsTab_CSTICMS.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger,[loCaseInsensitive]);

  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat)) <= 0) or
     (fDMCadNotaFiscal.cdsTab_CSTICMSCALCULA_FCP.AsString <> 'S') or
     (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat)) > 0) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat  := StrToFloat(FormatFloat('0.00',0));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat :=StrToFloat(FormatFloat('0.00',0));
    exit;
  end;
  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat * fDMCadNotaFiscal.cdsUFPERC_CP.AsFloat / 100));
end;

//08/12/2015
procedure prc_Calcular_ICMS_UF_Dest(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux, vAux2: Real;
  vPerc_Partilha: Real;
  vVlr_ICMS_Int: Real;
  vVlr_ICMS_Ope: Real;
  vDifal: Real;
  vPerc_ICMS: Real;
  vBaseAux: Real;
begin
  //fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat      := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_UF_DEST.AsFloat  := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_PARTILHA.AsFloat := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat       := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat  := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat  := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat := 0;
  if fDMCadNotaFiscal.cdsFilialCALCULAR_DIFAL.AsString <> 'S' then
    exit;
  if YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) < 2016 then
    exit;
  if fDMCadNotaFiscal.cdsClienteUF.AsString = fDMCadNotaFiscal.cdsFilialUF.AsString then
    exit;
  if (fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger <> 1) then
    exit;
  if fDMCadNotaFiscal.cdsCFOPGERAR_ICMS.AsString <> 'S' then
    exit;
  if fDMCadNotaFiscal.qParametros_NFeCALCULAR_DIFAL.AsString = 'C' then
  begin
    if fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.AsInteger <> 9 then
      exit;
  end
  else
  begin
    if (fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger <> 1) then
      exit;
  end;
  if (copy(fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '3') or (copy(fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '7') then
    exit;
  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
  begin
    vBaseAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;
    vPerc_ICMS := fnc_busca_icm(fDMCadNotaFiscal);
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_INTER.AsFloat := vPerc_ICMS;
  end
  else
  begin
    vBaseAux   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
    vPerc_ICMS := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_INTER.AsFloat := vPerc_ICMS;
  end;
  vVlr_ICMS_Int := StrToFloat(FormatFloat('0.00',vBaseAux * vPerc_ICMS / 100));
  vVlr_ICMS_Ope := StrToFloat(FormatFloat('0.00',vBaseAux * fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat / 100));
  vDifal        := vVlr_ICMS_Ope - vVlr_ICMS_Int;

  if fDMCadNotaFiscal.cdsParametrosVERSAONFE.AsString = '3.10' then
  begin
    if fDMCadNotaFiscal.cdsUFPERC_CP.AsFloat > 0 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_CP.AsFloat));
      if fDMCadNotaFiscal.cdsFilialDIFAL_GERAR_VALORES.AsString = 'S' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat  := StrToFloat(FormatFloat('0.00',vBaseAux * fDMCadNotaFiscal.cdsUFPERC_CP.AsFloat / 100));
    end;
  end
  else
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsFilialDIFAL_GERAR_VALORES.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat := StrToFloat(FormatFloat('0.00',vBaseAux));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat := StrToFloat(FormatFloat('0.00',vBaseAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat / 100));
    end;
  end;

  fDMCadNotaFiscal.qIcmsPartilha.Close;
  fDMCadNotaFiscal.qIcmsPartilha.ParamByName('ANO').AsInteger := YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime);
  fDMCadNotaFiscal.qIcmsPartilha.Open;
  vPerc_Partilha := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qIcmsPartilhaPERC_DESTINO.AsFloat));
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.qIcmsPartilhaPERC_DESTINO.AsFloat)) <= 0) and (YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) >= 2019) then
    vPerc_Partilha := StrToFloat(FormatFloat('0.00',100));
  if (StrToFloat(FormatFloat('0.00',vPerc_Partilha)) <= 0) and (YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime) < 2019) then
    exit;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_PARTILHA.AsFloat := StrToFloat(FormatFloat('0.00',vPerc_Partilha));
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',vPerc_Partilha)) > 0) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_UF_DEST.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat));
    vAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat - vPerc_ICMS));
    if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
    begin
      //vAux2 := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat * vAux / 100));
      if StrToFloat(FormatFloat('0.00',vPerc_Partilha)) = 100 then
      begin
        if fDMCadNotaFiscal.cdsFilialDIFAL_GERAR_VALORES.AsString = 'S' then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat := StrToFloat(FormatFloat('0.00',vDifal))
      end
      else
      begin
        if fDMCadNotaFiscal.cdsFilialDIFAL_GERAR_VALORES.AsString = 'S' then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat  := StrToFloat(FormatFloat('0.00',vDifal * vPerc_Partilha / 100));
          if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
            fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat := StrToFloat(FormatFloat('0.00',0))
          else
            fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat := StrToFloat(FormatFloat('0.00',vDifal - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat));
        end;
      end;
    end;
  end;
end;

function fnc_busca_icm(fDMCadNotaFiscal: TDMCadNotaFiscal): Real;
begin
  Result := 0;
  if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));
  if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,([Locaseinsensitive]));
  if (fDMCadNotaFiscal.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosUSA_PERC_ORGAO_PUBLICO_IMP.AsString <> 'S') then
    Result := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsFilialPERC_LISTA_CAMEX.AsFloat))
  else
    Result := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS.AsFloat));
end;

procedure prc_Calculo_RECNF_Itens(fDMCadNotaFiscal: TDMCadNotaFiscal; Qtd, VlrUnitario, DescontoItem, PercDescontoItem, VlrTotal: Real; GeraDupl: String);
var
  vVlrTotalItem: Real;
  vVlrDescontoItem: Real;
  vVlrAux: Real;
  vVlrDescAux: Real;
begin
  if (StrToCurr(FormatCurr('0.0000',Qtd)) > 0) and (StrToCurr(FormatCurr('0.0000000000',VlrUnitario)) > 0) then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrTotalItem := StrToCurr(FormatCurr('0.00',Qtd * VlrUnitario))
    else
      vVlrTotalItem := StrToFloat(FormatFloat('0.00',Qtd * VlrUnitario));
  end
  else
    vVlrTotalItem := StrToCurr(FormatCurr('0.00',VlrTotal));

  if (StrToFloat(FormatFloat('0.0000',PercDescontoItem)) > 0) and (StrToFloat(FormatFloat('0.0000',DescontoItem)) <= 0) then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      DescontoItem := StrToCurr(FormatCurr('0.00',vVlrTotalItem * PercDescontoItem / 100))
    else
      DescontoItem := StrToFloat(FormatFloat('0.00',vVlrTotalItem * PercDescontoItem / 100));
  end;
  vVlrDescontoItem  := 0;
  vPesoBruto        := 0;
  vPesoLiquido      := 0;

  if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,([Locaseinsensitive]));
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,([Locaseinsensitive]));
  if fDMCadNotaFiscal.cdsUFUF.AsString <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,([Locaseinsensitive]));

  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'N') and (GeraDupl = 'S') then
  begin
    vVlrAux := StrToCurr(FormatCurr('0.00',vVlrTotalItem));
    if not fDMCadNotaFiscal.cdsNotaFiscal_Desconto.IsEmpty then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Desconto.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Eof do
      begin
        if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
          vVlrDescAux := StrToCurr(FormatCurr('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsFloat) / 100))
        else
          vVlrDescAux := StrToFloat(FormatFloat('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscal_DescontoPERC_DESCONTO.AsFloat) / 100));
        vVlrAux          := StrToFloat(FormatFloat('0.00',vVlrAux - vVlrDescAux));
        vVlrDescontoItem := StrToFloat(FormatFloat('0.00',vVlrDescontoItem + vVlrDescAux));
        fDMCadNotaFiscal.cdsNotaFiscal_Desconto.Next;
      end;
    end
    else
    if fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat > 0 then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
        vVlrDescontoItem := StrToCurr(FormatCurr('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat) / 100))
      else
        vVlrDescontoItem := StrToFloat(FormatFloat('0.00',(vVlrAux * fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat) / 100));
    end;
  end
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString <> 'N') and (StrToFloat(FormatFloat('0.000',PercDescontoItem)) > 0) then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrDescontoItem := StrToCurr(FormatCurr('0.00',vVlrTotalItem * PercDescontoItem / 100))
    else
      vVlrDescontoItem := StrToFloat(FormatFloat('0.00',vVlrTotalItem * PercDescontoItem / 100));
  end
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString <> 'N') and (StrToFloat(FormatFloat('0.000',DescontoItem)) > 0) then
    vVlrDescontoItem := StrToCurr(FormatCurr('0.00',DescontoItem));
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat)) > 0) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat := StrToCurr(FormatCurr('0.00',vVlrDescontoItem));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vVlrTotalItem - vVlrDescontoItem));

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat          := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat       := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat := 0;

  if GeraDupl = 'S' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat
                                                         - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat));
  end;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat
                                                     - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat));

  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));

  if fDMCadNotaFiscal.cdsCFOPSOMAR_VLRTOTALPRODUTO.AsString = 'S' then
   fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));

  fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',0));

  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;

  if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',0));

  prc_Calcular_Peso (fDMCadNotaFiscal);
  fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat + vPesoBruto));
  fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat + vPesoLiquido));
end;

procedure prc_Calcular_Desconto_RNF(fDMCadNotaFiscal: TDMCadNotaFiscal;Repetir: Boolean);
var
  vDesconto: Real;
  vDescAux: Real;
  vVlrAux: Real;
  vContador: Integer;
  vVlrTotalItens: Real;
  vDescontoItem: Real;
  vVlrDuplicata: Real;
  vVlrDuplicataOutros: Real;
  vQtdVolume: Integer;
  vID_PedAnt: Integer;
  sds: TSQLDataSet;
  vBaseComissao: Real;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount <= 0) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat             := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat := 0;
    
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat        := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DESC_SUFRAMA.AsFloat    := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATAOUTROS.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat         := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSOUTROS.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat             := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat    := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat        := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSOUTROS.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat    := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSTRANSF.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat         := 0;
    fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat      := 0;
  end;

  if (StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0) OR
     (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= 0) then
    exit;

  if not Repetir then
  begin
    vVlrDuplicata       := 0;
    vVlrDuplicataOutros := 0;
    vCalcTotalNota      := 0;
    vContador           := 0;
    vContadorOutros     := 0;
    vPesoBruto          := 0;
    vPesoLiquido        := 0;
    vFlagGeraDupl       := False;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
      begin
        vVlrDuplicata := vVlrDuplicata + StrToFloat(FormatFloat('0.00',vVlrAux));
        vContador     := vContador + 1;
      end;
      vCalcTotalNota := vCalcTotalNota + StrToFloat(FormatFloat('0.00',vVlrAux));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
      begin
        vContadorOutros := vContadorOutros + 1;
        vFlagGeraDupl   := True;
      end;
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'N' then
        vVlrDuplicataOutros := vVlrDuplicataOutros + StrToFloat(FormatFloat('0.00',vVlrAux));
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;
    if vFlagGeraDupl then
      vVlrDuplicataOutros := StrToFloat(FormatFloat('0.00',0))
    else
      vContador := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
    if vContadorOutros <= 0 then
    begin
      vContadorOutros := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
      vCalcTotalNota  := fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat;
    end;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat    := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat           := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat            := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat         := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat := 0;

    fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat     := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat   := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat      := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger       := 0;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat    := 0;

    if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
      fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
    if fDMCadNotaFiscal.cdsUFUF.AsString <> fDMCadNotaFiscal.cdsClienteUF.AsString then
      fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);

    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'N' then
      vDesconto := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat))
    else
    begin
      vDesconto := StrToFloat(FormatFloat('0.00',0));
      vContador := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := 0;
    end;
    vDescAux := 0;
  end;

  vQtdVolume := 0;
  vID_PedAnt := 0;
  fDMCadNotaFiscal.mEmbAux.EmptyDataSet;
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    vDescontoItem  := 0;
    vVlrTotalItens := 0;

    if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));

    if not Repetir then
    begin
      if (fDMCadNotaFiscal.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and
         (vID_PedAnt <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger) then
      begin
        if not fDMCadNotaFiscal.mPedidoAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger]) then
        begin
          fDMCadNotaFiscal.mPedidoAux.Insert;
          fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger      := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
          fDMCadNotaFiscal.mPedidoAuxVlr_Adiantamento.AsFloat := StrToFloat(FormatFloat('0.00',0));
          fDMCadNotaFiscal.mPedidoAuxVlr_Entrada.AsFloat      := StrToFloat(FormatFloat('0.00',0));
          fDMCadNotaFiscal.mPedidoAux.Post;
        end;
      end;

      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;

      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := 0;

      vVlrTotalItens := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));

      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
      begin
        if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat)) > 0 then
          vDesconto := StrToCurr(FormatCurr('0.00',vVlrTotalItens * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat / 100))
        else
        if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0 then
          vDesconto := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat));
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat       := 0;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat := 0;
    end;
    vDescAux := 0;
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S') and (vFlagGeraDupl) then
    begin
      vContador := vContador - 1;
      if Repetir then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;

      if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0) then
      begin
        if (vContador <= 0) or (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I') then
          vDescAux := StrToFloat(FormatFloat('0.00',vDesconto))
        else
        begin
          vDescAux := StrToCurr(FormatCurr('0.00000',(vVlrTotalItens / vVlrDuplicata) * 100));
          vDescAux := StrToCurr(FormatCurr('0.00',(vDescAux * fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat) / 100));
          if StrToFloat(FormatFloat('0.00',vDescAux)) > StrToFloat(FormatFloat('0.00',vDesconto)) then
            vDescAux := StrToFloat(FormatFloat('0.00',vDesconto));
        end;
        vDesconto     := StrToCurr(FormatCurr('0.00',vDesconto - vDescAux));
        vDescontoItem := StrToFloat(FormatFloat('0.00',vDescAux));
      end;
    end
    else
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'N') and not(vFlagGeraDupl) then
    begin
      vContador := vContador - 1;
      if Repetir then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;

      if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0) then
      begin
        if (vContador <= 0) or (fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I') then
          vDescAux := StrToFloat(FormatFloat('0.00',vDesconto))
        else
        begin
          vDescAux := StrToCurr(FormatCurr('0.00000',(vVlrTotalItens / vVlrDuplicataOutros) * 100));
          vDescAux := StrToCurr(FormatCurr('0.00',(vDescAux * fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat) / 100));
          if StrToFloat(FormatFloat('0.00',vDescAux)) > StrToFloat(FormatFloat('0.00',vDesconto)) then
            vDescAux := StrToFloat(FormatFloat('0.00',vDesconto));
        end;
        vDesconto     := StrToCurr(FormatCurr('0.00',vDesconto - vDescAux));
        vDescontoItem := StrToFloat(FormatFloat('0.00',vDescAux));
      end;
    end;

    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsBrowse] then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + vDescAux
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat + vDescAux;
    vDescAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));

    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',(fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat *
                                              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat) - vDescAux));

    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := 0;

    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat         := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat          := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat  := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO.AsFloat  := 0;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensDIFERENCA_ICMS.AsString = 'S' then
       prc_Calcular_Diferencial_ICMS(fDMCadNotaFiscal);

    if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + vVlrTotalItens - vDescontoItem));
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToCurr(FormatCurr('0.00',vVlrTotalItens - vDescontoItem));
    end;

    fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsCurrency +
                                                          vVlrTotalItens - vDescontoItem));

    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString = 'I' then
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat + vDescontoItem));

    fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency + vVlrTotalItens));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsCurrency - vDescontoItem));

    vBaseComissao := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat));

    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
    end;

    if Repetir then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;

    if not repetir then
      prc_Calcular_Peso(fDMCadNotaFiscal);
    vID_PedAnt := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;

  if (StrToFloat(FormatFloat('0.00',vDesconto)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcFrete)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcSeguro)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcTaxaCiscomex)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcAFRM)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcOutrasDesp)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcImportacao)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcAduaneira)) > 0)
    or (StrToFloat(FormatFloat('0.00',vCalcVlr_Outros)) > 0) then
    prc_Calcular_Desconto_RNF(fDMCadNotaFiscal, True);

  fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat
                                       + fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat
                                       + fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat;

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat)) <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := '';
  if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTOORIG.AsFloat := StrToFloat(FormatFloat('0.0000',0));

  fDMCadNotaFiscal.cdsNotaFiscalPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.0000',0));
  if StrToFloat(FormatFloat('0.00000',vPesoBruto)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat := StrToFloat(FormatFloat('0.00000',vPesoBruto));
  if StrToFloat(FormatFloat('0.00000',vPesoLiquido)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat := StrToFloat(FormatFloat('0.00000',vPesoLiquido));

  fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat));
end;

procedure prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal: TDMCadNotaFiscal; ID_Operacao: Integer; Finalidade: String ; Cabecalho : Boolean = False);
var
  vCodRegAux: Integer;
  vTipoAux: String;
  vUFClienteAux: String;
  vTipoEmpresa: String;
  vZonaAux: String;
  vSTAux: String;
  vTipoProd: String;
  vPessoa: String;
begin
  if fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0 then
    vCodRegAux := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger
  else
    vCodRegAux := 1;
  if fDMCadNotaFiscal.cdsClienteUF.AsString = fDMCadNotaFiscal.cdsFilialUF.AsString then
    vUFClienteAux := 'D'
  else
  if fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger > 1 then
    vUFClienteAux := 'E'
  else
    vUFClienteAux := 'F';
  if (trim(fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.AsString) <> '') and not(fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.IsNull) then
    vZonaAux := 'S'
  else
    vZonaAux := 'N';
  vSTAux := '';
  vTipoProd := '';

  if not Cabecalho then
  begin
    if fDMCadNotaFiscal.cdsTab_NCMID.AsInteger <> fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger then
      fDMCadNotaFiscal.cdsTab_NCM.Locate('ID',fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger,([Locaseinsensitive]));
    if fDMCadNotaFiscal.cdsTab_NCMGERAR_ST.AsString = 'S' then
      vSTAux := 'S'
    else
      vSTAux := 'N';
    if fDMCadNotaFiscal.cdsParametrosUSA_SPED.AsString = 'S' then
    begin
      if (fDMCadNotaFiscal.cdsProdutoSPED_TIPO_ITEM.AsString = '00') or (fDMCadNotaFiscal.cdsProdutoSPED_TIPO_ITEM.AsString = '01') or (fDMCadNotaFiscal.cdsProdutoSPED_TIPO_ITEM.AsString = '02') then
        vTipoProd := 'R'
      else
      if (fDMCadNotaFiscal.cdsProdutoSPED_TIPO_ITEM.AsString = '03') or (fDMCadNotaFiscal.cdsProdutoSPED_TIPO_ITEM.AsString = '04') or (fDMCadNotaFiscal.cdsProdutoSPED_TIPO_ITEM.AsString = '05')
        or (fDMCadNotaFiscal.cdsProdutoSPED_TIPO_ITEM.AsString = '06') then
        vTipoProd := 'V';
    end
    else
    begin
      if (fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'R') or (fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'C') then
        vTipoProd := 'R'
      else
        vTipoProd := 'V';
    end;
  end;

  if trim(Finalidade) = '' then
    Finalidade := 'O';
  fDMCadNotaFiscal.qRegime_Trib.Close;
  fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := vCodRegAux;
  fDMCadNotaFiscal.qRegime_Trib.Open;
  if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger > 2 then
    vTipoAux := 'G'
  else
    vTipoAux := 'S';
  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    vTipoEmpresa := 'S'
  else
    vTipoEmpresa := 'G';
  //if da pessoa incluído dia 26/06/2017 pois a Pessoa Física usa as mesmas regras da Jurídica não contribuinte
  if (fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'J') and (fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 1) then
    vPessoa := 'J'
  else
    vPessoa := 'F';
  //fDMCadNotaFiscal.vID_CFOP := fnc_Regra_Empresa_CFOP(fDMCadNotaFiscal.cdsClientePESSOA.AsString,vZonaAux,vSTAux,vTipoProd,vTipoEmpresa,vTipoAux,vUFClienteAux,ID_Operacao);
  fDMCadNotaFiscal.vID_CFOP := fnc_Regra_Empresa_CFOP(vPessoa,vZonaAux,vSTAux,vTipoProd,vTipoEmpresa,vTipoAux,vUFClienteAux,ID_Operacao,Finalidade,Cabecalho);
  fDMCadNotaFiscal.vID_Variacao := 0;
  if fDMCadNotaFiscal.vID_CFOP > 0 then
    fDMCadNotaFiscal.vUsarRegraEmpresa := True
  else
    fDMCadNotaFiscal.vUsarRegraEmpresa := False;
end;

function fnc_Unidade_Conv(fDMCadNotaFiscal: TDMCadNotaFiscal): Real;
var
  sds: TSQLDataSet;
  vqtdaux: Real;
begin
  vPesoBruto   := 0;
  vPesoLiquido := 0;
  Result  := 0;
  vqtdaux := 0;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText := 'SELECT P.item_unidade, U.tipo_conversor, U.qtd, u.unidade_conv  FROM PRODUTO_UNI P '
                   + ' INNER JOIN UNIDADE_CONV U '
                   + ' ON P.unidade = U.unidade '
                   + ' AND P.item_unidade = U.item '
                   + ' WHERE P.id = :ID_PRODUTO '
                   + ' AND P.unidade = :UNIDADE ';
  sds.ParamByName('ID_PRODUTO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  sds.ParamByName('UNIDADE').AsString     := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
  sds.Open;
  if sds.IsEmpty then
  begin
    sds.Close;
    sds.CommandText := 'SELECT U.tipo_conversor, U.qtd '
                     + ' FROM TAB_NCM_UNI T2 '
                     + ' INNER JOIN UNIDADE_CONV U '
                     + ' ON T2.unidade = U.unidade '
                     + ' AND T2.item_unidade = U.item '
                     + ' WHERE T2.ID = :ID '
                     + ' AND T2.unidade = :UNIDADE ';
    sds.ParamByName('ID').AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger;
    sds.ParamByName('UNIDADE').AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
    SDS.Open;
  end;
  if (sds.FieldByName('tipo_conversor').AsString = 'L') or (sds.FieldByName('tipo_conversor').AsString = 'P') then
  begin
    prc_Calcular_Peso(fDMCadNotaFiscal);
    if (sds.FieldByName('tipo_conversor').AsString = 'L') then
      vqtdaux := vPesoLiquido
    else
      vqtdaux := vPesoBruto;
  end
  else
    vqtdaux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * sds.FieldByName('Qtd').AsFloat));
  Result := StrToFloat(FormatFloat('0.0000',vqtdaux));
  FreeAndNil(sds);
end;

procedure Atualiza_Preco2(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vVlrAux: Real;
  vUnidadeAux: String;
  sds: TSQLDataSet;
  Texto, Texto2: String;
  vVlrIPIAux: Real;
  vVlrFreteAux: Real;
  vVlrSTAux: Real;
  //vVlrCusto: Real;
  //vVlrCusto_Total: Real;
  vVlrIcmsAux: Real;
  vVlrSeguro, vVlrOutro, vVlrAduaneira, vVlrII, vVlrAFRMM, vVlrTaxaSiscomex: Real;
  vVlrIPISub: Real;
  vTexto: String;
  fDMCadProduto_Lote: TDMCadProduto_Lote;
begin
  if fDMCadNotaFiscal.cdsParametrosATUALIZAR_PRECO.AsString <> 'S' then
    exit;

  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <> fDMCadNotaFiscal.cdsCFOPID.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]);

  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString <> 'E') then
    exit
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E')
    and (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3') then
      exit;

  if fDMCadNotaFiscal.cdsCFOPALT_NCM_CUSTO.AsString <> 'S' then
    exit;

  if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([LocaseInsensitive])) then
    exit;

  {vUnidadeAux      := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
  vVlrIPIAux       := StrToFloat(FormatFloat('0.00',0));
  vVlrFreteAux     := StrToFloat(FormatFloat('0.00',0));
  vVlrSTAux        := StrToFloat(FormatFloat('0.00',0));
  //18/01/2018
  vVlrIcmsAux      := StrToFloat(FormatFloat('0.00',0));
  vVlrSeguro       := StrToFloat(FormatFloat('0.00',0));
  vVlrOutro        := StrToFloat(FormatFloat('0.00',0));
  vVlrAduaneira    := StrToFloat(FormatFloat('0.00',0));
  vVlrII           := StrToFloat(FormatFloat('0.00',0));
  vVlrAFRMM        := StrToFloat(FormatFloat('0.00',0));
  vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00',0));
  vVlrIPISub       := StrToFloat(FormatFloat('0.00',0));
  //*************
  vVlrAux      := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat;
  //28/11/2017
  vTexto := '';
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString = 'C') then
    vTexto := 'CON'
  else
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString = 'R' then
    vTexto := 'REV'
  else
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString = 'I' then
    vTexto := 'IND'
  else
  begin
    if fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'I' then
      vTexto := 'IND'
    else
    if fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'R' then
      vTexto := 'REV'
    else
    if fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'C' then
      vTexto := 'CON'
    else
    if fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P' then
      vTexto := 'REV'
    else
      vTexto := 'CON';
  end;

  if vTexto <> '' then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat)) > 0) then
    begin
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_IPI').AsString = 'S') then
        vVlrIPIAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat))
      else
      if (fDMCadNotaFiscal.qParametros_Custo1.FieldByName(vTexto + '_SUB_IPI').AsString = 'S') then
        vVlrIPISub := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    end;
    if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_FRETE').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat)) > 0) then
      vVlrFreteAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SOMAR_ST').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0) then
      vVlrSTAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    //18/01/2018
    if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SUB_ICMS').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat)) > 0) then
      vVlrIcmsAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));

    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat)) > 0 then
      vVlrSeguro := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat)) > 0 then
      vVlrOutro := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat)) > 0 then
      vVlrAduaneira := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat)) > 0 then
      vVlrII := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat)) > 0 then
      vVlrAFRMM := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat)) > 0 then
      vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    //**********************

    if (vUnidadeAux <> fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString) and
       (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat)) > 0) then
      begin
        if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_IPI').AsString = 'S') then
          vVlrIPIAux := StrToFloat(FormatFloat('0.00000',vVlrIPIAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat))
        else
        if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SUB_IPI').AsString = 'S') then
          vVlrIPISub := StrToFloat(FormatFloat('0.00000',vVlrIPISub / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      end;
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_FRETE').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat)) > 0) then
        vVlrFreteAux := StrToFloat(FormatFloat('0.00000',vVlrFreteAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SOMAR_ST').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0) then
        vVlrSTAux := StrToFloat(FormatFloat('0.00000',vVlrSTAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      //18/01/2018
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SUB_ICMS').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat)) > 0) then
        vVlrIcmsAux := StrToFloat(FormatFloat('0.00',vVlrIcmsAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat)) > 0 then
        vVlrSeguro := StrToFloat(FormatFloat('0.00',vVlrSeguro / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat)) > 0 then
        vVlrOutro := StrToFloat(FormatFloat('0.00',vVlrOutro / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat)) > 0 then
        vVlrAduaneira := StrToFloat(FormatFloat('0.00',vVlrAduaneira / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat)) > 0 then
        vVlrII := StrToFloat(FormatFloat('0.00',vVlrII / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat)) > 0 then
        vVlrAFRMM := StrToFloat(FormatFloat('0.00',vVlrAFRMM / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat)) > 0 then
        vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00',vVlrTaxaSiscomex / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
      //*************************
    end;
  end;
  vVlrCusto       := 0;
  vVlrCusto_Total := 0;}
  if fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime >= fDMCadNotaFiscal.cdsProdutoDT_ALTPRECO.AsDateTime then
  begin
    fDMCadNotaFiscal.cdsProduto.Edit;
    //fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrAux));
    fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrCusto));
    fDMCadNotaFiscal.cdsProdutoDT_ALTPRECO.AsDateTime := fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
    //22/01/2018  foi passado para a procedure prc_calcular_Custo_Total;
    //vVlrCusto := StrToFloat(FormatFloat('0.00000',vVlrAux));
  end;
  if fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime >= fDMCadNotaFiscal.cdsProdutoDT_ALT_PRECOCUSTO.AsDateTime then
  begin
    if not(fDMCadNotaFiscal.cdsProduto.State in [dsEdit]) then
      fDMCadNotaFiscal.cdsProduto.Edit;
    //vVlrAux := StrToFloat(FormatFloat('0.00000',(vVlrAux + vVlrIPIAux + vVlrFreteAux + vVlrSTAux
    //         + vVlrSeguro + vVlrOutro + vVlrAduaneira + vVlrII + vVlrAFRMM + vVlrTaxaSiscomex) - vVlrIcmsAux - vVlrIPISub));
    //vVlrCusto_Total := StrToFloat(FormatFloat('0.00000',vVlrAux));
    //fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrAux));
    fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrCusto_Total));
    fDMCadNotaFiscal.cdsProdutoDT_ALT_PRECOCUSTO.AsDateTime := fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
  end;

  if fDMCadNotaFiscal.cdsProduto.State in [dsEdit] then
  begin
    prc_Aplicar_Margem2(fDMCadNotaFiscal);
    fDMCadNotaFiscal.cdsProduto.Post;
    //13/11/2017
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
    begin
      //28/10/2017
      if (fDMCadNotaFiscal.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString) <> '')  then
      begin
        fDMCadProduto_Lote := TDMCadProduto_Lote.Create(DMCadProduto_Lote);
        if fDMCadNotaFiscal.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString <> 'C' then
          fDMCadProduto_Lote.prc_Gravar(fDMCadNotaFiscal.cdsProdutoID.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,
                                        fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat,fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat,0)
        else
          fDMCadProduto_Lote.prc_Gravar(fDMCadNotaFiscal.cdsProdutoID.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,
                                        fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat,fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat,0);

        FreeAndNil(fDMCadProduto_Lote);
      end;
    end;
    //********

    fDMCadNotaFiscal.cdsProduto.ApplyUpdates(0);

    //13/11/2017
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString <> 'NTE' then
      exit;
    //**************

    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    Texto  := FormatFloat('0.00000',vVlrCusto);
    Texto  := StringReplace(Texto, ',', '.',[rfReplaceAll, rfIgnoreCase]);
    Texto2 := FormatFloat('0.00000',vVlrCusto_Total);
    Texto2 := StringReplace(Texto, ',', '.',[rfReplaceAll, rfIgnoreCase]);

    vTexto := '';
    if StrToFloat(FormatFloat('0.00000',vVlrCusto)) > 0 then
      vTexto := vTexto + 'PRECO_CUSTO = ' + Texto;
    if StrToFloat(FormatFloat('0.00000',vVlrCusto_Total)) > 0 then
    begin
      if trim(vTexto) <> '' then
        vTexto := vTexto + ', PRECO_CUSTO_TOTAL = ' + Texto2
      else
        vTexto := vTexto + ' PRECO_CUSTO_TOTAL = ' + Texto2;
    end;
    if trim(vTexto) = '' then
      vTexto := vTexto + 'PRECO_CUSTO = 0 '; 
    vTexto := 'UPDATE PRODUTO_FORN SET ' + vTexto;
    //sds.CommandText   := 'UPDATE PRODUTO_FORN  SET PRECO_CUSTO = ' + Texto
    sds.CommandText   := vTexto
                       + ' WHERE ID = ' + IntToStr(fDMCadNotaFiscal.cdsProdutoID.AsInteger)
                       + '   AND ID_FORNECEDOR = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger);
    sds.ExecSQL;

    FreeAndNil(sds);
  end;

end;

procedure prc_Aplicar_Margem2(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vVlrAux: Real;
begin
  if fDMCadNotaFiscal.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString <> 'C' then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat * fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100));
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat + vVlrAux));
      fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',vVlrAux));
    end;
  end
  else
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat * fDMCadNotaFiscal.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100));
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat + vVlrAux));
      fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',vVlrAux));
    end;
  end;
end;

procedure prc_Calcular_Custo_Total(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vVlrAux: Real;
  vUnidadeAux: String;
  sds: TSQLDataSet;
  Texto, Texto2: String;
  vVlrIPIAux: Real;
  vVlrFreteAux: Real;
  vVlrSTAux: Real;
  //vVlrCusto: Real;
  //vVlrCusto_Total: Real;
  vVlrIcmsAux: Real;
  vVlrSeguro, vVlrOutro, vVlrAduaneira, vVlrII, vVlrAFRMM, vVlrTaxaSiscomex: Real;
  vVlrIPISub: Real;
  vTexto: String;
  vVlrAjuste: Real;
  fDMCadProduto_Lote: TDMCadProduto_Lote;
begin
  vVlrCusto       := StrToFloat(FormatFloat('0.00',0));
  vVlrCusto_Total := StrToFloat(FormatFloat('0.00',0));
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <> fDMCadNotaFiscal.cdsCFOPID.AsInteger then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]);

  if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([LocaseInsensitive])) then
    exit;

  vUnidadeAux      := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
  vVlrIPIAux       := StrToFloat(FormatFloat('0.00',0));
  vVlrFreteAux     := StrToFloat(FormatFloat('0.00',0));
  vVlrSTAux        := StrToFloat(FormatFloat('0.00',0));
  vVlrIcmsAux      := StrToFloat(FormatFloat('0.00',0));
  vVlrSeguro       := StrToFloat(FormatFloat('0.00',0));
  vVlrOutro        := StrToFloat(FormatFloat('0.00',0));
  vVlrAduaneira    := StrToFloat(FormatFloat('0.00',0));
  vVlrII           := StrToFloat(FormatFloat('0.00',0));
  vVlrAFRMM        := StrToFloat(FormatFloat('0.00',0));
  vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00',0));
  vVlrIPISub       := StrToFloat(FormatFloat('0.00',0));
  vVlrAjuste       := StrToFloat(FormatFloat('0.00',0));
  //20/04/2018
  //if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  //  vVlrAux        := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat > 0 then
      vVlrAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat
    else                             
      vVlrAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
  end
  else
    vVlrAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat;
  vTexto := '';
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString = 'C') then
    vTexto := 'CON'
  else
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString = 'R' then
    vTexto := 'REV'
  else
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString = 'I' then
    vTexto := 'IND'
  else
  begin
    if fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'I' then
      vTexto := 'IND'
    else
    if fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'R' then
      vTexto := 'REV'
    else
    if fDMCadNotaFiscal.cdsProdutoTIPO_VENDA.AsString = 'C' then
      vTexto := 'CON'
    else
    if fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P' then
      vTexto := 'REV'
    else
      vTexto := 'CON';
  end;

  if vTexto <> '' then
  begin
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat)) > 0) then
    begin
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_IPI').AsString = 'S') then
        vVlrIPIAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat))
      else
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SUB_IPI').AsString = 'S') then
        vVlrIPISub := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    end;

    if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_FRETE').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat)) > 0) then
      vVlrFreteAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SOMAR_ST').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0) then
      vVlrSTAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    //18/01/2018
    if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SUB_ICMS').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat)) > 0)
      and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) <= 0)  then
      vVlrIcmsAux := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat)) > 0 then
      vVlrSeguro := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat)) > 0 then
      vVlrOutro := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat)) > 0 then
      vVlrAduaneira := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat)) > 0 then
      vVlrII := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat)) > 0 then
      vVlrAFRMM := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat)) > 0 then
      vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    //**********************
    //23/01/2018
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AJUSTE_CUSTO.AsFloat)) > StrToFloat(FormatFloat('0.00',0)) then
      vVlrAjuste := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AJUSTE_CUSTO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    //************

    //20/04/2018
    {if (vUnidadeAux <> fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString) and
       (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) > 0) then
    begin
      //vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      vVlrAux := StrToFloat(FormatFloat('0.0000',vVlrAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat)) > 0) then
      begin
        if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_IPI').AsString = 'S') then
          vVlrIPIAux := StrToFloat(FormatFloat('0.00000',vVlrIPIAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat))
        else
        if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SUB_IPI').AsString = 'S') then
          vVlrIPISub := StrToFloat(FormatFloat('0.00000',vVlrIPISub / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      end;
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto + '_SOMAR_FRETE').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat)) > 0) then
        vVlrFreteAux := StrToFloat(FormatFloat('0.00000',vVlrFreteAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SOMAR_ST').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat)) > 0) then
        vVlrSTAux := StrToFloat(FormatFloat('0.00000',vVlrSTAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if (fDMCadNotaFiscal.qParametros_Custo.FieldByName(vTexto+'_SUB_ICMS').AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat)) > 0) then
        vVlrIcmsAux := StrToFloat(FormatFloat('0.00',vVlrIcmsAux / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat)) > 0 then
        vVlrSeguro := StrToFloat(FormatFloat('0.00',vVlrSeguro / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat)) > 0 then
        vVlrOutro := StrToFloat(FormatFloat('0.00',vVlrOutro / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat)) > 0 then
        vVlrAduaneira := StrToFloat(FormatFloat('0.00',vVlrAduaneira / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat)) > 0 then
        vVlrII := StrToFloat(FormatFloat('0.00',vVlrII / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat)) > 0 then
        vVlrAFRMM := StrToFloat(FormatFloat('0.00',vVlrAFRMM / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat)) > 0 then
        vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00',vVlrTaxaSiscomex / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AJUSTE_CUSTO.AsFloat)) > 0 then
        vVlrAjuste := StrToFloat(FormatFloat('0.00',vVlrAjuste / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
    end;}
  end;

  vVlrCusto := StrToFloat(FormatFloat('0.00000',vVlrAux));
  //20/04/2018
  //vVlrAux := StrToFloat(FormatFloat('0.00000',(vVlrAux + vVlrIPIAux + vVlrFreteAux + vVlrSTAux
  //         + vVlrSeguro + vVlrOutro + vVlrAduaneira + vVlrII + vVlrAFRMM + vVlrTaxaSiscomex) - vVlrIcmsAux - vVlrIPISub));
  if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
    vVlrAux := StrToFloat(FormatFloat('0.00000',(vVlrAux + vVlrIPIAux + vVlrFreteAux) - vVlrIcmsAux - vVlrIPISub))
  else
    vVlrAux := StrToFloat(FormatFloat('0.00000',(vVlrAux + vVlrIPIAux + vVlrFreteAux + vVlrSTAux
             + vVlrSeguro + vVlrOutro) - vVlrIcmsAux));
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_AJUSTE_CUSTO.AsString = '-' then
    vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux - vVlrAjuste))
  else
    vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux + vVlrAjuste));
  vVlrCusto_Total := StrToFloat(FormatFloat('0.00000',vVlrAux));
  if (vUnidadeAux <> fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString) and
      (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) > 0) and
      (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0) and
      (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) > 0) and
      (StrToFloat(FormatFloat('0.00000',vVlrCusto_Total)) > 0) then
    vVlrCusto_Total := StrToFloat(FormatFloat('0.000',vVlrCusto_Total / fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
end;

procedure prc_Calcular_Ajuste_Custo(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  vAux: Real;
begin
  vContadorOutros   := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
  vCalcTotalNota    := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat));
  vCalcAjuste_Custo := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AJUSTE_CUSTO.AsFloat));

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
    vContadorOutros := vContadorOutros - 1;
    vAux := 0;
    if vContadorOutros <= 0 then
      vAux := StrToFloat(FormatFloat('0.00',vCalcAjuste_Custo))
    else
    if StrToFloat(FormatFloat('0.00',vCalcAjuste_Custo)) > 0 then
    begin
      if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      begin
        vAux := StrToCurr(FormatCurr('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
        vAux := StrToCurr(FormatCurr('0.00',(vCalcAjuste_Custo * vAux) / 100));
      end
      else
      begin
        vAux := StrToFloat(FormatFloat('0.0000',(fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat / vCalcTotalNota) * 100));
        vAux := StrToFloat(FormatFloat('0.00',(vCalcAjuste_Custo * vAux) / 100));
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AJUSTE_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    vCalcAjuste_Custo := StrToFloat(FormatFloat('0.00',vCalcAjuste_Custo - vAux));
    if StrToFloat(FormatFloat('0.00',vCalcAjuste_Custo)) <= 0 then
      vCalcAjuste_Custo := StrToFloat(FormatFloat('0.00',0));
    prc_Calcular_Custo_Total(fDMCadNotaFiscal);
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrCusto_Total));
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger > 0 then
      prc_Atualiza_Estoque(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat);
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger > 0 then
      prc_Atualiza_Estoque(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat);
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
      Atualiza_Preco2(fDMCadNotaFiscal);
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;
end;

procedure prc_Atualiza_Estoque(ID: Integer; Preco: Real);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.Close;
    sds.CommandText := 'UPDATE ESTOQUE_MOV SET PRECO_CUSTO_TOTAL = :PRECO_CUSTO_TOTAL WHERE ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID;
    sds.ParamByName('PRECO_CUSTO_TOTAL').AsFloat := Preco;
    sds.ExecSQL;
  except
  end;
  FreeAndNil(sds);
end;

procedure prc_Atualiza_Movimento(ID: Integer; Preco: Real);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.Close;
    sds.CommandText := 'UPDATE MOVIMENTO SET PRECO_CUSTO_TOTAL = :PRECO_CUSTO_TOTAL WHERE ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID;
    sds.ParamByName('PRECO_CUSTO_TOTAL').AsFloat := Preco;
    sds.ExecSQL;
  except
  end;
  FreeAndNil(sds);
end;

function fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal: TDMCadNotaFiscal; ID_CFOP: Integer): Integer;
var
  vTipo_Empresa: String;
  vTipo_Cliente: String;
  vUF_ClienteAux: String;
begin
  vTipo_Cliente := 'G';
  if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0 then
  begin
    fDMCadNotaFiscal.qRegime_Trib.Close;
    fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger;
    fDMCadNotaFiscal.qRegime_Trib.Open;
    if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger < 3 then
      vTipo_Cliente := 'S';
  end;
  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    vTipo_Empresa := 'S'
  else
    vTipo_Empresa := 'G';
  fDMCadNotaFiscal.qRegra_CFOP.Close;
  fDMCadNotaFiscal.qRegra_CFOP.ParamByName('ID').AsInteger              := ID_CFOP;
  fDMCadNotaFiscal.qRegra_CFOP.ParamByName('TIPO_EMPRESA').AsString     := vTipo_Empresa;
  fDMCadNotaFiscal.qRegra_CFOP.ParamByName('TIPO_CLIENTE').AsString     := vTipo_Cliente;
  if fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'E' then
    fDMCadNotaFiscal.qRegra_CFOP.ParamByName('PESSOA_CLIENTE').AsString := 'J'
  else
    fDMCadNotaFiscal.qRegra_CFOP.ParamByName('PESSOA_CLIENTE').AsString := fDMCadNotaFiscal.cdsClientePESSOA.AsString;
  fDMCadNotaFiscal.qRegra_CFOP.ParamByName('TIPO_CONSUMIDOR').AsInteger := fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger;
  fDMCadNotaFiscal.qRegra_CFOP.Open;
  if not fDMCadNotaFiscal.qRegra_CFOP.IsEmpty then
    Result := fDMCadNotaFiscal.qRegra_CFOPITEM.AsInteger
  else
    Result := 0;
end;

end.
