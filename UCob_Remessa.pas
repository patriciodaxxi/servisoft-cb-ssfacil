unit UCob_Remessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCob_Eletronica,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, RXDBCtrl, UEscolhe_Filial,
  RLBoleto;

type
  TfrmCob_Remessa = class(TForm)
    Panel3: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    RLBRemessa1: TRLBRemessa;
    CheckBox2: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCob_Eletronica: TDMCob_Eletronica;
    ffrmCadUF: TfrmCadUF;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    vContadorReg: Integer;
    vContadorTit: Integer;
    vVlrTotalTit: Real;
    FR: TextFile;

    procedure prc_Consultar_Duplicatas;

  //Caixa Federal CNAB 400
    procedure prc_Header_Caixa;
    procedure prc_Detalhe_Caixa;
    procedure prc_Trailler_Caixa;

  //Itau CNAB 400
    procedure prc_Header_Itau400;
    procedure prc_Detalhe_Itau400;
    procedure prc_Reg_Avalista_Itau400; //Fazer
    procedure prc_Trailler_Itau400;

  //Banco do Brasil CNAB 400
    procedure prc_Header_Brasil;
    procedure prc_Detalhe_Brasil;
    procedure prc_DetalheEmail_Brasil;
    procedure prc_Trailler_Brasil;

  //Banrisul CNAB 400
    procedure prc_Header_Banrisul400;
    procedure prc_Detalhe_Banrisul400;
    procedure prc_Trailler_Banrisul400;

  //HSBC CNAB 400
    procedure prc_Header_HSBC400;
    procedure prc_Detalhe_HSBC400;
    procedure prc_Trailler_HSBC400;

  //Bradesco CNAB 240
    procedure prc_Header_Bradesco_240;
    procedure prc_Detalhe_Bradesco_Seg_P;
    procedure prc_Detalhe_Bradesco_Seg_Q;
    procedure prc_Detalhe_Bradesco_Seg_R;
    procedure prc_Trailler_Bradesco_240;


    function fnc_Calcular_Juros: Real;
    function fnc_Calcular_Desconto: Real;
  public
    { Public declarations }

  end;

var
  frmCob_Remessa: TfrmCob_Remessa;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, URelRemessa;

{$R *.dfm}

procedure TfrmCob_Remessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCob_Remessa.FormShow(Sender: TObject);
begin
  fDMCob_Eletronica := TDMCob_Eletronica.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCob_Eletronica);
  if fDMCob_Eletronica.cdsFilial.RecordCount <= 1 then
    RxDBLookupCombo1.KeyValue := fDMCob_Eletronica.cdsFilialID.AsInteger;
  if fDMCob_Eletronica.qParametrosID_BANCO_REMESSA.AsInteger > 0 then
    RxDBLookupCombo3.KeyValue := fDMCob_Eletronica.qParametrosID_BANCO_REMESSA.AsInteger;
end;

procedure TfrmCob_Remessa.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCob_Eletronica.vNum_Remessa := 0;
  prc_Consultar_Duplicatas;
end;

procedure TfrmCob_Remessa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCob_Eletronica);
end;

procedure TfrmCob_Remessa.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCob_Remessa.prc_Consultar_Duplicatas;
var
  vComando: String;
begin
  fDMCob_Eletronica.cdsDuplicata.Close;
  vComando := fDMCob_Eletronica.ctDuplicata + ' WHERE DUP.TIPO_ES = ' + QuotedStr('E')
            + ' AND DUP.VLR_RESTANTE > 0';
  if fDMCob_Eletronica.vNum_Remessa > 0 then
    vComando := vComando + ' AND (DUP.NUM_REMESSA = ' + IntToStr(fDMCob_Eletronica.vNum_Remessa) + ')'
  else
  begin
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND DUP.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND DUP.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date));

    case ComboBox1.ItemIndex of
      0: vComando := vComando + ' AND ((DUP.NUM_REMESSA = 0) OR (DUP.NUM_REMESSA IS NULL))';
      1: vComando := vComando + ' AND (DUP.NUM_REMESSA > 0)';
    end;

    if CheckBox1.Checked then
      vComando := vComando + ' AND DUP.IMP_BOLETO = ' + QuotedStr('S');
  end;
  fDMCob_Eletronica.sdsDuplicata.CommandText := vComando;
  fDMCob_Eletronica.cdsDuplicata.Open;
end;

procedure TfrmCob_Remessa.BitBtn1Click(Sender: TObject);
var
  vGerarAux : Boolean;
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(RxDBLookupCombo3.Text) = '' then
  begin
    MessageDlg('*** Banco não informado!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCob_Eletronica.vEnd_Arq_Remessa := fDMCob_Eletronica.Monta_NomeArq(fDMCob_Eletronica.cdsContasEND_ARQUIVO_REM.AsString,fDMCob_Eletronica.cdsContasFILIAL.AsInteger);
  if trim(fDMCob_Eletronica.vEnd_Arq_Remessa) = '' then
  begin
    MessageDlg('*** Endereço do arquivo de remessa não informado!', mtError, [mbOk], 0);
    exit;
  end;
  Panel2.Visible := False;

  //Verificar duplciatas
  vGerarAux := False;
  fDMCob_Eletronica.cdsDuplicata.First;
  while not fDMCob_Eletronica.cdsDuplicata.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDMCob_Eletronica.prc_Verificar_Carteira;
      if fDMCob_Eletronica.vGeraRemessa = 'S' then
      begin
        vGerarAux := True;
        fDMCob_Eletronica.cdsDuplicata.Last;
      end;
    end;
    fDMCob_Eletronica.cdsDuplicata.Next;
  end;
  //*********

  if not vGerarAux then
  begin
    MessageDlg('*** Títulos não selecionados para gerar a remessa!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCob_Eletronica.cdsDuplicata.First;

  AssignFile(FR, fDMCob_Eletronica.vEnd_Arq_Remessa);
  Rewrite(FR);
  try
    vContadorReg := 0;
    vContadorTit := 0;
    vVlrTotalTit := 0;

    fDMCob_Eletronica.vNum_Remessa := fDMCob_Eletronica.fnc_Busca_Num_Arquivo_Rem;
    if RxDBLookupCombo1.Text <> '' then
    begin
      fDMCob_Eletronica.qFilial.Close;
      fDMCob_Eletronica.qFilial.ParamByName('ID').AsInteger := RxDBLookupCombo1.KeyValue;
      fDMCob_Eletronica.qFilial.Open;
    end;

    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'CAIXA400' then
      prc_Header_Caixa
    else
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'ITAU400' then
      prc_Header_Itau400
    else
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BANRISUL400' then
      prc_Header_Banrisul400
    else
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'HSBC400' then
      prc_Header_HSBC400
    else
    if copy(fDMCob_Eletronica.cdsContasCNAB.AsString,1,9) = 'BRASIL400' then
      prc_Header_Brasil
    else
    if copy(fDMCob_Eletronica.cdsContasCNAB.AsString,1,9) = 'BRADESCO240' then
      prc_Header_Bradesco_240;

    fDMCob_Eletronica.cdsDuplicata.First;
    while not fDMCob_Eletronica.cdsDuplicata.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        fDMCob_Eletronica.prc_Verificar_Carteira;
        if fDMCob_Eletronica.vGeraRemessa = 'S' then
        begin
          if (fDMCob_Eletronica.vGera_NossoNumero = 'S') and (trim(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString) = '') then
            fDMCob_Eletronica.prc_Nosso_Numero
          else
          begin
            fDMCob_Eletronica.vNossoNumero := fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString;
            fDMCob_Eletronica.vNossoNumero_Montado := fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString;
            fDMCob_Eletronica.xNossoNum            := fDMCob_Eletronica.cdsDuplicataNOSSONUMERO_SEQ.AsInteger;
          end;
          fDMCob_Eletronica.prc_Gravar_Duplicata('R');
          if trim(fDMCob_Eletronica.vNossoNumero) <> '' then
          begin
            if fDMCob_Eletronica.cdsContasCNAB.AsString = 'CAIXA400' then
              prc_Detalhe_Caixa
            else
            if fDMCob_Eletronica.cdsContasCNAB.AsString = 'ITAU400' then
              prc_Detalhe_Itau400
            else
            if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BANRISUL400' then
              prc_Detalhe_Banrisul400
            else
            if fDMCob_Eletronica.cdsContasCNAB.AsString = 'HSBC400' then
              prc_Detalhe_HSBC400
            else
            if copy(fDMCob_Eletronica.cdsContasCNAB.AsString,1,9) = 'BRASIL400' then
            begin
              prc_Detalhe_Brasil;
              if trim(fDMCob_Eletronica.cdsDuplicataEMAIL_PGTO.AsString) <> '' then
                prc_DetalheEmail_Brasil;
            end;
          end;
        end;
      end;
      fDMCob_Eletronica.cdsDuplicata.Next;
    end;
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'CAIXA400' then
      prc_Trailler_Caixa
    else
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'ITAU400' then
      prc_Trailler_Itau400
    else
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BANRISUL400' then
      prc_Trailler_Banrisul400
    else
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'HSBC400' then
      prc_Trailler_HSBC400
    else
    if copy(fDMCob_Eletronica.cdsContasCNAB.AsString,1,9) = 'BRASIL400' then
      prc_Trailler_Brasil;
  finally
    if trim(fDMCob_Eletronica.vEnd_Arq_Remessa) <> '' then
      CloseFile(FR);
  end;

  Panel2.Visible := (vContadorTit > 0);
  Label2.Caption := fDMCob_Eletronica.vEnd_Arq_Remessa;
  Label4.Caption := FormatFloat('###,###,##0.00',vVlrTotalTit);
  Label9.Caption := IntToStr(vContadorTit);

  MessageDlg('*** TOTAL DE TÍTULO(S) GERADO(S): ' + IntToStr(vContadorTit) +#13 + ' Nº Remessa ' + IntToStr(fDMCob_Eletronica.vNum_Remessa), mtInformation, [mbok], 0);

  SMDBGrid1.UnSelectAllClick(Sender);
end;

/////////////////////////////////////
///////// CAIXA FEDERAL /////////////
/////////////////////////////////////

procedure TfrmCob_Remessa.prc_Header_Caixa;
var
  vAux: string;
  texto1: string;
begin
  //Código do regisrto tamanho 1 - posicao 1 ao 1
  texto1 := '0';
  //tamanho 1 - posicao 2 ao 2
  texto1 := texto1 + '1';
  //tamanho 7 - posicao 3 ao 9
  if CheckBox2.Checked then
    texto1 := texto1 + Formatar_Campo('REM.TST',7)
  else
    texto1 := texto1 + Formatar_Campo('REMESSA',7);
  //tamanho 2 - posicao 10 ao 11
  texto1 := texto1 + '01';
  //tamanho 15- posicao 12 ao 26
  texto1 := texto1 + Formatar_Campo('COBRANCA',15);
  //Número Cedente tamanho 16 - posicao 27 ao 42
  texto1 := texto1 + Formatar_Campo(Copy(fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString,1,16),16);
  //Brancos   tamanho 4 - posicao 43 ao 46
  texto1 := texto1 + Formatar_Campo('',4);
  //Nome da empresa tamanho 30 - posicao 47 ao 76
  vAux   := TirarAcento(copy(fDMCob_Eletronica.qFilialNOME.AsString, 1, 30));
  texto1 := texto1 + Formatar_Campo(vAux,30);
  //Código de compensação da caixa  tamanho 3 - posicao 77 ao 79
  texto1 := texto1 + '104';
  //Nome do banco  tamanho 15 - posicao 80 ao 94
  texto1 := texto1 + Formatar_Campo('C ECON FEDERAL',15);
  //Data de geração do arquivo tamanho 6 - posicao 95 ao 100
  vAux   := FormatDateTime('DD/MM/YY', Date);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Brancos  tamanho 289 - posicao 101 ao 389
  texto1 := texto1 + Formatar_Campo('',289);
  //Sequencial da remessa  tamanho 5 - posicao 390 ao 394
  texto1 := texto1 + FormatFloat('00000', fDMCob_Eletronica.vNum_Remessa);
  //Número de sequência  tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Formatar(IntToStr(vContadorReg),6,False,'0');
  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.prc_Detalhe_Caixa;
var
  vAux, texto1, texto2: string;
begin
  //Código do registro  tamanho 1 - posicao 1 ao 1
  texto1 := '1';
  //Código de Inscrição  tamanho 2 - posicao 2 ao 3
  if fDMCob_Eletronica.qFilialPESSOA.AsString = 'F' then
    texto1 := texto1 + '01'
  else
    texto1 := texto1 + '02';
  //Número de inscrição da empresa  tamanho 14 - posicao 4 ao 17
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.qFilialCNPJ_CPF.AsString,14);
  //Agência do cedente  tamanho 16 - posicao 18 ao 33
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasAGENCIA.AsString + fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString,16);
  //Campo em branco   tamanho 2 - posicao 34 ao 35
  texto1 := texto1 + Formatar_Campo('',2);
  //Comissão de permanência  tamanho 2 - posicao 36 ao 37
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasCOMISSAO_PERMANENCIA.AsString,2);
  //Identificação do título na empresa  (Nosso Número) tamanho 25 - posicao 38 ao 62
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataID.AsString,25);
  //Número do titulo no banco  tamanho 7 - posicao 63 ao 73
  texto1 := texto1 + Monta_Numero(Copy(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString, 1, 11),11);
  //Campo em branco  tamanho 3 - posicao 74 a 76
  texto1 := texto1 + Formatar_Campo('',3);
  //Mensagem   tamanho 30 - posicao 77 ao 106
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasMENSAGEM_FIXA.AsString,30);
  //Código da carteira   tamanho 2 - posicao 107 ao 108
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString,2);
  //Código da ocorrência   tamanho 2 - posicao 109 ao 110
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasCOD_OCORRENCIA.AsString,2);
  //Seu Número    tamanho 10 - posicao 111 ao 120
  texto1 := texto1 + Formatar_Campo(Monta_Numero(fDMCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString,6) + '/' + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString,10);
  //Data de vencimento do titulo   tamanho 6 - posicao 121 ao 126
  vAux := FormatDateTime('DD/MM/YY', fDMCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Valor do titulo tamanho 13 - posicao 127 ao 139
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat),13);
  vVlrTotalTit := vVlrTotalTit + fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
  //Código do Banco  tamanho 3 - posicao 140 ao 142
  texto1 := texto1 + '104';
  //Agência cobradora  tamanho 5 - posicao 143 ao 147
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasAGENCIA.AsString,5);
  //Espécie do título  tamanho 2 - posicao 148 ao 149
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_ESPECIE.AsString,2);
  //Identif. de título Aceito/Não Aceito  tamanho 1 - posicao 150 ao 150
  texto1 := texto1 +  Formatar_Campo(fDMCob_Eletronica.cdsContasACEITE.AsString,1);
  //Data de emissão do título  tamanho 6 - posicao 151 ao 156
  vAux := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Código da 1º instrução  tamanho 2 - posicao 157 ao 158 
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString,2);
  //Código da 2º instrução  tamanho 2 - posicao 159 ao 160
  texto1 := texto1 + Monta_Numero('0',2);
  //Juros de mora  tamanho 13 - posicao 161 ao 173
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Juros),13);
  //Data limite para desconto   tamanho 6 - posicao 174 ao 179
  if fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsDateTime < 10 then
    texto1 := texto1 + Monta_Numero('0',6)
  else
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsString,6);
  //Valor desconto  tamanho 13 - posicao 180 ao 192
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Desconto),13);
  //Valor da IOF   tamanho 13 - posicao 193 ao 205
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsContasVLR_IOF.AsFloat),13);
  //Valor abatimento  tamanho 13 - posicao 206 ao 218
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',0),13);
  //Tipo inscrição do sacado   tamanho 2 - posicao 219 ao 220
  if trim(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '' then
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString,14);
    //Nome do sacado tamanho 40 - posicao 235 ao 274
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Endereço do sacado tamanho 40 - posicao 275 ao 314
    if trim(fDMCob_Eletronica.cdsDuplicataCOMPLEMENTO_END_PGTO.AsString) <> '' then
      texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString +','+fDMCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString + '-' + fDMCob_Eletronica.cdsDuplicataCOMPLEMENTO_END_PGTO.AsString, 1, 40))
    else
      texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString +','+fDMCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString, 1, 40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Branco   tamanho 12 - posicao 315 ao 326
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataBAIRRO_PGTO.AsString, 1, 12));
    texto1 := texto1 + Formatar_Campo(texto2,12);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP_PGTO.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF_PGTO.AsString,2);
  end
  else
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString,14);
    //Nome do sacado tamanho 40 - posicao 235 ao 274
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Endereço do sacado tamanho 40 - posicao 275 ao 314
    if trim(fDMCob_Eletronica.cdsDuplicataCOMPLEMENTO_END.AsString) <> '' then
      texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO.AsString +','+fDMCob_Eletronica.cdsDuplicataNUM_END.AsString + '-' + fDMCob_Eletronica.cdsDuplicataCOMPLEMENTO_END.AsString, 1, 40))
    else
      texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO.AsString +','+fDMCob_Eletronica.cdsDuplicataNUM_END.AsString, 1, 40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Branco   tamanho 12 - posicao 315 ao 326
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataBAIRRO.AsString, 1, 12));
    texto1 := texto1 + Formatar_Campo(texto2,12);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF.AsString,2);
  end;
  //Data da multa  tamanho 6 - posicao 352 ao 357
  texto1 := texto1 + Monta_Numero('0',6);
  //Valor da multa  tamanho 10 - posicao 358 ao 367
  texto1 := texto1 + Monta_Numero('0',10);
  //Nome avalista  tamanho 22 - posicao 368 ao 389
  //criar outro campo para colocar o nome do avalista
  //texto2 := TirarAcento(copy(fEnviarBanco.mBoletosNomeAvalista.AsString, 1, 22));
  texto1 := texto1 + Formatar_Campo('',22);
  //Terceira instrução de cobrança  tamanho 2 - posicao 390 ao 391
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO2.AsString,2);
  //Prazo  tamanho 2 - posicao 392 ao 393
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIAS_PROTESTO.AsString,2);
  //Código da moeda   tamanho 1 - posicao 394 ao 394
  texto1 := texto1 + '1';
  //Número sequencial  tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  vContadorTit := vContadorTit + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.prc_Trailler_Caixa;
var
  texto1: string;
begin
  //Código do registro  tamanho 1 - posicao 1 ao 1
  texto1 := '9';
  //Brancos   tamanho 393 - posicao 2 ao 394
  texto1 := texto1 + Formatar_Campo('',393);
  //Número de sequência  tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  Writeln(FR, texto1);
end;

///////////////////////////////////
///////////////////////////////////
///////////////////////////////////                       

function TfrmCob_Remessa.fnc_Calcular_Juros: Real;
begin
  Result := 0;
  if fDMCob_Eletronica.cdsContasPERC_JUROS.AsFloat > 0 then
    Result := StrToFloat(FormatFloat('0.00', ((fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat * fDMCob_Eletronica.cdsContasPERC_JUROS.AsFloat) / 100) / 30));
end;

function TfrmCob_Remessa.fnc_Calcular_Desconto: Real;
begin
  Result := 0;
  if fDMCob_Eletronica.cdsContasPERC_DESCONTO.AsFloat > 0 then
    Result := StrToFloat(FormatFloat('0.00', ((fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat * fDMCob_Eletronica.cdsContasPERC_DESCONTO.AsFloat) / 100)));
end;

/////////////////////////////////////
///////////// ITAU //////////////////
/////////////////////////////////////

procedure TfrmCob_Remessa.prc_Header_Itau400;
var
  vAux: String;
  texto1: String;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '0';
  //Operação (remessa) tamanho 1 - posicao 2 ao 2
  texto1 := texto1 + '1';
  //Literal de remessa tamanho 7 - posicao 3 ao 9
  texto1 := texto1 + 'REMESSA';
  //Código do serviço tamanho 2 - posicao 10 ao 11
  texto1 := texto1 + '01';
  //Literal de serviço tamanho 15 - posicao 12 ao 26
  texto1 := texto1 + Formatar_Campo('COBRANCA',15);
  //Agencia tamanho 4 - posicao 27 ao 30
  texto1 := texto1 + Formatar_Campo(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  //Complemento do registro tamanho 2 - posicao 31 ao 32
  texto1 := texto1 + '00';
  //Número da conta tamanho 5 - posicao 33 ao 37
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasNUMCONTA.AsString,1,5),5);
  //Digito tamanho 1 - posicao 38 ao 38
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIG_CONTA.AsString,1);
  //Complemento tamanho 8 - posicao 39 ao 46
  texto1 := texto1 + Formatar_Campo('',8);
  //Nome da empresa tamanho 30 - posicao 47 ao 76
  vAux := TirarAcento(copy(fDMCob_Eletronica.qFilialNOME.AsString,1,30));
  texto1 := texto1 + Formatar_Campo(vAux,30);
  //Código do banco tamanho 3 - posicao 77 ao 79
  texto1 := texto1 + '341';
  //Nome do banco tamanho 15 - posicao 80 ao 94
  texto1 := texto1 + Formatar_Campo('BANCO ITAU SA',15);
  //Data de geração do arquivo tamanho 6 - posicao 95 ao 100
  vAux := FormatDateTime('DD/MM/YY',Date);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Brancos tamanho 294 - posicao 101 ao 394
  texto1 := texto1 + Formatar_Campo('',294);
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + FormatFloat('000000',vContadorReg);
  Writeln(FR,texto1);
end;

procedure TfrmCob_Remessa.prc_Detalhe_Itau400;
var
  vAux, texto1, texto2: String;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '1';
  //Tipo de inscrição tamanho 2 - posicao 2 ao 3
  texto1 := texto1 + '02';
  //Número de inscrição da empresa 14 - posicao 4 ao 17
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.qFilialCNPJ_CPF.AsString,14);
  //Agência mantenedora da conta tamanho 4 - posicao 18 ao 21
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  //Complemento tamanho 2 - posicao 22 ao 23
  texto1 := texto1 + '00';
  //Número da conta da empresa tamanho 5 - posicao 24 ao 28
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasNUMCONTA.AsString,1,5),5);
  //Digito da conta tamanho 1 - posicao 29 ao 29
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIG_CONTA.AsString,1);
  //Complemento tamanho 4 - posicao 30 ao 33
  texto1 := texto1 + Formatar_Campo('',4);
  //Instrução de alegação tamanho 4 - posicao 34 ao 37
  texto1 := texto1 + Monta_Numero('0',4);
  //identificação do titulo na empresa tamanho 25 - posicao 38 ao 62
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataID.AsString,25);
  //Nosso número tamanho 8 - posicao 63 ao 70
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString,1,8),8);
  //Quantidade de moeda variável tamanho 13 - posicao 71 ao 83
  texto1 := texto1 + Monta_Numero('0',13);
  //Número da carteira no banco tamanho 3 - posicao 84 ao 86
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString,3);
  //Uso do banco tamanho 21 - posicao 87 ao 107
  texto1 := texto1 + Formatar_Campo('',21);
  //Código da carteira tamanho 1 - posicao 108 ao 108
  texto1 := texto1 + 'I';
  //Código de ocorrência tamanho 2 - posicao 109 ao 110
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_OCORRENCIA.AsString,2);
  //Número do documento tamanho 10 - posicao 111 ao 120
  texto1 := texto1 + Formatar_Campo(Monta_Numero(fDMCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString,6) + '/' + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString,10);
  //Data de vencimento do titulo tamanho 6 - posicao 121 ao 126
  vAux  := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Valor do titulo tamanho 13 - posicao 127 ao 139
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat),13);
  vVlrTotalTit := vVlrTotalTit + fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
  //Código do banco tamanho 3 - posicao 140 ao 142
  texto1 := texto1 + '341';
  //Agencia cobradora tamanho 5 - posicao 143 ao 147
  texto1 := texto1 + '00000';
  //Espécie tamanho 2 - posicao 148 ao 149
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasCOD_ESPECIE.AsString,2);
  //Aceite tamanho 1 - posicao 150 ao 150
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasACEITE.AsString,1);
  //Data de emissão do titulo tamanho 6 - posicao 151 ao 156
  vAux  := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Instrução 1 tamanho 2 - posicao 157 ao 158
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString,2);
  //Instrução 2 tamanho 2 - posicao 159 ao 160
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO2.AsString,2);
  //Juros de mora por dia de atrazo tamanho 13 - posicao 161 ao 173
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Juros),13);
  //Data de desconto tamanho 6 - posicao 174 ao 179
  if fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsDateTime < 10 then
    texto1 := texto1 + Monta_Numero('0',6)
  else
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsString,6);
  //Valor do desconto tamanho 13 - posicao 180 ao 192
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Desconto),13);
  //Valor IOF recolhido por nota de seguro tamanho 13 - posicao 193 ao 205
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsContasVLR_IOF.AsFloat),13);
  //Valor abatimento tamanho 13 - posicao 206 ao 218
  texto1 := texto1 + Monta_Numero('0',13);

  //Tipo inscrição do sacado   tamanho 2 - posicao 219 ao 220
  if trim(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '' then
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString,14);
    //Nome do sacado tamanho 30 - posicao 235 ao 264
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,30));
    texto1 := texto1 + Formatar_Campo(texto2,30);
    //Nome do sacado tamanho 10 - posicao 265 ao 274
    texto1 := texto1 + Formatar_Campo('',10);
    //Endereço do sacado tamanho 40 - posicao 275 ao 314
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString + fDMCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString, 1, 40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Bairro  tamanho 12 - posicao 315 ao 326
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataBAIRRO_PGTO.AsString, 1, 12));
    texto1 := texto1 + Formatar_Campo(texto2,12);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP_PGTO.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF_PGTO.AsString,2);
  end
  else
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString,14);
    //Nome do sacado tamanho 30 - posicao 235 ao 264
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,30));
    texto1 := texto1 + Formatar_Campo(texto2,30);
    //Nome do sacado tamanho 10 - posicao 265 ao 274
    texto1 := texto1 + Formatar_Campo('',10);
    //Endereço do sacado tamanho 40 - posicao 275 ao 314
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO.AsString + fDMCob_Eletronica.cdsDuplicataNUM_END.AsString, 1, 40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Bairro   tamanho 12 - posicao 315 ao 326
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataBAIRRO.AsString, 1, 12));
    texto1 := texto1 + Formatar_Campo(texto2,12);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF.AsString,2);
  end;
  //Fazer aqui Sacador avalista tamanho 30 - posicao 352 ao 381
  //texto2 := TirarAcento(copy(fEnviarBanco.mBoletosNomeAvalista.AsString,1,30));
  texto1 := texto1 + Formatar_Campo('',30);
  //Brancos tamanho 4 - posicao 382 ao 385
  texto1 := texto1 + Formatar_Campo('',4);
  //Data de mora tamanho 6 - posicao 386 ao 391
  texto1 := texto1 + Monta_Numero('0',6);
  //Prazo tamanho 2 - posicao 392 ao 393
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIAS_PROTESTO.AsString,2);
  //Brancos tamanho 1 - posicao 394 ao 394
  texto1 := texto1 + ' ';
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  vContadorTit := vContadorTit + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  Writeln(FR,texto1);
end;

procedure TfrmCob_Remessa.prc_Reg_Avalista_Itau400;
begin

end;

procedure TfrmCob_Remessa.prc_Trailler_Itau400;
var
  texto1: String;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '9';
  //Brancos tamanho 393 - posicao 2 ao 394
  texto1 := texto1 + Formatar_Campo('',393);
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  Writeln(FR,texto1);
end;

/////////////////////////////////////
///////// BANCO DO BRASIL ///////////
/////////////////////////////////////

procedure TfrmCob_Remessa.prc_Header_Brasil;
var
  vAux: string;
  texto1, texto2: string;
begin
  //Código do regisrto tamanho 1 - posicao 1 ao 1
  texto1 := '0';
  //tamanho 1 - posicao 2 ao 2
  texto1 := texto1 + '1';
  //tamanho 7 - posicao 3 ao 9
  if CheckBox2.Checked then
    texto1 := texto1 + Formatar_Campo('TESTE',7)
  else
    texto1 := texto1 + Formatar_Campo('REMESSA',7);
  //tamanho 2 - posicao 10 ao 11
  texto1 := texto1 + '01';
  //tamanho 8 - posicao 12 ao 19
  texto1 := texto1 + Formatar_Campo('COBRANCA',8);
  //Brancos   tamanho 7 - posicao 20 ao 26
  texto1 := texto1 + Formatar_Campo('',7);
  //Agência Cedente   tamanho 4 - posicao 27 ao 30
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  //Digito da agência  tamanho 1 - posicao 31 ao 31
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasDIG_AGENCIA.AsString,1);
  //Conta do cedente, númro da conta  tamanho 8 - posicao 32 ao 39
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasNUMCONTA.AsString,1);
  //Digito da conta   tamanho 1 - posicao 40 ao 40
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIG_CONTA.AsString,1);
  //Zeros tamanho 6 - posicao 41 ao 46
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasNUM_CONVENIO_LIDER.AsString,6);
  //Nome do cedente  tamanho 30 - posicao 47 ao 76
  texto2 := TirarAcento(copy(fDMCob_Eletronica.qFilialNOME.AsString,1, 30));
  texto1 := texto1 + Formatar_Campo(texto2,30);
  //Nome do banco  tamanho 18 - posicao 77 ao 94
  texto1 := texto1 + Formatar_Campo('001BANCO DO BRASIL',18);
  //Data de geração do arquivo tamanho 6 - posicao 95 ao 100
  vAux := FormatDateTime('DD/MM/YY', Date);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Sequencial da remessa  tamanho 7 - posicao 101 ao 107
  texto1 := texto1 + Monta_Numero(IntToStr(fDMCob_Eletronica.vNum_Remessa),7);
  //Brancos  tamanho 22 - posicao 108 ao 129
  //ou 287 brancos, conforme o layout
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400-6' then
    texto1 := texto1 + Formatar_Campo('',287)
  else
    texto1 := texto1 + Formatar_Campo('',22);
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
  begin
    //Número do convênio   tamanho 7 - posicao 130 ao 136
    texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString, 1, 7),7);
    //Brancos  tamanho 258 - posicao 137 ao 394
    texto1 := texto1 + Formatar_Campo('',258);
  end;
  //Número de sequência  tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);

  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.prc_Detalhe_Brasil;
var
  vAux, texto1, texto2: string;
  i: Integer;
  vValor: Real;
  vContAux: Integer;
begin
  //Código do registro  tamanho 1 - posicao 1 ao 1
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
    texto1 := '7'
  else
    texto1 := '1';
  //Código de Inscrição  tamanho 2 - posicao 2 ao 3
  texto1 := texto1 + '02';
  //Número de inscrição da empresa  tamanho 14 - posicao 4 ao 17
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.qFilialCNPJ_CPF.AsString,14);
  //Agência do cedente  tamanho 4 - posicao 18 ao 21
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  //Digito da agência  tamanho 1 - posicao 22 ao 22
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIG_AGENCIA.AsString,1);
  //Conta do cedente  tamanho 8 - posicao 23 ao 30
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasNUMCONTA.AsString,1,8),8);
  //Digito da conta  tamanho 1 - posicao 31 ao 31
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIG_CONTA.AsString,1);
  //Número do convênio  tamanho 7 - posicao 32 ao 38
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
    texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString,1,7),7)
  else
    texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString,1,6),6);
  //Nº Controle do participante  tamanho 25 - posicao 39 ao 63
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataID.AsString,25);
  //Número do titulo no banco  tamanho 17 - posicao 64 ao 80
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
    texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString,1,17),17)
  else
    texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString,1,11),11);
  //Digito Verificador
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400-6' then
    texto1 := texto1 + ' ';
  //Nº da prestação   tamanho 2 - posicao 81 ao 82
  texto1 := texto1 + '00';
  //Indicativo de grupo de valor    tamanho 2 - posicao 83 ao 84
  texto1 := texto1 + '00';
  //Brancos    tamanho 3 - posicao 85 ao 87
  texto1 := texto1 + Formatar_Campo('',3);
  //Indicativo do sacador (se tem avalista)  tamanho 1 - posicao 88 ao 88
//  if fEnviarBanco.mBoletosNomeAvalista.AsString <> '' then
  //  texto1 := texto1 + 'A'
  //else
    texto1 := texto1 + ' ';
  //Prefixo do título   tamanho 3 - posicao 89 ao 91
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400-6' then
    texto1 := texto1 + '   '
  else
  if (fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString = '31') or (fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString = '51') then
    texto1 := texto1 + 'SD '
  else
  if fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString = '12' then
    texto1 := texto1 + 'AIU'
  else
    texto1 := texto1 + '   ';
  //Variação da carteira   tamanho 3 - posicao 92 ao 94
  //texto1 := texto1 + '019';
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasVARIACAO_CARTEIRA.AsString,3);
  //Conta caução  tamanho 1 - posicao 95 ao 95
  texto1 := texto1 + '0';
  //Código de responsabilidade
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400-6' then
    texto1 := texto1 + Monta_Numero('0',6);
  //Número do bordero  tamanho 6 - posicao 96 ao 101
  texto1 := texto1 + Monta_Numero('0',6);
  //Tipo de cobrança  tamanho 5 - posicao 102 ao 106
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasTIPO_DOCUMENTO.AsString,5);
  //Carteira  tamanho 2 - posicao 107 ao 108
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString,2);
  //Comando  tamanho 2 - posicao 109 ao 110
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasCOD_OCORRENCIA.AsString,2);
  //Nº do título  tamanho 10 - posicao 111 ao 120
  texto1 := texto1 + Formatar_Campo(Monta_Numero(fDMCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString,6) + '/' + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString,10);
  //Data de vencimento do titulo   tamanho 6 - posicao 121 ao 126
  vAux := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Valor do titulo tamanho 13 - posicao 127 ao 139
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat),13);
  vVlrTotalTit := vVlrTotalTit + fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
  //Identificação do banco  tamanho 3 - posicao 140 ao 142
  texto1 := texto1 + '001';
  //Agência cobradora  tamanho 4 - posicao 143 ao 146
  texto1 := texto1 + '0000';
  //Digito verificador da agência cobradora  tamanho 1 - posicao 147 ao 147
  if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
    texto1 := texto1 + '0'
  else
    texto1 := texto1 + ' ';
  //Espécie do título  tamanho 2 - posicao 148 ao 149
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_ESPECIE.AsString,2);
  //Identif. de título Aceito/Não Aceito  tamanho 1 - posicao 150 ao 150
  texto1 := texto1 +  Formatar_Campo(fDMCob_Eletronica.cdsContasACEITE.AsString,1);
  //Data de emissão do título  tamanho 6 - posicao 151 ao 156
  vAux := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Código da 1º instrução  tamanho 2 - posicao 157 ao 158
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString,2);
  //Código da 2º instrução  tamanho 2 - posicao 159 ao 160
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO2.AsString,2);
  //Juros de mora  tamanho 13 - posicao 161 ao 173
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Juros),13);
  //Data limite para desconto   tamanho 6 - posicao 174 ao 179
  if fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsDateTime < 10 then
    texto1 := texto1 + Monta_Numero('0',6)
  else
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsString,6);
  //Valor desconto  tamanho 13 - posicao 180 ao 192
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Desconto),13);
  //Valor da IOF   tamanho 13 - posicao 193 ao 205
  if fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = '15' then
    texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsContasVLR_IOF.AsFloat),13)
  else
    texto1 := texto1 + Monta_Numero('0',13);
  //Valor abatimento  tamanho 13 - posicao 206 ao 218
  //aqui Faze o valor do abatimento
  if (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = '11') or (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = '17') or
    (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = '31') then
    texto1 := texto1 + Monta_Numero('0',13)
    //texto2 := FormatFloat('00000000000.00', fEnviarBanco.mBoletosVlrAbatimento.AsFloat)
  else
    texto1 := texto1 + Monta_Numero('0',13);
  //Tipo inscrição do sacado   tamanho 2 - posicao 219 ao 220
  if trim(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '' then
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString,14);
    //Nome do sacado tamanho 37 - posicao 235 ao 271
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,37));
    texto1 := texto1 + Formatar_Campo(texto2,37);
    //Branco tamanho 3 - posicao 272 ao 274
    texto1 := texto1 + Formatar_Campo('',3);
    //Endereço do sacado tamanho 40 - posicao 275 ao 311
    texto2 := TirarAcento(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString + fDMCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString);
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
      texto1 := texto1 + Formatar_Campo(copy(texto2,1,37),37)
    else
      texto1 := texto1 + Formatar_Campo(copy(texto2,1,52),52);
    //Branco   tamanho 15 - posicao 312 ao 326
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
      texto1 := texto1 + Formatar_Campo('',15);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP_PGTO.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF_PGTO.AsString,2);
  end
  else
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString,14);
    //Nome do sacado tamanho 37 - posicao 235 ao 271
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,37));
    texto1 := texto1 + Formatar_Campo(texto2,37);
    //Branco tamanho 3 - posicao 272 ao 274
    texto1 := texto1 + Formatar_Campo('',3);
    //Endereço do sacado tamanho 40 - posicao 275 ao 311
    texto2 := TirarAcento(fDMCob_Eletronica.cdsDuplicataENDERECO.AsString + fDMCob_Eletronica.cdsDuplicataNUM_END.AsString);
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
      texto1 := texto1 + Formatar_Campo(copy(texto2,1,37),37)
    else
      texto1 := texto1 + Formatar_Campo(copy(texto2,1,52),52);
    //Branco   tamanho 15 - posicao 312 ao 326
    if fDMCob_Eletronica.cdsContasCNAB.AsString = 'BRASIL400' then
      texto1 := texto1 + Formatar_Campo('',15);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF.AsString,2);
  end;
  //Nome do sacador tamanho 40 - posicao 352 ao 391
  //Fazer aqui o Avalista
  {texto2 := '';
  if fEnviarBanco.mBoletosNomeAvalista.AsString <> '' then
  begin
    if Length(fEnviarBanco.mBoletosCpfCnpjAvalista.AsString) > 11 then
      texto2 := ' CNPJ' + fEnviarBanco.mBoletosCpfCnpjAvalista.AsString
    else
      texto2 := ' CPF' + fEnviarBanco.mBoletosCpfCnpjAvalista.AsString;
  end;
  texto2 := TirarAcento(copy(fEnviarBanco.mBoletosNomeAvalista.AsString, 1, 40 - Length(texto2))) + texto2;}
  texto1 := texto1 + Formatar_Campo('',40);
  //Nº de dias para protesto   tamanho 2 - posicao 392 ao 393
  texto2 := '';
  if (fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString = '06') or (fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString = '06') then
    texto1 := texto1 + Formatar(fDMCob_Eletronica.cdsContasDIAS_PROTESTO.AsString,2,False,' ');
  //Branco   tamanho 1 - posicao 394 ao 394
  texto1 := texto1 + ' ';
  //Reservado   tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  vContadorTit := vContadorTit + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);

  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.prc_DetalheEmail_Brasil;
var
  texto1, texto2: string;
  i: Integer;
begin
  //Código do registro  tamanho 1 - posicao 1 ao 1
  texto1 := '5';
  //Bloqueto por email  tamanho 2 - posicao 2 ao 3
  texto1 := texto1 + '01';
  //Email   tamanho 136 - posicao 4 ao 139
  texto1 := texto1 + Formatar_Campo(copy(fDMCob_Eletronica.cdsDuplicataEMAIL_PGTO.AsString,1,136),136);
  //Brancos   tamanho 255 - posicao 140 ao 394
  texto1 := texto1 + Formatar_Campo('',136);
  //Sequencial registro   tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);

  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.prc_Trailler_Brasil;
var
  texto1, texto2: string;
  i: Integer;
begin
  //Código do registro  tamanho 1 - posicao 1 ao 1
  texto1 := '9';
  //Brancos   tamanho 393 - posicao 2 ao 394
  texto1 := texto1 + Formatar_Campo('',393);
  //Número de sequência  tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);

  Writeln(FR, texto1);
end;

/////////////////////////////////////
/////////// BANRISUL ////////////////
/////////////////////////////////////

procedure TfrmCob_Remessa.prc_Header_Banrisul400;
var
  vAux: String;
  texto1: String;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '0';
  //Operação (remessa) tamanho 1 - posicao 2 ao 2
  texto1 := texto1 + '1';
  //Literal de remessa tamanho 7 - posicao 3 ao 9
  texto1 := texto1 + 'REMESSA';
  //Código do serviço tamanho 17 - posicao 10 ao 26
  texto1 := texto1 + Formatar_Campo('',17);
  //Agencia tamanho 4 - posicao 27 ao 30
  texto1 := texto1 + Formatar_Campo(copy(fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString,1,13),13);
  //Complemento tamanho 8 - posicao 40 ao 46
  texto1 := texto1 + Formatar_Campo('',7);
  //Nome da empresa tamanho 30 - posicao 47 ao 76
  vAux   := TirarAcento(copy(fDMCob_Eletronica.qFilialNOME.AsString,1,30));
  texto1 := texto1 + Formatar_Campo(vAux,30);
  //Código do banco tamanho 11 - posicao 77 ao 87
  texto1 := texto1 + Formatar_Campo('041BANRISUL',11);
  //Nome do banco tamanho 7 - posicao 88 ao 94
  texto1 := texto1 + Formatar_Campo('',7);
  //Data de geração do arquivo tamanho 6 - posicao 95 ao 100
  vAux := FormatDateTime('DD/MM/YY',Date);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Brancos tamanho 9 - posicao 101 ao 109
  texto1 := texto1 + Formatar_Campo('',9);
  //Brancos tamanho 4 - posicao 110 ao 113
  vaux := '';
  if (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'R') or (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'S') or
     (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'X') then
  begin
    if CheckBox2.Checked then
      vAux := '8808'
    else
      vAux := '0808';
  end;
  texto1 := texto1 + Formatar_Campo(vAux,4);
  //Brancos tamanho 1 - posicao 114 ao 114
  texto1 := texto1 + Formatar_Campo('',1);
  //Brancos tamanho 4 - posicao 115 ao 115
  vaux := '';
  if (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'R') or (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'S') or
     (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'X') then
  begin
    if CheckBox2.Checked then
      vAux := 'X'
    else
      vAux := 'P';
  end;
  texto1 := texto1 + Formatar_Campo(vAux,1);
  //Brancos tamanho 1 - posicao 116 ao 116
  texto1 := texto1 + Formatar_Campo('',1);
  //Brancos tamanho 1 - posicao 117 ao 126
  texto1 := texto1 + Formatar_Campo('',10);
  //Brancos tamanho 1 - posicao 127 ao 394
  texto1 := texto1 + Formatar_Campo('',268);
  //Número sequencial tamanho 4 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + FormatFloat('000000',vContadorReg);
  Writeln(FR,texto1);
end;

procedure TfrmCob_Remessa.prc_Detalhe_Banrisul400;
var
  vAux, texto1, texto2: String;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '1';
  //Tipo de inscrição tamanho 2 - posicao 2 ao 17
  texto1 := texto1 + Formatar_Campo('',16);
  //Código do cedente 13 - posicao 18 ao 30
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString,13);
  //Brancos 7 - posicao 31ao 37
  texto1 := texto1 + Formatar_Campo('',7);
  //identificação do titulo na empresa tamanho 25 - posicao 38 ao 62
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataID.AsString,25);
  //Nosso número tamanho 10 - posicao 63 ao 72
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString,1,10),10);
  //Mensagem no bloqueto tamanho 32 - posicao 73 ao 104
  if (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'R') or (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'S') or
     (fDMCob_Eletronica.cdsContasCOD_CARTEIRA.AsString = 'X') then
    vAux := ''
  else
    vAux := fDMCob_Eletronica.cdsContasMENSAGEM_FIXA.AsString;
  texto1 := texto1 + Formatar_Campo(vAux,32);
  //Brancos tamanho 3 - posicao 105 ao 107
  texto1 := texto1 + Formatar_Campo('',3);
  //Número da carteira no banco tamanho 1 - posicao 108 ao 108
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString,1);
  //Código de ocorrência tamanho 2 - posicao 109 ao 110
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_OCORRENCIA.AsString,2);
  //Número do documento tamanho 10 - posicao 111 ao 120
  texto1 := texto1 + Formatar_Campo(Monta_Numero(fDMCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString,6) + '/' + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString,10);
  //Data de vencimento do titulo tamanho 6 - posicao 121 ao 126
  vAux  := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Valor do titulo tamanho 13 - posicao 127 ao 139
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat),13);
  vVlrTotalTit := vVlrTotalTit + fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
  //Código do banco tamanho 3 - posicao 140 ao 142
  texto1 := texto1 + '041';
  //Agencia cobradora tamanho 5 - posicao 143 ao 147
  texto1 := texto1 + Formatar_Campo('',5);
  //Espécie tamanho 2 - posicao 148 ao 149
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasCOD_ESPECIE.AsString,2);
  //Aceite tamanho 1 - posicao 150 ao 150
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasACEITE.AsString,1);
  //Data de emissão do titulo tamanho 6 - posicao 151 ao 156
  vAux  := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Instrução 1 tamanho 2 - posicao 157 ao 158
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString,2);
  //Instrução 2 tamanho 2 - posicao 159 ao 160
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO2.AsString,2);
  //Código de mora tamanho 13 - posicao 161 ao 161
  texto1 := texto1 + '0';
  //Juros de mora por dia de atrazo tamanho 13 - posicao 162 ao 173
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Juros),12);
  //Data de desconto tamanho 6 - posicao 174 ao 179
  if fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsDateTime < 10 then
    texto1 := texto1 + Monta_Numero('0',6)
  else
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsString,6);
  //Valor do desconto tamanho 13 - posicao 180 ao 192
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Desconto),13);
  //Valor IOF recolhido por nota de seguro tamanho 13 - posicao 193 ao 205
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsContasVLR_IOF.AsFloat),13);
  //Valor abatimento tamanho 13 - posicao 206 ao 218
  texto1 := texto1 + Monta_Numero('0',13);
  //Tipo inscrição do sacado   tamanho 2 - posicao 219 ao 220
  if trim(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '' then
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString,14);
    //Nome do sacado tamanho 40 - posicao 235 ao 274
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Endereço do sacado tamanho 40 - posicao 275 ao 314
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString + fDMCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString, 1, 40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Bairro  tamanho 7 - posicao 315 ao 321
    texto1 := texto1 + Formatar_Campo('',7);
    //Bairro  tamanho 3 - posicao 322 ao 324
    texto1 := texto1 + Monta_Numero('0',3);
    //Cep do sacado  tamanho 2 - posicao 325 ao 326
    texto1 := texto1 + Monta_Numero('0',2);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP_PGTO.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF_PGTO.AsString,2);
  end
  else
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString,14);
    //Nome do sacado tamanho 40 - posicao 235 ao 274
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Endereço do sacado tamanho 40 - posicao 275 ao 314
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO.AsString + fDMCob_Eletronica.cdsDuplicataNUM_END.AsString, 1, 40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Bairro  tamanho 7 - posicao 315 ao 321
    texto1 := texto1 + Formatar_Campo('',7);
    //Bairro  tamanho 3 - posicao 322 ao 324
    texto1 := texto1 + Monta_Numero('0',3);
    //Cep do sacado  tamanho 2 - posicao 325 ao 326
    texto1 := texto1 + Monta_Numero('0',2);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF.AsString,2);
  end;
  //Taxa ao dia para pagamento antecipado 4 - posicao 352 ao 355
  texto1 := texto1 + Monta_Numero('0',4);
  //Brancos tamanho 1 - posicao 356 ao 356
  texto1 := texto1 + Formatar_Campo('',1);
  //Brancos tamanho 13 - posicao 357 ao 369
  texto1 := texto1 + Monta_Numero('0',13);
  //Prazo tamanho 2 - posicao 370 ao 371
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIAS_PROTESTO.AsString,2);
  //Brancos tamanho 1 - posicao 372 ao 394
  texto1 := texto1 + Formatar_Campo('',23);
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  vContadorTit := vContadorTit + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  vVlrTotalTit := vVlrTotalTit + fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
  Writeln(FR,texto1);
end;

procedure TfrmCob_Remessa.prc_Trailler_Banrisul400;
var
  texto1: String;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '9';
  //Brancos tamanho 26 - posicao 2 ao 27
  texto1 := texto1 + Formatar_Campo('',26);
  //Brancos tamanho 13 - posicao 28 ao 40
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vVlrTotalTit),13);
  //Brancos tamanho 354 - posicao 41 ao 394
  texto1 := texto1 + Formatar_Campo('',354);
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  Writeln(FR,texto1);
end;

procedure TfrmCob_Remessa.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCob_Eletronica.cdsDuplicataNUM_REMESSA.AsInteger > 0 then
    Background := clMoneyGreen;
end;

procedure TfrmCob_Remessa.prc_Header_HSBC400;
var
  vAux: String;
  texto1, texto2: String;
  i: Integer;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '0';
  //Operação (remessa) tamanho 1 - posicao 2 ao 2
  texto1 := texto1 + '1';
  //Literal de remessa tamanho 7 - posicao 3 ao 9
  texto1 := texto1 + 'REMESSA';
  //Código do serviço tamanho 2 - posicao 10 ao 11
  texto1 := texto1 + '01';
  //Literal de serviço tamanho 15 - posicao 12 ao 26
  texto1 := texto1 +  Formatar_Campo('COBRANCA',15);
  //Igual a 0 tamnho 1 - posicao 27 ao 27
  texto1 := texto1 + '0';
  //Agencia tamanho 4 - posicao 28 ao 31
  texto1 := texto1 + Formatar_Campo(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  //Complemento do registro tamanho 2 - posicao 32 ao 33
  texto1 := texto1 + '55';
  //Número da conta (agencia + conta) tamanho 11 - posicao 34 ao 44
  texto2 := Monta_Numero(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  texto1 := texto1 + texto2;
  texto2 := Formatar(fDMCob_Eletronica.cdsContasNUMCONTA.AsString,6,False,'0') + fDMCob_Eletronica.cdsContasDIG_CONTA.AsString;
  texto1 := texto1 + texto2;
  //Uso do banco tamanho 2 - posicao 45 ao 46
  texto1 := texto1 + Formatar_Campo('',2);
  //Nome da empresa tamanho 30 - posicao 47 ao 76
  texto2 := TirarAcento(copy(fDMCob_Eletronica.qFilialNOME.AsString,1,30));
  texto1 := texto1 + Formatar_Campo(texto2,30);
  //Código do banco tamanho 3 - posicao 77 ao 79
  texto1 := texto1 + '399';
  //Nome do banco tamanho 15 - posicao 80 ao 94
  texto1 := texto1 + Formatar_Campo('HSBC',15);
  //Data de geração do arquivo tamanho 6 - posicao 95 ao 100
  vAux   := FormatDateTime('DD/MM/YY', Date);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Densidade da gravação tamanho 5 - posicao 101 ao 105
  texto1 := texto1 + '01600';
  //Un. Densidade da gravação tamanho 6 - posicao 106 ao 108
  texto1 := texto1 + 'BPI';
  //Uso do banco tamanho 2 - posicao 109 ao 110
  texto1 := texto1 + Formatar_Campo('',2);
  //Sigla Layout tamanho 7 - posicao 111 ao 117
  texto1 := texto1 + 'LANCV08';
  //Brancos tamanho 294 - posicao 108 ao 394
  texto1 := texto1 + Formatar_Campo('',277);
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Formatar(IntToStr(vContadorReg),6,False,'0');
  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.prc_Detalhe_HSBC400;
var
  vAux, texto1, texto2: String;
  vVlrAux: Real;
  i: Integer;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '1';
  //Tipo de inscrição tamanho 2 - posicao 2 ao 3
  if fDMCob_Eletronica.qFilialPESSOA.AsString = 'J' then
    texto1 := texto1 + '02'
  else
    texto1 := texto1 + '01';
  //Número de inscrição da empresa 14 - posicao 4 ao 17
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.qFilialCNPJ_CPF.AsString,14);
  //Zero tamanho 1 - posicao 18 ao 18
  texto1 := texto1 + '0';
  //Agência mantenedora da conta tamanho 4 - posicao 19 ao 22
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  //Complemento tamanho 2 - posicao 23 ao 24
  texto1 := texto1 + '55';
  //Número da conta da empresa tamanho 11 - posicao 25 ao 35
  texto2 := Monta_Numero(copy(fDMCob_Eletronica.cdsContasAGENCIA.AsString,1,4),4);
  texto1 := texto1 + texto2;
  texto2 := Formatar(fDMCob_Eletronica.cdsContasNUMCONTA.AsString,6,False,'0') + fDMCob_Eletronica.cdsContasDIG_CONTA.AsString;
  texto1 := texto1 + texto2;
  //Branco tamanho 2 - posicao 36 ao 37
  texto1 := texto1 + Formatar_Campo('',2);
  //identificação do titulo na empresa tamanho 25 - posicao 38 ao 62
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataID.AsString,25);
  //Nosso número tamanho 11 - posicao 63 ao 73
  texto1 := texto1 + Monta_Numero(copy(fDMCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString,1,11),11);
  //Data limite para desconto tamanho 06 - posicao 74 ao 79
  texto1 := texto1 + '999999';
  //Valor desconto tamanho 11 - posicao 80 ao 90
  texto1 := texto1 + Monta_Numero('0',11);
  //Data limite para desconto tamanho 06 - posicao 91 ao 96
  texto1 := texto1 + '999999';
  //Valor desconto tamanho 11 - posicao 97 ao 107
  texto1 := texto1 + Monta_Numero('0',11);
  //Código da carteira tamanho 1 - posicao 108 ao 108
  if trim(fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString) = '' then
    texto2 := '1'
  else
    texto2 := copy(fDMCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString,1,1);
  texto1 := texto1 + texto2;
  //Código de ocorrência tamanho 2 - posicao 109 ao 110
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_OCORRENCIA.AsString,2);
  //Número do documento tamanho 10 - posicao 111 ao 120
  texto1 := texto1 + Formatar_Campo(Monta_Numero(fDMCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString,6) + '/' + fDMCob_Eletronica.cdsDuplicataPARCELA.AsString,10);
  //Data de vencimento do titulo tamanho 6 - posicao 121 ao 126
  vAux   := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Valor do titulo tamanho 13 - posicao 127 ao 139
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat),13);
  vVlrTotalTit := vVlrTotalTit + fDMCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
  //Código do banco tamanho 3 - posicao 140 ao 142
  texto1 := texto1 + '399';
  //Agencia cobradora tamanho 5 - posicao 143 ao 147
  texto1 := texto1 + Monta_Numero('0',5);
  //Espécie tamanho 2 - posicao 148 ao 149
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasCOD_ESPECIE.AsString,2);
  //Aceite tamanho 1 - posicao 150 ao 150
  texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsContasACEITE.AsString,1);
  //Data de emissão do titulo tamanho 6 - posicao 151 ao 156
  vAux  := FormatDateTime('DD/MM/YY',fDMCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime);
  texto1 := texto1 + Monta_Numero(vAux,6);
  //Instrução 1 tamanho 2 - posicao 157 ao 158
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString,2);
  //Instrução 2 tamanho 2 - posicao 159 ao 160
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasCOD_INSTRUCAO2.AsString,2);
  //Juros de mora por dia de atrazo tamanho 13 - posicao 161 ao 173
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Juros),13);
  //Data de desconto tamanho 6 - posicao 174 ao 179
  if fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsDateTime < 10 then
    texto1 := texto1 + Formatar_Campo('',6)
  else
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDT_LIMITE_DESCONTO.AsString,6);
  //Valor do desconto tamanho 13 - posicao 180 ao 192
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fnc_Calcular_Desconto),13);
  //Valor IOF recolhido por nota de seguro tamanho 13 - posicao 193 ao 205
  texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsContasVLR_IOF.AsFloat),13);
  //Valor abatimento tamanho 13 - posicao 206 ao 218
  if (fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString = '73') or (fDMCob_Eletronica.cdsContasCOD_INSTRUCAO1.AsString = '74') or
     (fDMCob_Eletronica.cdsContasCOD_INSTRUCAO2.AsString = '73') or (fDMCob_Eletronica.cdsContasCOD_INSTRUCAO2.AsString = '74') then
  begin
    //Posição 206 a 211
    texto1 := texto1 + Formatar_Campo('',6);
    //Posição 212 a 215
    texto1 := texto1 + Monta_Numero(FormatFloat('0.00',fDMCob_Eletronica.cdsContasPERC_JUROS.AsFloat),4);
    //Posição 216 a 218
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIAS_PROTESTO.AsString,3);
  end
  else
    texto1 := texto1 + Monta_Numero('0',13);
  //Código de inscrição do sacado tamanho 2 - posicao 219 ao 220
  if trim(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '' then
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString,14);
    //Nome do sacado tamanho 40 - posicao 235 ao 274
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Endereço do sacado tamanho 38 - posicao 275 ao 312
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString +', ' + fDMCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString, 1, 38));
    texto1 := texto1 + Formatar_Campo(texto2,38);
    //Instrução de não recebimento do bloqueto  tamanho 2 - posicao 313 ao 314
    texto1 := texto1 + Formatar_Campo('',2);
    //Bairro  tamanho 12 - posicao 315 ao 326
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataBAIRRO_PGTO.AsString, 1, 12));
    texto1 := texto1 + Formatar_Campo(texto2,12);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP_PGTO.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF_PGTO.AsString,2);
  end
  else
  begin
    if fDMCob_Eletronica.cdsDuplicataPESSOA.AsString = 'F' then
      texto1 := texto1 + '01'
    else
      texto1 := texto1 + '02';
    //Número de inscrição do sacado  tamanho 14 - posicao 221 ao 234
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString,14);
    //Nome do sacado tamanho 40 - posicao 235 ao 274
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString,1,40));
    texto1 := texto1 + Formatar_Campo(texto2,40);
    //Endereço do sacado tamanho 38 - posicao 275 ao 312
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataENDERECO.AsString + ', ' + fDMCob_Eletronica.cdsDuplicataNUM_END.AsString, 1, 38));
    texto1 := texto1 + Formatar_Campo(texto2,38);
    //Instrução de não recebimento do bloqueto  tamanho 2 - posicao 313 ao 314
    texto1 := texto1 + Formatar_Campo('',2);
    //Bairro   tamanho 12 - posicao 315 ao 326
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataBAIRRO.AsString, 1, 12));
    texto1 := texto1 + Formatar_Campo(texto2,12);
    //Cep do sacado  tamanho 8 - posicao 327 ao 334
    texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsDuplicataCEP.AsString,8);
    //Cidade tamanho 15 - posicao 335 ao 349
    texto2 := TirarAcento(copy(fDMCob_Eletronica.cdsDuplicataCIDADE.AsString, 1, 15));
    texto1 := texto1 + Formatar_Campo(texto2,15);
    //Unidade da federação  tamanho 2 - posicao 350 ao 351
    texto1 := texto1 + Formatar_Campo(fDMCob_Eletronica.cdsDuplicataUF.AsString,2);
  end;

  //Sacador avalista tamanho 39 - posicao 352 ao 390
{  texto2 := TirarAcento(copy(mBoletosNomeAvalista.AsString,1,39));
  for i := 1 to 39 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;
}
  texto1 := texto1 + Formatar_Campo('',39); 
  //Tipo de bloqueto tamanho 1 - posicao 391 ao 391
  texto1 := texto1 + ' ';
  //Dias protesto tamanho 2 - posicao 392 ao 393
  texto1 := texto1 + Monta_Numero(fDMCob_Eletronica.cdsContasDIAS_PROTESTO.AsString,2);
  //Moeda tamanho 1 - posicao 394 ao 394
  texto1 := texto1 + '9';
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  vContadorTit := vContadorTit + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.prc_Trailler_HSBC400;
var
  texto1: String;
  i: Integer;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '9';
  //Brancos tamanho 393 - posicao 2 ao 394
  texto1 := texto1 + Formatar_Campo('',393);
  //Número sequencial tamanho 6 - posicao 395 ao 400
  vContadorReg := vContadorReg + 1;
  texto1 := texto1 + Monta_Numero(IntToStr(vContadorReg),6);
  Writeln(FR, texto1);
end;

procedure TfrmCob_Remessa.BitBtn2Click(Sender: TObject);
var
  vAux : String;
begin
  //if fDMCob_Eletronica.vNum_Remessa <= 0 then
  //begin
    //vAux := InputBox('Impressão da Remessa','Informe o número da remessa: ','');
    vAux := InputBox('Impressão da Remessa','Informe o número da remessa: ',IntToStr(fDMCob_Eletronica.vNum_Remessa));
    vAux := Monta_Numero(vAux,0);
    if Trim(vAux) = '' then
      exit;
    fDMCob_Eletronica.vNum_Remessa := StrToInt(vAux);
  //end;

  if not(fDMCob_Eletronica.cdsDuplicata.Active) or (fDMCob_Eletronica.cdsDuplicata.IsEmpty) then
    prc_Consultar_Duplicatas;

  fDMCob_Eletronica.cdsDuplicata.First;
  fRelRemessa                   := TfRelRemessa.Create(Self);
  fRelRemessa.fDMCob_Eletronica := fDMCob_Eletronica;
  fRelRemessa.vOpcaoImp         := '(Banco: ' + RxDBLookupCombo3.Text + ')'
                                 + '  (Nº Remessa: ' + IntToStr(fDMCob_Eletronica.vNum_Remessa) + ')';
  fRelRemessa.RLReport1.PreviewModal;
  fRelRemessa.RLReport1.Free;
  FreeAndNil(fRelRemessa);
end;

procedure TfrmCob_Remessa.prc_Detalhe_Bradesco_Seg_P;
begin

end;

procedure TfrmCob_Remessa.prc_Detalhe_Bradesco_Seg_Q;
begin

end;

procedure TfrmCob_Remessa.prc_Detalhe_Bradesco_Seg_R;
begin

end;

procedure TfrmCob_Remessa.prc_Header_Bradesco_240;
begin

end;

procedure TfrmCob_Remessa.prc_Trailler_Bradesco_240;
begin

end;

end.
