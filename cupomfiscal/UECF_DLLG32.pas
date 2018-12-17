unit UECF_DLLG32;

interface

function AbrePortaSerial(): integer;
function FechaPortaSerial(): integer;
// *** -------------------- Cupom Fiscal ------------------------------ ***
function AbreCupomFiscal(strCNPJ_CPF: string): integer;
function ResetaImpressora(): integer;
function AbreCupomMFD (CGC_CPF: String; Nome: String;Endereco: String): Integer;
function AumentaDescricaoItem( strDescricao: string): integer;
function VendeItem(strCodProduto:string;strNomeProduto:string;strAliq:string;strTipoQtde: string;strQuantidade:string;nCasasDec:integer;strPreco:string;strTipoDesc: string;strValorDesc: string ): integer;
function VendeItemDepartamento(strCodProduto:string;strNomeProduto:string;strAliq:string;strPreco:string;strQuantidade:string;strValorAcresc:string;strValorDesc: string; strIndiceDepto: string; strUnMedida: string): integer;
function CancelaItemAnterior(): integer;
function CancelaItemGenerico(strNroItem: string): integer;
function IniciaFechamentoCupom(strAcrescDesc: string; strTipoAcrescDesc: string; strVlAcrescDesc: string): integer;
function EfetuaFormaPagamento( strFormaPgto: string; strValor: string): integer;
function EfetuaFormaPagamentoDescricaoForma( strFormaPgto: string; strValor: string; strDescricao: string): integer;
function TerminaFechamentoCupom(strMensagem: string): integer;
function FechaCupom(strFormaPgto:string;strAcrescDesc:string;strTipoAcrescDesc: string;strVlAcrescDesc: string;strVlPago:string;strMensagem: string): integer;
function FechaCupomResumido(strFormaPgto:string; strMensagem: string): integer;
function CancelaCupom(): integer;
function EstornoFormasPagamento(strOrigem:string; strDestino:string; strValor:string): integer;
function VerificaStatusTroco(var strTroco: String): Integer;
// *** -------------------- Cupom Fiscal MFD------------------------------ ***
function AcrescimoDescontoSubtotalMFD( strOperacao, strTipo, strValor: string): integer ;
function AcrescimoDescontoItemMFD( strNumItem, strOperacao, strTipo, strValor: string): integer;
function CancelaAcrescimoDescontoSubtotalMFD( strOperacao: String):Integer;
function CancelaAcrescimoDescontoItemMFD ( strOperacao, strNumItem: String):Integer;
// *** --------------------- Relatorios Fiscais ------------------------- ***
function EmiteLeituraX(): integer ;
function EmiteLeituraXSerial(): integer ;
function EmiteReducaoZ(strData: string; strHora: string): integer;
// *** --------------------- Relatorios Fiscais MFD---------------------- ***
function EmiteLeituraMFData( strInicial:string; strFinal:string; strFlag:string): integer;
function EmiteLeituraMFSerialData( strInicial:string; strFinal:string; strFlag:string): integer;
function EmiteLeituraMFReducao( strInicial:string; strFinal:string; strFlag:string): integer ;
function EmiteLeituraMFSerialReducao( strInicial:string; strFinal:string; strFlag:string): integer ;
// *** ---------------------- Operações Não Fiscais MFD ------------------ ***
function AbreComprovanteNaoFiscalVinculadoMFD(strFormaPgto:string; strValor:string; strNrocupom:string; strCNPJ:string; strNome:string; strEndereco:string): integer;
function AbreRecebimentoNaoFiscalMFD(strCNPJ: string; strNome:string; strEndereco:string): integer;
function AcrescimoDescontoSubtotalRecebimentoMFD(strFlag: string; strTipo:string; strValor:string): integer;
function CancelaAcrescimoDescontoSubtotalRecebimentoMFD(strFlag: string): integer;
function CancelaAcrescimoNaoFiscalMFD(strNroItem:string; strAcrescDesc:string): integer;
function CancelaItemNaoFiscalMFD(strNroItem:string): integer;
function CancelaRecebimentoNaoFiscalMFD(strCNPJ: string; strNome:string; strEndereco:string): integer;
function EfetuaRecebimentoNaoFiscalMFD(strIndiceTot: string; strValor:string): integer;
function EstornoNaoFiscalVinculadoMFD(strCNPJ: string; strNome:string; strEndereco:string): integer;
function FechaRecebimentoNaoFiscalMFD(strMensagem:string): integer;
function IniciaFechamentoRecebimentoNaoFiscalMFD(strAcrescDesc:string; strTipoAcrescDesc:string; strValorAcresc:string; strValorDesc:string): integer;
function ReimpressaoNaoFiscalVinculadoMFD(): integer;
function SegundaViaNaoFiscalVinculadoMFD(): integer;
function VerificaStatusCNFs(var strTotalVendasNFs: String; var strTotalAcrescimos: String; var strTotalDescontos: String; var strTotalCancelados: String): Integer;

// *** ---------------------- Operações Não Fiscais ------------------------ ***
function AbreRelatorioGerencial(strIDRelatorio:string): integer;
function RelatorioGerencial(strTexto:string): integer;
function FechaRelatorioGerencial(): integer;
function AbreComprovanteNaoFiscalVinculado(strFormaPgto:string; strValor:string; strNroCupom:string): integer;
function UsaComprovanteNaoFiscalVinculado(strTexto:string): integer;
function FechaComprovanteNaoFiscalVinculado(): integer;
function Suprimento(strValor:string; strFormaPgto:string): integer;
function Sangria(strValor:string): integer;
function RecebimentoNaoFiscal(strIndiceTot: string; strValor:string; strFormaPgto:string): integer;
// *** --------------------- Informaçoes da Impressora --------------------- ***
function Acrescimos(var strRetorno: string): integer;
function Cancelamentos(var strRetorno: string): integer;
function CGC_IE(var strCGC: string;var strIE: string): integer;
function InscricaoMunicipal(var strIM: string): integer;
function ClicheProprietario(var strRetorno: string): integer;
function ContadoresTotalizadoresNaoFiscais(var strRetorno: string): integer;
function DadosUltimaReducao(var strRetorno: string): integer;
function DataHoraImpressora(var strData: string; var strHora: string): integer;
function DataHoraReducao(var strData: string; var strHora: string): integer;
function DataReducao( CRZ:Integer; var strData: string ): integer;
function DataMovimento(var strRetorno: string): integer;
function Descontos(var strRetorno: string): integer;
function FlagsFiscais(var iRetorno: integer): integer;
function FlagsFiscaisStr(var strRetorno: String): integer;
function MinutosImprimindo(var strRetorno: string): integer;
function MinutosLigada(var strRetorno: string): integer;
function NumeroCaixa(var strRetorno: string): integer;
function NumeroCupom(var strRetorno: string): integer;
function NumeroCuponsCancelados(var strRetorno: string): integer;
function NumeroIntervencoes(var strRetorno: string): integer;
function NumeroLoja(var strRetorno: string): integer;
function NumeroOperacoesNaoFiscais(var strRetorno: string): integer;
function NumeroReducoes(var strRetorno: string): integer;
function NumeroSerie(var strRetorno: string): integer;
function NumeroSubstituicoesProprietario(var strRetorno: string): integer;
function RetornoAliquotas(var strRetorno: string): integer;
function SimboloMoeda(var strRetorno: string): integer;
function SubTotal(var strRetorno: string): integer;
function UltimoItemVendido(var strRetorno: string): integer;
function ValorFormaPagamento(strFormaPgto:string; var strRetorno: string): integer;
function ValorPagoUltimoCupom(var strRetorno: string): integer;
function ValorTotalizadorNaoFiscal(strTotalizador:string; var strRetorno: string): integer;
function VerificaTotalizadoresNaoFiscaisMFD(var strRetorno: string): integer;
function VendaBruta(var strRetorno: string): integer;
function VendaLiquida(var strRetorno: string): integer;
function VerificaAliquotasIss(var strRetorno: string): integer;
function VerificaAliquotasICMS(var strRetorno: string): integer;

function VerificaDepartamentos(var strRetorno: string): integer;
function VerificaEstadoImpressora(var nACK:integer; var nST1:integer; var nST2:integer): integer;
function VerificaEstadoImpressoraStr(var nACK:string; var nST1:string; var nST2:string): integer;
function VerificaFormasPagamento(var strRetorno: string): integer;
function VerificaIndiceAliquotasIss(var strRetorno: string): integer;
function VerificaIndiceAliquotasICMS(var strRetorno: string): integer;
function VerificaModoOperacao(var strRetorno: string): integer;
function VerificaRecebimentoNaoFiscal(var strRetorno: string): integer;
function VerificaTipoImpressora(var strRetorno: integer): integer;
function VerificaTipoImpressoraStr(var strRetorno: string): integer;
function VerificaTotalizadoresNaoFiscais(var strRetorno: string): integer;
function VerificaTotalizadoresParciais(var strRetorno: string): integer;
function VerificaTruncamento(var strRetorno: string): integer;
function VersaoFirmware(var strRetorno: string): integer;
function DataHoraUltimoDocumentoMFD(var strRetorno: string): integer;
function GrandeTotal(var strRetorno: string): integer;
function VerificaStatusNumItens(var strRetorno: string): integer;
function VerificaStatusDadosECF(var strMarca: String; var strModelo: String;
         var strVersao: String; var strNumSerie: String; var strGrandeTotal:string;
         var strNumProprietarios:String; var strDataSB:String; var strHoraSB:String ): Integer;

function ProgramaAliquota(var strPercentual: String; var iTipo: Integer): integer;
function ProgramaFormaPagamento(var strFormaPagamento: String; var strFlagVinculado: String): Integer;
function ProgramaTrucamentoArredondamento(var iFlag: Integer): Integer;
function ProgramaHorarioVerao(): Integer;
function NomeiaCupomNaoFiscal( iIndice: integer; strNomeTotalizador: String): Integer;
function NomeiaRelatorioGerencial( strIndice, strDescricao: string): Integer;
function NomeiaDepartamento( iIndice: integer; strDepartamento: String): Integer;
function VerificaFlagsFiscais(var bCupomAberto: Boolean; var bPagamentoIniciado: Boolean; var bHorarioVerao: Boolean; var bReducaoZRealizada: Boolean; var bPermiteCancelamento: Boolean; var bMFDEsgotada: Boolean): Integer;
function RetornoImpressora(var iCodErro: integer; var strErroMsg: string): Integer;
function Gera_RFD( iCRZ: integer): integer;
function StatusEstendido (var iStatus:integer): Integer;

function AcionaGaveta():Integer;
function VerificaEstadoGaveta(var EstadoGaveta:Integer):Integer;
function VerificaEstadoGavetaStr(EstadoGaveta:String):Integer;
function Autenticacao(): Integer;
function AutenticaDocumento( Linhas: String; Texto: String): Integer;
function AcionaGuilhotina( iTipoCorte:Integer):Integer;
function LeNomeGerencial ( Codigo:String; var Nome:String ): Integer;
function LeIndicadores (var Indicadores:Integer):Integer;
function TamanhoTotalMFD (var TamanhoTotalMFD:String):Integer;
function TotalLivreMFD (var TotalLivreMFD:String):Integer;
function VerificaSensorPoucoPapelMFD (var cFlag:String):Integer;
function VerificaImpressoraLigada(): Integer;

function ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer;
function ImprimeChequeMFD(NumeroBanco: string; Valor: string; Favorecido: string; Cidade: string; Data: string; Mensagem: string; ImpressaoVerso: string; Linhas: string): Integer;
function ImprimeCopiaCheque(): Integer;
function IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer;
Function CancelaImpressaoCheque(): Integer;
function LeituraCheque(var CodigoCMC7: string):Integer;
function ProgramaMoedaPlural( MoedaPlural: String ):Integer;
function ProgramaMoedaSingular( MoedaSingular: String ):Integer;
function VerificaStatusCheque( var StatusCheque: Integer ):Integer;

function AlteraSimboloMoeda( SimboloMoeda: String ): Integer;
function AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ):Integer;
function EspacoEntreLinhas( Dots: Integer ):Integer;
function LinhasEntreCupons( Linhas: Integer ):Integer;
Function NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ):Integer;
function ProgramaBaudRate(BaudRate:String):Integer;

function AbreRelatorioGerencialGenerico(): integer;

function AberturaDoDia( ValorCompra: string; FormaPagamento: string ):Integer;
function FechamentoDoDia():Integer;

function IdentificaConsumidor(CNPJ_CPF: String; Nome: String; Endereco: String):Integer;
function ImprimeConfiguracoesImpressora():Integer;
function ImprimeDepartamentos():Integer;
function LeArquivoRetorno(sCupom: String):Integer;
function MapaResumo():Integer;
function ModeloImpressora(ModeloImpressora: String):Integer;
function NumeroSerieCriptografado(NumeroSerie: String):Integer;
function NumeroSerieDescriptografado(NumeroSerieCriptografado:String; NumeroSerieDesCriptografado:String):Integer;
function ProgramaCaracterAutenticacao( Parametros: String ):Integer;
function ProgramaIdAplicativoMFD( NomeAplicativo: String ):Integer;
function ProgramaOperador(NomeOperador:String):Integer;
function RelatorioTipo60Analitico():Integer;
function RelatorioTipo60Mestre():Integer;
function VerificaReducaoZAutomatica( Flag:integer):Integer;
function Gera_RFDData (DataInicial:String; DataFinal:String):Integer;
function RelatorioSintegraMFD (iRelatorios: integer; cArquivo: STRING; cMes: STRING; cAno: STRING; cRazaoSocial: STRING; cEndereco: STRING; cNumero: STRING; cComplemento: STRING; cBairro: STRING; cCidade: STRING; cCEP: STRING; cTelefone: STRING; cFax: STRING; cContato: STRING):Integer;

function CNPJ_IE(CNPJ: string; IE: string):Integer;
function DataHoraSoftwareBasico(DataSW, HoraSW: String ):Integer;
function TotalDiaTroco( TotalDiaTroco: String ):Integer;
function TotalDocTroco( TotalDocTroco: String ):Integer;
function TotalICMSCupom( TotalICMSCupom: String ):Integer;
function VerificaZPendente( var Flag: Integer ):Integer;

function AcrescimoItemNaoFiscalMFD(strNroItem:string; strAcrescDesc:string; strTipoAcrescDesc:string; strValor:string):Integer;
function CancelaCupomMFD(CGC, Nome, Endereco: string):Integer;
function CNPJMFD(CNPJ: string):Integer;
function ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes: string):Integer;
function ContadorComprovantesCreditoMFD(Comprovantes: string):integer;
function ContadorCupomFiscalMFD(CuponsEmitidos: string):Integer;
function ContadoresTotalizadoresNaoFiscaisMFD(Contadores: string):Integer;
function ContadorFitaDetalheMFD(ContadorFita: string):Integer;
function ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas: string):Integer;
function ContadorRelatoriosGerenciaisMFD (Relatorios: String):Integer;
function CupomAdicionalMFD():Integer;
function DadosUltimaReducaoMFD(DadosReducao: string):Integer;
function DataMovimentoUltimaReducaoMFD( cDataMovimento: String ):Integer;
function DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ):Integer;
function EfetuaFormaPagamentoMFD(FormaPagamento: string; ValorFormaPagamento: string; Parcelas: string; DescricaoFormaPagto: string):Integer;
function FormatoDadosMFD(ArquivoOrigem: String; ArquivoDestino: String; TipoFormato: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String):Integer;
function GrandeTotalUltimaReducaoMFD( cGT: String ):Integer;
function HabilitaDesabilitaRetornoEstendidoMFD( strRetornoEstendido: string): integer;
function IniciaFechamentoCupomMFD(AcrescimoDesconto: string;TipoAcrescimoDesconto: string; ValorAcrescimo: string; ValorDesconto: string):Integer;
function InicioFimCOOsMFD( cCOOIni: String; cCOOFim: String ):Integer;
function InicioFimGTsMFD( cGTInicial: String; cGTFinal: String ):Integer;
function InscricaoEstadualMFD(InscricaoEstadual: string):Integer;
function InscricaoMunicipalMFD(InscricaoMunicipal: string):Integer;
function LeCodigoNacionalIdentificacaoECF( var CNI: String ): Integer;
function LeParametrosPAF( var CNPJ, Data, Hora, NumSerie, NumECF, GT: String ): Integer;
function MapaResumoMFD():Integer;
function MarcaModeloTipoImpressoraMFD(Marca: string; Modelo:string; Tipo: string):Integer;
function MinutosEmitindoDocumentosFiscaisMFD(Minutos: string):Integer;
function NomeiaRelatorioGerencialMFD (Indice: string; Descricao: string):Integer;
function NumeroSerieMemoriaMFD(NumeroSerieMFD: string):Integer;
function PercentualLivreMFD( cMemoriaLivre: string ):Integer;
function ProgramaFormaPagamentoMFD(FormaPagto: string; OperacaoTef: String):Integer;
function ReducoesRestantesMFD(Reducoes: string):Integer;
function RegistrosTipo60():Integer;
function SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ):Integer;
function TempoOperacionalMFD(TempoOperacional: string):Integer;
function UsaRelatorioGerencialMFD(Texto: string):Integer;
function ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ):Integer;
function ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ):Integer;
function VerificaEstadoImpressoraMFD(var nACK:integer; var nST1:integer; var nST2:integer; var nST3:integer): integer;
function VerificaFormasPagamentoMFD(FormasPagamento: string):Integer;
function VerificaRecebimentoNaoFiscalMFD(Recebimentos: string):Integer;
function VerificaRelatorioGerencialMFD(Relatorios: string):Integer;
function VerificaTotalizadoresParciaisMFD(Totalizadores: string):Integer;


// Funçãos usando Elgin_ExecutaComando
Function ExecutaComando( Comando, Parametros: String ): Integer;
Function ExecutaLeitura( Comando, Parametros: String; var Retorno: String ): Integer;
Function ImprimeMFD( DadoInicial: String; DadoFinal: String; TipoDado: Integer): Integer;
Function CadastraNaoFiscal(Codigo:String; Nome:String; Descricao:String; Tipo:String): Integer;
function ExcluiNaoFiscal(Codigo:String; Nome:String):Integer;
function LeNaoFiscal(Codigo:String; Nome:String; var Retorno:String):Integer;
Function CadastraAliquota(Codigo:String; Percentual:String; Descricao:String; Tipo:String): Integer;
function ExcluiAliquota(Codigo:String; Percentual:String):Integer;
function LeAliquota(Codigo:String; Percentual:String; var Retorno:String):Integer;
function ProgramaRelogio(Data:String; Hora: String): Integer;
function ProgramaCabecalho(Cabecalho:String; NumLoja: String; NumECF: String; AlturaLogo:String; LarguraLogo:String; BufferLog:String): Integer;
function ProgramaProprietario(CNPJ:String; IE:String; IM:String; Senha:String):Integer;
Function CadastraMeioPagamento(Codigo:String; Descricao:String; Nome:String; PermiteVinculado:String): Integer;
function ExcluiMeioPagamento(Codigo:String; Nome:String):Integer;
function ExcluiGerencial(Codigo:String; Nome:String):Integer;
function LeDepartamento(Codigo:String; Nome:String; var Retorno:String):Integer;
function ExcluiDepartamento(Codigo:String; Nome:String):Integer;

procedure LogInfoDLL(Comando:String; Variaveis:String; Retorno:Integer);
procedure LogInfoRetornoImpressora(iCode:Integer;strMsg:String);

implementation

uses StrUtils, SysUtils, uDeclaracoes;

procedure LogInfoDLL(Comando:String; Variaveis:String; Retorno:Integer);
var
  ArquivoLog: TextFile;
  NomeArquivo: String;
begin
     NomeArquivo := FormatDateTime('"logDLL-"yyyymmdd".txt"', Now);
     AssignFile(ArquivoLog, NomeArquivo);
     if (FileExists(NomeArquivo))
        then Append(ArquivoLog)
     else begin
               Rewrite(ArquivoLog);
               WriteLn(ArquivoLog, '----------------');
          end;
     WriteLn(ArquivoLog, FormatDateTime('hh:nn:ss:zzz', Now) + ' > ' + Comando);
     //frmDemolog.MostraRetorno(Comando);
     if (Retorno = 1) then
     begin
          WriteLn(ArquivoLog, FormatDateTime('hh:nn:ss:zzz', Now) + ' > Retorno da DLL: ' + IntToStr(Retorno) + ' (SUCESSO)');
          //frmDemolog.MostraRetorno('Retorno da DLL: ' + IntToStr(Retorno) + ' (SUCESSO)');
          if (Variaveis <> '') then
          begin
               WriteLn(ArquivoLog, Variaveis);
               //frmDemolog.MostraRetorno(Variaveis);
          end;
          WriteLn(ArquivoLog, '----------------');
     end
     else
     begin
          WriteLn(ArquivoLog, FormatDateTime('hh:nn:ss:zzz', Now) + ' > Retorno da DLL: ' + IntToStr(Retorno) + ' (ERRO)');
          //frmDemoLog.MostraRetorno('Retorno da DLL: ' + IntToStr(Retorno) + ' (ERRO)');
     end;
     CloseFile(ArquivoLog);
end;

procedure LogInfoRetornoImpressora(iCode:Integer;strMsg:String);
var ArquivoLog:TextFile;
    NomeArquivo: String;
begin
     NomeArquivo := FormatDateTime('"logDLL-"yyyymmdd".txt"', Now);
     AssignFile(ArquivoLog, NomeArquivo);
     if (FileExists(NomeArquivo))
        then Append(ArquivoLog)
     else Rewrite(ArquivoLog);
     WriteLn(ArquivoLog, FormatDateTime('hh:nn:ss:zzz', Now) + ' > Elgin_RetornoImpressora(iCode, strMsg);');
     WriteLn(ArquivoLog, 'iCode=' + IntToStr(iCode));
     WriteLn(ArquivoLog, 'strMsg=' + strMsg);
     WriteLn(ArquivoLog, '----------------');
     CloseFile(ArquivoLog);
end;

// AbrePortaSerial
function AbrePortaSerial(): integer;
begin
  result := Elgin_AbrePortaSerial();
  LogInfoDll('Elgin_AbrePortaSerial();', '', result);
end;

// FechaPortaSerial
function FechaPortaSerial(): integer;
begin
  result := Elgin_FechaPortaSerial();
  LogInfoDll('Elgin_FechaPortaSerial();', '', result);
end;
function VerificaSensorPoucoPapelMFD (var cFlag:String):Integer;
begin
     result := Elgin_VerificaSensorPoucoPapelMFD(cFlag);
     LogInfoDll('Elgin_VerificaSensorPoucoPapelMFD(cFlag);', 'cFlag=' + cFlag, result);
end;

function TotalLivreMFD (var TotalLivreMFD:String):Integer;
begin
     result := Elgin_TotalLivreMFD( TotalLivreMFD );
     LogInfoDll('Elgin_TotalLivreMFD(TotalLivreMFD);', 'TotalLivreMFD=' + TotalLivreMFD, result);
end;
function TamanhoTotalMFD (var TamanhoTotalMFD:String):Integer;
begin
     result := Elgin_TamanhoTotalMFD( TamanhoTotalMFD );
     LogInfoDll('Elgin_TamanhoTotalMFD(TamanhoTotalMFD);', 'TamanhoTotalMFD=' + TamanhoTotalMFD, result);
end;

// *** --------------------- Relatorios Fiscais ------------------------- ***
//EmiteLeituraX
function EmiteLeituraX(): integer ;
begin
  result := Elgin_LeituraX();
  LogInfoDll('Elgin_LeituraX();', '', result);
end;

//EmiteLeituraXSerial
function EmiteLeituraXSerial(): integer ;
begin
  result := Elgin_LeituraXSerial();
  LogInfoDll('Elgin_LeituraXSerial();', '', result);
end;

//EmiteReducaoZ
function EmiteReducaoZ(strData: string ; strHora: string): integer;
begin
  result := Elgin_ReducaoZ(strData, strHora);
  LogInfoDll('Elgin_ReducaoZ("' + strData + '","' + strHora + '");', '', result);
end;

// *** --------------------- Relatorios Fiscais MFD ------------------- ***
//EmiteLeituraMFData
function EmiteLeituraMFData( strInicial:string; strFinal:string; strFlag:string ): integer ;
begin
  result := Elgin_LeituraMemoriaFiscalData(strInicial, strFinal, strFlag);
  LogInfoDll('Elgin_LeituraMemoriaFiscalData("' + strInicial + '","' + strFinal + '","' + strFlag + '");', '', result);
end;

//EmiteLeituraMFSerialDataMFD
function EmiteLeituraMFSerialData( strInicial:string; strFinal:string; strFlag:string): integer ;
begin
  result := Elgin_LeituraMemoriaFiscalSerialData(strInicial, strFinal, strFlag);
  LogInfoDll('Elgin_LeituraMemoriaFiscalSerialData("' + strInicial + '","' + strFinal + '","' + strFlag + '");', '', result);
end;

//EmiteLeituraMFReducaoMFD
function EmiteLeituraMFReducao( strInicial:string; strFinal:string; strFlag:string): integer ;
begin
  result := Elgin_LeituraMemoriaFiscalReducao(strInicial, strFinal, strFlag);
  LogInfoDll('Elgin_LeituraMemoriaFiscalReducao("' + strInicial + '","' + strFinal + '","' + strFlag + '");', '', result);
end;

//EmiteLeituraMFSerialReducaoMFD
function EmiteLeituraMFSerialReducao( strInicial:string; strFinal:string; strFlag:string): integer ;
begin
  result := Elgin_LeituraMemoriaFiscalSerialReducao(strInicial, strFinal, strFlag);
  LogInfoDll('Elgin_LeituraMemoriaFiscalSerialReducao("' + strInicial + '","' + strFinal + '","' + strFlag + '");', '', result);
end;
//--------------------------------------------------------------------- ///
// *** -------------------- Cupom Fiscal ------------------------------ ***

//AbreCupomFiscal
function AbreCupomFiscal(strCNPJ_CPF: string): integer;
begin
  result := Elgin_AbreCupom(strCNPJ_CPF) ;
  LogInfoDll('Elgin_AbreCupom("' + strCNPJ_CPF + '");', '', result);
end;
//ResetaImpressora
function ResetaImpressora(): integer;
begin
  result := Elgin_ResetaImpressora();
  LogInfoDll('Elgin_ResetaImpressora();', '', result);
end;

//AumentaDescricaoItem
function AumentaDescricaoItem( strDescricao: string): integer;
begin
  result := Elgin_AumentaDescricaoItem(strDescricao);
  LogInfoDll('Elgin_AumentaDescricaoItem("' + strDescricao + '");', '', result);
end;

//VendeItem
function VendeItem( strCodProduto:string;
                    strNomeProduto:string;
                    strAliq:string;
                    strTipoQtde: string;
                    strQuantidade:string;
                    nCasasDec:integer;
                    strPreco:string;
                    strTipoDesc: string;
                    strValorDesc: string ): integer;
begin
  result := Elgin_VendeItem(strCodProduto, strNomeProduto, strAliq, strTipoQtde, strQuantidade, nCasasDec, strPreco, strTipoDesc, strValorDesc);
  LogInfoDll('Elgin_VendeItem("' + strCodProduto + '","' + strNomeProduto + '","' + strAliq + '","' +  strTipoQtde + '","' + strQuantidade + '",' + IntToStr(nCasasDec) + ',"' + strPreco + '","' + strTipoDesc + '","' +  strValorDesc + '");', '', result);
end;

// VendeItemDepartamento
function VendeItemDepartamento( strCodProduto:string;
                            strNomeProduto:string;
                            strAliq:string;
                            strPreco:string;
                            strQuantidade:string;
                            strValorAcresc: string;
                            strValorDesc: string;
                            strIndiceDepto: string;
                            strUnMedida: string ): integer;
begin
  result := Elgin_VendeItemDepartamento(strCodProduto, strNomeProduto, strAliq, strPreco, strQuantidade, strValorAcresc, strValorDesc, strIndiceDepto, strUnMedida);
  LogInfoDll('Elgin_VendeItemDepartamento("' + strCodProduto + '","' + strNomeProduto + '","' + strAliq + '","' +  strPreco + '","' + strQuantidade + '","' + strValorAcresc + '","' + strValorDesc + '","' + strIndiceDepto + '","' +  strUnMedida + '");', '', result);
end;

// Cancela Item Anterior
function CancelaItemAnterior(): integer;
begin
  result := Elgin_CancelaItemAnterior();
  LogInfoDll('Elgin_CancelaItemAnterior();', '', result);
end;

// Cancela Item Generico
function CancelaItemGenerico(strNroItem: string): integer;
begin
  result := Elgin_CancelaItemGenerico(strNroItem);
  LogInfoDll('Elgin_CancelaItemGenerico("' + strNroItem + '");', '', result);
end;

// IniciaFechamentoCupom
function IniciaFechamentoCupom(strAcrescDesc: string; strTipoAcrescDesc: string; strVlAcrescDesc: string): integer;
begin
  result := Elgin_IniciaFechamentoCupom(strAcrescDesc, strTipoAcrescDesc, strVlAcrescDesc);
  LogInfoDll('Elgin_IniciaFechamentoCupom("' + strAcrescDesc + '","'+ strTipoAcrescDesc + '","' + strVlAcrescDesc + '");', '', result);
end;

// HabilitaDesabilitaRetornoEstendidoMFD
function HabilitaDesabilitaRetornoEstendidoMFD( strRetornoEstendido: string): integer;
begin
  result := Elgin_HabilitaDesabilitaRetornoEstendidoMFD(strRetornoEstendido);
  LogInfoDll('Elgin_HabilitaDesabilitaRetornoEstendidoMFD("' + strRetornoEstendido + '");', '', result);
end;

// EfetuaFormaPagamento
function EfetuaFormaPagamento( strFormaPgto: string; strValor: string): integer;
begin
  result := Elgin_EfetuaFormaPagamento(strFormaPgto, strValor);
  LogInfoDll('Elgin_EfetuaFormaPagamento("' + strFormaPgto + '","' + strValor + '");', '', result);
end;

// EfetuaFormaPagamentoDescricaoForma
function EfetuaFormaPagamentoDescricaoForma( strFormaPgto: string; strValor: string; strDescricao: string): integer;
begin
  result := Elgin_EfetuaFormaPagamentoDescricaoForma(strFormaPgto, strValor, strDescricao);
  LogInfoDll('Elgin_EfetuaFormaPagamentoDescricaoForma("' + strFormaPgto + '","'+ strValor + '","' + strDescricao + '");', '', result);
end;

// TerminaFechamentoCupom
function TerminaFechamentoCupom(strMensagem: string): integer;
begin
  result := Elgin_TerminaFechamentoCupom(strMensagem);
  LogInfoDll('Elgin_TerminaFechamentoCupom("' + strMensagem + '");', '', result);
end;

// FechaCupom
function FechaCupom(strFormaPgto:string;
                    strAcrescDesc:string;
                    strTipoAcrescDesc: string;
                    strVlAcrescDesc: string;
                    strVlPago:string;
                    strMensagem: string): integer;
begin
  result := Elgin_FechaCupom(strFormaPgto, strAcrescDesc, strTipoAcrescDesc, strVlAcrescDesc, strVlPago, strMensagem);
  LogInfoDll('Elgin_FechaCupom("' + strFormaPgto + '","' + strAcrescDesc + '","' + strTipoAcrescDesc + '","' +  strVlAcrescDesc + '","' + strVlPago + '","' + strMensagem + '");', '', result);
end;

// FechaCupomResumido
function FechaCupomResumido(strFormaPgto:string; strMensagem: string): integer;
begin
  result := Elgin_FechaCupomResumido(strFormaPgto, strMensagem);
  LogInfoDll('Elgin_FechaCupomResumido("' + strFormaPgto + '","' + strMensagem + '");', '', result);

end;

// CancelaCupom
function CancelaCupom(): integer;
begin
  result := Elgin_CancelaCupom();
  LogInfoDll('Elgin_CancelaCupom();', '', result);
end;

// EstornoFormasPagamento
function EstornoFormasPagamento(strOrigem:string; strDestino:string; strValor:string): integer;
begin
  result := Elgin_EstornoFormasPagamento(strOrigem, strDestino, strValor);
  LogInfoDll('Elgin_EstornoFormasPagamento("' + strOrigem + '","'+ strDestino + '","' + strValor + '");', '', result);
end;

//VerificaStatusTroco
function VerificaStatusTroco(var strTroco: String): Integer;
begin
  result := Elgin_TotalDiaTroco(strTroco);
  LogInfoDll('Elgin_TotalDiaTroco(strTroco);' , 'strTroco=' + strTroco, result);
end;
// ---------------------------------------------------------------------------//
// *** ---------------------- Cupom Fiscais MFD ----------------------//
// AcrescimoDescontoSubtotalMFD
function AcrescimoDescontoSubtotalMFD( strOperacao, strTipo, strValor: string): integer;
begin
  Result := Elgin_AcrescimoDescontoSubtotalMFD(strOperacao, strTipo, strValor);
  LogInfoDll('Elgin_AcrescimoDescontoSubtotalMFD("' + strOperacao + '","'+ strTipo + '","' + strValor + '");', '', result);
end;

// AcrescimoDescontoSubtotalMFD
function AcrescimoDescontoItemMFD( strNumItem, strOperacao, strTipo, strValor: string): integer;
begin
  Result := Elgin_AcrescimoDescontoItemMFD(strNumItem, strOperacao, strTipo, strValor);
  LogInfoDll('Elgin_AcrescimoDescontoItemMFD("' + strNumItem + '","'+ strOperacao + '","' + strTipo + '","' + strValor + '");', '', result);
end;

//CancelaAcrescimoDescontoSubtotalMFD
function CancelaAcrescimoDescontoSubtotalMFD( strOperacao: String):Integer;
begin
  Result := Elgin_CancelaAcrescimoDescontoSubtotalMFD( strOperacao );
  LogInfoDll('Elgin_CancelaAcrescimoDescontoSubtotalMFD("' + strOperacao + '");', '', result);
end;

//CancelaAcrescimoDescontoItemMFD
function CancelaAcrescimoDescontoItemMFD ( strOperacao, strNumItem: String):Integer;
begin
  Result := Elgin_CancelaAcrescimoDescontoItemMFD(strOperacao, strNumItem);
  LogInfoDll('Elgin_CancelaAcrescimoDescontoItemMFD("' + strOperacao + '","'+ strNumItem + '");', '', result);
end;

// ---------------------------------------------------------------------------//
// *** ---------------------- Operações Não Fiscais MFD ----------------------//

// AbreComprovanteNaoFiscalVinculadoMFD
function AbreComprovanteNaoFiscalVinculadoMFD(strFormaPgto:string;
                                              strValor: string;
                                              strNrocupom: string;
                                              strCNPJ: string;
                                              strNome:string;
                                              strEndereco:string): integer;
begin
  result := Elgin_AbreComprovanteNaoFiscalVinculadoMFD(strFormaPgto, strValor, strNrocupom, strCNPJ, strNome, strEndereco);
  LogInfoDll('Elgin_AbreComprovanteNaoFiscalVinculadoMFD("' + strFormaPgto + '","' + strValor + '","' + strNrocupom + '","' +  strCNPJ + '","' + strNome + '","' + strEndereco + '");', '', result);
end;

//AbreRecebimentoNaoFiscalMFD
function AbreRecebimentoNaoFiscalMFD(strCNPJ: string; strNome:string; strEndereco:string): integer;
begin
  result := Elgin_AbreRecebimentoNaoFiscalMFD(strCNPJ, strNome, strEndereco);
  LogInfoDll('Elgin_AbreRecebimentoNaoFiscalMFD("' + strCNPJ + '","'+ strNome + '","' + strEndereco + '");', '', result);
end;

//AcrescimoDescontoSubtotalRecebimentoMFD
function AcrescimoDescontoSubtotalRecebimentoMFD(strFlag: string; strTipo:string; strValor:string): integer;
begin
  result := Elgin_AcrescimoDescontoSubtotalRecebimentoMFD(strFlag, strTipo, strValor);
  LogInfoDll('Elgin_AcrescimoDescontoSubtotalRecebimentoMFD("' + strFlag + '","'+ strTipo + '","' + strValor + '");', '', result);
end;

//CancelaAcrescimoDescontoSubtotalRecebimentoMFD
function CancelaAcrescimoDescontoSubtotalRecebimentoMFD(strFlag: string): integer;
begin
  result := Elgin_CancelaAcrescimoDescontoSubtotalRecebimentoMFD(strFlag);
  LogInfoDll('Elgin_CancelaAcrescimoDescontoSubtotalRecebimentoMFD("' + strFlag + '");', '', result);
end;

//CancelaAcrescimoNaoFiscalMFD
function CancelaAcrescimoNaoFiscalMFD(strNroItem:string; strAcrescDesc:string): integer;
begin
  result := Elgin_CancelaAcrescimoNaoFiscalMFD(strNroItem, strAcrescDesc);
  LogInfoDll('Elgin_CancelaAcrescimoNaoFiscalMFD("' + strNroItem + '","'+ strAcrescDesc + '");', '', result);
end;

//CancelaItemNaoFiscalMFD
function CancelaItemNaoFiscalMFD(strNroItem:string): integer;
begin
  result := Elgin_CancelaItemNaoFiscalMFD(strNroItem);
  LogInfoDll('Elgin_CancelaAcrescimoNaoFiscalMFD("' + strNroItem + '");', '', result);
end;

//CancelaRecebimentoNaoFiscalMFD
function CancelaRecebimentoNaoFiscalMFD(strCNPJ: string; strNome:string; strEndereco:string): integer;
begin
  result := Elgin_CancelaRecebimentoNaoFiscalMFD(strCNPJ, strNome, strEndereco);
  LogInfoDll('Elgin_CancelaRecebimentoNaoFiscalMFD("' + strCNPJ + '","'+ strNome + '","' + strEndereco + '");', '', result);
end;

//EfetuaRecebimentoNaoFiscalMFD
function EfetuaRecebimentoNaoFiscalMFD(strIndiceTot: string; strValor:string): integer;
begin
  result := Elgin_EfetuaRecebimentoNaoFiscalMFD(strIndiceTot, strValor);
  LogInfoDll('Elgin_EfetuaRecebimentoNaoFiscalMFD("' + strIndiceTot + '","'+ strValor + '");', '', result);
end;

//EstornoNaoFiscalVinculadoMFD
function EstornoNaoFiscalVinculadoMFD(strCNPJ: string; strNome:string; strEndereco:string): integer;
begin
  result := Elgin_EstornoNaoFiscalVinculadoMFD(strCNPJ, strNome, strEndereco);
  LogInfoDll('Elgin_EstornoNaoFiscalVinculadoMFD("' + strCNPJ + '","'+ strNome + '","' + strEndereco + '");', '', result);
end;

//FechaRecebimentoNaoFiscalMFD
function FechaRecebimentoNaoFiscalMFD(strMensagem:string): integer;
begin
  result := Elgin_FechaRecebimentoNaoFiscalMFD(strMensagem);
  LogInfoDll('Elgin_FechaRecebimentoNaoFiscalMFD("' + strMensagem + '");', '', result);
end;

//IniciaFechamentoRecebimentoNaoFiscalMFD
function IniciaFechamentoRecebimentoNaoFiscalMFD(strAcrescDesc:string; strTipoAcrescDesc:string; strValorAcresc:string; strValorDesc:string): integer;
begin
  result := Elgin_IniciaFechamentoRecebimentoNaoFiscalMFD(strAcrescDesc, strTipoAcrescDesc, strValorAcresc, strValorDesc);
  LogInfoDll('Elgin_IniciaFechamentoRecebimentoNaoFiscalMFD("' + strAcrescDesc + '","'+ strTipoAcrescDesc + '","' + strValorAcresc + '","' + strValorDesc + '");', '', result);
end;

//ReimpressaoNaoFiscalVinculadoMFD
function ReimpressaoNaoFiscalVinculadoMFD(): integer;
begin
  result := Elgin_ReimpressaoNaoFiscalVinculadoMFD();
  LogInfoDll('Elgin_ReimpressaoNaoFiscalVinculadoMFD();' , '', result);
end;

//SegundaViaNaoFiscalVinculadoMFD
function SegundaViaNaoFiscalVinculadoMFD(): integer;
begin
  result := Elgin_SegundaViaNaoFiscalVinculadoMFD();
  LogInfoDll('Elgin_SegundaViaNaoFiscalVinculadoMFD();' , '', result);
end;

//VerificaStatusCNFs
function VerificaStatusCNFs(var strTotalVendasNFs: String; var strTotalAcrescimos: String; var strTotalDescontos: String; var strTotalCancelados: String): Integer;
var
  iRetorno: Integer;
  strTotalizadores: String;
begin
  strTotalizadores := StringOfChar(' ',889);

  iRetorno := Elgin_VerificaTotalizadoresParciaisMFD(strTotalizadores);

  strTotalVendasNFs := MidStr(strTotalizadores, 406, 210);
  strTotalDescontos := MidStr(strTotalizadores, 617, 14);
  strTotalAcrescimos := MidStr(strTotalizadores, 632, 14);
  strTotalCancelados := MidStr(strTotalizadores, 647, 14);

  LogInfoDll('Elgin_VerificaTotalizadoresParciaisMFD(strTotalizadores);' , 'strTotalizadores='+strTotalizadores, iRetorno);
  result := iRetorno;
end;

// -------------------------------------------------------------------------- //
// *** ---------------------- Operações Não Fiscais ------------------------ ***

// AbreRelatorioGerencial
function AbreRelatorioGerencial(strIDRelatorio:string): integer;
begin
  result := Elgin_AbreRelatorioGerencialMFD(strIDRelatorio);
  LogInfoDll('Elgin_AbreRelatorioGerencialMFD("' + strIDRelatorio + '");', '', result);
end;

// AbreRelatorioGerencial
function AbreRelatorioGerencialGenerico(): integer;
begin
  result := Elgin_AbreRelatorioGerencial();
  LogInfoDll('Elgin_AbreRelatorioGerencial();' , '', result);
end;
//RelatorioGerencial
function RelatorioGerencial(strTexto:string): integer;
begin
  result := Elgin_RelatorioGerencial(strTexto);
  LogInfoDll('Elgin_RelatorioGerencial("' + strTexto + '");', '', result);
end;

//FechaRelatorioGerencial
function FechaRelatorioGerencial(): integer;
begin
  result := Elgin_FechaRelatorioGerencial();
  LogInfoDll('Elgin_FechaRelatorioGerencial();' , '', result);
end;

//AbreComprovanteNaoFiscalVinculado
function AbreComprovanteNaoFiscalVinculado(strFormaPgto:string; strValor:string; strNroCupom:string): integer;
begin
  result := Elgin_AbreComprovanteNaoFiscalVinculado(strFormaPgto, strValor, strNroCupom);
  LogInfoDll('Elgin_AbreComprovanteNaoFiscalVinculado("' + strFormaPgto + '","'+ strValor + '","' + strNroCupom + '");', '', result);
end;

//UsaComprovanteNaoFiscalVinculado
function UsaComprovanteNaoFiscalVinculado(strTexto:string): integer;
begin
  result := Elgin_UsaComprovanteNaoFiscalVinculado(strTexto);
  LogInfoDll('Elgin_UsaComprovanteNaoFiscalVinculado("' + strTexto + '");', '', result);
end;

//FechaComprovanteNaoFiscalVinculado
function FechaComprovanteNaoFiscalVinculado(): integer;
begin
  result := Elgin_FechaComprovanteNaoFiscalVinculado();
  LogInfoDll('Elgin_FechaComprovanteNaoFiscalVinculado();' , '', result);
end;

//Suprimento
function Suprimento(strValor:string; strFormaPgto:string): integer;
begin
  result := Elgin_Suprimento(strValor, strFormaPgto);
  LogInfoDll('Elgin_Suprimento("' + strValor + '","'+ strFormaPgto + '");', '', result);
end;

//Sangria
function Sangria(strValor:string): integer;
begin
  result := Elgin_Sangria(strValor);
  LogInfoDll('Elgin_Sangria("' + strValor + '");', '', result);
end;

//RecebimentoNaoFiscal
function RecebimentoNaoFiscal(strIndiceTot: string; strValor:string; strFormaPgto:string): integer;
begin
  result := Elgin_RecebimentoNaoFiscal(strIndiceTot, strValor, strFormaPgto);
  LogInfoDll('Elgin_RecebimentoNaoFiscal("' + strIndiceTot + '","'+ strValor + '","' + strFormaPgto + '");', '', result);
end;

// -------------------------------------------------------------------------- //
// *** --------------------- Informaçoes da Impressora --------------------- ***

//Acrescimos
function Acrescimos(var strRetorno: string): integer;
begin
  result := Elgin_Acrescimos(strRetorno);
  LogInfoDll('Elgin_Acrescimos(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//Cancelamentos
function Cancelamentos(var strRetorno: string): integer;
begin
  result := Elgin_Cancelamentos(strRetorno);
  LogInfoDll('Elgin_Cancelamentos(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//CGC_IE
function CGC_IE(var strCGC: string;var strIE: string): integer;
begin
  result := Elgin_CGC_IE(strCGC, strIE);
  LogInfoDll('Elgin_CGC_IE(strCGC, strIE);' , 'strCGC='+strCGC + #10 + 'strIE=' + strIE, result);
end;

//ClicheProprietario
function ClicheProprietario(var strRetorno: string): integer;
begin
  result := Elgin_ClicheProprietario(strRetorno);
  LogInfoDll('Elgin_ClicheProprietario(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//ContadoresTotalizadoresNaoFiscais
function ContadoresTotalizadoresNaoFiscais(var strRetorno: string): integer;
begin
  result := Elgin_ContadoresTotalizadoresNaoFiscais(strRetorno);
  LogInfoDll('Elgin_ContadoresTotalizadoresNaoFiscais(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//DadosUltimaReducao
function DadosUltimaReducao(var strRetorno: string): integer;
begin
  result := Elgin_DadosUltimaReducaoMFD(strRetorno);
  LogInfoDll('Elgin_DadosUltimaReducaoMFD(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//DataHoraImpressora
function DataHoraImpressora(var strData: string; var strHora: string): integer;
begin
  strData := StringOfChar(' ',10);
  strHora := StringOfChar(' ',10);
  result := Elgin_DataHoraImpressora(strData, strHora);
  LogInfoDll('Elgin_DataHoraImpressora(strData, strHora);' , 'strData='+strData + #10 + 'strHora=' + strHora, result);
end;

//DataHoraReducao
function DataHoraReducao(var strData: string; var strHora: string): integer;
begin
  result := Elgin_DataHoraReducao(strData, strHora);
  LogInfoDll('Elgin_DataHoraReducao(strData, strHora);' , 'strData='+strData + #10 + 'strHora=' + strHora, result);
end;

//DataReducao por CRZ
function DataReducao( CRZ:Integer; var strData: string ): integer;
var
    strRetorno, strParametros: String;
    iPos, iResultado: Integer;
begin
    strParametros := 'NomeData="DataReducao[' + intToStr(CRZ) + ']"';
    iResultado := ExecutaLeitura( 'LeData', strParametros, strRetorno );
    iPos := Pos( '=',strRetorno );
    strData := MidStr( strRetorno, iPos+2, 10 );
    LogInfoDll('Elgin_DataReducao(CRZ, strData);' , 'CRZ=' + IntToStr(CRZ) + #10 + 'strData=' + strData, iResultado);
    Result := iResultado;
end;


//DataMovimento
function DataMovimento(var strRetorno: string): integer;
begin
  result := Elgin_DataMovimento(strRetorno);
  LogInfoDll('Elgin_DataMovimento(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//Descontos
function Descontos(var strRetorno: string): integer;
begin
  result := Elgin_Descontos(strRetorno);
  LogInfoDll('Elgin_Descontos(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//FlagsFiscais
function FlagsFiscais(var iRetorno: integer): integer;
begin
  result := Elgin_FlagsFiscais(iRetorno);
  LogInfoDll('Elgin_FlagsFiscais(iRetorno);' , 'iRetorno='+IntToStr(iRetorno), result);
end;

//FlagsFiscais
function FlagsFiscaisStr(var strRetorno: String): integer;
begin
  result := Elgin_FlagsFiscaisStr(strRetorno);
  LogInfoDll('Elgin_FlagsFiscaisStr(strRetorno);' , 'strRetorno='+strRetorno, result);
end;


//MinutosImprimindo
function MinutosImprimindo(var strRetorno: string): integer;
begin
  result := Elgin_MinutosImprimindo(strRetorno);
  LogInfoDll('Elgin_MinutosImprimindo(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//MinutosLigada
function MinutosLigada(var strRetorno: string): integer;
begin
  result := Elgin_MinutosLigada(strRetorno);
  LogInfoDll('Elgin_MinutosLigada(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroCaixa
function NumeroCaixa(var strRetorno: string): integer;
begin
  strRetorno := StringOfChar(' ',4);
  result := Elgin_NumeroCaixa(strRetorno);
  LogInfoDll('Elgin_NumeroCaixa(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroCupom
function NumeroCupom(var strRetorno: string): Integer;
begin
  strRetorno := StringOfChar(' ',6);
  result := Elgin_NumeroCupom(strRetorno);
  LogInfoDll('Elgin_NumeroCupom(strRetorno);' , 'strRetorno='+strRetorno, result);
  result := StrToInt(strRetorno);
end;

//NumeroCuponsCancelados
function NumeroCuponsCancelados(var strRetorno: string): integer;
begin
  result := Elgin_NumeroCuponsCancelados(strRetorno);
  LogInfoDll('Elgin_NumeroCuponsCancelados(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroIntervencoes
function NumeroIntervencoes(var strRetorno: string): integer;
begin
  result := Elgin_NumeroIntervencoes(strRetorno);
  LogInfoDll('Elgin_NumeroIntervencoes(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroLoja
function NumeroLoja(var strRetorno: string): integer;
begin
  result := Elgin_NumeroLoja(strRetorno);
  LogInfoDll('Elgin_NumeroLoja(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroOperacoesNaoFiscais
function NumeroOperacoesNaoFiscais(var strRetorno: string): integer;
begin
  result := Elgin_NumeroOperacoesNaoFiscais(strRetorno);
  LogInfoDll('Elgin_NumeroOperacoesNaoFiscais(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroReducoes
function NumeroReducoes(var strRetorno: string): integer;
begin
  result := Elgin_NumeroReducoes(strRetorno);
  LogInfoDll('Elgin_NumeroReducoes(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroSerie
function NumeroSerie(var strRetorno: string): integer;
begin
  strRetorno := StringOfChar(' ', 21);
  result := Elgin_NumeroSerie(strRetorno);
  strRetorno := TrimRight( strRetorno );
  LogInfoDll('Elgin_NumeroSerie(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//NumeroSubstituicoesProprietario
function NumeroSubstituicoesProprietario(var strRetorno: string): integer;
begin
  result := Elgin_NumeroSubstituicoesProprietario(strRetorno);
  LogInfoDll('Elgin_NumeroSubstituicoesProprietario(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//RetornoAliquotas
function RetornoAliquotas(var strRetorno: string): integer;
begin
  result := Elgin_RetornoAliquotas(strRetorno);
  LogInfoDll('Elgin_RetornoAliquotas(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//SimboloMoeda
function SimboloMoeda(var strRetorno: string): integer;
begin
  result := Elgin_SimboloMoeda(strRetorno);
  LogInfoDll('Elgin_SimboloMoeda(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//SubTotal
function SubTotal(var strRetorno: string): integer;
begin
  strRetorno := StringOfChar(' ',14);
  result := Elgin_SubTotal(strRetorno);
  LogInfoDll('Elgin_SubTotal(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//UltimoItemVendido
function UltimoItemVendido(var strRetorno: string): integer;
begin
  result := Elgin_UltimoItemVendido(strRetorno);
  LogInfoDll('Elgin_UltimoItemVendido(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//ValorFormaPagamento
function ValorFormaPagamento(strFormaPgto:string; var strRetorno: string): integer;
begin
  result := Elgin_ValorFormaPagamento(strFormaPgto, strRetorno);
  LogInfoDll('Elgin_ValorFormaPagamento("' + strFormaPgto + '", strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//ValorPagoUltimoCupom
function ValorPagoUltimoCupom(var strRetorno: string): integer;
begin
  result := Elgin_ValorPagoUltimoCupom(strRetorno);
  LogInfoDll('Elgin_ValorPagoUltimoCupom(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//ValorTotalizadorNaoFiscal
function ValorTotalizadorNaoFiscal(strTotalizador:string; var strRetorno: string): integer;
begin
  result := Elgin_ValorTotalizadorNaoFiscal(strTotalizador, strRetorno);
  LogInfoDll('Elgin_ValorTotalizadorNaoFiscal("' + strTotalizador + '", strRetorno);' , 'strRetorno='+strRetorno, result);

end;

//VendaBruta
function VendaBruta(var strRetorno: string): integer;
begin
  result := Elgin_VendaBruta(strRetorno);
  LogInfoDll('Elgin_VendaBruta(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VendaBruta
function VendaLiquida(var strRetorno: string): integer;
begin
  result := Elgin_VendaLiquida(strRetorno);
  LogInfoDll('Elgin_VendaLiquida(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaAliquotasIss
function VerificaAliquotasIss(var strRetorno: string): integer;
begin
  result := Elgin_VerificaAliquotasIss(strRetorno);
  LogInfoDll('Elgin_VerificaAliquotasIss(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaAliquotasIcms
function VerificaAliquotasICMS(var strRetorno: string): integer;
begin
  result := Elgin_VerificaAliquotasICMS(strRetorno);
  LogInfoDll('Elgin_VerificaAliquotasICMS(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaDepartamentos
function VerificaDepartamentos(var strRetorno: string): integer;
begin
  result := Elgin_VerificaDepartamentos(strRetorno);
  LogInfoDll('Elgin_VerificaDepartamentos(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaEstadoImpressora
function VerificaEstadoImpressora(var nACK:integer; var nST1:integer; var nST2:integer): integer;
begin
  result := Elgin_VerificaEstadoImpressora(nACK, nST1, nST2);
  LogInfoDll('Elgin_VerificaEstadoImpressora(nACK, nST1, nST2);' , 'nACK=' + IntToStr(nACK) + #10 + 'nST1=' + IntToStr(nST1) + #10 + 'nST2=' + IntToStr(nST2), result);
end;
//VerificaEstadoImpressora
function VerificaEstadoImpressoraStr(var nACK:string; var nST1:string; var nST2:string): integer;
begin
  result := Elgin_VerificaEstadoImpressoraStr(nACK, nST1, nST2);
  LogInfoDll('Elgin_VerificaEstadoImpressoraStr(nACK, nST1, nST2);' , 'nACK=' + nACK + #10 + 'nST1=' + nST1 + #10 + 'nST2=' + nST2, result);
end;

//VerificaEstadoImpressora
function VerificaEstadoImpressoraMFD(var nACK:integer; var nST1:integer; var nST2:integer; var nST3:integer): integer;
begin
  result := Elgin_VerificaEstadoImpressoraMFD(nACK, nST1, nST2, nST3);
  LogInfoDll('Elgin_VerificaEstadoImpressora(nACK, nST1, nST2, nST3);' , 'nACK=' + IntToStr(nACK) + #10 + 'nST1=' + IntToStr(nST1) + #10 + 'nST2=' + IntToStr(nST2) + #10 + 'nST3=' + IntToStr(nST3), result);
end;

//VerificaFormasPagamento
function VerificaFormasPagamento(var strRetorno: string): integer;
begin
  result := Elgin_VerificaFormasPagamento(strRetorno);
  LogInfoDll('Elgin_VerificaFormasPagamento(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaIndiceAliquotasIss
function VerificaIndiceAliquotasIss(var strRetorno: string): integer;
begin
  result := Elgin_VerificaIndiceAliquotasIss(strRetorno);
  LogInfoDll('Elgin_VerificaIndiceAliquotasIss(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaIndiceAliquotasICMS
function VerificaIndiceAliquotasICMS(var strRetorno: string): integer;
begin
  result := Elgin_VerificaIndiceAliquotasICMS(strRetorno);
  LogInfoDll('Elgin_VerificaIndiceAliquotasICMS(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaModoOperacao
function VerificaModoOperacao(var strRetorno: string): integer;
begin
  result := Elgin_VerificaModoOperacao(strRetorno);
  LogInfoDll('Elgin_VerificaModoOperacao(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaRecebimentoNaoFiscal
function VerificaRecebimentoNaoFiscal(var strRetorno: string): integer;
begin
  result := Elgin_VerificaRecebimentoNaoFiscal(strRetorno);
  LogInfoDll('Elgin_VerificaRecebimentoNaoFiscal(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaTipoImpressora
function VerificaTipoImpressora(var strRetorno: integer): integer;
begin
  result := Elgin_VerificaTipoImpressora(strRetorno);
  LogInfoDll('Elgin_VerificaTipoImpressora(iRetorno);' , 'iRetorno='+IntToStr(strRetorno), result);
end;

//VerificaTipoImpressora
function VerificaTipoImpressoraStr(var strRetorno: string): integer;
begin
  result := Elgin_VerificaTipoImpressoraStr(strRetorno);
  LogInfoDll('Elgin_VerificaTipoImpressoraStr(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaTotalizadoresNaoFiscais
function VerificaTotalizadoresNaoFiscais(var strRetorno: string): integer;
begin
  result := Elgin_VerificaTotalizadoresNaoFiscais(strRetorno);
  LogInfoDll('Elgin_VerificaTotalizadoresNaoFiscais(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaTotalizadoresNaoFiscais
function VerificaTotalizadoresNaoFiscaisMFD(var strRetorno: string): integer;
begin
  result := Elgin_VerificaTotalizadoresNaoFiscaisMFD(strRetorno);
  LogInfoDll('Elgin_VerificaTotalizadoresNaoFiscaisMFD(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaTotalizadoresParciais
function VerificaTotalizadoresParciais(var strRetorno: string): integer;
begin
  result := Elgin_VerificaTotalizadoresParciais(strRetorno);
  LogInfoDll('Elgin_VerificaTotalizadoresParciais(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaTruncamento
function VerificaTruncamento(var strRetorno: string): integer;
begin
  result := Elgin_VerificaTruncamento(strRetorno);
  LogInfoDll('Elgin_VerificaTruncamento(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VersaoFirmware
function VersaoFirmware(var strRetorno: string): integer;
begin
  result := Elgin_VersaoFirmware(strRetorno);
  LogInfoDll('Elgin_VersaoFirmware(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//DataHoraUltimoDocumentoMFD
function DataHoraUltimoDocumentoMFD(var strRetorno: string): integer;
begin
  strRetorno := StringOfChar(' ',12);
  result := Elgin_DataHoraUltimoDocumentoMFD(strRetorno);
  LogInfoDll('Elgin_DataHoraUltimoDocumentoMFD(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//GrandeTotal
function GrandeTotal(var strRetorno: string): integer;
begin
  strRetorno := StringOfChar(' ',18);
  result := Elgin_GrandeTotal(strRetorno);
  LogInfoDll('Elgin_GrandeTotal(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaStatusNumItens
function VerificaStatusNumItens(var strRetorno: string): integer;
begin
  strRetorno := StringOfChar(' ',4);
  result := Elgin_UltimoItemVendido(strRetorno);
  LogInfoDll('Elgin_UltimoItemVendido(strRetorno);' , 'strRetorno='+strRetorno, result);
end;

//VerificaStatusDadosECF
function VerificaStatusDadosECF(var strMarca: String; var strModelo: String;
         var strVersao: String; var strNumSerie: String; var strGrandeTotal:string;
         var strNumProprietarios:String; var strDataSB:String; var strHoraSB:String ): Integer;
var
  iRetorno: Integer;
  strTipo: String;

begin
  iRetorno := 0;
  strMarca := StringOfChar(' ',15);
  strModelo := StringOfChar(' ',20);
  strVersao := StringOfChar(' ',8);
  strNumSerie := StringOfChar(' ',20);
  strGrandeTotal := StringOfChar(' ',18);
  strNumProprietarios := StringOfChar(' ',4);
  strDataSB := StringOfChar(' ',6);
  strHoraSB := StringOfChar(' ',6);


  strTipo := StringOfChar(' ',7);

  //Pega marca e modelo do ECF
  iRetorno := Elgin_MarcaModeloTipoImpressoraMFD(strMarca, strModelo, strTipo);
  LogInfoDll('Elgin_MarcaModeloTipoImpressoraMFD(strMarca, strModelo, strTipo);' , 'strMarca='+strMarca + #10 + 'strModelo='+strModelo + #10 + 'strTipo='+strTipo, iRetorno);
  TrataErro(iRetorno);

  //Pega a versão do software basico
  iRetorno := Elgin_VersaoFirmware(strVersao);
  LogInfoDll('Elgin_VersaoFirmware(strVersao);' , 'strVersao='+strVersao, iRetorno);
  TrataErro(iRetorno);

  //Pega o número de serie
  iRetorno := Elgin_NumeroSerie(strNumSerie);
  LogInfoDll('Elgin_NumeroSerie(strNumSerie);' , 'strNumSerie='+strNumSerie, iRetorno);
  TrataErro(iRetorno);

  //Pega o Grande Total
  iRetorno := Elgin_GrandeTotal(strGrandeTotal);
  LogInfoDll('Elgin_GrandeTotal(strGrandeTotal);' , 'strGrandeTotal='+strGrandeTotal, iRetorno);
  TrataErro(iRetorno);

  //Pega o número de proprietário
  iRetorno := Elgin_NumeroSubstituicoesProprietario(strNumProprietarios);
  LogInfoDll('Elgin_NumeroSubstituicoesProprietario(strNumProprietarios);' , 'strNumProprietarios='+strNumProprietarios, iRetorno);
  TrataErro(iRetorno);

  //Pega data e hora de gravação do Software Basico
  iRetorno := Elgin_DataHoraSoftwareBasico(strDataSB, strHoraSB);
  LogInfoDll('Elgin_DataHoraSoftwareBasico(strDataSB, strHoraSB);' , 'strDataSB='+strDataSB + #10 + 'strHoraSB='+strHoraSB, iRetorno);
  TrataErro(iRetorno);

  result := iRetorno;
end;

//ProgramaAliquota
function ProgramaAliquota(var strPercentual: String; var iTipo: Integer): Integer;
var iRetorno: Integer;

begin
  iRetorno := Elgin_ProgramaAliquota(strPercentual, iTipo);
  LogInfoDll('Elgin_ProgramaAliquota("' + strPercentual + '",' + IntToStr(iTipo) + ');' , '', iRetorno);
  result := iRetorno;
End;

//ProgramaFormaPagamento
function ProgramaFormaPagamento(var strFormaPagamento: String; var strFlagVinculado: String): Integer;
var iRetorno: Integer;
begin
  iRetorno := Elgin_ProgramaFormaPagamentoMFD(strFormaPagamento, strFlagVinculado);
  LogInfoDll('Elgin_ProgramaFormaPagamentoMFD("' + strFormaPagamento + '",' + strFlagVinculado + ');' , '', iRetorno);
  result := iRetorno;
End;

//ProgramaTrucamentoArredondamento
function ProgramaTrucamentoArredondamento(var iFlag: Integer): Integer;
var iRetorno: Integer;

begin
  iRetorno := 0;  
  If (iFlag = 0) Then
  begin
    iRetorno := Elgin_ProgramaArredondamento();
    LogInfoDll('Elgin_ProgramaArredondamento();', '', iRetorno);
  end
  Else If (iFlag = 1) Then
  begin
    iRetorno := Elgin_ProgramaTruncamento();
    LogInfoDll('Elgin_ProgramaTruncamento();', '', iRetorno);
  end;

  result := iRetorno;
end;

//VerificaFlagsFiscais
function VerificaFlagsFiscais(var bCupomAberto: Boolean; var bPagamentoIniciado: Boolean; var bHorarioVerao: Boolean; var bReducaoZRealizada: Boolean; var bPermiteCancelamento: Boolean; var bMFDEsgotada: Boolean): Integer;
var iRetorno, iFlag: Integer;
    strFlag: String;

begin
  strFlag := StringOfChar(' ',3);
  iRetorno := Elgin_FlagsFiscaisStr(strFlag);
  If (iRetorno = 1)
     Then iFlag := strToInt(strFlag)
  else
  begin
       iFlag := 0;
       strFlag := Trim(strFlag);
       strFlag := '0';
  end;

  If ((iFlag And 1) <> 0) Then
    bCupomAberto := True
  Else
    bCupomAberto := False;

  If ((iFlag And 2) <> 0) Then
    bPagamentoIniciado := True
  Else
    bPagamentoIniciado := False;

  If ((iFlag And 4) <> 0) Then
    bHorarioVerao := True
  Else
    bHorarioVerao := False;

  If ((iFlag And 8) <> 0) Then
    bReducaoZRealizada := True
  Else
    bReducaoZRealizada := False;

  If ((iFlag And 32) <> 0) Then
    bPermiteCancelamento := True
  Else
    bPermiteCancelamento := False;

  If ((iFlag And 128) <> 0) Then
    bMFDEsgotada := True
  Else
    bMFDEsgotada := False;

  LogInfoDll('Elgin_FlagsFiscaisStr(strFlag);' , 'strFlag='+strFlag, iRetorno);

  result := iRetorno;
end;

//ProgramaHorarioVerao
function ProgramaHorarioVerao(): Integer;
var
  iRetorno: Integer;
begin
  iRetorno := Elgin_ProgramaHorarioVerao();
  LogInfoDll('Elgin_ProgramaHorarioVerao();', '', iRetorno);

  result := iRetorno;
end;

// NomeiaCupomNaoFiscal
function NomeiaCupomNaoFiscal( iIndice: integer; strNomeTotalizador: String): Integer;
var
  iRetorno: Integer;
begin
  iRetorno := Elgin_NomeiaTotalizadorNaoSujeitoIcms( iIndice, strNomeTotalizador);
  LogInfoDll('Elgin_NomeiaTotalizadorNaoSujeitoIcms(' + IntToStr(iIndice) + ',"' + strNomeTotalizador + '");', '', iRetorno);
  result := iRetorno;
end;

// NomeiaRealtorioGerencial
function NomeiaRelatorioGerencial( strIndice, strDescricao: string): Integer;
var
  iRetorno: Integer;
begin
  iRetorno := Elgin_NomeiaRelatorioGerencialMFD(strIndice, strDescricao);
  LogInfoDll('Elgin_NomeiaRelatorioGerencialMFD("' + strIndice + '","' + strDescricao + '");', '', iRetorno);
  Result := iRetorno;
end;

// NomeiaDepartamento
function NomeiaDepartamento( iIndice: integer; strDepartamento: String): Integer;
var
  iRetorno: Integer;
begin
  iRetorno := Elgin_NomeiaDepartamento(iIndice, strDepartamento);
  LogInfoDll('Elgin_NomeiaDepartamento(' + IntToStr(iIndice) + ',"' + strDepartamento + '");', '', iRetorno);
  Result := iRetorno;
end;

//RetornoImpressora
function RetornoImpressora(var iCodErro: integer; var strErroMsg: string): Integer;
var
  iRetorno: Integer;
begin
  strErroMsg := StringOfChar(' ',2048);
  iRetorno := Elgin_RetornoImpressora(iCodErro, strErroMsg);
  LogInfoRetornoImpressora(iCodErro, strErroMsg);
 result := iRetorno;
end;

function Gera_RFD( iCRZ: integer): Integer;
begin
     Result := RFD_ConvertedaMFD(IntToStr(iCRZ));
     LogInfoDll('RFD_ConvertedaMFD("' + IntToStr(iCRZ) + '");', '', Result);
end;

function StatusEstendido (var iStatus:integer): Integer;
begin
     Result :=  Elgin_StatusEstendidoMFD(iStatus);
     LogInfoDll('Elgin_StatusEstendidoMFD(iStatus);', 'iStatus='+IntToStr(iStatus), Result);
end;

function AbreCupomMFD (CGC_CPF: String; Nome: String;Endereco: String): Integer;
begin
     Result :=  Elgin_AbreCupomMFD(CGC_CPF, Nome, Endereco);
     LogInfoDll('Elgin_AbreCupomMFD("' + CGC_CPF + '","'+ Nome + '","' + Endereco + '");', '', result);
end;

function AcionaGaveta():Integer;
begin
     Result := Elgin_AcionaGaveta();
     LogInfoDll('Elgin_AcionaGaveta();', '', result);
end;

function VerificaEstadoGaveta(var EstadoGaveta:Integer):Integer;
begin
     Result := Elgin_VerificaEstadoGaveta(EstadoGaveta);
     LogInfoDll('Elgin_VerificaEstadoGaveta(iEstadoGaveta);', 'iEstadoGaveta='+IntToStr(EstadoGaveta), Result);
end;

function VerificaEstadoGavetaStr(EstadoGaveta:String):Integer;
begin
     Result := Elgin_VerificaEstadoGavetaStr(EstadoGaveta);
     LogInfoDll('Elgin_VerificaEstadoGavetaStr(strEstadoGaveta);', 'strEstadoGaveta=' + EstadoGaveta, Result);
end;

function Autenticacao(): Integer;
begin
     Result := Elgin_Autenticacao();
     LogInfoDll('Elgin_Autenticacao();', '', result);
end;

function AutenticaDocumento( Linhas: String; Texto: String): Integer;
begin
     Result := Elgin_AutenticacaoMFD(Linhas, Texto);
     LogInfoDll('Elgin_AutenticacaoMFD("' + Linhas + '","'+ Texto + '");', '', result);
end;

function AcionaGuilhotina( iTipoCorte:Integer):Integer;
begin
     Result:= Elgin_AcionaGuilhotinaMFD(iTipoCorte);
     LogInfoDll('Elgin_AcionaGuilhotinaMFD(iTipoCorte);', 'iTipoCorte='+IntToStr(iTipoCorte), Result);
end;

function LeNomeGerencial ( Codigo:String; var Nome:String ): Integer;
begin
     Result := Elgin_LeNomeRelatorioGerencial(Codigo, Nome);
     LogInfoDll('Elgin_LeNomeRelatorioGerencial("' + Codigo +'",Nome);' , 'Nome='+Nome, Result);
end;

function InscricaoMunicipal(var strIM: string): integer;
begin
     Result := Elgin_InscricaoMunicipalMFD(strIM);
     LogInfoDll('Elgin_InscricaoMunicipalMFD(strIM);' , 'strIM='+strIM, Result);
end;

function LeIndicadores (var Indicadores:Integer):Integer;
begin
     Result := Elgin_LeIndicadores(Indicadores);
     LogInfoDll('Elgin_LeIndicadores(Indicadores);', 'Indicadores='+IntToStr(Indicadores), Result);
end;

function VerificaImpressoraLigada(): Integer;
begin
  Result := Elgin_VerificaImpressoraLigada();
  LogInfoDll('Elgin_VerificaImpressoraLigada();', '', Result);
end;

Function ExecutaComando( Comando, Parametros: String ): Integer;
var
    iRetorno: Integer;
begin
    iRetorno := Elgin_ExecutaComando( Pchar(Comando), PChar(Parametros) );
    Result := iRetorno;
end;

Function ExecutaLeitura( Comando, Parametros: String; var Retorno: String ): Integer;
var
    iRetorno: Integer;
begin
    Retorno := StringOfChar(' ', 4096);
    iRetorno := Elgin_ExecutaLeitura( Comando, Parametros, Retorno );
    Retorno := TrimRight( Retorno );
    Result := iRetorno;
end;

//***
//  Claudio Sampaio
//  29/10/2008
//  Função para imprimir a MFD da ECF Elgin
//  Parâmetros:
//     DadoInicial - COO ou Data inicial para leitura da memória fita detalhe
//     DadoFinal - COO ou Data final para leitura da memória fita detalhe
//     TipoDado - Indica se a leitura será realizada por Data (1), COO (2)
//            ou completa(0)
//***
Function ImprimeMFD( DadoInicial: String; DadoFinal: String; TipoDado: Integer): Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'EmiteLeituraFitaDetalhe';
  strParametros := 'Destino="i"';
  if (TipoDado <> 0) then
  begin
    if ( DadoInicial <> '' ) then
    begin
      if (TipoDado = 1) then
        strParametros := strParametros + ' DataInicial=#' + DadoInicial + '#'
      else
        strParametros := strParametros + ' COOInicial=' + DadoInicial;
    end;

    if ( DadoFinal <> '' ) then
    begin
      if (TipoDado = 1) then
        strParametros := strParametros + ' DataFinal=#' + DadoFinal + '#'
      else
        strParametros := strParametros + ' COOFinal=' + DadoFinal;
    end;
  end
  else
    strParametros := 'COOInicial=0';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  30/10/2008
//  Função para cadastrar totalizadores não fiscais
//  Parâmetros:
//     Codigo - código do totalizador
//     Nome - nome do totalizador
//     Descricao - descricao do totalizador
//     Tipo - tipo do totalizador (Entrada ou Saida)
//***
Function CadastraNaoFiscal(Codigo:String; Nome:String; Descricao:String; Tipo:String): Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'DefineNaoFiscal';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodNaoFiscal=' + Codigo;

  if (Nome <> '') then
    strParametros := strParametros + ' NomeNaoFiscal="' + Nome + '"';

  if (Descricao <> '') then
    strParametros := strParametros + ' DescricaoNaoFiscal="' + Descricao + '"';

  if (Tipo <> '') then
    if (Tipo = 'Entrada') then
      strParametros := strParametros + ' TipoNaoFiscal=Yes'
    else
      strParametros := strParametros + ' TipoNaoFiscal=No';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  30/10/2008
//  Função para excluir totalizadores não fiscais
//  Parâmetros:
//     Codigo - código do totalizador
//     Nome - nome do totalizador
//***
function ExcluiNaoFiscal(Codigo:String; Nome:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'ExcluiNaoFiscal';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodNaoFiscal=' + Codigo;

  if (Nome <> '') then
    strParametros := strParametros + ' NomeNaoFiscal="' + Nome + '"';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  31/10/2008
//  Função para ler dados de um totalizador não fiscal
//  Parâmetros:
//     Codigo - código do totalizador
//     Nome - nome do totalizador
//***
function LeNaoFiscal(Codigo:String; Nome:String; var Retorno:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'LeNaoFiscal';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodNaoFiscal=' + Codigo;

  if (Nome <> '') then
    strParametros := strParametros + ' NomeNaoFiscal="' + Nome + '"';

  Retorno := StringOfChar(' ',2048);

  iResultado := Elgin_ExecutaLeitura( PChar(strComando), PChar(strParametros), Retorno);

  Retorno := TrimRight(Retorno);

  LogInfoDll('Elgin_ExecutaLeitura("' + strComando +'","' + strParametros + '", Retorno);' , 'Retorno=' + Retorno, iResultado);

  Result := iResultado;
end;

//***
//  Oscar de Menezes Neto
//  14/09/2009
//  Função para excluir relatórios gerenciais
//  Parâmetros:
//     Codigo - código do totalizador
//     Nome - nome do totalizador
//***
function ExcluiGerencial(Codigo:String; Nome:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'ExcluiGerencial';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodGerencial=' + Codigo;

  if (Nome <> '') then
    strParametros := strParametros + ' NomeGerencial="' + Nome + '"';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Oscar de Menezes Neto
//  16/09/2009
//  Função para ler dados de um departamento
//  Parâmetros:
//     Codigo - código do departamento
//     Nome - nome do departamento
//***
function LeDepartamento(Codigo:String; Nome:String; var Retorno:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'LeDepartamento';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodDepartamento=' + Codigo;

  if (Nome <> '') then
    strParametros := strParametros + ' NomeDepartamento="' + Nome + '"';

  Retorno := StringOfChar(' ',2048);

  iResultado := Elgin_ExecutaLeitura( PChar(strComando), PChar(strParametros), Retorno);

  Retorno := TrimRight(Retorno);

  LogInfoDll('Elgin_ExecutaLeitura("' + strComando +'","' + strParametros + '", Retorno);' , 'Retorno=' + Retorno, iResultado);

  Result := iResultado;
end;

//***
//  Oscar de Menezes Neto
//  16/09/2009
//  Função para excluir departamentos
//  Parâmetros:
//     Codigo - código do departamento
//     Nome - nome do departamento
//***
function ExcluiDepartamento(Codigo:String; Nome:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'ExcluiDepartamento';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodDepartamento=' + Codigo;

  if (Nome <> '') then
    strParametros := strParametros + ' NomeDepartamento="' + Nome + '"';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

function ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer;
begin
     result := Elgin_ImprimeCheque(Banco, Valor, Favorecido, Cidade, Data, Mensagem);
     LogInfoDll('Elgin_ImprimeCheque("' + Banco + '","' + Valor + '","' + Favorecido + '","' +  Cidade + '","' + Data + '","' + Mensagem + '");', '', result);
end;

function ImprimeChequeMFD(NumeroBanco: string; Valor: string; Favorecido: string; Cidade: string; Data: string; Mensagem: string; ImpressaoVerso: string; Linhas: string): Integer;
begin
     result := Elgin_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas);
     LogInfoDll('Elgin_ImprimeChequeMFD("' + NumeroBanco + '","' + Valor + '","' + Favorecido + '","' +  Cidade + '","' + Data + '","' + Mensagem + '","' + ImpressaoVerso + '","' + Linhas + '");', '', result);
end;

function ImprimeCopiaCheque(): Integer;
begin
     result := Elgin_ImprimeCopiaCheque();
     LogInfoDll('Elgin_ImprimeCopiaCheque();', '', Result);
end;

function IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer;
begin
     result := Elgin_IncluiCidadeFavorecido(Cidade, Favorecido);
     LogInfoDll('Elgin_IncluiCidadeFavorecido("' + Cidade + '","' + Favorecido + '");', '', result);
end;

function CancelaImpressaoCheque(): Integer;
begin
     result := Elgin_CancelaImpressaoCheque();
     LogInfoDll('Elgin_CancelaImpressaoCheque();', '', Result);
end;

function LeituraCheque(var CodigoCMC7: string):Integer;
begin
     result := Elgin_LeituraCheque(CodigoCMC7);
     LogInfoDll('Elgin_LeituraCheque(CodigoCMC7);', 'CodigoCMC7=' + CodigoCMC7, result);
end;

function ProgramaMoedaPlural( MoedaPlural: String ):Integer;
begin
     result := Elgin_ProgramaMoedaPlural(MoedaPlural);
     LogInfoDll('Elgin_ProgramaMoedaPlural("' + MoedaPlural + '");', '', result);
end;

function ProgramaMoedaSingular( MoedaSingular: String ):Integer;
begin
     result := Elgin_ProgramaMoedaSingular(MoedaSingular);
     LogInfoDll('Elgin_ProgramaMoedaSingular("' + MoedaSingular + '");', '', result);
end;

function VerificaStatusCheque( var StatusCheque: Integer ):Integer;
begin
     result := Elgin_VerificaStatusCheque(StatusCheque);
     LogInfoDll('Elgin_VerificaStatusCheque(iStatusCheque);', 'iStatusCheque=' + IntToStr(StatusCheque), result);
end;

function AlteraSimboloMoeda( SimboloMoeda: String ): Integer;
begin
     Result := Elgin_AlteraSimboloMoeda(SimboloMoeda);
     LogInfoDll('Elgin_AlteraSimboloMoeda("' + SimboloMoeda + '");', '', result);
end;

function AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ):Integer;
begin
     result := Elgin_AtivaDesativaVendaUmaLinhaMFD(iFlag);
     LogInfoDll('Elgin_AtivaDesativaVendaUmaLinhaMFD(' + IntToStr(iFlag) + ');', '', result);
end;

function EspacoEntreLinhas( Dots: Integer ):Integer;
begin
     result := Elgin_EspacoEntreLinhas(Dots);
     LogInfoDll('Elgin_EspacoEntreLinhas(' + IntToStr(Dots) + ');', '', result);
end;

function LinhasEntreCupons( Linhas: Integer ):Integer;
begin
     result := Elgin_LinhasEntreCupons(Linhas);
     LogInfoDll('Elgin_LinhasEntreCupons(' + IntToStr(Linhas) + ');', '', result);
end;

function NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ):Integer;
begin
     result := Elgin_NomeiaTotalizadorNaoSujeitoIcms(Indice, Totalizador);
     LogInfoDll('Elgin_NomeiaTotalizadorNaoSujeitoIcms(' + IntToStr(Indice) + ',"' + Totalizador + '");', '', result);
end;

function ProgramaBaudRate(BaudRate:String):Integer;
begin
     result := Elgin_ProgramaBaudRate(PChar(BaudRate));
     LogInfoDll('Elgin_ProgramaBaudRate("' + BaudRate + '");', '', result);
end;

//***
//  Alexander Jeske
//  28/02/2009
//  Função para cadastrar/alterar formas de pagamento
//  Parâmetros:
//     Codigo - código da forma de pagamento
//     Descricao - descricao da forma de pagamento
//     Nome - nome da forma de pagamento
//     PermiteVinculado - Yes/No
//***
function CadastraMeioPagamento(Codigo:String; Descricao:String; Nome:String; PermiteVinculado:String): Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'DefineMeioPagamento';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodMeioPagamentoProgram=' + Codigo;


  if (Descricao <> '') then
    strParametros := strParametros + ' DescricaoMeioPagamento="' + Descricao + '"';

  if (Nome <> '') then
    strParametros := strParametros + ' NomeMeioPagamento="' + Nome + '"';

  if (PermiteVinculado <> '') then
      strParametros := strParametros + ' PermiteVinculado=' + PermiteVinculado;

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

function ExcluiMeioPagamento(Codigo:String; Nome:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
     {43;ExcluiMeioPagamento;CodMeioPagamentoProgram=08;50}
  strComando := 'ExcluiMeioPagamento';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodMeioPagamentoProgram=' + Codigo;

  if (Nome <> '') then
    strParametros := strParametros + ' NomeMeioPagamento="' + Nome + '"';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  30/10/2008
//  Função para cadastrar alíquotas
//  Parâmetros:
//     Codigo - código da alíquota
//     Percentual - percentual da alíquota
//     Descricao - descricao da alíquota
//     Tipo - tipo da alíquota (ICMS ou ISSQN)
//***
Function CadastraAliquota(Codigo:String; Percentual:String; Descricao:String; Tipo:String): Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'DefineAliquota';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodAliquotaProgramavel=' + Codigo;

  if (Percentual <> '') then
    strParametros := strParametros + ' PercentualAliquota=' + Percentual;

  if (Descricao <> '') then
    strParametros := strParametros + ' DescricaoAliquota="' + Descricao + '"';

  if (Tipo <> '') then
    if (Tipo = 'ICMS') then
      strParametros := strParametros + ' AliquotaICMS=Yes'
    else
      strParametros := strParametros + ' AliquotaICMS=No';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  30/10/2008
//  Função para excluir alíquota
//  Parâmetros:
//     Codigo - código da alíquota
//     Nome - nome da alíquota
//***
function ExcluiAliquota(Codigo:String; Percentual:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'ExcluiAliquota';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodAliquotaProgramavel=' + Codigo;

  if (Percentual <> '') then
    strParametros := strParametros + ' PercentualAliquota=' + Percentual;

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));
  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  31/10/2008
//  Função para ler dados de uma alíquota
//  Parâmetros:
//     Codigo - código da alíquota
//     Nome - nome da alíquota
//***
function LeAliquota(Codigo:String; Percentual:String; var Retorno:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'LeAliquota';
  strParametros := '';

  if (Codigo <> '') then
    strParametros := strParametros + ' CodAliquotaProgramavel=' + Codigo;

  if (Percentual <> '') then
    strParametros := strParametros + ' PercentualAliquota=' + Percentual;

  Retorno := StringOfChar(' ', 2048);

  iResultado := Elgin_ExecutaLeitura(strComando, strParametros, Retorno);

  Retorno := TrimRight(Retorno);

  LogInfoDll('Elgin_ExecutaLeitura("' + strComando +'","' + strParametros + '", Retorno);' , 'Retorno=' + Retorno, iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  30/10/2008
//  Função para programar o relógio da ECF
//  Parâmetros:
//     Data - nova data
//     Hora - nova hora
//***
function ProgramaRelogio(Data:String; Hora: String): Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'ProgramaRelogio';
  strParametros := '';

  if (Data <> '') then
    strParametros := strParametros + ' Data=#' + Data + '#';

  if (Hora <> '') then
    strParametros := strParametros + ' Hora=#' + Hora + '#';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));

  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  31/10/2008
//  Função para programar cabeçalho do ECF
//  Parâmetros:
//     Cabecalho - texto do cabeçalho
//     NumLoja - número da loja
//     NumECF - número do ECF
//     AlturaLogo - altura do logotipo
//     LarguraLogo - largura do logotipo
//     BufferLog - buffer do logotipo em ASCII-HEX
//***
function ProgramaCabecalho(Cabecalho:String; NumLoja: String; NumECF: String; AlturaLogo:String; LarguraLogo:String; BufferLog:String): Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'DefineDadosCabecalho';
  strParametros := 'Loja=' + NumLoja;
  strParametros := strParametros +  ' ECF=' + NumECF;
  strParametros := strParametros +  ' TextoCabecalho="' + Cabecalho + '"';

  if (AlturaLogo <> '') then
    strParametros := strParametros + ' AlturaLogotipo=' + AlturaLogo;

  if (LarguraLogo <> '') then
    strParametros := strParametros + ' LarguraLogotipo=' + LarguraLogo;

  if (BufferLog <> '') then
    strParametros := strParametros + ' Logotipo=' + BufferLog;

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));

  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

//***
//  Claudio Sampaio
//  31/10/2008
//  Função para excluir totalizadores não fiscais
//  Parâmetros:
//     CNPJ - CNPJ do prorietário
//     IE - Inscrição Estadual do prorietário
//     IM - Inscrição Municipal do prorietário
//     Senha - Senha de lacração da ECF
//***
function ProgramaProprietario(CNPJ:String; IE:String; IM:String; Senha:String):Integer;
var
  strComando, strParametros: String;
  iResultado: Integer;
begin
  strComando := 'DefineProprietario';
  strParametros := 'CNPJ="' + CNPJ + '"';
  strParametros := strParametros +  ' InscricaoEstadual="' + IE + '"';
  strParametros := strParametros +  ' Senha=' + Senha;

  if (IM <> '') then
    strParametros := strParametros + ' InscricaoMunicipal="' + IM + '"';

  iResultado := Elgin_ExecutaComando( PChar(strComando), PChar(strParametros));

  LogInfoDll('Elgin_ExecutaComando("' + strComando +'","' + strParametros + '");' , '', iResultado);

  Result := iResultado;
end;

function AberturaDoDia( ValorCompra: string; FormaPagamento: string ):Integer;
begin
     result := Elgin_AberturaDoDia(ValorCompra, FormaPagamento);
     LogInfoDll('Elgin_AberturaDoDia("' + ValorCompra + '","' + FormaPagamento + '");', '', result);
end;

function FechamentoDoDia():Integer;
begin
     result := Elgin_FechamentoDoDia();
     LogInfoDll('Elgin_FechamentoDoDia();', '', result);
end;

function IdentificaConsumidor(CNPJ_CPF: String; Nome: String; Endereco: String):Integer;
begin
     result := Elgin_IdentificaConsumidor(CNPJ_CPF, Nome, Endereco);
     LogInfoDll('Elgin_IdentificaConsumidor("' + CNPJ_CPF + '","'+ Nome + '","' + Endereco + '");', '', result);
end;

function ImprimeConfiguracoesImpressora():Integer;
begin
     result := Elgin_ImprimeConfiguracoesImpressora();
     LogInfoDll('Elgin_ImprimeConfiguracoesImpressora();', '', result);
end;

function ImprimeDepartamentos():Integer;
begin
     result := Elgin_ImprimeDepartamentos();
     LogInfoDll('Elgin_ImprimeDepartamentos();', '', result);
end;

function LeArquivoRetorno(sCupom: String):Integer;
begin
     result := Elgin_LeArquivoRetorno(sCupom);
     LogInfoDll('Elgin_LeArquivoRetorno("' + sCupom + '");', '', result);
end;

function MapaResumo():Integer;
begin
     result := Elgin_MapaResumo();
     LogInfoDll('Elgin_MapaResumo();', '', result);
end;

function ModeloImpressora(ModeloImpressora: String):Integer;
begin
     result := Elgin_ModeloImpressora(ModeloImpressora);
     LogInfoDll('Elgin_ModeloImpressora(ModeloImpressora);', 'ModeloImpressora=' + ModeloImpressora, result);
end;

function NumeroSerieCriptografado(NumeroSerie: String):Integer;
begin
     result := Elgin_NumeroSerieCriptografado(NumeroSerie);
     LogInfoDll('Elgin_NumeroSerieCriptografado(NumeroSerie);', 'NumeroSerie=' + NumeroSerie, result);
end;

function NumeroSerieDescriptografado(NumeroSerieCriptografado:String; NumeroSerieDesCriptografado:String):Integer;
begin
     result := Elgin_NumeroSerieDescriptografado(NumeroSerieCriptografado, NumeroSerieDesCriptografado);
     LogInfoDll('Elgin_NumeroSerieDescriptografado("' + NumeroSerieCriptografado + '",NumeroSerieDesCriptografado);', 'NumeroSerieDesCriptografado=' + NumeroSerieDesCriptografado, result);
end;

function ProgramaCaracterAutenticacao( Parametros: String ):Integer;
begin
     result := Elgin_ProgramaCaracterAutenticacao( Parametros);
     LogInfoDll('Elgin_ProgramaCaracterAutenticacao("' + Parametros + '");', '', result);
end;

function ProgramaIdAplicativoMFD( NomeAplicativo: String ):Integer;
begin
     result := Elgin_ProgramaIdAplicativoMFD( NomeAplicativo);
     LogInfoDll('Elgin_ProgramaIdAplicativoMFD("' + NomeAplicativo + '");', '', result);
end;

function ProgramaOperador(NomeOperador:String):Integer;
begin
     result := Elgin_ProgramaOperador(NomeOperador);
     LogInfoDll('Elgin_ProgramaOperador("' + NomeOperador + '");', '', result);
end;

function RelatorioTipo60Analitico():Integer;
begin
     result := Elgin_RelatorioTipo60Analitico();
     LogInfoDll('Elgin_RelatorioTipo60Analitico();', '', result);
end;

function RelatorioTipo60Mestre():Integer;
begin
     result := Elgin_RelatorioTipo60Mestre();
     LogInfoDll('Elgin_RelatorioTipo60Mestre();', '', result);
end;
function VerificaReducaoZAutomatica( Flag:integer):Integer;
begin
     result := Elgin_VerificaReducaoZAutomatica( Flag);
     LogInfoDll('Elgin_VerificaReducaoZAutomatica(iFlag);', 'iFlag=' + IntToStr(Flag), result);
end;

function Gera_RFDData (DataInicial:String; DataFinal:String):Integer;
begin
     Result := RFD_ConvertedaMFDData (DataInicial, DataFinal);
     LogInfoDll('RFD_ConvertedaMFDData("' + DataInicial + '","' + DataFinal + '");', '', result);
end;

function RelatorioSintegraMFD (iRelatorios: integer; cArquivo: STRING; cMes: STRING; cAno: STRING; cRazaoSocial: STRING; cEndereco: STRING; cNumero: STRING; cComplemento: STRING; cBairro: STRING; cCidade: STRING; cCEP: STRING; cTelefone: STRING; cFax: STRING; cContato: STRING):Integer;
begin
     result := Elgin_RelatorioSintegraMFD (iRelatorios, cArquivo, cMes, cAno, cRazaoSocial, cEndereco, cNumero, cComplemento, cBairro, cCidade, cCEP, cTelefone, cFax, cContato);
     LogInfoDll('Elgin_RelatorioSintegraMFD(' + IntToStr(iRelatorios) + ',"' + cArquivo + '","' + cMes + '","' +  cAno + '","' + cRazaoSocial + '","' + cEndereco + '","' + cNumero + '","' + cComplemento + '","' +  cBairro + '","' + cCidade + '","' + cCEP + '","' + cTelefone + '","' + cFax + '","' + cContato+ '");', '', result);
end;

function CNPJ_IE(CNPJ: string; IE: string):Integer;
begin
     result := Elgin_CNPJ_IE(CNPJ, IE);
     LogInfoDll('Elgin_CNPJ_IE(CNPJ, IE);', 'CNPJ=' + CNPJ + #10 + 'IE=' + IE, result);
end;

function DataHoraSoftwareBasico(DataSW, HoraSW: String ):Integer;
begin
     result := Elgin_DataHoraSoftwareBasico(DataSW, HoraSW);
     LogInfoDll('Elgin_DataHoraSoftwareBasico(DataSW, HoraSW);', 'DataSW=' + DataSW + #10 + 'HoraSW=' + HoraSW, result);
end;

function TotalDiaTroco( TotalDiaTroco: String ):Integer;
begin
     result := Elgin_TotalDiaTroco( TotalDiaTroco );
     LogInfoDll('Elgin_TotalDiaTroco(TotalDiaTroco);', 'TotalDiaTroco=' + TotalDiaTroco, result);
end;

function TotalDocTroco( TotalDocTroco: String ):Integer;
begin
     result := Elgin_TotalDocTroco( TotalDocTroco );
     LogInfoDll('Elgin_TotalDocTroco(TotalDocTroco);', 'TotalDocTroco=' + TotalDocTroco, result);
end;

function TotalICMSCupom( TotalICMSCupom: String ):Integer;
begin
     result := Elgin_TotalIcmsCupom( TotalICMSCupom );
     LogInfoDll('Elgin_TotalIcmsCupom(TotalICMSCupom);', 'TotalICMSCupom=' + TotalICMSCupom, result);
end;

function VerificaZPendente( var Flag: Integer ): Integer;
begin
     result := Elgin_VerificaZPendente( Flag );
     LogInfoDll('Elgin_VerificaZPendente(iFlag);', 'iFlag=' + IntToStr(Flag), result);
end;

function AcrescimoItemNaoFiscalMFD(strNroItem:string; strAcrescDesc:string; strTipoAcrescDesc:string; strValor:string):Integer;
begin
     result := Elgin_AcrescimoItemNaoFiscalMFD(strNroItem, strAcrescDesc, strTipoAcrescDesc, strValor);
     LogInfoDll('Elgin_AcrescimoItemNaoFiscalMFD("' + strNroItem + '","'+ strAcrescDesc + '","' + strTipoAcrescDesc + '","' + strValor + '");', '', result);
end;

function CancelaCupomMFD(CGC, Nome, Endereco: string):Integer;
begin
     result := Elgin_CancelaCupomMFD(CGC, Nome, Endereco);
     LogInfoDll('Elgin_CancelaCupomMFD("' + CGC + '","'+ Nome + '","' + Endereco + '");', '', result);
end;

function CNPJMFD(CNPJ: string):Integer;
begin
     result := Elgin_CNPJMFD(CNPJ);
     LogInfoDll('Elgin_CNPJMFD(CNPJ);', 'CNPJ=' + CNPJ, result);
end;
function ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes: string):Integer;
begin
     result := Elgin_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes);
     LogInfoDll('Elgin_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes);', 'Comprovantes=' + Comprovantes, result);
end;
function ContadorComprovantesCreditoMFD(Comprovantes: string):integer;
begin
     result := Elgin_ContadorComprovantesCreditoMFD(Comprovantes);
     LogInfoDll('Elgin_ContadorComprovantesCreditoMFD(Comprovantes);', 'Comprovantes=' + Comprovantes, result);
end;

function ContadorCupomFiscalMFD(CuponsEmitidos: string):Integer;
begin
     result := Elgin_ContadorCupomFiscalMFD(CuponsEmitidos);
     LogInfoDll('Elgin_ContadorCupomFiscalMFD(CuponsEmitidos);', 'CuponsEmitidos=' + CuponsEmitidos, result);
end;

function ContadoresTotalizadoresNaoFiscaisMFD(Contadores: string):Integer;
begin
     result := Elgin_ContadoresTotalizadoresNaoFiscaisMFD(Contadores);
     LogInfoDll('Elgin_ContadoresTotalizadoresNaoFiscaisMFD(Contadores);', 'Contadores=' + Contadores, result);
end;

function ContadorFitaDetalheMFD(ContadorFita: string):Integer;
begin
     result := Elgin_ContadorFitaDetalheMFD(ContadorFita);
     LogInfoDll('Elgin_ContadorFitaDetalheMFD(ContadorFita);', 'ContadorFita=' + ContadorFita, result);
end;

function ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas: string):Integer;
begin
     result := Elgin_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas);
     LogInfoDll('Elgin_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas);', 'OperacoesCanceladas=' + OperacoesCanceladas, result);
end;

function ContadorRelatoriosGerenciaisMFD (Relatorios: String):Integer;
begin
     result := Elgin_ContadorRelatoriosGerenciaisMFD (Relatorios);
     LogInfoDll('Elgin_ContadorRelatoriosGerenciaisMFD(Relatorios);', 'Relatorios=' + Relatorios, result);
end;

function CupomAdicionalMFD():Integer;
begin
     result := Elgin_CupomAdicionalMFD();
     LogInfoDll('Elgin_CupomAdicionalMFD();', '', result);
end;

function DadosUltimaReducaoMFD(DadosReducao: string):Integer;
begin
     result := Elgin_DadosUltimaReducaoMFD(DadosReducao);
     LogInfoDll('Elgin_DadosUltimaReducaoMFD(DadosReducao);', 'DadosReducao=' + DadosReducao, result);
end;

function DataMovimentoUltimaReducaoMFD( cDataMovimento: String ):Integer;
begin
     result := Elgin_DataMovimentoUltimaReducaoMFD( cDataMovimento);
     LogInfoDll('Elgin_DataMovimentoUltimaReducaoMFD(cDataMovimento);', 'cDataMovimento=' + cDataMovimento, result);
end;

function DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ):Integer;
begin
     result := Elgin_DownloadMFD( Arquivo, TipoDownload, ParametroInicial, ParametroFinal, UsuarioECF);
     LogInfoDll('Elgin_DownloadMFD("' + Arquivo + '","' + TipoDownload + '","' + ParametroInicial + '","' +  ParametroFinal + '","' + UsuarioECF + '");', '', result);
end;

function EfetuaFormaPagamentoMFD(FormaPagamento: string; ValorFormaPagamento: string; Parcelas: string; DescricaoFormaPagto: string):Integer;
begin
     result := Elgin_EfetuaFormaPagamentoMFD(FormaPagamento,ValorFormaPagamento,Parcelas,DescricaoFormaPagto);
     LogInfoDll('Elgin_EfetuaFormaPagamentoMFD("' + FormaPagamento + '","' + ValorFormaPagamento + '","' + Parcelas + '","' +  DescricaoFormaPagto + '");', '', result);
end;

function FormatoDadosMFD(ArquivoOrigem: String; ArquivoDestino: String; TipoFormato: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String):Integer;
begin
     result := Elgin_FormatoDadosMFD(ArquivoOrigem,ArquivoDestino,TipoFormato,TipoDownload,ParametroInicial,ParametroFinal,UsuarioECF);
     LogInfoDll('Elgin_FormatoDadosMFD("' + ArquivoOrigem + '","' + ArquivoDestino + '","' + TipoFormato + '","' +  TipoDownload + '","' + ParametroInicial + '","' + ParametroFinal + '","' + UsuarioECF + '");', '', result);
end;

function GrandeTotalUltimaReducaoMFD( cGT: String ):Integer;
begin
     result := Elgin_GrandeTotalUltimaReducaoMFD( cGT );
     LogInfoDll('Elgin_GrandeTotalUltimaReducaoMFD(cGT);', 'cGT=' + cGT, result);
end;

function IniciaFechamentoCupomMFD(AcrescimoDesconto: string;TipoAcrescimoDesconto: string; ValorAcrescimo: string; ValorDesconto: string):Integer;
begin
     result := Elgin_IniciaFechamentoCupomMFD(AcrescimoDesconto,TipoAcrescimoDesconto,ValorAcrescimo,ValorDesconto);
     LogInfoDll('Elgin_IniciaFechamentoCupomMFD("' + AcrescimoDesconto + '","' + TipoAcrescimoDesconto + '","' + ValorAcrescimo + '","' +  ValorDesconto + '");', '', result);
end;

function InicioFimCOOsMFD( cCOOIni: String; cCOOFim: String ):Integer;
begin
     result := Elgin_InicioFimCOOsMFD( cCOOIni, cCOOFim);
     LogInfoDll('Elgin_InicioFimCOOsMFD(cCOOIni, cCOOFim);', 'cCOOIni=' + cCOOIni + #10 + 'cCOOFim=' + cCOOFim, result);
end;

function InicioFimGTsMFD( cGTInicial: String; cGTFinal: String ):Integer;
begin
     result := Elgin_InicioFimGTsMFD( cGTInicial, cGTFinal);
     LogInfoDll('Elgin_InicioFimGTsMFD(cGTInicial, cGTFinal);', 'cGTInicial=' + cGTInicial + #10 + 'cGTFinal=' + cGTFinal, result);
end;

function InscricaoEstadualMFD(InscricaoEstadual: string):Integer;
begin
     result := Elgin_InscricaoEstadualMFD(InscricaoEstadual);
     LogInfoDll('Elgin_InscricaoEstadualMFD(InscricaoEstadual);', 'InscricaoEstadual=' + InscricaoEstadual, result);
end;

function InscricaoMunicipalMFD(InscricaoMunicipal: string):Integer;
begin
     result := Elgin_InscricaoMunicipalMFD(InscricaoMunicipal);
     LogInfoDll('Elgin_InscricaoMunicipalMFD(InscricaoMunicipal);', 'InscricaoMunicipal=' + InscricaoMunicipal, result);
end;

function LeCodigoNacionalIdentificacaoECF( var CNI: String ): Integer;
begin
    CNI := StringOfChar(' ',6);
    Result := Elgin_LeCodigoNacionalIdentificacaoECF( CNI );
    LogInfoDll('Elgin_LeCodigoNacionalIdentificacaoECF( CNI );', 'CNI=' + CNI, result);
end;

function LeParametrosPAF( var CNPJ, Data, Hora, NumSerie, NumECF, GT: String ): Integer;
begin
    CNPJ := StringOfChar(' ',18);
    Data := StringOfChar(' ',6);
    Hora := StringOfChar(' ',6);
    NumSerie := StringOfChar(' ',21);
    NumECF := StringOfChar(' ',4);
    GT:= StringOfChar(' ',20);
    Result := Elgin_LeParametrosPAF( CNPJ, Data, Hora, NumSerie, NumECF, GT );
    LogInfoDll('Elgin_LeParametrosPAF( CNPJ, Data, Hora, NumSerie, NumECF, GT );',
        'CNPJ=' + CNPJ + #10 + 'Data=' + Data + #10 + 'Hora=' + Hora + #10 +
        'NumSerie=' + NumSerie + #10 + 'NumECF=' + NumECF + #10 +
        'GrandeTotal=' + GT, result);
    NumSerie := TrimRight( NumSerie );
    GT := TrimRight( GT );
end;

function MapaResumoMFD():Integer;
begin
     result := Elgin_MapaResumoMFD();
     LogInfoDll('Elgin_MapaResumoMFD();', '', result);
end;

function MarcaModeloTipoImpressoraMFD(Marca: string; Modelo:string; Tipo: string):Integer;
begin
     result := Elgin_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo);
     LogInfoDll('Elgin_MarcaModeloTipoImpressoraMFD("' + Marca + '","' + Modelo + '","' + Tipo + '");', '', result);
end;

function MinutosEmitindoDocumentosFiscaisMFD(Minutos: string):Integer;
begin
     result := Elgin_MinutosEmitindoDocumentosFiscaisMFD(Minutos);
     LogInfoDll('Elgin_MinutosEmitindoDocumentosFiscaisMFD(Minutos);', 'Minutos=' + Minutos, result);
end;

function NomeiaRelatorioGerencialMFD (Indice: string; Descricao: string):Integer;
begin
     result := Elgin_NomeiaRelatorioGerencialMFD (Indice,Descricao);
     LogInfoDll('Elgin_NomeiaRelatorioGerencialMFD("' + Indice + '","' + Descricao + '");', '', result);
end;

function NumeroSerieMemoriaMFD(NumeroSerieMFD: string):Integer;
begin
     result := Elgin_NumeroSerieMemoriaMFD(NumeroSerieMFD);
     LogInfoDll('Elgin_NumeroSerieMemoriaMFD(NumeroSerieMFD);', 'NumeroSerieMFD=' + NumeroSerieMFD, result);
end;

function PercentualLivreMFD( cMemoriaLivre: string ):Integer;
begin
     result := Elgin_PercentualLivreMFD( cMemoriaLivre);
     LogInfoDll('Elgin_PercentualLivreMFD(cMemoriaLivre);', 'cMemoriaLivre=' + cMemoriaLivre, result);
end;

function ProgramaFormaPagamentoMFD(FormaPagto: string; OperacaoTef: String):Integer;
begin
     result := Elgin_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef);
     LogInfoDll('Elgin_ProgramaFormaPagamentoMFD("' + FormaPagto + '","' + OperacaoTef + '");', '', result);
end;

function ReducoesRestantesMFD(Reducoes: string):Integer;
begin
     result := Elgin_ReducoesRestantesMFD(Reducoes);
     LogInfoDll('Elgin_ReducoesRestantesMFD(Reducoes);', 'Reducoes=' + Reducoes, result);
end;

function RegistrosTipo60():Integer;
begin
     result := Elgin_RegistrosTipo60();
     LogInfoDll('Elgin_RegistrosTipo60();', '', result);
end;

function SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ):Integer;
begin
     result := Elgin_SubTotalComprovanteNaoFiscalMFD( cSubTotal );
     LogInfoDll('Elgin_SubTotalComprovanteNaoFiscalMFD(cSubTotal);', 'cSubTotal=' + cSubTotal, result);
end;

function TempoOperacionalMFD(TempoOperacional: string):Integer;
begin
     result := Elgin_TempoOperacionalMFD(TempoOperacional);
     LogInfoDll('Elgin_TempoOperacionalMFD(TempoOperacional);', 'TempoOperacional=' + TempoOperacional, result);
end;

function UsaRelatorioGerencialMFD(Texto: string):Integer;
begin
     Elgin_UsaRelatorioGerencialMFD(Texto);
     LogInfoDll('Elgin_UsaRelatorioGerencialMFD("' + Texto + '");', '', result);
end;

function ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ):Integer;
begin
     result := Elgin_ValorFormaPagamentoMFD( FormaPagamento, Valor);
     LogInfoDll('Elgin_ValorFormaPagamentoMFD("' + FormaPagamento + '", Valor);', 'Valor=' + Valor, result);
end;

function ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ):Integer;
begin
     result := Elgin_ValorTotalizadorNaoFiscalMFD( Totalizador,Valor);
     LogInfoDll('Elgin_ValorTotalizadorNaoFiscalMFD("' + Totalizador + '", Valor);', 'Valor=' + Valor, result);
end;

function VerificaFormasPagamentoMFD(FormasPagamento: string):Integer;
begin
     result := Elgin_VerificaFormasPagamentoMFD(FormasPagamento);
     LogInfoDll('Elgin_VerificaFormasPagamentoMFD(FormasPagamento);', 'FormasPagamento=' + FormasPagamento, result);
end;

function VerificaRecebimentoNaoFiscalMFD(Recebimentos: string):Integer;
begin
     result := Elgin_VerificaRecebimentoNaoFiscalMFD(Recebimentos);
     LogInfoDll('Elgin_VerificaRecebimentoNaoFiscalMFD(Recebimentos);', 'Recebimentos=' + Recebimentos, result);
end;

function VerificaRelatorioGerencialMFD(Relatorios: string):Integer;
begin
     result := Elgin_VerificaRelatorioGerencialMFD(Relatorios);
     LogInfoDll('Elgin_VerificaRelatorioGerencialMFD(Relatorios);', 'Relatorios=' + Relatorios, result);
end;

function VerificaTotalizadoresParciaisMFD(Totalizadores: string):Integer;
begin
     result := Elgin_VerificaTotalizadoresParciaisMFD(Totalizadores);
     LogInfoDll('Elgin_VerificaTotalizadoresParciaisMFD(Totalizadores);', 'Totalizadores=' + Totalizadores, result);
end;

end.
