unit uGrava_NotaFiscal;

interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, SqlExpr, DmdDatabase, UDMCadNotaFiscal, dbXPress,
  uDMCadExtComissao, UDMGravarFinanceiro;

procedure prc_Gravar(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo: string = 'ALT');

procedure prc_Gravar_Comissao(fDMCadNotaFiscal: TDMCadNotaFiscal; Prazo: string = '');

procedure Gravar_Duplicata(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo, TransfICMS: string; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: string; Perc_Base_Comissao: Real);
                                               //Tipo  P= Contas a Pagar   R= Contas a Receber
                                               //Prazo = ENT=Entrada  AVI=Avista

procedure Gravar_Dupicata_Hist(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo: string);

procedure prc_Gravar_Financeiro(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo: string);//ENT=Entrada   AVI= Avista

procedure prc_Ajustar_Comissao_Itens(fDMCadNotaFiscal: TDMCadNotaFiscal);

function fnc_Calcula_PercComissao(fDMCadNotaFiscal: TDMCadNotaFiscal): Boolean;

procedure prc_Ajustar_ExtComissao(fDMCadNotaFiscal: TDMCadNotaFiscal);

{unction fnc_Verifica_Nota_Ramiro(fDMCadNotaFiscal: TDMCadNotaFiscal; nNota: Integer): Boolean;}

implementation

uses
  DateUtils, uUtilPadrao;

procedure prc_Gravar(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo: string = 'ALT');
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vSerie: string;
  vNumNota: Integer;
  vAux: Integer;
  vGravar: Boolean;
  vID_ClienteAux: Integer;
  vNomeAux: string;
  Flag: Boolean;
begin
  vGravar := False;
  vID_ClienteAux := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  if fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger < 1 then
  begin
    sds := TSQLDataSet.Create(nil);

    ID.TransactionID := 1;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);

    try
      try
        vNomeAux := 'NOTAFISCAL';
        sds.SQLConnection := dmDatabase.scoDados;

        vAux := dmDatabase.ProximaTabelaLoc(vNomeAux);

        sds.NoMetadata := True;
        sds.GetMetadata := False;
        sds.CommandText := ' UPDATE TABELALOC SET FLAG = ' + IntToStr(vAux) + ' WHERE TABELA = ' + QuotedStr(vNomeAux);
        //sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr(vNomeAux);
        Flag := False;
        while not Flag do
        begin
          try
            sds.Close;
            sds.ExecSQL;
            Flag := True;
          except
            on E: Exception do
              Flag := False;
          end;
        end;
        //sds.ExecSQL();
      except
        raise
      end;

      {sds.Close;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      //sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('NOTAFISCAL');
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = ' + IntToStr(vAux) + ' WHERE TABELA = ' + QuotedStr('NOTAFISCAL');
      sds.ExecSQL();}

      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTE' then
      begin

      end
      else if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS' then
      begin
        //12/11/2015
        vSerie := '';
        if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_SERIE_OPERACAO.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0) then
        begin
          if fDMCadNotaFiscal.cdsOperacao_Nota.Locate('ID', fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger, [loCaseInsensitive]) then
            vSerie := trim(fDMCadNotaFiscal.cdsOperacao_NotaSERIE_NFE.AsString);
        end;
        //12/11/2015
        if trim(vSerie) = '' then
        begin
          if (copy(Tipo, 1, 1) = '1') or (copy(Tipo, 1, 1) = '2') then
            vSerie := fDMCadNotaFiscal.cdsFilialSERIENORMAL.AsString
          else
            vSerie := fDMCadNotaFiscal.cdsParametrosSERIECONTINGENCIA.AsString;
        end;
        fDMCadNotaFiscal.cdsFilial.Locate('ID', fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger, [loCaseInsensitive]);
        if fDMCadNotaFiscal.cdsFilialNUM_NOTA_RAMIRO.AsInteger > 0 then
        begin
          fDMCadNotaFiscal.qProximaNotaRamiro.Close;
          fDMCadNotaFiscal.qProximaNotaRamiro.ParamByName('FILIAL').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
          fDMCadNotaFiscal.qProximaNotaRamiro.ParamByName('SERIE').AsString := vSerie;
          fDMCadNotaFiscal.qProximaNotaRamiro.ParamByName('NUM_NOTA_RAMIRO').AsInteger := fDMCadNotaFiscal.cdsFilialNUM_NOTA_RAMIRO.AsInteger;
          fDMCadNotaFiscal.qProximaNotaRamiro.Open;
          vNumNota := fDMCadNotaFiscal.qProximaNotaRamiroNUMNOTA.AsInteger + 1;
        end
        else
        begin
          fDMCadNotaFiscal.qProximaNota.Close;
          fDMCadNotaFiscal.qProximaNota.ParamByName('FILIAL').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
          fDMCadNotaFiscal.qProximaNota.ParamByName('SERIE').AsString := vSerie;
          fDMCadNotaFiscal.qProximaNota.Open;
          vNumNota := fDMCadNotaFiscal.qProximaNotaNUMNOTA.AsInteger + 1;
        end;

        fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString := vSerie;
        fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger := vNumNota;
        fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString := Tipo;
        fDMCadNotaFiscal.cdsNotaFiscalNFEVERSAO.AsString := fDMCadNotaFiscal.cdsParametrosVERSAONFE.AsString;
        fDMCadNotaFiscal.cdsNotaFiscalNFEVERSAOEMISSAO.AsString := fDMCadNotaFiscal.cdsParametrosVERSAOEMISSAONFE.AsString;

        vAux := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
        fDMCadNotaFiscal.cdsNotaFiscalQTDTOTAL_ITENS.AsInteger := vAux;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal.Post;

      //17/08/2016
      if (fDMCadNotaFiscal.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S') then
        fDMCadNotaFiscal.prc_Gravar_cdsHist_Senha;
      //****************
      fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);

      //27/06/2016
      //25/06/2015
      //sdsPRC_Atualiza_DtNota.Close;
      //sdsPRC_Atualiza_DtNota.ParamByName('C_ID').AsInteger := cdsNotaFiscalID_CLIENTE.AsInteger;
      //sdsPRC_Atualiza_DtNota.ExecSQL;

      dmDatabase.scoDados.Commit(ID);

      vGravar := True;

      fDMCadNotaFiscal.mSenha.EmptyDataSet;
    except
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end;
    FreeAndNil(sds);
  end
  else
  begin
    fDMCadNotaFiscal.cdsNotaFiscal.Post;

    if (fDMCadNotaFiscal.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S') then
      fDMCadNotaFiscal.prc_Gravar_cdsHist_Senha;

    fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
    vGravar := True;
  end;

  if vGravar then
  begin
    //27/06/2016
    fDMCadNotaFiscal.sdsPRC_Atualiza_DtNota.Close;
    fDMCadNotaFiscal.sdsPRC_Atualiza_DtNota.ParamByName('C_ID').AsInteger := vID_ClienteAux;
    fDMCadNotaFiscal.sdsPRC_Atualiza_DtNota.ExecSQL;
  end;
end;

procedure prc_Gravar_Comissao(fDMCadNotaFiscal: TDMCadNotaFiscal; Prazo: string = '');
var
  fDMCadExtComissao: TDMCadExtComissao;
  vAux: Integer;
  vVlrBase: Real;
  vID_Duplicata: Integer;
  vItem_Hist: Integer;
  vID_Nota: Integer;
  vParcela: Integer;
  vPercAux: Real;
begin
  if ((StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.vPerc_Comissao_Rateio)) <= 0)) and
     (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') and
     (StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0) then
    exit;

  if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger <= 0) or (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.IsNull) then
    exit;

  if not fDMCadNotaFiscal.cdsVendedor.Locate('CODIGO', fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger, [loCaseInsensitive]) then
    exit;

  if fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'P' then
  begin
    if Prazo <> '' then
      exit;
  end
  else
  begin
    if ((fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString <> 'N') and (Prazo = '')) then
      exit;
    if ((fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'N') and (Prazo <> '')) then
      exit;
  end;

  if (fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'N') or (fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'P') then
  begin
    vID_Nota := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    vID_Duplicata := 0;
    vParcela := 0;
    vItem_Hist := 0;
    if fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'N' then
    begin
      //15/09/2016
      //vVlrBase      := cdsNotaFiscalVLR_DUPLICATA.AsFloat
      if fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
        vVlrBase := fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat
      else
        vVlrBase := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat;
    end
    else
    begin
      //15/09/2016
      //vVlrBase      := StrToFloat(FormatFloat('0.00',(cdsNotaFiscalVLR_DUPLICATA.AsFloat * cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat) / 100));
      if fDMCadNotaFiscal.qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
        vVlrBase := StrToFloat(FormatFloat('0.00', (fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat * fDMCadNotaFiscal.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat) / 100))
      else
        vVlrBase := StrToFloat(FormatFloat('0.00', (fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat * fDMCadNotaFiscal.cdsParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat) / 100));
    end;
  end
  else if (fDMCadNotaFiscal.cdsVendedorTIPO_COMISSAO.AsString = 'D') then
  begin
    vID_Nota := 0;
    vID_Duplicata := fDMCadNotaFiscal.cdsDuplicataID.AsInteger;
    vParcela := fDMCadNotaFiscal.cdsDuplicataPARCELA.AsInteger;
    vItem_Hist := fDMCadNotaFiscal.cdsDuplicata_HistITEM.AsInteger;
    if (StrToCurr(FormatCurr('0.0000', fDMCadNotaFiscal.cdsDuplicataPERC_BASE_COMISSAO.AsFloat)) = 0)
      or (StrToCurr(FormatCurr('0.0000', fDMCadNotaFiscal.cdsDuplicataPERC_BASE_COMISSAO.AsFloat)) >= 100) then
      vVlrBase := fDMCadNotaFiscal.cdsDuplicataVLR_PARCELA.AsFloat
    else
      vVlrBase := StrToCurr(FormatCurr('0.0000', (fDMCadNotaFiscal.cdsDuplicataVLR_PARCELA.AsFloat * fDMCadNotaFiscal.cdsDuplicataPERC_BASE_COMISSAO.AsFloat) / 100));
  end;

  fDMCadExtComissao := TDMCadExtComissao.Create(fDMCadExtComissao);
  try
    if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I') then
      vPercAux := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat))
    else if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
      vPercAux := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.vPerc_Comissao_Rateio));

    vAux := fDMCadExtComissao.fnc_Mover_Comissao('ENT', fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,
      '', 0, fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime, fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
      fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger, vID_Nota, vID_Duplicata, vItem_Hist,
      fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger, fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger, vParcela,
      0, 0, 0, StrToFloat(FormatFloat('0.00', vVlrBase)), 0, StrToFloat(FormatFloat('0.0000', vPercAux)), 0, 0);
  except
    raise;
  end;
  FreeAndNil(fDMCadExtComissao);
end;

procedure Gravar_Duplicata(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo, TransfICMS: string; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: string; Perc_Base_Comissao: Real);
var
  vAux: Integer;
begin
  if not fDMCadNotaFiscal.cdsDuplicata.Active then
    fDMCadNotaFiscal.Abrir_cdsDuplicata(0);

  vAux := dmDatabase.ProximaSequencia('DUPLICATA', 0);
  if Parcela = 0 then
    Prazo := 'ENT';

  fDMCadNotaFiscal.cdsDuplicata.Insert;
  fDMCadNotaFiscal.cdsDuplicataID.AsInteger := vAux;
  if Tipo = 'R' then
    fDMCadNotaFiscal.cdsDuplicataTIPO_ES.AsString := 'E'
  else
    fDMCadNotaFiscal.cdsDuplicataTIPO_ES.AsString := 'S';
  fDMCadNotaFiscal.cdsDuplicataFILIAL.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMCadNotaFiscal.cdsDuplicataID_NOTA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsDuplicataPARCELA.AsInteger := Parcela;
  fDMCadNotaFiscal.cdsDuplicataNUMDUPLICATA.AsString := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
    fDMCadNotaFiscal.cdsDuplicataNUMNOTA.AsInteger := 0
  else
    fDMCadNotaFiscal.cdsDuplicataNUMNOTA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger;
  fDMCadNotaFiscal.cdsDuplicataSERIE.AsString := fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString;
  fDMCadNotaFiscal.cdsDuplicataDTVENCIMENTO.AsDateTime := Data;
  fDMCadNotaFiscal.cdsDuplicataVLR_PARCELA.AsFloat := StrToFloat(FormatFloat('0.00', Valor));
  fDMCadNotaFiscal.cdsDuplicataVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00', Valor));
  fDMCadNotaFiscal.cdsDuplicataVLR_PAGO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMCadNotaFiscal.cdsDuplicataVLR_DEVOLUCAO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMCadNotaFiscal.cdsDuplicataVLR_DESPESAS.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMCadNotaFiscal.cdsDuplicataVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMCadNotaFiscal.cdsDuplicataVLR_JUROSPAGOS.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMCadNotaFiscal.cdsDuplicataVLR_MULTA.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMCadNotaFiscal.cdsDuplicataVLR_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  if fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
    fDMCadNotaFiscal.cdsDuplicataPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.vPerc_Comissao_Rateio))
  else
    fDMCadNotaFiscal.cdsDuplicataPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat));
  fDMCadNotaFiscal.cdsDuplicataDTULTPAGAMENTO.Clear;
  fDMCadNotaFiscal.cdsDuplicataID_PESSOA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  if fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0 then
    fDMCadNotaFiscal.cdsDuplicataID_VENDEDOR.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger;
  if ((Prazo = 'AVI') and (fDMCadNotaFiscal.cdsParametrosQUITAR_AVISTA_AUT.AsString = 'S')) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger;
    if fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_TIPOCOBRANCA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger;
    if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_CONTA_BOLETO.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger;
    fDMCadNotaFiscal.cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
    fDMCadNotaFiscal.cdsDuplicataVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00', 0));
    fDMCadNotaFiscal.cdsDuplicataVLR_PAGO.AsFloat := StrToFloat(FormatFloat('0.00', Valor));
  end
  else
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger
    else if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA.AsInteger;
    if fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_TIPOCOBRANCA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger
    else if fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_TIPOCOBRANCA.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_TIPO_COBRANCA.AsInteger;
    if fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger > 0 then
      fDMCadNotaFiscal.cdsDuplicataID_CONTA_BOLETO.AsInteger := fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger;
    if (Prazo = 'ENT') then
    begin
      fDMCadNotaFiscal.cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
      fDMCadNotaFiscal.cdsDuplicataVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00', 0));
      fDMCadNotaFiscal.cdsDuplicataVLR_PAGO.AsFloat := StrToFloat(FormatFloat('0.00', Valor));
    end;
  end;
  //aqui 29/11/2016
  //cdsDuplicataID_CONTA_BOLETO.AsInteger := 99;
  fDMCadNotaFiscal.cdsDuplicataID_COMISSAO.AsInteger := 0;
  fDMCadNotaFiscal.cdsDuplicataQTD_DIASATRASO.AsInteger := 0;
  fDMCadNotaFiscal.cdsDuplicataDTRECEBIMENTO_TITULO.Clear;
  fDMCadNotaFiscal.cdsDuplicataDTEMISSAO.AsDateTime := fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime;
  fDMCadNotaFiscal.cdsDuplicataPAGO_CARTORIO.AsString := 'N';
  fDMCadNotaFiscal.cdsDuplicataPROTESTADO.AsString := 'N';
  fDMCadNotaFiscal.cdsDuplicataTIPO_LANCAMENTO.AsString := fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString;
  fDMCadNotaFiscal.cdsDuplicataARQUIVO_GERADO.AsString := 'N';
  fDMCadNotaFiscal.cdsDuplicataTRANSFERENCIA_ICMS.AsString := TransfICMS;
  fDMCadNotaFiscal.cdsDuplicataNOSSONUMERO.AsString := '';
  fDMCadNotaFiscal.cdsDuplicataDTFINANCEIRO.Clear;
  fDMCadNotaFiscal.cdsDuplicataNUMCHEQUE.AsInteger := 0;
  fDMCadNotaFiscal.cdsDuplicataACEITE.AsString := '';
  fDMCadNotaFiscal.cdsDuplicataPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA.AsFloat));
  //08/02/2016
  fDMCadNotaFiscal.cdsDuplicataPERC_BASE_COMISSAO.AsFloat := Perc_Base_Comissao;
  if fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger > 0 then
    fDMCadNotaFiscal.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger
  else
    fDMCadNotaFiscal.cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  if Tipo = 'P' then
  begin
    fDMCadNotaFiscal.cdsDuplicataANO_REF.AsInteger := YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime);
    fDMCadNotaFiscal.cdsDuplicataMES_REF.AsInteger := MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime);
  end;
  fDMCadNotaFiscal.cdsDuplicataTITULO_CARTORIO.AsString := 'N';
  //12/07/2016
  if vTerminal <= 0 then
    fDMCadNotaFiscal.cdsDuplicataID_TERMINAL.Clear
  else
    fDMCadNotaFiscal.cdsDuplicataID_TERMINAL.AsInteger := vTerminal;
  fDMCadNotaFiscal.cdsDuplicata.Post;

  Gravar_Dupicata_Hist(fDMCadNotaFiscal, 'ENT');
  if (Prazo = 'ENT') or ((Prazo = 'AVI') and (fDMCadNotaFiscal.cdsParametrosQUITAR_AVISTA_AUT.AsString = 'S')) then
    Gravar_Dupicata_Hist(fDMCadNotaFiscal, 'PAG');

  fDMCadNotaFiscal.cdsDuplicata.ApplyUpdates(0);
end;

procedure Gravar_Dupicata_Hist(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo: string);
var
  vItemAux: Integer;
begin
  fDMCadNotaFiscal.cdsDuplicata_Hist.Last;
  vItemAux := fDMCadNotaFiscal.cdsDuplicata_HistITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadNotaFiscal.cdsDuplicata_Hist.Insert;
  fDMCadNotaFiscal.cdsDuplicata_HistID.AsInteger := fDMCadNotaFiscal.cdsDuplicataID.AsInteger;
  fDMCadNotaFiscal.cdsDuplicata_HistITEM.AsInteger := vItemAux;
  fDMCadNotaFiscal.cdsDuplicata_HistTIPO_HISTORICO.AsString := 'ENT';
  fDMCadNotaFiscal.cdsDuplicata_HistID_HISTORICO.AsInteger := 0;
  fDMCadNotaFiscal.cdsDuplicata_HistVLR_LANCAMENTO.AsFloat := fDMCadNotaFiscal.cdsDuplicataVLR_PARCELA.AsFloat;
  fDMCadNotaFiscal.cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsDuplicata_HistVLR_MULTA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsDuplicata_HistVLR_DESCONTOS.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsDuplicata_HistVLR_DESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  fDMCadNotaFiscal.cdsDuplicata_HistVLR_JUROSCALCULADO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  if Tipo = 'ENT' then
  begin
    fDMCadNotaFiscal.cdsDuplicata_HistCOMPLEMENTO.AsString := 'ENTRADA DO TÍTULO';
    fDMCadNotaFiscal.cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end
  else if Tipo = 'PAG' then
  begin
    fDMCadNotaFiscal.cdsDuplicata_HistTIPO_HISTORICO.AsString := 'PAG';
    fDMCadNotaFiscal.cdsDuplicata_HistCOMPLEMENTO.AsString  := 'PAGAMENTO DO TÍTULO';
    fDMCadNotaFiscal.cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsDuplicataVLR_PARCELA.AsFloat));
    fDMCadNotaFiscal.cdsDuplicata_HistID_FORMA_PAGAMENTO.AsInteger := fDMCadNotaFiscal.cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  end;
  fDMCadNotaFiscal.cdsDuplicata_HistDTHISTORICO.AsDateTime  := Date;
  fDMCadNotaFiscal.cdsDuplicata_HistDTLANCAMENTO.AsDateTime := fDMCadNotaFiscal.cdsDuplicataDTEMISSAO.AsDateTime;
  fDMCadNotaFiscal.cdsDuplicata_HistNUMCHEQUE.AsInteger := 0;
  fDMCadNotaFiscal.cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
  if fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsDuplicata_HistID_CONTA.AsInteger := fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger;
  fDMCadNotaFiscal.cdsDuplicata_HistID_COMISSAO.AsInteger := 0;
  fDMCadNotaFiscal.cdsDuplicata_HistTIPO_ES.AsString := fDMCadNotaFiscal.cdsDuplicataTIPO_ES.AsString;
  fDMCadNotaFiscal.cdsDuplicata_Hist.Post;

  if Tipo = 'PAG' then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
    begin
      prc_Gravar_Comissao(fDMCadNotaFiscal,'AVI');
      prc_Gravar_Financeiro(fDMCadNotaFiscal,'AVI');
    end
    else
    begin
      prc_Gravar_Comissao(fDMCadNotaFiscal,'ENT');
      prc_Gravar_Financeiro(fDMCadNotaFiscal,'ENT');
    end
  end;
end;

procedure prc_Gravar_Financeiro(fDMCadNotaFiscal: TDMCadNotaFiscal; Tipo: string);//ENT=Entrada   AVI= Avista
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(fDMGravarFinanceiro);

  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO', fDMCadNotaFiscal.cdsDuplicataID_PESSOA.AsInteger, ([Locaseinsensitive]));

  fDMGravarFinanceiro.vTipo_ES := 'E';
  if Tipo = 'ENT' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.Entrada ref. Doc nº ' + fDMCadNotaFiscal.cdsDuplicataNUMDUPLICATA.AsString + ' de ' + fDMCadNotaFiscal.cdsClienteNOME.AsString
  else if Tipo = 'AVI' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.A Vista ref. Doc nº ' + fDMCadNotaFiscal.cdsDuplicataNUMDUPLICATA.AsString + ' de ' + fDMCadNotaFiscal.cdsClienteNOME.AsString;

  fDMGravarFinanceiro.vID_Conta := fDMCadNotaFiscal.cdsDuplicataID_CONTA.AsInteger;
  fDMGravarFinanceiro.vID_ModDuplicata := fDMCadNotaFiscal.cdsDuplicataID.AsInteger;
  fDMGravarFinanceiro.vItem_MovDuplicata := fDMCadNotaFiscal.cdsDuplicata_HistITEM.AsInteger;
  fDMGravarFinanceiro.vID_Historico := 0;
  fDMGravarFinanceiro.vID_Pessoa    := fDMCadNotaFiscal.cdsDuplicataID_PESSOA.AsInteger;
  fDMGravarFinanceiro.vID_Forma_Pagamento := fDMCadNotaFiscal.cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  fDMGravarFinanceiro.vID_ExtComissao     := 0;
  fDMGravarFinanceiro.vDtMovimento        := fDMCadNotaFiscal.cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
  fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsDuplicata_HistVLR_PAGAMENTO.AsFloat));
  if fDMCadNotaFiscal.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger > 0 then
    fDMGravarFinanceiro.vID_Conta_Orcamento := fDMCadNotaFiscal.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger
  else
    fDMGravarFinanceiro.vID_Conta_Orcamento := 0;

  fDMGravarFinanceiro.prc_Gravar;

  FreeAndNil(fDMGravarFinanceiro);
end;

procedure prc_Ajustar_Comissao_Itens(fDMCadNotaFiscal: TDMCadNotaFiscal);
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Eof do
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaTIPO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_VENDEDOR.AsInteger
      > 0) and (StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscal_ConsultaVLR_DUPLICATA.AsFloat)) > 0) then
    begin
      fDMCadNotaFiscal.prc_Localizar(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger);
      if not fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Close;
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Open;
        fDMCadNotaFiscal.vPerc_Comissao_Rateio := 0;
        if fnc_Calcula_PercComissao(fDMCadNotaFiscal) then
          prc_Ajustar_ExtComissao(fDMCadNotaFiscal);
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Next;
  end;
  ShowMessage('Ajustado!');
end;

function fnc_Calcula_PercComissao(fDMCadNotaFiscal: TDMCadNotaFiscal): Boolean;
var
  vPercAux: Real;
  vVlrAux: Real;
  vComissaoAux: Real;
  sds: TSQLDataSet;
  vPerc1: Real;
  vTexto: string;
  vPercMaior: Real;
begin
  Result := False;
  vPerc1 := -1;
  vPercMaior := StrToFloat(FormatFloat('0', 0));
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') and (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger
      > 0) and (StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0) then
    begin
      if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat)) <= 0) then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := fnc_Buscar_Comissao_Prod(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
          fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger, fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger);
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
        Result := True;
      end;
      if StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat)) > 0 then
        vPercAux := StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat))
      else
        vPercAux := StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat));
      if StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat)) > 0 then
      begin
        vVlrAux := StrToFloat(FormatFloat('0.00', (fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat * vPercAux) / 100));
        vComissaoAux := StrToFloat(FormatFloat('0.00', vComissaoAux + vVlrAux));
      end;
      if (vPerc1 <> -1) and (StrToFloat(FormatFloat('0.00', vPerc1)) <> StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat))) then
        vPerc1 := -2
      else if StrToFloat(FormatFloat('0.00', vPerc1)) <> -2 then
        vPerc1 := StrToFloat(FormatFloat('0.00', fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat));
      //11/05/2017
      if StrToFloat(FormatFloat('0.00000', fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat)) > StrToFloat(FormatFloat('0.00000', vPercMaior)) then
        vPercMaior := StrToFloat(FormatFloat('0.00000', fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat));
      //*****************
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
  end;
  if not Result then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);

  if (StrToFloat(FormatFloat('0.00', vComissaoAux)) > 0) and (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
  begin
    vComissaoAux := StrToFloat(FormatFloat('0.00', vComissaoAux));
    if (StrToFloat(FormatFloat('0.00', vPerc1)) <> -2) and (StrToFloat(FormatFloat('0.00', vPerc1)) <> -1) then
      fDMCadNotaFiscal.vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.00', vPerc1))
    else
    begin
      fDMCadNotaFiscal.vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.00000', (vComissaoAux / (fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) * 100));
      if StrToFloat(FormatFloat('0.00000', fDMCadNotaFiscal.vPerc_Comissao_Rateio)) > StrToFloat(FormatFloat('0.00000', vPercMaior)) then
        fDMCadNotaFiscal.vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.00000', vPercMaior));
    end;
  end
  else if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I') then
    fDMCadNotaFiscal.vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.000', fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat));

  sds := TSQLDataSet.Create(nil);
  try
    if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I') then
      vPercAux := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat))
    else if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
      vPercAux := StrToFloat(FormatFloat('0.0000', fDMCadNotaFiscal.vPerc_Comissao_Rateio));

    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    vTexto := Replace2(FormatFloat('0.0000', vPercAux), ',', '.');
    sds.CommandText := ' UPDATE DUPLICATA SET PERC_COMISSAO = ' + vTexto + ' WHERE ID_NOTA = ' + IntToStr(fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger);
    sds.ExecSQL;
  except
  end;
  FreeAndNil(sds);
end;

procedure prc_Ajustar_ExtComissao(fDMCadNotaFiscal: TDMCadNotaFiscal);
var
  fDMCadExtComissao: TDMCadExtComissao;
  sds: TSQLDataSet;
begin
  fDMCadExtComissao := TDMCadExtComissao.Create(nil);

  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;

    fDMCadExtComissao.cdsDupAux.Close;
    fDMCadExtComissao.sdsDupAux.ParamByName('ID_NOTA').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger;
    fDMCadExtComissao.cdsDupAux.Open;
    fDMCadExtComissao.cdsDupAux.First;
    while not fDMCadExtComissao.cdsDupAux.Eof do
    begin
      sds.Close;
      sds.CommandText := 'select E.id from extcomissao E  WHERE E.id_duplicata = :ID_DUPLICATA ';
      SDS.ParamByName('ID_DUPLICATA').AsInteger := fDMCadExtComissao.cdsDupAuxID.AsInteger;
      sds.Open;
      if not (sds.IsEmpty) then
      begin
        fDMCadExtComissao.prc_Localizar(sds.FieldByName('ID').AsInteger);
        if not (fDMCadExtComissao.cdsExtComissao.IsEmpty) and (StrToFloat(FormatFloat('0.00000',
          fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat)) <> StrToFloat(FormatFloat('0.00000', fDMCadExtComissao.cdsDupAuxPERC_COMISSAO.AsFloat))) then
        begin
          fDMCadExtComissao.cdsExtComissao.Edit;
          fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00000', fDMCadExtComissao.cdsDupAuxPERC_COMISSAO.AsFloat));
          fDMCadExtComissao.cdsExtComissaoVLR_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',
            fDMCadExtComissao.cdsExtComissaoBASE_COMISSAO.AsFloat * fDMCadExtComissao.cdsExtComissaoPERC_COMISSAO.AsFloat / 100));
          fDMCadExtComissao.cdsExtComissao.Post;
          fDMCadExtComissao.cdsExtComissao.ApplyUpdates(0);
        end;
      end;
      fDMCadExtComissao.cdsDupAux.Next;
    end;
  except
  end;
  FreeAndNil(fDMCadExtComissao);
end;

{function fnc_Verifica_Nota_Ramiro(fDMCadNotaFiscal: TDMCadNotaFiscal): Boolean;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger = fDMCadNotaFiscal.cdsFilialNUM_NOTA_RAMIRO.AsInteger) then
  begin
    MessageDlg('Numeracao das notas está no limite, contate a Servisoft', mtError, [mbOk]);
    Result := True;
  end;

end;}

end.

