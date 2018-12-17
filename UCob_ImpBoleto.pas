unit UCob_ImpBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCob_Eletronica,
  Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, RxLookup, RLBoleto, ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase, ACBRUtil,
  StrUtils, UDMRel;

type
  TfrmCob_ImpBoleto = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCob_Eletronica: TDMCob_Eletronica;
    fDMRel: TDMRel;
    xNossoNum: Integer;
    procedure prc_ConfiguraACBR;
    procedure prc_ImprimeACBR;
    procedure geraCabecalhoAcbr;
    function geraRegistroAcbr: String;
    //procedure prc_Montar_RLBoleto;
  public
    { Public declarations }
    vID_Nota_Cob, vID_Nota_Serv_Cob: Integer;
    vID_Conta: Integer;
    vID_Duplicata_Cob: Integer;
    vIdBanco: Integer;
  end;

var
  frmCob_ImpBoleto: TfrmCob_ImpBoleto;

implementation

uses rsDBUtils, DB, uUtilPadrao, uRelBoletoBanrisul;

{$R *.dfm}

procedure TfrmCob_ImpBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vID_Duplicata_Cob := 0;
  vID_Nota_Cob      := 0;
  vID_Nota_Serv_Cob := 0;
  FreeAndNil(fDMRel);
  Action            := Cafree;
end;

procedure TfrmCob_ImpBoleto.FormCreate(Sender: TObject);
begin
  fDMCob_Eletronica := TDMCob_Eletronica.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCob_Eletronica);
  fDMRel := TDMRel.Create(Self);
end;

procedure TfrmCob_ImpBoleto.FormShow(Sender: TObject);
begin
  fDMCob_Eletronica.prc_Duplicata(vID_Nota_Cob,vID_Duplicata_Cob,0,0,vID_Nota_Serv_Cob,'','',0,0);

  if fDMCob_Eletronica.cdsDuplicataID_CONTA_BOLETO.AsInteger > 0 then
    vID_Conta := fDMCob_Eletronica.cdsDuplicataID_CONTA_BOLETO.AsInteger;

  if vID_Conta <= 0 then
    vID_Conta := fDMCob_Eletronica.qParametrosID_BANCO_REMESSA.AsInteger;

  if vID_Conta > 0 then
    RxDBLookupCombo1.KeyValue := vID_Conta;

  //if trim(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString) <> '' then
  //  RxDBLookupCombo1.ReadOnly := True;

  if not fDMCob_Eletronica.cdsDuplicata.IsEmpty then
    SMDBGrid1.SelectAllClick(Sender);
end;

procedure TfrmCob_ImpBoleto.BitBtn1Click(Sender: TObject);
var
  vGerar: Boolean;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('Banco não foi informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCob_Eletronica.cdsContas.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);

  fDMCob_Eletronica.vNum_Remessa := 0;
  fDMCob_Eletronica.mBoleto.EmptyDataSet;

  fDMCob_Eletronica.cdsFilial.IndexFieldNames := 'ID';
  fDMCob_Eletronica.cdsFilial.FindKey([fDMCob_Eletronica.cdsDuplicataFILIAL.AsInteger]);

  if not fDMCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.IsNull then
  begin
    if trim(fDMCob_Eletronica.cdsContasACBR_LAYOUTREMESSA.AsString) = '' then
    begin
      MessageDlg('Na conta não informado o Layout (CNAB ACBR)!', mtError, [mbOk], 0);
      exit;
    end;

    fDMCob_Eletronica.cdsDuplicata.First;
    while not fDMCob_Eletronica.cdsDuplicata.Eof do
    begin
      if not SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;

      fDmCob_Eletronica.prc_Verificar_Carteira;
      if fDMCob_Eletronica.vGeraRemessa = 'S' then
      begin
        vGerar := True;
        fDMCob_Eletronica.cdsDuplicata.Last;
      end;

      if not vGerar then
      begin
        MessageDlg('Não há títulos selecionados ou carteira não corresponde' + #13 +
                   'à cobrança do banco definido para gerar remessa!', mtError, [mbOk], 0);
        Exit;
      end;
      fDmCob_Eletronica.cdsDuplicata.Next;
    end;
    prc_ImprimeACBR;
    Exit;
  end
  else
  begin
    fDMCob_Eletronica.qFilial.Close;
    fDMCob_Eletronica.qFilial.ParamByName('ID').AsInteger := fDMCob_Eletronica.cdsDuplicataFILIAL.AsInteger;
    fDMCob_Eletronica.qFilial.Open;

    if trim(fDMCob_Eletronica.cdsContasCNAB.AsString) = '' then
    begin
      MessageDlg('Na conta não informado o Layout (CNAB)!', mtError, [mbOk], 0);
      exit;
    end;

    fDMCob_Eletronica.cdsDuplicata.First;
    while not fDMCob_Eletronica.cdsDuplicata.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        fDMCob_Eletronica.prc_Verificar_Carteira;
        if (fDMCob_Eletronica.vGera_NossoNumero = 'S') and (trim(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString) = '') then
          fDMCob_Eletronica.prc_Nosso_Numero
        else
          fDMCob_Eletronica.vNossoNumero := fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString;
        fDMCob_Eletronica.vNossoNumero_Montado := fDMCob_Eletronica.vNossoNumero;
        fDMCob_Eletronica.prc_Gravar_Duplicata('I');

        if trim(fDMCob_Eletronica.vNossoNumero) <> '' then
        begin
          if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BANRISUL400' then
            fDMCob_Eletronica.prc_Gravar_mBoleto
          else
            fDMCob_Eletronica.prc_Montar_RLBoleto('P','I');
        end;
      end;
      fDMCob_Eletronica.cdsDuplicata.Next;
    end;
  end;

  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BANRISUL400' then
  begin
    fRelBoletoBanrisul := TfRelBoletoBanrisul.Create(Self);
    fRelBoletoBanrisul.fDMCob_Eletronica := fDMCob_Eletronica;
    fRelBoletoBanrisul.RLReport1.PreviewModal;
    fRelBoletoBanrisul.RLReport1.Free;
  end
  else
    fDMCob_Eletronica.RLBTitulo1.PreviewModal;
end;

{procedure TfrmCob_ImpBoleto.prc_Montar_RLBoleto;
var
  vAux: String;
  i: Integer;
  vValor: Real;
  vTexto1: String;
  vTexto_Pessoa: String;
begin
  fDMCob_Eletronica.vMemo := TStringList.Create;
  fDMCob_Eletronica.vMemo.Clear;
  case ComboBox1.ItemIndex of
    0: RLBTitulo1.BoletoLayout := blPadrao;
    1: RLBTitulo1.BoletoLayout := blCarne;
  end;

  //Dados do Cedente
  RLBTitulo1.DataProcessamento                   := fDMCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime;;
  RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo  := fDMCob_Eletronica.cdsContasCOD_BANCO.AsString;
  RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := fDMCob_Eletronica.cdsContasAGENCIA.AsString;
  RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := '';
  if trim(fDMCob_Eletronica.cdsContasDIG_AGENCIA.AsString) <> '' then
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := fDMCob_Eletronica.cdsContasDIG_AGENCIA.AsString;
  RLBTitulo1.Cedente.ContaBancaria.NumeroConta := trim(fDMCob_Eletronica.cdsContasNUMCONTA.AsString);                 
  RLBTitulo1.Cedente.ContaBancaria.DigitoConta := Trim(fDMCob_Eletronica.cdsContasDIG_CONTA.AsString);

  RLBTitulo1.Cedente.CodigoCedente             := Trim(Copy(fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString,1,Length(fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString)-1));
  RLBTitulo1.Cedente.DigitoCodigoCedente       := Trim(Copy(fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString,Length(fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString),1));
  RLBTitulo1.Carteira                          := fDMCob_Eletronica.vCod_Carteira;
  if Copy(fDMCob_Eletronica.cdsContasCNAB.AsString,1,6) = 'BRASIL' then
  begin
    RLBTitulo1.Cedente.ContaBancaria.Convenio  := Trim(fDMCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString);
    RLBTitulo1.LayoutNN := lnC7_N10;
  end
  else
  begin
    RLBTitulo1.LayoutNN := lnN11;
  end;
  if trim(fDMCob_Eletronica.cdsContasLOCAL_PAGAMENTO.AsString) <> '' then
    RLBTitulo1.LocalPagamento := fDMCob_Eletronica.cdsContasLOCAL_PAGAMENTO.AsString;

  if not(fDMCob_Eletronica.qFilial.Active) or (fDMCob_Eletronica.qFilialID.AsInteger = fDMCob_Eletronica.cdsDuplicataFILIAL.AsInteger) then
  begin
    fDMCob_Eletronica.qFilial.Close;
    fDMCob_Eletronica.qFilial.ParamByName('ID').AsInteger := fDMCob_Eletronica.cdsDuplicataFILIAL.AsInteger;
    fDMCob_Eletronica.qFilial.Open;
  end;
  if fDMCob_Eletronica.qFilialPESSOA.AsString = 'J' then
  begin
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    vTexto_Pessoa := 'CNPJ:'
  end
  else
  begin
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaFisica;
    vTexto_Pessoa := 'CPF:'
  end;
  RLBTitulo1.Cedente.ContaBancaria.NomeCliente := fDMCob_Eletronica.qFilialNOME.AsString + '  (' + vTexto_Pessoa + fDMCob_Eletronica.qFilialCNPJ_CPF.AsString + ')';
  RLBTitulo1.Cedente.NumeroCPFCGC    := Monta_Numero(fDMCob_Eletronica.qFilialCNPJ_CPF.AsString,14);
  RLBTitulo1.Cedente.Nome            := fDMCob_Eletronica.qFilialNOME.AsString + '  (' + vTexto_Pessoa + fDMCob_Eletronica.qFilialCNPJ_CPF.AsString + ')';
  RLBTitulo1.Cedente.Endereco.Rua    := fDMCob_Eletronica.qFilialENDERECO.AsString + ', ' + fDMCob_Eletronica.qFilialNUM_END.AsString;
  RLBTitulo1.Cedente.Endereco.CEP    := fDMCob_Eletronica.qFilialCEP.AsString;
  RLBTitulo1.Cedente.Endereco.Bairro := fDMCob_Eletronica.qFilialBAIRRO.AsString;
  RLBTitulo1.Cedente.Endereco.Cidade := fDMCob_Eletronica.qFilialCIDADE.AsString;
  RLBTitulo1.Cedente.Endereco.Estado := fDMCob_Eletronica.qFilialUF.AsString;

  //dados do sacado
  RLBTitulo1.Sacado.Nome := fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;

  if trim(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '' then
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString = 'F' then
    begin
      RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      RLBTitulo1.Sacado.NumeroCPFCGC  := Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString,11);
    end
    else
    begin
      RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
      RLBTitulo1.Sacado.NumeroCPFCGC  := Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString,14);
    end;
    RLBTitulo1.Sacado.Endereco.Rua    := fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString + ', ' + fDMCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString;
    vAux := Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP_PGTO.AsString,8);
    RLBTitulo1.Sacado.Endereco.CEP    := vAux;
    RLBTitulo1.Sacado.Endereco.Cidade := fDMCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString;
    RLBTitulo1.Sacado.Endereco.Estado := fDMCob_Eletronica.cdsDuplicataUF_PGTO.AsString;
  end
  else
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA.AsString = 'F' then
    begin
      RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      RLBTitulo1.Sacado.NumeroCPFCGC  := Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString,11);
    end
    else
    begin
      RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
      RLBTitulo1.Sacado.NumeroCPFCGC  := Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString,14);
    end;
    RLBTitulo1.Sacado.Endereco.Rua    := fDMCob_Eletronica.cdsDuplicataENDERECO.AsString + ', ' + fDMCob_Eletronica.cdsDuplicataNUM_END.AsString;
    vAux := Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP.AsString,8);
    RLBTitulo1.Sacado.Endereco.CEP    := vAux;
    RLBTitulo1.Sacado.Endereco.Cidade := fDMCob_Eletronica.cdsDuplicataCIDADE.AsString;
    RLBTitulo1.Sacado.Endereco.Estado := fDMCob_Eletronica.cdsDuplicataUF.AsString;
  end;

  //dados da cobranca
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'CAIXA400' then
    RLBTitulo1.NossoNumero     := copy(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString,1,10)
  else
    RLBTitulo1.NossoNumero     := fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString;
  RLBTitulo1.ValorDocumento  := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat));
  RLBTitulo1.DataDocumento   := fDMCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime;
  RLBTitulo1.DataVencimento  := fDMCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime;
  RLBTitulo1.NumeroDocumento := FormatFloat('000000',fDMCob_Eletronica.cdsDuplicataNUMNOTA.AsInteger) + '/' + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString;

  //Linha Instrução
  fDMCob_Eletronica.prc_Mensagem_Cobranca;
  RLBTitulo1.Instrucoes.Text := fDMCob_Eletronica.vMemo.Text;

  RLBTitulo1.TipoOcorrencia   := toRemessaRegistrar;
  RLBTitulo1.EspecieDocumento := edDuplicataMercantil;
  RLBTitulo1.NossoNumero      := Trim(Edit4.Text);
  RLBTitulo1.ValorDocumento   := StrToCurr(Edit10.Text);
  RLBTitulo1.DataDocumento    := Date;
  RLBTitulo1.DataVencimento   := StrToDate(MaskEdit1.Text);
  RLBTitulo1.NumeroDocumento  := Trim(Edit3.Text);
  RLBTitulo1.Instrucoes.Text  := Memo1.Lines.Text;

  RLBTitulo1.InsertRecord;

  FreeAndNil(fDMCob_Eletronica.vMemo);
end;}

procedure TfrmCob_ImpBoleto.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Close;
  if RxDBLookupCombo1.Value <> '' then
  begin
    vIdBanco := fDmCob_Eletronica.cdsContasID_BANCO.AsInteger;
    fDmCob_Eletronica.sdsCob_Tipo_Cadastro.CommandText := fDmCob_Eletronica.ctCobTpCadastro +
                                                          ' WHERE ID_BANCO = ' + IntToStr(vIdBanco) +
                                                          ' AND TIPO_REG = ''OCO''';
    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Open;
  end;

  if not fDMCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.IsNull then
    prc_ConfiguraACBR;
end;

procedure TfrmCob_ImpBoleto.prc_ConfiguraACBR;
begin
  if fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.IsNull then
  begin
    ShowMessage('Nenhum banco configurado para a cobrança (ACBR)!');
    Exit;
  end;

  if fDmCob_Eletronica.cdsContasACBR_LAYOUTREMESSA.AsString = 'C240' then
    ACBrBoleto1.LayoutRemessa := C240
  else
    ACBrBoleto1.LayoutRemessa := C400;

  case fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger of
     1: ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil;
     2: ACBrBoleto1.Banco.TipoCobranca := cobBancoDoNordeste;
     3: ACBrBoleto1.Banco.TipoCobranca := cobBancoMercantil;
     4: ACBrBoleto1.Banco.TipoCobranca := cobBancoob;
     5: ACBrBoleto1.Banco.TipoCobranca := cobBanestes;
     6: ACBrBoleto1.Banco.TipoCobranca := cobBanrisul;
     7: ACBrBoleto1.Banco.TipoCobranca := cobBicBanco;
     8: ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
     9: ACBrBoleto1.Banco.TipoCobranca := cobBradescoSICOOB;
    10: ACBrBoleto1.Banco.TipoCobranca := cobBRB;
    11: ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica;
    12: ACBrBoleto1.Banco.TipoCobranca := cobCaixaSicob;
    13: ACBrBoleto1.Banco.TipoCobranca := cobHSBC;
    14: ACBrBoleto1.Banco.TipoCobranca := cobItau;
    15: ACBrBoleto1.Banco.TipoCobranca := cobNenhum;
    16: ACBrBoleto1.Banco.TipoCobranca := cobSantander;
    17: ACBrBoleto1.Banco.TipoCobranca := cobSicred;
  end;

  ACBrBoleto1.ACBrBoletoFC.DirLogo  := fDmCob_Eletronica.cdsContasBANCO_LOGO.AsString;
//  ACBrBoleto1.ACBrBoletoFC.ArquivoLogo := fDmCob_Eletronica.cdsContasBANCO_LOGO.AsString;
  ACBrBoleto1.ACBrBoletoFC.Filtro   := fiNenhum;
  ACBrBoleto1.Cedente.Nome          := fDmCob_Eletronica.cdsFilialNOME.AsString;
  ACBrBoleto1.Cedente.CodigoCedente := fDmCob_Eletronica.cdsContasCOD_CEDENTE.AsString;
  ACBrBoleto1.Cedente.Agencia       := fDmCob_Eletronica.cdsContasAGENCIA.AsString;
  ACBrBoleto1.Cedente.AgenciaDigito := fDmCob_Eletronica.cdsContasDIG_AGENCIA.AsString;
  ACBrBoleto1.Cedente.Conta         := fDmCob_Eletronica.cdsContasNUMCONTA.AsString;
  ACBrBoleto1.Cedente.ContaDigito   := fDmCob_Eletronica.cdsContasDIG_CONTA.AsString;
  ACBrBoleto1.Cedente.Convenio      := fDmCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString;
  ACBrBoleto1.Cedente.UF            := fDmCob_Eletronica.cdsFilialUF.AsString;
  ACBrBoleto1.DirArqRemessa         := fDmCob_Eletronica.cdsContasEND_ARQUIVO_REM.AsString;
  ACBrBoleto1.NomeArqRemessa        := 'COB_' + FormatDateTime('YYYYMMDD_HHMMSS',Now)+'.TXT';
end;

procedure TfrmCob_ImpBoleto.prc_ImprimeACBR;
begin
  ACBrBoleto1.ListadeBoletos.Clear;
  fdmCob_Eletronica.buscaNossoNumero;
  fDmCob_Eletronica.cdsDuplicata.First;
  while not fDmCob_Eletronica.cdsDuplicata.Eof do
  begin
    if not SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;
    geraCabecalhoAcbr;

    fDmCob_Eletronica.vNossoNumero := geraRegistroAcbr;
    fDMCob_Eletronica.prc_Gravar_Duplicata('I');

    fDmCob_Eletronica.cdsDuplicata.Next;
  end;

  try
// Atualiza a nosso numero no cadastro do banco
    fDmCob_Eletronica.cdsContas_calculo.Edit;
    fDmCob_Eletronica.cdsContas_calculoSEQ_NOSSONUMERO.AsInteger := fdmCob_Eletronica.xNossoNum;
    fDmCob_Eletronica.cdsContas_calculo.Post;
    fDmCob_Eletronica.cdsContas_calculo.ApplyUpdates(0);

    ACBrBoleto1.Imprimir;
//    ACBrBoleto1.GerarPDF;
  except
    MessageDlg('Erro ao imprimir os boletos. Verifique!',mtWarning,[mbOK],0);
  end;
end;

function TfrmCob_ImpBoleto.geraRegistroAcbr: String;
var
  Titulo: TACBrTitulo;
begin
  Titulo := ACBrBoleto1.CriarTituloNaLista;
  with Titulo do
  begin
    Vencimento        := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime;
    DataDocumento     := fDmCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime;
    NumeroDocumento   := fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + '/' +
                         fDmCob_Eletronica.cdsDuplicataPARCELA.AsString;
//-------------------------
    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.IndexFieldNames := 'ID;ID_BANCO';
    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.FindKey([fDmCob_Eletronica.cdsContasID_ESPECIE.AsInteger,
                                                    fDmCob_Eletronica.cdsContasID_BANCO.AsInteger]);
    EspecieDoc        := fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString;
//-------------------------
    if fDmCob_Eletronica.cdsDuplicataACEITE.AsString = 'SIM' then
      Aceite := atSim
    else
      Aceite := atNao;
    DataProcessamento := Now;
    if not fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.IsNull then
      Carteira := fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString
    else
      Carteira := fDmCob_Eletronica.cdsContasCOD_CARTEIRA.AsString;

    if (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.IsNull) or
       (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString = '') then
    begin
      Inc(fdmCob_Eletronica.xNossoNum);
      NossoNumero := IntToStrZero(fdmCob_Eletronica.xNossoNum,8);
    end
    else
      NossoNumero := IntToStrZero(fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsInteger,8);

    ValorDocumento    := fDmCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
    Sacado.NomeSacado := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
    Sacado.CNPJCPF    := fDmCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString;
    Sacado.Logradouro := fDmCob_Eletronica.cdsDuplicataENDERECO.AsString;
    Sacado.Numero     := fDmCob_Eletronica.cdsDuplicataNUM_END.AsString;
    Sacado.Bairro     := fDmCob_Eletronica.cdsDuplicataBAIRRO.AsString;
    Sacado.Cidade     := fDmCob_Eletronica.cdsDuplicataCIDADE.AsString;
    Sacado.UF         := fDmCob_Eletronica.cdsDuplicataUF.AsString;
    Sacado.CEP        := fDmCob_Eletronica.cdsDuplicataCEP.AsString;
    case AnsiIndexStr(fDmCob_Eletronica.cdsDuplicataPESSOA.AsString,['F','J']) of
      0: Sacado.Pessoa := pFisica;
      1: Sacado.Pessoa := pJuridica;
    end;
    ValorAbatimento   := 0;
    LocalPagamento    := fDmCob_Eletronica.cdsContasLOCAL_PAGAMENTO.AsString;
    ValorMoraJuros    := fDmCob_Eletronica.cdsContasPERC_JUROS.AsCurrency / 100 *
                         fDmCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
    ValorDesconto     := 0;
    ValorAbatimento   := 0;
    DataMoraJuros     := 0;
    DataDesconto      := 0;
    DataAbatimento    := 0;
    DataProtesto      := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime +
                         fDmCob_Eletronica.cdsContasDIAS_PROTESTO.AsInteger;
    PercentualMulta   := fDmCob_Eletronica.cdsContasPERC_MULTA.AsCurrency;
    Mensagem.Text     := fDmCob_Eletronica.cdsContasMENSAGEM_FIXA.AsString;

    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Close;
    fDmCob_Eletronica.sdsCob_Tipo_Cadastro.CommandText := fDmCob_Eletronica.ctCobTpCadastro +
                                                          ' WHERE ID_BANCO = ' + IntToStr(vIdBanco);
    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Open;

    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.IndexFieldNames := 'ID';
    if fDmCob_Eletronica.cdsContasID_INSTRUCAO1.AsInteger > 0 then
    begin
      fDmCob_Eletronica.cdsCob_Tipo_Cadastro.FindKey([fDmCob_Eletronica.cdsContasID_INSTRUCAO1.AsInteger]);
      Instrucao1 := padL(trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString),2,'0');
    end;
    if fDmCob_Eletronica.cdsContasID_INSTRUCAO2.AsInteger > 0 then
    begin
      fDmCob_Eletronica.cdsCob_Tipo_Cadastro.FindKey([fDmCob_Eletronica.cdsContasID_INSTRUCAO2.AsInteger]);
      Instrucao2 := padL(trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString),2,'0');
    end;
    Parcela := fDmCob_Eletronica.cdsDuplicataPARCELA.AsInteger;

    OcorrenciaOriginal.Tipo := toRemessaRegistrar;
  end;

  result := Titulo.NossoNumero;
end;

procedure TfrmCob_ImpBoleto.geraCabecalhoAcbr;
begin
  ACBrBoleto1.Banco.Numero := fDmCob_Eletronica.cdsContasCOD_BANCO.AsInteger;
  ACBrBoleto1.Banco.Nome   := fDmCob_Eletronica.cdsContasNOME_BANCO.AsString;// 'Banco do Estado do Rio Grande do Sul S.A.';

  ACBrBoleto1.Cedente.Agencia           := fDmCob_Eletronica.cdsContasAGENCIA.AsString; // '0785';
  ACBrBoleto1.Cedente.AgenciaDigito     := fDmCob_Eletronica.cdsContasDIG_AGENCIA.AsString;// '1';
  ACBrBoleto1.Cedente.Conta             := fDmCob_Eletronica.cdsContasNUMCONTA.AsString;// '06.022038.0';
  ACBrBoleto1.Cedente.ContaDigito       := fDmCob_Eletronica.cdsContasDIG_CONTA.AsString;// '3';
  ACBrBoleto1.Cedente.CNPJCPF           := fDmCob_Eletronica.cdsFilialCNPJ_CPF.AsString;// '09.348.462/0001-79';
  ACBrBoleto1.Cedente.CodigoCedente     := fDmCob_Eletronica.cdsContasCOD_CEDENTE.AsString;// '0785022038017';
  ACBrBoleto1.Cedente.Logradouro        := fDmCob_Eletronica.cdsFilialENDERECO.AsString;
  ACBrBoleto1.Cedente.Modalidade        := '';
  ACBrBoleto1.Cedente.Nome              := fDmCob_Eletronica.cdsFilialNOME.AsString;
  ACBrBoleto1.Cedente.NumeroRes         := fDmCob_Eletronica.cdsFilialNUM_END.AsString;
  ACBrBoleto1.Cedente.Telefone          := fDmCob_Eletronica.cdsFilialDDD1.AsString + ' ' +
                                           fDmCob_Eletronica.cdsFilialFONE1.AsString;
  ACBrBoleto1.Cedente.TipoInscricao     := pJuridica;
  ACBrBoleto1.Cedente.UF                := fDmCob_Eletronica.cdsFilialUF.AsString;
  ACBrBoleto1.Cedente.Bairro            := fDmCob_Eletronica.cdsFilialBAIRRO.AsString;
  ACBrBoleto1.Cedente.CEP               := fDmCob_Eletronica.cdsFilialCEP.AsString;;
  ACBrBoleto1.Cedente.Cidade            := fDmCob_Eletronica.cdsFilialCIDADE.AsString;;
  ACBrBoleto1.Cedente.CodigoTransmissao := '';
  ACBrBoleto1.Cedente.Complemento       := fDmCob_Eletronica.cdsFilialCOMPLEMENTO_END.AsString;
  ACBrBoleto1.Cedente.Modalidade        := fDmCob_Eletronica.cdsContasVARIACAO_CARTEIRA.AsString;
end;

end.
