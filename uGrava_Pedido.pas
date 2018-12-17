unit uGrava_Pedido;

interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, SqlExpr, DmdDatabase, UDMCadPedido, dbXPress,
  UDMAprovacao_Ped, UDMEstoque;

procedure prc_Gravar(fDMCadPedido: TDMCadPedido ; Tipo: String = '');
procedure Gravar_Duplicata(fDMCadPedido: TDMCadPedido ; Tipo, TransfICMS: String; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String = '');
                                               //Tipo  P= Contas a Pagar   R= Contas a Receber
                                               //Prazo = ENT=Entrada  AVI=Avista
procedure Gravar_Dupicata_Hist(fDMCadPedido: TDMCadPedido ; Tipo: String);

procedure prc_Excluir_Pedido(fDMCadPedido: TDMCadPedido);
procedure Excluir_Duplicata_Ped(ID : Integer);
procedure prc_Excluir_Item_Ped(fDMCadPedido: TDMCadPedido);
procedure prc_Gravar_cdsHist_Senha(fDMCadPedido: TDMCadPedido);

function fnc_Existe_OC(fDMCadPedido: TDMCadPedido): Integer;

implementation

uses
  DateUtils, uUtilPadrao, uCalculo_Pedido;

procedure Gravar_Dupicata_Hist(fDMCadPedido: TDMCadPedido ; Tipo: String);
var
  vItemAux: Integer;
begin
  fDMCadPedido.cdsDuplicata_Hist.Last;
  vItemAux := fDMCadPedido.cdsDuplicata_HistITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadPedido.cdsDuplicata_Hist.Insert;
  fDMCadPedido.cdsDuplicata_HistID.AsInteger               := fDMCadPedido.cdsDuplicataID.AsInteger;
  fDMCadPedido.cdsDuplicata_HistITEM.AsInteger             := vItemAux;
  fDMCadPedido.cdsDuplicata_HistTIPO_HISTORICO.AsString    := 'ENT';
  fDMCadPedido.cdsDuplicata_HistID_HISTORICO.AsInteger     := 0;
  fDMCadPedido.cdsDuplicata_HistVLR_LANCAMENTO.AsFloat     := fDMCadPedido.cdsDuplicataVLR_PARCELA.AsFloat;
  fDMCadPedido.cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicata_HistVLR_MULTA.AsFloat          := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicata_HistVLR_DESCONTOS.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicata_HistVLR_DESPESAS.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicata_HistVLR_JUROSCALCULADO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  if Tipo = 'ENT' then
  begin
    fDMCadPedido.cdsDuplicata_HistCOMPLEMENTO.AsString  := 'ENTRADA DO TÍTULO';
    fDMCadPedido.cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end;
  fDMCadPedido.cdsDuplicata_HistDTHISTORICO.AsDateTime  := Date;
  fDMCadPedido.cdsDuplicata_HistDTLANCAMENTO.AsDateTime := fDMCadPedido.cdsDuplicataDTEMISSAO.AsDateTime;
  fDMCadPedido.cdsDuplicata_HistNUMCHEQUE.AsInteger     := 0;
  fDMCadPedido.cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
  if fDMCadPedido.cdsDuplicataID_CONTA.AsInteger > 0 then
    fDMCadPedido.cdsDuplicata_HistID_CONTA.AsInteger := fDMCadPedido.cdsDuplicataID_CONTA.AsInteger;
  fDMCadPedido.cdsDuplicata_HistID_COMISSAO.AsInteger   := 0;
  fDMCadPedido.cdsDuplicata_HistTIPO_ES.AsString        := fDMCadPedido.cdsDuplicataTIPO_ES.AsString;
  fDMCadPedido.cdsDuplicata_Hist.Post;
end;


procedure Gravar_Duplicata(fDMCadPedido: TDMCadPedido ; Tipo, TransfICMS: String; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String = '');
var
  vAux: Integer;
begin
  if not fDMCadPedido.cdsDuplicata.Active then
    fDMCadPedido.Abrir_cdsDuplicata(0);

  vAux := dmDatabase.ProximaSequencia('DUPLICATA',0);

  fDMCadPedido.cdsDuplicata.Insert;
  fDMCadPedido.cdsDuplicataID.AsInteger := vAux;
  fDMCadPedido.cdsDuplicataTIPO_ES.AsString := 'E';
  fDMCadPedido.cdsDuplicataFILIAL.AsInteger        := fDMCadPedido.cdsPedidoFILIAL.AsInteger;
  fDMCadPedido.cdsDuplicataID_PEDIDO.AsInteger     := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMCadPedido.cdsDuplicataPARCELA.AsInteger       := Parcela;
  fDMCadPedido.cdsDuplicataNUMDUPLICATA.AsString   := 'PED.' + fDMCadPedido.cdsPedidoNUM_PEDIDO.AsString;
  fDMCadPedido.cdsDuplicataDTVENCIMENTO.AsDateTime := Data;
  fDMCadPedido.cdsDuplicataVLR_PARCELA.AsFloat     := StrToFloat(FormatFloat('0.00',Valor));
  fDMCadPedido.cdsDuplicataVLR_RESTANTE.AsFloat    := StrToFloat(FormatFloat('0.00',Valor));
  fDMCadPedido.cdsDuplicataVLR_PAGO.AsFloat        := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicataVLR_DEVOLUCAO.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicataVLR_DESPESAS.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicataVLR_DESCONTO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicataVLR_JUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicataVLR_MULTA.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicataVLR_COMISSAO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  fDMCadPedido.cdsDuplicataPERC_BASE_COMISSAO.AsFloat := 100;
  //10/11/2015
  //fDMCadPedido.cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.00',cdsPedidoPERC_COMISSAO.AsFloat));
  fDMCadPedido.cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMCadPedido.vPerc_Comissao_Rateio));
  fDMCadPedido.cdsDuplicataDTULTPAGAMENTO.Clear;
  fDMCadPedido.cdsDuplicataID_PESSOA.AsInteger     := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  if fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0 then
    fDMCadPedido.cdsDuplicataID_VENDEDOR.AsInteger := fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger;
    if fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger > 0 then
      fDMCadPedido.cdsDuplicataID_CONTA.AsInteger        := fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger;
    if fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger > 0 then
      fDMCadPedido.cdsDuplicataID_TIPOCOBRANCA.AsInteger := fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger;
    if fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger > 0 then
      fDMCadPedido.cdsDuplicataID_CONTA_BOLETO.AsInteger := fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger;
  fDMCadPedido.cdsDuplicataID_COMISSAO.AsInteger       := 0;
  fDMCadPedido.cdsDuplicataQTD_DIASATRASO.AsInteger    := 0;
  fDMCadPedido.cdsDuplicataDTRECEBIMENTO_TITULO.Clear;
  fDMCadPedido.cdsDuplicataDTEMISSAO.AsDateTime        := fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime;
  fDMCadPedido.cdsDuplicataPAGO_CARTORIO.AsString      := 'N';
  fDMCadPedido.cdsDuplicataPROTESTADO.AsString         := 'N';
  fDMCadPedido.cdsDuplicataTIPO_LANCAMENTO.AsString    := 'PED';
  fDMCadPedido.cdsDuplicataARQUIVO_GERADO.AsString     := 'N';
  fDMCadPedido.cdsDuplicataTRANSFERENCIA_ICMS.AsString := TransfICMS;
  fDMCadPedido.cdsDuplicataNOSSONUMERO.AsString        := '';
  fDMCadPedido.cdsDuplicataDTFINANCEIRO.Clear;
  fDMCadPedido.cdsDuplicataNUMCHEQUE.AsInteger         := 0;
  fDMCadPedido.cdsDuplicataACEITE.AsString             := '';
  if fDMCadPedido.cdsPedidoID_CONTA_ORCAMENTO.AsInteger > 0 then
    fDMCadPedido.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger :=  fDMCadPedido.cdsPedidoID_CONTA_ORCAMENTO.AsInteger
  else
    fDMCadPedido.cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  fDMCadPedido.cdsDuplicataTITULO_CARTORIO.AsString := 'N';
  if fDMCadPedido.cdsDuplicataID_CONTA.AsInteger > 0 then
  begin
    if not fDMCadPedido.cdsContas.Locate('ID',fDMCadPedido.cdsDuplicataID_CONTA.AsInteger,([Locaseinsensitive])) then
      fDMCadPedido.cdsDuplicataID_CONTA.Clear;
  end;
  if fDMCadPedido.cdsDuplicataID_BANCO.AsInteger > 0 then
  begin
    if not fDMCadPedido.cdsContas.Locate('ID',fDMCadPedido.cdsDuplicataID_BANCO.AsInteger,([Locaseinsensitive])) then
      fDMCadPedido.cdsDuplicataID_BANCO.Clear;
  end;
  //12/07/2016
  if vTerminal <= 0 then
    fDMCadPedido.cdsDuplicataID_TERMINAL.Clear
  else
    fDMCadPedido.cdsDuplicataID_TERMINAL.AsInteger := vTerminal;
  fDMCadPedido.cdsDuplicata.Post;

  Gravar_Dupicata_Hist(fDMCadPedido,'ENT');
  fDMCadPedido.cdsDuplicata.ApplyUpdates(0);
end;


function fnc_Existe_OC(fDMCadPedido: TDMCadPedido): Integer;
begin
  Result := 0;
  if fDMCadPedido.cdsParametrosPERMITE_MESMA_OC.AsString = 'S' then
    exit;
  if trim(fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString) = '' then
    exit;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <= 0 then
    exit;
  fDMCadPedido.qVerifica_OC.Close;
  fDMCadPedido.qVerifica_OC.ParamByName('PEDIDO_CLIENTE').AsString := fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString;
  fDMCadPedido.qVerifica_OC.ParamByName('ID_CLIENTE').AsInteger    := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  fDMCadPedido.qVerifica_OC.Open;
  if not(fDMCadPedido.qVerifica_OC.IsEmpty) and (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0) and (fDMCadPedido.cdsPedidoID.AsInteger <> fDMCadPedido.qVerifica_OCID.AsInteger) then
    Result := fDMCadPedido.qVerifica_OCNUM_PEDIDO.AsInteger;
end;

procedure prc_Gravar(fDMCadPedido: TDMCadPedido ; Tipo: String = '');
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vSerie: String;
  vNumAux: Integer;
  vAux: Integer;
  vID_Estoque,vVerificaCampos: Integer;
  vDescAux: Real;
  vQtdAux: Real;
  vQtdOriAux: Real;
  vUnidade: String;
  vVlrAux: Real;
  vComissaoAux: Real;
  vFlag: Boolean;
  vPercAux: Real;
  fDMAprovacao_Ped: TDMAprovacao_Ped;
  fDMEstoque: TDMEstoque;
  vGravou: Boolean;
  vID: Integer;
begin
  fDMCadPedido.vMSGErro := '';
  vGravou  := False;
  vVerificaCampos := 0;
  //if (trim(fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString) = '') and (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') then
  //  fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Pedido cliente não informado!';
  if (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger < 1) and (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Cliente não informado!';
  if (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger < 1) and (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'C') then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Fornecedor não informado!';
  if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'O') and (trim(fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString) = '') then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Cliente não informado!';
  if fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime < 10 then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Data de Emissão não informada!';
  if (Tipo <> 'ORC') and (fDMCadPedido.cdsPedido_Itens.IsEmpty) and (fDMCadPedido.cdsPedido_Ace.IsEmpty) and (fDMCadPedido.cdsPedido_Rol.IsEmpty) then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Itens não informados!';
  if fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat > fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Valor do adiantamento é maior que o valor do pedido!';
  if (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat)) > 0) and (fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger <= 0) and
     (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Pedido com % de comissão e o vendedor não informado!';
  if (fDMCadPedido.qParametros_PedEXIGIR_NUM_PED_CLIENTE.AsString = 'S') and (trim(fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString) = '') then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Nº Pedido Cliente (OC) não informado!';
  if (fDMCadPedido.qParametros_GeralEMPRESA_VAREJO.AsString = 'S') and (fDMCadPedido.cdsPedidoTIPO_ATENDIMENTO.AsInteger = 4)
    and (fDMCadPedido.cdsPedidoID_TRANSPORTADORA.AsInteger <= 0) then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Quando for entrega a domicílio é obrigado informar a transportadora!';

  if (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger < 1) and (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') then
    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Cliente não informado!';


  if  fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
  begin
    if (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S') and (fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') then
      vVerificaCampos := 1
    else
    if (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S') then
      vVerificaCampos := 2
    else
    if (fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') then
      vVerificaCampos := 3;
  end;

  case vVerificaCampos of
    1 : begin
          if (fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString = '') and (fDMCadPedido.cdsPedidoDDD.AsInteger <= 0) and (fDMCadPedido.cdsPedidoFONE.AsString = '') then
            fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** E-mail ou Telefone com DDD devem ser informado!'
        end ;
    2 : begin
          if (fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString = '') then
            fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** E-mail deve ser informado!'
         end;
    3 : begin
          if (fDMCadPedido.cdsPedidoDDD.AsInteger <= 0) or (fDMCadPedido.cdsPedidoFONE.AsString = '') then
            fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Telefone com DDD devem ser informado!'
        end;
  end;

//  if vVerificaCampos > 0 then
//  begin
//  if (fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString = '') and (fDMCadPedido.cdsPedidoDDD.AsInteger <= 0) and (fDMCadPedido.cdsPedidoFONE.AsString = '') then
//    fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** E-mail ou Telefone com DDD devem ser informado!';
//  end;

  if fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
  begin
    if (fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime > 10) and (fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime < fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime) then
      fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Data de entrega menor que a data de emissão!';
  end
  else
  begin
    vFlag := True;
    if fDMCadPedido.qParametros_FinCONTROLAR_BANCO_REM_DEP.AsString = 'S' then
    begin
      if (fDMCadPedido.cdsPedidoID_CONTA.AsInteger > 0) and (fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger > 0) then
      begin
        if (fDMCadPedido.cdsPedidoID_CONTA.AsInteger <> fDMCadPedido.cdsContasID.AsInteger) then
          fDMCadPedido.cdsContas.Locate('ID',fDMCadPedido.cdsPedidoID_CONTA.AsInteger,([Locaseinsensitive]));
        if (fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger <> fDMCadPedido.cdsTipoCobrancaID.AsInteger) then
          fDMCadPedido.cdsTipoCobranca.Locate('ID',fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger,([Locaseinsensitive]));
        if (fDMCadPedido.cdsTipoCobrancaGERARBOLETO.AsString = 'S') and (fDMCadPedido.cdsContasGERAR_BOLETO.AsString <> 'S') then
          fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Banco ' + fDMCadPedido.cdsContasNOME.AsString + ', não está marcado para gerar boleto!'
        else
        if (fDMCadPedido.cdsTipoCobrancaDEPOSITO.AsString = 'S') and (fDMCadPedido.cdsContasGERAR_DEPOSITO.AsString <> 'S') then
          fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Banco ' + fDMCadPedido.cdsContasNOME.AsString + ', não está marcado para usar o tipo de cobrança depósito!';
      end;
      fDMCadPedido.cdsPedido_Parc.First;
      while not fDMCadPedido.cdsPedido_Parc.Eof do
      begin
        if fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger > 0 then
        begin
          if fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger <> fDMCadPedido.cdsContasID.AsInteger then
            fDMCadPedido.cdsContas.Locate('ID',fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger,([Locaseinsensitive]));
          if (fDMCadPedido.cdsPedido_ParclkGerarBoleto.AsString = 'S') and (fDMCadPedido.cdsContasGERAR_BOLETO.AsString <> 'S' ) then
          begin
            vFlag := False;
            fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Banco ' + fDMCadPedido.cdsContasNOME.AsString + ', não está marcado para gerar boleto!';
            fDMCadPedido.cdsPedido_Parc.Last;
          end
          else
          if (fDMCadPedido.cdsPedido_ParclkDeposito.AsString = 'S') and (fDMCadPedido.cdsContasGERAR_DEPOSITO.AsString <> 'S' ) then
          begin
            vFlag := False;
            fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Banco ' + fDMCadPedido.cdsContasNOME.AsString + ', não está marcado para usar o tipo de cobrança depósito!';
            fDMCadPedido.cdsPedido_Parc.Last;
          end
        end;
        fDMCadPedido.cdsPedido_Parc.Next;
      end;
    end;
    fDMCadPedido.cdsPedido_Itens.First;
    while not fDMCadPedido.cdsPedido_Itens.Eof do
    begin
      if (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime > 10) and (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime < fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime) then
        fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Data de entrega menor que a data de emissão!';
      fDMCadPedido.cdsPedido_Itens.Next;
    end;
  end;
  if fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P' then
  begin
    vAux := uGrava_Pedido.fnc_Existe_OC(fDMCadPedido);
    if vAux > 0 then
      fDMCadPedido.vMSGErro := fDMCadPedido.vMSGErro + #13 + '*** Nº Pedido do cliente já foi digitado, está no pedido interno ' + IntToStr(vAux);
  end;
  if fDMCadPedido.vMSGErro <> '' then
    exit;

  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> fDMCadPedido.cdsClienteCODIGO.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,([Locaseinsensitive]));

  vID := fDMCadPedido.cdsPedidoID.AsInteger;

  fDMEstoque := TDMEstoque.Create(fDMEstoque);

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 ' +
                         ' WHERE TABELA = ' + QuotedStr('PEDIDO');
    sds.ExecSQL();

    //10/11/2015  if do adiatamento incluida
    if (fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') then
      uGrava_Pedido.Excluir_Duplicata_Ped(fDMCadPedido.cdsPedidoID.AsInteger);
    //***************

    if ((fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'O') and (fDMCadPedido.cdsPedidoNUM_ORCAMENTO.AsInteger <= 0)) or
       ((fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') and (fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger <= 0)) or
       ((fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'S') and (fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger <= 0)) or
       ((fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'C') and (fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger <= 0)) then
    begin
      vFilial := fDMCadPedido.cdsPedidoFILIAL.AsInteger;
      if fDMCadPedido.cdsFilialID.AsInteger <> fDMCadPedido.cdsPedidoFILIAL.AsInteger then
        fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedidoFILIAL.AsInteger,([Locaseinsensitive]));
      if fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'O' then
        vNumAux :=  uCalculo_Pedido.fnc_Proximo_Num_Pedido(fDMCadPedido.cdsPedidoTIPO_REG.AsString,fDMCadPedido.qParametros_PedUSA_NUM_PEDIDO_POR_FILIAL.AsString,fDMCadPedido.cdsFilialNUM_ORCAMENTO_ULT.AsInteger)
      else
      if fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P' then
        vNumAux := uCalculo_Pedido.fnc_Proximo_Num_Pedido(fDMCadPedido.cdsPedidoTIPO_REG.AsString,fDMCadPedido.qParametros_PedUSA_NUM_PEDIDO_POR_FILIAL.AsString,fDMCadPedido.cdsFilialNUM_PEDIDO_ULT.AsInteger)
      else
        vNumAux := uCalculo_Pedido.fnc_Proximo_Num_Pedido(fDMCadPedido.cdsPedidoTIPO_REG.AsString,fDMCadPedido.qParametros_PedUSA_NUM_PEDIDO_POR_FILIAL.AsString,fDMCadPedido.cdsFilialNUM_OC_ULT.AsInteger);
      vNumAux := vNumAux + 1;
      if fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'O' then
      begin
        //vNumAux := qProximoPedidoNUM_ORCAMENTO.AsInteger + 1;
        fDMCadPedido.cdsPedidoNUM_ORCAMENTO.AsInteger := vNumAux;
      end
      else
      begin
        //vNumAux := qProximoPedidoNUM_PEDIDO.AsInteger + 1;
        fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger := vNumAux;
      end;
    end;
    if trim(fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString) = '' then
    begin
      //25/05/2018
      if fDMCadPedido.qParametros_PedUSA_NUM_PEDIDO_POR_VEND.AsString = 'S' then
      begin
        fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString   := fnc_Num_Pedido_Vend(fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger);
        fDMCadPedido.cdsPedidoNUM_PEDIDO_VEND.AsInteger := vNum_Pedido_Vend;
      end
      else
        fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString := fDMCadPedido.cdsPedidoNUM_PEDIDO.AsString;
    end;

    //10/11/2015
    if fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString <> 'S' then
      fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));

    if (fDMCadPedido.cdsParametrosCONTROLAR_DUP_PEDIDO.AsString = 'S') or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') then //10/11/2015 Usa_Adiantamento_pedido
    begin
      fDMCadPedido.cdsPedido_Parc.First;
      while not fDMCadPedido.cdsPedido_Parc.Eof do
      begin
        if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ParcVLR_VENCIMENTO.AsFloat)) > 0 then
          Gravar_Duplicata(fDMCadPedido,'R','N',fDMCadPedido.cdsPedido_ParcITEM.AsInteger,fDMCadPedido.cdsPedido_ParcVLR_VENCIMENTO.AsFloat,fDMCadPedido.cdsPedido_ParcDTVENCIMENTO.AsDateTime,'');
        fDMCadPedido.cdsPedido_Parc.Next;
      end;
    end;

    //08/03/2015  quando for pedido e for para descontar do estoque
    //19/09/2016 Quando empresa for Sucata
    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') and (fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P')  then
    begin
      fDMCadPedido.cdsPedido_Itens.First;
      while not fDMCadPedido.cdsPedido_Itens.Eof do
      begin
        if fDMCadPedido.cdsParametrosTIPO_ESTOQUE.AsString = 'P' then
        begin
          vID_Estoque := 0;
          if fDMCadPedido.cdsPedido_ItensGERAR_ESTOQUE.AsString = 'S' then
          begin
            //gravar estoque aqui;
            //11/09/2015 Feito para a empresa JW
            vUnidade := fDMCadPedido.cdsPedido_ItensUNIDADE.AsString;
            if (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0) then
            begin
              if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> fDMCadPedido.cdsProdutoID.AsInteger then
              begin
                if fDMCadPedido.qParametros_PedPEDIDO_LOJA.AsString = 'S' then
                   fDMCadPedido.prc_Abrir_ProdutoLoja(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,'','')
                else
                  (fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,([Locaseinsensitive])));
              end;
              vUnidade := fDMCadPedido.cdsProdutoUNIDADE.AsString;
              vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
            end
            else
              vQtdAux  := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat + fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat));

            vDescAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));

            vQtdOriAux := StrToFloat(FormatFloat('0.0000',vQtdAux));
            vVlrAux := StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
            if (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S') and (trim(fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString) <> '') and
               (fDMCadPedido.cdsPedido_ItensUNIDADE_PROD.AsString <> fDMCadPedido.cdsPedido_ItensUNIDADE.AsString) and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsFloat)) <> 1) then
            begin
              vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux * fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsFloat));
              vVlrAux := StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat / fDMCadPedido.cdsPedido_ItensCONV_UNIDADE.AsFloat));
            end;

            vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDMCadPedido.cdsPedido_ItensID_MOVESTOQUE.AsInteger,
                                                         fDMCadPedido.cdsPedidoFILIAL.AsInteger,
                                                         fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                                         fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,
                                                         fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger,
                                                         fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,
                                                         fDMCadPedido.cdsPedidoID_CFOP.AsInteger,
                                                         fDMCadPedido.cdsPedidoID.AsInteger,0,
                                                         'S','PED',
                                                         vUnidade,
                                                         vUnidade,
                                                         '',
                                                         fDMCadPedido.cdsPedido_ItensTAMANHO.AsString,
                                                         fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime,
                                                         //fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                                         vVlrAux,
                                                         //fDMCadPedido.cdsPedido_ItensQTD.AsFloat,
                                                         vQtdAux,
                                                         fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat,
                                                         fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat,
                                                         vDescAux,
                                                         fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat,
                                                         fDMCadPedido.cdsPedido_ItensVLR_FRETE.AsFloat,
                                                         //fDMCadPedido.cdsPedido_ItensQTD.AsFloat,
                                                         //vQtdAux,
                                                         vQtdOriAux,
                                                         fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                                         0,0,'',
                                                         fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,
                                                         fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString,'N',
                                                         vVlrAux);
          end;
          if fDMCadPedido.cdsPedido_ItensID_MOVESTOQUE.AsInteger <> vID_Estoque then
          begin
            if not(fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
              fDMCadPedido.cdsPedido_Itens.Edit;
            fDMCadPedido.cdsPedido_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
          end;
          if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
            fDMCadPedido.cdsPedido_Itens.Post;
        end;
        fDMCadPedido.cdsPedido_Itens.Next;
      end;
    end;

    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') and (fDMCadPedido.cdsParametrosUSA_APROVACAO_PED.AsString <> 'S') then
      fDMCadPedido.cdsPedidoAPROVADO_PED.AsString := 'A'
    else
    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'C') and (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString <> 'S') then
      fDMCadPedido.cdsPedidoAPROVADO_PED.AsString := 'A';

    //18/07/2017
    if (fDMCadPedido.cdsClienteEMAIL_COMPRAS.AsString = '') and (fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString <> '') and
       (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.asInteger) and
       (fDMCadPedido.qParametros_PedUSA_EMAIL_NO_PED.AsString = 'S') then
    begin
       fDMCadPedido.prc_Gravar_Email_Pessoa(fDMCadPedido.cdsClienteCODIGO.AsInteger,fDMCadPedido.cdsPedidoEMAIL_COMPRAS.AsString);
    end;

    if (fDMCadPedido.cdsClienteCELULAR.AsString = '') and (fDMCadPedido.cdsPedidoFONE.AsString <> '') and
       (fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.asInteger) and
       (fDMCadPedido.qParametros_PedENVIA_SMS.AsString = 'S') then
    begin
       fDMCadPedido.prc_Gravar_Telefone(fDMCadPedido.cdsClienteCODIGO.AsInteger,fDMCadPedido.cdsPedidoDDD.AsInteger,fDMCadPedido.cdsPedidoFONE.AsString);
    end;

    fDMCadPedido.cdsPedido.Post;

    //11/08/2016
    if (fDMCadPedido.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S') and (Tipo = 'ALT') then
      prc_Gravar_cdsHist_Senha(fDMCadPedido);
    //********************

    fDMCadPedido.cdsPedido.ApplyUpdates(0);

    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.Close;
    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
    fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ExecSQL;

    //25/06/2015
    fDMCadPedido.sdsPrc_Atualiza_DtCompra.Close;
    fDMCadPedido.sdsPrc_Atualiza_DtCompra.ParamByName('C_ID').AsInteger := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    fDMCadPedido.sdsPrc_Atualiza_DtCompra.ExecSQL;

    //10/08/2015
    if (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P') OR (fDMCadPedido.qParametros_PedMOSTRAR_TERCEIRO.AsString = 'P') then
    begin
      fDMCadPedido.sdsPrc_Atualiza_DtEntrega.Close;
      fDMCadPedido.sdsPrc_Atualiza_DtEntrega.ParamByName('P_ID').AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
      if (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P') then
      begin
        if fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime > 10 then
          fDMCadPedido.sdsPrc_Atualiza_DtEntrega.ParamByName('P_DATA').AsDate  := fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime;
      end;
      if (fDMCadPedido.qParametros_PedMOSTRAR_TERCEIRO.AsString = 'P') then
      begin
        if fDMCadPedido.cdsPedidoID_ATELIER.AsInteger > 0 then
          fDMCadPedido.sdsPrc_Atualiza_DtEntrega.ParamByName('P_ID_ATELIER').AsInteger := fDMCadPedido.cdsPedidoID_ATELIER.AsInteger;
      end;
      fDMCadPedido.sdsPrc_Atualiza_DtEntrega.ExecSQL;
    end;

    //Gravar as chapas, JW vai usar    19/09/2016
    if (fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P') and (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
    begin
    //aqui gravar chapa
    end;

    dmDatabase.scoDados.Commit(ID);

    vGravou := True;
    fDMCadPedido.mSenha.EmptyDataSet;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
  FreeAndNil(fDMEstoque);

  if vGravou then
  begin
    if vID <> fDMCadPedido.cdsPedidoID.AsInteger then
      fDMCadPedido.prc_Localizar(vID);
    if fDMCadPedido.cdsPedidoTIPO_REG.AsString = 'P' then
    begin
      if fDMCadPedido.qParametros_PedUSA_PROCESSO.AsString = 'S' then
        fDMAprovacao_Ped := TDMAprovacao_Ped.Create(fDMAprovacao_Ped);
      try
        if (fDMCadPedido.qParametros_PedUSA_PROCESSO.AsString = 'S')  then
          fDMAprovacao_Ped.prc_Gravar_Pedido_Processo('',fDMCadPedido.cdsPedidoID.AsInteger,0,'C','','',Date);
      except
        on e: Exception do
          ShowMessage('Ocorreu o seguinte erro ao gravar Processo: ' + #13 + e.Message);
      end;
      FreeAndNil(fDMAprovacao_Ped);
    end;
  end;
end;

procedure prc_Gravar_cdsHist_Senha(fDMCadPedido: TDMCadPedido);
var
  vItemAux: Integer;
  vCampoSenha: String;
  vAux: Integer;
begin
  fDMCadPedido.cdsHist_Senha.Close;
  fDMCadPedido.sdsHist_Senha.CommandText := fDMCadPedido.sdsHist_Senha.CommandText + ' WHERE ID = 0 ';
  fDMCadPedido.cdsHist_Senha.Open;

  fDMCadPedido.mSenha.First;
  while not fDMCadPedido.mSenha.Eof do
  begin
    vAux := dmDatabase.ProximaSequencia('HIST_SENHA',0);
    fDMCadPedido.cdsHist_Senha.Insert;
    fDMCadPedido.cdsHist_SenhaID.AsInteger := vAux;
    fDMCadPedido.cdsHist_SenhaID_DOC.AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
    fDMCadPedido.cdsHist_SenhaITEM_DOC.AsInteger := fDMCadPedido.mSenhaItem.AsInteger;
    fDMCadPedido.cdsHist_SenhaNUM_DOC.AsInteger  := fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger;
    fDMCadPedido.cdsHist_SenhaTIPO_ARQ.AsString := 'PED';
    fDMCadPedido.cdsHist_SenhaTIPO_DOC.AsString  := fDMCadPedido.mSenhaTipo_Doc.AsString;
    fDMCadPedido.cdsHist_SenhaTIPO_HIST.AsString := fDMCadPedido.mSenhaTipo_Alt.AsString;
    fDMCadPedido.cdsHist_SenhaSENHA.AsString     := fDMCadPedido.mSenhaSenha.AsString;
    fDMCadPedido.cdsHist_SenhaUSUARIO.AsString   := vUsuario;
    fDMCadPedido.cdsHist_SenhaDATA.AsDateTime    := Date;
    fDMCadPedido.cdsHist_SenhaHORA.AsDateTime    := Now;
    fDMCadPedido.cdsHist_SenhaSENHA_PERTENCE_AO_USUARIO.AsString := fDMCadPedido.mSenhaSenha_Pertence.AsString;
    fDMCadPedido.cdsHist_Senha.Post;
    fDMCadPedido.cdsHist_Senha.ApplyUpdates(0);
    fDMCadPedido.mSenha.Delete;
  end;
end;

procedure prc_Excluir_Item_Ped(fDMCadPedido: TDMCadPedido);
begin
  fDMCadPedido.cdsPedido_Cli.First;
  while not fDMCadPedido.cdsPedido_Cli.Eof do
    fDMCadPedido.cdsPedido_Cli.Delete;
  fDMCadPedido.cdsPedido_Item_Tipo.First;
  while not fDMCadPedido.cdsPedido_Item_Tipo.Eof do
    fDMCadPedido.cdsPedido_Item_Tipo.Delete;
  fDMCadPedido.cdsPedido_Material.First;
  while not fDMCadPedido.cdsPedido_Material.Eof do
  begin
    fDMCadPedido.cdsPedido_Etiqueta.First;
    while not fDMCadPedido.cdsPedido_Etiqueta.Eof do
      fDMCadPedido.cdsPedido_Etiqueta.Delete;
    fDMCadPedido.cdsPedido_Material.Delete;
  end;
  fDMCadPedido.cdsPedido_Itens.Delete;


end;

procedure Excluir_Duplicata_Ped(ID : Integer);
var
  sds: TSQLDataSet;
begin
  if ID <= 0 then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  sds.CommandText   := 'DELETE FROM DUPLICATA WHERE ID_PEDIDO = ' + IntToStr(ID);
  sds.ExecSQL;
  FreeAndNil(sds);
end;

procedure prc_Excluir_Pedido(fDMCadPedido: TDMCadPedido);
var
  ID: TTransactionDesc;
  vFlag: Boolean;
  vID_CliAux: Integer;
  vIDAux : Integer;
begin
  if not(fDMCadPedido.cdsPedido.Active) or (fDMCadPedido.cdsPedido.IsEmpty) then
    exit;

  vFlag  := True;
  vIDAux := 0;
  fDMCadPedido.cdsPedido_Itens.First;
  while not fDMCadPedido.cdsPedido_Itens.Eof do
  begin
    if fDMCadPedido.cdsPedido_ItensAPROVADO_ORC.AsString = 'A' then
      vFlag := False;
    fDMCadPedido.cdsPedido_Itens.Next;
  end;
  fDMCadPedido.vMSGErro := '';
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadPedido.cdsPedido_Itens.First;
    while not fDMCadPedido.cdsPedido_Itens.Eof do
      prc_Excluir_Item_Ped(fDMCadPedido);

    fDMCadPedido.cdsPedido_Desconto.First;
    while not fDMCadPedido.cdsPedido_Desconto.Eof do
      fDMCadPedido.cdsPedido_Desconto.Delete;

    fDMCadPedido.cdsPedido_Parc.First;
    while not fDMCadPedido.cdsPedido_Parc.eof do
      fDMCadPedido.cdsPedido_Parc.Delete;

    if fDMCadPedido.cdsPedido_Ace.Active then
    begin
      fDMCadPedido.cdsPedido_Ace.First;
      while not fDMCadPedido.cdsPedido_Ace.Eof do
        fDMCadPedido.cdsPedido_Ace.Delete;
    end;
    if fDMCadPedido.cdsPedido_Rol.Active then
    begin
      fDMCadPedido.cdsPedido_Rol.First;
      while not fDMCadPedido.cdsPedido_Rol.Eof do
        fDMCadPedido.cdsPedido_Rol.Delete;
    end;

    Excluir_Duplicata_Ped(fDMCadPedido.cdsPedidoID.AsInteger);

    vID_CliAux := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;

    //11/08/2016
    if (fDMCadPedido.qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S') then
      prc_Gravar_cdsHist_Senha(fDMCadPedido);
    //****************

    if not fDMCadPedido.cdsPedido_Cupom.IsEmpty then
      fDMCadPedido.cdsPedido_Cupom.Delete;

    vIDAux := fDMCadPedido.cdsPedidoID.AsInteger;

    fDMCadPedido.qPedOS.Close;
    fDMCadPedido.qPedOS.ParamByName('ID').AsInteger := vIDAux;
    fDMCadPedido.qPedOS.Open;

    fDMCadPedido.cdsPedido.Delete;
    fDMCadPedido.cdsPedido.ApplyUpdates(0);

    fDMCadPedido.sdsPrc_Atualiza_DtCompra.Close;
    fDMCadPedido.sdsPrc_Atualiza_DtCompra.ParamByName('C_ID').AsInteger := vID_CliAux;
    fDMCadPedido.sdsPrc_Atualiza_DtCompra.ExecSQL;

    //23/06/2018 Supercrom
    if fDMCadPedido.qParametros_PedUSAR_COPIA_OS.AsString = 'S' then
    begin
      while not fDMCadPedido.qPedOS.Eof do
      begin
        fDMCadPedido.sdsprc_Atualiza_OS_Fat.Close;
        fDMCadPedido.sdsprc_Atualiza_OS_Fat.ParamByName('P_ID').AsInteger := fDMCadPedido.qPedOSID_OS_SERV.AsInteger;
        fDMCadPedido.sdsprc_Atualiza_OS_Fat.ExecSQL;
        fDMCadPedido.qPedOS.Next;
      end;
      fDMCadPedido.qPedOS.Close;
    end;
    //****************

    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

end.

