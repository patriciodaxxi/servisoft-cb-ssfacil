unit UGerar_NFSe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, ToolEdit,
  CurrEdit, NxCollection, UDMCadOS, UDMCadNotaServico, UDMCadRecibo, DBGrids, SMDBGrid, RxLookup, dbXPress, SqlExpr,
  Mask, RzTabs, Grids, UDMCadOS_TAux;

type
  TfrmGerar_NFSe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ceAno: TCurrencyEdit;
    btnConsultar: TNxButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Panel2: TPanel;
    btnConfBaixa: TNxButton;
    ComboBox3: TComboBox;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ckRecibo: TCheckBox;
    btnGerar_Recibo: TNxButton;
    RzPageControl1: TRzPageControl;
    TS_Contrato: TRzTabSheet;
    TS_Servico: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    btnConsumo: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure btnGerar_ReciboClick(Sender: TObject);
    procedure btnConsumoClick(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadNotaServico: TDMCadNotaServico;
    fDMCadRecibo: TDMCadRecibo;
    fDMCadOS: TDMCadOS;
    fDMCadOS_TAux: TDMCadOS_TAux;
    vContador_NFSe: Integer;
    vAnoMes: String;
    vAnoMesAnt: String;
    vVlrExtras: Currency;
    vGerar_Dup: String;
    vDias_Mes: Integer;

    procedure prc_Consultar;
    procedure prc_Gravar_NFSe;
    procedure prc_Gravar_Recibo;
    procedure prc_Consultar_Mov_Servico;
    procedure prc_Gravar_mServico_Extra;
    procedure prc_Calcular_Franquia;

    procedure prc_Gravar_NFSe_Agr;
    procedure prc_Gravar_NFSe_Itens_Agr;
    procedure prc_Inserir_NotaServico;
    procedure prc_Gravar_NFSe_Parc_Agr;
    procedure prc_Gravar_NFSe_Contrato_Agr;

    //23/06/2016  Referente ao agrupamento dos Contratos no Recibo
    procedure prc_Gravar_Recibo_Agr;
    procedure prc_Gravar_Recibo_Itens_Agr;
    procedure prc_Inserir_Recibo;
    procedure prc_Gravar_Recibo_Parc_Agr;
    procedure prc_Gravar_Recibo_Contrato_Agr;
    //************************

    procedure prc_Monta_OBS_Recibo;
    procedure prc_Conrole_Tributos_NFSe;
    procedure prc_Gerar_Servico_Extra_Rec;
    procedure prc_Gerar_Servico_Extra_NFSe;

  public
    { Public declarations }
  end;

var
  frmGerar_NFSe: TfrmGerar_NFSe;

implementation

uses DateUtils, rsDBUtils, DB, uUtilPadrao, DmdDatabase, SysConst, uGerar_NFSe_Consumo;

{$R *.dfm}

procedure TfrmGerar_NFSe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadOS);
  FreeAndNil(fDMCadNotaServico);
  FreeAndNil(fDMCadRecibo);
  FreeAndNil(fDMCadOS_TAux);
  Action := Cafree;
end;

procedure TfrmGerar_NFSe.btnConsultarClick(Sender: TObject);
begin
  if (ComboBox3.ItemIndex < 0) then
  begin
    MessageDlg('*** Mês não informado!', mtError, [mbOk], 0);
    exit;
  end;
  if (ceAno.AsInteger < 2000) then
  begin
    MessageDlg('*** Ano incorreto!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar;
  prc_Consultar_Mov_Servico;
end;

procedure TfrmGerar_NFSe.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadNotaServico := TDMCadNotaServico.Create(Self);
  fDMCadRecibo      := TDMCadRecibo.Create(Self);
  fDMCadOS          := TDMCadOS.Create(Self);
  fDMCadOS_TAux     := TDMCadOS_TAux.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOS);
  ceAno.AsInteger   := YearOf(Date);
  if fDMCadOS.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMCadOS.cdsFilialID.AsInteger;
  if fDMCadOS.qParametrosUSA_RECIBO_NFSE.AsString <> 'S' then
    ckRecibo.Checked := False;
  //23/06/2016    Incluindo o agrupamento no Recibo
  //ckRecibo.Visible        := ((fDMCadOS.qParametrosUSA_RECIBO_NFSE.AsString = 'S') and (fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S'));
  //btnGerar_Recibo.Visible := ((fDMCadOS.qParametrosUSA_RECIBO_NFSE.AsString = 'S') and (fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S'));
  //btnConsumo.Visible      := (fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S');
  ckRecibo.Visible        := (fDMCadOS.qParametrosUSA_RECIBO_NFSE.AsString = 'S');
  btnGerar_Recibo.Visible := (fDMCadOS.qParametrosUSA_RECIBO_NFSE.AsString = 'S');
  //*******************
  fDMCadNotaServico.cdsCliente.Close;
  fDMCadNotaServico.cdsCliente.Open;

  if fDMCadOS.qParametrosUSA_ANO_CONTRATO.AsString <> 'S' then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i-1].FieldName = 'ANO_CONTRATO') then
        SMDBGrid1.Columns[i-1].Visible := False;
    end;
  end;
end;

procedure TfrmGerar_NFSe.prc_Consultar;
var
  vComando: String;
  vOpcaoAux, vOpcaoAux2: String;
  vDataIni, vDataFin: TDateTime;
  vDiaAux: Integer;
  vTab, vTab2 : String;
begin
  vDiaAux  := DaysInAMonth(ceAno.AsInteger,ComboBox3.ItemIndex + 1);
  vDataIni := EncodeDate(ceAno.AsInteger,ComboBox3.ItemIndex+1,01);
  vDataFin := EncodeDate(ceAno.AsInteger,ComboBox3.ItemIndex+1,vDiaAux);

  fDMCadOS.cdsContrato.Close;
  vComando := ' WHERE (OS.DTCONTRATO_INI <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDataIni)) + ') AND '
            + ' ((OS.DTCONTRATO_FIN >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDataFin)) + ') or (OS.DTCONTRATO_FIN IS NULL)) '
            + ' AND ((OS.DTENCERRAMENTO IS NULL) or (OS.DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDataFin)) + '))'
            + ' AND (OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue) + ')';
  case ComboBox1.ItemIndex of
    0: vOpcaoAux := 'NOT';
    1: vOpcaoAux := '';
  end;
  //Foi criada a tabela de NotaServico_Contrato e Recibo_Contrato, para controlar quando se agrupar mais de um contrato
  //na mesma nota ou recibo   23/02/2016
  {vComando := vComando + ' AND ((' + vOpcaoAux + ' EXISTS( SELECT 1 FROM NOTASERVICO NS '
            + ' WHERE NS.NUM_CONTRATO = OS.NUM_CONTRATO '
            + '   AND NS.ANO_CONTRATO = OS.ANO_CONTRATO '
            + ' AND NS.ANO_REF = ' + ceAno.Text
            + ' AND NS.MES_REF = ' + IntToStr(ComboBox3.ItemIndex + 1)
            + ' AND NS.STATUS_RPS = ' + QuotedStr('1') + '))';
  if ckRecibo.Checked then
  begin
    if Trim(vOpcaoAux) = '' then
      vOpcaoAux2 := 'OR'
    else
      vOpcaoAux2 := 'AND';
    vComando := vComando + ' ' + vOpcaoAux2 + ' (' + vOpcaoAux + ' EXISTS( SELECT 1 FROM RECIBO REC ' +
                             ' WHERE REC.NUM_CONTRATO = OS.NUM_CONTRATO ' +
                             ' AND REC.ANO_CONTRATO = OS.ANO_CONTRATO ' +
                             ' AND REC.ANO_REF = ' + ceAno.Text +
                             ' AND REC.MES_REF = ' + IntToStr(ComboBox3.ItemIndex + 1) + '))';
  end;}
  vTab  := 'NOTASERVICO';
  vTab2 := 'RECIBO';
  if fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S' then
  begin
    vTab  := 'NOTASERVICO_CONTRATO';
    vTab2 := 'RECIBO_CONTRATO';
  end;
  vComando := vComando + ' AND ((' + vOpcaoAux + ' EXISTS( SELECT 1 FROM ' + vTab + ' NS '
            + ' WHERE NS.NUM_CONTRATO = OS.NUM_CONTRATO '
            + '   AND NS.ANO_CONTRATO = OS.ANO_CONTRATO '
            + ' AND NS.ANO_REF = ' + ceAno.Text
            + ' AND NS.MES_REF = ' + IntToStr(ComboBox3.ItemIndex + 1)
            + ' AND NS.STATUS_RPS = ' + QuotedStr('1') + ')))';
  if ckRecibo.Checked then
  begin
    if Trim(vOpcaoAux) = '' then
      vOpcaoAux2 := 'OR'
    else
      vOpcaoAux2 := 'AND';
    vComando := vComando + ' ' + vOpcaoAux2 + ' (' + vOpcaoAux + ' EXISTS( SELECT 1 FROM ' + vTab2 + ' REC ' +
                             ' WHERE REC.NUM_CONTRATO = OS.NUM_CONTRATO ' +
                             ' AND REC.ANO_CONTRATO = OS.ANO_CONTRATO ' +
                             ' AND REC.ANO_REF = ' + ceAno.Text +
                             ' AND REC.MES_REF = ' + IntToStr(ComboBox3.ItemIndex + 1) + '))';
  end;
  fDMCadOS.sdsContrato.CommandText := fDMCadOS.ctContrato + vComando;
  fDMCadOS.cdsContrato.Open;
end;

procedure TfrmGerar_NFSe.btnConfBaixaClick(Sender: TObject);
var
  vID_Aux : Integer;
begin
  vFilial := RxDBLookupCombo1.KeyValue;

  prc_Gravar_mServico_Extra;
  fDMCadOS.mOSAux.EmptyDataSet;


  vContador_NFSe := 0;
  fDMCadOS.vMSGNotaGerada := '';
  fDMCadOS.vMSGAviso      := '';

  if fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S' then
  begin
    fDMCadOS.cdsContrato.First;
    while not fDMCadOS.cdsContrato.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and
         not(fDMCadOS.fnc_Nota_Gerada(ceAno.AsInteger,ComboBox3.ItemIndex + 1,
         fDMCadOS.cdsContratoNUM_CONTRATO.AsInteger,
         fDMCadOS.cdsContratoANO_CONTRATO.AsInteger))
         and (fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger > 0) then
      begin
        vID_Aux := fDMCadOS.cdsContratoID.AsInteger;
        if fDMCadOS.mOSAux.Locate('ID_Cliente;ID_Servico_Padrao;ID_Vendedor;Perc_Comissao;Dia_Vencimento',
                               VarArrayOf([fDMCadOS.cdsContratoID_CLIENTE.AsInteger,fDMCadOS.cdsContratoID_SERVICO.AsInteger,
                                           fDMCadOS.cdsContratoID_VENDEDOR.AsInteger,StrToFloat(FormatFloat('0.0000',
                                           fDMCadOS.cdsContratoPERC_COMISSAO.AsFloat)),fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger]),
                                           [locaseinsensitive]) then
        begin
          vID_Aux := fDMCadOS.mOSAuxID.AsInteger;
        end;
        fDMCadOS.mOSAux.Insert;
        fDMCadOS.mOSAuxID.AsInteger                := vID_Aux;
        fDMCadOS.mOSAuxID_Contrato.AsInteger       := fDMCadOS.cdsContratoID.AsInteger;
        fDMCadOS.mOSAuxID_Cliente.AsInteger        := fDMCadOS.cdsContratoID_CLIENTE.AsInteger;
        fDMCadOS.mOSAuxID_Servico_Padrao.AsInteger := fDMCadOS.cdsContratoID_SERVICO.AsInteger;
        fDMCadOS.mOSAuxDia_Vencimento.AsInteger    := fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger;
        fDMCadOS.mOSAuxID_Vendedor.AsInteger       := fDMCadOS.cdsContratoID_VENDEDOR.AsInteger;
        fDMCadOS.mOSAuxPerc_Comissao.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMCadOS.cdsContratoPERC_COMISSAO.AsFloat));
        fDMCadOS.mOSAux.Post;
      end;
      fDMCadOS.cdsContrato.Next;
    end;
  end;

  if (fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S') then
  begin
    if not(fDMCadOS.mOSAux.IsEmpty) then
      prc_Gravar_NFSe_Agr;
  end
  else
  if fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S' then
  begin
    fDMCadOS.cdsContrato.First;
    while not fDMCadOS.cdsContrato.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and
         not(fDMCadOS.fnc_Nota_Gerada(ceAno.AsInteger,ComboBox3.ItemIndex + 1,
         fDMCadOS.cdsContratoNUM_CONTRATO.AsInteger,
         fDMCadOS.cdsContratoANO_CONTRATO.AsInteger)) then
      begin
        if (fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger > 0) or
           ((fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger <= 0) and (fDMCadOS.qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C')) then
          prc_Gravar_NFSe;
      end;
      fDMCadOS.cdsContrato.Next;
    end;
  end;

  {fDMCadOS.cdsEventos.Close;
  fDMCadOS.sdsEventos.ParamByName('CLI').AsInteger := 1;
  fDMCadOS.sdsEventos.ParamByName('DT1').AsDateTime := Date;
  fDMCadOS.sdsEventos.ParamByName('DT2').AsDateTime := Date;
  fDMCadOS.cdsEventos.Open;}

  fDMCadOS_TAux.mServico_Extra.Filtered := False;

  if (trim(fDMCadOS.vMSGNotaGerada) <> '') and (trim(fDMCadOS.vMSGAviso) <> '') then
    MessageDlg('*** CONTRATOS NÃO GERADOS ***!' +#13+#13 + fDMCadOS.vMSGNotaGerada + #13 +#13 +
               '*** Notas Geradas Com Aviso: ' + #13 + fDMCadOS.vMSGAviso, mtError, [mbOk], 0)
  else
  if trim(fDMCadOS.vMSGNotaGerada) <> '' then
    MessageDlg('*** CONTRATOS NÃO GERADOS ***!' +#13+#13 + fDMCadOS.vMSGNotaGerada, mtError, [mbOk], 0)
  else
  if trim(fDMCadOS.vMSGAviso) <> '' then
    MessageDlg('*** Notas Geradas Com Aviso: ' +#13 + fDMCadOS.vMSGAviso, mtError, [mbOk], 0)
  else
  begin
    if fDMCadOS_TAux.mServico_Extra.RecordCount > 0 then
      MessageDlg('*** Alguns serviços extras não geraram Notas ***!' +#13, mtInformation, [mbOk], 0);

    MessageDlg('Notas Geradas, Qtd: ' + IntToStr(vContador_NFSe) , mtInformation, [mbOk], 0);
    prc_Consultar;
    prc_Consultar_Mov_Servico;
  end;
end;

procedure TfrmGerar_NFSe.prc_Gravar_NFSe;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vFlag: Boolean;
  vDia, vMes, vAno: Integer;
  vGerar_Parc : Boolean;
begin
  vVlrExtras := 0;
  fDMCadOS.prc_Localizar(fDMCadOS.cdsContratoID.AsInteger);
  if (fDMCadOS.cdsOS.IsEmpty) or (fDMCadOS.cdsOSID.AsInteger <= 0) then
    exit;

  if vFilial <> fDMCadOS.cdsFilialID.AsInteger then
    fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('NOTASERVICO');
    sds.ExecSQL();

    fDMCadNotaServico.prc_Inserir('');

    fDMCadOS.cdsCliente.Locate('CODIGO',fDMCadOS.cdsContratoID_CLIENTE.AsInteger,[loCaseInsensitive]);

    fDMCadNotaServico.cdsNotaServicoID_NATUREZA.AsInteger         := fDMCadOS.cdsOSID_NATUREZA.AsInteger;
    fDMCadNotaServico.cdsNotaServicoISS_RETIDO.AsString           := fDMCadOS.cdsOSRETEM_ISS.AsString;
    fDMCadNotaServico.cdsNotaServicoPERC_ALIQUOTA.AsFloat         := fDMCadOS.cdsOSPERC_ISS.AsFloat;
    fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger          := fDMCadOS.cdsOSID_SERVICO.AsInteger;
    fDMCadNotaServico.cdsNotaServicoDISCRIMINACAO.Value           := fDMCadOS.cdsOSDISCRIMINACAO.Value;
    fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger         := fDMCadOS.cdsOSID_CONDPGTO.AsInteger;
    fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger    := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
    fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString           := 'P';
    fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger          := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
    fDMCadNotaServico.cdsNotaServicoID_BANCO.AsInteger            := fDMCadOS.cdsOSID_CONTA.AsInteger;
    fDMCadNotaServico.cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime;
    fDMCadNotaServico.cdsNotaServicoHOMOLOGACAO.AsString          := 'N';
    fDMCadNotaServico.cdsNotaServicoID_CONTA.AsInteger            := fDMCadOS.cdsOSID_CONTA.AsInteger;
    fDMCadNotaServico.cdsNotaServicoCNAE_NFSE.AsString            := fDMCadOS.cdsOSCNAE.AsString;
    fDMCadNotaServico.cdsNotaServicoRETEM_CSLL.AsString           := fDMCadOS.cdsOSRETEM_CSLL.AsString;
    fDMCadNotaServico.cdsNotaServicoRETEM_PISCOFINS.AsString      := fDMCadOS.cdsOSRETEM_PISCOFINS.AsString;
    fDMCadNotaServico.cdsNotaServicoRETEM_INSS.AsString           := fDMCadOS.cdsOSRETEM_INSS.AsString;
    fDMCadNotaServico.cdsNotaServicoID_ATIVIDADE_CID.AsInteger    := fDMCadOS.cdsOSID_ATIVIDADE_CID.AsInteger;
    fDMCadNotaServico.cdsNotaServicoPERC_INSS.AsFloat             := fDMCadOS.cdsOSPERC_INSS.AsFloat;
    fDMCadNotaServico.cdsNotaServicoPERC_IR.AsFloat               := fDMCadOS.cdsOSPERC_IR.AsFloat;
    fDMCadNotaServico.cdsNotaServicoDIMINUIR_RETENCAO.AsString    := 'S';
    fDMCadNotaServico.cdsNotaServicoEMAIL_ENVIADO.AsString        := 'N';
    fDMCadNotaServico.cdsNotaServicoPERC_REDUCAO_INSS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsClientePERC_REDUCAO_INSS.AsFloat));
    fDMCadNotaServico.cdsNotaServicoANO_REF.AsInteger             := ceAno.AsInteger;
    fDMCadNotaServico.cdsNotaServicoMES_REF.AsInteger             := ComboBox3.ItemIndex + 1;
    fDMCadNotaServico.cdsNotaServicoID_CONTRATO.AsInteger         := fDMCadOS.cdsOSID.AsInteger;
    fDMCadNotaServico.cdsNotaServicoNUM_CONTRATO.AsInteger        := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
    fDMCadNotaServico.cdsNotaServicoANO_CONTRATO.AsInteger        := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
    fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger  := fDMCadOS.cdsOSID_CONTA_ORCAMENTO.AsInteger;
    if fDMCadOS.cdsOSID_VENDEDOR.AsInteger > 0 then
    begin
      fDMCadNotaServico.cdsNotaServicoID_VENDEDOR.AsInteger := fDMCadOS.cdsOSID_VENDEDOR.AsInteger;
      fDMCadNotaServico.cdsNotaServicoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOSPERC_COMISSAO.AsFloat));
    end;
    if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
      fDMCadNotaServico.cdsNotaServicoID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
    if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
      fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;

    if fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger > 0 then
      fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger
    else
    if fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger > 0 then
      fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger;

    if fDMCadNotaServico.cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM' then
    begin
      fDMCadNotaServico.qProximaNota.Close;
      fDMCadNotaServico.qProximaNota.ParamByName('FILIAL').AsInteger := fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger;
      fDMCadNotaServico.qProximaNota.ParamByName('SERIE').AsString   := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
      fDMCadNotaServico.qProximaNota.Open;
      fDMCadNotaServico.cdsNotaServicoNUMNOTA.AsInteger := fDMCadNotaServico.qProximaNotaNUMNOTA.AsInteger + 1;
      fDMCadNotaServico.cdsNotaServicoSERIE.AsString    := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
    end
    else
    begin
      fDMCadNotaServico.qProximaRPS.Close;
      fDMCadNotaServico.qProximaRPS.ParamByName('FILIAL').AsInteger := fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger;
      fDMCadNotaServico.qProximaRPS.ParamByName('SERIE').AsString   := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
      fDMCadNotaServico.qProximaRPS.Open;
      fDMCadNotaServico.cdsNotaServicoNUMRPS.AsInteger := fDMCadNotaServico.qProximaRPSNUMRPS.AsInteger + 1;
      fDMCadNotaServico.cdsNotaServicoSERIE.AsString   := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
      fDMCadNotaServico.qProximaRPS.Close;
    end;

    vGerar_Dup := 'S';
    if (fDMCadOS.qParametrosUSA_RECIBO_NFSE.AsString = 'S') and not(ckRecibo.Checked) then
    begin
      if fDMCadOS.fnc_Recibo_Gerado(ceAno.AsInteger,ComboBox3.ItemIndex + 1) then
        vGerar_Dup := 'N';
    end;
    fDMCadNotaServico.cdsServico.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,[loCaseInsensitive]);
    fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString,'G');

    fDMCadOS.cdsOS_Servico_Int.First;
    while not fDMCadOS.cdsOS_Servico_Int.Eof do
    begin
      if StrToFloat(FormatFloat('0.0000',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat)) > 0 then
      begin
        fDMCadNotaServico.prc_Inserir_Itens;
        fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat        := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat));
        fDMCadNotaServico.cdsNotaServico_ItensGERAR_DUPLICATA.AsString    := vGerar_Dup;
        fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger    := fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger;
        fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString   := fDMCadOS.cdsOS_Servico_IntNOME_SERVICO_INT.AsString;
        fDMCadNotaServico.cdsNotaServico_ItensSOMAR_DIMINUIR.AsString     := fDMCadOS.cdsOS_Servico_IntSOMAR_DIMINUIR.AsString;
        fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_INSS.AsString      := fDMCadOS.cdsOS_Servico_IntCALCULAR_INSS.AsString;
        fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_IR.AsString        := fDMCadOS.cdsOS_Servico_IntCALCULAR_IR.AsString;
        fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_ISSQN.AsString     := fDMCadOS.cdsOS_Servico_IntCALCULAR_ISSQN.AsString;
        fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString := fDMCadOS.cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString;
        if StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat)) > 0 then
          fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat));
        fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',
                                                                   fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat *
                                                                   fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat));
        //05/07/2016
        prc_Conrole_Tributos_NFSe;
        //04/07/2016
        fDMCadNotaServico.cdsNotaServico_ItensID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
        fDMCadNotaServico.cdsNotaServico_ItensANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
        fDMCadNotaServico.cdsNotaServico_ItensNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
        //******************
        fDMCadNotaServico.cdsNotaServico_Itens.Post;
      end;

      if (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '2') or (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '3') then //quando há cobrança de franquia
        prc_Calcular_Franquia;

      fDMCadOS.cdsOS_Servico_Int.Next;
    end;

    //14/05/2015 Incluido os serviços extras
    //11/07/2016
    prc_Gerar_Servico_Extra_NFSe;
    //***********************

    if not(fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert]) then
      fDMCadNotaServico.cdsNotaServico.Edit;

    fDMCadNotaServico.prc_Recalcular;
    fDMCadNotaServico.prc_Calcular_Impostos;

    //Parcelas
    //11/04/2016 If colocado para respeitar a opção da condição de pagamento quando o dia de vencimento estiver zerado nos contratos
    if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > 0 then
    begin
      fDMCadNotaServico.CDSNotaServico_Parc.Insert;
      fDMCadNotaServico.CDSNotaServico_ParcID.AsInteger   := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
      fDMCadNotaServico.CDSNotaServico_ParcITEM.AsInteger := 1;
      //28/07/2014 = Foi incluida a opção para calcular automatico o vencimento
      //fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime := EncodeDate(CurrencyEdit1.AsInteger,ComboBox2.ItemIndex+1,vDia);
      if fDMCadOS.cdsOSOPCAO_VENCIMENTO_MREF.AsString = 'S' then
      begin
        vDias_Mes := DaysInAMonth(ceAno.AsInteger,ComboBox3.ItemIndex+1);
        if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
          vDia := vDias_Mes
        else
          vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
        fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime := EncodeDate(ceAno.AsInteger,ComboBox3.ItemIndex+1,vDia);
      end
      else
      begin
        vMes := (ComboBox3.ItemIndex+1) + 1;
        vAno := ceAno.AsInteger;
        if vMes > 12 then
        begin
          vMes := 1;
          vAno := vAno + 1;
        end;
        vDias_Mes := DaysInAMonth(vAno,vMes);
        if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
          vDia := vDias_Mes
        else
          vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
        fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime := EncodeDate(vAno,vMes,vDia);
      end;
    end;

    vGerar_Parc := True;
    if fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0 then
    begin
      if fDMCadNotaServico.cdsCondPgto.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger,[loCaseInsensitive]) then
      begin
        if ((fDMCadNotaServico.cdsCondPgto_Dia.RecordCount > 1)) or
           ((fDMCadOS.qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C') and (fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger <= 0)) then
        //if (fDMCadNotaServico.cdsCondPgto_Dia.RecordCount > 1) or (fDMCadOS.qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C') then
        begin
          if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > 0 then
          begin
            fDMCadNotaServico.cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime;
            fDMCadNotaServico.CDSNotaServico_Parc.Cancel;
          end
          else
            fDMCadNotaServico.cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime;

          if not fDMCadNotaServico.fnc_Gerar_NotaServico_Parc then
            MessageDlg(fDMCadNotaServico.vMsgErroParc, mtError, [mbOk], 0)
          else
            vGerar_Parc := False;
        end;
      end;
    end;
    //aqui testar
    if (vGerar_Parc) and (fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > 0) then
    begin
      fDMCadNotaServico.CDSNotaServico_ParcVLR_VENCIMENTO.AsFloat := fDMCadNotaServico.cdsNotaServicoVLR_DUPLICATA.AsFloat;
      if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
        fDMCadNotaServico.CDSNotaServico_ParcID_TIPOCOBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
      if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
        fDMCadNotaServico.CDSNotaServico_ParcID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
      fDMCadNotaServico.CDSNotaServico_Parc.Post;
    end;

    if fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert] then
      fDMCadNotaServico.cdsNotaServico.Post;

    fDMCadNotaServico.CDSNotaServico_Parc.First;
    while not fDMCadNotaServico.CDSNotaServico_Parc.Eof do
    begin
      fDMCadNotaServico.Gravar_Duplicata('R','N',fDMCadNotaServico.cdsNotaServico_ParcITEM.AsInteger,
                                         fDMCadNotaServico.cdsNotaServico_ParcVLR_VENCIMENTO.AsFloat,
                                         fDMCadNotaServico.cdsNotaServico_ParcDTVENCIMENTO.AsDateTime,'');
      fDMCadNotaServico.CDSNotaServico_Parc.Next;
    end;

    fDMCadNotaServico.cdsNotaServico.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

    vContador_NFSe := vContador_NFSe + 1;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
  fDMCadOS_TAux.mServico_Extra.Filtered := False;
end;

procedure TfrmGerar_NFSe.btnGerar_ReciboClick(Sender: TObject);
var
  vID_Aux : Integer;
begin
  vFilial                 := RxDBLookupCombo1.KeyValue;
  vContador_NFSe          := 0;
  fDMCadOS.vMSGNotaGerada := '';

  prc_Gravar_mServico_Extra;
  fDMCadOS.mOSAux.EmptyDataSet;

  //23/06/2016   agrupando Contratos no Recibo
  if fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S' then
  begin
    fDMCadOS.cdsContrato.First;
    while not fDMCadOS.cdsContrato.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and
         not(fDMCadOS.fnc_Recibo_Gerado(ceAno.AsInteger,ComboBox3.ItemIndex + 1))
         //fDMCadOS.cdsContratoNUM_CONTRATO.AsInteger,
         //fDMCadOS.cdsContratoANO_CONTRATO.AsInteger))
         and (fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger > 0) then
      begin
        vID_Aux := fDMCadOS.cdsContratoID.AsInteger;
        if fDMCadOS.mOSAux.Locate('ID_Cliente;ID_Servico_Padrao;ID_Vendedor;Perc_Comissao;Dia_Vencimento',
                               VarArrayOf([fDMCadOS.cdsContratoID_CLIENTE.AsInteger,fDMCadOS.cdsContratoID_SERVICO.AsInteger,
                                           fDMCadOS.cdsContratoID_VENDEDOR.AsInteger,StrToFloat(FormatFloat('0.0000',
                                           fDMCadOS.cdsContratoPERC_COMISSAO.AsFloat)),fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger]),
                                           [locaseinsensitive]) then
        begin
          vID_Aux := fDMCadOS.mOSAuxID.AsInteger;
        end;
        fDMCadOS.mOSAux.Insert;
        fDMCadOS.mOSAuxID.AsInteger := vID_Aux;
        fDMCadOS.mOSAuxID_Contrato.AsInteger := fDMCadOS.cdsContratoID.AsInteger;
        fDMCadOS.mOSAuxID_Cliente.AsInteger  := fDMCadOS.cdsContratoID_CLIENTE.AsInteger;
        fDMCadOS.mOSAuxID_Servico_Padrao.AsInteger := fDMCadOS.cdsContratoID_SERVICO.AsInteger;
        fDMCadOS.mOSAuxDia_Vencimento.AsInteger    := fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger;
        fDMCadOS.mOSAuxID_Vendedor.AsInteger       := fDMCadOS.cdsContratoID_VENDEDOR.AsInteger;
        fDMCadOS.mOSAuxPerc_Comissao.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMCadOS.cdsContratoPERC_COMISSAO.AsFloat));
        fDMCadOS.mOSAux.Post;
      end;
      fDMCadOS.cdsContrato.Next;
    end;
  end;
  if (fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S') then
  begin
    if not(fDMCadOS.mOSAux.IsEmpty) then   
      prc_Gravar_Recibo_Agr;
  end
  else //*****************
  begin
    fDMCadOS.cdsContrato.First;
    while not fDMCadOS.cdsContrato.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and
         not(fDMCadOS.fnc_Recibo_Gerado(ceAno.AsInteger,ComboBox3.ItemIndex + 1)) then
      begin
        if (fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger > 0) or
           ((fDMCadOS.cdsContratoDIA_VENCIMENTO.AsInteger <= 0) and (fDMCadOS.qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C')) then
          prc_Gravar_Recibo;
      end;
      fDMCadOS.cdsContrato.Next;
    end;
  end;
             
  fDMCadOS_TAux.mServico_Extra.Filtered := False;

  if trim(fDMCadOS.vMSGNotaGerada) <> '' then
    MessageDlg('*** CONTRATOS NÃO GERADOS ***!' +#13+#13 + fDMCadOS.vMSGNotaGerada, mtError, [mbOk], 0)
  else
  if trim(fDMCadOS.vMSGNotaGerada) <> '' then
    MessageDlg('*** CONTRATOS NÃO GERADOS ***!' +#13+#13 + fDMCadOS.vMSGNotaGerada, mtError, [mbOk], 0)
  else
  begin
    if fDMCadOS_TAux.mServico_Extra.RecordCount > 0 then
      MessageDlg('*** Alguns serviços extras não geraram Recibos ***!' +#13, mtInformation, [mbOk], 0);
    MessageDlg('Recibos Gerados, Qtd: ' + IntToStr(vContador_NFSe) , mtInformation, [mbOk], 0);
    prc_Consultar;
    prc_Consultar_Mov_Servico;
  end;
end;

procedure TfrmGerar_NFSe.prc_Gravar_Recibo;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vDia, vMes, vAno: Word;
  vFlag: Boolean;
  vTexto: String;
  vDtInicioDupl : TDateTime;
  vGerar_Parc : Boolean;
begin
  vVlrExtras := 0;
  fDMCadOS.prc_Localizar(fDMCadOS.cdsContratoID.AsInteger);
  if (fDMCadOS.cdsOS.IsEmpty) or (fDMCadOS.cdsOSID.AsInteger <= 0) then
    exit;

  if vFilial <> fDMCadOS.cdsFilialID.AsInteger then
    fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('RECIBO');
    sds.ExecSQL();

    fDMCadRecibo.prc_Inserir;

    fDMCadOS.cdsCliente.Locate('CODIGO',fDMCadOS.cdsContratoID_CLIENTE.AsInteger,[loCaseInsensitive]);

    fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger   := fDMCadOS.cdsContratoID_CLIENTE.AsInteger;
    fDMCadRecibo.cdsReciboDTEMISSAO.AsDateTime   := Date;
    fDMCadRecibo.cdsReciboVLR_TOTAL.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsContratoVLR_SERVICO.AsFloat));
    fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat  := fDMCadRecibo.cdsReciboVLR_TOTAL.AsFloat;
    fDMCadRecibo.cdsReciboID_CONTRATO.Clear;
    if fDMCadOS.cdsOSID_CONDPGTO.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger := fDMCadOS.cdsOSID_CONDPGTO.AsInteger;
    fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString    := 'P';
    fDMCadRecibo.cdsReciboNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
    fDMCadRecibo.cdsReciboANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
    fDMCadRecibo.cdsReciboANO_REF.AsInteger      := ceAno.AsInteger;
    fDMCadRecibo.cdsReciboMES_REF.AsInteger      := ComboBox3.ItemIndex + 1;
    fDMCadRecibo.cdsReciboOBS.AsString           := '';
    fDMCadRecibo.cdsReciboFILIAL.AsInteger       := fDMCadOS.cdsOSFILIAL.AsInteger;
    vTexto := fDMCadOS.cdsOSNUM_CONTRATO.AsString;
    if (fDMCadOS.cdsOSANO_CONTRATO.AsInteger > 0) and (fDMCadOS.cdsOSANO_CONTRATO.AsInteger < 9999) then
      vTexto := fDMCadOS.cdsOSANO_CONTRATO.AsString + '/' + vTexto;
    fDMCadRecibo.cdsReciboOBS.AsString           := 'Valor Referente ao Contrato ' + vTexto + #13 +
                                                    'Mês/Ano Ref: ' + fDMCadRecibo.cdsReciboMES_REF.AsString + '/' +
                                                    fDMCadRecibo.cdsReciboANO_REF.AsString;

    fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.cdsOSID_CONTA_ORCAMENTO.AsInteger;
    if fDMCadOS.cdsOSID_VENDEDOR.AsInteger > 0 then
    begin
      fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger := fDMCadOS.cdsOSID_VENDEDOR.AsInteger;
      fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOSPERC_COMISSAO.AsFloat));
    end;
    if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
    if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
    if fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger
    else
    if fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger > 0 then
      fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger;
    fDMCadRecibo.qProximo_Num.Close;
    fDMCadRecibo.qProximo_Num.Open;
    fDMCadRecibo.cdsReciboNUM_RECIBO.AsInteger := fDMCadRecibo.qProximo_NumNUM_RECIBO.AsInteger + 1;
    fDMCadRecibo.qProximo_Num.Close;

    fDMCadOS.cdsOS_Servico_Int.First;
    while not fDMCadOS.cdsOS_Servico_Int.Eof do
    begin
      //05/07/2016
      if (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '2') or (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '3') then //quando há cobrança de franquia
        prc_Calcular_Franquia;
      //*********
      if StrToFloat(FormatFloat('0.0000',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat)) > 0 then //05/07/2016
      begin
        fDMCadRecibo.prc_Inserir_Itens;
        fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger  := fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger;
        fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString := fDMCadOS.cdsOS_Servico_IntNOME_SERVICO_INT.AsString;
        //05/07/2016  foi colocado para cima, para não inserir quando não possuir valor
        //if (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '2') or (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '3') then //quando há cobrança de franquia
        //  prc_Calcular_Franquia;

        if StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat)) > 0 then
          fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat))
        //30/06/2016
        else
          fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat := 0;
        fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat));
        fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat *
                                                          fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat));

        fDMCadRecibo.cdsRecibo_ItensGERAR_DUPLICATA.AsString := 'S';
        //04/07/2016
        fDMCadRecibo.cdsRecibo_ItensID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
        fDMCadRecibo.cdsRecibo_ItensANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
        fDMCadRecibo.cdsRecibo_ItensNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
        //**************
        fDMCadRecibo.cdsRecibo_Itens.Post;
      end;
      fDMCadOS.cdsOS_Servico_Int.Next;
    end;

    //14/05/2015 Incluido os serviços extras
    //11/07/2016
    prc_Gerar_Servico_Extra_Rec;
    //********************

    if not(fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
      fDMCadRecibo.cdsRecibo.Edit;

    //Parcelas
    if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > 0 then
    begin
      fDMCadRecibo.cdsRecibo_Parc.Insert;
      fDMCadRecibo.cdsRecibo_ParcID.AsInteger   := fDMCadRecibo.cdsReciboID.AsInteger;
      fDMCadRecibo.cdsRecibo_ParcITEM.AsInteger := 1;
      if fDMCadOS.cdsOSOPCAO_VENCIMENTO_MREF.AsString = 'S' then
      begin
        vDias_Mes := DaysInAMonth(ceAno.AsInteger,ComboBox3.ItemIndex+1);
        if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
          vDia := vDias_Mes
        else
          vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
        fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime := EncodeDate(ceAno.AsInteger,ComboBox3.ItemIndex+1,vDia);
      end
      else
      begin
        vMes := (ComboBox3.ItemIndex+1) + 1;
        vAno := ceAno.AsInteger;
        if vMes > 12 then
        begin
          vMes := 1;
          vAno := vAno + 1;
        end;
        vDias_Mes := DaysInAMonth(vAno,vMes);
        if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
          vDia := vDias_Mes
        else
          vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
        fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime := EncodeDate(vAno,vMes,vDia);
      end;
    end;

    vDtInicioDupl := fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime;
    vGerar_Parc   := True;
    if fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0 then
    begin
      if fDMCadRecibo.cdsCondPgto.Locate('ID',fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger,[loCaseInsensitive]) then
      begin
        if ((fDMCadRecibo.cdsCondPgto_Dia.RecordCount > 1)) or
           ((fDMCadOS.qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C') and (fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger <= 0)) then
        begin
          if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > 0 then
          begin
            vDtInicioDupl := fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime;
            fDMCadRecibo.cdsRecibo_Parc.Cancel;
          end
          else
            vDtInicioDupl := fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime;
          if not fDMCadRecibo.fnc_Gerar_Recibo_Parc then
            MessageDlg(fDMCadRecibo.vMsgErroParc, mtError, [mbOk], 0)
          else
            vGerar_Parc := False;
        end;
      end;
    end;
    if vGerar_Parc then
    begin
      fDMCadRecibo.cdsRecibo_ParcVLR_VENCIMENTO.AsFloat  := fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat;
      if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
        fDMCadRecibo.cdsRecibo_ParcID_TIPOCOBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
      if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
        fDMCadRecibo.cdsRecibo_ParcID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
      fDMCadRecibo.cdsRecibo_Parc.Post;
    end;

    if fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert] then
      fDMCadRecibo.cdsRecibo.Post;

    fDMCadRecibo.cdsRecibo_Parc.First;
    while not fDMCadRecibo.cdsRecibo_Parc.Eof do
    begin
      fDMCadRecibo.Gravar_Duplicata('R','N',fDMCadRecibo.cdsRecibo_ParcITEM.AsInteger,
                                            fDMCadRecibo.cdsRecibo_ParcVLR_VENCIMENTO.AsFloat,
                                            fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime,'');
      fDMCadRecibo.cdsRecibo_Parc.Next;
    end;

    fDMCadRecibo.cdsRecibo.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

    vContador_NFSe := vContador_NFSe + 1;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TfrmGerar_NFSe.prc_Consultar_Mov_Servico;
begin
  fDMCadOS.cdsMov_Servico.Close;
  if ComboBox1.ItemIndex = 0 then
  begin
    fDMCadOS.sdsMov_Servico.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
    fDMCadOS.cdsMov_Servico.Open;
  end;
end;

procedure TfrmGerar_NFSe.prc_Gravar_mServico_Extra;
begin
  fDMCadOS_TAux.mServico_Extra.EmptyDataSet;
  fDMCadOS.cdsMov_Servico.First;
  while not fDMCadOS.cdsMov_Servico.Eof do
  begin
    if SMDBGrid2.SelectedRows.CurrentRowSelected then
    begin
      fDMCadOS_TAux.mServico_Extra.Insert;
      fDMCadOS_TAux.mServico_ExtraID_Mov.AsInteger          := fDMCadOS.cdsMov_ServicoID.AsInteger;
      fDMCadOS_TAux.mServico_ExtraID_Servico.AsInteger      := fDMCadOS.cdsMov_ServicoID_SERVICO.AsInteger;
      fDMCadOS_TAux.mServico_ExtraID_Servico_Int.AsInteger  := fDMCadOS.cdsMov_ServicoID_SERVICO_INT.AsInteger;
      fDMCadOS_TAux.mServico_ExtraNome_Servico.AsString     := fDMCadOS.cdsMov_ServicoNOME_SERVICO.AsString;
      fDMCadOS_TAux.mServico_ExtraNome_Servico_Int.AsString := fDMCadOS.cdsMov_ServicoSERVICO_COMPLEMENTO.AsString;
      fDMCadOS_TAux.mServico_ExtraID_Cliente.AsInteger      := fDMCadOS.cdsMov_ServicoID_CLIENTE.AsInteger;
      fDMCadOS_TAux.mServico_ExtraNome_Cliente.AsString     := fDMCadOS.cdsMov_ServicoNOME_CLIENTE.AsString;
      fDMCadOS_TAux.mServico_ExtraQtd.AsFloat               := StrToFLoat(FormatFloat('0.0000',fDMCadOS.cdsMov_ServicoQTD.AsFloat));
      fDMCadOS_TAux.mServico_ExtraVlr_Unitario.AsFloat      := StrToFLoat(FormatFloat('0.0000',fDMCadOS.cdsMov_ServicoVLR_UNITARIO.AsFloat));
      fDMCadOS_TAux.mServico_ExtraVlr_Total.AsFloat         := StrToFLoat(FormatFloat('0.00',fDMCadOS.cdsMov_ServicoVLR_TOTAL.AsFloat));
      fDMCadOS_TAux.mServico_ExtraFilial.AsInteger          := fDMCadOS.cdsMov_ServicoFILIAL.AsInteger;
      fDMCadOS_TAux.mServico_Extra.Post;
    end;
    fDMCadOS.cdsMov_Servico.Next;
  end;
end;

procedure TfrmGerar_NFSe.btnConsumoClick(Sender: TObject);
begin
  frmGerar_NFSe_Consumo := TfrmGerar_NFSe_Consumo.Create(Self);
  frmGerar_NFSe_Consumo.fDMCadOS   := fDMCadOS;
  frmGerar_NFSe_Consumo.vAnoMes    := vAnoMes;
  frmGerar_NFSe_Consumo.vAnoMesAnt := vAnoMesAnt;
  frmGerar_NFSe_Consumo.ShowModal;
end;

procedure TfrmGerar_NFSe.ComboBox3Change(Sender: TObject);
var
  vDataAnt: TDateTime;
  vAno, vMes, vDia: Word;
begin
  vAnoMes  := ceAno.Text + '/' + IntToStr(Combobox3.ItemIndex + 1);
  vDataAnt := EncodeDate(ceAno.AsInteger,ComboBox3.ItemIndex +1,1);
  vDataAnt := IncMonth(vDataAnt,-1);
  DecodeDate(vDataAnt,vAno,vMes,vDia);
  vAnoMesAnt := IntToStr(vAno) + '/' + IntToStr(vMes);
end;

procedure TfrmGerar_NFSe.prc_Calcular_Franquia;
var
  vDescricao: String;
  vValor: Currency;
  vQtd: Integer;
begin
  fDMCadOS.cdsOS_Servico_Int_Mes.Close;
  fDMCadOS.sdsOS_Servico_Int_Mes.ParamByName('ID').AsInteger   := fDMCadOS.cdsOS_Servico_IntID.AsInteger;
  fDMCadOS.sdsOS_Servico_Int_Mes.ParamByName('ITEM').AsInteger := fDMCadOS.cdsOS_Servico_IntItem.AsInteger;
  fDMCadOS.cdsOS_Servico_Int_Mes.Open;
  fDMCadOS.cdsOS_Servico_Int_Mes.IndexFieldNames := 'ID;ITEM;ANO_MES';
  if fDMCadOS.cdsOS_Servico_Int_Mes.FindKey([fDMCadOS.cdsOS_Servico_IntID.AsInteger,
                                             fDMCadOS.cdsOS_Servico_IntItem.AsInteger,vAnoMes]) then
  begin
////////////////////////////////////AQUI FAZER O WHILE DOS CONSUMOS DO MÊS
    if StrToFloat(FormatFloat('0.0000',fDMCadOS.cdsOS_Servico_Int_MesVLR_EXCEDENTE.AsFloat)) > 0 then
    begin
      fDMCadOS_TAux.mServico_Extra.Insert;
      fDMCadOS_TAux.mServico_ExtraID_Mov.AsInteger          := 1;
      fDMCadOS_TAux.mServico_ExtraID_Servico.AsInteger      := fDMCadOS.cdsOSID_SERVICO.AsInteger;
      fDMCadOS_TAux.mServico_ExtraID_Servico_Int.AsInteger  := fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger;
      fDMCadOS_TAux.mServico_ExtraNome_Servico_Int.AsString := 'FRANQUIA MENSAL ' + fDMCadOS.cdsOS_Servico_IntQTD_FRANQUIA.AsString + ' PÁGINAS (TOTAL ' +
                                                               fDMCadOS.cdsOS_Servico_Int_MesQTD_ATUAL.AsString + ' - ' +
                                                               fDMCadOS.cdsOS_Servico_Int_MesQTD_ANT.AsString + ')';
      fDMCadOS_TAux.mServico_ExtraID_Cliente.AsInteger      := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
      vQtd := fDMCadOS.cdsOS_Servico_Int_MesQTD_ATUAL.AsInteger -
              fDMCadOS.cdsOS_Servico_Int_MesQTD_ANT.AsInteger -
              fDMCadOS.cdsOS_Servico_IntQTD_FRANQUIA.AsInteger;
      if vQtd > 0 then
        fDMCadOS_TAux.mServico_ExtraQtd.AsFloat := vQtd
      else
        fDMCadOS_TAux.mServico_ExtraQtd.AsFloat := 0;
      fDMCadOS_TAux.mServico_ExtraVlr_Unitario.AsFloat := StrToFLoat(FormatFloat('0.0000',fDMCadOS.cdsOS_Servico_IntVLR_UNIT_EXCEDENTE.AsFloat));
      fDMCadOS_TAux.mServico_ExtraVlr_Total.AsFloat    := StrToFLoat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat +
                                                                                        fDMCadOS.cdsOS_Servico_Int_MesVLR_EXCEDENTE.AsFloat));
      fDMCadOS_TAux.mServico_ExtraFilial.AsInteger     := fDMCadOS.cdsOSFILIAL.AsInteger;
      fDMCadOS_TAux.mServico_Extra.Post;
    end;
//////////////////////////////////////////////

{    vDescricao := 'VALOR REF. A PARCELA DO CONTRATO DE LOCAÇÃO ' + fDMCadOS.cdsContratoNUM_CONTRATO.AsString +
                  '/' + fDMCadOS.cdsContratoANO_CONTRATO.AsString + '. ' +
                  'FRANQUIA MENSAL ' + fDMCadOS.cdsOS_Servico_IntQTD_FRANQUIA.AsString + ' PÁGINAS (TOTAL ' +
                  fDMCadOS.cdsOS_Servico_Int_MesQTD_INFORMADA.AsString + ')';
    vValor     := fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat + fDMCadOS.cdsOS_Servico_Int_MesVLR_EXCEDENTE.AsFloat;
   ShowMessage(vDescricao + ' Valor ' + FormatFloat('0.00',vValor));
}
  end;
end;

procedure TfrmGerar_NFSe.prc_Gravar_NFSe_Agr;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vDias_Mes: Integer;
  vDia: Integer;
  vMes: Integer;
  vFlag: Boolean;
  vAno: Integer;
  vInserir : Boolean;
  vIDAux: Integer;
begin
  vVlrExtras := 0;
  if vFilial <> fDMCadOS.cdsFilialID.AsInteger then
    fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  fDMCadOS.mOSAux.IndexFieldNames := 'ID;ID_CONTRATO';

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' + 'WHERE TABELA = ' + QuotedStr('NOTASERVICO');
    sds.ExecSQL();

    vIDAux := 0;
    vInserir := True;
    fDMCadOS.mOSAux.First;
    while not fDMCadOS.mOSAux.Eof do
    begin
      //05/12/2016
      //fDMCadOS.prc_Localizar(fDMCadOS.mOSAuxID_Contrato.AsInteger);
      vInserir := (vIDAux <> fDMCadOS.mOSAuxID.AsInteger);
      if vInserir then
      begin
        if vIDAux > 0 then
        begin
          if not(fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert]) then
            fDMCadNotaServico.cdsNotaServico.Edit;
          fDMCadNotaServico.prc_Recalcular;
          fDMCadNotaServico.prc_Calcular_Impostos;
          prc_Gravar_NFSe_Parc_Agr;
          if fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert] then
            fDMCadNotaServico.cdsNotaServico.Post;
          fDMCadNotaServico.CDSNotaServico_Parc.First;
          while not fDMCadNotaServico.CDSNotaServico_Parc.Eof do
          begin
            fDMCadNotaServico.Gravar_Duplicata('R','N',fDMCadNotaServico.cdsNotaServico_ParcITEM.AsInteger,
                                             fDMCadNotaServico.cdsNotaServico_ParcVLR_VENCIMENTO.AsFloat,
                                             fDMCadNotaServico.cdsNotaServico_ParcDTVENCIMENTO.AsDateTime,'');
            fDMCadNotaServico.cdsNotaServico_Parc.Next;
          end;
          fDMCadNotaServico.cdsNotaServico.ApplyUpdates(0);
        end;
        fDMCadOS.prc_Localizar(fDMCadOS.mOSAuxID_Contrato.AsInteger);
        prc_Inserir_NotaServico;
        vContador_NFSe := vContador_NFSe + 1;
      end
      else
        fDMCadOS.prc_Localizar(fDMCadOS.mOSAuxID_Contrato.AsInteger);
      fDMCadNotaServico.prc_Recalcular;
      fDMCadNotaServico.prc_Calcular_Impostos;
      if not(fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert]) then
        fDMCadNotaServico.cdsNotaServico.Edit;
      fDMCadOS.cdsOS_Servico_Int.First;
      while not fDMCadOS.cdsOS_Servico_Int.Eof do
      begin
        if (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '2') or (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '3') then //quando há cobrança de franquia
          prc_Calcular_Franquia;
        if StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat)) > 0 then
          prc_Gravar_NFSe_Itens_Agr;
        fDMCadOS.cdsOS_Servico_Int.Next;
      end;
      //11/07/2016
      prc_Gerar_Servico_Extra_NFSe;
      //********************

      vIDAux := fDMCadOS.mOSAuxID.AsInteger;
      prc_Gravar_NFSe_Contrato_Agr;
      fDMCadOS.mOSAux.Next;
    end;
    if vIDAux > 0 then
    begin
      if not(fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert]) then
        fDMCadNotaServico.cdsNotaServico.Edit;
      fDMCadNotaServico.prc_Recalcular;
      fDMCadNotaServico.prc_Calcular_Impostos;
      prc_Gravar_NFSe_Parc_Agr;
      fDMCadNotaServico.CDSNotaServico_Parc.First;
      while not fDMCadNotaServico.CDSNotaServico_Parc.Eof do
      begin
        fDMCadNotaServico.Gravar_Duplicata('R','N',fDMCadNotaServico.cdsNotaServico_ParcITEM.AsInteger,
                                           fDMCadNotaServico.cdsNotaServico_ParcVLR_VENCIMENTO.AsFloat,
                                           fDMCadNotaServico.cdsNotaServico_ParcDTVENCIMENTO.AsDateTime,'');
        fDMCadNotaServico.CDSNotaServico_Parc.Next;
      end;
    end;
    if fDMCadNotaServico.cdsNotaServico.State in [dsEdit,dsInsert] then
      fDMCadNotaServico.cdsNotaServico.Post;
    fDMCadNotaServico.cdsNotaServico.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TfrmGerar_NFSe.prc_Gravar_NFSe_Itens_Agr;
begin
  fDMCadNotaServico.prc_Inserir_Itens;
  fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat        := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensGERAR_DUPLICATA.AsString    := vGerar_Dup;
  fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger    := fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString   := fDMCadOS.cdsOS_Servico_IntNOME_SERVICO_INT.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensSOMAR_DIMINUIR.AsString     := fDMCadOS.cdsOS_Servico_IntSOMAR_DIMINUIR.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_INSS.AsString      := fDMCadOS.cdsOS_Servico_IntCALCULAR_INSS.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_IR.AsString        := fDMCadOS.cdsOS_Servico_IntCALCULAR_IR.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_ISSQN.AsString     := fDMCadOS.cdsOS_Servico_IntCALCULAR_ISSQN.AsString;
  fDMCadNotaServico.cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString := fDMCadOS.cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString;

  if StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat)) > 0 then
    fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat));
  fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',
                                                             fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat *
                                                             fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat));

  if fDMCadNotaServico.cdsServico_IntID.AsInteger <> fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger then
    fDMCadNotaServico.cdsServico_Int.Locate('ID',fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaServico.cdsServicoID.AsInteger <> fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger then
    fDMCadNotaServico.cdsServico.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,[loCaseInsensitive]);

  if (fDMCadNotaServico.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P') or
     (copy(fDMCadNotaServico.cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'P') then
  begin
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_ESTADUAL.AsFloat));
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_FEDERAL.AsFloat));
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_MUNICIPAL.AsFloat));
  end
  else
  begin
    if trim(fDMCadNotaServico.cdsServico_IntCODIGO_NBS.AsString) <> '' then
      fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServico_IntCODIGO_NBS.AsString,'I')
    else
    if trim(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString) <> '' then
      fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString,'I')
    else
    begin
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO.AsFloat           := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',0));
    end;
  end;
  //04/07/2016
  fDMCadNotaServico.cdsNotaServico_ItensID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ItensNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
  //***************
  fDMCadNotaServico.cdsNotaServico_Itens.Post;
end;

procedure TfrmGerar_NFSe.prc_Inserir_NotaServico;
begin
  fDMCadNotaServico.prc_Inserir('');

  fDMCadOS.cdsCliente.Locate('CODIGO',fDMCadOS.cdsContratoID_CLIENTE.AsInteger,[loCaseInsensitive]);

  fDMCadNotaServico.cdsNotaServicoID_NATUREZA.AsInteger         := fDMCadOS.cdsOSID_NATUREZA.AsInteger;
  fDMCadNotaServico.cdsNotaServicoISS_RETIDO.AsString           := fDMCadOS.cdsOSRETEM_ISS.AsString;
  fDMCadNotaServico.cdsNotaServicoPERC_ALIQUOTA.AsFloat         := fDMCadOS.cdsOSPERC_ISS.AsFloat;
  fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger          := fDMCadOS.cdsOSID_SERVICO.AsInteger;
  fDMCadNotaServico.cdsNotaServicoDISCRIMINACAO.Value           := fDMCadOS.cdsOSDISCRIMINACAO.Value;
  fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger         := fDMCadOS.cdsOSID_CONDPGTO.AsInteger;
  fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger    := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
  fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString           := 'P';
  fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger          := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
  fDMCadNotaServico.cdsNotaServicoID_BANCO.AsInteger            := fDMCadOS.cdsOSID_CONTA.AsInteger;
  fDMCadNotaServico.cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime;
  fDMCadNotaServico.cdsNotaServicoHOMOLOGACAO.AsString          := 'N';
  fDMCadNotaServico.cdsNotaServicoID_CONTA.AsInteger            := fDMCadOS.cdsOSID_CONTA.AsInteger;
  fDMCadNotaServico.cdsNotaServicoCNAE_NFSE.AsString            := fDMCadOS.cdsOSCNAE.AsString;
  fDMCadNotaServico.cdsNotaServicoRETEM_CSLL.AsString           := fDMCadOS.cdsOSRETEM_CSLL.AsString;
  fDMCadNotaServico.cdsNotaServicoRETEM_PISCOFINS.AsString      := fDMCadOS.cdsOSRETEM_PISCOFINS.AsString;
  fDMCadNotaServico.cdsNotaServicoRETEM_INSS.AsString           := fDMCadOS.cdsOSRETEM_INSS.AsString;
  fDMCadNotaServico.cdsNotaServicoID_ATIVIDADE_CID.AsInteger    := fDMCadOS.cdsOSID_ATIVIDADE_CID.AsInteger;
  fDMCadNotaServico.cdsNotaServicoPERC_INSS.AsFloat             := fDMCadOS.cdsOSPERC_INSS.AsFloat;
  fDMCadNotaServico.cdsNotaServicoPERC_IR.AsFloat               := fDMCadOS.cdsOSPERC_IR.AsFloat;
  fDMCadNotaServico.cdsNotaServicoDIMINUIR_RETENCAO.AsString    := 'S';
  fDMCadNotaServico.cdsNotaServicoEMAIL_ENVIADO.AsString        := 'N';
  fDMCadNotaServico.cdsNotaServicoPERC_REDUCAO_INSS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsClientePERC_REDUCAO_INSS.AsFloat));
  fDMCadNotaServico.cdsNotaServicoANO_REF.AsInteger             := ceAno.AsInteger;
  fDMCadNotaServico.cdsNotaServicoMES_REF.AsInteger             := ComboBox3.ItemIndex + 1;
  fDMCadNotaServico.cdsNotaServicoID_CONTRATO.AsInteger         := fDMCadOS.cdsOSID.AsInteger;
  fDMCadNotaServico.cdsNotaServicoNUM_CONTRATO.AsInteger        := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
  fDMCadNotaServico.cdsNotaServicoANO_CONTRATO.AsInteger        := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
  fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger  := fDMCadOS.cdsOSID_CONTA_ORCAMENTO.AsInteger;
  if fDMCadOS.cdsOSID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadNotaServico.cdsNotaServicoID_VENDEDOR.AsInteger := fDMCadOS.cdsOSID_VENDEDOR.AsInteger;
    fDMCadNotaServico.cdsNotaServicoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOSPERC_COMISSAO.AsFloat));
  end;
  if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
    fDMCadNotaServico.cdsNotaServicoID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
  if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
    fDMCadNotaServico.cdsNotaServicoID_TIPO_COBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;

  if fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger > 0 then
    fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger
  else
  if fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger > 0 then
    fDMCadNotaServico.cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger;

  if fDMCadNotaServico.cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM' then
  begin
    fDMCadNotaServico.qProximaNota.Close;
    fDMCadNotaServico.qProximaNota.ParamByName('FILIAL').AsInteger := fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger;
    fDMCadNotaServico.qProximaNota.ParamByName('SERIE').AsString   := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
    fDMCadNotaServico.qProximaNota.Open;
    fDMCadNotaServico.cdsNotaServicoNUMNOTA.AsInteger := fDMCadNotaServico.qProximaNotaNUMNOTA.AsInteger + 1;
    fDMCadNotaServico.cdsNotaServicoSERIE.AsString    := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
  end
  else
  begin
    fDMCadNotaServico.qProximaRPS.Close;
    fDMCadNotaServico.qProximaRPS.ParamByName('FILIAL').AsInteger := fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger;
    fDMCadNotaServico.qProximaRPS.ParamByName('SERIE').AsString   := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
    fDMCadNotaServico.qProximaRPS.Open;
    fDMCadNotaServico.cdsNotaServicoNUMRPS.AsInteger := fDMCadNotaServico.qProximaRPSNUMRPS.AsInteger + 1;
    fDMCadNotaServico.cdsNotaServicoSERIE.AsString   := fDMCadOS.cdsFilialSERIE_NFSE.AsString;
    fDMCadNotaServico.qProximaRPS.Close;
  end;

  vGerar_Dup := 'S';
  if (fDMCadOS.qParametrosUSA_RECIBO_NFSE.AsString = 'S') and not(ckRecibo.Checked) then
  begin
    if fDMCadOS.fnc_Recibo_Gerado(ceAno.AsInteger,ComboBox3.ItemIndex + 1) then
      vGerar_Dup := 'N';
  end;
  fDMCadNotaServico.cdsServico.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,[loCaseInsensitive]);
  fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString,'G');
end;

procedure TfrmGerar_NFSe.prc_Gravar_NFSe_Parc_Agr;
var
  vDia: Integer;
  vMes: Integer;
  vAno: Integer;
  vGerar_Parc : Boolean;
begin
  fDMCadNotaServico.CDSNotaServico_Parc.Insert;
  fDMCadNotaServico.CDSNotaServico_ParcID.AsInteger   := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
  fDMCadNotaServico.CDSNotaServico_ParcITEM.AsInteger := 1;

  if fDMCadOS.cdsOSOPCAO_VENCIMENTO_MREF.AsString = 'S' then
  begin
    vDias_Mes := DaysInAMonth(ceAno.AsInteger,ComboBox3.ItemIndex+1);
    if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
      vDia := vDias_Mes
    else
      vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
    fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime := EncodeDate(ceAno.AsInteger,ComboBox3.ItemIndex+1,vDia);
  end
  else
  begin
    vMes := (ComboBox3.ItemIndex+1) + 1;
    vAno := ceAno.AsInteger;
    if vMes > 12 then
    begin
      vMes := 1;
      vAno := vAno + 1;
    end;
    vDias_Mes := DaysInAMonth(vAno,vMes);
    if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
      vDia := vDias_Mes
    else
      vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
    fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime := EncodeDate(vAno,vMes,vDia);
  end;

  vGerar_Parc := True;
  if fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger > 0 then
  begin
    if fDMCadNotaServico.cdsCondPgto.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger,[loCaseInsensitive]) then
    begin
      if fDMCadNotaServico.cdsCondPgto_Dia.RecordCount > 1 then
      begin
        fDMCadNotaServico.cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime;
        fDMCadNotaServico.CDSNotaServico_Parc.Cancel;
        if not fDMCadNotaServico.fnc_Gerar_NotaServico_Parc then
          MessageDlg(fDMCadNotaServico.vMsgErroParc, mtError, [mbOk], 0)
        else
          vGerar_Parc := False;
      end;
    end;
  end;
  if vGerar_Parc then
  begin
    fDMCadNotaServico.CDSNotaServico_ParcVLR_VENCIMENTO.AsFloat := fDMCadNotaServico.cdsNotaServicoVLR_DUPLICATA.AsFloat;
    if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
      fDMCadNotaServico.CDSNotaServico_ParcID_TIPOCOBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
    if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
      fDMCadNotaServico.CDSNotaServico_ParcID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
    fDMCadNotaServico.CDSNotaServico_Parc.Post;
  end;
end;

procedure TfrmGerar_NFSe.prc_Gravar_NFSe_Contrato_Agr;
begin
  fDMCadNotaServico.cdsNotaServico_Contrato.Insert;
  fDMCadNotaServico.cdsNotaServico_ContratoID.AsInteger := fDMCadNotaServico.cdsNotaServicoID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ContratoID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ContratoNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ContratoANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ContratoANO_REF.AsInteger      := ceAno.AsInteger;
  fDMCadNotaServico.cdsNotaServico_ContratoMES_REF.AsInteger      := ComboBox3.ItemIndex + 1;
  fDMCadNotaServico.cdsNotaServico_ContratoSTATUS_RPS.AsString    := '1';
  fDMCadNotaServico.cdsNotaServico_Contrato.Post;
end;

procedure TfrmGerar_NFSe.prc_Gravar_Recibo_Agr;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vDias_Mes: Integer;
  vDia: Integer;
  vMes: Integer;
  vFlag: Boolean;
  vAno: Integer;
  vInserir : Boolean;
  vIDAux: Integer;
begin
  vVlrExtras := 0;
  if vFilial <> fDMCadOS.cdsFilialID.AsInteger then
    fDMCadOS.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  fDMCadOS.mOSAux.IndexFieldNames := 'ID;ID_CONTRATO';

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('RECIBO');
    sds.ExecSQL();

    vIDAux := 0;
    vInserir := True;
    fDMCadOS.mOSAux.First;
    while not fDMCadOS.mOSAux.Eof do
    begin
      fDMCadOS.prc_Localizar(fDMCadOS.mOSAuxID_Contrato.AsInteger);
      vInserir := (vIDAux <> fDMCadOS.mOSAuxID.AsInteger);
      if vInserir then
      begin
        if vIDAux > 0 then
        begin
          if not(fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
            fDMCadRecibo.cdsRecibo.Edit;
          fDMCadRecibo.prc_Recalcular;
          //fDMCadNotaServico.prc_Calcular_Impostos;
          prc_Gravar_Recibo_Parc_Agr;
          if fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert] then
            fDMCadRecibo.cdsRecibo.Post;
          prc_Monta_OBS_Recibo;
          fDMCadRecibo.cdsRecibo_Parc.First;
          while not fDMCadRecibo.cdsRecibo_Parc.Eof do
          begin
            fDMCadRecibo.Gravar_Duplicata('R','N',fDMCadRecibo.cdsRecibo_ParcITEM.AsInteger,
                                             fDMCadRecibo.cdsRecibo_ParcVLR_VENCIMENTO.AsFloat,
                                             fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime,'');
            fDMCadRecibo.cdsRecibo_Parc.Next;
          end;
          fDMCadRecibo.cdsRecibo.ApplyUpdates(0);
        end;
        prc_Inserir_Recibo;
        vContador_NFSe := vContador_NFSe + 1;
      end;
      fDMCadRecibo.prc_Recalcular;
      //fDMCadNotaServico.prc_Calcular_Impostos;
      if not(fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
        fDMCadRecibo.cdsRecibo.Edit;
      fDMCadOS.cdsOS_Servico_Int.First;
      while not fDMCadOS.cdsOS_Servico_Int.Eof do
      begin
        //11/07/2016
        if (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '2') or (fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString = '3') then //quando há cobrança de franquia
          prc_Calcular_Franquia;
        if StrToFloat(FormatFloat('0.0000',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat)) > 0 then
          prc_Gravar_Recibo_Itens_Agr;
        fDMCadOS.cdsOS_Servico_Int.Next;
      end;
      //11/07/2016
      prc_Gerar_Servico_Extra_Rec;
      //***************
      vIDAux := fDMCadOS.mOSAuxID.AsInteger;
      prc_Gravar_Recibo_Contrato_Agr;
      fDMCadOS.mOSAux.Next;
    end;

    if vIDAux > 0 then
    begin
      if not(fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
        fDMCadRecibo.cdsRecibo.Edit;
      fDMCadRecibo.prc_Recalcular;
      //fDMCadNotaServico.prc_Calcular_Impostos;
      prc_Gravar_Recibo_Parc_Agr;
       prc_Monta_OBS_Recibo;
      fDMCadRecibo.cdsRecibo_Parc.First;
      while not fDMCadRecibo.cdsRecibo_Parc.Eof do
      begin
        fDMCadRecibo.Gravar_Duplicata('R','N',fDMCadRecibo.cdsRecibo_ParcITEM.AsInteger,
                                           fDMCadRecibo.cdsRecibo_ParcVLR_VENCIMENTO.AsFloat,
                                           fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime,'');
        fDMCadRecibo.cdsRecibo_Parc.Next;
      end;
    end;
    if fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert] then
      fDMCadRecibo.cdsRecibo.Post;
    fDMCadRecibo.cdsRecibo.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TfrmGerar_NFSe.prc_Gravar_Recibo_Parc_Agr;
var
  vDia: Integer;
  vMes: Integer;
  vAno: Integer;
  vGerar_Parc : Boolean;
begin
  fDMCadRecibo.cdsRecibo_Parc.Insert;
  fDMCadRecibo.cdsRecibo_ParcID.AsInteger := fDMCadRecibo.cdsReciboID.AsInteger;
  fDMCadRecibo.cdsRecibo_ParcITEM.AsInteger := 1;
  if fDMCadOS.cdsOSOPCAO_VENCIMENTO_MREF.AsString = 'S' then
  begin
    vDias_Mes := DaysInAMonth(ceAno.AsInteger,ComboBox3.ItemIndex+1);
    if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
      vDia := vDias_Mes
    else
      vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
    fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime := EncodeDate(ceAno.AsInteger,ComboBox3.ItemIndex+1,vDia);
  end
  else
  begin
    vMes := (ComboBox3.ItemIndex+1) + 1;
    vAno := ceAno.AsInteger;
    if vMes > 12 then
    begin
      vMes := 1;
      vAno := vAno + 1;
    end;
    vDias_Mes := DaysInAMonth(vAno,vMes);
    if fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger > vDias_Mes then
      vDia := vDias_Mes
    else
      vDia := fDMCadOS.cdsOSDIA_VENCIMENTO.AsInteger;
    fDMCadRecibo.cdsRecibo_ParcDTVENCIMENTO.AsDateTime := EncodeDate(vAno,vMes,vDia);
  end;

  vGerar_Parc := True;
  if fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger > 0 then
  begin
    if fDMCadRecibo.cdsCondPgto.Locate('ID',fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger,[loCaseInsensitive]) then
    begin
      if fDMCadRecibo.cdsCondPgto_Dia.RecordCount > 1 then
      begin
        //fDMCadRecibo.cdsRecibo fDMCadNotaServico.cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := fDMCadNotaServico.CDSNotaServico_ParcDTVENCIMENTO.AsDateTime;
        fDMCadRecibo.cdsRecibo_Parc.Cancel;
        if not fDMCadRecibo.fnc_Gerar_Recibo_Parc then
          MessageDlg(fDMCadRecibo.vMsgErroParc, mtError, [mbOk], 0)
        else
          vGerar_Parc := False;
      end;
    end;
  end;
  if vGerar_Parc then
  begin
    fDMCadRecibo.cdsRecibo_ParcVLR_VENCIMENTO.AsFloat := fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat;
    if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
      fDMCadRecibo.cdsRecibo_ParcID_TIPOCOBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
    if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
      fDMCadRecibo.cdsRecibo_ParcID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
    fDMCadRecibo.cdsRecibo_Parc.Post;
  end;
end;

procedure TfrmGerar_NFSe.prc_Inserir_Recibo;
begin
  fDMCadRecibo.prc_Inserir('');

  fDMCadOS.cdsCliente.Locate('CODIGO',fDMCadOS.cdsContratoID_CLIENTE.AsInteger,[loCaseInsensitive]);

  fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger         := fDMCadOS.cdsOSID_CONDPGTO.AsInteger;
  fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString           := 'P';
  fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger          := fDMCadOS.cdsOSID_CLIENTE.AsInteger;
  fDMCadRecibo.cdsReciboANO_REF.AsInteger             := ceAno.AsInteger;
  fDMCadRecibo.cdsReciboMES_REF.AsInteger             := ComboBox3.ItemIndex + 1;

  if fDMCadOS.qParametros_SerAGRUPA_CONTRATO_NFSE.AsString <> 'S' then
  begin
    fDMCadRecibo.cdsReciboID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
    fDMCadRecibo.cdsReciboNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
    fDMCadRecibo.cdsReciboANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
  end;
  fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger  := fDMCadOS.cdsOSID_CONTA_ORCAMENTO.AsInteger;
  if fDMCadOS.cdsOSID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger := fDMCadOS.cdsOSID_VENDEDOR.AsInteger;
    fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOSPERC_COMISSAO.AsFloat));
  end;
  if fDMCadOS.cdsOSID_CONTA.AsInteger > 0 then
    fDMCadRecibo.cdsReciboID_CONTA.AsInteger := fDMCadOS.cdsOSID_CONTA.AsInteger;
  if fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
    fDMCadRecibo.cdsReciboID_TIPO_COBRANCA.AsInteger := fDMCadOS.cdsOSID_TIPO_COBRANCA.AsInteger;
  if fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger > 0 then
    fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.cdsClienteCLIENTE_CONTA_ID.AsInteger
  else
  if  fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger > 0 then
    fDMCadRecibo.cdsReciboID_CONTA_ORCAMENTO.AsInteger := fDMCadOS.qParametrosID_CONTA_ORC_SERVICO.AsInteger;

  fDMCadRecibo.qProximo_Num.Close;
  fDMCadRecibo.qProximo_Num.Open;
  fDMCadRecibo.cdsReciboNUM_RECIBO.AsInteger := fDMCadRecibo.qProximo_NumNUM_RECIBO.AsInteger + 1;
  fDMCadRecibo.qProximo_Num.Close;
end;

procedure TfrmGerar_NFSe.prc_Gravar_Recibo_Itens_Agr;
begin
  fDMCadRecibo.prc_Inserir_Itens;
  fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat        := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat));
  fDMCadRecibo.cdsRecibo_ItensGERAR_DUPLICATA.AsString    := vGerar_Dup;
  fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger    := fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger;
  fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString   := fDMCadOS.cdsOS_Servico_IntNOME_SERVICO_INT.AsString;

  if StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat)) > 0 then
    fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadOS.cdsOS_Servico_IntQTD.AsFloat));
  fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',
                                                             fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat *
                                                             fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat));

  //07/04/2016
  fDMCadRecibo.cdsRecibo_ItensID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
  fDMCadRecibo.cdsRecibo_ItensANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
  fDMCadRecibo.cdsRecibo_ItensNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
  //**************

  fDMCadRecibo.cdsRecibo_Itens.Post;
end;

procedure TfrmGerar_NFSe.prc_Gravar_Recibo_Contrato_Agr;
begin
  fDMCadRecibo.cdsRecibo_Contrato.Insert;
  fDMCadRecibo.cdsRecibo_ContratoID.AsInteger := fDMCadRecibo.cdsReciboID.AsInteger;
  fDMCadRecibo.cdsRecibo_ContratoID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
  fDMCadRecibo.cdsRecibo_ContratoNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
  fDMCadRecibo.cdsRecibo_ContratoANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
  fDMCadRecibo.cdsRecibo_ContratoANO_REF.AsInteger      := ceAno.AsInteger;
  fDMCadRecibo.cdsRecibo_ContratoMES_REF.AsInteger      := ComboBox3.ItemIndex + 1;
  fDMCadRecibo.cdsRecibo_Contrato.Post;
end;

procedure TfrmGerar_NFSe.prc_Monta_OBS_Recibo;
var
  vOBSAux : String;
  vTexto : String;
  vContador : Integer;
begin
  vContador := 0;
  vOBSAux := '';
  fDMCadRecibo.cdsRecibo_Contrato.First;
  while not fDMCadRecibo.cdsRecibo_Contrato.Eof do
  begin
    vContador := vContador + 1;
    vTexto    := fDMCadRecibo.cdsRecibo_ContratoNUM_CONTRATO.AsString;
    if (fDMCadRecibo.cdsRecibo_ContratoANO_CONTRATO.AsInteger > 0) and (fDMCadRecibo.cdsRecibo_ContratoANO_CONTRATO.AsInteger < 9999) then
      vTexto := fDMCadRecibo.cdsRecibo_ContratoANO_CONTRATO.AsString + '/' + vTexto;
    if trim(vOBSAux) <> '' then
      vOBSAux := vOBSAux + '  ';
    vOBSAux := vOBSAux + vTexto;
    fDMCadRecibo.cdsRecibo_Contrato.Next;
  end;
  if not(fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
    fDMCadRecibo.cdsRecibo.Edit;
  if vContador > 1 then
    fDMCadRecibo.cdsReciboOBS.AsString := 'Valor Referente aos Contratos ' + vOBSAux
  else
    fDMCadRecibo.cdsReciboOBS.AsString := 'Valor Referente ao Contrato ' + vOBSAux;
  fDMCadRecibo.cdsReciboOBS.AsString := fDMCadRecibo.cdsReciboOBS.AsString + #13 + '  Mês/Ano Ref: '
                                      + fDMCadRecibo.cdsReciboMES_REF.AsString + '/' + fDMCadRecibo.cdsReciboANO_REF.AsString;
  fDMCadRecibo.cdsRecibo.Post;
end;

procedure TfrmGerar_NFSe.prc_Conrole_Tributos_NFSe;
begin
  if fDMCadNotaServico.cdsServico_IntID.AsInteger <> fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger then
    fDMCadNotaServico.cdsServico_Int.Locate('ID',fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaServico.cdsServicoID.AsInteger <> fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger then
    fDMCadNotaServico.cdsServico.Locate('ID',fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaServico.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P') or
     (copy(fDMCadNotaServico.cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'P') then
  begin
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_ESTADUAL.AsFloat));
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_FEDERAL.AsFloat));
    fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServicoPERC_TRIBUTO_MUNICIPAL.AsFloat));
  end
  else
  begin
    if trim(fDMCadNotaServico.cdsServico_IntCODIGO_NBS.AsString) <> '' then
      fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServico_IntCODIGO_NBS.AsString,'I')
    else
    if trim(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString) <> '' then
      fDMCadNotaServico.prc_Busca_IBPT(fDMCadNotaServico.cdsServicoCODIGO_NBS.AsString,'I')
    else
    begin
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO.AsFloat           := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToFloat(FormatFloat('0.00',0));
      fDMCadNotaServico.cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToFloat(FormatFloat('0.00',0));
    end;
  end;
end;

procedure TfrmGerar_NFSe.prc_Gerar_Servico_Extra_Rec;
begin
  fDMCadOS_TAux.mServico_Extra.Filtered   := False;
  fDMCadOS_TAux.mServico_Extra.Filter     := 'ID_Cliente = ' + IntToStr(fDMCadOS.cdsOSID_CLIENTE.AsInteger);
  fDMCadOS_TAux.mServico_Extra.Filtered   := True;
  fDMCadOS_TAux.mServico_Extra.First;
  while not fDMCadOS_TAux.mServico_Extra.Eof do
  begin
    fDMCadRecibo.prc_Inserir_Itens;
    fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger  := fDMCadOS_TAux.mServico_ExtraID_Servico_Int.AsInteger;
    fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString := fDMCadOS_TAux.mServico_ExtraNome_Servico_Int.AsString;
    //30/06/2016
    if StrToFloat(FormatFloat('0.000',fDMCadOS_TAux.mServico_ExtraQtd.AsFloat)) > 0 then
      fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadOS_TAux.mServico_ExtraQtd.AsFloat));
    //else
      //fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat := 1;
    fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadOS_TAux.mServico_ExtraVlr_Unitario.AsFloat));
    fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat        := StrToFloat(FormatFloat('0.00',fDMCadOS_TAux.mServico_ExtraVlr_Unitario.AsFloat * fDMCadOS_TAux.mServico_ExtraQtd.AsFloat));
    fDMCadRecibo.cdsRecibo_ItensGERAR_DUPLICATA.AsString := 'S';
    fDMCadRecibo.cdsRecibo_ItensID_MOV_SERVICO_EXTRA.AsInteger := fDMCadOS_TAux.mServico_ExtraID_Mov.AsInteger;
/////////////
    fDMCadRecibo.cdsReciboVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboVLR_TOTAL.AsFloat + fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat));
    fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsReciboVLR_DUPLICATA.AsFloat + fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat));
/////////////

    //05/07/2016
    fDMCadRecibo.cdsRecibo_ItensID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
    fDMCadRecibo.cdsRecibo_ItensANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
    fDMCadRecibo.cdsRecibo_ItensNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
    //**************

    fDMCadRecibo.cdsRecibo_Itens.Post;
    fDMCadOS_TAux.mServico_Extra.Delete;
  end;
  //*****************
end;

procedure TfrmGerar_NFSe.prc_Gerar_Servico_Extra_NFSe;
begin
  fDMCadOS_TAux.mServico_Extra.Filtered := False;
  fDMCadOS_TAux.mServico_Extra.Filter   := 'ID_Cliente = ' + IntToStr(fDMCadOS.cdsOSID_CLIENTE.AsInteger);
  fDMCadOS_TAux.mServico_Extra.Filtered := True;
  fDMCadOS_TAux.mServico_Extra.First;
  while not fDMCadOS_TAux.mServico_Extra.Eof do
  begin
    //if (fDMCadOS_TAux.mServico_ExtraID_Servico.AsInteger <= 0) and
    //   (fDMCadOS_TAux.mServico_ExtraID_Servico.AsInteger = fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger) then
    if (fDMCadOS_TAux.mServico_ExtraID_Servico.AsInteger = fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger) then
    begin
      fDMCadNotaServico.prc_Inserir_Itens;
      fDMCadNotaServico.cdsNotaServico_ItensVLR_UNITARIO.AsFloat      := StrToFloat(FormatFloat('0.0000',fDMCadOS_TAux.mServico_ExtraVlr_Unitario.AsFloat));
      fDMCadNotaServico.cdsNotaServico_ItensGERAR_DUPLICATA.AsString  := 'S';
      fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger  := fDMCadOS_TAux.mServico_ExtraID_Servico_Int.AsInteger;
      fDMCadNotaServico.cdsNotaServico_ItensNOME_SERVICO_INT.AsString := fDMCadOS_TAux.mServico_ExtraNome_Servico_Int.AsString;
      fDMCadNotaServico.cdsNotaServico_ItensSOMAR_DIMINUIR.AsString   := 'S';
      fDMCadNotaServico.cdsNotaServico_ItensQTD.AsFloat               := StrToFloat(FormatFloat('0.0000',fDMCadOS_TAux.mServico_ExtraQtd.AsFloat));
      fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadOS_TAux.mServico_ExtraVlr_Unitario.AsFloat * fDMCadOS_TAux.mServico_ExtraQtd.AsFloat));
      fDMCadNotaServico.cdsNotaServico_ItensID_MOV_SERVICO_EXTRA.AsInteger := fDMCadOS_TAux.mServico_ExtraID_Mov.AsInteger;
      //05/07/2016
      prc_Conrole_Tributos_NFSe;
      //05/07/2016
      fDMCadNotaServico.cdsNotaServico_ItensID_CONTRATO.AsInteger  := fDMCadOS.cdsOSID.AsInteger;
      fDMCadNotaServico.cdsNotaServico_ItensANO_CONTRATO.AsInteger := fDMCadOS.cdsOSANO_CONTRATO.AsInteger;
      fDMCadNotaServico.cdsNotaServico_ItensNUM_CONTRATO.AsInteger := fDMCadOS.cdsOSNUM_CONTRATO.AsInteger;
      //******************

      fDMCadNotaServico.cdsNotaServico_Itens.Post;
      vVlrExtras := vVlrExtras + fDMCadNotaServico.cdsNotaServico_ItensVLR_TOTAL.AsFloat;

      fDMCadOS_TAux.mServico_Extra.Delete;
    end
    else
      fDMCadOS_TAux.mServico_Extra.Next;
  end;
end;

end.
