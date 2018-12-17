unit uNFe;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, XMLIntf, msxmldom, XMLDoc,
  StdCtrls, oxmldom, Buttons, Mask, ToolEdit, DB, DBClient, IdIOHandler, IdIOHandlerSocket, IdBaseComponent, IdComponent, URelCCe,
  IdTCPConnection, IdTCPClient, RzTabs, ExtCtrls, IdCoder, IdCoder3to4, IdCoderMIME, IdSSLOpenSSL, IdMessageClient, IdMessage,
  IdSMTP, JvComponent, JvMail, Mapi, ShellApi, RLMetaFile, DBTables, UDMCadNotaFiscal, UCBase, UDMCadNFe_Inutilizacao, UDMNFe,
  UDMRel, RzSndMsg, UDMConsNotaEletronica;

type
  TfNFe = class(TForm)
    XMLDocument1: TXMLDocument;
    DirectoryEdit1: TDirectoryEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    ComboBox4: TComboBox;
    TCPClient: TIdTCPClient;
    IOHandlerSocket: TIdIOHandlerSocket;
    Label9: TLabel;
    ComboBox5: TComboBox;
    RzSendMessage1: TRzSendMessage;
    CheckBox1: TCheckBox;
    OpenDialog: TOpenDialog;
    CheckBox2: TCheckBox;
    RzPageControl1: TRzPageControl;
    tsEnvio: TRzTabSheet;
    tsConfig: TRzTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lbRecibo: TLabel;
    lbNroProtocolo: TLabel;
    lbChaveAcesso: TLabel;
    btEnviarAnt: TButton;
    btDanfe: TButton;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    lbNroProtocoloCancelamento: TLabel;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label17: TLabel;
    btGerarChave: TButton;
    Button6: TButton;
    Button7: TButton;
    btGravaNota: TButton;
    Button8: TButton;
    Label12: TLabel;
    MailMessage: TIdMessage;
    SMTP: TIdSMTP;
    AttachmentDialog: TOpenDialog;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    JvMail1: TJvMail;
    ckAnexarDanfe: TCheckBox;
    edChaveNfe: TEdit;
    edCodBarras: TEdit;
    btCancelar: TBitBtn;
    ckFilialNao: TCheckBox;
    Label15: TLabel;
    cbConvTxtXml: TComboBox;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    lbNroProtocoloInutil: TLabel;
    btInutilizar: TBitBtn;
    Button2: TButton;
    Button3: TButton;
    btConexao: TButton;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    lbCodBarraContingencia: TLabel;
    btContingencia: TBitBtn;
    lbErro: TLabel;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    lbNroProtocoloCCe: TLabel;
    btCCe: TBitBtn;
    UCControls1: TUCControls;
    GroupBox7: TGroupBox;
    ckUsarOutlook: TCheckBox;
    ckUsarPadrao: TCheckBox;
    ckUsarJv: TCheckBox;
    ckUsarOutlookOLE: TCheckBox;
    ckEmailConfigurado: TCheckBox;
    btEnviarNovo: TButton;
    CheckBox3: TCheckBox;
    btBuscarStatus: TButton;
    TabSheet1: TRzTabSheet;
    Memo1: TMemo;
    ComboBox6: TComboBox;
    Image1: TImage;
    btnInfHora: TButton;
    Button4: TButton;
    btnBuscarXML: TButton;
    btnAjustaRec: TButton;
    btnLog: TButton;
    btnLimpaXML_Assinado_Proc: TButton;
    btnRegravarDanfe: TButton;
    procedure btEnviarAntClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btDanfeClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btConexaoClick(Sender: TObject);
    procedure btGerarChaveClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btGravaNotaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button8Click(Sender: TObject);
    procedure ComboBox5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btInutilizarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btContingenciaClick(Sender: TObject);
    procedure btCCeClick(Sender: TObject);
    procedure btEnviarNovoClick(Sender: TObject);
    procedure btBuscarStatusClick(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure btnInfHoraClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnBuscarXMLClick(Sender: TObject);
    procedure btnLogClick(Sender: TObject);
    procedure btnAjustaRecClick(Sender: TObject);
    procedure btnLimpaXML_Assinado_ProcClick(Sender: TObject);
    procedure btnRegravarDanfeClick(Sender: TObject);
  private
    { Private declarations }
    ffRelCCe: TfRelCCe;
    vRegistro : String;
    Texto: String;
    vTextoEnvio: TStrings;
    vConexao: Boolean;
    vItemAdicao: Integer;
    vContigencia: Boolean;
    vEmailTransp: String;
    vCodPisNFe, vCodCofinsNFe: String;
    vCodSitTrib, vOrigem: String;
    vCodCSTIPI: String;
    //vPerc_Trib_Maior: Real;
    vPerc_Trib_Federal: Real;
    vPerc_Trib_Estadual: Real;
    vPerc_Trib_Municipal: Real;

    vVlr_Trib_Itens: Real;
    vVlr_Trib_Federal: Real;
    vVlr_Trib_Estadual: Real;
    vVlr_Trib_Municipal: Real;

    vPerc_Trib_2: Boolean;
    vMarca_Homologacao, vCliente_Canhoto: String;

    vDadosCorpoEmail: WideString;
    vEmailAdicionais: WideString;
    vMSGGeral : String;

    vChave_Geral: String;

    vImp_Obs_Difal: String;

    //procedures e variáveis do uNFeDados
    //vTextoNumNotaNfe: String;
    vCodProdutoNfe: String;
    vTextoDetNFe: String;
    vProduto_OK: Boolean;
    vCampo_Faltando: Integer; //1= CST ICMS  2= Dados da importação (tabela NotaFiscal_Imp vazia

    vErroProdCli : Boolean;
    vMSGErroCliente : String;

    procedure prc_Monta_CorpoEmail;
    procedure prc_Controlar_Envio_Email(Tipo: String = 'E');//C=Cancelar   E=Envio

    procedure Monta_mItensNFe;
    procedure Procura_ProdCliente;
    procedure Monta_mDadosAdicionaisNFe;
    procedure Grava_DadosAdicionaisNFe(DadosAdi: WideString; Tipo: Integer);
    procedure Grava_mAuxDadosNFe(Tipo, Codigo: String ; ID_Variacao: Integer = 0);
    procedure Monta_mParcelaNFe;
    procedure Le_tNotaFiscalNDevolvida;
    procedure Le_tNotaFiscalRef;
    procedure prc_Monta_LeiTributos;
    //Function Monta_Texto(Campo: String; Tamanho: Integer): String;
    //**********************

    procedure Monta_Cabecalho;
    procedure Monta_Detalhe;
    procedure Monta_Rodape;

    procedure Monta_B13;
    procedure Monta_B14;
    procedure Monta_B20j;
    procedure Monta_B20a;

    procedure Monta_I18;
    procedure Monta_I25;

    procedure Monta_N02;
    procedure Monta_N03;
    procedure Monta_N04;
    procedure Monta_N05;
    procedure Monta_N06;
    procedure Monta_N07;
    procedure Monta_N08;
    procedure Monta_N09;
    procedure Monta_N10;

    //NFe 2.00
    procedure Monta_N10a; //Falta implementar
    procedure Monta_N10b; //Falta implementar
    procedure Monta_N10c;
    procedure Monta_N10d;
    procedure Monta_N10e;
    procedure Monta_N10f;
    procedure Monta_N10g;
    procedure Monta_N10h;

    procedure Monta_O;
    procedure Monta_O07;
    procedure Monta_O08;
    procedure Monta_O10;

    procedure Monta_P;

    procedure Monta_Q02;
    procedure Monta_Q03;
    procedure Monta_Q04;
    procedure Monta_Q05;

    procedure Monta_S02;
    procedure Monta_S03;
    procedure Monta_S04;
    procedure Monta_S05;

    procedure Monta_X03;

    procedure Monta_X26;
    
    procedure Monta_X22;
    procedure Monta_X33;

    procedure Le_Parcelas;
    procedure Monta_Y07(Data: TDateTime ; Valor: Real ; Parcela: Integer);

    procedure GerarNFeTXT(AStrings: TStrings);

    procedure Habilita_Botoes;

    procedure GetSettings;
    procedure SaveSettings;

    function Verifica_ConexaoInternet: Boolean;
    //function Replace(Str, Ant, Novo: string): string;
    function Monta_Diretorio(Tipo, Diretorio: string): string;  //Tipo = "T" Texto  "X" XML

    procedure Envia_Mail(Email, Assunto, TextoLinha1: String); //Usa o Outlook
    procedure Envia_Mail2(Email, Assunto, TextoLinha1: String); //Usa o envio direto conforme as configurações
    procedure Envia_MailJV(Email, Assunto, TextoLinha1: String);
    procedure Envia_MailOLE(Email, Assunto, TextoLinha1: String);
    procedure Le_mNotaDevolvidaNFe;
    procedure Monta_CodBarraContingencia(Tipo: String); //G= Gerar para consultar  E=Enviar e imprimir
    procedure prc_Posicionar_Tabelas;

    procedure prc_Imprimir_Danfe(Tipo: String); //E= Envio   I=Imprimir

    procedure prc_Danfe_Flexdocs;
    procedure prc_Configura_Variaveis_Envio;
    procedure prc_Abrir_qProduto_Forn;
    procedure prc_Abrir_CBarra;    

    function fnc_Montar_Campo(vSeparador: string): string;

    function Verifica_Contigencia: Boolean;

    function fnc_Posicionar_Cidade(ID: Integer): Boolean;

    function fnc_LocalServidorNFe: String;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMCadNFe_Inutilizacao: TDMCadNFe_Inutilizacao;
    fDMConsNotaEletronica: TDMConsNotaEletronica;
    fDMNFe: TDMNFe;
    fDMRel: TDMRel;

    vNomeArquivo, vNomeArqPdf: String;
    vPessoaTransp: String;
    vGerar_Chave_Antiga: String;

    procedure Gera_NFe(Tipo_Nota: String = 'NTS');
    procedure prc_Configura_Tela;//21/11/2013
    procedure Gera_Chave(Contingencia: Boolean);
    procedure prc_Configura_Tela_Alt;//21/11/2013


    property DMCadNotaFiscal: TDMCadNotaFiscal read fDMCadNotaFiscal write fDMCadNotaFiscal;
  published
    property Text;

    //function TirarAcento(texto: String): string;
  end;

var
  fNFe: TfNFe;

implementation

uses nfe_v110, DateUtils, uNFeConsts, uNFeComandos, ComObj, URelDanfe, uUtilPadrao, UMenu, uXMLNFe4_00, StrUtils, Math, DmdDatabase,
  UNFe_Log;

{$R *.dfm}

procedure TfNFe.Envia_MailOLE(Email, Assunto, TextoLinha1: String);
const
	olMailItem = 0;
var
	Outlook: OLEVariant;
	MailItem: Variant;
  Anexo1, Anexo2: String;
  i : Integer;
  vEmail: array[1..10] of string;
begin
  if Email = '' then
    exit;
  try
    //OLE e Outlook
    try
    Outlook:=GetActiveOleObject('Outlook.Application') ;
    except
    Outlook:=CreateOleObject('Outlook.Application') ;
    end;
    MailItem := Outlook.CreateItem(olMailItem) ;
//    MailItem.Recipients.Add(Email);

   {Verifica se tem mais de um email digitado no cadastro do cliente}
    vRegistro := Trim(Email);
    for i := 0 to 10 do
    begin
      vEmail[i] := fnc_Montar_Campo(';');
      if vEmail[i] = '' then
        Break;
      MailItem.Recipients.Add(vEmail[i]);
    end;

    if vEmailTransp <> '' then
      MailItem.Recipients.Add(vEmailTransp);
    if Trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString) <> '' then
      MailItem.Recipients.Add(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString);

    //16/05/2012
    fDMNFe.cdsNFe_Email.First;
    fDMNFe.cdsNFe_Email.First;
    while not fDMNFe.cdsNFe_Email.Eof do
    begin
      if trim(fDMNFe.cdsNFe_EmailEMAIL.AsString) <> '' then
        MailItem.Recipients.Add(fDMNFe.cdsNFe_EmailEMAIL.AsString);
      fDMNFe.cdsNFe_Email.Next;
    end;

    MailItem.Subject := 'Assunto';
    MailItem.Body    := 'Corpo do Email';
    Anexo1 := '';
    Anexo2 := '';
    if (ckAnexarDanfe.Checked) and (vNomeArqPdf <> '') then
    begin
      Anexo1 :=  vNomeArquivo;
      Anexo2 :=  vNomeArqPdf;
      MailItem.Attachments.Add(vNomeArquivo) ;
      MailItem.Attachments.Add(vNomeArqPdf);
    end
    else
    begin
      Anexo1 := vNomeArquivo;
      Anexo2 := '';
      MailItem.Attachments.Add(vNomeArquivo) ;
    end;                                   
    MailItem.Send; //MailItem.Send to skip the window and just send the email
    VarClear(Outlook);
  except
    ShowMessage('Erro ao enviar email!');
  end;
end;

procedure TfNFe.Envia_MailJV(Email, Assunto, TextoLinha1: String);
const
	olMailItem = 0;
begin
  if Email = '' then
    exit;

  try
    JvMail1.Clear;
    JvMail1.Attachment.Clear;
    JvMail1.Recipient.AddRecip(Email);

    if vEmailTransp <> '' then
      JvMail1.Recipient.AddRecip(vEmailTransp);

    if Trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString) <> '' then
      JvMail1.Recipient.AddRecip(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString);

    fDMNFe.cdsNFe_Email.First;
    fDMNFe.cdsNFe_Email.First;
    while not fDMNFe.cdsNFe_Email.Eof do
    begin
      if trim(fDMNFe.cdsNFe_EmailEMAIL.AsString) <> '' then
        JvMail1.BlindCopy.AddRecip(fDMNFe.cdsNFe_EmailEMAIL.AsString);
      fDMNFe.cdsNFe_Email.Next;
    end;

    JvMail1.Subject := Assunto;
    JvMail1.Attachment.Clear;
    JvMail1.Attachment.Add(vNomeArquivo);
    if vNomeArqPdf <> '' then
      JvMail1.Attachment.Add(vNomeArqPdf);
    JvMail1.Body.Clear;
    JvMail1.Body.Add(TextoLinha1);
    JvMail1.Body.Add('');

    //NFe 2.00
    if ComboBox1.ItemIndex = 1 then
      JvMail1.Body.Add('NOTA EM CONTINGENCIA FS  Impressa em formulário de segurança!')
    else
    if ComboBox1.ItemIndex = 2 then
      JvMail1.Body.Add('NOTA EM CONTINGENCIA SCAN')
    else
    if ComboBox1.ItemIndex = 3 then
      JvMail1.Body.Add('NOTA EM CONTINGENCIA FS-DA  Impressa em formulário de segurança!');

    //*************
    JvMail1.Body.Add('');

    JvMail1.Body.Add(fDMNFe.qFilialNOME.AsString);
    JvMail1.Body.Add(fDMNFe.qFilialCNPJ_CPF.AsString);
    JvMail1.Body.Add(fDMNFe.qFilialENDERECO.AsString + ', ' + fDMNFe.qFilialNUM_END.AsString);
    fDMNFe.Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);
    JvMail1.Body.Add(fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString);
    JvMail1.Body.Add('Fone: ' + fDMNFe.qFilialDDD1.AsString + ' ' + fDMNFe.qFilialFONE.AsString);
    JvMail1.SendMail(True);
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao enviar email: ' + #13 + e.Message);
  end;
end;

procedure TfNFe.Envia_Mail2(Email, Assunto, TextoLinha1: String); //Usa o envio direto conforme as configurações
var
  vEmailAux: String;
  lista_Anexo: TStringList;
  vSenhaEmail: String;
begin
  if Email = '' then
    exit;

  Lista_Anexo := TStringList.Create;
  try
    vEmailAux := Email;
    if Trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString) <> '' then
      vEmailAux := vEmailAux + ',' + fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString;
    if vEmailTransp <> '' then
      vEmailAux := vEmailAux + ',' + vEmailTransp;

    //Lê a tabela de Contatos
    fDMCadNotaFiscal.cdsPessoa_Contato.Close;
    fDMCadNotaFiscal.sdsPessoa_Contato.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger;
    fDMCadNotaFiscal.cdsPessoa_Contato.Open;
    fDMCadNotaFiscal.cdsPessoa_Contato.First;
    while not fDMCadNotaFiscal.cdsPessoa_Contato.Eof do
    begin
      if (fDMCadNotaFiscal.cdsPessoa_ContatoENVIAR_NFE.AsString = 'S') or (fDMCadNotaFiscal.cdsPessoa_ContatoENVIAR_NFE.AsString = 's') then
        vEmailAux := vEmailAux + ',' + fDMCadNotaFiscal.cdsPessoa_ContatoEMAIL.AsString;
      fDMCadNotaFiscal.cdsPessoa_Contato.Next;
    end;
    //************

    prc_Monta_CorpoEmail;

    vDadosCorpoEmail := TextoLinha1 + #13 + vDadosCorpoEmail;

    if fDMNFe.qFilialPESSOA.AsString = 'F' then
      texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
    else
      texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
    lista_Anexo.Add(vNomeArquivo);
    if vNomeArqPdf <> '' then
      lista_Anexo.Add(vNomeArqPdf);

    if fDMNFe.qParametrosUSA_ENVIO_EMAIL_CATEGORIA.AsString = 'S' then
    begin
      fDMNFe.qFilial_Email.Close;
      fDMNFe.qFilial_Email.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
      fDMNFe.qFilial_Email.Open;
      vSenhaEmail := Descriptografar( fDMNFe.qFilial_EmailBASE.AsInteger
                                 , 'ssfacil'
                                 , fDMNFe.qFilial_EmailSMTP_SENHA.AsString );

      EnviarEmail2(Trim(fnc_LocalServidorNFe),
                   texto,
                   fDMNFe.qFilial_EmailREMETENTE_EMAIL.AsString,
                   fDMNFe.qFilial_EmailREMETENTE_NOME.AsString,
                   fDMNFe.qFilial_EmailSMTP_CLIENTE.AsString,
                   fDMNFe.qFilial_EmailSMTP_PORTA.AsString,
                   fDMNFe.qFilial_EmailSMTP_REQUER_SSL.AsString,
                   fDMNFe.qFilial_EmailSMTP_USUARIO.AsString,
                   vSenhaEmail,
                   fDMNFe.qFilial_EmailSOLICITAR_CONFIRMACAO.AsString,
                   vEmailAux,
                   vEmailAdicionais,
                   Assunto,
                   vDadosCorpoEmail,
                   lista_Anexo);
    end
    else
    begin
      EnviarEmail( Trim(fnc_LocalServidorNFe),
                   texto,
                   vEmailAux,
                   vEmailAdicionais,
                   Assunto,
                   vDadosCorpoEmail,
                   lista_Anexo );
    end;

    ShowMessage('E-mail enviado com sucesso!');
  finally
    FreeAndNil(Lista_Anexo);
  end;

end;

function TfNFe.Verifica_Contigencia: Boolean;
begin
  Result := False;
  if ComboBox1.ItemIndex = 2 then
    Result := True;
end;

procedure TfNFe.Monta_Q02;
var
  vVlrAux: Real;
begin
//PIS - Grupo de PIS tributado pela aliquota
  Texto := 'Q02|' + vCodPisNFe + '|';

  vVlrAux := 0;
  if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
    vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;

  Texto := Texto + Replace(FormatFloat('0.00',vVlrAux),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqPis.AsFloat),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_Q03;
var
  vQtdAux: Real;
begin
//PIS - Grupo de Pis tributado por quantidade
  Texto := 'Q03|' + vCodPisNFe + '|';

  vQtdAux := 0;
  if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
    vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;

  Texto := Texto + Replace(FormatFloat('0.0000',vQtdAux),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_Q04;
begin
//PIS - Grupo de PIS não tributado
  if Trim(vCodPisNFe) = '' then
    vCodPisNFe := '08';
  //Texto := 'Q04|08|';
  Texto := 'Q04|' + vCodPisNFe + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_Q05;
var
  vVlrAux: Real;
  vQtdAux: Real;
begin
//PIS - Grupo de PIS outras operações
  if Trim(vCodPisNFe) = '' then
    vCodPisNFe := '99';
  //Texto := 'Q05|99|';
  Texto := 'Q05|' + vCodPisNFe + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);

  vVlrAux := 0;
  vQtdAux := 0;
  if fDMNFe.mItensNFeVlrPis.AsFloat > 0 then
  begin
    vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
    vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;
  end;

  //Texto := 'Q07|0|0|';
  if fDMNFe.mItensNFeTipoPis.AsString = 'V' then
  begin
    Texto := 'Q10|';
    Texto := Texto + Replace(FormatFloat('0.0000',vQtdAux),',','.') + '|';
    Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqPis.AsFloat),',','.') + '|';
  end
  else
  begin
    Texto := 'Q07|';
    Texto := Texto + Replace(FormatFloat('0.00',vVlrAux),',','.') + '|';
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqPis.AsFloat),',','.') + '|';
  end;
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_S02;
var
  vVlrAux: Real;
begin
//COFINS - Grupo de COFINS outras operações
  vVlrAux := 0;
  if fDMNFe.mItensNFeVlrCofins.AsFloat > 0 then
    vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;

  Texto := 'S02|' + vCodCofinsNFe + '|';
  Texto := Texto + Replace(FormatFloat('0.00',vVlrAux),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrCofins.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_S03;
var
  vQtdAux: Real;
begin
//COFINS - Grupo de COFINS outras operações
  vQtdAux := 0;
  if fDMNFe.mItensNFeVlrCofins.AsFloat > 0 then
    vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;

  Texto := 'S03|' + vCodCofinsNFe + '|';
  Texto := Texto + Replace(FormatFloat('0.0000',vQtdAux),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.') + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrCofins.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_S04;
begin
//COFINS - Grupo de COFINS não tributado
  if Trim(vCodCofinsNFe) = '' then
    vCodCofinsNFe := '07';
  //Texto := 'S04|07|';
  Texto := 'S04|' + vCodCofinsNFe + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_S05;
var
  vVlrAux: Real;
  vQtdAux: Real;
begin
//COFINS - Grupo de COFINS outras operações
  if Trim(vCodCofinsNFe) = '' then
    vCodCofinsNFe := '99';
  //Texto := 'S05|99|';
  Texto := 'S05|' + vCodCofinsNFe + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrCofins.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);

  vVlrAux := 0;
  vQtdAux := 0;
  if fDMNFe.mItensNFeVlrCofins.AsFloat > 0 then
  begin
    vVlrAux := fDMNFe.mItensNFeVlrTotal.AsFloat;
    vQtdAux := fDMNFe.mItensNFeQtd.AsFloat;
  end;

  //Texto := 'S07|0|0|';
  if fDMNFe.mItensNFeTipoCofins.AsString = 'V' then
  begin
    Texto := 'S09|';
    Texto := Texto + Replace(FormatFloat('0.0000',vQtdAux),',','.') + '|';
    Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.') + '|';
    vTextoEnvio.Add(Texto);
  end
  else
  begin
    Texto := 'S07|';
    Texto := Texto + Replace(FormatFloat('0.00',vVlrAux),',','.') + '|';
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqCofins.AsFloat),',','.') + '|';
    vTextoEnvio.Add(Texto);
  end;
end;

procedure TfNFe.Monta_I18;
begin
//Letra I18 - Declaração de Importação
//Número do documento de importação DI
  Texto := 'I18|' + Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMDI.AsString,0) + '|';

//Data de Registro DI
  Texto := Texto + FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-' +
                   FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '-' +
                   FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsDateTime)) + '|';

//Local de desembaraço
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_ImpLOCAL_DESEMBARACO.AsString + '|';

//Sigla da UF desembaraço
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_ImpUF.AsString + '|';

//Data do Desembaraço Aduaneiro
  if fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime > 10 then
  begin
    Texto := Texto + FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-' +
                     FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '-' +
                     FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscal_ImpDTDESEMBARACO.AsDateTime)) + '|';
  end
  else
    Texto := Texto + '|';

//Código do exportador
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_ImpCODEXPORTADOR.AsString + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_I25;
begin
//Letra I25 - Adições
//Número da adição
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger > 0 then
    vItemAdicao := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger
  else
    vItemAdicao := vItemAdicao + 1;

  Texto := 'I25|' + fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUMADICAO.AsString + '|';

//Número sequencial da adição
  Texto := Texto + IntToStr(vItemAdicao) + '|';

//Código do Fabricante
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdCODFABRICANTE.AsString + '|';

//Valor do Desconto
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI.AsFloat),',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_CodBarraContingencia(Tipo: String);
var
  vCnpjRem: String;
  vCnpjDest: String;
  vVlrNota: String;
  vDestaqueICMS: TICMS;
  vDestaqueICMSSubst: TICMS;
  vCodBarraAux: String;
begin
  { Informações retidas da página  4 do link:
    http://www.nfe.fazenda.gov.br/portal/docs/NT_2009.003_Preenchimento_de_campos_e_codigo_de_barras_auxiliar.pdf }
  vCnpjDest   := Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString,14);
  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    vCnpjRem    := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    vCnpjRem    := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  vVlrNota    := FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat);
  vVlrNota    := Monta_Texto(vVlrNota,14);
  fDMNFe.Posiciona_CidadeUF(fDMCadNotaFiscal.cdsClienteID_CIDADE.AsInteger,fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger);

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat)) > 0 then
    vDestaqueICMS := icComDestaque
  else
    vDestaqueICMS := icSemDestaque;
  //NFe 2.00
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat)) > 0 then
    vDestaqueICMSSubst := icComDestaque
  else
    vDestaqueICMSSubst := icSemDestaque;

  //NFe 2.00
  vCodBarraAux := GeraCodigoBarras( Trim(fnc_LocalServidorNFe),
                                           vCnpjRem,
                                           fDMNFe.qUFUF.AsString,                // UF
                                           vCnpjDest,         //CNPJ Destinatário, Remetente ou zeros
                                           //StrToFloat(vVlrNota),              // Valor Total da NF-e
                                           StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat)),              // Valor Total da NF-e
                                           teContFS,            // Tipo emissão: Contingência FS ou Contingência FSDA
                                           vDestaqueICMS,       // Destaque de ICMS próprio na NF-e: há destaque de ICMS próprio ou não há destaque de ICMS próprio
                                           //NFe 2.00
                                           //icSemDestaque,       // Destaque de ICMS por substituição tributária na NF-e: há destaque de ICMS por substituição tributária ou não há destaque de ICMS por substituição tributária
                                           vDestaqueICMSSubst,       // Destaque de ICMS por substituição tributária na NF-e: há destaque de ICMS por substituição tributária ou não há destaque de ICMS por substituição tributária
                                           //***************
                                           fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime // Data de emissão, será utilizado internamente o dia
                                         );

  if Tipo = 'G' then
    edCodBarras.Text := vCodBarraAux
  else
    lbCodBarraContingencia.Caption := vCodBarraAux;
end;

procedure TfNFe.Le_mNotaDevolvidaNFe;
begin
  if fDMNFe.mNotaDevolvidaNFe.IsEmpty then
    exit;

  fDMNFe.mNotaDevolvidaNFe.First;
  while not fDMNFe.mNotaDevolvidaNFe.Eof do
  begin
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '13' then
      Monta_B13
    else
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '14' then
      Monta_B14
    else
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '20j' then
      Monta_B20j
    else
    if fDMNFe.mNotaDevolvidaNFeTipo.AsString = '20a' then
      Monta_B20a;
    fDMNFe.mNotaDevolvidaNFe.Next;
  end;
end;

procedure TfNFe.Envia_Mail(Email, Assunto, TextoLinha1: String);
var
  i : Integer;
  vEmail: array[1..10] of string;
begin
  //27/08/2009
  if Email = '' then
    exit;
  try
    RzSendMessage1.ClearLists;
//  RzSendMessage1.ToRecipients.Add(Email);

   {Verifica se tem mais de um email digitado no cadastro do cliente}
    vRegistro := Trim(Email);
    for i := 0 to 10 do
    begin
      vEmail[i] := fnc_Montar_Campo(';');
      if vEmail[i] = '' then
        Break;
      RzSendMessage1.ToRecipients.Add(vEmail[i]);
    end;

    vRegistro := Trim(vEmailTransp);
    for i := 0 to 10 do
    begin
      vEmail[i] := fnc_Montar_Campo(';');
      if vEmail[i] = '' then
        Break;
      RzSendMessage1.ToRecipients.Add(vEmail[i]);
    end;

    if Trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString) <> '' then
    begin
//    RzSendMessage1.ToRecipients.Add(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString);
      vRegistro := Trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE2.AsString);
      for i := 0 to 10 do
      begin
        vEmail[i] := fnc_Montar_Campo(';');
        if vEmail[i] = '' then
          Break;
        RzSendMessage1.ToRecipients.Add(vEmail[i]);
      end;
    end;

    //16/05/2012
    fDMNFe.cdsNFe_Email.First;
    while not fDMNFe.cdsNFe_Email.Eof do
    begin
      if trim(fDMNFe.cdsNFe_EmailEMAIL.AsString) <> '' then
        RzSendMessage1.BccRecipients.Add(fDMNFe.cdsNFe_EmailEMAIL.AsString);
      fDMNFe.cdsNFe_Email.Next;
    end;
    //************

    RzSendMessage1.Attachments.Add(ExpandFileName(vNomeArquivo));
    if (ckAnexarDanfe.Checked) and (vNomeArqPdf <> '') then
      RzSendMessage1.Attachments.Add(ExpandFileName(vNomeArqPdf));
    RzSendMessage1.Subject := Assunto;
    RzSendMessage1.MessageText.Add(TextoLinha1);
    RzSendMessage1.MessageText.Add('');

    //NFe 2.00
    if ComboBox1.ItemIndex = 1 then
      RzSendMessage1.MessageText.Add('NOTA EM CONTINGENCIA FS   Impressa em formulário de seguranca')
    else
    if ComboBox1.ItemIndex = 2 then
      RzSendMessage1.MessageText.Add('NOTA EM CONTINGENCIA SCAN')
    else
    if ComboBox1.ItemIndex = 3 then
      RzSendMessage1.MessageText.Add('NOTA EM CONTINGENCIA FS-DA   Impressa em formulário de seguranca');
    //**************

    RzSendMessage1.MessageText.Add('');
    
    RzSendMessage1.MessageText.Add(fDMNFe.qFilialNOME.AsString);
    RzSendMessage1.MessageText.Add(fDMNFe.qFilialCNPJ_CPF.AsString);
    RzSendMessage1.MessageText.Add(fDMNFe.qFilialENDERECO.AsString + ', ' + fDMNFe.qFilialNUM_END.AsString);
    if fnc_Posicionar_Cidade(fDMNFe.qFilialID_CIDADE.AsInteger) then
      RzSendMessage1.MessageText.Add(fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString);
    RzSendMessage1.MessageText.Add('Fone: ' + fDMNFe.qFilialDDD1.AsString + ' ' + fDMNFe.qFilialFONE.AsString);
    RzSendMessage1.Send;
  except
     ShowMessage('Problema no envio, e-mail não enviado!');
  end;
end;

procedure TfNFe.Habilita_Botoes;
begin
  //NFe 2.00
  if Tag = 1 then //Inutilizar
  begin
    btInutilizar.Enabled   := True;
    btEnviarAnt.Enabled    := False;
    btCancelar.Enabled     := False;
    btDanfe.Enabled        := False;
    btContingencia.Enabled := False;
    btCCe.Enabled          := False;
  end
  else
  if Tag = 2 then //Cancelar
  begin
    btCancelar.Enabled     := ((fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString <> '')
                              and (fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString = '')
                              and (vConexao));
    btEnviarAnt.Enabled    := False;
    btContingencia.Enabled := False;
  end
  else
  if Tag = 5 then //Carta Correção
  begin
    btCCe.Enabled     := ((fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString <> '')
                         and (fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString = '')
                         and (vConexao));
    btEnviarAnt.Enabled    := False;
    btContingencia.Enabled := False;
  end
  else
  begin
  if (ComboBox1.ItemIndex = 1) or (ComboBox1.ItemIndex = 3) then
  begin
    btEnviarAnt.Enabled    := ((fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString = '') and
                           (fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString <> '') and
                          (vConexao));
    btContingencia.Enabled := (fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString = '');
  end
  else
  begin
    btEnviarAnt.Enabled    := ((fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString = '') and
                              (vConexao));
    btContingencia.Enabled := False;
  end;
  end;
  btEnviarNovo.Enabled := btEnviarAnt.Enabled;
end;

function TfNFe.Verifica_ConexaoInternet: Boolean;
begin
  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    Texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  Result   := ConectadoInternet(fnc_LocalServidorNFe,texto);
end;

function TfNFe.Monta_Diretorio(Tipo, Diretorio: string): string;
var
  vSerieAux: String;
  vAnoMes: String;
  i: Integer;
begin
  vSerieAux := '';
  if Tipo <> 'I' then
  begin
    if Tipo = 'C' then
      vAnoMes := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscal_NFeDTCADASTRO.AsDateTime)) + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_NFeDTCADASTRO.AsDateTime))
    else
      vAnoMes := FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime)) + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime));
    vSerieAux := fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString;
    for i := 1 to 3 - Length(vSerieAux) do
      vSerieAux := '0' + vSerieAux;
  end;
  Result := '';
  if Diretorio = '' then
    Raise Exception.Create('É obrigatório informar o diretório para salvar o arquivo!');
  if copy(Diretorio,Length(Diretorio),1) <> '\' then
    Diretorio := Diretorio + '\';

  if not DirectoryExists(Diretorio) then
  begin
    ShowMessage('Pasta não ' + Diretorio + ' existe!');
    exit;
  end;

  if Tipo = 'T' then
    Result := Diretorio + 'NFe_' + FormatFloat('00',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) + '.txt'
  else
  if Tipo = 'P' then
  begin
    Result := Diretorio + vAnoMes;
    CreateDir(Result);
    Result := Result + '\NFe_' + FormatFloat('00',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) + '.pdf';
  end
  else
  if Tipo = 'I'then
  begin
    Result := Diretorio + 'Inutilizadas';
    CreateDir(Result);
    Result := Result + '\NFe_' + FormatFloat('00',fDMNFe.qFilialID.AsFloat) + '_' +  fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_INI.AsString + '_a_' + fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_FIN.AsString + '_';
  end
  else
  if Tipo = 'C'then
  begin
    Result := Diretorio + 'CCe';
    CreateDir(Result);
    Result := Diretorio + 'CCe\' + vAnoMes;
    CreateDir(Result);
    Result := Result + '\CCe_' + FormatFloat('00',fDMNFe.qFilialID.AsFloat) + '_S' + vSerieAux + '_'+ FormatFloat('000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) + '_Seq' + FormatFloat('00',fDMCadNotaFiscal.cdsNotaFiscal_NFeITEMTIPO.AsInteger) + '_';
  end
  else
  begin
    Result := Diretorio + vAnoMes;
    CreateDir(Result);
    Result := Result + '\NFe_' + FormatFloat('00',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger);
  end;
end;

procedure TfNFe.GerarNFeTXT(AStrings: TStrings);
begin
  AStrings.Clear;

  Monta_Cabecalho;

  if fDMCadNotaFiscal.cdsUFUF.AsString <>  fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,([Locaseinsensitive]));

  fDMCadNotaFiscal.cdsNotaFiscal_Imp.First;
  fDMNFe.mItensNFe.First;
  while not fDMNFe.mItensNFe.Eof do
  begin
    Monta_Detalhe;
    fDMNFe.mItensNFe.Next;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Next;
  end;

  Monta_Rodape;

  AStrings.Text := vTextoEnvio.Text;
end;

procedure TfNFe.Le_Parcelas;
begin
//Cobrança
  Texto := 'Y|';
  vTextoEnvio.Add(Texto);

  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
    Monta_Y07(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat,1)
  else
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat)) > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger > 0) then
      Monta_Y07(fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.AsDateTime,fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat,0);
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    begin
      Monta_Y07(fDMCadNotaFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime,fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger);
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
    end;
  end;
end;

procedure TfNFe.Monta_Y07(Data: TDateTime ; Valor: Real ; Parcela: Integer);
begin
//Duplicata
  if Parcela < 1 then
    Texto := 'Y07|' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString + '/' + 'ENT' + '|'
  else
    Texto := 'Y07|' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString + '/' + IntToStr(Parcela) + '|';
  Texto := Texto + FormatFloat('0000',YearOf(Data)) + '-' +
                   FormatFloat('00',MonthOf(Data)) + '-' +
                   FormatFloat('00',DayOf(Data)) + '|';
  Texto := Texto + Replace(FormatFloat('0.00',Valor),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_O;
begin
  Texto := 'O|||||999|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_O08;
begin
//Código da situação tributária do IPI
  Texto := 'O08|' + fDMNFe.mItensNFeCodCSTIPI.AsString + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_O07;
begin
//IPI Tributável
//Código da situação tributária do IPI
  Texto := 'O07|' + vCodCSTIPI+'|';

//Valor do IPI
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIpi.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_O10;
begin
//Valor da BC do IPI
  Texto := 'O10|' +  Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat),',','.') + '|';

//Aliquota do IPI
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIpi.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_P;
begin
  Texto := 'P|' +  Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrBaseImportacao.AsFloat),',','.') + '|';

  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrDespAduaneira.AsFloat),',','.') + '|';

  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrImportacao.AsFloat),',','.') + '|';

  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIOF.AsFloat),',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10;
begin
//CST – 90 - Outros
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N10|' + vOrigem +'|';

//Tributação do ICMS
  Texto := Texto + vCodSitTrib +'|';

//Modadelidade de determinação
  Texto := Texto + '0|';

//Valor da BC do ICMS
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat)) = 100 then
    Texto := Texto + Replace(FormatFloat('0.00',0),',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat),',','.') + '|';

//Percentual da redução de BC
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat),',','.') + '|';

//Aliquota do imposto
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat),',','.') + '|';

//Valor do icms
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat),',','.') + '|';

//Modalidade de determinação da BC do ICMS ST
  Texto := Texto + '4|';

//Percentual da margem de valor adicionado do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat),',','.') + '|';

//Percentual da redução da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat),',','.') + '|';

//valor da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat),',','.') + '|';

//Aliquota do imposto do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat),',','.') + '|';

//Valor do icms do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat),',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10c;
begin
//pelo simples nacional
//Situação tributária 101 com permissão de crédito
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N10c|' + vOrigem +'|';

//Situação tributária
  Texto := Texto + vCodSitTrib + '|';

//Aliquota aplicável de cálculo do crédito (simples nacional)
  Texto := Texto + Replace(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat),',','.') + '|';

//Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 ds LC 123
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsSimples.AsFloat),',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10d;
begin
//pelo simples nacional
//Situação tributária 102, 103, 300 ou 400
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N10d|' + vOrigem +'|';

//Situação tributária
  Texto := Texto + vCodSitTrib + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10e;
begin
//pelo simples nacional
//Situação tributária 201
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N10e|' + vOrigem +'|';

//Situação tributária
  Texto := Texto + vCodSitTrib + '|';

//Modalidade de determinação da BC do ICMS ST
  Texto := Texto + '4|';

//Percentual da margem de valor adicionado do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat) ,',','.') + '|';

//Percentual da redução da BC do ICMS ST, OPCIONAL
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.') + '|';

//Valor da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Aliquota do Imposto de ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat) ,',','.') + '|';

//Valor do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

//Alíquota aplicável de cálculo do crédito (simples nacional)
  Texto := Texto + Replace(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat) ,',','.') + '|';

//Valor crédito do icms que pode ser aproveitado nos termos do art. 23 da LC 123 (simples nacional)
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsSimples.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10f;
begin
//pelo simples nacional
//Situação tributária 202 e 203
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N10f|' + vOrigem +'|';

//Situação tributária
  Texto := Texto + vCodSitTrib + '|';

//Modalidade de determinação da BC do ICMS ST
  Texto := Texto + '4|';

//Percentual da margem de valor adicionado do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat) ,',','.') + '|';

//Percentual da redução da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.') + '|';

//Valor da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Aliquota do Imposto de ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat) ,',','.') + '|';

//Valor do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10g;
begin
//pelo simples nacional
//Situação tributária 500
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N10g|' + vOrigem +'|';

//Situação tributária
  Texto := Texto + vCodSitTrib + '|';

//Valor do BC do ICMS ST cobrado anteriormente por ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Valor do ICMS ST cobrado anteriormente por ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10h;
begin
//pelo simples nacional
//Situação tributária 900
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N10h|' + vOrigem +'|';

//Tributação pelo ICMS 90 - Outros
  Texto := Texto + vCodSitTrib + '|';

//Modalidade de determinação da BC do ICMS
  Texto := Texto + '3|';

//Percentual da redução
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat)) = 100 then
    Texto := Texto + Replace(FormatFloat('0.00',0),',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat),',','.') + '|';

//Valor da BC do ICMS
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat),',','.') + '|';

//Aliquota do Icms
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat),',','.') + '|';

//Valor do Icms
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat),',','.') + '|';

//Modalidade de determinaçãio da BC do ICMS ST
  Texto := Texto + '4|';

//Percentual da margem de valor adicionado do Icms ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat),',','.') + '|';

//Percentual da redução de BC do Icms ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat),',','.') + '|';

//Valor da BC do Icms ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Aliquota do Imposto de ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat) ,',','.') + '|';

//Valor do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

//Alíquota aplicável de cálculo do crédito (Simples Nacional)
  Texto := Texto + Replace(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat) ,',','.') + '|';

//Valor do crédito do Icms que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional)
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsSimples.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N07;
begin
//CST – 51 - Diferimento - A exigência do preenchimento das informações do ICMS diferido fica a critério de cada UF
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N07|' + vOrigem +'|';

//Tributação do ICMS
  Texto := Texto + vCodSitTrib +'|';

//Modadelidade de determinação
  Texto := Texto + '0|';

//Percentual da redução de BC
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat)) = 100 then
    Texto := Texto + Replace(FormatFloat('0.00',0),',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat),',','.') + '|';

//Valor da BC do ICMS
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat),',','.') + '|';

//Aliquota do imposto
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat),',','.') + '|';

//Valor do icms
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N06;
begin
//CST – 40 - Isenta, 41 - Não Tributada e 50 - Suspensão
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N06|' + vOrigem +'|';

//Tributação do ICMS
  Texto := Texto + vCodSitTrib +'|';

//Vlr. Icms
  Texto := Texto + '0|';

//Motivo da desoneração do Icms
  Texto := Texto + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N04;
begin
//CST – 20 - com redução de base de cálculo
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N04|' + vOrigem +'|';

//Tributação do ICMS
  Texto := Texto + vCodSitTrib +'|';

//Modadelidade de determinação
  Texto := Texto + '0|';

//Percentual da redução de BC
  if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat)) = 100 then
    Texto := Texto + Replace(FormatFloat('0.00',0) ,',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat) ,',','.') + '|';

//Valor da BC do ICMS
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.') + '|';

//Aliquota do imposto
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.') + '|';

//Valor do icms
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N02;
begin
//CST – 00 - Tributada Integralmente
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N02|' + vOrigem +'|';

//Tributação do ICMS
  Texto := Texto + vCodSitTrib +'|';

//Modadelidade de determinação
  Texto := Texto + '0|';

//Valor da BC do ICMS
  if (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat)) > 0) then
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.') + '|'
  else
  if fDMNFe.mItensNFeAliqIcms.AsFloat > 0 then
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat) ,',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.00',0) ,',','.') + '|';

//Aliquota do imposto
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.') + '|';

//Valor do icms
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N03;
begin
//CST – 10 - Tributada e com cobrança do ICMS por substituição tributária
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N03|' + copy(fDMNFe.mItensNFeCodSitTrib.AsString,1,1) +'|';

//Tributação do ICMS
  Texto := Texto + copy(fDMNFe.mItensNFeCodSitTrib.AsString,2,2) +'|';

//Modadelidade de determinação
  Texto := Texto + '0|';

//Valor da BC do ICMS
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.') + '|';

//Aliquota do imposto
  if (fDMNFe.qFilialSIMPLES.AsString = 'S') then
    Texto := Texto + Replace(FormatFloat('0.00',0) ,',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.') + '|';

//Valor do icms
  if (fDMNFe.qFilialSIMPLES.AsString = 'S') then
    Texto := Texto + Replace(FormatFloat('0.00',0) ,',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.') + '|';

//Modalidade de determinação da BC do ICMS ST
  Texto := Texto + '4|';

//Percentual da Margem de Valor Agregado do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat) ,',','.') + '|';

//Percentual da Redução de BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.') + '|';

//Valor da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Alíquota do imposto do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat) ,',','.') + '|';

//Valor do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_Detalhe;
begin
//Letra H - Detalhamento de produtos e serviços - Nº do Item
  Texto := 'H|' + fDMNFe.mItensNFeItemNota.AsString + '|';

//Informações complementares do produto
  Texto := Texto + TirarAcento(Copy(fDMNFe.mItensNFeInfAdicionais.Value,1,500)) + '|';
  vTextoEnvio.Add(Texto);

//Letra I - Cód. do Produto
  Texto := 'I|' + fDMNFe.mItensNFeCodProduto.AsString + '|';
//GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
  //29/07/2011
  Texto := Texto + Trim(fDMNFe.mItensNFeCodBarra.AsString) + '|';

//Descrição do produto
  Texto := Texto + TirarAcento(fDMNFe.mItensNFeNomeProduto.AsString) + '|';

//Código NCM (Opcional)
  //NFe 2.00
  if (fDMNFe.mItensNFeClasFiscal.AsString = '') and (Copy(fDMNFe.mItensNFeCodProduto.AsString,1,4) = 'CFOP' ) then
    Texto := Texto + '00|'
  else
    Texto := Texto + Replace(fDMNFe.mItensNFeClasFiscal.AsString,'.','') + '|';

  //NFe 2.00
//EX_TIPI (Opcional)
  Texto := Texto + '|';

//Gênero do Produto ou Serviço
  if fDMNFe.qParametrosVERSAONFE.AsString <> '2.00' then
    Texto := Texto + '|';

//Cód. Nat. Oper.
  Texto := Texto + fDMNFe.mItensNFeCodNatOper.AsString + '|';

// Unidade de Medida
  Texto := Texto + fDMNFe.mItensNFeUnidade.AsString + '|';

//Quantidade Comercial
  Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeQtd.AsFloat) ,',','.') + '|';

//Valor Unitário de comercialização
  Texto := Texto + Replace(FormatFloat('0.0000000000',fDMNFe.mItensNFeVlrUnitario.AsFloat) ,',','.') + '|';

//Valor Total Bruto dos Produtos ou Serviços
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat) ,',','.') + '|';

//GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
  //29/07/2011
  Texto := Texto + Trim(fDMNFe.mItensNFeCodBarra.AsString) + '|';


//Unidade Tributária
  //04/07/2017
  //Texto := Texto + fDMNFe.mItensNFeUnidade.AsString + '|';
  if trim(fDMNFe.mItensNFeUnidade_Trib.AsString) <> '' then
    Texto := Texto + fDMNFe.mItensNFeUnidade_Trib.AsString + '|'
  else
    Texto := Texto + fDMNFe.mItensNFeUnidade.AsString + '|';
//Quantidade Tributável
  //04/07/2017
  //Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeQtd.AsFloat) ,',','.') + '|';
  if StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFeQtd_Trib.AsFloat)) > 0 then
    Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeQtd_Trib.AsFloat) ,',','.') + '|'
  else
    Texto := Texto + Replace(FormatFloat('0.0000',fDMNFe.mItensNFeQtd.AsFloat) ,',','.') + '|';

//Valor Unitário de tributação
  Texto := Texto + Replace(FormatFloat('0.0000000000',fDMNFe.mItensNFeVlrUnitario.AsFloat) ,',','.') + '|';
                      
//Valor Total do Frete
  //NFe 2.00
  //Texto := Texto + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrFrete.AsFloat) ,',','.') + '|';

//VALOR DO SEGURO
  //NFe 2.00
  //Texto := Texto + '|';
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrSeguro.AsFloat) ,',','.') + '|';

//VALOR DO DESCONTO
  if fDMNFe.mItensNFeVlrDesconto.AsFloat > 0 then
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrDesconto.AsFloat) ,',','.') + '|'
  else
    Texto := Texto + '|';

//Outras despesas e acessórias
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrOutrasDespesas.AsFloat) ,',','.') + '|';

  //Indica se o valor do item compõe o valor total da nota  0- Não compõe  1- Compõe
  if fDMNFe.mItensNFeSomaVlrTotalProd.AsBoolean then
    Texto := Texto + '1|'
  else
    Texto := Texto + '0|';

  //Número do pedido de compra
  if (Trim(fDMNFe.mItensNFePedidoCliente.AsString) <> '') and (fDMNFe.mItensNFeItemPedido.AsInteger > 0) then
  begin
    Texto := Texto + fDMNFe.mItensNFePedidoCliente.AsString + '|';

    //Item do pedido de compra
    Texto := Texto + fDMNFe.mItensNFeItemPedido.AsString + '|';
  end
  else
    Texto := Texto + '|' + '|';
  if (fDMNFe.qParametrosUSA_FCI.AsString = 'S') and (trim(fDMNFe.mItensNFeNFCI.AsString) <> '')  then
    Texto := Texto + fDMNFe.mItensNFeNFCI.AsString + '|';

  vTextoEnvio.Add(Texto);

  //Dados da Importação
  if (CheckBox2.Checked) and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Locate('ID;Item',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger,fDMNFe.mItensNFeItemOriginal.AsInteger]),[locaseinsensitive])) then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Close;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Open;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Imp.Eof do
    begin
      vItemAdicao := 0;
      Monta_I18;
      fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Eof do
      begin
        Monta_I25;
        fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Next;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Imp.Next;
    end;
  end;

//Letra M - Grupo de Tributos incidentes no Produto ou Serviço
  Texto := 'M|';
  //if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos.AsFloat)) > 0 then
    Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos.AsFloat),',','.') + '|';
  //else
   // Texto := Texto + '|';

  vTextoEnvio.Add(Texto);

  //NFe 2.00
  vOrigem := Copy(fDMNFe.mItensNFeCodSitTrib.AsString,1,1);
  vCodSitTrib := Copy(fDMNFe.mItensNFeCodSitTrib.AsString,2,Length(fDMNFe.mItensNFeCodSitTrib.AsString) - 1);

  Texto := 'N|';
  vTextoEnvio.Add(Texto);

  if vCodSitTrib = '00' then
    Monta_N02
  else
  if vCodSitTrib = '10' then
    Monta_N03
  else
  if vCodSitTrib = '20' then
    Monta_N04
  else
  if vCodSitTrib = '30' then
    Monta_N05
  else
  if (vCodSitTrib = '40') or
     (vCodSitTrib = '41') or
     (vCodSitTrib = '50') then
    Monta_N06
  else
  if vCodSitTrib = '51' then
    Monta_N07
  else
  if vCodSitTrib = '60' then
    Monta_N08
  else
  if vCodSitTrib = '70' then
    Monta_N09
  else
  if vCodSitTrib = '90' then
    Monta_N10
  else
  if vCodSitTrib = '101' then
    Monta_N10c
  else
  if (vCodSitTrib = '102') or (vCodSitTrib = '103') or (vCodSitTrib = '300') or (vCodSitTrib = '400') then
    Monta_N10d
  else
  if vCodSitTrib = '201' then
    Monta_N10e
  else
  if (vCodSitTrib = '202') or (vCodSitTrib = '203') then
    Monta_N10f
  else
  if vCodSitTrib = '500' then
    Monta_N10g
  else
  if vCodSitTrib = '900' then
    Monta_N10h;

//Letra O - IPI - Informar apenas quando o item for sujeito ao IPI
//Letra O - IPI Tributável
  vCodCSTIPI := fDMNFe.mItensNFeCodCSTIPI.AsString;

  Monta_O;
  if ((fDMNFe.mItensNFeVlrIpi.AsFloat > 0) and (fDMNFe.mItensNFeAliqIpi.AsFloat > 0)) or
     (fDMNFe.mItensNFeCodCSTIPI.AsString = '99') or (fDMNFe.mItensNFeCodCSTIPI.AsString = '49') or
     (fDMNFe.mItensNFeCodCSTIPI.AsString = '50') or (fDMNFe.mItensNFeCodCSTIPI.AsString = '00') then
    begin
      Monta_O07;
      Monta_O10;
    end
  //estava comentada, tirei para testar
  else
    Monta_O08;

  if (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrBaseImportacao.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrImportacao.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrDespAduaneira.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIOF.AsFloat)) > 0) then
    Monta_P;

//Letra Q - PIS - grupo de PIS tributado pela alíquota
  Texto := 'Q|';
  vTextoEnvio.Add(Texto);

//PIS - grupo de PIS tributado pela alíquota - Código de Situação Tributária do PIS
  //NFe 2.00 - Esse if foi alterado 04/03/2011
  vCodPisNFe := fDMNFe.mItensNFeCodPis.AsString;
  if (fDMNFe.mItensNFeCodPis.AsString = '01') or (fDMNFe.mItensNFeCodPis.AsString = '02') then
    Monta_Q02
  else
  if (fDMNFe.mItensNFeCodPis.AsString = '03') then
    Monta_Q03
  else
  if (fDMNFe.mItensNFeCodPis.AsString = '04') or (fDMNFe.mItensNFeCodPis.AsString = '06') or (fDMNFe.mItensNFeCodPis.AsString = '07') or
     (fDMNFe.mItensNFeCodPis.AsString = '08') or (fDMNFe.mItensNFeCodPis.AsString = '09') then
    Monta_Q04
  else
    Monta_Q05;

//Letra S - COFINS - grupo de COFINS tributado pela alíquota
  Texto := 'S|';
  vTextoEnvio.Add(Texto);

//S02 CST Código de Situação Tributária do COFINS
  //NFe 2.00 - Esse if foi alterado 04/03/2011
  vCodCofinsNFe := fDMNFe.mItensNFeCodCofins.AsString;
  if (fDMNFe.mItensNFeCodCofins.AsString = '01') or (fDMNFe.mItensNFeCodCofins.AsString = '02') then
    Monta_S02
  else
  if (fDMNFe.mItensNFeCodCofins.AsString = '03') then
    Monta_S03
  else
  if (fDMNFe.mItensNFeCodCofins.AsString = '04') or (fDMNFe.mItensNFeCodCofins.AsString = '06') or (fDMNFe.mItensNFeCodCofins.AsString = '07') or
     (fDMNFe.mItensNFeCodCofins.AsString = '08') or (fDMNFe.mItensNFeCodCofins.AsString = '09') then
    Monta_S04
  else
    Monta_S05;
  //*******************
end;

procedure TfNFe.Monta_Cabecalho;
var
  Texto2: String;
  i: Integer;
begin
  Texto := 'NOTA FISCAL|1|';
  vTextoEnvio.Add(Texto);

  Texto := 'A|' + fDMNFe.qParametrosVERSAONFE.AsString + '|NFe|'; // Versão e o literal NFe
  vTextoEnvio.Add(Texto);

  //Cód. da UF, Nat Oper
  fDMNFe.Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);
  Texto := '';
  fDMCadNotaFiscal.cdsCFOP.IndexFieldNames := 'ID';

  fDMCadNotaFiscal.qNatOper.Close;
  fDMCadNotaFiscal.qNatOper.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.qNatOper.Open;
  i := 0;
  while not fDMCadNotaFiscal.qNatOper.Eof do
  begin
    i := i + 1;
    fDMCadNotaFiscal.qNatOper.Next;
  end;
  if i  > 1 then
    Texto := 'VIDE CORPO NOTA FISCAL'
  else
  if fDMCadNotaFiscal.cdsCFOP.FindKey([fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger]) then
    Texto := fDMCadNotaFiscal.cdsCFOPNOME.AsString;

  Texto := 'B|' + fDMNFe.qUFCODUF.AsString + '||' + Texto + '|';

  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'P' then
    Texto := Texto + '1|' // A Prazo
  else
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
    Texto := Texto + '0|' // À Vista
  else
    Texto := Texto + '2|'; // Outros

//Utilizar cód. 55
  Texto := Texto + '55|';

// Série, informar zero para série única
  Texto := Texto +  fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString + '|';
//Nº da nota
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString + '|';
//Data emissão
  Texto := Texto + FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime)) + '-' +
                   FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime)) + '-' +
                   FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime)) + '|';
//Data de Saída (Opcional)
  if fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime > 1 then
    Texto := Texto + FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime)) + '-' +
                     FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime)) + '-' +
                     FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime)) + '|'
  else
    Texto := Texto +   '|';

  if fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsDateTime > 0 then
    Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscalHRSAIDAENTRADA.AsString + '|'
  else
    Texto := Texto + '|';

//Tipo da nota 0 - entrada; 1 - saída
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S' then
    Texto := Texto +  '1|'
  else
    Texto := Texto +  '0|';
//Cód. da UF (43) + Município (04606)
  Texto := Texto + fDMNFe.qCidadeCODMUNICIPIO.AsString + '|';
//Formato de impressão da DANFE, 1 - Retrato; 2 - Paisagem
  Texto := Texto + '1|';
//Forma de emissão da NF-e, 1 - Normal; 2 - Contigência FS; 3 - Scan; 4-DPEC; 5-Contingência FS-DA
  //NFe 2.00
  if ComboBox1.ItemIndex = 3 then
    i := 5
  else
    i := ComboBox1.ItemIndex + 1;
  //Texto := Texto + IntToStr(ComboBox1.ItemIndex + 1) + '|';
  Texto := Texto + IntToStr(i) + '|';
//Dígito Verificador da Chave de Acesso da NF-e (não obrigatório)
  Texto := Texto + '|';
//Ident. do Ambiente, 1 - Produção; 2 - Homologação
  Texto := Texto + IntToStr(ComboBox2.ItemIndex + 1) + '|';
//Finalidade da emissão, 1 - NF-e Normal; 2 - NF-e Complementar; 3 - NF-e de Ajuste
  Texto := Texto + IntToStr(ComboBox3.ItemIndex + 1) + '|';

//Processo de emissão da NF-e, 0 - Emissão com aplicativo do contribuinte; 1 - emissão de NF-e avulsa pelo Fisco;
// 2 - emissão NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco;
// 3 - emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco
  //Texto := Texto + '3|';
  Texto := Texto + IntToStr(ComboBox4.ItemIndex) + '|';

// Versão do Processo de emissão da NF-e
  Texto := Texto + fDMNFe.qParametrosVERSAOEMISSAONFE.AsString + '|';
  if ((Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '2') or
     (Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '3') or
     (Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '5')) then
  begin 
    Texto := Texto + FormatFloat('0000',YearOf(fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime)) + '-'
                   + FormatFloat('00',MonthOf(fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime)) + '-'
                   + FormatFloat('00',DayOf(fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsDateTime)) + 'T'
                   + fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsString + '|';

    Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CONTINGENCIA.AsString) + '|';
  end
  else
    Texto := Texto + '|' + '|';

  vTextoEnvio.Add(Texto);

//Letra B13 - Notas Referenciadas
//Letra B14 - Notas Referenciadas
  //28/08/2009
  Le_mNotaDevolvidaNFe;

// Letra C - Razão Social ou Nome do emitente + Fantasia não obrigatório
  Texto := 'C|' + TirarAcento(fDMNFe.qFilialNOME.AsString) + '| |';
  
//IE - em branco não obrigatório IEST, IM e CNAE
  texto2 := ' ';
  if fDMNFe.qFilialINSCMUNICIPAL.AsString <> '' then
    texto2 := Monta_Texto(fDMNFe.qFilialINSCMUNICIPAL.AsString,0);
  Texto := Texto +  Monta_Texto(fDMNFe.qFilialINSCR_EST.AsString,0) + '| |' + Texto2 + '|';
  texto2 := ' ';
  if fDMNFe.qFilialCNAE.AsString <> '' then
    texto2 := fDMNFe.qFilialCNAE.AsString;
  Texto := Texto + texto2 + '|';

  //NFe 2.00
//Código do Regime Tributário
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscalID_REGIMETRIB.AsString + '|';

  vTextoEnvio.Add(Texto);

// Letra C02 - cnpj do emitente
  texto2 := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  Texto := 'C02|' + Texto2 + '|';
  vTextoEnvio.Add(Texto);

// Letra C05 - Logradouro
  Texto := 'C05|' + fDMNFe.qFilialENDERECO.AsString + '|';

// Nº
  Texto := Texto + fDMNFe.qFilialNUM_END.AsString + '|';

//Complemento não obrigatório
  Texto := Texto + fDMNFe.qFilialCOMPLEMENTO_END.AsString + ' |';

//Bairro
  Texto := Texto + fDMNFe.qFilialBAIRRO.AsString + '|';

//Cód. da UF (43) + Município (04606)
  Texto := Texto + fDMNFe.qCidadeCODMUNICIPIO.AsString + '|';

//Nome do município
  Texto := Texto + TirarAcento(fDMNFe.qCidadeNOME.AsString) + '|';

//UF
  Texto := Texto + fDMNFe.qCidadeUF.AsString + '|';
//Cep
  texto2 := Monta_Texto(fDMNFe.qFilialCEP.AsString,8);
  Texto :=  Texto + Texto2 + '|';

//Cód. País
  Texto := Texto + fDMNFe.qPaisCODPAIS.AsString + '|';

//Nome do País
  Texto := Texto + TirarAcento(fDMNFe.qPaisNOME.AsString) + '|';

//Telefone
  Texto := texto + Monta_Texto(fDMNFe.qFilialDDD1.AsString + fDMNFe.qFilialFONE.AsString,13) + '|';
  vTextoEnvio.Add(Texto);

//Letra E - Nome do Destinatário
  if ComboBox2.ItemIndex = 1 then
    Texto := 'E|' + 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL|'
  else
    Texto := 'E|' + TirarAcento(fDMCadNotaFiscal.cdsClienteNOME.AsString) + '|';
                            
//IE - Se tiver Inscr. Estadual informar, se não fica ISENTO
  Texto := Texto + Monta_Texto(fDMCadNotaFiscal.cdsClienteINSCR_EST.AsString,0) + '|';

//Inscrição na SUFRAMA
  Texto := Texto + ' |';

//Email do cliente (pode ser o e-mail de recepção da nfe)
  Texto := Texto + Copy(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,1,60) + '|';
  vTextoEnvio.Add(Texto);

//Letra E02 se for CNPJ ou E03 se for CPF
  fDMNFe.Posiciona_CidadeUF(fDMCadNotaFiscal.cdsClienteID_CIDADE.AsInteger,fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger);
  if fDMNFe.qPaisCODPAIS.AsString <> '1058' then
    texto := 'E02||'
  else
  if fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'J' then
    texto := 'E02|' + Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString,14) + '|'
  else
    texto := 'E03|' + Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString,11) + '|';
  vTextoEnvio.Add(Texto);

//Letra E05 - Endereço Destinatário + Número
  Texto := 'E05|' + TirarAcento(fDMCadNotaFiscal.cdsClienteENDERECO.AsString) + '|';
  Texto := Texto +  fDMCadNotaFiscal.cdsClienteNUM_END.AsString + '|';

//Complemento
  Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsClienteCOMPLEMENTO_END.AsString) + '|';

//Bairro
  Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsClienteBAIRRO.AsString) + '|';

//Cód. do País (43) + Município (09209)
  if (fDMNFe.qPaisCODPAIS.AsString = '1058') then
    Texto := Texto + fDMNFe.qCidadeCODMUNICIPIO.AsString + '|'
  else
    Texto := Texto + '9999999|';

//Nome Município
  if (fDMNFe.qPaisCODPAIS.AsString = '1058') then
    Texto := Texto + TirarAcento(fDMNFe.qCidadeNOME.AsString) + '|'
  else
    Texto := Texto + 'EXTERIOR|';

//UF
  //Texto := Texto + 'RS|';
  if (fDMNFe.qPaisCODPAIS.AsString = '1058') then
    Texto := Texto + fDMNFe.qUFUF.AsString + '|'
  else
    Texto := Texto + 'EX|';

//Cep
  Texto := Texto + Monta_Texto(fDMCadNotaFiscal.cdsClienteCEP.AsString,8) + '|';

//Cód. País
  Texto := Texto + fDMNFe.qPaisCODPAIS.AsString + '|';

//Nome do País
  Texto := Texto + TirarAcento(fDMNFe.qPaisNOME.AsString) + '|';

//Telefone
  Texto2 := fDMCadNotaFiscal.cdsClienteDDDFONE1.AsString + fDMCadNotaFiscal.cdsClienteTELEFONE1.AsString;
  Texto  := Texto + Monta_Texto(Texto2,14) + '|';
  vTextoEnvio.Add(Texto);     

//Letra G - Local de entrega - Informar apenas quando for diferente do endereço do destinatário.
  if fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.AsString = 'N' then
    exit;

//CNPJ entrega
  Texto := 'G|';

//Endereço de entrega
  Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsClienteENDERECO_ENT.AsString) + '|';

//Nº Endereço de entrega
  Texto := Texto + fDMCadNotaFiscal.cdsClienteNUM_END_ENT.AsString + '|';

//Complemento
  Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsClienteCOMPLEMENTO_END_ENT.AsString) + '|';

//Bairro de endereço de entrega
  Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsClienteBAIRRO_ENT.AsString) + '|';

//Código do municipio de entrega
  fDMNFe.Posiciona_CidadeUF(fDMCadNotaFiscal.cdsClienteID_CIDADE_ENT.AsInteger,fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger);
  if (fDMNFe.qPaisCODPAIS.AsString = '1058') then
    Texto := Texto + TirarAcento(fDMNFe.qCidadeCODMUNICIPIO.AsString) + '|'
  else
    Texto := Texto + '9999999|';

//nome do municipio de entrega
  if (fDMNFe.qPaisCODPAIS.AsString = '1058') then
    Texto := Texto + TirarAcento(fDMNFe.qCidadeNOME.AsString) + '|'
  else
    Texto := Texto + 'EXTERIOR|';

//UF do endereço de entrega
  if (fDMNFe.qPaisCODPAIS.AsString = '1058') then
    Texto := Texto + fDMNFe.qUFUF.AsString + '|'
  else
    Texto := Texto + 'EX|';
  vTextoEnvio.Add(Texto);

//CNPJ entrega
  Texto2 := Monta_Texto(fDMCadNotaFiscal.cdsClienteCNPJ_CPF_ENT.AsString,14);
  if copy(Texto2,1,3) = '000' then
  begin
    texto2 := Copy(texto2,4,11);
    texto  := 'G02a|' + texto2 + '|';
  end
  else
    texto  := 'G02|' + texto2 + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.btEnviarAntClick(Sender: TObject);
var
  oNFe: TStrings;
  oNFeChave: TStrings;
  oNFeStream, Danfe: TMemoryStream;
  Recibo: string;
  NroProtocolo: string;
  ChaveAcesso: string;
  vNumAux: Integer;
  vEnviarTxt: Boolean;
  vGravarChave: Boolean;
  CodigoErro: integer;
  MensagemErro: string;
  vIDNota: Integer;
begin
  //NFe 2.00
  ckAnexarDanfe.Checked := (fDMNFe.qParametrosANEXARDANFE.AsString = 'S');
  case cbConvTxtXml.ItemIndex of
    0: vEnviarTxt := True;
    1: vEnviarTxt := False;
  end;
  if not vProduto_OK then
  begin
    ShowMessage('Existe produto na nota que está inativo!');
    exit;
  end;
  vEnviarTxt := False;
  prc_Configura_Variaveis_Envio;

  if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
  begin
    ShowMessage('Nota não pode ser enviada pois está denegada!');
    exit;
  end;

  if ComboBox5.ItemIndex = 1 then
    vNomeArquivo := Monta_Diretorio('T',DirectoryEdit1.Text)
  else
  begin
    vNomeArquivo := Monta_Diretorio('X',fDMNFe.qParametrosENDXMLNFE.AsString);
    vNomeArqPdf  := Monta_Diretorio('P',fDMNFe.qParametrosENDPDFNFE.AsString);
  end;
  if vNomeArquivo = '' then
    exit;
  vTextoEnvio := TStringList.Create;
  vTextoEnvio.Clear;
  oNFe       := TStringList.Create;
  oNFeChave  := TStringList.Create;
  oNFeStream := TMemoryStream.Create;
  Danfe      := TMemoryStream.Create;

  try
    if vEnviarTxt then
      GerarNFeTXT(oNFe)
    else
    begin
      vGerar_Chave_Antiga := 'N';
      Gera_Chave(False);
      vChave_XML := lbChaveAcesso.Caption;
      lbChaveAcesso.Caption := '';
      prc_Gerar_XML_400(fDMCadNotaFiscal,fDMNFe,oNFe);
    end;

    if ComboBox5.ItemIndex <> 3 then
    begin
      oNFe.SaveToStream(oNFeStream);
      oNFeStream.Position := 0;
    end;

    //06/01/2012 foi feito para reenviar o xml e o pdf para o cliente
    if ComboBox5.ItemIndex = 3 then
    begin                                      
      vNomeArquivo := vNomeArquivo + '_' + fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString + '.xml';
      if not FileExists(vNomeArqPdf) then
        btnRegravarDanfeClick(Sender);
      if trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString) = '' then
        MessageDlg('*** Cliente sem email cadastrado!', mtInformation, [mbOk], 0);
      if ckUsarJv.Checked then
        Envia_MailJV(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
      else
      if ckUsarOutlookOLE.Checked then
        Envia_MailOLE(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
      else
      if ckUsarOutlook.Checked then
        Envia_Mail(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
      else
        Envia_Mail2(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica');
    end
    //*********************
    else
    if ComboBox5.ItemIndex = 1 then
      begin
        oNFe.SaveToFile(vNomeArquivo);

        if ckUsarJv.Checked then
          Envia_MailJV(fDMNFe.qParametrosEMAILRESPONSAVELSISTEMA.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
        else
        if ckUsarOutlookOLE.Checked then
          Envia_MailOLE(fDMNFe.qParametrosEMAILRESPONSAVELSISTEMA.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
        else
        if ckUsarOutlook.Checked then
          Envia_Mail(fDMNFe.qParametrosEMAILRESPONSAVELSISTEMA.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
        else
          Envia_Mail2(fDMNFe.qParametrosEMAILRESPONSAVELSISTEMA.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica');
      end
    else
    if (ComboBox5.ItemIndex = 0) or (ComboBox5.ItemIndex = 2) then
      begin
        vGravarChave := False;
        if fDMNFe.qFilialPESSOA.AsString = 'F' then
          texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
        else
          texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
        vContigencia := Verifica_Contigencia;
        if not ConectadoInternet(Trim(fnc_LocalServidorNFe), texto) then
          exit;

        EnviaNFe( Trim(fnc_LocalServidorNFe),
                  Texto,
                  oNFeStream,
                  Recibo,
                  NroProtocolo,
                  ChaveAcesso,vContigencia,vEnviarTxt,
                  CodigoErro, MensagemErro );
        if Trim(lbRecibo.Caption) = '' then
          lbRecibo.Caption       := Recibo
        else
          Recibo := lbRecibo.Caption;

        if Trim(lbNroProtocolo.Caption) = '' then
          lbNroProtocolo.Caption := NroProtocolo
        else
          NroProtocolo := lbNroProtocolo.Caption;

        if Trim(lbChaveAcesso.Caption) = '' then
        begin
          lbChaveAcesso.Caption := ChaveAcesso;
          vGravarChave          := True;
        end
        else
          ChaveAcesso := lbChaveAcesso.Caption;
        oNFeStream.Position := 0;

        if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString = 'S' then
        begin
          NFe_GerarDANFE( trim(fnc_LocalServidorNFe),
                        //texto,'marca que é de homologação ou cancelada','Nome do cliente no canhoto',
                        texto,vMarca_Homologacao,vCliente_Canhoto,
                        oNFeStream,
                        DANFE );

          //Arquivo := ExtractFilePath(Application.ExeName) + 'DANFE.pdf';
          if FileExists(vNomeArqPdf) then
            DeleteFile(vNomeArqPdf);

          DANFE.Position := 0;
          DANFE.SaveToFile(vNomeArqPdf);
        end;
        //*****************

        vNomeArquivo := vNomeArquivo + '_' + ChaveAcesso + '.xml';
        SalvarUTF8( oNFeStream, vNomeArquivo );

        try
          if (Trim(ChaveAcesso) <> '') then
          begin
            vIDNota := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
            fDMCadNotaFiscal.Gravar_Envio_Nota(Recibo,NroProtocolo,ChaveAcesso,ComboBox3.ItemIndex+1,ComboBox2.ItemIndex+1,CodigoErro,fDMNFe.mDadosAdicionaisNFeObs.Value);
            if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger <> vIDNota then
              fDMCadNotaFiscal.cdsNotaFiscal.Locate('ID',vIDNota,([Locaseinsensitive]));

          end;
        except
          ShowMessage('Erro na gravação da chave de acesso para o banco de dados!');
        end;

        //Envia por e-mail
        if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString <> 'S' then
        begin
          if (ckAnexarDanfe.Checked) then
            prc_Imprimir_Danfe('E')
          else
            vNomeArqPdf := '';
        end;

        //03/04/2012 só o if que foi incluido
        if (CodigoErro <> 301) and (CodigoErro <> 302) then
        begin
          if trim(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString) = '' then
            MessageDlg('*** Cliente sem email cadastrado, XML e Danfe não enviado ao cliente!', mtInformation, [mbOk], 0)
          else
          if ckUsarJv.Checked then
            Envia_MailJV(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
          else
          if ckUsarOutlookOLE.Checked then
            Envia_MailOLE(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
          else
          if ckUsarOutlook.Checked then
            Envia_Mail(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica')
          else
            Envia_Mail2(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,'Em anexo, arquivos referentes a Nota Eletrônica');
        end;

        btEnviarAnt.Enabled := (Trim(ChaveAcesso) = '');
        btDanfe.Enabled  := (Trim(ChaveAcesso) <> '');
        lbErro.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S');
        lbErro.Caption := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString;

      end;
  finally
    FreeAndNil(oNFeStream);
    FreeAndNil(oNfe);
    FreeAndNil(oNfeChave);
    FreeAndNil(vTextoEnvio);
    FreeAndNil(Danfe);
    Edit1.Text := vNomeArquivo;
  end;
  btEnviarNovo.Enabled := btEnviarAnt.Enabled;
end;

procedure TfNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fDMRel);
  Tag := 0;
  SaveSettings;
  fDMNFe.vHrEmissaoNFe_Inf := 0;
  Action := Cafree;
end;

procedure TfNFe.FormShow(Sender: TObject);
begin
  //16/05/2012
  //Tag = 1   Inutilizar
  //Tag = 2   Cancelar
  //Tag = 5   Carta de Correção
  prc_Configura_Tela;
  fDMNFe.vHrEmissaoNFe_Inf := 0;
  if Tag <> 1 then
    btnAjustaRec.Enabled := (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '');
end;

procedure TfNFe.btDanfeClick(Sender: TObject);
begin
  if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString = 'S' then
    prc_Danfe_Flexdocs
  else
    prc_Imprimir_Danfe('I');
end;

procedure TfNFe.btCancelarClick(Sender: TObject);
var
  NroProtocolo: string;
  oNFeStream: TMemoryStream;
begin
  if trim(fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString) <> '' then
  begin
    MessageDlg('*** Nota já cancelada!', mtInformation, [mbOk], 0);
    exit;
  end;
  vNomeArqPdf := '';
  if ComboBox5.ItemIndex = 1 then
    vNomeArquivo := Monta_Diretorio('T',DirectoryEdit1.Text)
  else
    vNomeArquivo := Monta_Diretorio('X',fDMNFe.qParametrosENDXMLNFE.AsString);
  if vNomeArquivo = '' then
    exit;

  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  vContigencia := Verifica_Contigencia;

  oNFeStream := TMemoryStream.Create;
  try

    CancelaNFe(Trim( fnc_LocalServidorNFe),
                texto,
                Copy(lbNroProtocolo.Caption,1,15),
                lbChaveAcesso.Caption,
                fDMCadNotaFiscal.vMotivoCancelamento,
                NroProtocolo,
                oNFeStream,
                vContigencia, False);

    lbNroProtocoloCancelamento.Caption := NroProtocolo;
    oNFeStream.Position                := 0;
    vNomeArquivo := vNomeArquivo + '_CANCELADA_' + lbChaveAcesso.Caption + '.xml';
    SalvarUTF8( oNFeStream, vNomeArquivo );

    if lbNroProtocoloCancelamento.Caption <> '' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal.Edit;
        fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString := NroProtocolo;
        fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString              := 'S';
        fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CANCELADA.AsString       := fDMCadNotaFiscal.vMotivoCancelamento;
        fDMCadNotaFiscal.cdsNotaFiscal.Post;
        fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
        //btCancelar.Enabled := False;
        prc_Controlar_Envio_Email('C');
      end
    else
      ShowMessage('Problema no cancelamento, nota não foi cancelada!');

  finally
    FreeAndNil(oNFeStream);
    Edit1.Text := vNomeArquivo;
  end;

end;

procedure TfNFe.btConexaoClick(Sender: TObject);
begin
  vConexao := Verifica_ConexaoInternet;
  Habilita_Botoes;
  if not vConexao then
    ShowMessage('Internet com problema, sem conexão!')
  else
    ShowMessage('Internet esta ok!');
end;

procedure TfNFe.btGerarChaveClick(Sender: TObject);
begin
  vGerar_Chave_Antiga := '';
  Gera_Chave(False);
end;

procedure TfNFe.Button6Click(Sender: TObject);
begin
  Monta_CodBarraContingencia('G');
end;

procedure TfNFe.Button7Click(Sender: TObject);
var
  Protocolo: String;
begin
  if SameText(Trim(edChaveNfe.Text), EmptyStr) then
    raise Exception.Create('Crie primeiro a chave de acesso pelo botão "Gera Chave NFe".');

  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  vContigencia := Verifica_Contigencia;

  lbRecibo.Caption       := EmptyStr;
  lbNroProtocolo.Caption := EmptyStr;
  lbChaveAcesso.Caption  := EmptyStr;

  Protocolo := NFe_Consultar( Trim(fnc_LocalServidorNFe),
                              texto,
                              edChaveNfe.Text,
                              vContigencia,
                              false ); // 23/09/2015

  lbNroProtocolo.Caption := Protocolo;
  lbChaveAcesso.Caption  := edChaveNfe.Text;
end;

procedure TfNFe.btGravaNotaClick(Sender: TObject);
begin
  if Trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '' then
  begin
    ShowMessage('Chave de acesso já gerada!');
    exit;
  end;

  if Trim(lbChaveAcesso.Caption) = '' then
  begin
    ShowMessage('Não foi feita a consulta da chave de acesso!');
    exit;
  end;

  if Trim(lbNroProtocolo.Caption) = '' then
    exit;

  if Trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
    fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString := lbChaveAcesso.Caption;
    fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString   := lbNroProtocolo.Caption;
    fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString    := IntToStr(ComboBox2.ItemIndex + 1);
    fDMCadNotaFiscal.cdsNotaFiscal.Post;
    fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
    Close;
  end;
end;

procedure TfNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    CheckBox1.Visible := not(CheckBox1.Visible);
    CheckBox2.Visible := not(CheckBox2.Visible);
    btnLimpaXML_Assinado_Proc.Visible := not(btnLimpaXML_Assinado_Proc.Visible);
  end;
end;

procedure TfNFe.Button8Click(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  if OpenDialog.Execute then
  begin
    Stream := TMemoryStream.Create;
    if fDMNFe.qFilialPESSOA.AsString = 'F' then
      texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
    else
      texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
    vContigencia := Verifica_Contigencia;

    try
      Stream.LoadFromFile(OpenDialog.FileName);
      NFe_AdicionaProtNFe( Trim(fnc_LocalServidorNFe),
                           Texto,
                           Stream,
                           vContigencia );

      Stream.Position := 0;
      vNomeArquivo := Monta_Diretorio('X',fDMNFe.qParametrosENDXMLNFE.AsString);
      vNomeArquivo := vNomeArquivo + '_RE_' + lbChaveAcesso.Caption + '.xml';
      SalvarUTF8( Stream, vNomeArquivo );

      //Envia por e-mail
      Envia_Mail(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,' Em Anexo, XML referente a Nota Eletrônica');

    finally
      FreeAndNil(Stream);
    end;
  end;
end;

procedure TfNFe.ComboBox5Click(Sender: TObject);
begin
  if (ComboBox5.ItemIndex = 1) or (ComboBox5.ItemIndex = 3) then
  begin
    btEnviarAnt.Enabled  := True;
    btEnviarNovo.Enabled := False;
  end
  else
  begin
    btEnviarAnt.Enabled  := ((fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString = '') and
                            (vConexao));
    btEnviarNovo.Enabled := btEnviarAnt.Enabled;
  end;
end;

procedure TfNFe.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  try
    GetSettings;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  vImp_Obs_Difal := 'N';

end;

procedure TfNFe.GetSettings;
var
  ini: TIniFile;
  vUsarOutlook: String;
  vUsarJV, vUsarPadrao, vUsarOutlookOLE, vFilialNaChaveNao, vUsarEmailConfig: String;
  vAnexarDanfe: String;
begin                                                                

  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'_' + 'A' + '_NFe.ini'));
  try
    vUsarOutlook  := ini.ReadString('MAIL','UsarOutlook','');
    vUsarJV       := ini.ReadString('MAIL','UsarJv','');
    vUsarPadrao   := ini.ReadString('MAIL','UsarPadrao','');
    vUsarOutlookOLE := ini.ReadString('MAIL','UsarOutlookOLE','');
    vAnexarDanfe  := ini.ReadString('MAIL','AnexarDanfe','');
    vUsarEmailConfig  := ini.ReadString('MAIL','EmailConfig','');
    vFilialNaChaveNao := ini.ReadString('DADOS','NaoFilialNaChave','');

  finally
    ini.Free;
  end;

  if vUsarOutlook = 'SIM' then
    ckUsarOutlook.Checked := True
  else
  if vUsarJV = 'SIM' then
    ckUsarJv.Checked := True
  else
  if vUsarPadrao = 'SIM' then
    ckUsarPadrao.Checked := True
  else
  if vUsarOutlookOLE = 'SIM' then
    ckUsarOutlookOLE.Checked := True
  else
  if vUsarEmailConfig = 'SIM' then
    ckEmailConfigurado.Checked := True;

  if vAnexarDanfe = 'SIM' then
    ckAnexarDanfe.Checked := True
  else
    ckAnexarDanfe.Checked := False;
  if vFilialNaChaveNao = 'SIM' then
    ckFilialNao.Checked := True
  else
    ckFilialNao.Checked := False;
end;

procedure TfNFe.SaveSettings;
var
  ini: TIniFile;
  vUsarOutlook: String;
  vUsarJV, vUsarOutlookOLE, vUsarPadrao, vFilialNaChaveNao, vUsarEmailConfig: String;
  vAnexarDanfe: String;
begin
  vUsarJV          := 'NÃO';
  vUsarOutlookOLE  := 'NÃO';
  VUsarPadrao      := 'NÃO';
  vUsarOutlook     := 'NÃO';
  vUsarEmailConfig := 'NÃO';

  if ckUsarOutlook.Checked then
    vUsarOutlook := 'SIM'
  else
  if ckUsarOutlookOLE.Checked then
    vUsarOutlookOLE := 'SIM'
  else
  if ckUsarPadrao.Checked then
    vUsarPadrao := 'SIM'
  else
  if ckUsarJv.Checked then
    vUsarJV := 'SIM'
  else
  IF ckEmailConfigurado.Checked then
    vUsarEmailConfig := 'SIM';

  if ckFilialNao.Checked then
    vFilialNaChaveNao := 'SIM'
  else
    vFilialNaChaveNao := 'NAO';

  if ckAnexarDanfe.Checked then
    vAnexarDanfe := 'SIM'
  else
    vAnexarDanfe := 'NAO';

  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'_' + 'A' + '_NFe.ini'));
  try
    ini.WriteString('MAIL','UsarOutlook',vUsarOutlook);
    ini.WriteString('MAIL','UsarPadrao',vUsarPadrao);
    ini.WriteString('MAIL','UsarOutlookOLE',vUsarOutlookOLE);
    ini.WriteString('MAIL','UsarJv',vUsarJV);
    ini.WriteString('MAIL','AnexarDanfe',vAnexarDanfe);
    ini.WriteString('MAIL','EmailConfig',vUsarEmailConfig);

    ini.WriteString('DADOS','NaoFilialNaChave',vFilialNaChaveNao);

  finally
    ini.Free;
  end;
end;

procedure TfNFe.Monta_N08;
begin
//CST – 60 - ICMS cobrado anteriormente por substituição tributária
  Texto := 'N08|';

//Origem
  Texto := Texto + vOrigem + '|';

//Tributação do ICMS
  Texto := Texto + vCodSitTrib + '|';
  
//Valor da BC do ICMS ST retido
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Valor do ICMS ST retido
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N05;
begin
//CST – 30 -  Isenta ou não tributada e com cobrança do ICMS por substituição tributária
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N05|' + vOrigem +'|';

//Tributação do ICMS
  Texto := Texto + vCodSitTrib +'|';

//Modadelidade de determinação
  Texto := Texto + '4|';

//Percentual da margem de valor adicionado do ICMS ST, OPCIONAL
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat) ,',','.') + '|';

//Percentual da redução da BC do ICMS ST, OPCIONAL
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.') + '|';

//Valor da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Aliquota do Imposto de ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat) ,',','.') + '|';

//Valor do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_B13;
begin
  //NFe 2.00
//Letra B13 - Notas Referenciadas
//Informação das NFe referenciadas
  Texto := 'B13|' + fDMNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_B14;
begin
  //NFe 2.00
//Letra B14 - Notas Referenciadas
//Codigo UF
  Texto := 'B14|';
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeCodUF.AsString + '|';

//Ano e Mês
  Texto := Texto + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger) + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger) + '|';
//CNPJ
  Texto := Texto + Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,14) + '|';
//Modelo
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeModelo.AsString  + '|';
//Série
  if (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UN') or (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UNI') then
    Texto := Texto + '1|'
  else
    Texto := Texto + fDMNFe.mNotaDevolvidaNFeSerie.AsString  + '|';
//Número da nota
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeNumNota.AsString + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_B20a;
begin
//Letra B20a - Notas Referenciadas de Produto Rural
//Codigo UF
  Texto := 'B20a|';
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeCodUF.AsString + '|';
//Ano e Mês
  Texto := Texto + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger) + FormatFloat('00',fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger) + '|';
//IE
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeIE.AsString  + '|';
//Modelo
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeModelo.AsString  + '|';
//Série
  if (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UN') or (fDMNFe.mNotaDevolvidaNFeSerie.AsString = 'UNI') then
    Texto := Texto + '1|'
  else
    Texto := Texto + fDMNFe.mNotaDevolvidaNFeSerie.AsString  + '|';
//Número da nota
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeNumNota.AsString + '|';

  vTextoEnvio.Add(Texto);

//Registro B20d ou B20e CNPJ ou CPF do produtor rural
  if Length(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString) > 12 then
  begin
    Texto := 'B20d|';
    Texto := Texto + Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,14) + '|'
  end
  else
  begin
    Texto := 'B20e|';
    Texto := Texto + Monta_Texto(fDMNFe.mNotaDevolvidaNFeCNPJ.AsString,11) + '|';
  end;
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_B20j;
begin
  //NFe 2.0
//Cupom Fiscal
  Texto := 'B20j|';

//Modelo do documento fiscal (Cupom)
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeCupomModelo.AsString + '|';

//Número de ordem sequencial do ECF
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeCupomNumECF.AsString + '|';

//Número do contador de ordem de operação - COO
  Texto := Texto + fDMNFe.mNotaDevolvidaNFeCupomNumCOO.AsString + '|';

  vTextoEnvio.Add(Texto);
end;


procedure TfNFe.Monta_X22;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Reboque.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Eof do
  begin
    Texto := 'X22|';

    Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_ReboquePLACA.AsString + '|';
    Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_ReboqueUF.AsString + '|';
    Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_ReboqueRNTC.AsString + '|';

    vTextoEnvio.Add(Texto);

    fDMCadNotaFiscal.cdsNotaFiscal_Reboque.Next;
  end;
end;

procedure TfNFe.Monta_X33;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Lacre.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Eof do
  begin
    Texto := 'X33|';

    Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscal_LacreNUMLACRE.AsString + '|';
    vTextoEnvio.Add(Texto);

    fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Next;
  end;
end;

procedure TfNFe.btInutilizarClick(Sender: TObject);
var
  NroProtocolo: string;
  oNFeStream: TMemoryStream;
begin
  vNomeArquivo := Monta_Diretorio('I',fDMNFe.qParametrosENDXMLNFE.AsString);

  if vNomeArquivo = '' then
    exit;

  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  vContigencia := Verifica_Contigencia;

  oNFeStream := TMemoryStream.Create;

  try
    InutilizaNFe( Trim(fnc_LocalServidorNFe),
                  Texto,
                  fDMNFe.qUFCODUF.AsString,
                  Copy(fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoANO.AsString,3,2),
                  fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoMODELO.AsString,
                  fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoSERIE.AsString,
                  fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_INI.AsString,
                  fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMNOTA_FIN.AsString,
                  fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoMOTIVO.AsString,
                  NroProtocolo,
                  oNFeStream,
                  vContigencia);

    lbNroProtocoloInutil.Caption := NroProtocolo;

    vNomeArquivo := vNomeArquivo + NroProtocolo + '.xml';
    SalvarUTF8( oNFeStream, vNomeArquivo );

    if NroProtocolo <> '' then
    begin
      fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.Edit;
      fDMCadNFe_Inutilizacao.cdsNFe_InutilizacaoNUMPROTOCOLO.AsString := NroProtocolo;
      fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.Post;
      fDMCadNFe_Inutilizacao.cdsNFe_Inutilizacao.ApplyUpdates(0);
    end;
    oNFeStream.Position := 0;
  finally
    FreeAndNil(oNFeStream);
    Edit1.Text           := vNomeArquivo;
    btInutilizar.Enabled := False;
  end;
end;

procedure TfNFe.Button2Click(Sender: TObject);
begin
  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  if VerificaStatusNFe(Trim(fnc_LocalServidorNFe), Texto, False) then
    ShowMessage('No ar')
  else
    ShowMessage('Fora do ar');
end;

procedure TfNFe.Button3Click(Sender: TObject);
begin
  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  if VerificaStatusNFe(Trim(fnc_LocalServidorNFe), Texto, True) then
    ShowMessage('No ar')
  else
    ShowMessage('Fora do ar');
end;

procedure TfNFe.Monta_X03;
var
  texto2, vInscTransp: string;
  vCNPJTransp: String;
begin
  texto2      := ' ';
  vInscTransp := ' ';

  fDMNFe.qTransportadora.Close;
  fDMNFe.qTransportadora.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger;
  fDMNFe.qTransportadora.Open;
  if fDMNFe.qTransportadoraCODIGO.AsInteger > 0 then
  begin
    if fnc_Posicionar_Cidade(fDMNFe.qTransportadoraID_CIDADE.AsInteger) then
      Texto2 := TirarAcento(fDMNFe.qCidadeNOME.AsString);
  end;
  vInscTransp := Monta_Texto(fDMNFe.qTransportadoraINSCR_EST.AsString,0);
  Texto := 'X03|';
//Nome da transportadora
  Texto := Texto + TirarAcento(fDMNFe.qTransportadoraNOME.AsString) + '|';
//Inscrição Estadual
  Texto := Texto + vInscTransp + '|';
//Endereço Completo
  Texto := Texto + TirarAcento(fDMNFe.qTransportadoraENDERECO.AsString + ',' + fDMNFe.qTransportadoraNUM_END.AsString + ' ' + fDMNFe.qTransportadoraCOMPLEMENTO_END.AsString) + '|';
//Sigla da UF
  Texto := Texto + fDMNFe.qTransportadoraUF.AsString + '|';
//Município
  Texto := Texto + texto2 +'|';
  vTextoEnvio.Add(Texto);

//Letra X04 se for CNPJ ou X05 se for CPF
  if fDMNFe.qTransportadoraCODIGO.AsInteger > 0 then
  begin
    if fDMNFe.qTransportadoraPESSOA.AsString = 'F' then
    begin
      vCnpjTransp := Monta_Texto(fDMNFe.qTransportadoraCNPJ_CPF.AsString,11);
      Texto       := 'X05|';
    end
    else
    begin
      Texto       := 'X04|';
      vCnpjTransp := Monta_Texto(fDMNFe.qTransportadoraCNPJ_CPF.AsString,14);
    end;
    Texto := Texto + vCnpjTransp + '|';
    vTextoEnvio.Add(Texto);
  end;

//Letra X18 - Veículo - Placa do Veículo
  if trim(fDMCadNotaFiscal.cdsNotaFiscalPLACA.AsString) <> '' then
  begin
    Texto := 'X18|' + fDMCadNotaFiscal.cdsNotaFiscalPLACA.AsString + '|';
    //Sigla da UF
    Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscalUFPLACA.AsString + '|';
    //Registro Nacional de Transportador de Carga (ANTT) (Opcional)
    Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscalRNTC.AsString + '|';
    vTextoEnvio.Add(Texto);
  end;

//Reboque
  Monta_X22;

//Identificação do Vagão ou Balsa
  Texto := '';
  if fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF.AsString = 'V' then
    Texto := 'X25a|' + fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_IDENTIF.AsString + '|'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF.AsString = 'B' then
    Texto := 'X25b|' + fDMCadNotaFiscal.cdsNotaFiscalVAGAOBALSA_IDENTIF.AsString + '|';
  if Texto <> '' then
    vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Gera_Chave(Contingencia: Boolean);
var
  ChaveNfe: string;
  vSerieAux: String;
  vNumNotaAux: String;
  vVersaoAntiga: Boolean;
  vTipoEnvio: Integer;
begin
  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  if fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString = 'UN' then
    vSerieAux   := '001'
  else
    vSerieAux   := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString,3);
  vNumNotaAux := Monta_Texto(fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString,9);
  fDMNFe.Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);
  //NFe 2.00
  if ComboBox1.ItemIndex = 3 then
    vTipoEnvio := 5
  else
    vTipoEnvio := ComboBox1.ItemIndex + 1;

  //Colocar não (False) para versão 2.00
  //NFe 2.00

  if vGerar_Chave_Antiga = 'N' then
    vVersaoAntiga := False
  else
  begin
    if not Contingencia then
      vVersaoAntiga := (MessageDlg('Deseja usar a versão antiga da geração da chave?', mtConfirmation, [mbYes, mbNo], 0) = mrYes)
    else
      vVersaoAntiga := False;
  end;

  ChaveNfe := CriaChaveNFe( Trim(fnc_LocalServidorNFe),
                            Texto,
                            fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime,
                            fDMNFe.qUFCODUF.AsString,
                            '55',
                            vSerieAux,
                            vNumNotaAux,IntToStr(vTipoEnvio),vVersaoAntiga);

  if not Contingencia then
    edChaveNfe.Text := ChaveNfe
  else
    lbChaveAcesso.Caption := ChaveNfe;
  if vGerar_Chave_Antiga = 'N' then
    lbChaveAcesso.Caption := ChaveNfe;
end;

procedure TfNFe.btContingenciaClick(Sender: TObject);
begin
  //NFe 2.00  = Foi incluida toda esta procedure
  Gera_Chave(True);
  Monta_CodBarraContingencia('E');

  if lbCodBarraContingencia.Caption = '' then
  begin
    ShowMessage('Problema na geração do código de barras!');
    exit;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal.Edit;
  fDMCadNotaFiscal.cdsNotaFiscalNFERECIBO.AsString                := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString             := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString           := Trim(lbChaveAcesso.Caption);
  fDMCadNotaFiscal.cdsNotaFiscalNFECODBARRA_CONTINGENCIA.AsString := lbCodBarraContingencia.Caption;
  fDMCadNotaFiscal.cdsNotaFiscal.Post;
  fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
end;

procedure TfNFe.btCCeClick(Sender: TObject);
var
  XML: TMemoryStream;
  Ret: string;
  vAssunto: String;
begin
  vNomeArquivo := Monta_Diretorio('C',fDMNFe.qParametrosENDXMLNFE.AsString);
  vNomeArqPdf  := Monta_Diretorio('C',fDMNFe.qParametrosENDPDFNFE.AsString);
  vNomeArqPdf  := vNomeArqPdf + '.pdf';

  if vNomeArquivo = '' then
    exit;

  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
  vContigencia := Verifica_Contigencia;

  XML := TMemoryStream.Create;
  try
    Ret := EnviarCartaCorrecao( Trim(fnc_LocalServidorNFe),
                                Texto,
                                lbChaveAcesso.Caption,
                                fDMCadNotaFiscal.cdsNotaFiscal_CCeMOTIVO.Value,
                                fDMCadNotaFiscal.cdsNotaFiscal_CCeITEMTIPO.AsInteger,
                                False,
                                XML );

    lbNroProtocoloCCe.Caption := Ret;
    XML.Position := 0;

    vNomeArquivo := vNomeArquivo + lbChaveAcesso.Caption + '.xml';
    SalvarUTF8( XML, vNomeArquivo );

    if lbNroProtocoloCCe.Caption <> '' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_CCe.Edit;
      fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.AsString := lbNroProtocoloCCe.Caption;
      fDMCadNotaFiscal.cdsNotaFiscal_CCeXML.LoadFromStream(XML);
      fDMCadNotaFiscal.cdsNotaFiscal_CCe.Post;
      fDMCadNotaFiscal.cdsNotaFiscal_CCe.ApplyUpdates(0);

      btCCe.Enabled := False;
      vAssunto := 'CARTA DE CORREÇÃO DA NOTA nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString + ' Série ' + fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString;

      fDMNFe.cdsNotaFiscal_NFe.Close;
      fDMNFe.sdsNotaFiscal_NFe.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_CCeID.AsInteger;
      fDMNFe.sdsNotaFiscal_NFe.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_CCeITEM.AsInteger;
      fDMNFe.cdsNotaFiscal_NFe.Open;

      ffRelCCe        := TfRelCCe.Create(Self);
      ffRelCCe.fDMNFe := fDMNFe;
      ffRelCCe.prc_Mudar_DataSet;
      ffRelCCe.RLReport1.Prepare;
      ffRelCCe.RLReport1.SaveToFile(vNomeArqPdf);
      //fDMNFe.RLPDFFilter1.FileName := vNomeArqPdf;
      //fDMNFe.RLPDFFilter1.FilterPages(ffRelCCe.RLReport1.Pages,1,-1,'',0);
      fDMRel.RLPDFFilter1.FileName := vNomeArqPdf;
      fDMRel.RLPDFFilter1.FilterPages(ffRelCCe.RLReport1.Pages,1,-1,'',0);
      ffRelCCe.RLReport1.Free;
      ffRelCCe.Destroy;

      //FreeAndNil(ffRelCCe);

      if ckUsarJv.Checked then
        Envia_MailJV(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vAssunto,' Em Anexo o XML referente a Carta de Correção, Chave de Acesso ' + lbChaveAcesso.Caption)
      else
      if ckUsarOutlookOLE.Checked then
        Envia_MailOLE(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vAssunto,' Em Anexo o XML referente a Carta de Correção, Chave de Acesso ' + lbChaveAcesso.Caption)
      else
      if ckUsarOutlook.Checked then
        Envia_Mail(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vAssunto,' Em Anexo o XML referente a Carta de Correção, Chave de Acesso ' + lbChaveAcesso.Caption)
      else
        Envia_Mail2(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vAssunto,' Em Anexo o XML referente a Carta de Correção, Chave de Acesso ' + lbChaveAcesso.Caption)
    end
    else
      ShowMessage('Problema na autorização da carta de correção, CCe não foi autorizada!');

  finally
    begin
      FreeAndNil(XML);
      Edit1.Text := vNomeArquivo;
    end;
  end;

end;

procedure TfNFe.Gera_NFe(Tipo_Nota: String = 'NTS');
var
  i: Integer;
begin
  fDMNFe.mDadosAdicionaisNFe.Open;
  fDMNFe.mItensNFe.Open;
  if not fDMNFe.mAuxDadosNFe.Active then
    fDMNFe.mAuxDadosNFe.Open;
  fDMNFe.mItensNFe.EmptyDataSet;
  fDMNFe.mAuxDadosNFe.EmptyDataSet;

  fDMCadNotaFiscal.qNatOper.Close;
  fDMCadNotaFiscal.qNatOper.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.qNatOper.Open;

  vProduto_OK     := True;
  vCampo_Faltando := 0;
  Monta_mItensNFe;
  //05/05/2014 Lei do tributo quando for grade e grava agrupado
  prc_Monta_LeiTributos;
  if (Tipo_Nota <> 'NTE') and (Tipo_Nota <> 'RNF') then
    Monta_mDadosAdicionaisNFe;
  Monta_mParcelaNFe;
  //NFe 2.00
  if (Tipo_Nota <> 'NTE') and (Tipo_Nota <> 'RNF') then
    Le_tNotaFiscalRef;

  //NFe 2.00
  if (Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '1') or (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S') then
    ComboBox1.ItemIndex := 0
  else
  if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '2' then
    ComboBox1.ItemIndex := 1
  else
  if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '3' then
    ComboBox1.ItemIndex := 2
  else
  if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '5' then
    ComboBox1.ItemIndex := 3;
end;

procedure TfNFe.Grava_DadosAdicionaisNFe(DadosAdi: WideString; Tipo: Integer);
begin
  if fDMNFe.mDadosAdicionaisNFe.State in [dsBrowse] then
  begin
    DadosAdi := TirarAcento(DadosAdi);
    if (fDMNFe.qConfig_Nfe.Active) and (fDMNFe.qConfig_NfeDANFE_CARACTER_SALTAR_LINHA.AsString = '(') then
    begin
      DadosAdi := Replace(DadosAdi,')','');
    end;

    fDMNFe.mDadosAdicionaisNFe.Edit;
    fDMNFe.mDadosAdicionaisNFeObs.Value := fDMNFe.mDadosAdicionaisNFeObs.Value + DadosAdi;
    fDMNFe.mDadosAdicionaisNFeObs.Value := TrimLeft(fDMNFe.mDadosAdicionaisNFeObs.Value);
    fDMNFe.mDadosAdicionaisNFe.Post;
  end;
end;

procedure TfNFe.Grava_mAuxDadosNFe(Tipo, Codigo: String ; ID_Variacao: Integer = 0);
begin
  if Codigo <> '' then
  begin
    fDMNFe.mAuxDadosNFe.Insert;
    fDMNFe.mAuxDadosNFeTipo.AsString         := Tipo;
    fDMNFe.mAuxDadosNFeCodigo.AsString       := Codigo;
    fDMNFe.mAuxDadosNFeID_Variacao.AsInteger := ID_Variacao;
    fDMNFe.mAuxDadosNFe.Post;
  end;
end;

procedure TfNFe.Le_tNotaFiscalNDevolvida;
var
  vItemAux: Integer;
  vAnoAux, vMesAux: Word;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Eof do
  begin
    if not fDMNFe.mNotaDevolvidaNFe.Locate('CodForn;NumNota;Modelo;Serie',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_FORNECEDOR.AsInteger,
                              fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaMODELO.AsString,fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaSERIE_ENTRADA.AsString]),[locaseinsensitive]) then
    begin
      fDMNFe.mNotaDevolvidaNFe.Last;
      vitemAux := fDMNFe.mNotaDevolvidaNFeItem.AsInteger;
      fDMNFe.mNotaDevolvidaNFe.Insert;
      fDMNFe.mNotaDevolvidaNFeItem.AsInteger       := vItemAux + 1;
      if fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE.AsString <> '' then
      begin
        fDMNFe.mNotaDevolvidaNFeTipo.AsString := '13';
        fDMNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE.AsString;
      end
      else
      begin
        fDMNFe.mNotaDevolvidaNFeTipo.AsString        := '14';
        fDMNFe.mNotaDevolvidaNFeModelo.AsString      := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaMODELO.AsString;
        fDMNFe.mNotaDevolvidaNFeNumNota.AsInteger    := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsInteger;
        fDMNFe.mNotaDevolvidaNFeCodForn.AsInteger    := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_FORNECEDOR.AsInteger;
        fDMNFe.mNotaDevolvidaNFeNomeForn.AsString    := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNOMEFORNECEDOR.AsString;
        fDMNFe.mNotaDevolvidaNFeCNPJ.AsString        := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaCNPJ_CPF.AsString;
        vAnoAux := YearOf(fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE.AsDateTime);
        vMesAux := MonthOf(fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE.AsDateTime);
        fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsString := Copy(IntToStr(vAnoAux),3,2);
        fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger := vMesAux;
        fDMNFe.mNotaDevolvidaNFeCodUF.AsString := '';
        fDMNFe.qUF.Close;
        fDMNFe.qUF.ParamByName('UF').AsString := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaUF.AsString;
        fDMNFe.qUF.Open;
        fDMNFe.mNotaDevolvidaNFeCodUF.AsString := fDMNFe.qUFCODUF.AsString;
        fDMNFe.mNotaDevolvidaNFeSerie.AsString   := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaSERIE_ENTRADA.AsString;
      end;
      fDMNFe.mNotaDevolvidaNFe.Post;
    end;

    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Next;
  end;
end;

procedure TfNFe.Monta_mDadosAdicionaisNFe;
var
  vTexto: String;
  vObsAux: String;
  vObsSimplesPermiteIcms, vObsSimples: Boolean;
  vFlag: Boolean;
  vTexto2: String;
  vPercAux: Real;
  vAgeAux, vContaAux: String;
  vPercAux_Estadual, vPercAux_Federal, vPercAux_Municipal: Real;
  vSerieAux: String;
  i: Integer;
begin
  fDMNFe.mDadosAdicionaisNFe.EmptyDataSet;
  fDMNFe.mDadosAdicionaisNFe.Insert;
  fDMNFe.mDadosAdicionaisNFeID.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMNFe.mDadosAdicionaisNFe.Post;
  //Dados digitados manualmente
  if (fDMCadNotaFiscal.cdsNotaFiscalGRAVOU_DADOSADICIONAIS.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') then
  begin
    Grava_DadosAdicionaisNFe(fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.AsString,0);
    exit;
  end;
  //16/11/2015
  if trim(fDMCadNotaFiscal.cdsParametrosMSG_PADRAO_NOTA.Value) <> '' then
    Grava_DadosAdicionaisNFe('(' + fDMCadNotaFiscal.cdsParametrosMSG_PADRAO_NOTA.Value + ')**',0);
  //****

  //19/11/2015
  if (fDMNFe.qParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S') or (fDMNFe.qParametros_NFeIMP_OC.AsString = 'D') then
  begin
    vTexto := '';
    fDMCadNotaFiscal.mPedidoAux.First;
    while not fDMCadNotaFiscal.mPedidoAux.Eof do
    begin
      fDMNFe.qPedido.Close;
      fDMNFe.qPedido.ParamByName('ID').AsInteger := fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger;
      fDMNFe.qPedido.Open;
      if trim(fDMNFe.qPedidoOBS_NOTA.AsString) <> '' then
        vTexto := vTexto + '(OC: ' + fDMNFe.qPedidoPEDIDO_CLIENTE.AsString + ' obs: ' + fDMNFe.qPedidoOBS_NOTA.AsString + ')';
      if trim(fDMCadNotaFiscal.mPedidoAuxNum_OC.AsString) <> '' then
        vTexto := vTexto + '(OC: ' + fDMCadNotaFiscal.mPedidoAuxNum_OC.AsString + ')';
      fDMCadNotaFiscal.mPedidoAux.Next;
    end;
    if trim(vTexto) <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);
  end;
  //****

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat)) > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosIMP_TIPO_TRIBUTOS.AsString = 'T' then
    begin
      vPercAux := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat / vVlr_Trib_Itens) * 100)));
      vTexto := '(Vlr. aproximado total de tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12. R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat);
      vTexto := vTexto + '  ' + FormatFloat('0.00',vPercAux) + '%)';
    end
    else
    begin
      vPercAux_Estadual  := 0;
      vPercAux_Federal   := 0;
      vPercAux_Municipal := 0;
      if vVlr_Trib_Itens  <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat / vVlr_Trib_Itens) * 100)));
      if vPerc_Trib_Estadual <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Estadual := StrToCurr(FormatCurr('0.00',vPerc_Trib_Estadual))
      else
      if vVlr_Trib_Estadual <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Estadual := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat / vVlr_Trib_Estadual) * 100)));
      if vPerc_Trib_Federal <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Federal := StrToCurr(FormatCurr('0.00',vPerc_Trib_Federal))
      else
      if vVlr_Trib_Federal <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Federal := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat / vVlr_Trib_Federal) * 100)));
      if vPerc_Trib_Municipal <> StrToCurr(FormatCurr('0.00',0)) then
        vPerc_Trib_Municipal := StrToCurr(FormatCurr('0.00',vPerc_Trib_Municipal))
      else
      if vVlr_Trib_Municipal <> StrToCurr(FormatCurr('0.00',0)) then
        vPerc_Trib_Municipal := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat / vVlr_Trib_Municipal) * 100)));
      //vPercAux_Federal   := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat / vVlr_Trib_Itens) * 100)));
      //vPercAux_Municipal := StrToCurr(FormatCurr('0.00',0));
      //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat)) > 0 then
      //  vPercAux_Municipal := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat / vVlr_Trib_Itens) * 100)));
      vTexto := '(Vlr.aprox. tributos R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_FEDERAL.AsFloat);
      if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux_Federal);
      vTexto := vTexto + ' Federal,';
      vTexto := vTexto + ' R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat);
      if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux_Estadual);
      vTexto := vTexto + ' Estadual e R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat);
      if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux_Municipal);
      vTexto := vTexto + ' Municipal  R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat);
      if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux);
      vTexto := vTexto + ' Total';
      vTexto := vTexto + ' Lei 12.741/12,';
      if (trim(fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.AsString) = '') and (fDMCadNotaFiscal.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I') then
        vTexto := vTexto + ' Fonte IBPT'
      else
        vTexto := vTexto + ' Fonte ' + fDMCadNotaFiscal.cdsNotaFiscalFONTE_TRIBUTOS.AsString;
      //14/11/2016
      if trim(fDMCadNotaFiscal.cdsNotaFiscalIBPT_CHAVE.AsString) <> '' then
        vTexto := vTexto + ' Chave: ' + fDMCadNotaFiscal.cdsNotaFiscalIBPT_CHAVE.AsString;
      vTexto := vTexto + ')';
    end;
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  vObsSimples            := False;
  vObsSimplesPermiteIcms := False;
  
  vTexto := '';
  //valor desoneração
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat)) > 0) and (fDMNFe.qParametrosUSA_DESONERACAO.AsString = 'S') then
  begin
    if Trim(fDMNFe.qParametros_NFeOBS_DADOS_ADI_DESONERACAO.AsString) <> '' then
      vTexto := '(' + fDMNFe.qParametros_NFeOBS_DADOS_ADI_DESONERACAO.AsString + ' ' + FormatFloat('###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat) + ')'
    else
      vTexto := '(Valor de ICMS Desonerado R$: ' + FormatFloat('###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSDESONERADO.AsFloat) + ')';
    case fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsInteger of
      1 : vTexto := vTexto + '(Motivo: Taxi)';
      3 : vTexto := vTexto + '(Motivo: Produtor Agropecuario)';
      4 : vTexto := vTexto + '(Motivo: Frotista/Locadora)';
      5 : vTexto := vTexto + '(Motivo: Diplomatico/Consular)';
      6 : vTexto := vTexto + '(Motivo: Utilitarios e Motocicletas da Amazonia Ocidental e Areas de Livre Comercio. Resolucao 714/88 e 790/94 - CONTRAN e suas alteracoes)';
      7 : vTexto := vTexto + '(Motivo: SUFRAMA)';
      8 : vTexto := vTexto + '(Motivo: Venda a Orgao Publico)';
      9 : vTexto := vTexto + '(Motivo: Outros. NT 2011/004)';
    end;
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat)) > 0 then
      vTexto := vTexto + '(Vlr.Desc.Suframa Pis/Cofins: ' + FormatFloat('0.##',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat) + ')';
    Grava_DadosAdicionaisNFe(vTexto,0);
  end
  else
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat)) > 0 then
      vTexto := '(Vlr.Desc.Suframa Pis/Cofins: ' + FormatFloat('0.##',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat) + ')';
    if trim(vTexto) <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  //Situação Tributária
  fDMNFe.mAuxDadosNFe.First;
  while not fDMNFe.mAuxDadosNFe.Eof do
  begin
    if fDMNFe.mAuxDadosNFeTipo.AsString = 'SIT' then
    begin
      fDMNFe.qTab_CSTICMS.Close;
      fDMNFe.qTab_CSTICMS.ParamByName('ID').AsInteger := fDMNFe.mAuxDadosNFeCodigo.AsInteger;
      fDMNFe.qTab_CSTICMS.Open;
      if trim(fDMNFe.qTab_CSTICMSHISTORICO.Value) <> '' then
        Grava_DadosAdicionaisNFe('('+fDMNFe.qTab_CSTICMSHISTORICO.Value+')',0);
    end;
    if fDMNFe.mAuxDadosNFeTipo.AsString = 'NAT' then
    begin
      fDMNFe.qTab_CFOP.Close;
      fDMNFe.qTab_CFOP.ParamByName('ID').AsInteger := fDMNFe.mAuxDadosNFeCodigo.AsInteger;
      fDMNFe.qTab_CFOP.Open;
      vFlag := True;
      if fDMNFe.mAuxDadosNFeID_Variacao.AsInteger > 0 then
      begin
        fDMNFe.qTab_CFOP_Variacao.Close;
        fDMNFe.qTab_CFOP_Variacao.ParamByName('ID').AsInteger   := fDMNFe.mAuxDadosNFeCodigo.AsInteger;
        fDMNFe.qTab_CFOP_Variacao.ParamByName('ITEM').AsInteger := fDMNFe.mAuxDadosNFeID_Variacao.AsInteger;
        fDMNFe.qTab_CFOP_Variacao.Open;
        if trim(fDMNFe.qTab_CFOP_VariacaoLEI.Value) <> '' then
        begin
          Grava_DadosAdicionaisNFe('('+fDMNFe.qTab_CFOP_VariacaoLEI.Value+')',0);
          vFlag := False;
        end;
      end;

      if (vFlag) and (trim(fDMNFe.qTab_CFOPLEI.Value) <> '') then
      begin
        Grava_DadosAdicionaisNFe('('+fDMNFe.qTab_CFOPLEI.Value+')',0);
        //if fDMNFe.qTab_CFOPGERAR_ICMS_SIMPLES.AsString = 'S' then
        //  vObsSimplesPermiteIcms:= True;
      end;
      if fDMNFe.qTab_CFOPGERAR_ICMS_SIMPLES.AsString = 'S' then
        vObsSimplesPermiteIcms:= True;
    end;
    if fDMNFe.mAuxDadosNFeTipo.AsString = 'VEI' then
      Grava_DadosAdicionaisNFe(fDMNFe.mAuxDadosNFeOBS.AsString,0);
    if fDMNFe.mAuxDadosNFeTipo.AsString = 'NCM' then
    begin
      fDMNFe.qOBS_Lei.Close;
      fDMNFe.qOBS_Lei.ParamByName('ID').AsInteger := fDMNFe.mAuxDadosNFeCodigo.AsInteger;
      fDMNFe.qOBS_Lei.Open;
      if not fDMNFe.qOBS_Lei.IsEmpty then
        Grava_DadosAdicionaisNFe('('+fDMNFe.qOBS_LeiOBS.Value+')',0);
    end;
    fDMNFe.mAuxDadosNFe.Next;
  end;

  //Endereço Cobrança
  if (trim(fDMCadNotaFiscal.cdsClienteENDERECO_PGTO.AsString) <> '') and (fDMNFe.qParametros_NFeIMP_END_COBRANCA.AsString = 'S') then
  begin
    fDMNFe.Posiciona_CidadeUF(fDMCadNotaFiscal.cdsClienteID_CIDADE_PGTO.AsInteger,fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger);
    vTexto := '.(End.Cobr. ' +
               fDMCadNotaFiscal.cdsClienteENDERECO_PGTO.AsString + ',' + fDMCadNotaFiscal.cdsClienteNUM_END_PGTO.AsString  + ' - ' +
               fDMCadNotaFiscal.cdsClienteBAIRRO_PGTO.AsString + ' - ' +
               fDMNFe.qCidadeNOME.AsString + ' - ' + 
               fDMCadNotaFiscal.cdsClienteCEP_PGTO.AsString + ' - ' +
               fDMNFe.qCidadeUF.AsString;
    if fDMCadNotaFiscal.cdsClientePESSOA_PGTO.AsString = 'J' then
      vTexto := vTexto + ' - CNPJ: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPG_PGTO.AsString
    else
    if fDMCadNotaFiscal.cdsClientePESSOA_PGTO.AsString = 'F' then
      vTexto := vTexto + ' - CPF: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPG_PGTO.AsString;
    vTexto := vTexto + ')';
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  //Nº notas de devolução
  //if vTextoNumNotaNFe <> '' then
  //  Grava_DadosAdicionaisNFe('('+vTextoNumNotaNFe+')',0);

  //IPI e PIS/Cofins do cliente Suspenso
  fDMCadNotaFiscal.qPessoa_Fiscal.Close;
  fDMCadNotaFiscal.qPessoa_Fiscal.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  fDMCadNotaFiscal.qPessoa_Fiscal.Open;
  if not fDMCadNotaFiscal.qPessoa_Fiscal.IsEmpty then
  begin
    if (fDMCadNotaFiscal.qPessoa_FiscalPIS_SUSPENSO.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime >= fDMCadNotaFiscal.qPessoa_FiscalPIS_DT_INICIO.AsDateTime) and
       (fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime <= fDMCadNotaFiscal.qPessoa_FiscalPIS_DT_FINAL.AsDateTime) then
    begin
      if trim(fDMCadNotaFiscal.qPessoa_FiscalPIS_OBS.AsString) <> '' then
        Grava_DadosAdicionaisNFe('('+fDMCadNotaFiscal.qPessoa_FiscalPIS_OBS.AsString+')',0);
    end;
    if (fDMCadNotaFiscal.qPessoa_FiscalIPI_SUSPENSO.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime >= fDMCadNotaFiscal.qPessoa_FiscalIPI_DT_INICIO.AsDateTime) and
       (fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime <= fDMCadNotaFiscal.qPessoa_FiscalIPI_DT_FINAL.AsDateTime) then
    begin
      if trim(fDMCadNotaFiscal.qPessoa_FiscalIPI_OBS.AsString) <> '' then
        Grava_DadosAdicionaisNFe('('+fDMCadNotaFiscal.qPessoa_FiscalIPI_OBS.AsString+')',0);
    end;
    if (trim(fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.AsString) <> '') or (trim(fDMCadNotaFiscal.qPessoa_FiscalOBS_LEI_SUFRAMA.AsString) <> '') then
    begin
      vTexto := '(SUFRAMA: ' + fDMCadNotaFiscal.cdsClienteINSC_SUFRAMA.AsString;
      if trim(fDMCadNotaFiscal.qPessoa_FiscalOBS_LEI_SUFRAMA.AsString) <> '' then
        vTexto := vTexto + ' - ' + fDMCadNotaFiscal.qPessoa_FiscalOBS_LEI_SUFRAMA.Value;
      vTexto := vTexto + ')';
      Grava_DadosAdicionaisNFe(vTexto,0);
    end;
    if trim(fDMCadNotaFiscal.qPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS.AsString) <> '' then
    begin
      vTexto := '(' + fDMCadNotaFiscal.qPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS.Value + ')';
      Grava_DadosAdicionaisNFe(vTexto,0);
    end;
  end;

  {if (DM1.tClienteIPISuspenso.AsBoolean) and
     (Dm1.tNotaFiscalDtEmissao.AsDateTime < Dm1.tClienteDtValidadeIPI.AsDateTime)
     and (DM1.tClienteCodObsIPI.AsInteger > 0) and (DM1.tNotaFiscalVlrIpi.AsFloat <= 0) then
  begin
    Dm1.tObsAux.IndexFieldNames := 'Codigo';
    Dm1.tObsAux.SetKey;
    Dm1.tObsAuxCodigo.AsInteger := Dm1.tClienteCodObsIPI.AsInteger;
    if Dm1.tObsAux.GotoKey then
      Grava_DadosAdicionaisNFe('('+DM1.tObsAuxDescricao.AsString+')',0);
  end;}

  //Monta a mensagem da tributação pelo simples
  if fDMNFe.qFilialSIMPLES.AsString = 'S' then
  begin
    if (fDMNFe.qParametrosIMP_OBSSIMPLES.AsString = 'S') or not(vObsSimplesPermiteIcms) then
      Grava_DadosAdicionaisNFe('('+fDMNFe.qParametrosOBS_SIMPLES.Value+')',0);

    if (fDMNFe.qParametrosIMP_OBSSIMPLES.AsString = 'S') or (vObsSimplesPermiteIcms) then
    begin
      if (Copy(fDMNFe.qFilialUSARICMSSIMPLES.AsString,1,1) = 'S') and
         (fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat > 0) and (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat > 0) then
      begin
        vTexto := '(Permite o aproveitamento do credito de ICMS no valor de R$ ' +
                    FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat) +
                  ', correspondente a aliquota de ' + FormatFloat('###,###,##0.0000',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat) +
                  ' % nos termos do ART.23 da LC 123';
        if (trim(fDMNFe.qParametros_NFeMSG_SIMPLES_COMP.AsString) <> '') and not(fDMNFe.qParametros_NFeMSG_SIMPLES_COMP.IsNull) then
          vTexto := vTexto + ', ' + fDMNFe.qParametros_NFeMSG_SIMPLES_COMP.AsString;
        vTexto := vTexto + ')';
        Grava_DadosAdicionaisNFe(vTexto,0);
      end;
    end;
  end;

  //Grava endereço de entrega
  if fDMCadNotaFiscal.cdsNotaFiscalLOCALENTREGA.AsString = 'E' then
  begin
    fDMNFe.Posiciona_CidadeUF(fDMCadNotaFiscal.cdsClienteID_CIDADE_ENT.AsInteger,fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger);
    vObsAux := '.(Local de Entrega:' +
               fDMCadNotaFiscal.cdsClienteENDERECO_ENT.AsString + ' ' + fDMCadNotaFiscal.cdsClienteNUM_END_ENT.AsString + ' - ' +
               fDMCadNotaFiscal.cdsClienteCOMPLEMENTO_END_ENT.AsString + ' ' + fDMCadNotaFiscal.cdsClienteBAIRRO_ENT.AsString + ' ' +
               fDMNFe.qCidadeNOME.AsString  + ' ' + fDMCadNotaFiscal.cdsClienteCEP_ENT.AsString + ' ' +
               fDMNFe.qCidadeUF.AsString;
    vTexto2 := Monta_Numero(fDMCadNotaFiscal.cdsClienteCNPJ_CPF_ENT.AsString,0);
    if (trim(vTexto2) <> '') then
    begin
      if fDMCadNotaFiscal.cdsClientePESSOA_ENT.AsString = 'J' then
        vObsAux := vObsAux + ' - CNPJ: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPF_ENT.AsString
      else
      if fDMCadNotaFiscal.cdsClientePESSOA_ENT.AsString = 'F' then
        vObsAux := vObsAux + ' - CPF: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPF_ENT.AsString;
    end;
    vObsAux := vObsAux + ')';
    Grava_DadosAdicionaisNFe(vObsAux,0);
  end;

  //Transferência de ICMS
  if fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat > 0 then
    Grava_DadosAdicionaisNFe('(Transf.ICMS: R$ ' + FormatFloat('#,###,###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat)+ ')',0);

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat)) > 0 then
  begin
    vTexto := '*(DESCONTO: ';
    if trim(fDMCadNotaFiscal.cdsNotaFiscalDESCRICAO_DESC.AsString) <> '' then
      vTexto := vTexto + fDMCadNotaFiscal.cdsNotaFiscalDESCRICAO_DESC.AsString;
    vTexto := vTexto + ' Vlr: ';
    vTexto := vTexto + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat) + ')*';
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  //Cliente Triangular primeira nota
  //Cliente Triangular copia da nota com a natureza 5923/6923
  //if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0) and (fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger <= 0) then
  if (fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0) and (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0)  then
    fDMNFe.Posiciona_Operacao_Nota(fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger);

  if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0) and
     (fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0) and
     (fDMNFe.qOperacao_NotaMOSTRAR_CLI_TRIANG2.AsString = 'S') then
  begin
    vTexto := '';
    fDMNFe.qItensNte.Close;
    fDMNFe.qItensNte.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMNFe.qItensNte.Open;
    while not fDMNFe.qItensNte.Eof do
    begin
      if trim(vTexto) = '' then
        vTexto := '(Materiais Recebidos de ' + fDMNFe.qItensNteNOME_CLIENTE_TRI.AsString + ' CNPJ: '
                + fDMNFe.qItensNteCNPJ_CPF_CLIENTE_TRI.AsString + ', por conta e ordem de '
                + fDMCadNotaFiscal.cdsClienteNOME.AsString + ' CNPJ: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString
                + ' atraves da NF.'
      else
        vTexto := vTexto + ',';
      vTexto := vTexto + fDMNFe.qItensNteNUMNOTA.AsString + ' Serie: ' + fDMNFe.qItensNteSERIE.AsString + ' De ' + fDMNFe.qItensNteDTEMISSAO.AsString;
      fDMNFe.qItensNte.Next;
    end;
    if trim(vTexto) <> '' then
      vTexto := vTexto + ')';
    if vTexto <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);
  end
  else
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0) then
  begin
    vTexto := '';
    fDMNFe.qCliente.Close;
    fDMNFe.qCliente.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger;
    fDMNFe.qCliente.Open;

    fDMNFe.qCFOP.Close;
    fDMNFe.qCFOP.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
    fDMNFe.qCFOP.Open;
    if not(fDMNFe.qCliente.IsEmpty) and (fDMNFe.qClienteCODIGO.AsInteger > 0) then
    begin
      //if fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger <= 0 then
      //if (fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger > fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) then
      vSerieAux := fDMCadNotaFiscal.cdsNotaFiscalSERIECOPIADA.AsString;
      for i := 1 to 3 - Length(vSerieAux) do
        vSerieAux := '0' + vSerieAux;
      if fDMNFe.qCFOPCOPIARNOTATRIANGULAR.AsString = 'S' then
        vTexto := '(Entregue a '
      else
        vTexto := '(Este documento tem por finalidade apenas acompanhar o transporte de mercadorias vendidas '
                + ' atraves da Nota ' + vSerieAux +'/'+  FormatFloat('###000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger)
                + ' emitida em ' + fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsString + ' para ';
      vTexto := vTexto + ' ' + fDMNFe.qClienteNOME.AsString;
      if fDMNFe.qClientePESSOA.AsString = 'J' then
        vTexto := vTexto + ' CNPJ:'
      else
        vTexto := vTexto + ' CPF:';
      vTexto := vTexto + fDMNFe.qClienteCNPJ_CPF.AsString;
      if Trim(fDMNFe.qClienteINSCR_EST.AsString) <> '' then
        vTexto := vTexto + ' Inscr.Est: ' + fDMNFe.qClienteINSCR_EST.AsString;
      vTexto := vTexto + ' End: ' + fDMNFe.qClienteENDERECO.AsString + ',' + fDMNFe.qClienteNUM_END.AsString;
      fDMNFe.Posiciona_CidadeUF(fDMNFe.qClienteID_CIDADE.AsInteger,fDMNFe.qClienteID_PAIS.AsInteger);
      vTexto := vTexto + ',' + fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString;
      //19/05/2016
      //if (fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger > fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger) then

      if fDMNFe.qCFOPCOPIARNOTATRIANGULAR.AsString = 'S' then
        vTexto := vTexto + ', Cfe.NF: '  + vSerieAux +'/'+ FormatFloat('###000000',fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger) + ' de ' + fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsString + ')'
      else
        vTexto := vTexto + ', cujas mercadorias serao entregues por sua conta e ordem ao destinatario para industrializacao.)';
    end;
    if vTexto <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  //Dados de importação
  if not fDMCadNotaFiscal.cdsNotaFiscal_Imp.IsEmpty then
  begin
    vTexto := '';
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Imp.Eof do
    begin
      vTexto := vTexto + '(DI:' + fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMDI.AsString + ' de ' +
                fDMCadNotaFiscal.cdsNotaFiscal_ImpDTREGISTRO.AsString;
      if trim(fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMFATURA.AsString) <> '' then
        vTexto := vTexto + ' Fatura: ' + fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMFATURA.AsString;
      //if fDMCadNotaFiscal.cdsNotaFiscal_ImpID_CIDADE.AsInteger > 0 then
        //begin
          vTexto := vTexto + ' Local de Desemb.: ' + fDMCadNotaFiscal.cdsNotaFiscal_ImpLOCAL_DESEMBARACO.AsString;
          //if fnc_Posicionar_Cidade(fDMCadNotaFiscal.cdsNotaFiscal_ImpID_CIDADE.AsInteger) then
          //  vTexto := vTexto + fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString;
        //end;
      vTexto := vTexto + ')';
      fDMCadNotaFiscal.cdsNotaFiscal_Imp.Next;
    end;
    if vTexto <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);

    //Pis, Cofins e Taxa Siscomex
    if fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat > 0 then
      Grava_DadosAdicionaisNFE('(PIS: ' + FormatFloat('###,###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat) + ')',0);
    if fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat > 0 then
      Grava_DadosAdicionaisNFE('(COFINS: ' + FormatFloat('###,###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat) + ')',0);
    if fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat > 0 then
      Grava_DadosAdicionaisNFE('(Taxa SISCOMEX: ' + FormatFloat('###,###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat) + ')',0);
    if fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat > 0 then
      Grava_DadosAdicionaisNFE('(Vlr.II: ' + FormatFloat('###,###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat) + ')',0);
    if fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat > 0 then
      Grava_DadosAdicionaisNFE('(Vlr.Aduaneira: ' + FormatFloat('###,###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat) + ')',0);
    //07/03/2017
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AFRMM.AsFloat)) > 0 then
      Grava_DadosAdicionaisNFE('(Vlr.AFRMM: ' + FormatFloat('###,###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_AFRMM.AsFloat) + ')',0);
    //07/03/2017
  end;

  //NFe 2.00
  if (Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '2') or (Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '3') or
     (Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '5')  then
  begin
    if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '2' then
      vTexto := '*(FS - '
    else
    if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '3' then
      vTexto := '*(SCAN - '
    else
    if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '5' then
      vTexto := '*(FS-DA - ';
    vTexto := vTexto + 'Data e Hora de Entrada em Contingencia:' + fDMCadNotaFiscal.cdsNotaFiscalDTCONTINGENCIA.AsString + ' ' + fDMCadNotaFiscal.cdsNotaFiscalHRCONTINGENCIA.AsString;
    vTexto := vTexto + ' - Justificativa de Entrada em Contingencia: '  + fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CONTINGENCIA.AsString + ')*';
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  vTexto := '';
  fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger > 0) then
    begin
      fDMNFe.qContas.Close;
      fDMNFe.qContas.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ParcID_CONTA.AsInteger;
      fDMNFe.qContas.Open;

      fDMNFe.qTipoCobranca.Close;
      fDMNFe.qTipoCobranca.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger;
      fDMNFe.qTipoCobranca.Open;
      if fDMNFe.qTipoCobrancaDEPOSITO.AsString = 'S' then
      begin
        if trim(fDMNFe.qContasNOME_BANCO.AsString) <> '' then
          vTexto2 := fDMNFe.qContasNOME_BANCO.AsString
        else
        if trim(fDMNFe.qContasDESCRICAO_NOTA.AsString) <> '' then
          vTexto2 := fDMNFe.qContasDESCRICAO_NOTA.AsString
        else
          vTexto2 := fDMNFe.qContasNOME.AsString;
        vAgeAux := fDMNFe.qContasAGENCIA.AsString;
        if trim(fDMNFe.qContasDIG_AGENCIA.AsString) <> '' then
          vAgeAux := vAgeAux + '-' + fDMNFe.qContasDIG_AGENCIA.AsString;
        vContaAux := fDMNFe.qContasNUMCONTA.AsString;
        if trim(fDMNFe.qContasDIG_CONTA.AsString) <> '' then
          vContaAux := vContaAux + '-' + fDMNFe.qContasDIG_CONTA.AsString;
        vTexto := '(Deposito: ' + vTexto2 + '  Age: ' + vAgeAux + ', Conta: ' + vContaAux
                + ')';
        fDMCadNotaFiscal.cdsNotaFiscal_Parc.Last;
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
  end;

  if vTexto <> '' then
    Grava_DadosAdicionaisNFe(vTexto,0);

  if fDMCadNotaFiscal.cdsNotaFiscalID_REDESPACHO.AsInteger > 0 then
  begin
    fDMNFe.qTransportadora.Close;
    fDMNFe.qTransportadora.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_REDESPACHO.AsInteger;
    fDMNFe.qTransportadora.Open;
    if not fDMNFe.qTransportadora.IsEmpty then
    begin
      if fDMNFe.qTransportadoraPESSOA.AsString = 'J' then
        vTexto := 'CNPJ:'
      else
        vTexto := 'CPF:';
      vTexto := '(Redespacho: ' + fDMNFe.qTransportadoraNOME.AsString + ', End: ' + fDMNFe.qTransportadoraENDERECO.AsString
              + ' - ' + fDMNFe.qTransportadoraNUM_END.AsString + ', Cep: ' + fDMNFe.qTransportadoraCEP.AsString
              + ' Bairro: ' + fDMNFe.qTransportadoraBAIRRO.AsString + ', ' + fDMNFe.qTransportadoraCIDADE.AsString
              + '/' + fDMNFe.qTransportadoraUF.AsString + ', ' + vTexto + ' ' + fDMNFe.qTransportadoraCNPJ_CPF.AsString + ')';
      Grava_DadosAdicionaisNFe(vTexto,0);
    end;
  end;
  //09/11/2015
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '') and (fDMNFe.qParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and
    (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat)) > 0) then
  begin
    vTexto := '';
    fDMNFe.qPedido_Adiant.Close;
    fDMNFe.qPedido_Adiant.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMNFe.qPedido_Adiant.Open;
    while not fDMNFe.qPedido_Adiant.Eof do
    begin
      if trim(vTexto) = '' then
        vTexto := '(Vlr adiantamento R$: ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat)
                + ' Pedidos:';
        vTexto := vTexto + ' ' + fDMNFe.qPedido_AdiantPEDIDO_CLIENTE.AsString;
      fDMNFe.qPedido_Adiant.Next;
    end;
    if trim(vTexto) <> '' then
      Grava_DadosAdicionaisNFe(vTexto+')',0);
  end;
  //********************

  //Dados digitados manualmente
  if trim(fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.Value) <> '' then
    Grava_DadosAdicionaisNFe('('+fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.AsString+')',0);

  //Dados do ICMS UF Destino
  vTexto := '';
  if (fDMCadNotaFiscal.cdsFilialCALCULAR_DIFAL.AsString = 'S') and (fDMCadNotaFiscal.cdsFilialDIFAL_GERAR_VALORES.AsString = 'S') then
  begin
    //aqui colocar o Difal. 10/11/2016
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat)) > 0) then
      vTexto := 'Valores totais do ICMS Interestadual: DIFAL da UF destino R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat);
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat)) > 0 then
    begin
      if trim(vTexto) <> '' then
        vTexto := vTexto + ' FCP R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat) + '; '
      else
        vTexto := vTexto + ' Vlr.ICMS Fundo de Combate a Pobreza (FCP) R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat) + '; ';
    end;
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat)) > 0) then
      vTexto := vTexto + 'DIFAL da UF Origem R$ ' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat);
  end
  else
  if (fDMCadNotaFiscal.cdsFilialCALCULAR_DIFAL.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsFilialOBS_DIFAL.AsString) <> '') and (vImp_Obs_Difal = 'S') then
    vTexto := fDMCadNotaFiscal.cdsFilialOBS_DIFAL.AsString;
  if trim(vTexto) <> '' then
    Grava_DadosAdicionaisNFe('('+vTexto+')',0);
  vTexto := '';
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat)) > 0 then
  begin
    vTexto := vTexto + 'Valor ICMS FCP R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat)
            + '; Base ICMS FCP R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat);
  end;
  if trim(vTexto) <> '' then
    Grava_DadosAdicionaisNFe('('+vTexto+')',0);

  //10/11/2017 imprime quantidade dos produtos
  if fDMCadNotaFiscal.qParametros_NFeIMP_QTDE_PRODUTO.AsString = 'S' then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscalQTD_TOTAL_PRODUTOS.AsFloat > 0 then
    begin
     vTexto := 'Qtde de peças: ' + FormatFloat('###,##0.00', fDMCadNotaFiscal.cdsNotaFiscalQTD_TOTAL_PRODUTOS.AsFloat);
     Grava_DadosAdicionaisNFe('('+vTexto+')',0);
    end;
  end;

  //12/08/2016
  if trim(vObs_MS_Item) <> '' then
    Grava_DadosAdicionaisNFe(vObs_MS_Item,0);

  //12/03/2018
  if (fDMNFe.qParametros_NFeIMP_USUARIO.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscalUSUARIO.AsString) <> '') then
    Grava_DadosAdicionaisNFe('(Usuario: ' + fDMCadNotaFiscal.cdsNotaFiscalUSUARIO.AsString + ')',0);

  //26/10/218
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI_DEVOL.AsFloat)) > 0 then
  begin
    Grava_DadosAdicionaisNFe('(Vlr. IPI Devolvido: R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI_DEVOL.AsFloat) + ')',0);
  end;
end;

procedure TfNFe.Monta_mItensNFe;
var
  Texto1, texto2, vTextoTriang, vNomeTriang: String;
  vItemNFe: Integer;
  vExiste_Aux: Boolean;
  vNumOSAux, vNumOCAux: String;
  vVlrUnitarioAux: Real;
  vCodAuxiliar: String;
  vCodProdutoAux: String;
  vNomeProduto: String;
  vVlrTribAux: Real;
  vTextoFCI: String;
  vTextoDesonerado: String;
  vAux: Real;
  vID_PedidoAnt: Integer;
  i: Integer;
  vObs_Engenharia: WideString;
  vNum_MS_Ant: String;
  vObsAux: String;
  vNumLoteCont_Ant: String;
  vTextoLote: String;
begin
  fDMCadNotaFiscal.cdsProduto.Close;
  fDMCadNotaFiscal.cdsProduto.Open;
  fDMCadNotaFiscal.cdsTab_NCM.Close;
  fDMCadNotaFiscal.cdsTab_NCM.Open;
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames     := 'ID';
  fDMCadNotaFiscal.cdsTab_CSTICMS.IndexFieldNames := 'ID';
  fDMCadNotaFiscal.cdsCFOP.IndexFieldNames        := 'ID';
  fDMCadNotaFiscal.cdsTab_Cofins.IndexFieldNames  := 'ID';
  fDMCadNotaFiscal.cdsTab_Pis.IndexFieldNames     := 'ID';
  fDMCadNotaFiscal.cdsTab_CSTIPI.IndexFieldNames  := 'ID';
  fDMCadNotaFiscal.cdsTab_NCM.IndexFieldNames     := 'ID';
  fDMCadNotaFiscal.cdsEnqIPI.IndexFieldNames      := 'ID';

  vItemNFe := 0;
  fDMNFe.mAuxDadosNFe.EmptyDataSet;
  fDMNFe.mItensNFe.EmptyDataSet;
  fDMNFe.mDadosAdicionaisNFe.EmptyDataSet;
  fDMNFe.mNotaDevolvidaNFe.EmptyDataSet;

  //vPerc_Trib_Maior := 0;
  vVlr_Trib_Itens      := 0;
  vVlr_Trib_Estadual   := 0;
  vVlr_Trib_Federal    := 0;
  vVlr_Trib_Municipal  := 0;
  vPerc_Trib_2         := False;
  vPerc_Trib_Estadual  := 0;
  vPerc_Trib_Federal   := 0;
  vPerc_Trib_Municipal := 0;
  vID_PedidoAnt        := 0;
  vCampo_Faltando      := 0;
  vObs_MS_Item         := '';
  vImp_Obs_Difal       := 'N';
  vErroProdCli         := False;
  vMSGErroCliente      := '';
  fDMCadNotaFiscal.mPedidoAux.EmptyDataSet;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
  begin
    vTextoDetNFe := '';
    vNomeProduto := '';
    inc(vItemNFe);
    if not fDMNFe.mAuxDadosNFe.Locate('Tipo;Codigo',VarArrayOf(['SIT',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsString]),[locaseinsensitive]) then
      Grava_mAuxDadosNFe('SIT',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsString);
    if not fDMNFe.mAuxDadosNFe.Locate('Tipo;Codigo',VarArrayOf(['NAT',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsString]),[locaseinsensitive]) then
      Grava_mAuxDadosNFe('NAT',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsString,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger);
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OBS_LEI_NCM.AsInteger > 0 then
      Grava_mAuxDadosNFe('NCM',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OBS_LEI_NCM.AsString,0);
    if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
      fDMCadNotaFiscal.cdsProduto.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger]);
    if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([Locaseinsensitive]));
    if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
    begin
      MessageDlg('*** Atençao: Tabela de Produto Com Problema, verifique na Danfe se os produtos estão corretos!' + #13
               + ' Verifique se o produto esta como Inativo!', mtInformation, [mbOk], 0);
      vProduto_OK := False;
    end;
    if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger then
      fDMCadNotaFiscal.cdsCFOP.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger]);
    if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger then
      ShowMessage('*** Atenção:  Nota com problema no CFOP!');

    //29/06/2016
    if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.IsNull) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger <= 0)) and
       (fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    begin
      vCampo_Faltando := 1;
      ShowMessage('*** Atenção:  Campo "CST ICMS" no item ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsString + ' não informado.' + #13 +
                  'Para ajustar, alterar o item e na Aba Impostos ir no campo "CST ICMS"!');
    end;
    if vCampo_Faltando = 0 then
    begin
      if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') and (fDMCadNotaFiscal.cdsNotaFiscal_Imp.IsEmpty) then
      begin
        vCampo_Faltando := 2;
        ShowMessage('*** Atenção:  Não foi informado a adição (dados da importação) do item ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsString + '.' + #13 +
                    'Para ajustar, alterar o item e na Aba "Dados Importação" incluir os dados da importação!');
      end;
    end;
    //**************

    if (fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger) or
       (fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger) or
       (vCampo_Faltando = 1) or (vCampo_Faltando = 2)  then
      Break;

    if (fDMCadNotaFiscal.cdsParametrosEMPRESA_VEICULO.AsString = 'S') then
      fDMNFe.prc_Veiculo(fDMCadNotaFiscal.cdsProdutoID.AsInteger);

    vExiste_Aux  := False;
    vCodAuxiliar := '';
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString <> 'S' then
    begin
      if (fDMCadNotaFiscal.cdsParametrosUSA_TAMANHO_AGRUPADO_NFE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') and
         (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P') and (fDMCadNotaFiscal.cdsClienteUSA_TAMANHO_AGRUPADO_NFE.AsString = 'S') then
      begin
        vNomeProduto := fDMCadNotaFiscal.cdsProdutoNOME.AsString;
        if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P') and (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0) then
        begin
          if (fDMCadNotaFiscal.qParametros_NFeIMP_COMBINACAO_NFE.AsString = 'S') then
            vNomeProduto := fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.AsString
          else
            vNomeProduto := vNomeProduto + ' ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.AsString
        end;
        vCodAuxiliar := fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString;
        vCodAuxiliar := vCodAuxiliar + '.' + formatfloat('000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger);
        vCodAuxiliar := vCodAuxiliar + '.' + fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsString;
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
          vCodAuxiliar := vCodAuxiliar + '.' + fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsString
        else
          vCodAuxiliar := vCodAuxiliar + '.0';
        if (fDMNFe.qParametrosOPCAO_REL_PED_AGRUPADO.AsString = 'I') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger > 0) then
        begin
          vCodAuxiliar := vCodAuxiliar + '.' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsString;
        end
        else
        begin
          vCodAuxiliar := vCodAuxiliar + '.' + formatfloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat);
          if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString) <> '' then
            vCodAuxiliar := vCodAuxiliar + '.' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString
          else
            vCodAuxiliar := vCodAuxiliar + '.' + '';
          if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString) <> '' then
            vCodAuxiliar := vCodAuxiliar + '.' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString
          else
            vCodAuxiliar := vCodAuxiliar + '.' + '';
        end;
        if fDMNFe.mItensNFe.Locate('CodAuxiliar',vCodAuxiliar,([Locaseinsensitive])) then
          vExiste_Aux := True;
      end;
    end;
    vTextoFCI        := '';
    vTextoDesonerado := '';
    vPerc_Trib_2     := True;
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat)) > 0 then
    begin
      if StrToFloat(FormatFloat('0.00',vVlr_Trib_Estadual)) > 0 then
      begin
        if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Estadual)) <> StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)))
          and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)) <> 0) then
          vPerc_Trib_Estadual := 0
      end
      else
        vPerc_Trib_Estadual := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
        vVlr_Trib_Estadual := StrToFloat(FormatFloat('0.00',vVlr_Trib_Estadual + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));

      if StrToFloat(FormatFloat('0.00',vVlr_Trib_Federal)) > 0 then
      begin
        if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Federal)) <> StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat)))
          and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat)) <> 0) then
          vPerc_Trib_Federal := 0
      end
      else
        vPerc_Trib_Federal := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
        vVlr_Trib_Federal := StrToFloat(FormatFloat('0.00',vVlr_Trib_Federal + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));

      if StrToFloat(FormatFloat('0.00',vVlr_Trib_Municipal)) > 0 then
      begin
        if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Municipal)) <> StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)))
          and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)) <> 0) then
          vPerc_Trib_Municipal := 0
      end
      else
        vPerc_Trib_Municipal := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat));
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
        vVlr_Trib_Municipal := StrToFloat(FormatFloat('0.00',vVlr_Trib_Municipal + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
      vVlr_Trib_Itens := StrToFloat(FormatFloat('0.00',vVlr_Trib_Itens + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
    end;
    //17/08/2016
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat)) > 0) or
       (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_UF_DEST.AsFloat)) > 0) or
       (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_PARTILHA.AsFloat)) > 0) then
      vImp_Obs_Difal := 'S';
    //*******************
    //11/08/2016
    vObs_Engenharia := '';
    vObsAux         := '';
    if (fDMCadNotaFiscal.qParametros_NFeIMP_CONSUMO_NOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsProdutoIMP_CONSUMO_NFE.AsString = 'S')  then
    begin
      //06/01/2017  Foi alterado o esquema de impressão dos lotes do Ramiro, conforme ele solicitou, pois no antigo estava faltando espaço
      fDMNFe.cdsNotaFiscal_MP.Close;
      fDMNFe.sdsNotaFiscal_MP.ParamByName('ID').AsInteger        := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
      fDMNFe.sdsNotaFiscal_MP.ParamByName('ITEM_NOTA').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
      fDMNFe.cdsNotaFiscal_MP.Open;
      //fDMNFe.cdsNotaFiscal_MP.IndexFieldNames := 'NUM_MS;REFERENCIA';
      fDMNFe.cdsNotaFiscal_MP.IndexFieldNames := 'NUM_LOTE_CONTROLE;REFERENCIA';
      fDMNFe.cdsNotaFiscal_MP.First;
      vNum_MS_Ant      := fDMNFe.cdsNotaFiscal_MPNUM_MS.AsString;
      vNumLoteCont_Ant := '-9';
      vTextoLote       := '';
      while not fDMNFe.cdsNotaFiscal_MP.Eof do
      begin
        //if vObs_Engenharia <> '' then
        //  vObs_Engenharia := vObs_Engenharia + ' ';
        //vObs_Engenharia := vObs_Engenharia + '(Q:'+FormatFloat('##0.####',fDMNFe.cdsNotaFiscal_MPQTD.AsFloat)
        //                 + ' L:'+fDMNFe.cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString
        //                 + ' Ref:' + fDMNFe.cdsNotaFiscal_MPREFERENCIA.AsString + ')';

        //07/01/2016  Foi alterado
        {vObs_Engenharia := vObs_Engenharia + '('+FormatFloat('##0.####',fDMNFe.cdsNotaFiscal_MPQTD.AsFloat)
                         + ' ' + fDMNFe.cdsNotaFiscal_MPREFERENCIA.AsString
                         + ' '+fDMNFe.cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString;}
        if fDMNFe.cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString <> vNumLoteCont_Ant then
        begin
          if (vNumLoteCont_Ant <> '-9') and (trim(fDMNFe.cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString) <> '') then
            vObs_Engenharia := vObs_Engenharia + ' (' + vTextoLote + ')';
          if trim(fDMNFe.cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString) = '' then
            vTextoLote := '' + fDMNFe.cdsNotaFiscal_MPQTD.AsString + ' ' + fDMNFe.cdsNotaFiscal_MPREFERENCIA.AsString
          else
            vTextoLote := 'Lote: ' + fDMNFe.cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString + ' - ' + fDMNFe.cdsNotaFiscal_MPQTD.AsString + ' ' + fDMNFe.cdsNotaFiscal_MPREFERENCIA.AsString;
        end
        else
        if vTextoLote <> '' then
          vTextoLote := vTextoLote + ', ' + fDMNFe.cdsNotaFiscal_MPQTD.AsString + ' ' + fDMNFe.cdsNotaFiscal_MPREFERENCIA.AsString;
        //*****************

        //Tirado conforme Ramiro   16/08/2016
        {if trim(fDMNFe.cdsNotaFiscal_MPNUM_MS.AsString) <> '' then
        begin
          if trim(vNum_MS_Ant) <> '' then
          begin
            if vNum_MS_Ant <> fDMNFe.cdsNotaFiscal_MPNUM_MS.AsString then
              vObsAux := vObsAux + '  MS:' + vNum_MS_Ant + ') (IT:' + IntToStr(vItemNFe) + ' Ref:'
            else
            if vObsAux <> '' then
              vObsAux := vObsAux + ', '
            else
              vObsAux := vObsAux + '(IT:' + IntToStr(vItemNFe) + ' Ref:';
            vObsAux := vObsAux + fDMNFe.cdsNotaFiscal_MPREFERENCIA.AsString;
          end;
        end;
        vNum_MS_Ant := fDMNFe.cdsNotaFiscal_MPNUM_MS.AsString;}
        vNumLoteCont_Ant := fDMNFe.cdsNotaFiscal_MPNUM_LOTE_CONTROLE.AsString;
        fDMNFe.cdsNotaFiscal_MP.Next;
        //if trim(vNum_MS_Ant) = '' then
        //  vNum_MS_Ant := fDMNFe.cdsNotaFiscal_MPNUM_MS.AsString;
      end;
      if trim(vTextoLote) <> '' then
        vObs_Engenharia := vObs_Engenharia + '(' + vTextoLote + ')';
      vObs_Engenharia := TrimLeft(vObs_Engenharia);
      vObs_Engenharia := TrimRight(vObs_Engenharia);
      if vObsAux <> '' then
      begin
        vObsAux := vObsAux + '  MS:' + vNum_MS_Ant + ')';
        vObs_MS_Item := vObs_MS_Item + vObsAux;
      end;

      {fDMCadNotaFiscal.cdsProduto_Consumo.IndexFieldNames := 'NUM_MS;REFERENCIA';
      fDMCadNotaFiscal.cdsProduto_Consumo.Close;
      fDMCadNotaFiscal.sdsProduto_Consumo.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
      fDMCadNotaFiscal.cdsProduto_Consumo.Open;
      fDMCadNotaFiscal.cdsProduto_Consumo.First;
      vNum_MS_Ant := fDMCadNotaFiscal.cdsProduto_ConsumoNUM_MS.AsString;
      while not fDMCadNotaFiscal.cdsProduto_Consumo.Eof do
      begin
        {if vObs_Engenharia <> '' then
          vObs_Engenharia := vObs_Engenharia + ', ';
        vObs_Engenharia := vObs_Engenharia + 'Ref:'+fDMCadNotaFiscal.cdsProduto_ConsumoREFERENCIA.AsString;
        if trim(fDMCadNotaFiscal.cdsProduto_ConsumoNUM_MS.AsString) <> '' then
          vObs_Engenharia := vObs_Engenharia + '-MS:' + fDMCadNotaFiscal.cdsProduto_ConsumoNUM_MS.AsString;}
       { if vNum_MS_Ant <> fDMCadNotaFiscal.cdsProduto_ConsumoNUM_MS.AsString then
          vObs_Engenharia := vObs_Engenharia + '  MS:' + vNum_MS_Ant + ') (Ref:'
        else
        if vObs_Engenharia <> '' then
          vObs_Engenharia := vObs_Engenharia + ', '
        else
          vObs_Engenharia := vObs_Engenharia + '(Ref:';
        vObs_Engenharia := vObs_Engenharia + fDMCadNotaFiscal.cdsProduto_ConsumoREFERENCIA.AsString;

        vNum_MS_Ant := fDMCadNotaFiscal.cdsProduto_ConsumoNUM_MS.AsString;
        fDMCadNotaFiscal.cdsProduto_Consumo.Next;
      end;
      if vObs_Engenharia <> '' then
        vObs_Engenharia := vObs_Engenharia + '  MS:' + vNum_MS_Ant + ')';}
    end;
    //******************
    if vExiste_Aux then
      fDMNFe.mItensNFe.Edit
    else
    begin
      fDMNFe.mItensNFe.Insert;
      fDMNFe.mItensNFeID_Produto.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
      fDMNFe.mItensNFeCodAuxiliar.AsString := vCodAuxiliar;
      fDMNFe.mItensNFeCodBarra.AsString    := '';
      //02/05/2018
      if fDMNFe.qParametros_NFeENVAR_CODBARRA.AsString = 'S' then
      begin
        if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') then
        begin
          prc_Abrir_CBarra;
          if trim(fDMNFe.qCBarraCOD_BARRA.AsString) <> '' then
            fDMNFe.mItensNFeCodBarra.AsString := fDMNFe.qCBarraCOD_BARRA.AsString;
        end;
        if trim(fDMNFe.mItensNFeCodBarra.AsString) = '' then
        begin
          prc_Abrir_qProduto_Forn;
          if not(fDMNFe.qProduto_Forn.IsEmpty) and (trim(fDMNFe.qProduto_FornCOD_BARRA.AsString) <> '') then
            fDMNFe.mItensNFeCodBarra.AsString := fDMNFe.qProduto_FornCOD_BARRA.AsString
          else
            fDMNFe.mItensNFeCodBarra.AsString := fDMCadNotaFiscal.cdsProdutoCOD_BARRA.AsString;
        end;
      end;
      fDMNFe.mItensNFeCodBarra2.AsString := '';
      if trim(fDMCadNotaFiscal.cdsProdutoCOD_BARRA2.AsString) <> '' then
      begin
        fDMNFe.mItensNFeCodBarra2.AsString := trim(fDMCadNotaFiscal.cdsProdutoCOD_BARRA2.AsString);
        if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat)) > 0 then
        begin
          fDMNFe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMNFe.mItensNFeVlrUnitario.AsFloat / fDMCadNotaFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat));
          fDMNFe.mItensNFeQtd_Trib.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat));
        end;
        if trim(fDMCadNotaFiscal.cdsProdutoUNIDADE2.AsString) <> '' then
          fDMNFe.mItensNFeUnidade_Trib.AsString := fDMCadNotaFiscal.cdsProdutoUNIDADE2.AsString;
      end;
      fDMNFe.mItensNFeTipoReg.AsString            := 'P';
      fDMNFe.mItensNFeGRAVOU_TAB_TAMANHO.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString;
      fDMNFe.mItensNFeFilial.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalFilial.AsInteger;
      fDMNFe.mItensNFeNumNota.AsInteger         := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger;
      fDMNFe.mItensNFeItemNota.AsInteger        := vItemNFe;
      fDMNFe.mItensNFeItemOriginal.AsInteger    := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
      fDMNFe.mItensNFeCodNatOper.AsString       := fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString;
      fDMNFe.mItensNFeVlrIOF.AsFloat            := 0;
      //ProdMat = 'N' é cadastrado dentro do fOutrosServicosNota
      if fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'N' then
      begin
        fDMNFe.mItensNFeTipoReg.AsString    := 'O';
        fDMNFe.mItensNFeCodProduto.AsString := 'CFOP' + fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString;
      end
      else
      begin
        //Alterado para imprimir o código do produto do cliente  10/05/2016   Perfil
        fDMNFe.mItensNFeCodProduto.AsString := '';
        if (fDMCadNotaFiscal.qParametros_NFeUSA_OPCAO_IMP_COD_CLI.AsString = 'S') and (fDMCadNotaFiscal.cdsClienteIMP_COD_PRODUTO_CLI.AsString = 'S') then
        begin
          if fDMCadNotaFiscal.cdsProdutoCOD_PRODUTO_CLI.AsString <> '' then
            fDMNFe.mItensNFeCodProduto.AsString := fDMCadNotaFiscal.cdsProdutoCOD_PRODUTO_CLI.AsString
          else
          begin
            fDMCadNotaFiscal.qProduto_Forn.Close;
            fDMCadNotaFiscal.qProduto_Forn.ParamByName('ID').AsInteger            := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
            fDMCadNotaFiscal.qProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
            fDMCadNotaFiscal.qProduto_Forn.ParamByName('ID_COR').AsInteger        := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
            fDMCadNotaFiscal.qProduto_Forn.Open;
            if not(fDMCadNotaFiscal.qProduto_Forn.IsEmpty) and (fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString <> '') then
              fDMNFe.mItensNFeCodProduto.AsString := fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString;
          end;
        end;
        if trim(fDMNFe.mItensNFeCodProduto.AsString) = '' then
        begin
          if fDMCadNotaFiscal.cdsParametrosIMP_NFE_REF_PROD.AsString = 'R' then
            fDMNFe.mItensNFeCodProduto.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString
          else
            fDMNFe.mItensNFeCodProduto.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsString;
            if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0) then
              fDMNFe.mItensNFeCodProduto.AsString := fDMNFe.mItensNFeCodProduto.AsString + '.' + fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsString;
          if (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') and (fDMCadNotaFiscal.cdsClienteUSA_TAMANHO_AGRUPADO_NFE.AsString <> 'S') then
            fDMNFe.mItensNFeCodProduto.AsString := fDMNFe.mItensNFeCodProduto.AsString + '.' + fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
        end;
      end;
      texto2 := '';
      //if ((fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'M') or (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P')) and not(fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.isNull) then
      if ((fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'M')) and not(fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.isNull) then
        texto2 := fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.AsString;
      if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P') and (fDMNFe.qParametrosIMP_REFERENCIANANOTA.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosIMP_NFE_REF_PROD.AsString <> 'R')  then
      begin
        if trim(texto2) <> '' then
          texto2 := texto2 + ' ';
        Texto2 := texto2 + 'Ref. ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString;
      end;
      vCodProdutoNfe := '';
      if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0) and ((fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'S')) then
      begin
        if (fDMCadNotaFiscal.cdsClienteIMP_COR_CLIENTE.AsString = 'S') then
        begin
          fDMNFe.qPedido_Item.Close;
          fDMNFe.qPedido_Item.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
          fDMNFe.qPedido_Item.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
          fDMNFe.qPedido_Item.Open;
          if (trim(fDMNFe.qPedido_ItemCOD_COR_CLIENTE.AsString) <> '') then
          begin
            if trim(fDMNFe.qPedido_ItemCOD_PRODUTO_CLIENTE.AsString) <> '' then
              vCodProdutoNfe := fDMNFe.qPedido_ItemCOD_PRODUTO_CLIENTE.AsString;
            vNomeProduto := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' ' + fDMNFe.qPedido_ItemCOD_COR_CLIENTE.AsString
                          + ' ' + fDMNFe.qPedido_ItemNOME_COR_CLIENTE.AsString;
            if (trim(fDMNFe.qPedido_ItemTAMANHO_CLIENTE.AsString) <> '') and (trim(fDMNFe.qPedido_ItemTAMANHO_CLIENTE.AsString) <> '0') then
              vNomeProduto := vNomeProduto + ' TAM. ' + fDMNFe.qPedido_ItemTAMANHO_CLIENTE.AsString;
          end
          else
          begin
            if (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B') and (trim(vNomeProduto) = '') then
              vNomeProduto := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.AsString
            else
            if (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') and (trim(vNomeProduto) = '') then
              vNomeProduto := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.AsString;
          end;
        end
        else
        begin
          if (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B') and (trim(vNomeProduto) = '') then
            vNomeProduto := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.AsString
          else
          if (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') and (trim(vNomeProduto) = '') then
            vNomeProduto := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNome_Cor_Combinacao.AsString;
        end;
      end;
      if trim(vNomeProduto) <> '' then
        fDMNFe.mItensNFeNomeProduto.AsString := TirarAcento(vNomeProduto + ' ' + texto2)
      else
        fDMNFe.mItensNFeNomeProduto.AsString := TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' ' + texto2);
      fDMNFe.mItensNFeUnidade.AsString       := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
      //11/07/2018
      if trim(fDMNFe.mItensNFeUnidade_Trib.AsString) = '' then
      begin //04/07/2017  unidade tributável
        if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE_TRIB.AsString) <> '' then
          fDMNFe.mItensNFeUnidade_Trib.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE_TRIB.AsString
        else
          fDMNFe.mItensNFeUnidade_Trib.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
      end;
      //**************

      fDMNFe.mItensNFeAliqIcms.AsFloat           := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat;
      fDMNFe.mItensNFePerc_ICMS_Inter.AsFloat    := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_INTER.AsFloat;
      fDMNFe.mItensNFeAliqIpi.AsFloat            := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat;
      fDMNFe.mItensNFePercPis.AsFloat            := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat;
      fDMNFe.mItensNFeAliqPis.AsFloat            := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_PIS.AsFloat;
      fDMNFe.mItensNFePercCofins.AsFloat         := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat;
      fDMNFe.mItensNFeAliqCofins.AsFloat         := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COFINS.AsFloat;
      fDMNFe.mItensNFeSomaVlrTotalProd.AsBoolean := (fDMCadNotaFiscal.cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO.AsString = 'S');
      fDMNFe.mItensNFePercIcmsSubstInterno.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat));
      fDMNFe.mItensNFeVlrIcmsDesonerado.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat));
      fDMNFe.mItensNFeCodMotivoDesonerado.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsInteger;
      if (fDMNFe.qParametrosUSA_DESONERACAO.AsString = 'S') then
      begin
        if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat)) > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsInteger > 0) then
        begin
          fDMNFe.qDesoneracao.Close;
          fDMNFe.qDesoneracao.ParamByName('COD_CST_ICMS').AsString     := fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.AsString;
          fDMNFe.qDesoneracao.ParamByName('COD_DESONERACAO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsInteger;
          fDMNFe.qDesoneracao.Open;
          Texto1 := fDMNFe.qDesoneracaoNOME.AsString;
          vTextoDesonerado := '(Valor icms Dispensado R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat);
          if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_DESON.AsFloat)) > 0 then
            vTextoDesonerado := vTextoDesonerado + ' ' + FormatFloat('0.##',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_DESON.AsFloat) +'%';
          vTextoDesonerado := vTextoDesonerado
                            //+ ', Motivo da Desoneração do ICMS ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsString  + ' ' + Texto1 + ')';
                            + ', Motivo da Desoneração do ICMS ' + ' ' + Texto1 + ')';
        end;
      end;

      //**************
      if fDMCadNotaFiscal.cdsTab_CSTICMS.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger]) then
      begin
        //Verifica % de redução da situação tributária
        fDMNFe.mItensNFePercRedICMS.AsFloat  := 100 - StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsTab_CSTICMSPERCENTUAL.AsFloat));
        fDMNFe.mItensNFeAliqSitTrib.AsFloat        := fDMCadNotaFiscal.cdsTab_CSTICMSPERCENTUAL.AsFloat;
        fDMNFe.mItensNFeCodSitTrib.AsString        := fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString + fDMCadNotaFiscal.cdsTab_CSTICMSCOD_CST.AsString;
      end;
      //fDMNFe.mItensNFeCodSitTrib.AsString        := fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString + fDMCadNotaFiscal.cdsTab_CSTICMSCOD_CST.AsString;
      fDMNFe.mItensNFeCod_Cest.AsString := '';
      if (trim(fDMCadNotaFiscal.cdsProdutoCOD_CEST.AsString) <> '') and not(fDMCadNotaFiscal.cdsProdutoCOD_CEST.IsNull) then
        fDMNFe.mItensNFeCod_Cest.AsString := fDMCadNotaFiscal.cdsProdutoCOD_CEST.AsString;
      if fDMCadNotaFiscal.cdsTab_NCM.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger]) then
      begin
        fDMNFe.mItensNFeClasFiscalRed.AsString     := fDMCadNotaFiscal.cdsTab_NCMNCM.AsString;
        fDMNFe.mItensNFeClasFiscal.AsString        := fDMCadNotaFiscal.cdsTab_NCMNCM.AsString;
        //24/11/2015 Nova
        if (fDMNFe.mItensNFeCod_Cest.AsString = '') and (trim(fDMCadNotaFiscal.cdsTab_NCMCOD_CEST.AsString) <> '') then
          fDMNFe.mItensNFeCod_Cest.AsString := fDMCadNotaFiscal.cdsTab_NCMCOD_CEST.AsString;
        //******
      end;
      fDMNFe.mItensNFeNCM_EX.AsString := fDMCadNotaFiscal.cdsProdutoNCM_EX.AsString;
      // 03/09/2013
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensIMP_OC_NOTA.AsString <> 'N' then
      begin
        fDMNFe.mItensNFePedidoCliente.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString;
        if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_CLIENTE.AsInteger > 0 then
          fDMNFe.mItensNFeItemPedido.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_CLIENTE.AsInteger
        else
          fDMNFe.mItensNFeItemPedido.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
      end
      else
      begin
        fDMNFe.mItensNFePedidoCliente.AsString := '';
        fDMNFe.mItensNFeItemPedido.AsInteger   := 0;
      end;
      fDMNFe.mItensNFeNumOS.AsString         := fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString;
      fDMNFe.mItensNFePercRedICMS.AsFloat    := 0;
      if fDMCadNotaFiscal.cdsTab_CSTIPI.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTIPI.AsInteger]) then
        fDMNFe.mItensNFeCodCSTIPI.AsString       := fDMCadNotaFiscal.cdsTab_CSTIPICOD_IPI.AsString;
      //24/11/2015 Nova
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_ENQIPI.AsInteger <= 0 then
        fDMNFe.mItensNFeCod_EnqIPI.AsString := '999'
      else
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_ENQIPI.AsInteger > 0 then
        if fDMCadNotaFiscal.cdsEnqIPI.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_ENQIPI.AsInteger]) then
          fDMNFe.mItensNFeCod_EnqIPI.AsString := fDMCadNotaFiscal.cdsEnqIPICODIGO.AsString;
      //*************
      fDMNFe.mItensNFeMVA.AsFloat              := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_MVA.AsFloat;
      fDMNFe.mItensNFePercRedICMSSubst.AsFloat := fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST.AsFloat;
      if fDMCadNotaFiscal.cdsTab_CofinsID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COFINS.AsInteger then
        fDMCadNotaFiscal.cdsTab_Cofins.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COFINS.AsInteger]);
      if fDMCadNotaFiscal.cdsTab_PisID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PIS.AsInteger then
        fDMCadNotaFiscal.cdsTab_Pis.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PIS.AsInteger]);
      fDMNFe.mItensNFeCodCofins.AsString  := fDMCadNotaFiscal.cdsTab_CofinsCODIGO.AsString;
      fDMNFe.mItensNFeTipoCofins.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_COFINS.AsString;
      fDMNFe.mItensNFeCodPis.AsString     := fDMCadNotaFiscal.cdsTab_PisCODIGO.AsString;
      fDMNFe.mItensNFeTipoPis.AsString    := fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_PIS.AsString;
      if Trim(fDMCadNotaFiscal.cdsProdutoCOMPLEMENTO.AsString) <> '' then
        vTextoDetNFe := TirarAcento(fDMCadNotaFiscal.cdsProdutoCOMPLEMENTO.AsString) + ' ';

      if (fDMCadNotaFiscal.cdsClienteIMP_COR_CLIENTE.AsString <> 'S') then
      begin
        //24/01/2018
        if (fDMCadNotaFiscal.qParametros_NFeUSA_PROD_CLI_PED.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) then
        begin
          fDMNFe.qPedido_Item.Close;
          fDMNFe.qPedido_Item.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
          fDMNFe.qPedido_Item.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
          fDMNFe.qPedido_Item.Open;
          if not fDMNFe.qPedido_Item.IsEmpty then
            vCodProdutoNfe := fDMNFe.qPedido_ItemCOD_PRODUTO_CLIENTE.AsString;
          if trim(vCodProdutoNfe) = '' then
            Procura_ProdCliente;
        end //*************
        else
          Procura_ProdCliente;
      end;
      if (fDMNFe.qParametrosIMP_CODPRODCLI_DANFE.AsString = 'S') and (fDMCadNotaFiscal.cdsClienteIMP_COD_PRODUTO_CLI.AsString <> 'S') then
      begin
        if (fDMCadNotaFiscal.cdsClienteIMP_COR_CLIENTE.AsString <> 'S') then
        begin
          if (vCodProdutoNFe = '') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_PRODUTO_FORN.AsString) <> '') then
            vCodProdutoNfe := fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_PRODUTO_FORN.AsString;
        end;
        if vCodProdutoNFe <> '' then
        begin
          texto2 := 'Prod. Cliente : ';
          vTextoDetNFe := vTextoDetNFe + '(' + texto2 + vCodProdutoNfe + ')';
        end
        else
        if (fDMCadNotaFiscal.cdsClienteIMP_COR_CLIENTE.AsString = 'S') then
          vMSGErroCliente := vMSGErroCliente + #13 + '*** Item ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsString +  ' sem o código do produto do cliente ';
      end;

      vNomeTriang  := '';
      vTextoTriang := '';
      if fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.RecordCount > 0 then
      begin
        texto2 := '';
        fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.First;
        while not fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Eof do
        begin
          if fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaCNPJ_CPF.AsString <> fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString then
          begin
            if vTextoTriang = '' then
              vTextoTriang := '[Ret.Ref.Nota '
            else
              vTextoTriang := vTextoTriang + ',';
            vNomeTriang := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNOMEFORNECEDOR.AsString;
          end;
          if texto2 = '' then
            texto2 := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsString
          else
            texto2 := texto2 + ',' + fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsString;
          fDMNFe.qNotaEntrada_Itens.Close;
          fDMNFe.qNotaEntrada_Itens.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID_NTE.AsInteger;
          fDMNFe.qNotaEntrada_Itens.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NTE.AsInteger;
          fDMNFe.qNotaEntrada_Itens.Open;
          if not(fDMNFe.qNotaEntrada_Itens.IsEmpty) and (fDMNFe.qNotaEntrada_ItensID.AsInteger > 0) then
          begin
            if (StrToFloat(FormatFloat('0.0000000',fDMNFe.qNotaEntrada_ItensQTDRESTANTE.AsFloat)) > 0) then
              texto2 := texto2 + ' Parcial'
            else
            if (StrToFloat(FormatFloat('0.0000000',fDMNFe.qNotaEntrada_ItensCONTADOR.AsFloat)) > 1) then
              texto2 := texto2 + ' Restante'
            else
              texto2 := texto2 + ' Total';
          end;
          if fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaCNPJ_CPF.AsString <> fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString then
            vTextoTriang := vTextoTriang + Texto2;
          fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Next;
        end;
        vTextoDetNFe  := vTextoDetNFe + '(Notas Dev.:' + texto2 + ') ';
        if vTextoTriang <> '' then
          vTextoDetNFe := vTextoDetNFe + vTextoTriang + ' de ' + vNomeTriang + '] ';
      end;
      //aqui 15/01/2018
      if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString) <> '' then
      begin
        if trim(vTextoDetNFe) = '' then
          vTextoDetNFe := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString
        else
          vTextoDetNFe := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + ' ' + vTextoDetNFe;
        //fDMNFe.mItensNFeInfAdicionais.Value := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString;
      end;
      //**************

      if vTextoDetNFe <> '' then
        fDMNFe.mItensNFeInfAdicionais.Value := vTextoDetNFe + ' ';
      {if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString) <> '' then
      begin
        if Trim(fDMNFe.mItensNFeInfAdicionais.Value) = '' then
          fDMNFe.mItensNFeInfAdicionais.Value := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString
        else
          fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + ' (' + fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + ')';
      end;}
      Texto1 := '';
      //17/05/2017  SulCromo
      if fDMCadNotaFiscal.qParametros_PedUSA_OPERACAO_SERV.AsString  = 'S' then
      begin
        //if colocado dia 16/10/2018
        if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensIMP_OC_NOTA.AsString) <> 'N' then
        begin
          if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString) <> '' then
            Texto1 := '(' + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString) + ')';
          if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString) <> '' then
            Texto1 := Texto1 +  '(OC: ' + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString) + ')';
        end;
      end
      else
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensIMP_OC_NOTA.AsString <> 'N' then
      begin
        if (fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString <> '') then
          Texto1 := Texto1 + '(OC: ' + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString) + ' ';
        if (fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString <> '') then
        begin
          texto2 := UpperCase(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString);
          if PosEx('REM',texto2) > 0 then
            Texto1 := Texto1 + 'OS: ' + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString) + ' '
          else
            Texto1 := Texto1 + 'OS/REM: ' + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString) + ' ';
        end;
        if trim(Texto1) <> '' then
          Texto1 := Texto1 + ')';
        Texto1 := TrimRight(Texto1);
      end;
      //24/05/2017
      if (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_TALAO.AsString) <> '') and ((fDMCadNotaFiscal.qParametros_PedUSA_NUM_TALAO.AsString = 'I') or (fDMCadNotaFiscal.qParametros_PedUSA_NUM_TALAO.AsString = 'P')) then
        Texto1 := Texto1 + '(LOTE: ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_TALAO.AsString +')';
      if texto1 <> '' then
      begin
        if Trim(fDMNFe.mItensNFeInfAdicionais.Value) = '' then
          fDMNFe.mItensNFeInfAdicionais.Value := Texto1
        else
          fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + ' ' + Texto1;
      end;
      //aqui 16/05/2014
      if (fDMCadNotaFiscal.cdsParametrosUSA_TAMANHO_AGRUPADO_NFE.AsString <> 'S') or (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString <> 'S') or
         (fDMCadNotaFiscal.cdsClienteUSA_TAMANHO_AGRUPADO_NFE.AsString <> 'S') then
      begin
        if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat)) > 0) and (fDMCadNotaFiscal.cdsParametrosLEI_TRANSPARENCIA_IMP_ITEM.AsString = 'S') then
        begin
          //Texto1 := '(Vlr.Aprox.Tributos R$ ' + FormatFloat('####,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat);

          Texto1 := fDMCadNotaFiscal.cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM.AsString;
          if fDMCadNotaFiscal.cdsParametrosIMP_TIPO_TRIBUTOS_ITENS.AsString = 'T' then
          begin
            if trim(Texto1) = '' then
              Texto1 := 'Vlr. aprox.de tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12.';
            Texto1 := '(' + Texto1 + ' R$ ' + FormatFloat('####,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat);
            vAux := StrToCurr(FormatCurr('0.00',((fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat / fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat) * 100)));
            Texto1 := Texto1 + ' (' + FormatFloat('0.00',vAux) + '%)';
          end
          else
          begin
            //Texto1 := 'Vlr.aprox.de trib. R$ ' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat) + ' Federal';
            Texto1 := '(Vlr.aprox.de trib. R$ ' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat);
            if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat);
            Texto1 := Texto1 + ' Federal';
            //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat)) > 0 then
              Texto1 := Texto1 + ', R$ ' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat);
            if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat);
            Texto1 := Texto1 + ' Estadual';
            //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat)) > 0 then
              Texto1 := Texto1 + ', R$ ' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat);
            if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat);
            Texto1 := Texto1 + ' Municipal';
            Texto1 := Texto1 + ' lei 12.741/12';
          end;
          if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString) <> '' then
            Texto1 := Texto1 + ' Fonte: ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensFONTE_TRIBUTO.AsString
          else
            Texto1 := Texto1;
          if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensIBPT_CHAVE.AsString) <> '' then
            Texto1 := Texto1 + '-' + fDMCadNotaFiscal.cdsNotaFiscal_ItensIBPT_CHAVE.AsString;
          Texto1 := Texto1 + ')';
          fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + Texto1;
        end;
      end;
      fDMNFe.mItensNFeVlrUnitario.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
      //11/07/2018
      if (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat)) > 0) and (trim(fDMCadNotaFiscal.cdsProdutoCOD_BARRA2.AsString) <> '') then
        fDMNFe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat / fDMCadNotaFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat))
      else //04/07/2017
      if StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO_TRIB.AsFloat)) > 0 then
        fDMNFe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO_TRIB.AsFloat))
      else
        fDMNFe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
      //*********

      if (fDMCadNotaFiscal.cdsParametrosUSA_FCI.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_FCI.AsString) <> '') then
        vTextoFCI := '(Resolução do Senado Federal nº 13/2012, % usado ' + FormatFloat('0.00#',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_USADO_FCI.AsFloat) + '%'
                   + ' Numero da FCI ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_FCI.AsString + ')';
    end;


    //26/05/2016
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString = 'S' then
    begin
      fDMNFe.mItensNFeObs_Tamanho.AsString := '';
      fDMCadNotaFiscal.cdsNotaFiscal_Tam.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Tam.Eof do
      begin
        if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat)) > 0 then
        begin
          if fDMNFe.mItensNFeObs_Tamanho.AsString = '' then
            fDMNFe.mItensNFeObs_Tamanho.AsString := fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString
          else
            fDMNFe.mItensNFeObs_Tamanho.AsString := fDMNFe.mItensNFeObs_Tamanho.AsString + ' ' + fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString;
          fDMNFe.mItensNFeObs_Tamanho.AsString := fDMNFe.mItensNFeObs_Tamanho.AsString + '/' + fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsString;
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_Tam.Next;
      end;
    end
    else
    if (fDMCadNotaFiscal.cdsParametrosUSA_TAMANHO_AGRUPADO_NFE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') and
       (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'P') then
    begin
      if fDMNFe.mItensNFeObs_Tamanho.AsString <> '' then
        fDMNFe.mItensNFeObs_Tamanho.AsString := fDMNFe.mItensNFeObs_Tamanho.AsString + ' ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString + '/' +fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsString
      else
        fDMNFe.mItensNFeObs_Tamanho.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString + '/' +fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsString;
    end;
    if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') or (StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat)) > 0) then
    begin
      fDMNFe.mItensNFeVlrBaseImportacao.AsFloat := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrBaseImportacao.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));
      fDMNFe.mItensNFeVlrImportacao.AsFloat     := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrImportacao.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat));
      fDMNFe.mItensNFeVlrDespAduaneira.AsFloat  := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrDespAduaneira.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat));
    end;
    fDMNFe.mItensNFeQtd.AsFloat               := StrToFloat(FormatFloat('0.00000',fDMNFe.mItensNFeQtd.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
    //11/07/2018
    if StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFeQtd_Trib.AsFloat)) <= 0 then
    begin
      //04/07/2017
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_TRIB.AsFloat)) > 0 then
        fDMNFe.mItensNFeQtd_Trib.AsFloat := StrToFloat(FormatFloat('0.00000',fDMNFe.mItensNFeQtd_Trib.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_TRIB.AsFloat))
      else
        fDMNFe.mItensNFeQtd_Trib.AsFloat := StrToFloat(FormatFloat('0.00000',fDMNFe.mItensNFeQtd.AsFloat));
    end;
    //*****************

    fDMNFe.mItensNFeVlrTotal.AsFloat          := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTotal.AsFloat + (fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat
                                               + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat
                                               + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat)));
    fDMNFe.mItensNFeVlrIcms.AsFloat            := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat));
    //21/11/2018
    fDMNFe.mItensNFeBase_IPI.AsFloat           := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBase_IPI.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_IPI.AsFloat));
    fDMNFe.mItensNFeVlrIpi.AsFloat             := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIpi.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat));
    fDMNFe.mItensNFeBaseIcmsSimples.AsFloat    := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBaseIcmsSimples.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat));
    fDMNFe.mItensNFeVlrIcmsSimples.AsFloat     := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsSimples.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat));
    fDMNFe.mItensNFeVlrPis.AsFloat             := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrPis.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat));
    fDMNFe.mItensNFeVlrCofins.AsFloat          := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrCofins.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat));
    fDMNFe.mItensNFeVlrFrete.AsFloat           := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrFrete.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat));
    fDMNFe.mItensNFeVlrSeguro.AsFloat          := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrSeguro.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat));
    fDMNFe.mItensNFeVlrOutrasDespesas.AsFloat  := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrOutrasDespesas.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat));
    fDMNFe.mItensNFeVlrDesconto.AsFloat        := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrDesconto.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat
                                                + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESC_SUFRAMA.AsFloat - fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDESONERADO.AsFloat));
    fDMNFe.mItensNFeBaseICMS.AsFloat           := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
    fDMNFe.mItensNFeIcmsBaseSubst.AsFloat      := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat));
    fDMNFe.mItensNFeIcmsVlrSubst.AsFloat       := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat));
    fDMNFe.mItensNFeVlrTributos.AsFloat        := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat));
    fDMNFe.mItensNFeVlrTributos_Estadual.AsFloat  := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Estadual.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat));
    fDMNFe.mItensNFeVlrTributos_Federal.AsFloat   := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Federal.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat));
    fDMNFe.mItensNFeVlrTributos_Municipal.AsFloat := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Municipal.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat));

    //fDMNFe.mItensNFePercTributos.AsFloat       := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO.AsFloat));
    fDMNFe.mItensNFePercTributos_Estadual.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat));
    fDMNFe.mItensNFePercTributos_Federal.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat));
    fDMNFe.mItensNFePercTributos_Municipal.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat));
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString) <> '' then
    begin
      fDMNFe.mItensNFeNum_Lote_Controle.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString;
      fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + '(Lote: ' + fDMNFe.mItensNFeNum_Lote_Controle.AsString + ')';
    end;

    fDMNFe.mItensNFeNFCI.AsString              := fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_FCI.AsString;
    if (trim(vTextoFCI) <> '') and (fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString <> 'S') then
      fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + vTextoFCI;
    fDMNFe.mItensNFeVlrIcmsOperacao.AsFloat    := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcmsOperacao.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSOPERACAO.AsFloat));
    fDMNFe.mItensNFePercTribIcms.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat));
    fDMNFe.mItensNFePercDiferimento.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DIFERIMENTO.AsFloat));
    fDMNFe.mItensNFeVlrIcmsDiferido.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMNFe.mItensNFeVlrIcmsDiferido.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSDIFERIDO.AsFloat));
    if (trim(vTextoDesonerado) <> '') then
      fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + vTextoDesonerado;
    if trim(vObs_Engenharia) <> '' then
      //fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + '(' + vObs_Engenharia + ')';
      fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + vObs_Engenharia;
    fDMNFe.mItensNFeInfAdicionais.Value := Trim(fDMNFe.mItensNFeInfAdicionais.Value);

    //4.00
    fDMNFe.mItensNFePerc_ICMS_FCP.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_FCP.AsFloat));
    fDMNFe.mItensNFeVlr_ICMS_FCP.AsFloat  := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlr_ICMS_FCP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat));
    fDMNFe.mItensNFeBase_ICMS_FCP.AsFloat := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBase_ICMS_FCP.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat));
    fDMNFe.mItensNFeVLR_FCP_ST.AsFloat  := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVLR_FCP_ST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FCP_ST.AsFloat));
    fDMNFe.mItensNFeBASE_FCP_ST.AsFloat := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeBASE_FCP_ST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_FCP_ST.AsFloat));
    fDMNFe.mItensNFePERC_FCP_ST.AsFloat := StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFePERC_FCP_ST.AsFloat));
    //*************

    //4.00 alguns campos são novos
    fDMNFe.mItensNFeVLR_ICMS_FCP_DEST.AsFloat  := StrToFloat(FormatFloat('0.000',fDMNFe.mItensNFeVLR_ICMS_FCP_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat));
    fDMNFe.mItensNFeBASE_ICMS_FCP_DEST.AsFloat := StrToFloat(FormatFloat('0.000',fDMNFe.mItensNFeBASE_ICMS_FCP_DEST.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat));
    fDMNFe.mItensNFePerc_ICMS_UF_Dest.AsFloat  := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_UF_DEST.AsFloat));
    fDMNFe.mItensNFePerc_ICMS_Partilha.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS_PARTILHA.AsFloat));
    fDMNFe.mItensNFeVlr_ICMS_UF_Dest.AsFloat   := StrToFloat(FormatFloat('0.000',fDMNFe.mItensNFeVlr_ICMS_UF_Dest.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat));
    fDMNFe.mItensNFeVlr_ICMS_UF_Remet.AsFloat  := StrToFloat(FormatFloat('0.000',fDMNFe.mItensNFeVlr_ICMS_UF_Remet.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat));

    //*******
    //4.00 26/10/2018
    fDMNFe.mItensNFeVlrIPI_Devol.AsFloat := StrToFloat(FormatFloat('0.000',fDMNFe.mItensNFeVlrIPI_Devol.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI_DEVOL.AsFloat));
    fDMNFe.mItensNFePerc_Devol.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DEVOL.AsFloat));
    //***********************

    fDMNFe.mItensNFe.Post;
    if fDMNFe.qParametrosENVIARNOTABENEF_NANFE.AsString = 'S' then
      Le_tNotaFiscalNDevolvida;
    //09/11/2015
    if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '') and (fDMNFe.qParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and
       (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and (vID_PedidoAnt <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger) then
    begin
      if not fDMCadNotaFiscal.mPedidoAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger]) then
      begin
        fDMCadNotaFiscal.mPedidoAux.Insert;
        fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger      := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
        fDMCadNotaFiscal.mPedidoAuxVlr_Adiantamento.AsFloat := StrToFloat(FormatFloat('0.00',0));
        fDMCadNotaFiscal.mPedidoAuxObs_Nota.AsString        := '';
        fDMCadNotaFiscal.mPedidoAux.Post;
      end;
    end;
    //19/11/2015
    if ((trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '') and (fDMNFe.qParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S') and
       (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and (vID_PedidoAnt <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger)) or
       (fDMNFe.qParametros_NFeIMP_OC.AsString = 'D')  then
    begin
      if not fDMCadNotaFiscal.mPedidoAux.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger]) then
      begin
        fDMCadNotaFiscal.mPedidoAux.Insert;
        fDMCadNotaFiscal.mPedidoAuxID_Pedido.AsInteger      := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
        fDMCadNotaFiscal.mPedidoAuxVlr_Adiantamento.AsFloat := StrToFloat(FormatFloat('0.00',0));
        fDMCadNotaFiscal.mPedidoAuxObs_Nota.AsString        := '';
        if (fDMNFe.qParametros_NFeIMP_OC.AsString = 'D') then
          fDMCadNotaFiscal.mPedidoAuxNum_OC.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString;
        fDMCadNotaFiscal.mPedidoAux.Post;
      end;
    end;
    //***********

    vID_PedidoAnt := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    if vErroProdCli then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
  end;
  if fDMCadNotaFiscal.cdsParametrosUSA_TAMANHO_AGRUPADO_NFE.AsString = 'S' then
  begin
    fDMNFe.mItensNFe.First;
    while not fDMNFe.mItensNFe.Eof do
    begin
      if trim(fDMNFe.mItensNFeObs_Tamanho.AsString) <> '' then
      begin
        fDMNFe.mItensNFe.Edit;
        fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + '(' + fDMNFe.mItensNFeObs_Tamanho.AsString + ')';
        fDMNFe.mItensNFe.Post;
      end;
      fDMNFe.mItensNFe.Next;
    end;
  end;
  if (fDMCadNotaFiscal.cdsClienteIMP_COR_CLIENTE.AsString = 'S') and (trim(vMSGErroCliente) <> '') then
  begin
    vMSGErroCliente := 'FAVOR VERIFICAR O AVISO ABAIXO' + #13 + #13 + vMSGErroCliente;
    if MessageDlg(vMSGErroCliente + #13 + ', continuar o envio/impressão ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      vErroProdCli := True;
  end;
  if vErroProdCli then
    fDMNFe.mItensNFe.EmptyDataSet
  else
  begin
    fDMNFe.mItensNFe.First;
    if not fDMNFe.mAuxDadosNFe.Locate('Tipo;Codigo',VarArrayOf(['NAT',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger]),[locaseinsensitive]) then
      Grava_mAuxDadosNFe('NAT',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsString,fDMCadNotaFiscal.cdsNotaFiscalID_VARIACAO.AsInteger);
  end;
end;

procedure TfNFe.Monta_mParcelaNFe;
begin
  fDMNFe.mParcelaNFe.EmptyDataSet;
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString = 'V' then
  begin 
    fDMNFe.mParcelaNFe.Insert;
    fDMNFe.mParcelaNFeNumNota.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger;
    fDMNFe.mParcelaNFeParcela.AsInteger     := 0;
    fDMNFe.mParcelaNFeValor.AsFloat         := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat;
    fDMNFe.mParcelaNFeDtVencimento.AsString := 'A Vista';
    fDMNFe.mParcelaNFe.Post;
  end
  else
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat)) > 0 then
    begin
      fDMNFe.mParcelaNFe.Insert;
      fDMNFe.mParcelaNFeNumNota.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger;
      fDMNFe.mParcelaNFeParcela.AsInteger     := 1;
      fDMNFe.mParcelaNFeValor.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat));
      fDMNFe.mParcelaNFeDtVencimento.AsString := 'Transf.ICMS';
      fDMNFe.mParcelaNFe.Post;
    end;

    fDMCadNotaFiscal.cdsNotaFiscal_Parc.First;
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat)) > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger > 0) then
    begin
      fDMNFe.mParcelaNFe.Insert;
      fDMNFe.mParcelaNFeNumNota.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger;
      fDMNFe.mParcelaNFeParcela.AsInteger     := 0;
      fDMNFe.mParcelaNFeValor.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat));
      fDMNFe.mParcelaNFeDtVencimento.AsString := 'Entrada';
      fDMNFe.mParcelaNFe.Post;
    end;

    while not fDMCadNotaFiscal.cdsNotaFiscal_Parc.Eof do
    begin
      fDMNFe.mParcelaNFe.Insert;
      fDMNFe.mParcelaNFeNumNota.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger;
      fDMNFe.mParcelaNFeParcela.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger;
      fDMNFe.mParcelaNFeValor.AsFloat         := fDMCadNotaFiscal.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat;
      if fDMCadNotaFiscal.cdsNotaFiscal_ParcITEM.AsInteger = 0 then
        fDMNFe.mParcelaNFeDtVencimento.AsString := 'Entrada'
      else
        fDMNFe.mParcelaNFeDtVencimento.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ParcDTVENCIMENTO.AsString;
      fDMNFe.mParcelaNFe.Post;
      fDMCadNotaFiscal.cdsNotaFiscal_Parc.Next;
    end;
  end;
end;

{function TfNFe.Monta_Texto(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;}

procedure TfNFe.Procura_ProdCliente;
var
  vContAux : Integer;
begin
  //vMSGErroCliente := '';
  fDMCadNotaFiscal.qProduto_Forn.Close;
  fDMCadNotaFiscal.qProduto_Forn.ParamByName('ID').AsInteger            := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  fDMCadNotaFiscal.qProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  fDMCadNotaFiscal.qProduto_Forn.ParamByName('ID_COR').AsInteger        := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  fDMCadNotaFiscal.qProduto_Forn.Open;
  if (fDMCadNotaFiscal.cdsClienteIMP_COR_CLIENTE.AsString = 'S') then
  begin
    if trim(fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString) = '' then
      vMSGErroCliente := vMSGErroCliente +  '*** Item da nota ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsString + ', esta sem relacionamento com o cliente!'
    else
    if (fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString <> vCodProdutoNfe) and (vCodProdutoNfe <> '') then
    begin
      vMSGErroCliente := vMSGErroCliente + '*** Item ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsString +  ' com o  Cód. Produto Cliente no Relacionamento diferente do código lançado no pedido ' + #13
                       + '       Cód. no relacionamento: ' + fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString + #13
                       + '       Cód. no pedido: ' + vCodProdutoNfe;
      //vCodProdutoNfe := Trim(fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString);
    end
    else
    if trim(vCodProdutoNfe) = '' then
      vCodProdutoNfe := Trim(fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString);
  end
  else
    vCodProdutoNfe := Trim(fDMCadNotaFiscal.qProduto_FornCOD_MATERIAL_FORN.AsString);
  while not fDMCadNotaFiscal.qProduto_Forn.Eof do
  begin
    vContAux := vContAux + 1;
    fDMCadNotaFiscal.qProduto_Forn.Next;
  end;
  if vContAux > 1 then
    vMSGGeral := vMSGGeral + #13 + '*** Item ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsString + ' da nota esta com cód. Referenciado duplicado' + #13
               + '    Favor verificar, pois pode gravar incorretamente  na nota o código do Destinatário!';
end;

procedure TfNFe.Le_tNotaFiscalRef;
var
  vItemAux: Integer;
  vObsAux: String;
  vTexto2: String;
begin
  vObsAux := '';
  fDMCadNotaFiscal.cdsNotaFiscal_Ref.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Ref.Eof do
  begin
    fDMNFe.mNotaDevolvidaNFe.Last;
    vitemAux := fDMNFe.mNotaDevolvidaNFeItem.AsInteger;
    fDMNFe.mNotaDevolvidaNFe.Insert;
    fDMNFe.mNotaDevolvidaNFeTipo.AsString     := fDMCadNotaFiscal.cdsNotaFiscal_RefTIPO.AsString;
    fDMNFe.mNotaDevolvidaNFeItem.AsInteger    := vItemAux + 1;
    fDMNFe.mNotaDevolvidaNFeModelo.AsString   := fDMCadNotaFiscal.cdsNotaFiscal_RefMODELO_REF.AsString;
    fDMNFe.mNotaDevolvidaNFeNumNota.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_RefNUMNOTA_REF.AsInteger;
    fDMNFe.mNotaDevolvidaNFeCodForn.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_RefID_FORNECEDOR.AsInteger;
    fDMNFe.mNotaDevolvidaNFeNomeForn.AsString := '';
    fDMNFe.mNotaDevolvidaNFeCNPJ.AsString     := fDMCadNotaFiscal.cdsNotaFiscal_RefCNPJ_REF.AsString;
    fDMNFe.qUF.Close;
    fDMNFe.qUF.ParamByName('UF').AsString := fDMCadNotaFiscal.cdsNotaFiscal_RefUF_REF.AsString;
    fDMNFe.qUF.Open;
    fDMNFe.mNotaDevolvidaNFeCodUF.AsString := fDMNFe.qUFCODUF.AsString;
    fDMNFe.qUF.Close;
    fDMNFe.mNotaDevolvidaNFeNFeChaveAcesso.AsString := fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString;
    fDMNFe.mNotaDevolvidaNFeCupomNumECF.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_NUMECF.AsInteger;
    fDMNFe.mNotaDevolvidaNFeCupomNumCOO.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_NUMCOO.AsInteger;
    fDMNFe.mNotaDevolvidaNFeCupomModelo.AsString    := fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_MODELO.AsString;
    fDMNFe.mNotaDevolvidaNFeAnoEmissao.AsInteger    := fDMCadNotaFiscal.cdsNotaFiscal_RefANO_REF.AsInteger;
    fDMNFe.mNotaDevolvidaNFeMesEmissao.AsInteger    := fDMCadNotaFiscal.cdsNotaFiscal_RefMES_REF.AsInteger;
    fDMNFe.mNotaDevolvidaNFeSerie.AsString          := fDMCadNotaFiscal.cdsNotaFiscal_RefSERIE_REF.AsString;
    fDMNFe.mNotaDevolvidaNFeIE.AsString             := fDMCadNotaFiscal.cdsNotaFiscal_RefINSCESTADUAL_REF.AsString;
    fDMNFe.mNotaDevolvidaNFeCTeChaveAcesso.AsString := fDMCadNotaFiscal.cdsNotaFiscal_RefCTECHAVEACESSO_REF.AsString;
    fDMNFe.mNotaDevolvidaNFe.Post;

    //03/11/2015   quando a danfe é impressa pela Flexdocs, já faz automático
    if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString <> 'S' then
    begin
      if vObsAux <> '' then
        vObsAux := vObsAux + ' ';
      if fDMCadNotaFiscal.cdsNotaFiscal_RefTIPO.AsString = '13' then
      begin
        vTexto2 := '';
        vObsAux := vObsAux + '(NF-e referenciada ' +  fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString;
        fDMNFe.qNotaFiscal.Close;
        if trim(fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString) <> '' then
        begin
          fDMNFe.qNotaFiscal.ParamByName('NFeChaveAcesso').AsString := fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString;
          fDMNFe.qNotaFiscal.Open;
        end;
        if (fDMNFe.qNotaFiscal.Active) and not(fDMNFe.qNotaFiscal.IsEmpty) then
          vTexto2 := '- Emissao: ' + fDMNFe.qNotaFiscalDTEMISSAO.AsString + ' Num.Nota: ' + fDMNFe.qNotaFiscalNUMNOTA.AsString + ' Ser: ' + fDMNFe.qNotaFiscalSERIE.AsString;
        vObsAux := vObsAux + vTexto2 + ')';
      end
      //**********
      else
      if fDMCadNotaFiscal.cdsNotaFiscal_RefTIPO.AsString = '14' then
      begin
        vObsAux := vObsAux + '(NF referenciada Mes/Ano: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefMES_REF.AsString + '/' + fDMCadNotaFiscal.cdsNotaFiscal_RefANO_REF.AsString
                   + ', Modelo ' + fDMCadNotaFiscal.cdsNotaFiscal_RefMODELO_REF.AsString + ', Serie ' + fDMCadNotaFiscal.cdsNotaFiscal_RefSERIE_REF.AsString
                   + ', Nº ' + fDMCadNotaFiscal.cdsNotaFiscal_RefNUMNOTA_REF.AsString + ', CNPJ: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefCNPJ_REF.AsString
                   + ', UF: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefUF_REF.AsString + ')';
      end
      else
      if fDMCadNotaFiscal.cdsNotaFiscal_RefTIPO.AsString = '20a' then
      begin
        vObsAux := vObsAux + '(NF referenciada de Produto Rural Mes/Ano: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefMES_REF.AsString + '/' + fDMCadNotaFiscal.cdsNotaFiscal_RefANO_REF.AsString
                   + ', Modelo ' + fDMCadNotaFiscal.cdsNotaFiscal_RefMODELO_REF.AsString + ', Serie ' + fDMCadNotaFiscal.cdsNotaFiscal_RefSERIE_REF.AsString
                   + ', Nº ' + fDMCadNotaFiscal.cdsNotaFiscal_RefNUMNOTA_REF.AsString + ', CNPJ/CPF: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefCNPJ_REF.AsString
                   + ', UF: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefUF_REF.AsString + ', IE: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefINSCESTADUAL_REF.AsString + ')';
      end
      else
        vObsAux := vObsAux + '(Cupom Fiscal Modelo: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_MODELO.AsString
                   + ', Nº ECF: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_NUMECF.AsString + ', Nº COO: ' + fDMCadNotaFiscal.cdsNotaFiscal_RefCUPOM_NUMCOO.AsString + ')';
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Ref.Next;
  end;
  if trim(vObsAux) <> '' then
    Grava_DadosAdicionaisNFe(vObsAux,0);
end;

function TfNFe.fnc_Posicionar_Cidade(ID: Integer): Boolean;
begin
  Result := True;
  fDMNFe.qCidade.Close;
  fDMNFe.qCidade.ParamByName('ID').AsInteger := ID;
  fDMNFe.qCidade.Open;
  if fDMNFe.qCidade.IsEmpty then
    Result := False;
end;

procedure TfNFe.prc_Posicionar_Tabelas;
begin
  fDMNFe.qFilial.Close;
  fDMNFe.qFilial.ParamByName('ID').AsInteger := vFilial;
  fDMNFe.qFilial.Open;

  fDMNFe.qUF.Close;
  fDMNFe.qUF.ParamByName('UF').AsString := fDMNFe.qFilialUF.AsString;
  fDMNFe.qUF.Open;

  fDMNFe.qParametros.Close;
  fDMNFe.qParametros.Open;

  fDMNFe.cdsNFe_Email.Close;
  fDMNFe.cdsNFe_Email.Open;

  if (Tag <> 1) and (Tag <> 5) then
  begin
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

    fDMNFe.qTransportadora.Close;
    fDMNFe.qTransportadora.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger;
    fDMNFe.qTransportadora.Open;

    vEmailTransp := fDMNFe.qTransportadoraEMAIL_NFE.AsString;
  end;
end;

procedure TfNFe.prc_Imprimir_Danfe(Tipo: String);
begin
  fDMNFe.cdsNotaFiscal.Close;
  fDMNFe.sdsNotaFiscal.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMNFe.cdsNotaFiscal.Open;

  fDMNFe.qFilial.Close;
  fDMNFe.qFilial.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
  fDMNFe.qFilial.Open;

  vFilial := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;

  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMNFe.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMNFe.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  vEmail_Fortes := fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString;
  vEmail_Assunto_Fortes := 'Nota Fiscal Nº ' + fDMNFe.cdsNotaFiscalNUMNOTA.AsString;
  vEmail_Fortes_Corpo   := 'Em Anexo Nota Fiscal Nº ' + fDMNFe.cdsNotaFiscalNUMNOTA.AsString;
  vTipo_Config_Email    := 1;

  fRelDANFE := TfRelDANFE.Create(Self);
  fRelDANFE.fDMCadNotaFiscal := fDMCadNotaFiscal;
  fRelDANFE.fDMNFe           := fDMNFe;
  fRelDANFE.prc_Mudar_DataSet;
  case ComboBox2.ItemIndex of
    0: fRelDANFE.vAmbiente := '1';
    1: fRelDANFE.vAmbiente := '2';
  end;
  if Tipo = 'I' then
  begin
    fDMRel.RLPDFFilter1.FileName := 'Reldanfe';
    fRelDANFE.RLReport1.PreviewModal;
  end
  else
  begin
    fRelDANFE.RLReport1.Prepare;
    fRelDANFE.RLReport1.SaveToFile(vNomeArqPdf);
    fDMRel.RLPDFFilter1.FileName := vNomeArqPdf;
    fDMRel.RLPDFFilter1.FilterPages(fRelDANFE.RLReport1.Pages,1,-1,'',0);
  end;
  fRelDANFE.RLReport1.Free;
  fRelDanfe.Destroy;
end;

procedure TfNFe.prc_Monta_CorpoEmail;
begin
  vDadosCorpoEmail := '';
  vEmailAdicionais := '';
  fDMNFe.cdsNFe_Email.First;
  while not fDMNFe.cdsNFe_Email.Eof do
  begin
    if trim(fDMNFe.cdsNFe_EmailEMAIL.AsString) <> '' then
    begin
      if trim(vEmailAdicionais) = '' then
        vEmailAdicionais := fDMNFe.cdsNFe_EmailEMAIL.AsString
      else
        vEmailAdicionais := vEmailAdicionais + ',' + fDMNFe.cdsNFe_EmailEMAIL.AsString;
    end;
    fDMNFe.cdsNFe_Email.Next;
  end;

  //Lê a tabela de Contatos
  fDMCadNotaFiscal.cdsPessoa_Contato.Close;
  fDMCadNotaFiscal.sdsPessoa_Contato.ParamByName('CODIGO').AsInteger := fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger;
  fDMCadNotaFiscal.cdsPessoa_Contato.Open;
  fDMCadNotaFiscal.cdsPessoa_Contato.First;
  while not fDMCadNotaFiscal.cdsPessoa_Contato.Eof do
  begin
    if (fDMCadNotaFiscal.cdsPessoa_ContatoENVIAR_NFE.AsString = 'S') or (fDMCadNotaFiscal.cdsPessoa_ContatoENVIAR_NFE.AsString = 's') then
    begin
      if trim(vEmailAdicionais) = '' then
        vEmailAdicionais := fDMCadNotaFiscal.cdsPessoa_ContatoEMAIL.AsString
      else
        vEmailAdicionais := vEmailAdicionais + ',' + fDMCadNotaFiscal.cdsPessoa_ContatoEMAIL.AsString;
    end;
    fDMCadNotaFiscal.cdsPessoa_Contato.Next;
  end;
  //************

  //NFe 2.00
  if ComboBox1.ItemIndex = 1 then
    vDadosCorpoEmail := 'NOTA EM CONTINGENCIA FS  Impressa em formulário de seguranca'
  else
  if ComboBox1.ItemIndex = 2 then
    vDadosCorpoEmail := 'NOTA EM CONTINGENCIA SCAN'
  else
  if ComboBox1.ItemIndex = 3 then
    vDadosCorpoEmail := 'NOTA EM CONTINGENCIA FS-DA  Impressa em formulário de seguranca';
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + #13;

  //*************
  if trim(fDMNFe.qParametros_NFeOBS_EMAIL_NFE.Value) <> '' then
    vDadosCorpoEmail := vDadosCorpoEmail + fDMNFe.qParametros_NFeOBS_EMAIL_NFE.Value + #13 + #13;

  vDadosCorpoEmail := vDadosCorpoEmail  + #13 + fDMNFe.qFilialNOME.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail  + #13 + fDMNFe.qFilialCNPJ_CPF.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail  + #13 + fDMNFe.qFilialENDERECO.AsString + ', ' + fDMNFe.qFilialNUM_END.AsString;
  fDMNFe.Posiciona_CidadeUF(fDMNFe.qFilialID_CIDADE.AsInteger,1);
  vDadosCorpoEmail := vDadosCorpoEmail  + #13 + fDMNFe.qCidadeNOME.AsString + ' - ' + fDMNFe.qCidadeUF.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail  + #13 + 'Fone: ' + fDMNFe.qFilialDDD1.AsString + ' ' + fDMNFe.qFilialFONE.AsString;
end;

procedure TfNFe.Monta_X26;
begin
  Texto := 'X26|';
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsString + '|';

//Espécie dos volumes transportados
  Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString) + '|';

//Marca dos volumes transportados
  Texto := Texto + TirarAcento(fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString) + '|';

//Numeração dos volumes transportados
  Texto := Texto + fDMCadNotaFiscal.cdsNotaFiscalNUMEROVOLUME.AsString + '|';

//Peso Líquido (em kg)
  Texto := Texto + Replace(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat),',','.') + '|';

//Peso Bruto (em kg)
  Texto := Texto + Replace(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat),',','.') + '|';
  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.btEnviarNovoClick(Sender: TObject);
var
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  //Recibo: string;
  ChaveAcesso: string;
  vGravarChave: Boolean;
  vEnviarTxt: Boolean;
  dtUltimo_Acesso: TDateTime;
  vTexto: String;
  vIDNota: Integer;
begin
  vIDNota := 0;
  if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
  begin
    ShowMessage('Nota não pode ser enviada pois esta denegada!');
    exit;
  end;
  if not vProduto_OK then
  begin
    ShowMessage('Existe produto na nota que esta inativo!');
    exit;
  end;

  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

  //26/12/2016
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
  begin
    MessageDlg('*** ID do Cliente: '  + fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsString + ', não encontrada no cadastro de Pessoas '
             +#13 + ' Verificar se o cliente esta Inativo ou com a opção de CLIENTE desmarcado!', mtInformation, [mbOk], 0);
    exit;
  end;
  
  //29/06/2016
  if (fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.IsNull) or (fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.AsInteger < 1) then
  begin
    MessageDlg('*** No Cadastro de Cliente, não foi informado o campo Tipo do Contribuinte: ' +#13 + ' "Contribuinte", "Isento" ou "Não Contribuinte" !', mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.IsNull) or (fDMCadNotaFiscal.cdsClienteTIPO_CONSUMIDOR.AsInteger > 1) then
  begin
    MessageDlg('*** No Cadastro de Cliente, não foi informado o campo Tipo do Consumidor: ' + #13 + ' "Normal" ou "Final"!', mtInformation, [mbOk], 0);
    exit;
  end;
  //**********************

  //06/04/2016
  dmDatabase.sqEmpresa.Close;
  dmDatabase.sqEmpresa.Open;
  vTexto :=  dmDatabase.Decoder64.DecodeString(dmDatabase.sqEmpresaULTIMO_ACESSO.AsString);
  if trim(vTexto) <> '' then
    dtUltimo_Acesso := StrToDate(dmDatabase.Decoder64.DecodeString(dmDatabase.sqEmpresaULTIMO_ACESSO.AsString));
  if (Trim(vTexto) = '') or (dtUltimo_Acesso < Date) then
  begin
    ShowMessage('Data de acesso inválida, favor contatar a Servisoft Informática pelo fone (51)3598-6584!');
    exit;
  end;
  //**************

  case ComboBox1.ItemIndex of
    0: vTipo_Emissao_NFe := '1';
    1: vTipo_Emissao_NFe := '2';
    3: vTipo_Emissao_NFe := '3';
    4: vTipo_Emissao_NFe := '5';
  end;
  //28/10/2015
  if fDMCadNotaFiscal.cdsNotaFiscalHREMISSAO.IsNull then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
    fDMCadNotaFiscal.cdsNotaFiscalHREMISSAO.AsDateTime := Now;
    fDMCadNotaFiscal.cdsNotaFiscal.Post;
    fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
  end;

  vTipo_Ambiente_NFe    := IntToStr(ComboBox2.ItemIndex + 1);
  vFinalidade_NFe       := IntToStr(ComboBox3.ItemIndex + 1);
  vProcesso_Emissao_NFe := IntToStr(ComboBox4.ItemIndex);
  vEnviarTxt := (cbConvTxtXml.ItemIndex = 0);
  //*********

  vNomeArquivo := Monta_Diretorio('X',fDMNFe.qParametrosENDXMLNFE.AsString);
  vNomeArqPdf  := Monta_Diretorio('P',fDMNFe.qParametrosENDPDFNFE.AsString);
  if vNomeArquivo = '' then
    exit;

  //29/04/2015
  vChave_Geral := '';

  vTextoEnvio := TStringList.Create;
  vTextoEnvio.Clear;
  oNFe := TStringList.Create;
  oNFeStream := TMemoryStream.Create;
  try
    ChaveAcesso := '';
    if vEnviarTxt then
      GerarNFeTXT(oNFe)
    else
    begin
      vGerar_Chave_Antiga := 'N';
      Gera_Chave(False);
      vChave_XML := lbChaveAcesso.Caption;
      lbChaveAcesso.Caption := '';
      prc_Gerar_XML_400(fDMCadNotaFiscal,fDMNFe,oNFe);
    end;
    oNFe.SaveToStream(oNFeStream);
    oNFeStream.Position := 0;

    Memo1.Text := oNFe.Text;

    vGravarChave := False;
    if fDMNFe.qFilialPESSOA.AsString = 'F' then
      texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
    else
      texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
    vContigencia := Verifica_Contigencia;
    if not ConectadoInternet(Trim(fnc_LocalServidorNFe), texto) then
      exit;

    vIDNota := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
    fDMCadNotaFiscal.cdsNotaFiscalNFEENVIADA.AsString := 'P'; //Parcial
    fDMCadNotaFiscal.cdsNotaFiscal.Post;

    ChaveAcesso := EnviarNFe( Trim(fnc_LocalServidorNFe),
                              Texto,
                              oNFeStream,
                              vContigencia,'','' );

    if trim(ChaveAcesso) <> '' then
    begin
      //lbChaveAcesso.Caption := ChaveAcesso;
      vChave_Geral := ChaveAcesso;
      vGravarChave := True;

      //29/04/2015
      if trim(vChave_Geral) <> '' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal.Edit;
        //fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString := vChave_Geral;
        fDMCadNotaFiscal.cdsNotaFiscalNFEENVIADA.AsString := 'S';
        fDMCadNotaFiscal.cdsNotaFiscalHREMISSAO.AsDateTime := vHrEmissaoNFe;
        fDMCadNotaFiscal.cdsNotaFiscal.Post;
        fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
        vIDNota := 0;
      end;
      //*************

      //fDMCadNotaFiscal.Gravar_Envio_Nota(lbRecibo.Caption,lbNroProtocolo.Caption,ChaveAcesso,ComboBox3.ItemIndex+1,ComboBox2.ItemIndex+1,0);
      //btEnviarNovo.Enabled := False;

      lbErro.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S');
      lbErro.Caption := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString;

      //try
        btBuscarStatusClick(Sender);

        lbErro.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S');
        lbErro.Caption := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString;

      //except
      //end;

    end;

  finally
    if vIDNota > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);
    FreeAndNil(oNFeStream);
    FreeAndNil(oNfe);
  end;
end;

procedure TfNFe.btBuscarStatusClick(Sender: TObject);
var
  oNFeStream, DANFE: TMemoryStream;
  Recibo: string;
  NroProtocolo: string;
  ChaveAcesso: string;
  CodigoErro: integer;
  MensagemErro: string;
  vIDNota: Integer;
begin
  if (trim(lbChaveAcesso.Caption) = '') and (trim(vGerar_Chave_Antiga) = '')  and (trim(vChave_Geral) = '') then
  begin
    vGerar_Chave_Antiga := 'N';
    Gera_Chave(False);
    vChave_Geral          := lbChaveAcesso.Caption;
    lbChaveAcesso.Caption := '';
  end;
  if trim(lbChaveAcesso.Caption) <> '' then
    vChave_Geral := lbChaveAcesso.Caption
  else
  if trim(edChaveNfe.Text) <> '' then
    vChave_Geral := edChaveNfe.Text;
  if trim(vChave_Geral) = '' then
  begin
    ShowMessage('Nota não enviada (não gerou a Chave Acesso)!');
    exit;
  end;

  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);

  vNomeArquivo := Monta_Diretorio('X',fDMNFe.qParametrosENDXMLNFE.AsString);
  vNomeArqPdf  := Monta_Diretorio('P',fDMNFe.qParametrosENDPDFNFE.AsString);
  if vNomeArquivo = '' then
    exit;

  vContigencia := Verifica_Contigencia;
  ChaveAcesso  := vChave_Geral;
  vChave_Geral := '';
  Danfe      := TMemoryStream.Create;
  oNFeStream := TMemoryStream.Create;
  try
    BuscarStatusNF( Trim(fnc_LocalServidorNFe),
                    texto,
                    ChaveAcesso,
                    vContigencia,
                    false,//NFCe NFe 23/09/2015
                    oNFeStream,
                    Recibo,
                    NroProtocolo,
                    CodigoErro,
                    MensagemErro );

    if trim(lbChaveAcesso.Caption) = '' then
      lbChaveAcesso.Caption := ChaveAcesso;
    if Trim(lbRecibo.Caption) = '' then
      lbRecibo.Caption       := Recibo
    else
      Recibo := lbRecibo.Caption;
    if Trim(lbNroProtocolo.Caption) = '' then
      lbNroProtocolo.Caption := NroProtocolo
    else
      NroProtocolo := lbNroProtocolo.Caption;

    if Trim(lbNroProtocolo.Caption) = '' then
      lbChaveAcesso.Caption := '';

    oNFeStream.Position := 0;
    vNomeArquivo        := vNomeArquivo + '_' + lbChaveAcesso.Caption + '.xml';
    SalvarUTF8( oNFeStream, vNomeArquivo );

    //Era após a geração da Danfe, e foi trocado para cima   12/05/2016
    if (CodigoErro > 0) and (CodigoErro <> 302) and (CodigoErro <> 301) then
      raise Exception.Create(MensagemErro)
    else
    begin
      vIDNota := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
      fDMCadNotaFiscal.Gravar_Envio_Nota(Recibo,NroProtocolo,ChaveAcesso,ComboBox3.ItemIndex+1,ComboBox2.ItemIndex+1,CodigoErro,fDMNFe.mDadosAdicionaisNFeObs.Value);
      if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger <> vIDNota then
        fDMCadNotaFiscal.cdsNotaFiscal.Locate('ID',vIDNota,([Locaseinsensitive]));

      //if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'N' then
      //  prc_Controlar_Envio_Email;

      lbErro.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S');
      lbErro.Caption := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString;
    end;
    //********************

    if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString = 'S' then
    begin
      NFe_GerarDANFE( trim(fnc_LocalServidorNFe),
                      //texto,'marca que é de homologação ou cancelada','Nome do cliente no canhoto',
                      texto,vMarca_Homologacao,vCliente_Canhoto,
                      oNFeStream,
                      DANFE );

      //Arquivo := ExtractFilePath(Application.ExeName) + 'DANFE.pdf';
      if FileExists(vNomeArqPdf) then
        DeleteFile(vNomeArqPdf);

      DANFE.Position := 0;
      DANFE.SaveToFile(vNomeArqPdf);
    end;

    //aqui verificar
    //if (CodigoErro > 0) and (CodigoErro <> 302) and (CodigoErro <> 301) then
    //  fDMCadNotaFiscal.Gravar_Envio_Nota(Recibo,NroProtocolo,ChaveAcesso,ComboBox3.ItemIndex+1,ComboBox2.ItemIndex+1,CodigoErro);

    if (CodigoErro > 0) and (CodigoErro <> 302) and (CodigoErro <> 301) then
      raise Exception.Create(MensagemErro)
    else
    begin
      //fDMCadNotaFiscal.Gravar_Envio_Nota(Recibo,NroProtocolo,ChaveAcesso,ComboBox3.ItemIndex+1,ComboBox2.ItemIndex+1,CodigoErro,fDMNFe.mDadosAdicionaisNFeObs.Value);

      if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'N' then
        prc_Controlar_Envio_Email;

      //lbErro.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S');
      //lbErro.Caption := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString;
    end;

  finally
    FreeAndNil(Danfe);
    FreeAndNil(oNFeStream);
  end;
  fDMNFe.vHrEmissaoNFe_Inf := 0;
end;

procedure TfNFe.prc_Controlar_Envio_Email(Tipo: String);
var
  vTexto: String;
  vTexto2: String;
begin
  if Tipo <> 'C' then
  begin
    if (ckAnexarDanfe.Checked) then
    begin
      if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString <> 'S' then
        prc_Imprimir_Danfe('E')
    end
    else
      vNomeArqPdf := '';
  end;
  if Tipo = 'C' then
  begin
    vTexto  := 'NOTA CANCELADA nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString;
    vTexto2 := 'Em Anexo o XML referente a Nota Cancelada';
  end
  else
  begin
    vTexto  := 'NFe nº ' + fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsString;
    vTexto2 := 'Em anexo, arquivos referentes a Nota Eletrônica';
  end;
  if ckUsarJv.Checked then
    Envia_MailJV(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vTexto,vTexto2)
  else
  if ckUsarOutlookOLE.Checked then
    Envia_MailOLE(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vTexto,vTexto2)
  else
  if ckUsarOutlook.Checked then
    Envia_Mail(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vTexto,vTexto2)
  else
    Envia_Mail2(fDMCadNotaFiscal.cdsClienteEMAIL_NFE.AsString,vTexto,vTexto2);
end;

procedure TfNFe.CheckBox3Click(Sender: TObject);
begin
  {btEnviarNovo.Enabled   := CheckBox3.Checked;
  btBuscarStatus.Enabled := CheckBox3.Checked;
  btEnviar.Enabled       := not(CheckBox3.Checked);}
end;

procedure TfNFe.Monta_N09;
begin
//CST – 70 - Tributação do ICMS com redução de base de cálculo e cobrança do ICMS por substituição tributária
//Origem da mercadoria - 0 – Nacional; 1 – Estrangeira – Importação direta; 2 – Estrangeira – Adquirida no mercado interno.
  Texto := 'N09|' + copy(fDMNFe.mItensNFeCodSitTrib.AsString,1,1) +'|';

//Tributação do ICMS
  Texto := Texto + copy(fDMNFe.mItensNFeCodSitTrib.AsString,2,2) +'|';

//Modadelidade de determinação
  Texto := Texto + '0|';

//Percentual da Redução de BC
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMS.AsFloat) ,',','.') + '|';

//Valor da BC do ICMS
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeBaseICMS.AsFloat) ,',','.') + '|';

//Aliquota do imposto
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeAliqIcms.AsFloat) ,',','.') + '|';

//Valor do icms
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeVlrIcms.AsFloat) ,',','.') + '|';
                                        
//Modalidade de determinação da BC do ICMS ST
  Texto := Texto + '4|';

//Percentual da Margem de Valor Adicionado do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeMVA.AsFloat) ,',','.') + '|';

//Percentual da Redução de BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFePercRedICMSSubst.AsFloat) ,',','.') + '|';

//Valor da BC do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsBaseSubst.AsFloat) ,',','.') + '|';

//Alíquota do imposto do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsUFPERC_ICMS_INTERNO.AsFloat) ,',','.') + '|';

//Valor do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMNFe.mItensNFeIcmsVlrSubst.AsFloat) ,',','.') + '|';

  vTextoEnvio.Add(Texto);
end;

procedure TfNFe.Monta_N10a;
begin

end;

procedure TfNFe.Monta_N10b;
begin

end;

procedure TfNFe.prc_Configura_Tela;
var
  //i: Integer;
  vFlagConexao: Boolean;
begin
  //16/05/2012
  //Tag = 1   Inutilizar
  //Tag = 2   Cancelar
  //Tag = 5   Carta de Correção

  //14/09/2016
  if Tag <> 1 then
  begin
    fDMNFe.qConfig_Nfe.Close;
    fDMNFe.qConfig_Nfe.ParamByName('CNPJ_TITULAR').AsString := Monta_Numero(fDMCadNotaFiscal.cdsFilialCNPJ_CPF.AsString,0);
    fDMNFe.qConfig_Nfe.Open;
  end;

  vEmailTransp := '';
  prc_Posicionar_Tabelas;
  if Tag = 1 then
  begin
    if fDMNFe.qParametrosNFEPRODUCAO.AsString = '1' then
      ComboBox2.ItemIndex := 0
    else
      ComboBox2.ItemIndex := 1;
  end
  else
  if Tag <> 1 then
  begin
    if trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '' then
    begin
      if fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString = '1' then
        ComboBox2.ItemIndex := 0
      else
        ComboBox2.ItemIndex := 1;
      ComboBox2.Enabled := False;
    end
    else
    begin
      if fDMNFe.qParametrosNFEPRODUCAO.AsString = '1' then
        ComboBox2.ItemIndex := 0
      else
        ComboBox2.ItemIndex := 1;
      ComboBox2.Enabled := True;
    end;
  end;

  if Tag <> 1  then
  begin
    Gera_NFe;
    lbErro.Visible := (fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S');
    lbErro.Caption := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString;

    lbRecibo.Caption                   := fDMCadNotaFiscal.cdsNotaFiscalNFERECIBO.AsString;
    lbNroProtocolo.Caption             := fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString;
    lbChaveAcesso.Caption              := fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
    lbNroProtocoloCancelamento.Caption := fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString;
    lbCodBarraContingencia.Caption     := fDMCadNotaFiscal.cdsNotaFiscalNFECODBARRA_CONTINGENCIA.AsString;

    if Tag <> 5 then
    begin
      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString = '1-NORMAL' then
        ComboBox1.ItemIndex := 0
      else
      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString = '2-CONTINGENCIA FS' then
        ComboBox1.ItemIndex := 1
      else
      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString = '3-CONTINGENCIA SCAN' then
        ComboBox1.ItemIndex := 2
      else
      if fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString = '5-CONTINGENCIA FS-DA' then
        ComboBox1.ItemIndex := 3;

      ComboBox1.Enabled := ((fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString <> '2-CONTINGENCIA FS')  and
                            (fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString <> '5-CONTINGENCIA FS-DA'));

      if fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '4' then
        ComboBox3.ItemIndex := 3
      else
      if fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '3' then
        ComboBox3.ItemIndex := 2
      else
      if fDMCadNotaFiscal.cdsNotaFiscalNFEFINALIDADE.AsString = '2' then
        ComboBox3.ItemIndex := 1
      else
        ComboBox3.ItemIndex := 0;
    end;
  end;

  vFlagConexao := False;
  if vFlagConexao then
  begin
    RzPageControl1.ActivePage := tsEnvio;
    Habilita_Botoes;
  end
  else
  begin
    try
      RzPageControl1.ActivePage := tsEnvio;
      vConexao := Verifica_ConexaoInternet;
      Habilita_Botoes;
    except
      on E: Exception do
      begin
        ShowMessage('Erro: ' + E.Message + #13 + '! NFeConfig não aberto ou Servidor não encontrado!'+#13+#13+'PROGRAMA NFECONFIG PODE ESTAR FECHADO' + #13+#13
                    + 'Clicar no botão "OUTRAS OPÇÕES" e depois na opção "Abrir NFeConfig"');
      end;
    end;
  end;
  cbConvTxtXml.ItemIndex := 1;
  if vPessoaTransp = '' then
    vPessoaTransp := 'J';
  CheckBox3Click(fNFe);
end;

procedure TfNFe.prc_Monta_LeiTributos;
var
  Texto1: String;
  vAux: Real;
begin
  if (fDMCadNotaFiscal.cdsParametrosUSA_TAMANHO_AGRUPADO_NFE.AsString = 'S') and (fDMCadNotaFiscal.cdsClienteUSA_TAMANHO_AGRUPADO_NFE.AsString = 'S') and
     (fDMCadNotaFiscal.cdsParametrosLEI_TRANSPARENCIA_IMP_ITEM.AsString = 'S') then
  begin
    fDMNFe.mItensNFe.First;
    while not fDMNFe.mItensNFe.Eof do
    begin
      if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMNFe.mItensNFeID_Produto.AsInteger then
        fDMCadNotaFiscal.cdsProduto.FindKey([fDMNFe.mItensNFeID_Produto.AsInteger]);
      if fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S' then
      begin
        if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos.AsFloat)) > 0 then
        begin
          Texto1 := fDMCadNotaFiscal.cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM.AsString;
          if fDMCadNotaFiscal.cdsParametrosIMP_TIPO_TRIBUTOS_ITENS.AsString = 'T' then
          begin
            if trim(Texto1) = '' then
              Texto1 := 'Vlr. aprox. de tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12.';
            Texto1 := '(' + Texto1 + ' R$ ' + FormatFloat('####,###,##0.00',fDMNFe.mItensNFeVlrTributos.AsFloat);
            vAux := StrToCurr(FormatCurr('0.00',((fDMNFe.mItensNFeVlrTributos.AsFloat / fDMNFe.mItensNFeVlrTotal.AsFloat) * 100)));
            Texto1 := Texto1 + ' (' + FormatFloat('0.00',vAux) + '%)';
          end
          else
          begin
            Texto1 := 'Vlr.aprox.de trib. R$ ' + FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Federal.AsFloat);
            if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMNFe.mItensNFePercTributos_Federal.AsFloat);
            Texto1 := Texto1 + ' Federal';
            if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Estadual.AsFloat)) > 0 then
              Texto1 := Texto1 + ', R$ ' + FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Estadual.AsFloat);
            if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMNFe.mItensNFePercTributos_Estadual.AsFloat);
            Texto1 := Texto1 + ' Estadual';
            if StrToFloat(FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Municipal.AsFloat)) > 0 then
              Texto1 := Texto1 + ', R$ ' + FormatFloat('0.00',fDMNFe.mItensNFeVlrTributos_Municipal.AsFloat);
            if fDMCadNotaFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMNFe.mItensNFePercTributos_Municipal.AsFloat);
            Texto1 := Texto1 + ' Municipal';
            Texto1 := Texto1 + ' lei 12.741/12';
          end;
          //if fDMCadNotaFiscal.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I' then
            //Texto1 := Texto1 + ' Fonte: IBPT)'
          if trim(fDMNFe.mItensNFeFonte.AsString) <> '' then
            Texto1 := Texto1 + ' Fonte: ' + fDMNFe.mItensNFeFonte.AsString
          else
            Texto1 := Texto1;
          if trim(fDMNFe.mItensNFeIBPT_Chave.AsString) <> '' then
            Texto1 := Texto1 + '- ' + fDMNFe.mItensNFeIBPT_Chave.AsString;
          Texto1 := Texto1 + ')';         
          //else                     
           // Texto1 := Texto1 + ')';
          fDMNFe.mItensNFe.Edit;
          fDMNFe.mItensNFeInfAdicionais.Value := fDMNFe.mItensNFeInfAdicionais.Value + Texto1;
          fDMNFe.mItensNFe.Post;
        end;
      end;
      fDMNFe.mItensNFe.Next;
    end;
  end;
end;

procedure TfNFe.Monta_Rodape;
var
  vVlrOutrasDespAcess: Real;
  vAux: Real;
begin
//Letra U - ISS - Informar os campos para cálculo do ISSQN nas NFe conjugadas, onde há a prestação de serviços sujeitos ao ISSQN e fornecimento de peças sujeitas ao ICMS

//Letra W - Totais - Grupo de Valores Totais referentes ao ICMS
  vVlrOutrasDespAcess := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
  if fDMCadNotaFiscal.cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP.AsString = 'S' then
    vVlrOutrasDespAcess := vVlrOutrasDespAcess - fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat -
                           fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat;

  Texto := 'W|';
  vTextoEnvio.Add(Texto);

//Letra W02 - Base de Cálculo do ICMS
  Texto := 'W02|' + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat),',','.') + '|';
//Valor Total do ICMS
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat),',','.') + '|';
//Base de Cálculo do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat),',','.') + '|';

//Valor Total do ICMS ST
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat),',','.') + '|';

//Valor Total dos produtos e serviços
  vAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat));
  Texto := Texto + Replace(FormatFloat('0.00',vAux),',','.') + '|';
//Valor Total do Frete
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat),',','.') + '|';
//Valor Total do Seguro
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat),',','.') + '|';
//Valor Total do Desconto
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat),',','.') + '|';
//Valor Total do II
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat),',','.') + '|';

//Valor Total do IPI
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat),',','.') + '|';
//Valor do PIS
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat),',','.') + '|';
//Valor do COFINS
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat),',','.') + '|';
//Outras Despesas acessórias
  Texto := Texto + Replace(FormatFloat('0.00',vVlrOutrasDespAcess),',','.') + '|';
//Valor Total da NF-e
  Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat),',','.') + '|';
//Valor Total da NF-e
  //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat)) > 0 then
    Texto := Texto + Replace(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat),',','.') + '|';
  //else
    //Texto := Texto + '|';
  //vTextoEnvio.Add(Texto);

  vTextoEnvio.Add(Texto);

//Grupo de valores totais referentes ao ISSQN
//W17

//Grupo de retenções de tributos
//W23

//Letra X - Transporte
  Texto := 'X|';
//Modalidade do frete; 0 - por conta do emitente;  1 - por conta do destinatário
                    // 2 - Por conta de terceiros; 9 - Sem Frete
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '1' then
    Texto := Texto + '0|'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '2' then
    Texto := Texto + '1|'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '3' then
    Texto := Texto + '2|'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_FRETE.AsString = '9' then
    Texto := Texto + '9|'
  else
    Texto := Texto + '|';

  vTextoEnvio.Add(Texto);

//Letra X03 - Transportador
  if fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger > 0 then
    Monta_X03;

//Letra X26 - Volumes
  if (fDMCadNotaFiscal.cdsNotaFiscalQTDVOLUME.AsInteger > 0) or (trim(fDMCadNotaFiscal.cdsNotaFiscalESPECIE.AsString) <> '') or
     (trim(fDMCadNotaFiscal.cdsNotaFiscalMARCA.AsString) <> '') or (trim(fDMCadNotaFiscal.cdsNotaFiscalNUMEROVOLUME.AsString) <> '') or
     (StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOLIQUIDO.AsFloat)) > 0) or
     (StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscalPESOBRUTO.AsFloat)) > 0) then
    Monta_X26;

//Lacre
  Monta_X33;

//Letra Y - Cobrança
  if fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString <> 'N' then
    Le_Parcelas;

//Informações Adicionais
//Informações Adicionais de Interesse do Fisco
//Informações Complementares de Interesse do Contribuinte

  Texto := 'Z||';
  fDMNFe.mDadosAdicionaisNFe.First;
  Texto := Texto + TirarAcento(fDMNFe.mDadosAdicionaisNFeObs.Value) + '|';
  vTextoEnvio.Add(Texto);

//Informação de Exportação
  if fDMCadNotaFiscal.cdsNotaFiscalUFEMBEXPORTACAO.AsString <> '' then
  begin
    Texto := 'ZA|' + fDMCadNotaFiscal.cdsNotaFiscalUFEMBEXPORTACAO.AsString + '|' + fDMCadNotaFiscal.cdsNotaFiscalLOCALEMBEXPORTACAO.AsString + '|';
    vTextoEnvio.Add(Texto);
  end;
end;

procedure TfNFe.prc_Danfe_Flexdocs;
var
  oNFe: TStrings;
  oNFeStream, Danfe: TMemoryStream;
  vNomeArq: String;
  vArqAux: String;
begin
  fDMConsNotaEletronica := TDMConsNotaEletronica.Create(Self);

  oNFe       := TStringList.Create;
  oNFeStream := TMemoryStream.Create;
  Danfe      := TMemoryStream.Create;
  prc_Configura_Variaveis_Envio;
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') and (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString) <> '')  and (ComboBox6.ItemIndex <= 0) then
  begin
    fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Close;
    fDMConsNotaEletronica.sdsNota_Fiscal_Eletronica.ParamByName('CHAVE_ACESSO').AsString := fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
    fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Open;
    fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaXML_ASSINADO_PROC.SaveToStream(oNFeStream);
    Memo1.Text := fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaXML_ASSINADO_PROC.Text;

    //oNFe.LoadFromFile(vArqAux);
  end
  else
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) <> '') and (trim(fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString) = '')  and (ComboBox6.ItemIndex <= 0) then
  begin
    lbChaveAcesso.Caption := fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
    vChave_XML := lbChaveAcesso.Caption;
    lbChaveAcesso.Caption := '';
    prc_Gerar_XML_400(fDMCadNotaFiscal,fDMNFe,oNFe);
    oNFe.SaveToStream(oNFeStream);
    Memo1.Text := oNFe.Text;
  end
  else
  if (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '') or (ComboBox6.ItemIndex = 1) then
  begin
    vGerar_Chave_Antiga := 'N';
    Gera_Chave(False);
    vChave_XML := lbChaveAcesso.Caption;
    lbChaveAcesso.Caption := '';
    prc_Gerar_XML_400(fDMCadNotaFiscal,fDMNFe,oNFe);
    oNFe.SaveToStream(oNFeStream);
    Memo1.Text := oNFe.Text;
  end
  else
  if (ComboBox6.ItemIndex = 2) then
  begin
    vArqAux := Monta_Diretorio('X',fDMNFe.qParametrosENDXMLNFE.AsString);
    vArqAux := vArqAux + '_' + fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString + '.xml';
    //oNFe.LoadFromFile(vArqAux);
    oNFeStream.LoadFromFile(vArqAux);

    {vGerar_Chave_Antiga := 'N';
    Gera_Chave(False);
    vChave_XML := lbChaveAcesso.Caption;
    lbChaveAcesso.Caption := '';
    prc_Gerar_XML_310(fDMCadNotaFiscal,fDMNFe,oNFe);
    oNFe.SaveToStream(oNFeStream);}
  end;

  oNFeStream.Position := 0;
  //oNFeStream.SaveToFile('C:\a\teste.xml');

  NFe_GerarDANFE( trim(fnc_LocalServidorNFe),
                   //texto,'marca que é de homologação ou cancelada','Nome do cliente no canhoto',
                   //texto,vMarca_Homologacao,'',
                   texto,vMarca_Homologacao,vCliente_Canhoto,
                   oNFeStream,
                   DANFE );

  vNomeArq := ExtractFilePath(Application.ExeName) + 'Temp';
  if not DirectoryExists(vNomeArq) then
    CreateDir(vNomeArq);

  vNomeArq := vNomeArq + '\DANFE_ENV_' + FormatDateTime('YYYYMMDD',Date) +  '_' + FormatDateTime('HHMMSS',Time) + '.pdf';
  if FileExists(vNomeArq) then
    DeleteFile(vNomeArq);

  DANFE.Position := 0;
  DANFE.SaveToFile(vNomeArq);

  ShellExecute(Application.Handle, 'Open', PChar(vNomeArq), nil, nil, SW_SHOWMAXIMIZED);

  FreeAndNil(fDMConsNotaEletronica);
  FreeAndNil(oNFe);
  FreeAndNil(oNFeStream);
  FreeAndNil(Danfe);
end;

procedure TfNFe.prc_Configura_Variaveis_Envio;
begin
  case ComboBox1.ItemIndex of
    0: vTipo_Emissao_NFe := '1';
    1: vTipo_Emissao_NFe := '2';
    3: vTipo_Emissao_NFe := '3';
    4: vTipo_Emissao_NFe := '5';
  end;
  vTipo_Ambiente_NFe    := IntToStr(ComboBox2.ItemIndex + 1);
  vFinalidade_NFe       := IntToStr(ComboBox3.ItemIndex + 1);
  vProcesso_Emissao_NFe := IntToStr(ComboBox4.ItemIndex);
  vMarca_Homologacao    := '';
  vCliente_Canhoto      := '';
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,([Locaseinsensitive]));
  if (fDMNFe.qParametros_NFeIMP_RODAPE_DANFE_CLI.AsString = 'F') and (trim(fDMCadNotaFiscal.cdsClienteFANTASIA.AsString) <> '') then
    vCliente_Canhoto := fDMCadNotaFiscal.cdsClienteFANTASIA.AsString
  else
    vCliente_Canhoto := fDMCadNotaFiscal.cdsClienteNOME.AsString;
  if fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'J' then
    vCliente_Canhoto := vCliente_Canhoto + ', CNPJ: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString
  else
  if fDMCadNotaFiscal.cdsClientePESSOA.AsString = 'F' then
    vCliente_Canhoto := vCliente_Canhoto + ', CPF: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString
  else
    vCliente_Canhoto := vCliente_Canhoto + ', DOC: ' + fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString;
  vCliente_Canhoto := 'Recebemos de ' + fDMCadNotaFiscal.cdsFilialNOME.AsString + ', os produtos constantes da nota fiscal indicada ao lado: '
                    + 'Dt.de Emissão:' + fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsString
                    + ', Vlr.Total: R$' + FormatFloat('###,###,##0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat)
                    + ', Destinatário: ' + vCliente_Canhoto;
  if vTipo_Ambiente_NFe = '2' then
    vMarca_Homologacao := 'HOMOLOGAÇÃO ';
  if fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
    vMarca_Homologacao := 'CANCELADA'
  else
  if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
    vMarca_Homologacao := 'DENEGADA';
end;

procedure TfNFe.btnInfHoraClick(Sender: TObject);
var
  vHora: String;
begin
  vHora := InputBox('','Informe a hora do xml no formato "hh:mm:ss"', '');
  vHora := trim(vHora);
  if (pos(':',vHora) <= 0) and (trim(vHora) <> '') then
  begin
    vHora := '';
    MessageDlg('*** Hora não esta no formato (hh:mm:ss)!', mtInformation, [mbOk], 0);
  end
  else
  if (trim(vHora) <> '') and (Length(vhora) <> 8) then
  begin
    vHora := '';
    MessageDlg('*** Hora não esta no formato (hh:mm:ss)!', mtInformation, [mbOk], 0);
  end;
  try
    if trim(vHora) <> '' then
      fDMNFe.vHrEmissaoNFe_Inf := StrToTime(vHora)
    else
      fDMNFe.vHrEmissaoNFe_Inf := 0;
  except
    fDMNFe.vHrEmissaoNFe_Inf := 0;
  end;
end;

procedure TfNFe.prc_Configura_Tela_Alt;
//var
  //i: Integer;
  //vFlagConexao: Boolean;
begin
  prc_Posicionar_Tabelas;
  if fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString = '1' then
    ComboBox2.ItemIndex := 0
  else
  if fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString = '2' then
    ComboBox2.ItemIndex := 1
  else
  if fDMNFe.qParametrosNFEPRODUCAO.AsString = '1' then
    ComboBox2.ItemIndex := 0
  else
    ComboBox2.ItemIndex := 1;

  if (Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '1') or (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S') then
    ComboBox1.ItemIndex := 0
  else
  if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '2' then
    ComboBox1.ItemIndex := 1
  else
  if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '3' then
    ComboBox1.ItemIndex := 2
  else
  if Copy(fDMCadNotaFiscal.cdsNotaFiscalTIPO_ENVIONFE.AsString,1,1) = '5' then
    ComboBox1.ItemIndex := 3;

end;

procedure TfNFe.Button4Click(Sender: TObject);
var
  oNFe: TStrings;
  oNFeStream, Danfe: TMemoryStream;
  vNomeArq: String;
  vArqAux: String;
begin
  fDMConsNotaEletronica := TDMConsNotaEletronica.Create(Self);

  oNFe       := TStringList.Create;
  oNFeStream := TMemoryStream.Create;
  Danfe      := TMemoryStream.Create;
  prc_Configura_Variaveis_Envio;

  vArqAux := 'C:\A\RZ\NFe_01_S001_005616_43151193225605000161550010000056161318911790.xml';
  oNFeStream.LoadFromFile(vArqAux);

  oNFeStream.Position := 0;

  NFe_GerarDANFE( trim(fnc_LocalServidorNFe),
                   texto,vMarca_Homologacao,vCliente_Canhoto,
                   oNFeStream,
                   DANFE );

  vNomeArq := ExtractFilePath(Application.ExeName) + 'Temp';
  if not DirectoryExists(vNomeArq) then
    CreateDir(vNomeArq);

  vNomeArq := vNomeArq + '\DANFE_ENV_' + FormatDateTime('YYYYMMDD',Date) +  '_' + FormatDateTime('HHMMSS',Time) + '.pdf';
  if FileExists(vNomeArq) then
    DeleteFile(vNomeArq);

  DANFE.Position := 0;
  DANFE.SaveToFile(vNomeArq);

  ShellExecute(Application.Handle, 'Open', PChar(vNomeArq), nil, nil, SW_SHOWMAXIMIZED);

  FreeAndNil(fDMConsNotaEletronica);
  FreeAndNil(oNFe);
  FreeAndNil(oNFeStream);
  FreeAndNil(Danfe);

end;

function TfNFe.fnc_LocalServidorNFe: String;
begin
  Result := fDMNFe.qParametrosLOCALSERVIDORNFE.AsString;
  if (trim(fDMNFe.qFilialLOCALSERVIDORNFE.AsString) <> '') and not(fDMNFe.qFilialLOCALSERVIDORNFE.IsNull) then
    Result := fDMNFe.qFilialLOCALSERVIDORNFE.AsString;
end;

procedure TfNFe.btnBuscarXMLClick(Sender: TObject);
var
  Stream, DANFE: TMemoryStream;
  StrList: TStringList;
  vIDNota: Integer;
  i: Integer;
  vTexto2: String;
begin
  vGerar_Chave_Antiga := 'N';
  Gera_Chave(False);
  Button7Click(Sender);

  if trim(lbRecibo.Caption) <> '' then
  begin
    MessageDlg('*** Nº do recibo informado, não pode fazer a busca/envio!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(lbNroProtocolo.Caption) = '' then
  begin
    MessageDlg('*** Nº do Protocolo não informado, favor fazer a consulta da NFe!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(lbChaveAcesso.Caption) = '' then
  begin
    MessageDlg('*** Chave de Acesso não informada, favor fazer a consulta da NFe!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMNFe.cdsNota_Eletronica.Close;
  fDMNFe.sdsNota_Eletronica.ParamByName('CHAVE_ACESSO').AsString := lbChaveAcesso.Caption;
  fDMNFe.cdsNota_Eletronica.Open;

  if fDMNFe.cdsNota_Eletronica.IsEmpty then
  begin
    MessageDlg('*** Chave de Acesso não encontrada na base NFeBD tabela NOTA_FISCAL_ELETRONICA!', mtInformation, [mbOk], 0);
    fDMNFe.cdsNota_Eletronica.Close;
    exit;
  end;
  if (fDMNFe.cdsNota_EletronicaXML_ASSINADO_PROC.IsNull) and (fDMNFe.cdsNota_EletronicaXML_ASSINADO.IsNull) then
  begin
    MessageDlg('*** XML Assinado não gravado na base NFeBD tabela NOTA_FISCAL_ELETRONICA!', mtInformation, [mbOk], 0);
    exit;
  end;
  Stream  := TMemoryStream.Create;
  DANFE   := TMemoryStream.Create;
  StrList := TStringList.Create;
  try
    if not(fDMNFe.cdsNota_EletronicaXML_ASSINADO_PROC.IsNull) then
      fDMNFe.cdsNota_EletronicaXML_ASSINADO_PROC.SaveToStream(Stream)
    else
    if not(fDMNFe.cdsNota_EletronicaXML_ASSINADO.IsNull) then
    begin
      fDMNFe.cdsNota_EletronicaXML_ASSINADO.SaveToStream(Stream);
      Stream.Position := 0;
      if fDMNFe.qFilialPESSOA.AsString = 'F' then
        texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
      else
        texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);
      vContigencia := Verifica_Contigencia;
      NFe_AdicionaProtNFe( Trim(fnc_LocalServidorNFe),
                           Texto,
                           Stream,
                           vContigencia );
    end;
    Stream.Position := 0;
    vNomeArquivo := Monta_Diretorio('X',fDMNFe.qParametrosENDXMLNFE.AsString);
    vNomeArqPdf  := Monta_Diretorio('P',fDMNFe.qParametrosENDPDFNFE.AsString);
    if trim(vNomeArquivo) <> ''then
    begin
      vNomeArquivo := vNomeArquivo + '_' + lbChaveAcesso.Caption + '.xml';
      SalvarUTF8( Stream, vNomeArquivo );

      StrList.LoadFromFile(vNomeArquivo);
      i := posex('<cStat>',StrList.Text);
      if i > 0 then
        vTexto2 := copy(StrList.Text,i+7,3)
      else
        vTexto2 := '0';
      vTexto2 := Monta_Numero(vTexto2,0);
      if vTexto2 = '' then
        vTexto2 := '0';
      vIDNota := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
      fDMCadNotaFiscal.Gravar_Envio_Nota(lbRecibo.Caption,lbNroProtocolo.Caption,lbChaveAcesso.Caption,
                                         ComboBox3.ItemIndex+1,ComboBox2.ItemIndex+1,StrToInt(vTexto2),fDMNFe.mDadosAdicionaisNFeObs.Value);
      if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger <> vIDNota then
        fDMCadNotaFiscal.cdsNotaFiscal.Locate('ID',vIDNota,([Locaseinsensitive]));

      if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString = 'S' then
      begin
        NFe_GerarDANFE( trim(fnc_LocalServidorNFe),
                        texto,vMarca_Homologacao,vCliente_Canhoto,
                        Stream,
                        DANFE );
        if FileExists(vNomeArqPdf) then
          DeleteFile(vNomeArqPdf);
        DANFE.Position := 0;
        DANFE.SaveToFile(vNomeArqPdf);
      end;
      if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'N' then
        prc_Controlar_Envio_Email;
    end;
  finally
    FreeAndNil(Stream);
    FreeAndNil(DANFE);
    FreeAndNil(StrList);
  end;
end;

function TfNFe.fnc_Montar_Campo(vSeparador: string): string;
var
  i : Integer;
  vTexto : String;
begin
  Result := '';
  i := pos(vSeparador, vRegistro);
  if i = 0 then
    i := Length(vRegistro) + 1;
  Result := Copy(vRegistro, 1, i - 1);
  vTexto := Result;
  Delete(vRegistro, 1, i);
end;

procedure TfNFe.btnLogClick(Sender: TObject);
var
  ffrmNFE_Log: TfrmNFE_Log;
begin
  vGerar_Chave_Antiga := 'N';
  Gera_Chave(False);

  fDMNFe.cdsNota_Eletronica.Close;
  fDMNFe.sdsNota_Eletronica.ParamByName('CHAVE_ACESSO').AsString := lbChaveAcesso.Caption;
  fDMNFe.cdsNota_Eletronica.Open;

  fDMNFe.prc_Abrir_NFe_Log(False);

  ffrmNFE_Log := TfrmNFE_Log.Create(self);
  ffrmNFE_Log.fDMNFe := fDMNFe;
  ffrmNFE_Log.btnAtualizaRec.Enabled := (trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '');
  ffrmNFE_Log.ShowModal;
  FreeAndNil(ffrmNFE_Log);
end;

procedure TfNFe.btnAjustaRecClick(Sender: TObject);
begin
  vGerar_Chave_Antiga := 'N';
  Gera_Chave(False);

  fDMNFe.cdsNota_Eletronica.Close;
  fDMNFe.sdsNota_Eletronica.ParamByName('CHAVE_ACESSO').AsString := lbChaveAcesso.Caption;
  fDMNFe.cdsNota_Eletronica.Open;

  if fDMNFe.cdsNota_EletronicaID.AsInteger <= 0 then
    exit;

  fDMNFe.prc_Abrir_NFe_Log(True);

  fDMNFe.vNRec_Orig := '';
  fDMNFe.cdsNFe_Log.First;
  while not fDMNFe.cdsNFe_Log.Eof do
  begin
    fDMNFe.prc_Procurar_Recibo;
    if trim(fDMNFe.vNRec_Orig) <> '' then
      fDMNFe.cdsNFe_Log.Last;
    fDMNFe.cdsNFe_Log.Next;
  end;

  if trim(fDMNFe.vNRec_Orig) <> '' then
  begin
    fDMNFe.cdsNota_Eletronica.Edit;
    fDMNFe.cdsNota_EletronicaNRO_RECIBO.AsString := fDMNFe.vNRec_Orig;
    fDMNFe.cdsNota_EletronicaXML_ASSINADO_PROC.Clear;
    fDMNFe.cdsNota_Eletronica.Post;
    fDMNFe.cdsNota_Eletronica.ApplyUpdates(0);

    if MessageDlg('Recibo Atualizado, deseja buscar o Status?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      btBuscarStatusClick(Sender);
  end;
end;

procedure TfNFe.btnLimpaXML_Assinado_ProcClick(Sender: TObject);
begin
  vGerar_Chave_Antiga := 'N';
  Gera_Chave(False);

  fDMNFe.cdsNota_Eletronica.Close;
  fDMNFe.sdsNota_Eletronica.ParamByName('CHAVE_ACESSO').AsString := lbChaveAcesso.Caption;
  fDMNFe.cdsNota_Eletronica.Open;

  if fDMNFe.cdsNota_EletronicaID.AsInteger <= 0 then
    exit;

  fDMNFe.cdsNota_Eletronica.Edit;
  fDMNFe.cdsNota_EletronicaXML_ASSINADO_PROC.Clear;
  fDMNFe.cdsNota_Eletronica.Post;
  fDMNFe.cdsNota_Eletronica.ApplyUpdates(0);
end;

procedure TfNFe.btnRegravarDanfeClick(Sender: TObject);
var
  oNFeStream, DANFE: TMemoryStream;
  Recibo: string;
  NroProtocolo: string;
  ChaveAcesso: string;
  CodigoErro: integer;
  MensagemErro: string;
  vIDNota: Integer;
begin
  if trim(fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString) = '' then
  begin
    MessageDlg('*** Nota não enviada!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMNFe.cdsNota_Eletronica.Close;
  fDMNFe.sdsNota_Eletronica.ParamByName('CHAVE_ACESSO').AsString := fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString;
  fDMNFe.cdsNota_Eletronica.Open;

  if fDMNFe.cdsNota_Eletronica.IsEmpty then
  begin
    MessageDlg('*** Chave de Acesso não encontrada na base NFeBD!', mtInformation, [mbOk], 0);
    exit;
  end;

  lbChaveAcesso.Caption := fDMNFe.cdsNota_EletronicaCHAVE_ACESSO.AsString;

  if trim(lbChaveAcesso.Caption) <> '' then
    vChave_Geral := lbChaveAcesso.Caption
  else
  if trim(edChaveNfe.Text) <> '' then
    vChave_Geral := edChaveNfe.Text;

  if fDMNFe.qFilialPESSOA.AsString = 'F' then
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,11)
  else
    texto := Monta_Texto(fDMNFe.qFilialCNPJ_CPF.AsString,14);

  vNomeArqPdf  := Monta_Diretorio('P',fDMNFe.qParametrosENDPDFNFE.AsString);
  if vNomeArqPdf = '' then
    exit;

  Danfe      := TMemoryStream.Create;
  oNFeStream := TMemoryStream.Create;
  try
    oNFeStream.Position := 0;
    fDMNFe.cdsNota_EletronicaXML_ASSINADO_PROC.SaveToStream(oNFeStream);

    if fDMNFe.qParametrosUSA_DANFE_FLEXDOCS.AsString = 'S' then
    begin
      NFe_GerarDANFE( trim(fnc_LocalServidorNFe),
                      texto,vMarca_Homologacao,vCliente_Canhoto,
                      oNFeStream,
                      DANFE );

      if FileExists(vNomeArqPdf) then
        DeleteFile(vNomeArqPdf);

      DANFE.Position := 0;
      DANFE.SaveToFile(vNomeArqPdf);
    end;

  finally
    FreeAndNil(Danfe);
    FreeAndNil(oNFeStream);
  end;
end;

procedure TfNFe.prc_Abrir_qProduto_Forn;
var
  vComando : String;
  vTam : String;
begin
  vTam := '';
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '' then
    vTam := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
  vComando := '';
  if trim(vTam) <> '' then
    vComando := ' AND TAMANHO = ' + QuotedStr(vTam);
  fDMNFe.qProduto_Forn.Close;
  fDMNFe.qProduto_Forn.SQL.Text := fDMNFe.ctqProduto_Forn + vComando;
  fDMNFe.qProduto_Forn.ParamByName('ID').AsInteger            := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  fDMNFe.qProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  fDMNFe.qProduto_Forn.ParamByName('ID_COR').AsInteger        := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  fDMNFe.qProduto_Forn.Open;
end;

procedure TfNFe.prc_Abrir_CBarra;
var
 vTam : String;
begin
  vTam := '';
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '' then
    vTam := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
  fDMNFe.qCBarra.Close;
  fDMNFe.qCBarra.ParamByName('ID_PRODUTO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  fDMNFe.qCBarra.ParamByName('ID_COR').AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
  fDMNFe.qCBarra.ParamByName('TAMANHO').AsString     := vTam;
  fDMNFe.qCBarra.Open;
end;

end.
