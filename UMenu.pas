//  ShellExecute(Handle,'open','http://ssfacil.mysuite2.com.br/clientvivo.php?param=sochat_chatdep&inf=&sl=ssfa&idm=&imgcab=&cdu=1&redirect=http://ssfacil.mysuite2.com.br/empresas/ssfa/atendimento.php',nil,nil,SW_SHOW);
unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ComCtrls, jpeg, Menus,
  ToolWin, Types, UCBase, UCDBXConn, ActnList, ImgList, ShellAPI, ExtCtrls, RLConsts, IniFiles, Midaslib, DBClient, SqlExpr,
  LogTypes, DateUtils;

type
  TfMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pais1: TMenuItem;
    Sobre1: TMenuItem;
    UF1: TMenuItem;
    Cidade1: TMenuItem;
    
    Faturamento1: TMenuItem;
    NotaFiscalNFe1: TMenuItem;
    UCDBXConn1: TUCDBXConn;
    UserControl1: TUserControl;
    UCSettings1: TUCSettings;
    Administrao1: TMenuItem;
    CadastrodeUsurios1: TMenuItem;
    PerfildeUsurios1: TMenuItem;
    LogdoSistema1: TMenuItem;
    N1: TMenuItem;
    rocarSenha1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    ActionList1: TActionList;
    ImageList1: TImageList;
    Pessoa1: TMenuItem;
    EmpresaFiliais1: TMenuItem;
    N2: TMenuItem;
    Produto1: TMenuItem;
    Compras1: TMenuItem;
    CondiodePagamento2: TMenuItem;
    CFOPNaturezadeOperao1: TMenuItem;
    NCM1: TMenuItem;
    N3: TMenuItem;
    Parmetros1: TMenuItem;
    PedidoComercial1: TMenuItem;
    NotaEntrada1: TMenuItem;
    abelaImpostos1: TMenuItem;
    Cofins1: TMenuItem;
    Pis1: TMenuItem;
    CSTICMS1: TMenuItem;
    CSTIpi1: TMenuItem;
    ObservaoAuxiliar1: TMenuItem;
    UnidadedeMedida1: TMenuItem;
    PercentualSimples1: TMenuItem;
    RegimeTributrio1: TMenuItem;
    OrigemProduto1: TMenuItem;
    ToolBar1: TToolBar;
    alCliente: TAction;
    alNotaFiscal: TAction;
    alProduto: TAction;
    alMovimentos: TAction;
    alSaida: TAction;
    tbPessoa: TToolButton;
    tbNotaFiscal: TToolButton;
    tbProduto: TToolButton;
    alTransportador: TAction;
    alFornecedor: TAction;
    RecebeXML1: TMenuItem;
    tbCompra: TToolButton;
    alCompras: TAction;
    tbPedido: TToolButton;
    alPedido: TAction;
    Regras1: TMenuItem;
    RegraEmpresa1: TMenuItem;
    ConsultaEstoque1: TMenuItem;
    DocumentoAjusteEstoque1: TMenuItem;
    ConsultaEstoqueMovimentoPorProduto1: TMenuItem;
    Financeiro1: TMenuItem;
    Duplicatas1: TMenuItem;
    ipoCobrana1: TMenuItem;
    ConsultaNotasdeBeneficiamento1: TMenuItem;
    N6: TMenuItem;
    ConsultaPedido1: TMenuItem;
    abeladePreo1: TMenuItem;
    Cadastro2: TMenuItem;
    Consulta1: TMenuItem;
    Oramento1: TMenuItem;
    MovFinanceiro1: TMenuItem;
    ContasBancos1: TMenuItem;
    InformarNotaInicial1: TMenuItem;
    ConsultaFaturamento1: TMenuItem;
    Grupo1: TMenuItem;
    MarcadeProduto1: TMenuItem;
    N10: TMenuItem;
    ConsultaMateriaisTerceiros1: TMenuItem;
    N11: TMenuItem;
    BaixaPedidoManual1: TMenuItem;
    Atelier2: TMenuItem;
    MovAtelier1: TMenuItem;
    PagamentoAtelier1: TMenuItem;
    ConsultaNotaCanceladaDenegada1: TMenuItem;
    DeParaCFOP1: TMenuItem;
    NFeOpes1: TMenuItem;
    Inutilizarnumeraodenota1: TMenuItem;
    EmailsAdicionaisNFe1: TMenuItem;
    Manifesto1: TMenuItem;
    tbManifesto: TToolButton;
    ConsultasManifestodosClientes1: TMenuItem;
    LocalEstoque1: TMenuItem;
    Comisso1: TMenuItem;
    LanamentoExtrato1: TMenuItem;
    ConsultaPagamentoExtratoComisso1: TMenuItem;
    N12: TMenuItem;
    Agenda1: TMenuItem;
    Funcionrio1: TMenuItem;
    N13: TMenuItem;
    ConsultaPrevisoComisso1: TMenuItem;
    N14: TMenuItem;
    CompactareEnviarXML1: TMenuItem;
    Banco1: TMenuItem;
    CobranaEletrnica1: TMenuItem;
    Carteira1: TMenuItem;
    CadastroOcorrnciaEspcieInstruo1: TMenuItem;
    N16: TMenuItem;
    ConsultaCompras1: TMenuItem;
    RetornoCadastroOcorrnciaLiquidaoErros1: TMenuItem;
    RetornoTabelaRejeio1: TMenuItem;
    Servios1: TMenuItem;
    CadastroServios1: TMenuItem;
    ProvedorNFSe1: TMenuItem;
    Natureza1: TMenuItem;
    N17: TMenuItem;
    NotaServio1: TMenuItem;
    CadastroServiosInterno1: TMenuItem;
    Setores1: TMenuItem;
    ContasOramento1: TMenuItem;
    N18: TMenuItem;
    CentrosdeCusto1: TMenuItem;
    OrdemdeCompra1: TMenuItem;
    N19: TMenuItem;
    ConsultaPedidoPorDatadeFaturamento1: TMenuItem;
    CadastroAtividadeMunicipio1: TMenuItem;
    ConsultaNotasEntradaSada1: TMenuItem;
    ConsultaOrdemdeCompra1: TMenuItem;
    N7: TMenuItem;
    BaixaOrdemdeCompraManual1: TMenuItem;
    estarnossonmero1: TMenuItem;
    Requisio1: TMenuItem;
    GerarMovimentoNotasFiscaisServio1: TMenuItem;
    N20: TMenuItem;
    ConsultaNotasServio1: TMenuItem;
    N21: TMenuItem;
    BaixaProduo1: TMenuItem;
    amanho1: TMenuItem;
    Grade1: TMenuItem;
    OperaodaNota1: TMenuItem;
    Vale1: TMenuItem;
    PCP1: TMenuItem;
    GerarLote1: TMenuItem;
    BaixaLoteTalo1: TMenuItem;
    Contrato1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    tbOServico: TToolButton;
    tbDuplicata: TToolButton;
    Posio1: TMenuItem;
    PrevisesdeContas1: TMenuItem;
    GerarNotaServio1: TMenuItem;
    Cheques1: TMenuItem;
    ConsultaEstoqueClienteExtrato1: TMenuItem;
    Inventrio1: TMenuItem;
    BalanoEstoque1: TMenuItem;
    OrdemdeServio1: TMenuItem;
    N24: TMenuItem;
    OrdemdeServioBaixa1: TMenuItem;
    OrdemdeServioConsulta1: TMenuItem;
    Mquinas1: TMenuItem;
    ipoMatriz1: TMenuItem;
    AtualizarPedido1: TMenuItem;
    ConsultaNova1: TMenuItem;
    Ferados1: TMenuItem;
    FeriadoFixo1: TMenuItem;
    Consultas1: TMenuItem;
    Saldodecontas1: TMenuItem;
    SaldoporFormadePagamento1: TMenuItem;
    ContratoServio1: TMenuItem;
    CNAE1: TMenuItem;
    ContasPagarReceberPagamentos1: TMenuItem;
    abIBPT1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    GerarLoteCalado1: TMenuItem;
    Relatrio1: TMenuItem;
    Rtulo1: TMenuItem;
    EDIConfigurao1: TMenuItem;
    N28: TMenuItem;
    ReceberPedidoEDI1: TMenuItem;
    abelaSimplesFaixaicms1: TMenuItem;
    Contabilista1: TMenuItem;
    ContasOramento2: TMenuItem;
    FluxodeCaixaPrevistoRealizado1: TMenuItem;
    ImportarExportarPedidoExcel1: TMenuItem;
    ObservaodaNotaFiscalLei1: TMenuItem;
    PlanodeContas1: TMenuItem;
    GerarXML1: TMenuItem;
    RtuloSemGrade1: TMenuItem;
    OrdemdeServioSimples1: TMenuItem;
    N29: TMenuItem;
    ParmetrosOSSimples1: TMenuItem;
    RemessaNovo1: TMenuItem;
    RetornoNovoAcbr1: TMenuItem;
    N30: TMenuItem;
    CidadeUFPais1: TMenuItem;
    ProdutoUnidadeNCM1: TMenuItem;
    N22: TMenuItem;
    Financeiro2: TMenuItem;
    Servios2: TMenuItem;
    N15: TMenuItem;
    N4: TMenuItem;
    Produo1: TMenuItem;
    N23: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N32: TMenuItem;
    N34: TMenuItem;
    N33: TMenuItem;
    ransfernciaFinanceira1: TMenuItem;
    N36: TMenuItem;
    ConfiguraoEmail1: TMenuItem;
    EtiquetaIndividual1: TMenuItem;
    EtiquetaRtulo1: TMenuItem;
    N37: TMenuItem;
    Recibo1: TMenuItem;
    Cores1: TMenuItem;
    PedidosLiberadosParaFaturamento1: TMenuItem;
    N38: TMenuItem;
    ConsultaPeas1: TMenuItem;
    MatrizdePreo1: TMenuItem;
    ConsultaComissoPedido1: TMenuItem;
    Linha1: TMenuItem;
    N39: TMenuItem;
    ConsultaDespesas1: TMenuItem;
    CdigoBarra1: TMenuItem;
    N40: TMenuItem;
    MovimentoServioExtra1: TMenuItem;
    GradeConfiguraoQtde1: TMenuItem;
    Combinao1: TMenuItem;
    N41: TMenuItem;
    aloAuxiliarSadaRetorno1: TMenuItem;
    NecessidadedeComprasNovo1: TMenuItem;
    N42: TMenuItem;
    Minuta1: TMenuItem;
    MovAtelierCalados1: TMenuItem;
    PagamentoAtelierCalados1: TMenuItem;
    CobranaDescontada1: TMenuItem;
    CadastrodadescriodeValoresDescontada1: TMenuItem;
    Processos1: TMenuItem;
    Estoque1: TMenuItem;
    N5: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    ConsultaEstoquexProduo1: TMenuItem;
    ConsultaOP1: TMenuItem;
    AprovaodePedidos1: TMenuItem;
    ConsultaEstoqueLoteControle1: TMenuItem;
    EnquadramentoIPI1: TMenuItem;
    MetasdeVendas1: TMenuItem;
    ConsultasMetasPedidos1: TMenuItem;
    N45: TMenuItem;
    AjustePreoContrato1: TMenuItem;
    Cadastro3: TMenuItem;
    GrupoPessoa1: TMenuItem;
    ConsultaProdutosSemVendasPedidosnoPerodo1: TMenuItem;
    ConsultaEstoqueVeculoMovimento1: TMenuItem;
    ConsultaMaterialSemiAcabadoSemMovimentao1: TMenuItem;
    RtuloPorGrade1: TMenuItem;
    ConsultaPedidoProcesso1: TMenuItem;
    N46: TMenuItem;
    SPEDBlocoH1: TMenuItem;
    BalanoEstoqueVeculo1: TMenuItem;
    N31: TMenuItem;
    Utilitrios1: TMenuItem;
    tbProcesso: TToolButton;
    OrdemServiotica1: TMenuItem;
    GerarIntegraoContbil1: TMenuItem;
    RegraCFOP1: TMenuItem;
    ConsultaPedidosAlteradosporSenha1: TMenuItem;
    ReciboNF1: TMenuItem;
    EnviarEmailCadastro1: TMenuItem;
    ManifestodeCargaRomaneiodeEndereo1: TMenuItem;
    GerarFCI1: TMenuItem;
    ConsultaEstoqueMedidaLoteControle1: TMenuItem;
    N35: TMenuItem;
    ImportarpeloExcel1: TMenuItem;
    GerarArquivoPerDCompNotaServio1: TMenuItem;
    Atividade1: TMenuItem;
    Clientes1: TMenuItem;
    ConsultaPrazoMdioCReceber1: TMenuItem;
    ConfernciaSimplesSemcontroledofaturamento1: TMenuItem;
    GruposdeProcessos1: TMenuItem;
    PlanoContbil1: TMenuItem;
    ConsultaMapadeCompra1: TMenuItem;
    PlanoDRE1: TMenuItem;
    ConsultaFaturamento21: TMenuItem;
    ConsultaDRE1: TMenuItem;
    PagamentodeCarn1: TMenuItem;
    AtelierADefinir1: TMenuItem;
    N47: TMenuItem;
    ProgramaodePedidos1: TMenuItem;
    FuncionriosResumido1: TMenuItem;
    RelatrioAniversariantes1: TMenuItem;
    ExcluirPedidos1: TMenuItem;
    ConsultaMateriaisPorLote1: TMenuItem;
    N48: TMenuItem;
    ConsultaProdutoVlrCustoConsumo1: TMenuItem;
    ConsultaFrete1: TMenuItem;
    N49: TMenuItem;
    ConsultaMaterialParaCompras1: TMenuItem;
    ConsultaPedidoOramento1: TMenuItem;
    ConsultaEstoqueReserva1: TMenuItem;
    BaixarMaterialPorOrdemdeProduo1: TMenuItem;
    Janelas1: TMenuItem;
    Ativas1: TMenuItem;
    ipoMaterial1: TMenuItem;
    N50: TMenuItem;
    ConsultarMateriaPrimanoProduto1: TMenuItem;
    N51: TMenuItem;
    ConsultaOrdemdeProduoBaixaMaterial1: TMenuItem;
    LevantamentodeMateriais1: TMenuItem;
    N27: TMenuItem;
    BaixaPedidoPorProcesso1: TMenuItem;
    ConsultaPedidoProcessoMapa1: TMenuItem;
    DocumentodeEntradaNotaServioCTeTransporte1: TMenuItem;
    ipoMquina1: TMenuItem;
    ConsultaComprasServioCtaOramento1: TMenuItem;
    ConsultaRealizadoComprasxProjetadoFaturado1: TMenuItem;
    FuncionarioCompleto1: TMenuItem;
    FuncionrioResumido1: TMenuItem;
    ConsultaEstoqueAtual1: TMenuItem;
    BaixaNotadeBeneficiamento1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pais1Click(Sender: TObject);
    procedure UF1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure NotaFiscalNFe1Click(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EmpresaFiliais1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure CFOPNaturezadeOperao1Click(Sender: TObject);
    procedure NCM1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure PercentualSimples1Click(Sender: TObject);
    procedure Cofins1Click(Sender: TObject);
    procedure Pis1Click(Sender: TObject);
    procedure CSTICMS1Click(Sender: TObject);
    procedure CSTIpi1Click(Sender: TObject);
    procedure ObservaoAuxiliar1Click(Sender: TObject);
    procedure UnidadedeMedida1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sobre1Click(Sender: TObject);
    procedure RegimeTributrio1Click(Sender: TObject);
    procedure OrigemProduto1Click(Sender: TObject);
    procedure NotaEntrada1Click(Sender: TObject);
    procedure ContasBancos1Click(Sender: TObject);
    procedure ipoCobrana1Click(Sender: TObject);
    procedure PedidoComercial1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure RecebeXML1Click(Sender: TObject);
    procedure RegraEmpresa1Click(Sender: TObject);
    procedure ConsultaEstoque1Click(Sender: TObject);
    procedure DocumentoAjusteEstoque1Click(Sender: TObject);
    procedure ConsultaEstoqueMovimentoPorProduto1Click(Sender: TObject);
    procedure Duplicatas1Click(Sender: TObject);
    procedure ConsultaNotasdeBeneficiamento1Click(Sender: TObject);
    procedure ConsultaPedido1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure InformarNotaInicial1Click(Sender: TObject);
    procedure ConsultaFaturamento1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure MarcadeProduto1Click(Sender: TObject);
    procedure ConsultaMateriaisTerceiros1Click(Sender: TObject);
    procedure BaixaPedidoManual1Click(Sender: TObject);
    procedure MovAtelier1Click(Sender: TObject);
    procedure PagamentoAtelier1Click(Sender: TObject);
    procedure ConsultaNotaCanceladaDenegada1Click(Sender: TObject);
    procedure DeParaCFOP1Click(Sender: TObject);
    procedure Inutilizarnumeraodenota1Click(Sender: TObject);
    procedure EmailsAdicionaisNFe1Click(Sender: TObject);
    procedure Manifesto1Click(Sender: TObject);
    procedure ConsultasManifestodosClientes1Click(Sender: TObject);
    procedure LocalEstoque1Click(Sender: TObject);
    procedure LanamentoExtrato1Click(Sender: TObject);
    procedure ConsultaPagamentoExtratoComisso1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure ConsultaPrevisoComisso1Click(Sender: TObject);
    procedure CompactareEnviarXML1Click(Sender: TObject);
    procedure Banco1Click(Sender: TObject);
    procedure CadastroOcorrnciaEspcieInstruo1Click(Sender: TObject);
    procedure Carteira1Click(Sender: TObject);
    procedure ConsultaCompras1Click(Sender: TObject);
    procedure RetornoCadastroOcorrnciaLiquidaoErros1Click(Sender: TObject);
    procedure RetornoTabelaRejeio1Click(Sender: TObject);
    procedure CadastroServios1Click(Sender: TObject);
    procedure ProvedorNFSe1Click(Sender: TObject);
    procedure Natureza1Click(Sender: TObject);
    procedure NotaServio1Click(Sender: TObject);
    procedure CadastroServiosInterno1Click(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure CentrosdeCusto1Click(Sender: TObject);
    procedure ContasOramento1Click(Sender: TObject);
    procedure OrdemdeCompra1Click(Sender: TObject);
    procedure ConsultaPedidoPorDatadeFaturamento1Click(Sender: TObject);
    procedure CadastroAtividadeMunicipio1Click(Sender: TObject);
    procedure ConsultaNotasEntradaSada1Click(Sender: TObject);
    procedure ConsultaOrdemdeCompra1Click(Sender: TObject);
    procedure BaixaOrdemdeCompraManual1Click(Sender: TObject);
    procedure estarnossonmero1Click(Sender: TObject);
    procedure Requisio1Click(Sender: TObject);
    procedure GerarMovimentoNotasFiscaisServio1Click(Sender: TObject);
    procedure ConsultaNotasServio1Click(Sender: TObject);
    procedure BaixaProduo1Click(Sender: TObject);
    procedure PedidoSimples1Click(Sender: TObject);
    procedure UserControl1AfterLogin(Sender: TObject);
    procedure amanho1Click(Sender: TObject);
    procedure Grade1Click(Sender: TObject);
    procedure OperaodaNota1Click(Sender: TObject);
    procedure Vale1Click(Sender: TObject);
    procedure GerarLote1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BaixaLoteTalo1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure Posio1Click(Sender: TObject);
    procedure PrevisesdeContas1Click(Sender: TObject);
    procedure GerarNotaServio1Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure ConsultaEstoqueClienteExtrato1Click(Sender: TObject);
    procedure Inventrio1Click(Sender: TObject);
    procedure BalanoEstoque1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure OrdemdeServioBaixa1Click(Sender: TObject);
    procedure OrdemdeServioConsulta1Click(Sender: TObject);
    procedure Mquinas1Click(Sender: TObject);
    procedure ipoMatriz1Click(Sender: TObject);
    procedure AtualizarPedido1Click(Sender: TObject);
    procedure ConsultaNova1Click(Sender: TObject);
    procedure Ferados1Click(Sender: TObject);
    procedure FeriadoFixo1Click(Sender: TObject);
    procedure MovFinanceiro1Click(Sender: TObject);
    procedure Saldodecontas1Click(Sender: TObject);
    procedure ContratoServio1Click(Sender: TObject);
    procedure CNAE1Click(Sender: TObject);
    procedure ContasPagarReceberPagamentos1Click(Sender: TObject);
    procedure abIBPT1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure GerarLoteCalado1Click(Sender: TObject);     
    procedure Rtulo1Click(Sender: TObject);
    procedure EDIConfigurao1Click(Sender: TObject);
    procedure ReceberPedidoEDI1Click(Sender: TObject);
    procedure abelaSimplesFaixaicms1Click(Sender: TObject);
    procedure Contabilista1Click(Sender: TObject);
    procedure ContasOramento2Click(Sender: TObject);
    procedure FluxodeCaixaPrevistoRealizado1Click(Sender: TObject);
    procedure ImportarExportarPedidoExcel1Click(Sender: TObject);
    procedure ObservaodaNotaFiscalLei1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure GerarXML1Click(Sender: TObject);
    procedure RtuloSemGrade1Click(Sender: TObject);
    procedure OrdemdeServioSimples1Click(Sender: TObject);
    procedure SaldoporFormadePagamento1Click(Sender: TObject);
    procedure ParmetrosOSSimples1Click(Sender: TObject);
    procedure RemessaNovo1Click(Sender: TObject);
    procedure RetornoNovoAcbr1Click(Sender: TObject);
    procedure CondiodePagamento2Click(Sender: TObject);
    procedure ransfernciaFinanceira1Click(Sender: TObject);
    procedure ConfiguraoEmail1Click(Sender: TObject);
    procedure EtiquetaIndividual1Click(Sender: TObject);
    procedure EtiquetaRtulo1Click(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure PedidosLiberadosParaFaturamento1Click(Sender: TObject);
    procedure ConsultaPeas1Click(Sender: TObject);
    procedure MatrizdePreo1Click(Sender: TObject);
    procedure ConsultaComissoPedido1Click(Sender: TObject);
    procedure Linha1Click(Sender: TObject);
    procedure ConsultaDespesas1Click(Sender: TObject);
    procedure CdigoBarra1Click(Sender: TObject);
    procedure MovimentoServioExtra1Click(Sender: TObject);
    procedure GradeConfiguraoQtde1Click(Sender: TObject);
    procedure Combinao1Click(Sender: TObject);
    procedure aloAuxiliarSadaRetorno1Click(Sender: TObject);
    procedure NecessidadedeComprasNovo1Click(Sender: TObject);
    procedure Minuta1Click(Sender: TObject);
    procedure MovAtelierCalados1Click(Sender: TObject);
    procedure PagamentoAtelierCalados1Click(Sender: TObject);
    procedure CobranaDescontada1Click(Sender: TObject);
    procedure CadastrodadescriodeValoresDescontada1Click(Sender: TObject);
    procedure Processos1Click(Sender: TObject);
    procedure ConsultaEstoquexProduo1Click(Sender: TObject);
    procedure ConsultaOP1Click(Sender: TObject);
    procedure AprovaodePedidos1Click(Sender: TObject);
    procedure ConsultaEstoqueLoteControle1Click(Sender: TObject);
    procedure EnquadramentoIPI1Click(Sender: TObject);
    procedure MetasdeVendas1Click(Sender: TObject);
    procedure ConsultasMetasPedidos1Click(Sender: TObject);
    procedure AjustePreoContrato1Click(Sender: TObject);
    procedure GrupoPessoa1Click(Sender: TObject);
    procedure Cadastro3Click(Sender: TObject);
    procedure tbPessoaClick(Sender: TObject);
    procedure ConsultaProdutosSemVendasPedidosnoPerodo1Click(
      Sender: TObject);
    procedure ConsultaEstoqueVeculoMovimento1Click(Sender: TObject);
    procedure ConsultaMaterialSemiAcabadoSemMovimentao1Click(
      Sender: TObject);
    procedure RtuloPorGrade1Click(Sender: TObject);
    procedure ConsultaPedidoProcesso1Click(Sender: TObject);
    procedure BalanoEstoqueVeculo1Click(Sender: TObject);
    procedure SPEDBlocoH1Click(Sender: TObject);
    procedure Utilitrios1Click(Sender: TObject);
    procedure tbProcessoClick(Sender: TObject);
    procedure OrdemServiotica1Click(Sender: TObject);
    procedure GerarIntegraoContbil1Click(Sender: TObject);
    procedure RegraCFOP1Click(Sender: TObject);
    procedure ConsultaPedidosAlteradosporSenha1Click(Sender: TObject);
    procedure ReciboNF1Click(Sender: TObject);
    procedure EnviarEmailCadastro1Click(Sender: TObject);
    procedure ManifestodeCargaRomaneiodeEndereo1Click(Sender: TObject);
    procedure GerarFCI1Click(Sender: TObject);
    procedure ConsultaEstoqueMedidaLoteControle1Click(Sender: TObject);
    procedure ImportarpeloExcel1Click(Sender: TObject);
    procedure GerarArquivoPerDCompNotaServio1Click(Sender: TObject);
    procedure Atividade1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultaPrazoMdioCReceber1Click(Sender: TObject);
    procedure ConfernciaSimplesSemcontroledofaturamento1Click(
      Sender: TObject);
    procedure GruposdeProcessos1Click(Sender: TObject);
    procedure PlanoContbil1Click(Sender: TObject);
    procedure ConsultaMapadeCompra1Click(Sender: TObject);
    procedure PlanoDRE1Click(Sender: TObject);
    procedure ConsultaFaturamento21Click(Sender: TObject);
    procedure ConsultaDRE1Click(Sender: TObject);
    procedure PagamentodeCarn1Click(Sender: TObject);
    procedure AtelierADefinir1Click(Sender: TObject);
    procedure ProgramaodePedidos1Click(Sender: TObject);
    procedure FuncionrioResumido1Click(Sender: TObject);
    procedure FuncionriosResumido1Click(Sender: TObject);
    procedure RelatrioAniversariantes1Click(Sender: TObject);
    procedure ExcluirPedidos1Click(Sender: TObject);
    procedure ConsultaMateriaisPorLote1Click(Sender: TObject);
    procedure ConsultaProdutoVlrCustoConsumo1Click(Sender: TObject);
    procedure ConsultaFrete1Click(Sender: TObject);
    procedure ConsultaMaterialParaCompras1Click(Sender: TObject);
    procedure ConsultaPedidoOramento1Click(Sender: TObject);
    procedure ConsultaEstoqueReserva1Click(Sender: TObject);
    procedure BaixarMaterialPorOrdemdeProduo1Click(Sender: TObject);
    procedure ipoMaterial1Click(Sender: TObject);
    procedure ConsultarMateriaPrimanoProduto1Click(Sender: TObject);
    procedure ConsultaOrdemdeProduoBaixaMaterial1Click(Sender: TObject);
    procedure LevantamentodeMateriais1Click(Sender: TObject);
    procedure BaixaPedidoPorProcesso1Click(Sender: TObject);
    procedure ConsultaPedidoProcessoMapa1Click(Sender: TObject);
    procedure DocumentodeEntradaNotaServioCTeTransporte1Click(
      Sender: TObject);
    procedure ipoMquina1Click(Sender: TObject);
    procedure ConsultaComprasServioCtaOramento1Click(Sender: TObject);
    procedure ConsultaRealizadoComprasxProjetadoFaturado1Click(
      Sender: TObject);
    procedure FuncionarioCompleto1Click(Sender: TObject);
    procedure ConsultaEstoqueAtual1Click(Sender: TObject);
    procedure BaixaNotadeBeneficiamento1Click(Sender: TObject);
  private
    { Private declarations }
    vPedLoja: Boolean;

    procedure prc_Habilita_Menu;
    procedure prc_Verifica_PedLoja;

    //ffrmCadPais: TfrmCadPais;
  public
    { Public declarations }
    vTipoPessoa: String;
    vPath: String;
    vTipo_Reg_Cons_Fat: String;
    vTipo_Reg_Pedido: String; //P=Pedido  C=Compras
    vVersao: String;

    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String = '');
    procedure GetBuildInfo(exeName: String; var V1, V2, V3, V4: word);
    function GetBuildInfoAsString: string;
    procedure gravaVersao(vVersao: String);
    procedure gravaModulos;
    procedure Le_Ini;
  end;

var
  fMenu: TfMenu;

implementation

uses DmdDatabase, uCadFilial, UCadNFe_Inutilizacao, uFrmSobre, UCadPais, UCadUF, UCadCidade, UCadNotaFiscal, UCadPercSimples,
  UCadPessoa, UCadProduto, UCadCondPgto, UCadNCM, UCadRegime_Trib, UCadOrigem_Prod, UCadParametros, UCadTipoCobranca, UCadCFOP,
  UCadCofins, UCadPis, UCadCSTIcms, UCadCSTIpi, UCadObs_Aux, UCadUnidade, UCadNotaEntrada, UCadContas, UCadNFe_Email, uCadVale,
  UCadPedido, URecebeXML, UCadOperacao_Nota, UCadRegra_Empresa, UConsEstoque, UCadDocEstoque, UConsEstoque_Mov, UCadDuplicata,
  UConsNotaBeneficiamento, UConsPedido, UCadTabPreco, UConsTabPreco, UCadOrcamento, UCadFinanceiro, UCadProxima_Nota, UConsOP,
  UConsFaturamento, UCadGrupo, UConsCalcMaterial_Terc, UBaixaPedido, uConsOC, UConsAtelier_Mov, UCadAtelier_Mov, UGerar_NFSe,
  UConsNotaCancelada, UCadDEPara_CFOP, UConsManifesto, UCadLocalEstoque, UCadExtComissao, UConsExtComissao, UCadFuncionario,
  UConsExtComissao_Prev, UCompactar_XML, UCadBanco, UCadCob_TipoCadastro, UCadCob_Carteira, UCadRet_Cadastro, UCadNotaServico,
  UCadContrato, UCadServico, UCadProvedor, UCadNatureza, UCadServico_Int, uCadCentroCusto, uCadPedidoSimples, uCadContaOrc,
  UConsPedido_Fat, UCadMarca, UCadAtividade_Cid, uCadSetor, UConsNotas_ES, UCadRequisicao, UCob_TestarNossoNum, UCadMaterial,
  UGerarMovimento, UConsNotas_SER, UCadRet_Tabela_Rej, uUtilPadrao, UCadTamanho, uCadGrade, UGerar_Lote, UBaixaLote, UDMUtil,
  UCadPosicao, UCadPrevisao, uCadCheque, uConsEstoque_Cli, UCadInventario, UConsEstoque_Bal, UCadOrdemServico, UCadFeriado,
  UBaixaOrdemServico, UConsOrdemServico, uCadMaquina, UCadTipo_Matriz, UAtualiza_Ped, USel_TabPreco, UCadFeriado_Fixo, uCadOC,
  uCobRetorno, UConsSaldo_Conta, UConsFinanceiro, uCadContratoServ, UConsDuplicata_Pag, UCadTab_IBPT, uConsFluxoCaixa, UCadCor,
  UGerar_Lote_Calc, UGerar_Rotulos, UCadLinha, UCadEDI_Config, UGerar_Pedido_EDI, UCadFaixa_Simples, UCadContabilista, UMinuta,
  UConsCtaOrcamento_Fin, UCDataInfo, uCobRemessa, UConsCtaOrcamento_Fin_Dt, ULeExcel, uCadCNAE, UCadObs_Lei, UCadPlano_Contas,
  UGerar_Necessidade_Compras, UGerar_Rotulos_SGrade, uCadOS_Simples, uCadOrdemServico_Param, UCadTransferencia, UCadConfig_Email,
  UEtiq_Individual, UEtiq_Rotulo, UCadRecibo, DmdDatabase_NFeBD, UConsPedido_Lib, UConsOrdemServico_Mat, UConsExtComissao_Ped,
  UCadMatriz_Preco, UConsDespesas, UCadCBarra, UCadMov_Servico_Extra, UCadQtdGrade, UCadCombinacao, UTalaoAux_ES, UCadEnqIPI,
  UGerarXML_NFe, UMov_Atelier, UConsExtrato_Atelier, UCadDescontada, UCadCadastro_Valores, UCadProduto2, UConsEstoque_Lote,
  UCadMetas_Vendedor, UConsMetas_Pedido, UAjuste_Contrato, UCadManifesto,uCadProcesso, UAprovacao_Ped, UConsEstoque_Producao,
  UConsProduto_Sem_Ped, UConsEstoque_Mov_Vei, UConsMaterial_Sem_Mov, UConsPedido_Proc, UCadRegra, UConsEstoque_Bal_Vei, uMenu1,
  uCadOS_Otica, UConsPedido_Senha, UCadRecNF, UEnviaEmailOBS, UConsEstoque_Medida, UManifesto, UCadAtividade, UCadGrupo_Pessoa,
  ULiberacao_Fat, USel_Produto, UConsPrazoMedio, UConferencia_Ped, UCadProcesso_Grupo, UCadPlano_Contabil, UConsMapaCompras,
  UCadAgenda, uCadPlano_DRE, UConsFat, UConsDRE, uCarnePgto, UCadAtelier_Fic, UCadPedidoLoja, UProgramacaoPedidos, uCadPessoaRed,
  uCadFuncionario_Res, UConsAniversario, UExcluirPed, UConsLoteMat, UConsProduto_Custo, UConsFrete, UConsMaterial_Nec, UConsPedido_Orc,
  UConsEstoque_Res, UBaixaMaterialOP, uCadTipo_Material, UConsMatPrima, UConsMaterialOP, UConsMaterial_Nec_Rem, uBaixaPedidoProc,
  uConsPedidoProcMapa, UCadDocEntrada, UCadTipoMaquina,
  UConsComprasOrcamento, UConsReal_Projetado, UConsEstoque_Atual, UBaixaNFDevolvida;

{$R *.dfm}

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String = '');
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;

  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass,existe);
    existe.FormStyle := fsMDIChild;
    if existe.Name = 'frmCadPessoa' then
      vTipoPessoa := TipoPessoa;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenu.Pais1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPais,wsMaximized);
end;

procedure TfMenu.UF1Click(Sender: TObject);
begin
  OpenForm(TfrmCadUF,wsMaximized);
end;

procedure TfMenu.Cidade1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCidade,wsMaximized);
end;

procedure TfMenu.NotaFiscalNFe1Click(Sender: TObject);
begin
  OpenForm(TfrmCadNotaFiscal,wsMaximized);
end;

procedure TfMenu.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfMenu.FormCreate(Sender: TObject);
//var
//  TaskBarH: THandle;
//  TaskBarR: TRect;
//  vDia, vMes, vAno: Word;
//  i: Integer;
begin
  UserControl1.Execute;

{   // obtem o retangulo com o taskbar
  TaskBarH := FindWindow('Shell_TrayWnd', nil);
  GetWindowRect(TaskBarH, TaskBarR);
  // altura do taskbar = TaskBarR.
  Image2.Top  := Height - (Screen.Height - TaskBarR.Top) - Image2.Height - 32;
  Image2.Left := Screen.Width - Image2.Width - 16;
}
  vVersao := GetBuildInfoAsString;
  if vVersao <> '0.0.0.0' then
  begin
    Caption := Caption + ' - v' + vVersao;
    {DecodeDate(Date,vAno,vMes,vDia);
    //aqui tirar depois
    case vDia of
      5,10,15,20,25,30: begin
                          gravaVersao(vVersao);  //enviar versão para banco Servisoft
                          gravaModulos;//verifica módulos no banco Servisoft
                        end;
    end;}
  end;

  /////controle de módulos
  DMUtil.cdsModulo.IndexFieldNames := 'NOME';
  DMUtil.cdsModulo.Open;
  Servios1.Visible     := not DMUtil.cdsModulo.FindKey(['SERVICOS']);
  tbOServico.Visible   := not DMUtil.cdsModulo.FindKey(['SERVICOS']);
  Compras1.Visible     := not DMUtil.cdsModulo.FindKey(['COMPRAS']);
  tbCompra.Visible     := not DMUtil.cdsModulo.FindKey(['COMPRAS']);
  tbManifesto.Visible  := not DMUtil.cdsModulo.FindKey(['FATURAMENTO']);
  Faturamento1.Visible := not DMUtil.cdsModulo.FindKey(['FATURAMENTO']);
  tbNotaFiscal.Visible := not DMUtil.cdsModulo.FindKey(['FATURAMENTO']);
  tbPedido.Visible     := not DMUtil.cdsModulo.FindKey(['FATURAMENTO']);
  Comisso1.Visible     := not DMUtil.cdsModulo.FindKey(['COMISSAO']);
  Financeiro1.Visible  := not DMUtil.cdsModulo.FindKey(['FINANCEIRO']);
  tbDuplicata.Visible  := not DMUtil.cdsModulo.FindKey(['FINANCEIRO']);
  PCP1.Visible         := not DMUtil.cdsModulo.FindKey(['PRODUCAO']);

  DMUtil.qParametros.Close;
  DMUtil.qParametros.Open;
end;

procedure TfMenu.EmpresaFiliais1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFilial,wsMaximized);
end;

procedure TfMenu.Produto1Click(Sender: TObject);
begin
  if DMUtil.qParametrosEMPRESA_LIVRARIA.AsString = 'S' then
    OpenForm(TfrmCadProduto2,wsMaximized)
  else
    OpenForm(TfrmCadProduto,wsMaximized);
end;

procedure TfMenu.CFOPNaturezadeOperao1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCFOP,wsMaximized);
end;

procedure TfMenu.NCM1Click(Sender: TObject);
begin
  OpenForm(TfrmCadNCM,wsMaximized);
end;

procedure TfMenu.Parmetros1Click(Sender: TObject);
begin
  OpenForm(TfrmCadParametros,wsMaximized);
end;

procedure TfMenu.PercentualSimples1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPercSimples,wsMaximized);
end;

procedure TfMenu.Cofins1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCofins,wsMaximized);
end;

procedure TfMenu.Pis1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPis,wsMaximized);
end;

procedure TfMenu.CSTICMS1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCSTIcms,wsMaximized);
end;

procedure TfMenu.CSTIpi1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCSTIpi,wsMaximized);
end;

procedure TfMenu.ObservaoAuxiliar1Click(Sender: TObject);
begin
  OpenForm(TfrmCadObs_Aux,wsMaximized);
end;

procedure TfMenu.UnidadedeMedida1Click(Sender: TObject);
begin
  OpenForm(TfrmCadUnidade,wsMaximized);
end;

procedure TfMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Encerrar o programa SSFácil?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    CanClose := False
  else
    CanClose := True;
end;

procedure TfMenu.Sobre1Click(Sender: TObject);
begin
  frmSobre := TfrmSobre.Create(Self);
  frmSobre.ShowModal;
end;

procedure TfMenu.RegimeTributrio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadRegime_Trib,wsMaximized);
end;

procedure TfMenu.OrigemProduto1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOrigem_Prod,wsNormal);
end;

procedure TfMenu.NotaEntrada1Click(Sender: TObject);
begin
  OpenForm(TfrmCadNotaEntrada,wsMaximized);
end;

procedure TfMenu.ContasBancos1Click(Sender: TObject);
begin
  OpenForm(TfrmCadContas,wsMaximized);
end;

procedure TfMenu.ipoCobrana1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTipoCobranca,wsMaximized);
end;

procedure TfMenu.PedidoComercial1Click(Sender: TObject);
begin
  //OpenForm(TfrmCadPedido,wsMaximized);
  if vPedLoja then
    OpenForm(TfrmCadPedidoLoja,wsMaximized)
  else
    OpenForm(TfrmCadPedido,wsMaximized);
end;

procedure TfMenu.ToolButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TfMenu.RecebeXML1Click(Sender: TObject);
begin
  vImportar_NotaSaida := False;
  OpenForm(TfrmRecebeXML,wsMaximized);
end;

procedure TfMenu.RegraEmpresa1Click(Sender: TObject);
begin
  OpenForm(TfrmCadRegra_Empresa,wsMaximized);
end;

procedure TfMenu.ConsultaEstoque1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque,wsMaximized);
end;

procedure TfMenu.DocumentoAjusteEstoque1Click(Sender: TObject);
begin
  OpenForm(TfrmCadDocEstoque,wsMaximized);
end;

procedure TfMenu.ConsultaEstoqueMovimentoPorProduto1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Mov,wsMaximized);
end;

procedure TfMenu.Duplicatas1Click(Sender: TObject);
begin
  OpenForm(TfrmCadDuplicata,wsMaximized);
end;

procedure TfMenu.ConsultaNotasdeBeneficiamento1Click(Sender: TObject);
begin
  OpenForm(TfrmConsNotaBeneficiamento,wsMaximized);
end;

procedure TfMenu.ConsultaPedido1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPedido,wsMaximized);
end;

procedure TfMenu.Cadastro2Click(Sender: TObject);
begin
  OpenForm(TfrmCadTabPreco,wsMaximized);
end;

procedure TfMenu.Consulta1Click(Sender: TObject);
begin
  OpenForm(TfrmConsTabPreco,wsMaximized);
end;

procedure TfMenu.Oramento1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOrcamento,wsMaximized);
end;

procedure TfMenu.InformarNotaInicial1Click(Sender: TObject);
begin
  OpenForm(TfrmCadProxima_Nota,wsMaximized);
end;

procedure TfMenu.ConsultaFaturamento1Click(Sender: TObject);
begin
  vTipo_Reg_Cons_Fat := 'NTS';
  OpenForm(TfrmConsFaturamento,wsMaximized);
end;

procedure TfMenu.Grupo1Click(Sender: TObject);
begin
  OpenForm(TfrmCadGrupo,wsMaximized);
end;

procedure TfMenu.MarcadeProduto1Click(Sender: TObject);
begin
  OpenForm(TfrmCadMarca,wsMaximized);
end;

procedure TfMenu.ConsultaMateriaisTerceiros1Click(Sender: TObject);
begin
  OpenForm(TfrmConsCalcMaterial_Terc,wsMaximized);
end;

procedure TfMenu.BaixaPedidoManual1Click(Sender: TObject);
begin
  vTipo_Reg_Pedido := 'P';
  vTipo_Baixa_Ped  := 'FAT';
  OpenForm(TfrmBaixaPedido,wsMaximized);
end;

procedure TfMenu.MovAtelier1Click(Sender: TObject);
begin
  OpenForm(TfrmConsAtelier_Mov,wsMaximized,'A');
end;

procedure TfMenu.PagamentoAtelier1Click(Sender: TObject);
begin
  OpenForm(TfrmCadAtelier_Mov,wsMaximized,'A');
end;

procedure TfMenu.ConsultaNotaCanceladaDenegada1Click(Sender: TObject);
begin
  OpenForm(TfrmConsNotaCancelada,wsMaximized);
end;

procedure TfMenu.DeParaCFOP1Click(Sender: TObject);
begin
  OpenForm(TfrmCadDEPara_CFOP,wsMaximized);
end;

procedure TfMenu.Inutilizarnumeraodenota1Click(Sender: TObject);
begin
  OpenForm(TfrmCadNFe_Inutilizacao,wsMaximized);
end;

procedure TfMenu.EmailsAdicionaisNFe1Click(Sender: TObject);
begin
  OpenForm(TfrmCadNFe_Email,wsMaximized);
end;

procedure TfMenu.Manifesto1Click(Sender: TObject);
begin
  OpenForm(TfrmManifesto,wsMaximized);
  //prc_ShellExecute('SSManifesto.exe');
end;

procedure TfMenu.ConsultasManifestodosClientes1Click(Sender: TObject);
begin
  OpenForm(TfrmConsManifesto,wsMaximized);
end;

procedure TfMenu.LocalEstoque1Click(Sender: TObject);
begin
  OpenForm(TfrmCadLocalEstoque,wsMaximized);
end;

procedure TfMenu.LanamentoExtrato1Click(Sender: TObject);
begin
  OpenForm(TfrmCadExtComissao,wsMaximized);
end;

procedure TfMenu.ConsultaPagamentoExtratoComisso1Click(Sender: TObject);
begin
  OpenForm(TfrmConsExtComissao,wsMaximized);
end;

procedure TfMenu.Agenda1Click(Sender: TObject);
begin
  OpenForm(TfrmCadAgenda,wsMaximized);
end;

procedure TfMenu.ConsultaPrevisoComisso1Click(Sender: TObject);
begin
  OpenForm(TfrmConsExtcomissao_Prev,wsMaximized);
end;

procedure TfMenu.CompactareEnviarXML1Click(Sender: TObject);
begin
  OpenForm(TfrmCompactar_XML,wsMaximized,'');
end;

procedure TfMenu.Banco1Click(Sender: TObject);
begin
  OpenForm(TfrmCadBanco,wsMaximized,'');
end;

procedure TfMenu.CadastroOcorrnciaEspcieInstruo1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCob_TipoCadastro,wsMaximized,'');
end;

procedure TfMenu.Carteira1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCob_Carteira,wsMaximized,'');
end;

procedure TfMenu.ConsultaCompras1Click(Sender: TObject);
begin
  vTipo_Reg_Cons_Fat := 'NTE';
  OpenForm(TfrmConsFaturamento,wsMaximized);
end;

procedure TfMenu.RetornoCadastroOcorrnciaLiquidaoErros1Click(
  Sender: TObject);
begin
  OpenForm(TfrmCadRet_Cadastro,wsMaximized);
end;

procedure TfMenu.RetornoTabelaRejeio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadRet_Tabela_Rej,wsMaximized);
end;

procedure TfMenu.CadastroServios1Click(Sender: TObject);
begin
  OpenForm(TfrmCadServico,wsMaximized);
end;

procedure TfMenu.ProvedorNFSe1Click(Sender: TObject);
begin
  OpenForm(TfrmCadProvedor,wsMaximized);
end;

procedure TfMenu.Natureza1Click(Sender: TObject);
begin
  OpenForm(TfrmCadNatureza,wsMaximized);
end;

procedure TfMenu.NotaServio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadNotaServico,wsMaximized);
end;

procedure TfMenu.CadastroServiosInterno1Click(Sender: TObject);
begin
  OpenForm(TfrmCadServico_Int,wsMaximized);
end;

procedure TfMenu.Setores1Click(Sender: TObject);
begin
  OpenForm(TfrmCadSetor,wsMaximized);
end;

procedure TfMenu.CentrosdeCusto1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCentroCusto,wsMaximized);
end;

procedure TfMenu.ContasOramento1Click(Sender: TObject);
begin
  OpenForm(TfrmCadContaOrc,wsMaximized);
end;

procedure TfMenu.OrdemdeCompra1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOC,wsMaximized);
end;

procedure TfMenu.ConsultaPedidoPorDatadeFaturamento1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPedido_Fat,wsMaximized);
end;

procedure TfMenu.CadastroAtividadeMunicipio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadAtividade_Cid,wsMaximized);
end;

procedure TfMenu.ConsultaNotasEntradaSada1Click(Sender: TObject);
begin
  OpenForm(TfrmConsNotas_ES,wsMaximized);
end;

procedure TfMenu.ConsultaOrdemdeCompra1Click(Sender: TObject);
begin
  OpenForm(TfrmConsOC,wsMaximized);
end;

procedure TfMenu.BaixaOrdemdeCompraManual1Click(Sender: TObject);
begin
  vTipo_Reg_Pedido := 'C';
  vTipo_Baixa_Ped  := 'COM';
  OpenForm(TfrmBaixaPedido,wsMaximized);
end;

procedure TfMenu.estarnossonmero1Click(Sender: TObject);
begin
  OpenForm(TfrmCob_TestarNossoNum,wsMaximized);
end;

procedure TfMenu.Requisio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadRequisicao,wsMaximized);
end;

procedure TfMenu.GerarMovimentoNotasFiscaisServio1Click(Sender: TObject);
begin
  OpenForm(TfrmGerarMovimento,wsMaximized);
end;

procedure TfMenu.ConsultaNotasServio1Click(Sender: TObject);
begin
  OpenForm(TfrmConsNotas_SER,wsMaximized);
end;

procedure TfMenu.BaixaProduo1Click(Sender: TObject);
begin
  vTipo_Reg_Pedido := 'P';
  vTipo_Baixa_Ped  := 'PRO';
  OpenForm(TfrmBaixaPedido,wsMaximized);
end;

procedure TfMenu.PedidoSimples1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPedidoSimples,wsMaximized);
end;

procedure TfMenu.GetBuildInfo(exeName: String; var V1, V2, V3, V4: word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(exeName), Dummy);
  if VerInfoSize > 0 then
  begin
    GetMem(VerInfo,VerInfoSize);
    try
      if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
      begin
        VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
        with VerValue^ do
        begin
          V1 := dwFileVersionMS shr 16;
          V2 := dwFileVersionMS and $FFFF;
          V3 := dwFileVersionLS shr 16;
          V4 := dwFileVersionLS and $FFFF;
        end;
      end;
    finally
      FreeMem(VerInfo,VerInfoSize);
    end;
  end;
end;

function TfMenu.GetBuildInfoAsString: string;
var
  V1, V2, V3, V4: word;
begin
  GetBuildInfo(GetCurrentDir + '\SSFacil.EXE', V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' +
    IntToStr(V3) + '.' + IntToStr(V4);
end;

procedure TfMenu.gravaVersao(vVersao: String);
var
  Config: TIniFile;
begin
  //if dmDatabase.sqEmpresaDT_VERSAO.AsDateTime = Date then
    //Exit;
  Config := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  dmDatabase.scoLiberacao.Params.Values['DRIVERNAME'] := 'INTERBASE';
  dmDatabase.scoLiberacao.Params.Values['SQLDIALECT'] := '3';
  dmDatabase.scoLiberacao.Params.Values['DATABASE']   := Config.ReadString('Liberacao', 'DATABASE', '');
  dmDatabase.scoLiberacao.Params.Values['USER_NAME']  := Config.ReadString('Liberacao', 'USERNAME', '');
  dmDatabase.scoLiberacao.Params.Values['PASSWORD']   := dmDatabase.Decoder64.DecodeString(Config.ReadString('Liberacao', 'PASSWORD', ''));
  dmDatabase.scoLiberacao.Connected := True;
  dmDatabase.scoLiberacao.Connected := True;
  dmDatabase.sdsExecRemoto.CommandText := 'UPDATE PESSOA SET VERSAO_EXE = ' + QuotedStr(vVersao) +
                                          ' WHERE DOCUMENTO = ' + QuotedStr(dmDatabase.sqEmpresaCNPJ_CPF.AsString);
  dmDatabase.sdsExecRemoto.ExecSQL(True);

  //dmDatabase.sdsExec.CommandText := 'UPDATE FILIAL SET DT_VERSAO = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) +
  //                                  ' WHERE PRINCIPAL = ''S''';
  //dmDatabase.sdsExec.ExecSQL(True);
end;

procedure TfMenu.UserControl1AfterLogin(Sender: TObject);
begin
  prc_Habilita_Menu;
end;

procedure TfMenu.amanho1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTamanho,wsMaximized);
end;

procedure TfMenu.Grade1Click(Sender: TObject);
begin
  OpenForm(TfrmCadGrade,wsMaximized);
end;

procedure TfMenu.OperaodaNota1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOperacao_Nota,wsMaximized);
end;

procedure TfMenu.Vale1Click(Sender: TObject);
begin
  OpenForm(TfrmCadVale,wsMaximized);
end;

procedure TfMenu.GerarLote1Click(Sender: TObject);
begin
  OpenForm(TfrmGerar_Lote,wsMaximized);
end;

procedure TfMenu.FormShow(Sender: TObject);
begin
  prc_Habilita_Menu;
  prc_Verifica_PedLoja;
  Le_Ini;
end;

procedure TfMenu.BaixaLoteTalo1Click(Sender: TObject);
begin
  OpenForm(TfrmBaixaLote,wsMaximized);
end;

procedure TfMenu.Contrato1Click(Sender: TObject);
begin
  OpenForm(TfrmCadContrato,wsMaximized);
end;

procedure TfMenu.gravaModulos;
begin
  DMUtil.cdsModulo.Open;
  DMUtil.cdsModulo.EmptyDataSet;
  dmDatabase.cdsModuloRemoto.Open;
  while not dmDatabase.cdsModuloRemoto.Eof do
  begin
    DMUtil.cdsModulo.Insert;
    DMUtil.cdsModuloID.AsInteger  := dmDatabase.cdsModuloRemotoMODULO_ID.AsInteger;
    DMUtil.cdsModuloNOME.AsString := dmDatabase.cdsModuloRemotoMODULO_NOME.AsString;
    DMUtil.cdsModulo.Post;
  end;
  DMUtil.cdsModulo.ApplyUpdates(0);
  DMUtil.cdsModulo.Close;
end;

procedure TfMenu.Posio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPosicao,wsMaximized);
end;

procedure TfMenu.PrevisesdeContas1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPrevisao,wsMaximized);
end;

procedure TfMenu.GerarNotaServio1Click(Sender: TObject);
begin
  OpenForm(TfrmGerar_NFSe,wsMaximized);
end;

procedure TfMenu.Cheques1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCheque,wsMaximized);
end;

procedure TfMenu.ConsultaEstoqueClienteExtrato1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Cli,wsMaximized);
end;

procedure TfMenu.Inventrio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadInventario,wsMaximized);
end;

procedure TfMenu.BalanoEstoque1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Bal,wsMaximized);
end;

procedure TfMenu.OrdemdeServio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOrdemServico,wsMaximized);
end;

procedure TfMenu.OrdemdeServioBaixa1Click(Sender: TObject);
begin
  OpenForm(TfrmBaixaOrdemServico,wsMaximized);
end;

procedure TfMenu.OrdemdeServioConsulta1Click(Sender: TObject);
begin
  OpenForm(TfrmConsOrdemServico,wsMaximized);
end;

procedure TfMenu.Mquinas1Click(Sender: TObject);
begin
  OpenForm(TfrmCadMaquina,wsMaximized);
end;

procedure TfMenu.ipoMatriz1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTipo_Matriz,wsMaximized);
end;

procedure TfMenu.AtualizarPedido1Click(Sender: TObject);
begin
  OpenForm(TfrmAtualiza_Ped,wsMaximized);
end;

procedure TfMenu.ConsultaNova1Click(Sender: TObject);
begin
  OpenForm(TfrmSel_TabPreco,wsMaximized);
end;

procedure TfMenu.Ferados1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFeriado,wsMaximized);
end;

procedure TfMenu.FeriadoFixo1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFeriado_Fixo,wsMaximized);
end;

procedure TfMenu.MovFinanceiro1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFinanceiro,wsMaximized);
end;

procedure TfMenu.Saldodecontas1Click(Sender: TObject);
begin
  OpenForm(TfrmConsSaldo_Conta,wsMaximized);
end;

procedure TfMenu.ContratoServio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadContratoServ,wsMaximized);
end;

procedure TfMenu.CNAE1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCNAE,wsMaximized);
end;

procedure TfMenu.ContasPagarReceberPagamentos1Click(Sender: TObject);
begin
  OpenForm(TfrmConsDuplicata_Pag,wsMaximized);
end;

procedure TfMenu.abIBPT1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTab_IBPT,wsMaximized);
end;

procedure TfMenu.FluxodeCaixa1Click(Sender: TObject);
begin
  OpenForm(TfrmConsFluxoCaixa,wsMaximized);
end;

procedure TfMenu.GerarLoteCalado1Click(Sender: TObject);
begin
  OpenForm(TfrmGerar_Lote_Calc,wsMaximized);
end;

procedure TfMenu.Rtulo1Click(Sender: TObject);
begin
  vTipo_Imp_Rotulo := '';
  OpenForm(TfrmGerar_Rotulos,wsMaximized);
end;

procedure TfMenu.EDIConfigurao1Click(Sender: TObject);
begin
  OpenForm(TfrmCadEDI_Config,wsMaximized);
end;

procedure TfMenu.ReceberPedidoEDI1Click(Sender: TObject);
begin
  OpenForm(TfrmGerar_Pedido_EDI,wsMaximized);
end;

procedure TfMenu.abelaSimplesFaixaicms1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFaixa_Simples,wsMaximized);
end;

procedure TfMenu.Contabilista1Click(Sender: TObject);
begin
  OpenForm(TfrmCadContabilista,wsMaximized);
end;

procedure TfMenu.ContasOramento2Click(Sender: TObject);
begin
  OpenForm(TfrmConsCtaOrcamento_Fin,wsMaximized);
end;

procedure TfMenu.FluxodeCaixaPrevistoRealizado1Click(Sender: TObject);
begin
  OpenForm(TfrmConsCtaOrcamento_Fin_Dt,wsMaximized);
end;

procedure TfMenu.ImportarExportarPedidoExcel1Click(Sender: TObject);
begin
  OpenForm(TfrmLeExcel,wsMaximized);
end;

procedure TfMenu.ObservaodaNotaFiscalLei1Click(Sender: TObject);
begin
  OpenForm(TfrmCadObs_Lei,wsMaximized);
end;

procedure TfMenu.PlanodeContas1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPlano_Contas,wsMaximized);
end;

procedure TfMenu.GerarXML1Click(Sender: TObject);
begin
  OpenForm(TfrmGerarXML_NFe,wsMaximized);
end;

procedure TfMenu.prc_Habilita_Menu;
var
  i: Integer;
begin
  for i := 0 to self.Menu.Items.Count - 1  do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to self.Menu.Items.Count - 1  do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if Components[i] is TMenuItem then
      TMenuItem(Self.Components[i]).Visible := TMenuItem(Self.Components[i]).Enabled;
  end;
  tbDuplicata.Visible  := Duplicatas1.Visible;
  tbManifesto.Visible  := Manifesto1.Visible;
  tbCompra.Visible     := RecebeXML1.Visible;
  tbNotaFiscal.Visible := NotaFiscalNFe1.Visible;
  tbOServico.Visible   := OrdemdeServio1.Visible;
  tbPedido.Visible     := PedidoComercial1.Visible;
  tbProduto.Visible    := Produto1.Visible;
  tbPessoa.Visible     := Pessoa1.Visible;
  tbProcesso.Visible   := ConsultaPedidoProcesso1.Visible;

  vUsuario := UserControl1.CurrentUser.LoginName;
end;

procedure TfMenu.RtuloSemGrade1Click(Sender: TObject);
begin
  OpenForm(TfrmGerar_Rotulos_SGrade,wsMaximized);
end;

procedure TfMenu.OrdemdeServioSimples1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOS_Simples,wsMaximized);
end;

procedure TfMenu.SaldoporFormadePagamento1Click(Sender: TObject);
begin
  OpenForm(TfrmConsFinanceiro,wsMaximized);
end;

procedure TfMenu.ParmetrosOSSimples1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOrdemServico_Param,wsMaximized);
end;

procedure TfMenu.RemessaNovo1Click(Sender: TObject);
begin
  OpenForm(TfCobRemessa,wsMaximized);
end;

procedure TfMenu.RetornoNovoAcbr1Click(Sender: TObject);
begin
  OpenForm(TfCobRetorno,wsMaximized);
end;

procedure TfMenu.CondiodePagamento2Click(Sender: TObject);
begin
  OpenForm(TfrmCadCondPgto,wsMaximized);
end;

procedure TfMenu.ransfernciaFinanceira1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTransferencia,wsMaximized);
end;

procedure TfMenu.ConfiguraoEmail1Click(Sender: TObject);
begin
  OpenForm(TfrmCadConfig_Email,wsMaximized);
end;

procedure TfMenu.EtiquetaIndividual1Click(Sender: TObject);
begin
  OpenForm(TfrmEtiq_Individual,wsMaximized);
end;

procedure TfMenu.EtiquetaRtulo1Click(Sender: TObject);
begin
  OpenForm(TfrmEtiq_Rotulo,wsMaximized);
end;

procedure TfMenu.Recibo1Click(Sender: TObject);
begin
  OpenForm(TfrmCadRecibo,wsMaximized);
end;

procedure TfMenu.Cores1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCor,wsMaximized);
end;

procedure TfMenu.PedidosLiberadosParaFaturamento1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPedido_Lib,wsMaximized);
end;

procedure TfMenu.ConsultaPeas1Click(Sender: TObject);
begin
  OpenForm(TfrmConsOrdemServico_Mat,wsMaximized);
end;

procedure TfMenu.MatrizdePreo1Click(Sender: TObject);
begin
  OpenForm(TfrmCadMatriz_Preco,wsMaximized);
end;

procedure TfMenu.ConsultaComissoPedido1Click(Sender: TObject);
begin
  OpenForm(TfrmConsExtComissao_Ped,wsMaximized);
end;

procedure TfMenu.Linha1Click(Sender: TObject);
begin
  OpenForm(TfrmCadLinha,wsMaximized);
end;

procedure TfMenu.ConsultaDespesas1Click(Sender: TObject);
begin
  OpenForm(TfrmConsDespesas,wsMaximized);
end;

procedure TfMenu.CdigoBarra1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCBarra,wsMaximized);
end;

procedure TfMenu.MovimentoServioExtra1Click(Sender: TObject);
begin
  OpenForm(TfrmCadMov_Servico_Extra,wsMaximized);
end;

procedure TfMenu.GradeConfiguraoQtde1Click(Sender: TObject);
begin
  OpenForm(TfrmCadQtdGrade,wsMaximized);
end;

procedure TfMenu.Combinao1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCombinacao,wsMaximized);
end;

procedure TfMenu.aloAuxiliarSadaRetorno1Click(Sender: TObject);
begin
  OpenForm(TfrmTalaoAux_ES,wsMaximized);
end;

procedure TfMenu.NecessidadedeComprasNovo1Click(Sender: TObject);
begin
  OpenForm(TfrmGerar_Necessidade_Compras,wsMaximized);
end;

procedure TfMenu.Minuta1Click(Sender: TObject);
begin
  OpenForm(TfrmMinuta,wsMaximized);
end;

procedure TfMenu.MovAtelierCalados1Click(Sender: TObject);
begin
  OpenForm(TfrmMov_Atelier,wsMaximized);
end;

procedure TfMenu.PagamentoAtelierCalados1Click(Sender: TObject);
begin
  OpenForm(TfrmConsExtrato_Atelier,wsMaximized);
end;

procedure TfMenu.CobranaDescontada1Click(Sender: TObject);
begin
  OpenForm(TfrmCadDescontada,wsMaximized);
end;

procedure TfMenu.CadastrodadescriodeValoresDescontada1Click(
  Sender: TObject);
begin
  OpenForm(TfrmCadCadastro_Valores,wsMaximized);
end;

procedure TfMenu.Processos1Click(Sender: TObject);
begin
  OpenForm(TfrmCadProcesso,wsMaximized);
end;

procedure TfMenu.ConsultaEstoquexProduo1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Producao,wsMaximized);
end;

procedure TfMenu.ConsultaOP1Click(Sender: TObject);
begin
  OpenForm(TfrmConsOP,wsMaximized);
end;

procedure TfMenu.AprovaodePedidos1Click(Sender: TObject);
begin
  OpenForm(TfrmAprovacao_Ped,wsMaximized);
end;

procedure TfMenu.ConsultaEstoqueLoteControle1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Lote,wsMaximized);
end;

procedure TfMenu.EnquadramentoIPI1Click(Sender: TObject);
begin
  OpenForm(TfrmCadEnqIPI,wsMaximized);
end;

procedure TfMenu.MetasdeVendas1Click(Sender: TObject);
begin
  OpenForm(TfrmCadMetas_Vendedor,wsMaximized);
end;

procedure TfMenu.ConsultasMetasPedidos1Click(Sender: TObject);
begin
  OpenForm(TfrmConsMetas_Pedido,wsMaximized);
end;

procedure TfMenu.AjustePreoContrato1Click(Sender: TObject);
begin
  OpenForm(TfrmAjuste_Contrato,wsMaximized);
end;

procedure TfMenu.GrupoPessoa1Click(Sender: TObject);
begin
  OpenForm(TfrmCadGrupo_Pessoa,wsMaximized,'');
end;

procedure TfMenu.Cadastro3Click(Sender: TObject);
begin
  OpenForm(TfrmCadPessoa,wsMaximized,'');
end;

procedure TfMenu.tbPessoaClick(Sender: TObject);
begin
  DMUtil.qParametros_Usuario.Close;
  DMUtil.qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  DMUtil.qParametros_Usuario.Open;
  if DMUtil.qParametros_UsuarioUTILIZA_PESSOA_REDUZIDO.AsString = 'S' then
    OpenForm(TfrmCadPessoaRed,wsMaximized,'')
  else
    OpenForm(TfrmCadPessoa,wsMaximized,'');
end;

procedure TfMenu.ConsultaProdutosSemVendasPedidosnoPerodo1Click(
  Sender: TObject);
begin
  OpenForm(TfrmConsProduto_Sem_Ped,wsMaximized,'');
end;

procedure TfMenu.ConsultaEstoqueVeculoMovimento1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Mov_Vei,wsMaximized,'');
end;

procedure TfMenu.ConsultaMaterialSemiAcabadoSemMovimentao1Click(
  Sender: TObject);
begin
  OpenForm(TfrmConsMaterial_Sem_Mov,wsMaximized,'');
end;

procedure TfMenu.RtuloPorGrade1Click(Sender: TObject);
begin
  vTipo_Imp_Rotulo := 'T';
  OpenForm(TfrmGerar_Rotulos,wsMaximized);
end;

procedure TfMenu.ConsultaPedidoProcesso1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPedido_Proc,wsMaximized);
end;

procedure TfMenu.BalanoEstoqueVeculo1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Bal_Vei,wsMaximized);
end;

procedure TfMenu.SPEDBlocoH1Click(Sender: TObject);
begin
  prc_ShellExecute('SS_SPED.exe');
end;

procedure TfMenu.Utilitrios1Click(Sender: TObject);
begin
  prc_ShellExecute('SSUtilitarios.exe');
end;

procedure TfMenu.tbProcessoClick(Sender: TObject);
begin
  OpenForm(TfrmConsPedido_Proc,wsMaximized);
end;

procedure TfMenu.OrdemServiotica1Click(Sender: TObject);
begin
  OpenForm(TfrmCadOS_Otica,wsMaximized);
end;

procedure TfMenu.GerarIntegraoContbil1Click(Sender: TObject);
begin
  prc_ShellExecute('SSIntegracao.exe');
end;

procedure TfMenu.RegraCFOP1Click(Sender: TObject);
begin
  OpenForm(TfrmCadRegra,wsMaximized);
end;

procedure TfMenu.ConsultaPedidosAlteradosporSenha1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPedido_Senha,wsMaximized);
end;

procedure TfMenu.ReciboNF1Click(Sender: TObject);
begin
  OpenForm(TfrmCadRecNF,wsMaximized);
end;

procedure TfMenu.EnviarEmailCadastro1Click(Sender: TObject);
begin
  OpenForm(TfrmEnviaEmailOBS,wsMaximized);
end;

procedure TfMenu.ManifestodeCargaRomaneiodeEndereo1Click(Sender: TObject);
begin
  OpenForm(TfrmCadManifesto,wsMaximized);
end;

procedure TfMenu.GerarFCI1Click(Sender: TObject);
begin
  prc_ShellExecute('SSFCI.exe');
end;

procedure TfMenu.ConsultaEstoqueMedidaLoteControle1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Medida,wsMaximized);
end;

procedure TfMenu.ImportarpeloExcel1Click(Sender: TObject);
begin
  prc_ShellExecute('SSImportar.exe');
end;

procedure TfMenu.GerarArquivoPerDCompNotaServio1Click(Sender: TObject);
begin
  prc_ShellExecute('SSGerar_PerdComp.exe');
end;

procedure TfMenu.Atividade1Click(Sender: TObject);
begin
  OpenForm(TfrmCadAtividade,wsMaximized);
end;

procedure TfMenu.Clientes1Click(Sender: TObject);
begin
  OpenForm(TfrmLiberacao_Fat,wsMaximized);
end;

procedure TfMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmSel_Produto: TfrmSel_Produto;
begin
  if (Key = Vk_F2) then
  begin
    ffrmSel_Produto := TfrmSel_Produto.Create(Self);
    ffrmSel_Produto.ShowModal;
    FreeAndNil(ffrmSel_Produto);
  end;
end;

procedure TfMenu.ConsultaPrazoMdioCReceber1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPrazoMedio,wsMaximized);
end;

procedure TfMenu.Le_Ini;
var
  vImpressora, vTerm: String;
  ini: TIniFile;
begin
  ini := TIniFile.Create('C:\$Servisoft\Impressora.ini');
  try
    vImpressora := '';
    vPorta      := '';
    vImpressora := ini.ReadString('IMPRESSORA','Impressora','');
    vPorta      := ini.ReadString('IMPRESSORA','Porta','');
    vVelocidade := ini.ReadString('IMPRESSORA','Boud','');
    if ini.ReadString('IMPRESSORA','Gaveta','') = 'N' then
      vUsaGaveta := False
    else
      vUsaGaveta := True;

    vTerm := ini.ReadString('IMPRESSORA','Terminal','');
    if trim(vTerm) = '' then
      vTerminal := 0
    else
      vTerminal := StrToInt(vTerm);

    vPortaBalanca := ini.ReadString('BALANCA','Porta','');

  finally
    ini.Free;
  end;
end;

procedure TfMenu.ConfernciaSimplesSemcontroledofaturamento1Click(
  Sender: TObject);
begin
  OpenForm(TfrmConferencia_Ped,wsMaximized);
end;

procedure TfMenu.GruposdeProcessos1Click(Sender: TObject);
begin
  OpenForm(TfrmCadProcesso_Grupo,wsMaximized);
end;

procedure TfMenu.PlanoContbil1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPlano_Contabil,wsMaximized);
end;

procedure TfMenu.ConsultaMapadeCompra1Click(Sender: TObject);
begin
  OpenForm(TfrmConsMapaCompras,wsMaximized);
end;

procedure TfMenu.PlanoDRE1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPlano_DRE,wsMaximized);
end;

procedure TfMenu.ConsultaFaturamento21Click(Sender: TObject);
begin
  OpenForm(TfrmConsFat,wsMaximized);
end;

procedure TfMenu.ConsultaDRE1Click(Sender: TObject);
begin
  OpenForm(TfrmConsDRE,wsMaximized);
end;

procedure TfMenu.PagamentodeCarn1Click(Sender: TObject);
begin
  OpenForm(TfCarnePgto,wsMaximized);
end;

procedure TfMenu.AtelierADefinir1Click(Sender: TObject);
begin
  OpenForm(TfrmCadAtelier_Fic,wsMaximized);
end;

procedure TfMenu.ProgramaodePedidos1Click(Sender: TObject);
begin
  OpenForm(TfrmProgamacaoPedidos,wsMaximized);
end;

procedure TfMenu.prc_Verifica_PedLoja;
var
  sds: TSQLDataSet;
begin
  vPedLoja := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT PEDIDO_LOJA FROM PARAMETROS_PED ';
    sds.Open;
    if sds.FieldByName('PEDIDO_LOJA').AsString = 'S' then
      vPedLoja := True;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfMenu.FuncionrioResumido1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFuncionario_Res,wsMaximized);
end;

procedure TfMenu.FuncionriosResumido1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFuncionario_Res,wsMaximized);
end;

procedure TfMenu.RelatrioAniversariantes1Click(Sender: TObject);
begin
  OpenForm(TfrmConsAniversario,wsMaximized);
end;

procedure TfMenu.ExcluirPedidos1Click(Sender: TObject);
begin
  OpenForm(TfrmExcluirPed,wsMaximized);
end;

procedure TfMenu.ConsultaMateriaisPorLote1Click(Sender: TObject);
begin
  OpenForm(TfrmConsLoteMat,wsMaximized);
end;

procedure TfMenu.ConsultaProdutoVlrCustoConsumo1Click(Sender: TObject);
begin
  OpenForm(TfrmConsProduto_Custo,wsMaximized);
end;

procedure TfMenu.ConsultaFrete1Click(Sender: TObject);
begin
  OpenForm(TfrmConsFrete,wsMaximized);
end;

procedure TfMenu.ConsultaMaterialParaCompras1Click(Sender: TObject);
begin
  OpenForm(TfrmConsMaterial_Nec,wsMaximized);
end;

procedure TfMenu.ConsultaPedidoOramento1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPedido_Orc, wsMaximized);
end;

procedure TfMenu.ConsultaEstoqueReserva1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Res, wsMaximized);
end;

procedure TfMenu.BaixarMaterialPorOrdemdeProduo1Click(Sender: TObject);
begin
  OpenForm(TfrmBaixa_Material_OP, wsMaximized);
end;

procedure TfMenu.ipoMaterial1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTipo_Material, wsMaximized);
end;

procedure TfMenu.ConsultarMateriaPrimanoProduto1Click(Sender: TObject);
begin
  OpenForm(TfrmConsMatPrima, wsMaximized);
end;

procedure TfMenu.ConsultaOrdemdeProduoBaixaMaterial1Click(Sender: TObject);
begin
  OpenForm(TfrmConsMaterialOP, wsMaximized);
end;

procedure TfMenu.LevantamentodeMateriais1Click(Sender: TObject);
begin
  OpenForm(TfrmConsMaterial_Nec_Rem, wsMaximized);
end;

procedure TfMenu.BaixaPedidoPorProcesso1Click(Sender: TObject);
begin
  OpenForm(TfrmBaixaPedidoProc, wsMaximized);
end;

procedure TfMenu.ConsultaPedidoProcessoMapa1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPedidoProcMapa, wsMaximized);
end;

procedure TfMenu.DocumentodeEntradaNotaServioCTeTransporte1Click(
  Sender: TObject);
begin
  OpenForm(TfrmCadDocEntrada, wsMaximized);
end;

procedure TfMenu.ipoMquina1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTipoMaquina, wsMaximized);
end;

procedure TfMenu.ConsultaComprasServioCtaOramento1Click(Sender: TObject);
begin
  OpenForm(TfrmConsComprasServico, wsMaximized);
end;

procedure TfMenu.ConsultaRealizadoComprasxProjetadoFaturado1Click(
  Sender: TObject);
begin
  OpenForm(TfrmConsReal_Projetado, wsMaximized);
end;

procedure TfMenu.FuncionarioCompleto1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFuncionario,wsMaximized);
end;

procedure TfMenu.ConsultaEstoqueAtual1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque_Atual,wsMaximized);
end;

procedure TfMenu.BaixaNotadeBeneficiamento1Click(Sender: TObject);
begin
  OpenForm(TfrmBaixaNFDevolvida,wsMaximized);
end;

initialization
  RLConsts.SetVersion(3,72,'B');

end.
