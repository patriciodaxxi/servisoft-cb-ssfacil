unit uNFeConsts;

interface

const
  // Comandos
  NFe_Envia                             = 0001;
  NFe_Cancela                           = 0002;
  NFe_Verifica                          = 0003;
  NFe_Conectado                         = 0004;
  NFe_VerificaContingencia              = 0005;
  NFe_ChaveAcesso                       = 0006;
  NFe_CodigoBarrasContingencia          = 0007;
  NFe_Consultar                         = 0008;
  NFe_AdicionaProtNFe                   = 0009;
  NFe_Inutilizar                        = 0010;
  NFe_GerarDANFE                        = 0011;
  NFe_EnviarCartaCorrecao               = 0012;
  NFe_ConsultarNFe                      = 0013;
  NFe_EnviarEmail                       = 0014;
  NFe_ImportarNFeFornecedor             = 0015;
  NFe_EnviarNF                          = 0016;
  NFe_BuscarStatusNF                    = 0017;
  NFe_ConsultarNFeDestinadas            = 0018;
  NFe_EnviarManifestacao                = 0019;
  NFe_ConsultarContribuintes            = 0020;
  NFe_DownloadNFe                       = 0021;
  NFe_EnviarEmail2                      = 0022;
  NFe_GerarQRCodeNFCe                   = 0023;
  NFe_DownloadNFeWeb                    = 0024;
  NFe_GerarURLQRCode                    = 0025;
  NFe_distNSU                           = 0026;
  NFe_consNSU                           = 0027;
  NFe_IntegracaoContab                  = 0028;
  NFe_EnviarNFSinc                      = 0029;

  NFSe_Comandos                         = 1000;
  NFSe_GerarLote                        = 1001;
  NFSe_EnviarLote                       = 1002;
  NFSe_ConsultarLote                    = 1003;
  NFSe_CancelarNFSe                     = 1004;
  NFSe_ConsultarNFSe                    = 1005;
  NFSe_ConsultarNFSeRPS                 = 1006;
  NFSe_ConsultarNFSe2                   = 1007;
  NFSe_ObterNFSe                        = 1008;
  NFSe_ConsultarNFSeCB                  = 1009;
  NFSe_ObterNotaEmPNG                   = 1010;

  MDFe_Comandos                         = 2000;
  MDFe_Buscar                           = 2001;
  MDFe_Cancelar                         = 2002;
  MDFe_Consultar                        = 2003;
  MDFe_ConsultarNaoEncerrada            = 2004;
  MDFe_ConsultarStatus                  = 2005;
  MDFe_Encerrar                         = 2006;
  MDFe_Enviar                           = 2007;
  MDFe_IncluirCondutor                  = 2008;
  MDFe_CriarChave                       = 2009;
  MDFe_ConsultarDistribuicaoInteressado = 2010;
  MDFe_ConsultarDistribuicaoNSU         = 2011;
  MDFe_GerarQRCodeURL                   = 2012;
  MDFe_GerarPDF                         = 2013;

  NFe_Atualizar_Configuracao            = 9996;
  NFe_ErrorEnvioNfe                     = 9997;

  NFe_OK                                = 9998;
  NFe_Error                             = 9999;

  // Codigos de erro
  ERRO_EnvioNotaDuplicada      = -1000;
  ERRO_NFeNaoEncontrada        = -1001;
  ERRO_NFeNaoCarregada         = -1002;
  ERRO_NFeNaoSuportada         = -1003;
  ERRO_NFSeNaoSuportada        = -1004;
  ERRO_ComandoNaoEncontrado    = -1005;

implementation

end.
