unit UDMMovimento;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, Dialogs, Printers, Graphics;

type
  TDMMovimento = class(TDataModule)
    sdsMovimento: TSQLDataSet;
    dspMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
    dsMovimento: TDataSource;
    sdsMovimentoID: TIntegerField;
    sdsMovimentoITEM: TIntegerField;
    sdsMovimentoTIPO_REG: TStringField;
    sdsMovimentoID_PRODUTO: TIntegerField;
    sdsMovimentoID_SERVICO: TIntegerField;
    sdsMovimentoID_NOTAFISCAL: TIntegerField;
    sdsMovimentoID_NOTASERVICO: TIntegerField;
    sdsMovimentoID_CUPOMFISCAL: TIntegerField;
    sdsMovimentoID_CFOP: TIntegerField;
    sdsMovimentoID_PESSOA: TIntegerField;
    sdsMovimentoVLR_UNITARIO: TFloatField;
    sdsMovimentoVLR_TOTAL: TFloatField;
    sdsMovimentoVLR_DESCONTO: TFloatField;
    sdsMovimentoVLR_FRETE: TFloatField;
    sdsMovimentoVLR_ICMS: TFloatField;
    sdsMovimentoVLR_ICMSSUBST: TFloatField;
    sdsMovimentoVLR_ICMSSIMPLES: TFloatField;
    sdsMovimentoVLR_ISSQN: TFloatField;
    sdsMovimentoVLR_IR: TFloatField;
    sdsMovimentoVLR_IPI: TFloatField;
    sdsMovimentoVLR_INSS: TFloatField;
    sdsMovimentoVLR_PIS: TFloatField;
    sdsMovimentoVLR_COFINS: TFloatField;
    sdsMovimentoVLR_DUPLICATA: TFloatField;
    sdsMovimentoVLR_CSLL: TFloatField;
    sdsMovimentoVLR_IMPORTACAO: TFloatField;
    sdsMovimentoVLR_SEGURO: TFloatField;
    sdsMovimentoVLR_OUTRASDESPESAS: TFloatField;
    sdsMovimentoBASE_INSS: TFloatField;
    sdsMovimentoBASE_ISSQN: TFloatField;
    sdsMovimentoBASE_ICMS: TFloatField;
    sdsMovimentoBASE_ICMSSIMPLES: TFloatField;
    sdsMovimentoBASE_ICMSSUBST: TFloatField;
    sdsMovimentoFILIAL: TIntegerField;
    sdsMovimentoCANCELADO: TStringField;
    sdsMovimentoDENEGADA: TStringField;
    sdsMovimentoDTEMISSAO: TDateField;
    sdsMovimentoDTENTRADASAIDA: TDateField;
    cdsMovimentoID: TIntegerField;
    cdsMovimentoITEM: TIntegerField;
    cdsMovimentoTIPO_REG: TStringField;
    cdsMovimentoID_PRODUTO: TIntegerField;
    cdsMovimentoID_SERVICO: TIntegerField;
    cdsMovimentoID_NOTAFISCAL: TIntegerField;
    cdsMovimentoID_NOTASERVICO: TIntegerField;
    cdsMovimentoID_CUPOMFISCAL: TIntegerField;
    cdsMovimentoID_CFOP: TIntegerField;
    cdsMovimentoID_PESSOA: TIntegerField;
    cdsMovimentoVLR_UNITARIO: TFloatField;
    cdsMovimentoVLR_TOTAL: TFloatField;
    cdsMovimentoVLR_DESCONTO: TFloatField;
    cdsMovimentoVLR_FRETE: TFloatField;
    cdsMovimentoVLR_ICMS: TFloatField;
    cdsMovimentoVLR_ICMSSUBST: TFloatField;
    cdsMovimentoVLR_ICMSSIMPLES: TFloatField;
    cdsMovimentoVLR_ISSQN: TFloatField;
    cdsMovimentoVLR_IR: TFloatField;
    cdsMovimentoVLR_IPI: TFloatField;
    cdsMovimentoVLR_INSS: TFloatField;
    cdsMovimentoVLR_PIS: TFloatField;
    cdsMovimentoVLR_COFINS: TFloatField;
    cdsMovimentoVLR_DUPLICATA: TFloatField;
    cdsMovimentoVLR_CSLL: TFloatField;
    cdsMovimentoVLR_IMPORTACAO: TFloatField;
    cdsMovimentoVLR_SEGURO: TFloatField;
    cdsMovimentoVLR_OUTRASDESPESAS: TFloatField;
    cdsMovimentoBASE_INSS: TFloatField;
    cdsMovimentoBASE_ISSQN: TFloatField;
    cdsMovimentoBASE_ICMS: TFloatField;
    cdsMovimentoBASE_ICMSSIMPLES: TFloatField;
    cdsMovimentoBASE_ICMSSUBST: TFloatField;
    cdsMovimentoFILIAL: TIntegerField;
    cdsMovimentoCANCELADO: TStringField;
    cdsMovimentoDENEGADA: TStringField;
    cdsMovimentoDTEMISSAO: TDateField;
    cdsMovimentoDTENTRADASAIDA: TDateField;
    sdsMovimentoID_SERVICO_INT: TIntegerField;
    sdsMovimentoID_CLIENTETRIANG: TIntegerField;
    cdsMovimentoID_SERVICO_INT: TIntegerField;
    cdsMovimentoID_CLIENTETRIANG: TIntegerField;
    sdsMovimentoVLR_ADUANEIRA: TFloatField;
    cdsMovimentoVLR_ADUANEIRA: TFloatField;
    sdsMovimentoSERIE: TStringField;
    sdsMovimentoNUM_NOTA: TIntegerField;
    cdsMovimentoSERIE: TStringField;
    cdsMovimentoNUM_NOTA: TIntegerField;
    sdsMovimentoUNIDADE: TStringField;
    cdsMovimentoUNIDADE: TStringField;
    sdsMovimentoVLR_ISSQN_RETIDO: TFloatField;
    cdsMovimentoVLR_ISSQN_RETIDO: TFloatField;
    sdsMovimentoVLR_CSRF: TFloatField;
    cdsMovimentoVLR_CSRF: TFloatField;
    sdsMovimentoTIPO_ES: TStringField;
    sdsMovimentoQTD: TFloatField;
    sdsMovimentoPERC_ICMS: TFloatField;
    sdsMovimentoPERC_IPI: TFloatField;
    sdsMovimentoPERC_ICMSSIMPLES: TFloatField;
    cdsMovimentoTIPO_ES: TStringField;
    cdsMovimentoQTD: TFloatField;
    cdsMovimentoPERC_ICMS: TFloatField;
    cdsMovimentoPERC_IPI: TFloatField;
    cdsMovimentoPERC_ICMSSIMPLES: TFloatField;
    sdsMovimentoPERC_PIS: TFloatField;
    sdsMovimentoPERC_COFINS: TFloatField;
    cdsMovimentoPERC_PIS: TFloatField;
    cdsMovimentoPERC_COFINS: TFloatField;
    sdsMovimentoMOTIVO_CD: TStringField;
    cdsMovimentoMOTIVO_CD: TStringField;
    sdsMovimentoTIPO_MOV: TStringField;
    cdsMovimentoTIPO_MOV: TStringField;
    sdsMovimentoPERC_ISSQN: TFloatField;
    cdsMovimentoPERC_ISSQN: TFloatField;
    sdsMovimentoTP_SAIDA: TStringField;
    sdsMovimentoTP_ENTRADA: TStringField;
    sdsMovimentoTP_SERVICO: TStringField;
    sdsMovimentoTP_CUPOMFISCAL: TStringField;
    cdsMovimentoTP_SAIDA: TStringField;
    cdsMovimentoTP_ENTRADA: TStringField;
    cdsMovimentoTP_SERVICO: TStringField;
    cdsMovimentoTP_CUPOMFISCAL: TStringField;
    sdsMovimentoNUM_RPS: TIntegerField;
    cdsMovimentoNUM_RPS: TIntegerField;
    sdsMovimentoVLR_LIQUIDO_NFSE: TFloatField;
    sdsMovimentoVLR_CUPOMFISCAL: TFloatField;
    cdsMovimentoVLR_LIQUIDO_NFSE: TFloatField;
    cdsMovimentoVLR_CUPOMFISCAL: TFloatField;
    sdsMovimentoNOME_PRODUTO_SERV: TStringField;
    sdsMovimentoREFERENCIA: TStringField;
    cdsMovimentoNOME_PRODUTO_SERV: TStringField;
    cdsMovimentoREFERENCIA: TStringField;
    sdsMovimentoTAMANHO: TStringField;
    sdsMovimentoID_CONDPGTO: TIntegerField;
    sdsMovimentoTIPO_CONDICAO: TStringField;
    cdsMovimentoTAMANHO: TStringField;
    cdsMovimentoID_CONDPGTO: TIntegerField;
    cdsMovimentoTIPO_CONDICAO: TStringField;
    qCondPgto: TSQLQuery;
    qCondPgtoID: TIntegerField;
    qCondPgtoTIPO: TStringField;
    sdsMovimentoID_VENDEDOR: TIntegerField;
    cdsMovimentoID_VENDEDOR: TIntegerField;
    sdsMovimentoID_RECIBO: TIntegerField;
    cdsMovimentoID_RECIBO: TIntegerField;
    sdsMovimentoID_COR: TIntegerField;
    cdsMovimentoID_COR: TIntegerField;
    sdsMovimentoPERC_COMISSAO: TFloatField;
    cdsMovimentoPERC_COMISSAO: TFloatField;
    sdsMovimentoID_FECHAMENTO: TIntegerField;
    cdsMovimentoID_FECHAMENTO: TIntegerField;
    sdsVendaCFiscal: TSQLDataSet;
    dspVendaCFiscal: TDataSetProvider;
    cdsVendaCFiscal: TClientDataSet;
    dsVendaCFiscal: TDataSource;
    cdsVendaCFiscalID_PRODUTO: TIntegerField;
    cdsVendaCFiscalREFERENCIA: TStringField;
    cdsVendaCFiscalNOME_PRODUTO_SERV: TStringField;
    cdsVendaCFiscalTIPO_MOV: TStringField;
    cdsVendaCFiscalTIPO_REG: TStringField;
    cdsVendaCFiscalTIPO_ES: TStringField;
    cdsVendaCFiscalQTD: TFloatField;
    cdsVendaCFiscalVLR_DUPLICATA: TFloatField;
    qCupomParametros: TSQLQuery;
    qCupomParametrosID_CONTAPERDAS: TIntegerField;
    qCupomParametrosALTURA_SALTO_LINHA: TSmallintField;
    qCupomParametrosIMPRESSORA_FISCAL: TStringField;
    sdsMovimentoVLR_ICMS_UF_REMET: TFloatField;
    sdsMovimentoVLR_ICMS_UF_DEST: TFloatField;
    cdsMovimentoVLR_ICMS_UF_REMET: TFloatField;
    cdsMovimentoVLR_ICMS_UF_DEST: TFloatField;
    sdsMovimentoTERMINAL_ID: TIntegerField;
    cdsMovimentoTERMINAL_ID: TIntegerField;
    sdsMovimentoPRECO_CUSTO_TOTAL: TFloatField;
    cdsMovimentoPRECO_CUSTO_TOTAL: TFloatField;
    sdsMovimentoRETEM_PISCOFINS: TStringField;
    cdsMovimentoRETEM_PISCOFINS: TStringField;
    procedure cdsMovimentoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
    procedure prc_Abrir_Movimento(ID: Integer);
  public
    { Public declarations }
    function fnc_Gravar_Movimento(ID_Mov, Filial, Item, ID_ProdServ, ID_Servico_Int, ID_Nota, ID_CFOP, ID_Pessoa, ID_ClienteTriang, Num_Nota, Num_RPS: Integer;
                                  Tipo_Reg, Serie, Tipo_ES, Tipo_Mov: String;
                                  Vlr_Unitario, Vlr_Total, Vlr_Desconto, Vlr_Frete, Vlr_Icms, Vlr_IcmsSubst, Vlr_IcmsSimples,
                                  Vlr_Issqn, Vlr_Ir, Vlr_Ipi, Vlr_Inss, Vlr_Pis, Vlr_Cofins, Vlr_Duplicata, Vlr_Csll, Vlr_Importacao,
                                  Vlr_Seguro, Vlr_OutrasDespesas, Vlr_Aduaneira, Vlr_Issqn_Retido, Vlr_CSRF, Base_Inss, Base_Issqn, Base_Icms, Base_IcmsSubst,
                                  Base_IcmsSimples, Qtd, Perc_Ipi, Perc_Icms, Perc_IcmsSimples, Perc_Pis, Perc_Cofins, Perc_ISSQN, Vlr_Liquido_NFSe, Vlr_CupomFiscal: Real;
                                  Cancelada, Denegada, Unidade, Motivo_CD, Nome_Produto_Serv, Referencia: String; DtEmissao, DtEntradaSaida: TDateTime;
                                  Tamanho, Tipo_Condicao: String; ID_CondPgto,ID_Recibo, ID_Vendedor, ID_Cor: Integer; Perc_Comissao,
                                  Vlr_Icms_UF_Remet, Vlr_Icms_UF_Dest: Real;
                                  Terminal: Integer; Preco_Custo_Total: Real; Retem_PISCOFINS: String ): Integer;
    procedure prc_ImprimeVendasCupomW;//WriteLn
    procedure prc_ImprimeVendasCupomC(cAvanco: Word);//Canvas
  end;

var
  DMMovimento: TDMMovimento;

const
  IPula   = #13;       //Pula 1 linha
  IEspac1 = #27#48;    //Define espaçamento entre linhas de 1/8"
  IEspac2 = #27#49;    //Define espaçamento entre linhas de 7/72"
  IEspac3 = #27#50;    //Define espaçamento entre linhas de 1/6"
  IEject  = #12;       //Ejeta página
  I80car  = #27#80#18; //Imprime com 80 colunas
  I96car  = #27#77#18; //Imprime com 96 colunas
  I137car = #27#80#15; //Imprime com 137 colunas
  I160car = #27#77#15; //Imprime com 160 colunas
  IDuploG = #27#14#18; //Imprime em caracter grande largura dupla
  IDuploP = #27#14#15; //Imprime em caracter pequeno largura dupla
  IDuploC = #27#20;    //Cancela largura dupla
  INegAti = #27#71;    //Imprime em negrito
  INegDes = #27#72;    //Cancela modo negrito
  IItaAti = #27#52;    //Imprime em Itálico
  IItaDes = #27#53;    //Cancela modo Itálico

implementation

uses DmdDatabase, uUtilPadrao, uGrava_Erro;

{$R *.dfm}

{ TDMEstoque }

function TDMMovimento.fnc_Gravar_Movimento(ID_Mov, Filial, Item,
  ID_ProdServ, ID_Servico_Int, ID_Nota, ID_CFOP, ID_Pessoa,
  ID_ClienteTriang, Num_Nota, Num_RPS: Integer;
  Tipo_Reg, Serie, Tipo_ES, Tipo_Mov: String;
  Vlr_Unitario, Vlr_Total, Vlr_Desconto, Vlr_Frete, Vlr_Icms,
  Vlr_IcmsSubst, Vlr_IcmsSimples, Vlr_Issqn, Vlr_Ir, Vlr_Ipi, Vlr_Inss,
  Vlr_Pis, Vlr_Cofins, Vlr_Duplicata, Vlr_Csll, Vlr_Importacao, Vlr_Seguro,
  Vlr_OutrasDespesas, Vlr_Aduaneira, Vlr_Issqn_Retido, Vlr_CSRF, Base_Inss,
  Base_Issqn, Base_Icms, Base_IcmsSubst, Base_IcmsSimples, Qtd, Perc_Ipi,
  Perc_Icms, Perc_IcmsSimples, Perc_Pis, Perc_Cofins, Perc_ISSQN, Vlr_Liquido_NFSe, Vlr_CupomFiscal: Real;
  Cancelada, Denegada, Unidade, Motivo_CD, Nome_Produto_Serv, Referencia: String;
  DtEmissao, DtEntradaSaida: TDateTime; Tamanho, Tipo_Condicao: String;
  ID_CondPgto, ID_Recibo, ID_Vendedor, ID_Cor: Integer; Perc_Comissao, Vlr_Icms_UF_Remet, Vlr_Icms_UF_Dest: Real;
  Terminal: Integer; Preco_Custo_Total: Real; Retem_PISCOFINS: String): Integer;
var
  vAux: Integer;
begin
  Result := 0;

  if ID_Mov > 0 then
  begin
    prc_Abrir_Movimento(ID_Mov);
    if cdsMovimento.IsEmpty then
      ID_Mov := 0;
    vaux := ID_Mov;
  end;
  if ID_Mov <= 0 then
  begin
    vAux := dmDatabase.ProximaSequencia('MOVIMENTO',0);
    if not(cdsMovimento.Active) then
      prc_Abrir_Movimento(0);
  end;

  try
    if ID_Mov > 0 then
      cdsMovimento.Edit
    else
    begin
      cdsMovimento.Insert;
      cdsMovimentoID.AsInteger := vAux;
    end;
    cdsMovimentoFILIAL.AsInteger  := Filial;
    cdsMovimentoITEM.AsInteger    := Item;
    cdsMovimentoTIPO_REG.AsString := Tipo_Reg;
    if Tipo_Reg = 'NSE' then
      cdsMovimentoID_SERVICO.AsInteger := ID_ProdServ
    else
    begin
      if ID_ProdServ > 0 then
        cdsMovimentoID_PRODUTO.AsInteger := ID_ProdServ;
    end;
    if (Tipo_Reg = 'NTS') or (Tipo_Reg = 'NTE') or (Tipo_Reg = 'RNF') then
      cdsMovimentoID_NOTAFISCAL.AsInteger := ID_Nota
    else
    if (Tipo_Reg = 'NSE') then
      cdsMovimentoID_NOTASERVICO.AsInteger := ID_Nota
    else
    if (Tipo_Reg = 'CFI') then
      cdsMovimentoID_CUPOMFISCAL.AsInteger := ID_Nota;
    if ID_CFOP > 0 then
      cdsMovimentoID_CFOP.AsInteger := ID_CFOP
    else
      cdsMovimentoID_CFOP.Clear;
    if ID_Pessoa > 0 then
      cdsMovimentoID_PESSOA.AsInteger := ID_Pessoa
    else
      cdsMovimentoID_PESSOA.Clear;
    if ID_ClienteTriang > 0 then
      cdsMovimentoID_CLIENTETRIANG.AsInteger := ID_ClienteTriang
    else
      cdsMovimentoID_CLIENTETRIANG.Clear;
    if ID_Servico_Int > 0 then
      cdsMovimentoID_SERVICO_INT.AsInteger := ID_Servico_Int;
    cdsMovimentoNUM_NOTA.AsInteger       := Num_Nota;
    cdsMovimentoNUM_RPS.AsInteger        := Num_RPS;
    cdsMovimentoSERIE.AsString           := Serie;
    cdsMovimentoUNIDADE.AsString         := Unidade;
    cdsMovimentoTIPO_ES.AsString         := Tipo_ES;
    cdsMovimentoTIPO_MOV.AsString        := Tipo_Mov;
    cdsMovimentoTP_CUPOMFISCAL.AsString  := 'N';
    cdsMovimentoTP_ENTRADA.AsString      := 'N';
    cdsMovimentoTP_SAIDA.AsString        := 'N';
    cdsMovimentoTP_SERVICO.AsString      := 'N';
    if ((Tipo_Mov = 'NOT') and (Tipo_ES = 'S')) or (Tipo_Mov = 'RNF') then
      cdsMovimentoTP_SAIDA.AsString := 'S'
    else
    if (Tipo_Mov = 'NOT') and (Tipo_ES = 'E') then
      cdsMovimentoTP_ENTRADA.AsString := 'E'
    else
    if (Tipo_Mov = 'NSE') then
      cdsMovimentoTP_SERVICO.AsString := 'S'
    else
    if (Tipo_Mov = 'CFI') then
      cdsMovimentoTP_CUPOMFISCAL.AsString := 'S';

    cdsMovimentoQTD.AsFloat                := StrToFloat(FormatFloat('0.000000',Qtd));
    cdsMovimentoVLR_UNITARIO.AsFloat       := StrToFloat(FormatFloat('0.0000000000',Vlr_Unitario));
    cdsMovimentoVLR_TOTAL.AsFloat          := StrToFloat(FormatFloat('0.00',Vlr_Total));
    cdsMovimentoVLR_DESCONTO.AsFloat       := StrToFloat(FormatFloat('0.0000',Vlr_Desconto));
    cdsMovimentoVLR_FRETE.AsFloat          := StrToFloat(FormatFloat('0.00',Vlr_Frete));
    cdsMovimentoVLR_ICMS.AsFloat           := StrToFloat(FormatFloat('0.00',Vlr_Icms));
    cdsMovimentoVLR_ICMSSUBST.AsFloat      := StrToFloat(FormatFloat('0.00',Vlr_IcmsSubst));
    cdsMovimentoVLR_ICMSSIMPLES.AsFloat    := StrToFloat(FormatFloat('0.00',Vlr_IcmsSimples));
    cdsMovimentoVLR_ISSQN.AsFloat          := StrToFloat(FormatFloat('0.00',Vlr_Issqn));
    cdsMovimentoVLR_IR.AsFloat             := StrToFloat(FormatFloat('0.00',Vlr_Ir));
    cdsMovimentoVLR_IPI.AsFloat            := StrToFloat(FormatFloat('0.00',Vlr_Ipi));
    cdsMovimentoVLR_INSS.AsFloat           := StrToFloat(FormatFloat('0.00',Vlr_Inss));
    cdsMovimentoVLR_PIS.AsFloat            := StrToFloat(FormatFloat('0.00',Vlr_Pis));
    cdsMovimentoVLR_COFINS.AsFloat         := StrToFloat(FormatFloat('0.00',Vlr_Cofins));
    cdsMovimentoVLR_DUPLICATA.AsFloat      := StrToFloat(FormatFloat('0.00',Vlr_Duplicata));
    cdsMovimentoVLR_CSLL.AsFloat           := StrToFloat(FormatFloat('0.00',Vlr_Csll));
    cdsMovimentoVLR_IMPORTACAO.AsFloat     := StrToFloat(FormatFloat('0.00',Vlr_Importacao));
    cdsMovimentoVLR_SEGURO.AsFloat         := StrToFloat(FormatFloat('0.00',Vlr_Seguro));
    cdsMovimentoVLR_OUTRASDESPESAS.AsFloat := StrToFloat(FormatFloat('0.00',Vlr_OutrasDespesas));
    cdsMovimentoVLR_ADUANEIRA.AsFloat      := StrToFloat(FormatFloat('0.00',Vlr_Aduaneira));
    cdsMovimentoVLR_ISSQN_RETIDO.AsFloat   := StrToFloat(FormatFloat('0.00',Vlr_Issqn_Retido));
    cdsMovimentoVLR_CSRF.AsFloat           := StrToFloat(FormatFloat('0.00',Vlr_CSRF));
    cdsMovimentoVLR_LIQUIDO_NFSE.AsFloat   := StrToFloat(FormatFloat('0.00',Vlr_Liquido_NFSe));
    cdsMovimentoVLR_CUPOMFISCAL.AsFloat    := StrToFloat(FormatFloat('0.00',Vlr_CupomFiscal));
    //23/01/2018
    cdsMovimentoPRECO_CUSTO_TOTAL.AsFloat  := StrToFloat(FormatFloat('0.00000',Preco_Custo_Total));
    //**************

    //20/08/2018
    cdsMovimentoRETEM_PISCOFINS.AsString := Retem_PISCOFINS;
    

    if StrToFloat(FormatFloat('0.00',Vlr_Inss)) <= 0 then
      Base_Inss := 0;
    cdsMovimentoBASE_INSS.AsFloat          := StrToFloat(FormatFloat('0.00',Base_Inss));
    cdsMovimentoBASE_ISSQN.AsFloat         := StrToFloat(FormatFloat('0.00',Base_Issqn));
    cdsMovimentoBASE_ICMS.AsFloat          := StrToFloat(FormatFloat('0.00',Base_Icms));
    cdsMovimentoBASE_ICMSSIMPLES.AsFloat   := StrToFloat(FormatFloat('0.00',Base_IcmsSimples));
    cdsMovimentoBASE_ICMSSUBST.AsFloat     := StrToFloat(FormatFloat('0.00',Base_IcmsSubst));
    cdsMovimentoPERC_COFINS.AsFloat        := StrToFloat(FormatFloat('0.00',Perc_Cofins));
    cdsMovimentoPERC_ICMS.AsFloat          := StrToFloat(FormatFloat('0.00',Perc_Icms));
    cdsMovimentoPERC_ICMSSIMPLES.AsFloat   := StrToFloat(FormatFloat('0.00',Perc_IcmsSimples));
    cdsMovimentoPERC_IPI.AsFloat           := StrToFloat(FormatFloat('0.00',Perc_Ipi));
    cdsMovimentoPERC_PIS.AsFloat           := StrToFloat(FormatFloat('0.00',Perc_Pis));
    cdsMovimentoPERC_ISSQN.AsFloat         := StrToFloat(FormatFloat('0.00',Perc_ISSQN));
    cdsMovimentoCANCELADO.AsString         := Cancelada;
    cdsMovimentoDENEGADA.AsString          := Denegada;
    cdsMovimentoMOTIVO_CD.AsString         := Motivo_CD;
    cdsMovimentoNOME_PRODUTO_SERV.AsString := Nome_Produto_Serv;
    cdsMovimentoREFERENCIA.AsString        := Referencia;
    if trim(cdsMovimentoDENEGADA.AsString) = '' then
      cdsMovimentoDENEGADA.AsString := 'N';
    if trim(cdsMovimentoCANCELADO.AsString) = '' then
      cdsMovimentoCANCELADO.AsString := 'N';
    cdsMovimentoDTEMISSAO.AsDateTime       := DtEmissao;
    if DtEntradaSaida < 10 then
      cdsMovimentoDTENTRADASAIDA.AsDateTime := DtEmissao
    else
      cdsMovimentoDTENTRADASAIDA.AsDateTime := DtEntradaSaida;
    if trim(Tamanho) = '' then
      Tamanho := '';
    cdsMovimentoTAMANHO.AsString      := Tamanho;
    cdsMovimentoID_CONDPGTO.AsInteger := ID_CondPgto;
    if (ID_CondPgto <= 0) and (trim(Tipo_Condicao) = '') then
      cdsMovimentoTIPO_CONDICAO.AsString := 'N'
    else
    if Tipo_Condicao <> '' then
      cdsMovimentoTIPO_CONDICAO.AsString := Tipo_Condicao
    else
    if ID_CondPgto > 0 then
    begin
      qCondPgto.Close;
      qCondPgto.ParamByName('ID').AsInteger := ID_CondPgto;
      qCondPgto.Open;
      cdsMovimentoTIPO_CONDICAO.AsString := qCondPgtoTIPO.AsString;
      qCondPgto.Close;
    end;
    if ID_Recibo > 0 then
      cdsMovimentoID_RECIBO.AsInteger := ID_Recibo;
    if ID_Vendedor > 0 then
      cdsMovimentoID_VENDEDOR.AsInteger := ID_Vendedor;
    if ID_Cor > 0 then
      cdsMovimentoID_COR.AsInteger := ID_Cor;
    cdsMovimentoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',Perc_Comissao));
    //21/09/2017
    cdsMovimentoVLR_ICMS_UF_REMET.AsFloat := StrToFloat(FormatFloat('0.00',Vlr_Icms_UF_Remet));
    cdsMovimentoVLR_ICMS_UF_DEST.AsFloat  := StrToFloat(FormatFloat('0.00',Vlr_Icms_UF_Dest));
    //***********
    cdsMovimentoTERMINAL_ID.AsInteger := Terminal; //PDV

    cdsMovimento.Post;
    cdsMovimento.ApplyUpdates(0);
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar o movimento: ' + Tipo_Reg + #13 +
                             'Mensagem: ' + E.Message + #13);
    end;
  end;

  Result := vAux;
end;

procedure TDMMovimento.prc_Abrir_Movimento(ID: Integer);
begin
  cdsMovimento.Close;
  sdsMovimento.ParamByName('ID').AsInteger := ID;
  cdsMovimento.Open;
end;

procedure TDMMovimento.cdsMovimentoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
var
  vMSGAux : String;  
begin
  if trim(e.Message) <> '' then
  begin
    vMSGAux := e.Message + #13 + #13 + '*** Erro ao gravar a tabela de Movimentos!';
    MessageDlg(e.Message + #13 + #13 + '*** Erro ao gravar a tabela de Movimentos!', mtError, [mbOk], 0);
    uGrava_Erro.prc_Gravar('Movimento','',vMSGAux,DateToStr(Date),TimeToStr(Now));
  end;
end;

procedure TDMMovimento.prc_ImprimeVendasCupomW;
var
  vTxt1, vTxt2: String;
  i: Integer;
  f: TextFile;
  vTotal: Real;
begin
  vTotal := 0;

  AssignFile(f,vPorta);
  ReWrite(f);

//  WriteLn(f,IDuploG + cdsFilialNOME_INTERNO.AsString + IDuploC);
//  WriteLn(f);
  WriteLn(f,INegAti + 'VENDAS DO PERIODO' + INegDes);
  WriteLn(f,'----------------------------------------');
  WriteLn(f,'  Usuario: ' + vUsuario);
  WriteLn(f,'Data/Hora: ' + FormatDateTime('DD/MM/YYYY',Date));
  WriteLn(f,'========================================');

  vTxt1 :=  'COD   PRODUTO               QTD      TOT';
  WriteLn(f,vTxt1);
  WriteLn(f,'----------------------------------------');

  cdsVendaCFiscal.First;
  while not cdsVendaCFiscal.Eof do
  begin
    vTxt1 := Copy(cdsVendaCFiscalREFERENCIA.AsString,1,5);
    for i := 1 to 6 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';

    vTxt1 := vTxt1 + Copy(cdsVendaCFiscalNOME_PRODUTO_SERV.AsString,1,21);
    for i := 1 to 27 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';

    vTxt2 := cdsVendaCFiscalQTD.AsString;
    for i := 1 to 5 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;

    vTxt1 := vTxt1 + vTxt2;
    vTxt2 := FormatFloat('0.00',cdsVendaCFiscalVLR_DUPLICATA.AsCurrency);
    for i := 1 to 8 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;

    WriteLn(f,vTxt1+vTxt2);

    vTotal := vTotal + cdsVendaCFiscalVLR_DUPLICATA.AsCurrency;
    cdsVendaCFiscal.Next;
  end;
  WriteLn(f,'========================================');
  vTxt1 :=  '                         TOTAL: ';
  vTxt2 := FormatFloat('0.00',vTotal);
  for i := 1 to 8 - Length(vTxt2) do
    vTxt2 := ' ' + vTxt2;
  WriteLn(f,vTxt1+vTxt2);

  WriteLn(f);
  WriteLn(f,IDuploP + 'SERVISOFT Informatica' + IDuploC);
  WriteLn(f,'Fone: (51) 3598-6584');
  for i := 1 to 6 do
    WriteLn(f);

  CloseFile(f);
end;

procedure TDMMovimento.prc_ImprimeVendasCupomC(cAvanco: Word);
var
  vTxt1, vTxt2: String;
  i, vLinha, vPosicao: Integer;
  f: TextFile;
  vTotal: Real;
begin
  SetDefaultPrinter(vPorta);
  Printer.BeginDoc;
  Printer.Canvas.Font.Name  := 'Lucida Console';

  vTotal   := 0;
  vLinha   := 0;
  vPosicao := 0;

  Printer.Canvas.Font.Style := [fsBold]; //Declarar Graphics
//  vTxt1 := cdsFilialNOME_INTERNO.AsString;
//  Printer.Canvas.TextOut(0,vLinha,vTxt1);
//  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'VENDAS DO PERÍODO');
  vLinha := vLinha + cAvanco;

  Printer.Canvas.Font.Style := []; //Declarar Graphics
  Printer.Canvas.TextOut(0,vLinha,'----------------------------------------');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'  Usuario: ' + vUsuario);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'Data/Hora: ' + FormatDateTime('DD/MM/YYYY',Date));
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'========================================');
  vLinha := vLinha + cAvanco;

  vTxt1 :=  'COD   PRODUTO               QTD      TOT';
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'----------------------------------------');
  vLinha := vLinha + cAvanco;

  cdsVendaCFiscal.First;
  while not cdsVendaCFiscal.Eof do
  begin
    vTxt1 := Copy(cdsVendaCFiscalREFERENCIA.AsString,1,5);
    for i := 1 to 6 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';

    vTxt1 := vTxt1 + Copy(cdsVendaCFiscalNOME_PRODUTO_SERV.AsString,1,21);
    for i := 1 to 27 - Length(vTxt1) do
      vTxt1 := vTxt1 + ' ';

    vTxt2 := cdsVendaCFiscalQTD.AsString;
    for i := 1 to 5 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;

    vTxt1 := vTxt1 + vTxt2;
    vTxt2 := FormatFloat('0.00',cdsVendaCFiscalVLR_DUPLICATA.AsCurrency);
    for i := 1 to 8 - Length(vTxt2) do
      vTxt2 := ' ' + vTxt2;

    Printer.Canvas.TextOut(0,vLinha,vTxt1+vTxt2);
    vLinha := vLinha + cAvanco;

    vTotal := vTotal + cdsVendaCFiscalVLR_DUPLICATA.AsCurrency;
    cdsVendaCFiscal.Next;
  end;
  Printer.Canvas.TextOut(0,vLinha,'========================================');
  vLinha := vLinha + cAvanco;
  vTxt1 :=  '                         TOTAL: ';
  vTxt2 := FormatFloat('0.00',vTotal);
  for i := 1 to 8 - Length(vTxt2) do
    vTxt2 := ' ' + vTxt2;
  Printer.Canvas.TextOut(0,vLinha,vTxt1+vTxt2);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'SERVISOFT Informática');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'Fone: (51) 3598-6584');
  vLinha := vLinha + cAvanco;
  for i := 1 to 6 do
  begin
    Printer.Canvas.TextOut(0,vLinha,'');
    vLinha := vLinha + cAvanco;
  end;

  Printer.EndDoc;
  SetDefaultPrinter(vImpressora_Padrao);
end;

end.
