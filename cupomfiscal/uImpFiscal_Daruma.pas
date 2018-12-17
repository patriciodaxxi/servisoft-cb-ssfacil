unit uImpFiscal_Daruma;

interface

uses
  Classes, Forms, Windows;

  procedure DarumaFramework_Mostrar_Retorno(dRetorno: integer);

	function iCFAbrir_ECF_Daruma(pszCPF: String; pszNome: String; pszEndereco: String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFAbrirPadrao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
	//Registro de Item
	function iCFVender_ECF_Daruma(pszCargaTributaria:String; pszQuantidade:String; pszPrecoUnitario:String; pszTipoDescAcresc:String; pszValorDescAcresc:String; pszCodigoItem:String; pszUnidadeMedida:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFVenderSemDesc_ECF_Daruma(pszCargaTributaria, pszQuantidade, pszPrecoUnitario, pszCodigoItem, pszUnidadeMedida, pszDescricaoItem: String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFVenderResumido_ECF_Daruma(pszCargaTributaria:String; pszPrecoUnitario:String; pszCodigoItem:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
	//Desconto ou Acréscimo em Item de Cupom Fiscal
	function iCFLancarAcrescimoItem_ECF_Daruma(pszNumItem:String; pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFLancarDescontoItem_ECF_Daruma(pszNumItem:String; pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFLancarAcrescimoUltimoItem_ECF_Daruma(pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFLancarDescontoUltimoItem_ECF_Daruma(pszTipoDescAcresc: String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
	//Cancelamento Total de Item em Cupom Fiscal
	function iCFCancelarItem_ECF_Daruma(pszNumItem: String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFCancelarUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	//Cancelamento parcial de item em cupom fiscal
	function iCFCancelarItemParcial_ECF_Daruma(pszNumItem:String;pszQuantidade: String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFCancelarUltimoItemParcial_ECF_Daruma(pszQuantidade: String): Integer; StdCall; External 'DarumaFramework.dll';
	//Cancelamento de desconto e acrescimo em item
	function iCFCancelarDescontoItem_ECF_Daruma(pszNumItem:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFCancelarDescontoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFCancelarAcrescimoItem_ECF_Daruma(pszNumItem:string):Integer; StdCall; External 'DarumaFramework.dll';
	function iCFCancelarAcrescimoUltimoItem_ECF_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
	//Totalizacao de cupom fiscal
	function iCFTotalizarCupom_ECF_Daruma(pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFTotalizarCupomPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	//Cancelamento de desconto e acrescimo em subtotal de cupom fiscal
	function iCFCancelarDescontoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFCancelarAcescimoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	//Descricao do meios de pagamento de cupom fiscal
	function iCFEfetuarPagamentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFEfetuarPagamentoFormatado_ECF_Daruma(pszFormaPgto:String; pszValor:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFEfetuarPagamento_ECF_Daruma(pszFormaPgto:String;pszValor:String;pszInfoAdicional:String): Integer; StdCall; External 'DarumaFramework.dll';
	//Encerramento de cupom fiscal
	function iCFEncerrar_ECF_Daruma(pszCupomAdicional:string;pszMensagem:string):Integer; StdCall; External 'DarumaFramework.dll';
	function iCFEncerrarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFEncerrarConfigMsg_ECF_Daruma(pszMensagem:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFEncerrarResumido_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFEmitirCupomAdicional_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	//Cancelamento de cupom fiscal
	function iCFCancelar_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
	//Identificação Consumidor Cupom Fiscal
	function iCFIdentificarConsumidor_ECF_Daruma(pszNome:string;pszEndereco:String; pszDoc:string): Integer; StdCall; External 'DarumaFramework.dll';
	//Cupom Mania
   function rCMEfetuarCalculo_ECF_Daruma(pszISS:string;pszICMS:string): Integer; StdCall; External 'DarumaFramework.dll';
	//Estornar Meio Pagamento
	function iEstornarPagamento_ECF_Daruma(pszFormaPgtoEstornado:string;pszFormaPgtoEfetivado:string;pszValor:string;pszInfoAdicional:string): Integer; StdCall; External 'DarumaFramework.dll';

//CCD - Comprovante de Crédito e Débito
 	function iCCDAbrir_ECF_Daruma(pszFormaPgto:String;pszParcelas:String;pszDocOrigem:String;pszValor:String;pszCPF:String;pszNome:String;pszEndereco:String): Integer; StdCall; External 'DarumaFramework.dll';
 	function iCCDAbrirSimplificado_ECF_Daruma(pszFormaPgto:String; pszParcelas:String;pszDocOrigem:String;pszValor: String): Integer; StdCall; External 'DarumaFramework.dll';
 	function iCCDAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
 	function iCCDImprimirTexto_ECF_Daruma(pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
 	function iCCDImprimirArquivo_ECF_Daruma(pszArqOrigem:String): Integer; StdCall; External 'DarumaFramework.dll';
 	function iCCDFechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
 	//CCD - Segunda via
 	function iCCDSegundaVia_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
 	//Estorno CCD
 	function iCCDEstornarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
 	function iCCDEstornar_ECF_Daruma(pszCOO:String;pszCPF:String; pszNome:String; pszEndereco:String): Integer; StdCall; External 'DarumaFramework.dll';
   //TEF
  function iTEF_ImprimirResposta_ECF_Daruma(szArquivo:String; bTravarTeclado:Boolean):Integer; StdCall; External 'DarumaFramework.dll';
  function iTEF_ImprimirRespostaCartao_ECF_Daruma(szArquivo:string; bTravarTeclado:Boolean; szForma:string; szValor:string):Integer; StdCall; External 'DarumaFramework.dll';
  function iTEF_Fechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
  function eTEF_EsperarArquivo_ECF_Daruma(szArquivo: String; iTempo:integer; bTravar:Boolean): Integer; StdCall; External 'DarumaFramework.dll';
  function eTEF_TravarTeclado_ECF_Daruma(bTravar:Boolean):Integer; StdCall; External 'DarumaFramework.dll';
  function eTEF_SetarFoco_ECF_Daruma(szNomeTela:String):Integer; StdCall; External 'DarumaFramework.dll';
 // CNF - Comprovante Não Fiscal
 	// Abertura de comprovante nao fiscal
  function iCNFAbrir_ECF_Daruma(pszCPF:string; pszNome:string;pszEndereco:string): Integer; StdCall; External 'DarumaFramework.dll';
  function iCNFAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		// Recebimento de itens
  function iCNFReceber_ECF_Daruma(pszIndice:string;pszValor:string;pszTipoDescAcresc:string;pszValorDescAcresc:string): Integer; StdCall; External 'DarumaFramework.dll';
  function iCNFReceberSemDesc_ECF_Daruma(pszIndice:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de item
	function iCNFCancelarItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFCancelarUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de acrescimo em item
	function iCNFCancelarAcrescimoItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFCancelarAcrescimoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de desconto em item
	function iCNFCancelarDescontoItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFCancelarDescontoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Totalizacao de CNF
	function iCNFTotalizarComprovante_ECF_Daruma(pszTipoDescAcresc:string;pszValorDescAcresc:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFTotalizarComprovantePadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de desconto e acrescimo em subtotal de CNF
	function iCNFCancelarAcrescimoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFCancelarDescontoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Descricao do meios de pagamento de CNF
	function iCNFEfetuarPagamento_ECF_Daruma(pszFormaPgto:string;pszValor:string;pszInfoAdicional:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFEfetuarPagamentoFormatado_ECF_Daruma(pszFormaPgto:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFEfetuarPagamentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Encerramento de CNF
	function iCNFEncerrar_ECF_Daruma(pszMensagem:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCNFEncerrarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	//Cancelamento de CNF
	function iCNFCancelar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Relatório Gerencial
	function iRGAbrir_ECF_Daruma(pszNomeRG:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iRGAbrirIndice_ECF_Daruma(iIndiceRG:Integer): Integer; StdCall; External 'DarumaFramework.dll';
	function iRGAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iRGImprimirTexto_ECF_Daruma(pszTexto:String): Integer; StdCall; External 'DarumaFramework.dll';
	function iRGFechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Bilhete Passagem
	function iCFBPAbrir_ECF_Daruma(pszOrigem:string;pszDestino:string;pszUFDestino:string;pszPercurso:string;pszPrestadora:string;pszPlataforma:string;pszPoltrona:string;pszModalidadetransp:string;pszCategoriaTransp:string;pszDataEmbarque:string;pszRGPassageiro:string;pszNomePassageiro:string;pszEnderecoPassageiro:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iCFBPVender_ECF_Daruma(pszAliquota:string;pszValor:string;pszTipoDescAcresc:string;pszValorDescAcresc:string;pszDescricao:string): Integer; StdCall; External 'DarumaFramework.dll';
	function confCFBPProgramarUF_ECF_Daruma(pszUF:string): Integer; StdCall; External 'DarumaFramework.dll';

//Relatórios Fiscais
		//Leitura X
	function iLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
	function rLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
	function rLeituraXCustomizada_ECF_Daruma(pszCaminho:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Redução Z
	function iReducaoZ_ECF_Daruma(pszData:string; pszHora:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Sangria
	function iSangriaPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iSangria_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Suprimento
	function iSuprimentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function iSuprimento_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Leitura Memória Fiscal
	function iMFLerSerial_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
	function iMFLer_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
  //Programação do ECF
	function confCadastrarPadrao_ECF_Daruma(pszCadastrar:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
	function confCadastrar_ECF_Daruma(pszCadastrar:string;pszValor:string;pszSeparador:string): Integer; StdCall; External 'DarumaFramework.dll';
	function confHabilitarHorarioVerao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function confDesabilitarHorarioVerao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function confProgramarOperador_ECF_Daruma(pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
	function confProgramarIDLoja_ECF_Daruma(pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
	function confProgramarAvancoPapel_ECF_Daruma(pszSepEntreLinhas:string;pszSepEntreDoc:string;pszLinhasGuilhotina:string;pszGuilhotina:string;pszImpClicheAntecipada:string): Integer; StdCall; External 'DarumaFramework.dll';
	function confHabilitarModoPreVenda_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function confDesabilitarModoPreVenda_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Metodos modo PAF
   function  confModoPAF_ECF_Daruma(pszAtivar:string; pszChaveRSA:string; pszArquivo:string): Integer; StdCall; External 'DarumaFramework.dll'

//Retornos e Status do ECF
		//Retornos
	function rRetornarInformacaoSeparador_ECF_Daruma(pszIndice:string; pszVSignificativo:string; pszRetornar:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rRetornarInformacao_ECF_Daruma(pszIndice:string;pszRetornar:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rLerAliquotas_ECF_Daruma(cAliquotas:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rLerMeiosPagto_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rLerRG_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rLerCNF_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rLerDecimais_ECF_Daruma(pszDecimalQtde:string;pszDecimalValor:string;var piDecimalQtde:Integer; var piDecimalValor:Integer): Integer; StdCall; External 'DarumaFramework.dll';
	function rLerDecimaisInt_ECF_Daruma(piDecimalQtde:integer;piDecimalValor:integer): Integer; StdCall; External 'DarumaFramework.dll';
	function LerDecimaisStr_ECF_Daruma(pszDecimalQtde:string;pszDecimalValor:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rDataHoraImpressora_ECF_Daruma(pszData:string;pszHora:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rVerificarImpressoraLigada_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function rVerificarReducaoZ_ECF_Daruma(zPendente:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rRetornarDadosReducaoZ_ECF_Daruma(pszDados:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rTipoUltimoDocumentoInt_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rTipoUltimoDocumentoStr_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rUltimoCMDEnviado_ECF_Daruma(pszUltimoCMD:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rMinasLegal_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';

		//Status
	function rStatusImpressora_ECF_Daruma(pszStatus:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rInfoEstendida_ECF_Daruma(int:integer; char:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rInfoEstentida1_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rInfoEstentida2_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rInfoEstentida3_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rInfoEstentida4_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rInfoEstentida5_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rStatusUltimoCmd_ECF_Daruma(pszErro:string;pszAviso:string;var piErro:integer;var piAviso:integer): Integer; StdCall; External 'DarumaFramework.dll';
	function rStatusUltimoCmdInt_ECF_Daruma(var piErro:integer;var piAviso:integer): Integer; StdCall; External 'DarumaFramework.dll';
	function rStatusUltimoCmdStr_ECF_Daruma(cErro:string;cAviso:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rStatusGaveta_ECF_Daruma(var piStatusGaveta:Integer): Integer; StdCall; External 'DarumaFramework.dll';
  function rConsultaStatusImpressoraInt_ECF_Daruma(iIndice:Integer; var dRetorno:Integer):Integer; StdCall; External 'DarumaFramework.dll';
  function rConsultaStatusImpressoraStr_ECF_Daruma(iIndice:Integer; szStatus:String):Integer; StdCall; External 'DarumaFramework.dll';
  function rStatusImpressoraBinario_ECF_Daruma(pszStatus:String):Integer; StdCall; External 'DarumaFramework.dll';
		//Status Cupom Fiscal
  function rCFVerificarStatus_ECF_Daruma(pszStatus:string; var piStatus:Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
	function rCFVerificarStatusInt_ECF_Daruma(var iStatusCF:Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
	function rCFVerificarStatusStr_ECF_Daruma(cStatusCF:string): Integer; StdCall; External 'DarumaFrameWork.dll';
		//Saldo a Pagar
	function rCFSaldoAPagar_ECF_Daruma(pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		//Subtotal Cupom Fiscal
	function rCFSubTotal_ECF_Daruma(pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';

//Gaveta, Autentica e Outros
		//Gaveta
	function eAbrirGaveta_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Guilhotina
	function eAcionarGuilhotina_ECF_Daruma(pszTipoCorte:string): Integer; StdCall; External 'DarumaFramework.dll';
    //Relatorio de configuração
  function iRelatorioConfiguracao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
//Cheque
	function iEjetarCheque_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
  function iChequeImprimir_FS2100_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';
  function iChequeImprimirVertical_FS2100_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';

//Código de Barras
  function iImprimirCodigoBarras_ECF_Daruma(pszTipo:string; pszLargura:string; pszAltura:string; pszImprTexto:string; pszCodigo:string; pszOrientacao:string; pszTextoLivre:string): Integer; StdCall; External 'DarumaFramework.dll';

//Registry
	//Registry Cupom Fiscal
	function regCFCupomAdicional_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFCupomAdicionalDllConfig_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFCupomAdicionalDllTitulo_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFCupomMania_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFFormaPgto_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFMensagemPromocional_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFQuantidade_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFTamanhoMinimoDescricao_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFTipoDescAcresc_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFUnidadeMedida_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCFValorDescAcresc_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCF_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	//Registry CCD
	function regCCDDocOrigem_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCCDFormaPgto_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCCDLinhasTEF_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCCDParcelas_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCCDValor_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCCD_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	//Registry Cheque
	function regChequeXLinha1_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regChequeXLinha2_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regChequeXLinha3_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regChequeYLinha1_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regChequeYLinha2_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regChequeYLinha3_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCheque_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	//Registry Compatibilidade
	function regCompatibilidadeStatusFuncao_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regCompatibilidade_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	//Registry AtoCotepe
	function regAtocotepe_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	//Registry Sintegra
	function regSintegra_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	//Registry Gerais
	function regAlterarValor_Daruma(pszPathChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regRetornaValorChave(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regLogin_Daruma(pszPDV:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regLogin(pszPDV:string):Integer; StdCall; External 'DarumaFramework.dll';
	//Registry ECF
	function regECFAguardarImpressao_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFArquivoLeituraX_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFAuditoria_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFCaracterSeparador_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFMaxFechamentoAutomatico_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFReceberAvisoEmArquivo_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFReceberErroEmArquivo_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFReceberInfoEstendida_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';
	function regECFReceberInfoEstendidaEmArquivo_ECF_Daruma(pszParametro:string):Integer; StdCall; External 'DarumaFramework.dll';

//Geração Arquivos
	//Espelho MFD PAF-ECF
	function rGerarEspelhoMFD_ECF_Daruma(pszTipo:string; pszInicial:string;pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
	//Relatório PAF-ECF ON-line
	function rGerarRelatorio_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rGerarRelatorioBaixoNivel_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
  //Relatório PAF-ECF Off-line
	function rGerarRelatorioOffline_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MF:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';

  function rGerarRelatorioBaixoNivelOffLine_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';
	//Download Memórias
	function rEfetuarDownloadMFD_ECF_Daruma(pszTipo:string;pszInicial:string;pszFinal:string;pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rEfetuarDownloadMF_ECF_Daruma(pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rEfetuarDownloadTDM_ECF_Daruma(pszTipo:string; pszInicial:string;pszFinal:string;pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';

//PAF-ECF
		//RSA - EAD PAF-ECF
	function rAssinarRSA_ECF_Daruma(pszPathArquivo:string;pszChavePrivada:string;pszAssinaturaGerada:string): Integer; StdCall; External 'DarumaFramework.dll';
  function rRSAChavePublica_ECF_Daruma(pszPathArquivo:string;pszChavePublica:string;pszExpoente:string): Integer; StdCall; External 'DarumaFramework.dll';
  function eRSAAssinarArquivo_ECF_Daruma(pszPathArquivo:string;pszChavePublica:string): Integer; StdCall; External 'DarumaFramework.dll';

		//MD5
	function rCalcularMD5_ECF_Daruma(pszPathArquivo:string;pszMD5GeradoHex:string;pszMD5GeradoAscii:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rRetornarNumeroSerieCodificado_ECF_Daruma(pszSerialCriptografado:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rVerificarNumeroSerieCodificado_ECF_Daruma(pszSerialCriptografado:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rRetornarGTCodificado_ECF_Daruma(pszGTCodificado:string): Integer; StdCall; External 'DarumaFramework.dll';
	function rVerificarGTCodificado_ECF_Daruma(pszGTCodificado:string): Integer; StdCall; External 'DarumaFramework.dll';
   function rCodigoModeloFiscal_ECF_Daruma(szCodModelo:string): Integer; StdCall; External 'DarumaFramework.dll';
//MENU-FISCAL

//ESPECIAIS
	function eAguardarCompactacao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function eBuscarPorta_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function eBuscarPortaVelocidade_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function eEnviarComando_ECF_Daruma(cComando:string;var intiTamanhoComando:integer; var intiType:integer): Integer; StdCall; External 'DarumaFramework.dll';
	function eRetornarAviso_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function eRetornarErro_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function eAguardarRecepcao_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function eAuditar_Daruma(cAuditoria:string;var intiFlag:integer): Integer; StdCall; External 'DarumaFramework.dll';
	function eCancelaComunicacao_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
	function eDefinirProduto_Daruma(pszProduto:string): Integer; StdCall; External 'DarumaFramework.dll';
	function eDefinirModoRegistro_Daruma(intiTipo:integer): Integer; StdCall; External 'DarumaFramework.dll';
	function eVerificarVersaoDLL_Daruma(pszRet:string): Integer; StdCall; External 'DarumaFramework.dll';
	function eVerificarVersaoDLL(pszRet:string): Integer; StdCall; External 'DarumaFramework.dll';
  function eInterpretarErro_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
  function eInterpretarAviso_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
  function eInterpretarRetorno_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
  function eCarregarBitmapPromocional_ECF_Daruma(pszPathLogotipo:string; pszNumBitmap:string; pszOrientacao:string):Integer; StdCall; External 'DarumaFramework.dll';
  function eMemoriaFiscal_ECF_Daruma(pszInicial:string; pszFinal:string; pszCompleta: Boolean; pszTipo:string):Integer; StdCall; External 'DarumaFramework.dll';
  function eRetornarPortasCOM_ECF_Daruma(pszCOM:string): Integer; StdCall; External 'DarumaFramework.dll';

    //Comandos modo Generico
  function eAbrirSerial_Daruma(pszPorta:string; pszVelocidade:string):Integer; StdCall; External 'DarumaFramework.dll';
  function eFecharSerial_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
  function tEnviarDados_Daruma(pszBytes:string; iTamBytes:Integer):Integer; StdCall; External 'DarumaFramework.dll';
  function rReceberDados_Daruma(pszBufferEntrada:string):Integer; StdCall; External 'DarumaFramework.dll';

var
  // Variável geral para tratar o Retorno da Função, Número Erro e Número do Aviso
  Int_Retorno: integer;
  Int_NumErro: integer;
  Int_NumAviso: integer;
  Str_Msg_Retorno_Metodo, Str_Msg_NumErro, Str_Msg_NumAviso, Str_Erro, Str_Aviso, Str_Msg_RetMetodo: string;

implementation

procedure DarumaFramework_Mostrar_Retorno(dRetorno:integer);
begin
 //Variaveis devem ser inicializadas
   Int_NumErro:= 0;
	 Int_NumAviso:= 0;
   Str_Msg_NumErro:=StringOFChar(' ',300);
   Str_Msg_NumAviso:=StringOFChar(' ',300);
   Str_Msg_RetMetodo:=StringOFChar(' ',300);

// Retorna o número de erro e aviso do último comando enviado
   Int_Retorno:=rStatusUltimoCMDInt_ECF_Daruma(Int_NumErro, Int_NumAviso);
// Retorno do método
   Int_Retorno:=eInterpretarRetorno_ECF_Daruma(dRetorno, Str_Msg_RetMetodo);
// Mensagem do erro
   Int_Retorno:=eInterpretarErro_ECF_Daruma(Int_NumErro, Str_Msg_NumErro);
// Mensagem aviso
   Int_Retorno:=eInterpretarAviso_ECF_Daruma(Int_NumAviso, Str_Msg_NumAviso);

  Str_Erro:=Str_Msg_NumErro;
  Str_Aviso:=Str_Msg_NumAviso;
  Str_Msg_Retorno_Metodo:=Str_Msg_RetMetodo;

  Application.MessageBox( Pchar('Retorno do Método = ' + pchar(Str_Msg_Retorno_Metodo) + #13 +
                                'Número Erro = ' + pchar(Str_Erro) +  #13 +
                                'Número Aviso = ' + pchar(Str_Aviso)), 'DarumaFramework Retorno do Método', mb_ok);
end;


end.
