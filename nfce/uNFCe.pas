unit uNFCe;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, XMLIntf, msxmldom, XMLDoc,
  StdCtrls, oxmldom, Buttons, Mask, ToolEdit, DB, DBClient, IdIOHandler, IdIOHandlerSocket, IdBaseComponent, IdComponent, JPeg,
  IdTCPConnection, IdTCPClient, RzTabs, ExtCtrls, IdCoder, IdCoder3to4, IdCoderMIME, IdSSLOpenSSL, IdMessageClient, RzSndMsg,
  //IdSMTP, IdMessage, JvComponent, JvMail, Mapi, ShellApi, RLMetaFile, DBTables, UDMCupomFiscal, UCBase, UDMCadNFe_Inutilizacao, UDMNFCe,
  IdSMTP, IdMessage, JvComponent, JvMail, Mapi, ShellApi, RLMetaFile, DBTables, UDMCupomFiscal, UCBase, UDMNFCe, UDMRel, dbXPress,
  UDMConsNotaEletronica, SqlExpr;

  //UDMRel, RzSndMsg, ;

type
  TfNFCe = class(TForm)
    XMLDocument1: TXMLDocument;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    TCPClient: TIdTCPClient;
    IOHandlerSocket: TIdIOHandlerSocket;
    OpenDialog: TOpenDialog;
    RzPageControl1: TRzPageControl;
    tsEnvio: TRzTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lbRecibo: TLabel;
    lbNroProtocolo: TLabel;
    lbChaveAcesso: TLabel;
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
    Label12: TLabel;
    MailMessage: TIdMessage;
    SMTP: TIdSMTP;
    AttachmentDialog: TOpenDialog;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    edChaveNfe: TEdit;
    edCodBarras: TEdit;
    btCancelar: TBitBtn;
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
    UCControls1: TUCControls;
    btEnviarNovo: TButton;
    btBuscarStatus: TButton;
    TabSheet1: TRzTabSheet;
    Memo1: TMemo;
    ComboBox6: TComboBox;
    ComboBox3: TComboBox;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    btnAjustaRec: TButton;
    btnLog: TButton;
    btEnviarSincrono: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btDanfeClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btConexaoClick(Sender: TObject);
    procedure btGerarChaveClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btGravaNotaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btInutilizarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btContingenciaClick(Sender: TObject);
    procedure btEnviarNovoClick(Sender: TObject);
    procedure btBuscarStatusClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnAjustaRecClick(Sender: TObject);
    procedure btnLogClick(Sender: TObject);
    procedure btEnviarSincronoClick(Sender: TObject);
  private
    { Private declarations }

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

    vChave_Geral: String;

    //procedures e variáveis do uNFeDados
    vTextoNumNotaNfe: String;
    vCodProdutoNfe: String;
    vTextoDetNFe: String;
    
    vMSGNFCe: String;

    procedure prc_Controlar_Envio_Email(Tipo: String = 'E');//C=Cancelar   E=Envio

    procedure Monta_mItensNFe;
    procedure Monta_mDadosAdicionaisNFe;
    procedure Grava_DadosAdicionaisNFe(DadosAdi: String; Tipo: Integer);
    procedure Grava_mAuxDadosNFe(Tipo, Codigo: String ; ID_Variacao: Integer = 0);
    procedure Monta_mParcelaNFe;

    procedure Habilita_Botoes;

    function Verifica_ConexaoInternet: Boolean;
    function Monta_Diretorio(Tipo, Diretorio: string): string;  //Tipo = "T" Texto  "X" XML
    procedure Monta_CodBarraContingencia(Tipo: String); //G= Gerar para consultar  E=Enviar e imprimir
    procedure prc_Posicionar_Tabelas;

    procedure prc_Imprimir_Danfe(Tipo: String); //E= Envio   I=Imprimir

    procedure prc_Danfe_Flexdocs;
    procedure prc_Configura_Variaveis_Envio;

    function Verifica_Contigencia: Boolean;

    function fnc_Posicionar_Cidade(ID: Integer): Boolean;
    procedure prc_Abrir_Produto(vId: String);
    procedure prc_Abrir_CBarra;
    procedure prc_Abrir_qProduto_Forn;

  public
    { Public declarations }
    fDMCupomFiscal: TDMCupomFiscal;
    //fDMCadNFe_Inutilizacao: TDMCadNFe_Inutilizacao;
    fDMConsNotaEletronica: TDMConsNotaEletronica;
    fDMNFCe: TDMNFCe;
    fDMRel: TDMRel;

    vNomeArquivo, vNomeArqPdf: String;
    vPessoaTransp: String;
    vGerar_Chave_Antiga : String;

    procedure Gera_NFCe;
    procedure prc_Configura_Tela;//21/11/2013
    procedure Gera_Chave(Contingencia: Boolean ; Sincrono : Boolean); //Síncrono é o modelo novo que não precisa buscar status

    property DMCupomFiscal: TDMCupomFiscal read fDMCupomFiscal write fDMCupomFiscal;

  published
    property Text;
  end;

var
  fNFCe: TfNFCe;

implementation

//uses nfe_v110, DateUtils, uNFeConsts, uNFeComandos, ComObj, uUtilPadrao, UMenu, uXMLNFCe3_10, StrUtils, URelDanfe_NFCe,
uses nfe_v110, DateUtils, uNFeConsts, uNFeComandos, ComObj, uUtilPadrao, UMenu, StrUtils, URelDanfe_NFCe,
  UNFCe_Log, DmdDatabase, uXMLNFCe4_00, Math, pcnAuxiliar, ACBrNFeUtil;

{$R *.dfm}

function TfNFCe.Verifica_Contigencia: Boolean;
begin
  Result := False;
  if ComboBox1.ItemIndex = 1 then
    Result := True;
end;

procedure TfNFCe.Monta_CodBarraContingencia(Tipo: String);
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
{  vCnpjDest   := Monta_Texto(fDMCupomFiscal.cdsClienteCNPJ_CPF.AsString,14);
  vCnpjRem    := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  vVlrNota    := FormatFloat('0.00',fDMCupomFiscal.cdsNotaFiscalVLR_NOTA.AsFloat);
  vVlrNota    := Monta_Texto(vVlrNota,14);
  fDMNFCe.Posiciona_CidadeUF(fDMCupomFiscal.cdsClienteID_CIDADE.AsInteger,fDMCupomFiscal.cdsClienteID_PAIS.AsInteger);

  if StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsNotaFiscalVLR_ICMS.AsFloat)) > 0 then
    vDestaqueICMS := icComDestaque
  else
    vDestaqueICMS := icSemDestaque;
  //NFe 2.00
  if StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat)) > 0 then
    vDestaqueICMSSubst := icComDestaque
  else
    vDestaqueICMSSubst := icSemDestaque;

  //NFe 2.00
  vCodBarraAux := GeraCodigoBarras( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                                           vCnpjRem,
                                           fDMNFCe.qUFUF.AsString,                // UF
                                           vCnpjDest,         //CNPJ Destinatário, Remetente ou zeros
                                           //StrToFloat(vVlrNota),              // Valor Total da NF-e
                                           StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsNotaFiscalVLR_NOTA.AsFloat)),              // Valor Total da NF-e
                                           teContFS,            // Tipo emissão: Contingência FS ou Contingência FSDA
                                           vDestaqueICMS,       // Destaque de ICMS próprio na NF-e: há destaque de ICMS próprio ou não há destaque de ICMS próprio
                                           //NFe 2.00
                                           //icSemDestaque,       // Destaque de ICMS por substituição tributária na NF-e: há destaque de ICMS por substituição tributária ou não há destaque de ICMS por substituição tributária
                                           vDestaqueICMSSubst,       // Destaque de ICMS por substituição tributária na NF-e: há destaque de ICMS por substituição tributária ou não há destaque de ICMS por substituição tributária
                                           //***************
                                           fDMCupomFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime // Data de emissão, será utilizado internamente o dia
                                         );

  if Tipo = 'G' then
    edCodBarras.Text := vCodBarraAux
  else
    lbCodBarraContingencia.Caption := vCodBarraAux;}
end;

procedure TfNFCe.Habilita_Botoes;
begin
  //NFe 2.00
  if Tag = 1 then //Inutilizar
  begin
    btInutilizar.Enabled   := True;
    btEnviarNovo.Enabled   := False;
    btCancelar.Enabled     := False;
    btDanfe.Enabled        := False;
    btContingencia.Enabled := False;
  end
  else
  if Tag = 2 then //Cancelar
  begin
    btCancelar.Enabled     := ((fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString <> '') and
                              (fDMCupomFiscal.cdsCupomFiscalNFEPROTOCOLO_CANCELADA.AsString = '') and (vConexao));
    btEnviarNovo.Enabled   := False;
    btContingencia.Enabled := False;
  end
  else
  begin
  if (ComboBox1.ItemIndex = 1) or (ComboBox1.ItemIndex = 2) then
  begin
    btEnviarNovo.Enabled   := ((fDMCupomFiscal.cdsCupomFiscalNFEPROTOCOLO.AsString = '') and
                              (fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString <> '') and (vConexao));
    btContingencia.Enabled := (fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString = '');
  end
  else
  begin
    btEnviarNovo.Enabled   := ((fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString = '') and (vConexao));
    btContingencia.Enabled := False;
  end;
  end;
end;

function TfNFCe.Verifica_ConexaoInternet: Boolean;
begin
  texto  := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  Result := ConectadoInternet(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString,texto);
end;

function TfNFCe.Monta_Diretorio(Tipo, Diretorio: string): string;
var
  vSerieAux: String;
  vAnoMes: String;
  i: Integer;
begin
  if Tipo <> 'I' then
  begin
    vAnoMes := FormatFloat('0000',YearOf(fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime)) +
               FormatFloat('00',MonthOf(fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime));
    vSerieAux := fDMCupomFiscal.cdsCupomFiscalSERIE.AsString;
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
    Result := Diretorio + 'NFCe_' + FormatFloat('00',fDMCupomFiscal.cdsCupomFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger) + '.txt'
  else
  if Tipo = 'P' then
  begin
    Result := Diretorio + vAnoMes;
    CreateDir(Result);
    Result := Result + '\NFCe_' + FormatFloat('00',fDMCupomFiscal.cdsCupomFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger) + '.pdf';
  end
  else
  begin
    Result := Diretorio + vAnoMes;
    CreateDir(Result);
    Result := Result + '\NFCe_' + FormatFloat('00',fDMCupomFiscal.cdsCupomFiscalFILIAL.AsFloat) + '_S' + vSerieAux + '_' + FormatFloat('000000',fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger);
  end;
end;

procedure TfNFCe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fDMRel);
  FreeAndNil(fDMNFCe);
  Tag := 0;
  Action := Cafree;
end;

procedure TfNFCe.FormShow(Sender: TObject);
begin
  prc_Configura_Tela;
  fDMNFCe.vDialogoImpressora := fDMCupomFiscal.cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA.AsString = 'S';
  btEnviarSincrono.Visible   := (fDMCupomFiscal.cdsCupomParametrosUSA_MODO_SINCRONO.AsString = 'S');
  btEnviarNovo.Visible       := (trim(fDMCupomFiscal.cdsCupomParametrosUSA_MODO_SINCRONO.AsString) <> 'S');
end;

procedure TfNFCe.btDanfeClick(Sender: TObject);
begin
  fDMNFCe.vDialogoImpressora := fDMCupomFiscal.cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA.AsString = 'S';
  prc_Danfe_Flexdocs;
end;

procedure TfNFCe.btCancelarClick(Sender: TObject);
var
  NroProtocolo: string;
  oNFeStream: TMemoryStream;
begin
  if trim(fDMCupomFiscal.cdsCupomFiscalNFEPROTOCOLO_CANCELADA.AsString) <> '' then
  begin
    MessageDlg('*** Nota já cancelada!', mtInformation, [mbOk], 0);
    exit;
  end;
  vNomeArqPdf := '';
  vNomeArquivo := Monta_Diretorio('X',fDMNFCe.qParametrosENDXMLNFCE.AsString);
  if vNomeArquivo = '' then
    exit;

  texto        := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  vContigencia := Verifica_Contigencia;

  oNFeStream := TMemoryStream.Create;
  try

    CancelaNFe(Trim( fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                texto,
                Copy(lbNroProtocolo.Caption,1,15),
                lbChaveAcesso.Caption,
                fDMCupomFiscal.vMotivoCancelamento,
                NroProtocolo,
                oNFeStream,
                vContigencia,True);

    lbNroProtocoloCancelamento.Caption := NroProtocolo;
    oNFeStream.Position                := 0;
    vNomeArquivo := vNomeArquivo + '_CANCELADA_' + lbChaveAcesso.Caption + '.xml';
    SalvarUTF8( oNFeStream, vNomeArquivo );

    if lbNroProtocoloCancelamento.Caption <> '' then
    begin
      fDMCupomFiscal.cdsCupomFiscal.Edit;
      fDMCupomFiscal.cdsCupomFiscalNFEPROTOCOLO_CANCELADA.AsString := NroProtocolo;
      fDMCupomFiscal.cdsCupomFiscalCANCELADO.AsString              := 'S';
      fDMCupomFiscal.cdsCupomFiscalMOTIVO_CANCELADA.AsString       := fDMCupomFiscal.vMotivoCancelamento;
      fDMCupomFiscal.cdsCupomFiscal.Post;
      fDMCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    end
    else
      ShowMessage('Problema no cancelamento, nota não foi cancelada!');
  finally
    FreeAndNil(oNFeStream);
    Edit1.Text := vNomeArquivo;
  end;
end;

procedure TfNFCe.btConexaoClick(Sender: TObject);
begin
  vConexao := Verifica_ConexaoInternet;
  Habilita_Botoes;
  if not vConexao then
    ShowMessage('Internet com problema, sem conexão!')
  else
    ShowMessage('Internet está ok!');
end;

procedure TfNFCe.btGerarChaveClick(Sender: TObject);
begin
  vGerar_Chave_Antiga := '';
  Gera_Chave(False,False);
end;

procedure TfNFCe.Button6Click(Sender: TObject);
begin
  Monta_CodBarraContingencia('G');
end;

procedure TfNFCe.Button7Click(Sender: TObject);
var
  Protocolo: String;
begin
  if SameText(Trim(edChaveNfe.Text), EmptyStr) then
    raise Exception.Create('Crie primeiro a chave de acesso pelo botão "Gera Chave NFe".');

  texto        := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  vContigencia := Verifica_Contigencia;

  lbRecibo.Caption       := EmptyStr;
  lbNroProtocolo.Caption := EmptyStr;
  lbChaveAcesso.Caption  := EmptyStr;

  Protocolo := NFe_Consultar( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                              texto,
                              edChaveNfe.Text,
                              vContigencia,
                              True ); // 23/09/2015

  lbNroProtocolo.Caption := Protocolo;
  lbChaveAcesso.Caption  := edChaveNfe.Text;
end;

procedure TfNFCe.btGravaNotaClick(Sender: TObject);
begin
  if Trim(fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) <> '' then
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

  if Trim(fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) = '' then
  begin
    fDMCupomFiscal.cdsCupomFiscal.Edit;
    fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString := lbChaveAcesso.Caption;
    fDMCupomFiscal.cdsCupomFiscalNFEPROTOCOLO.AsString   := lbNroProtocolo.Caption;
    fDMCupomFiscal.cdsCupomFiscal.Post;
    fDMCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
    Close;
  end;
end;

procedure TfNFCe.FormCreate(Sender: TObject);
begin
  fDMRel  := TDMRel.Create(Self);
  fDMNFCe := TDMNFCe.Create(Self);
  fDMNFCe.mAuxDadosNFe.EmptyDataSet;
  vMSGNFCe := '';
end;

procedure TfNFCe.btInutilizarClick(Sender: TObject);
var
  NroProtocolo: string;
  oNFeStream: TMemoryStream;
begin
  {vNomeArquivo := Monta_Diretorio('I',fDMNFCe.qParametrosENDXMLNFE.AsString);

  if vNomeArquivo = '' then
    exit;

  texto        := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  vContigencia := Verifica_Contigencia;

  oNFeStream := TMemoryStream.Create;

  try
    InutilizaNFe( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                  Texto,
                  fDMNFCe.qUFCODUF.AsString,
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
  end;}
end;

procedure TfNFCe.Button2Click(Sender: TObject);
begin
  texto := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  if VerificaStatusNFe(Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString), Texto, False) then
    ShowMessage('No ar')
  else
    ShowMessage('Fora do ar');
end;

procedure TfNFCe.Button3Click(Sender: TObject);
begin
  texto        := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  if VerificaStatusNFe(Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString), Texto, True) then
    ShowMessage('No ar')
  else
    ShowMessage('Fora do ar');
end;

procedure TfNFCe.Gera_Chave(Contingencia: Boolean ; Sincrono : Boolean); //Síncrono é o modelo novo que não precisa buscar status
var
  ChaveNfe: string;
  vSerieAux: String;
  vNumNotaAux: String;
  vVersaoAntiga: Boolean;
  vTipoEnvio: Integer;
begin
  texto       := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
  vSerieAux   := Monta_Texto(fDMCupomFiscal.cdsCupomFiscalSERIE.AsString,3);
  vNumNotaAux := Monta_Texto(fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsString,9);
  fDMNFCe.Posiciona_CidadeUF(fDMNFCe.qFilialID_CIDADE.AsInteger,1);
  case ComboBox1.ItemIndex of
    0: vTipoEnvio := 1;
    1: vTipoEnvio := 5;
    2: vTipoEnvio := 9;
  end;

  if vGerar_Chave_Antiga = 'N' then
    vVersaoAntiga := False;

  if Sincrono then
  begin
    pcnAuxiliar.GerarChave(ChaveNfe,
                           fDMNFCe.qUFCODUF.AsInteger,
                           StrToInt(vNumNotaAux),
                           65,
                           StrToInt(vSerieAux),
                           StrToInt(vNumNotaAux),
                           vTipoEnvio,
                           fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                           Texto);
  end
  else
  begin
    ChaveNfe := CriaChaveNFe( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                              Texto,
                              fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime,
                              fDMNFCe.qUFCODUF.AsString,
                              '65',
                              vSerieAux,
                              vNumNotaAux,IntToStr(vTipoEnvio),vVersaoAntiga);
  end;

  if not Contingencia then
    edChaveNfe.Text := ChaveNfe
  else
    lbChaveAcesso.Caption := ChaveNfe;
  if vGerar_Chave_Antiga = 'N' then
    lbChaveAcesso.Caption := ChaveNfe;
end;

procedure TfNFCe.btContingenciaClick(Sender: TObject);
begin
  //NFe 2.00  = Foi incluida toda esta procedure
  {Gera_Chave(True);
  Monta_CodBarraContingencia('E');

  if lbCodBarraContingencia.Caption = '' then
  begin
    ShowMessage('Problema na geração do código de barras!');
    exit;
  end;

  fDMCupomFiscal.cdsNotaFiscal.Edit;
  fDMCupomFiscal.cdsNotaFiscalNFERECIBO.AsString                := '';
  fDMCupomFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString             := '';
  fDMCupomFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString           := Trim(lbChaveAcesso.Caption);
  fDMCupomFiscal.cdsNotaFiscalNFECODBARRA_CONTINGENCIA.AsString := lbCodBarraContingencia.Caption;
  fDMCupomFiscal.cdsNotaFiscal.Post;
  fDMCupomFiscal.cdsNotaFiscal.ApplyUpdates(0);}
end;

procedure TfNFCe.Gera_NFCe;
var
  i: Integer;
begin
  fDMNFCe.mDadosAdicionaisNFe.Open;
  fDMNFCe.mItensNFe.Open;
  if not fDMNFCe.mAuxDadosNFe.Active then
    fDMNFCe.mAuxDadosNFe.Open;
  fDMNFCe.mItensNFe.EmptyDataSet;
  fDMNFCe.mAuxDadosNFe.EmptyDataSet;

  Monta_mItensNFe;
  //05/05/2014 Lei do tributo quando for grade e grava agrupado
  Monta_mDadosAdicionaisNFe;
  Monta_mParcelaNFe;

  //NFe 2.00
  if (Copy(fDMCupomFiscal.cdsCupomFiscalTIPO_ENVIONFE.AsString,1,1) = '1') or (fDMCupomFiscal.cdsCupomFiscalCANCELADO.AsString = 'S') then
    ComboBox1.ItemIndex := 0
  else
  if Copy(fDMCupomFiscal.cdsCupomFiscalTIPO_ENVIONFE.AsString,1,1) = '5' then
    ComboBox1.ItemIndex := 1
  else
  if Copy(fDMCupomFiscal.cdsCupomFiscalTIPO_ENVIONFE.AsString,1,1) = '9' then
    ComboBox1.ItemIndex := 2;
end;

procedure TfNFCe.Grava_DadosAdicionaisNFe(DadosAdi: String; Tipo: Integer);
begin
  if fDMNFCe.mDadosAdicionaisNFe.State in [dsBrowse] then
  begin
    DadosAdi := TirarAcento(DadosAdi);
    fDMNFCe.mDadosAdicionaisNFe.Edit;
    fDMNFCe.mDadosAdicionaisNFeObs.Value := fDMNFCe.mDadosAdicionaisNFeObs.Value + DadosAdi;
    fDMNFCe.mDadosAdicionaisNFeObs.Value := TrimLeft(fDMNFCe.mDadosAdicionaisNFeObs.Value);
    fDMNFCe.mDadosAdicionaisNFe.Post;
  end;
end;

procedure TfNFCe.Grava_mAuxDadosNFe(Tipo, Codigo: String ; ID_Variacao: Integer = 0);
begin
  if Codigo <> '' then
  begin
    fDMNFCe.mAuxDadosNFe.Insert;
    fDMNFCe.mAuxDadosNFeTipo.AsString         := Tipo;
    fDMNFCe.mAuxDadosNFeCodigo.AsString       := Codigo;
    fDMNFCe.mAuxDadosNFeID_Variacao.AsInteger := ID_Variacao;
    fDMNFCe.mAuxDadosNFe.Post;
  end;
end;

procedure TfNFCe.Monta_mDadosAdicionaisNFe;
var
  vTexto: String;
  vObsAux: String;
  vNumAux: Integer;
  vObsSimplesPermiteIcms, vObsSimples: Boolean;
  vFlag: Boolean;
  vTexto2: String;
  vPercAux: Real;
  vPercAux_Estadual, vPercAux_Federal, vPercAux_Municipal :Real;
begin
  fDMNFCe.mDadosAdicionaisNFe.EmptyDataSet;
  fDMNFCe.mDadosAdicionaisNFe.Insert;
  fDMNFCe.mDadosAdicionaisNFeID.AsInteger := fDMCupomFiscal.cdsCupomFiscalID.AsInteger;
  fDMNFCe.mDadosAdicionaisNFe.Post;
  //Dados digitados manualmente
  //03/03/2018
  fDMNFCe.mAuxDadosNFe.First;
  while not fDMNFCe.mAuxDadosNFe.Eof do
  begin
    if fDMNFCe.mAuxDadosNFeTipo.AsString = 'LEI' then
    begin
      fDMNFCe.qObs_Lei.Close;
      fDMNFCe.qObs_Lei.ParamByName('ID').AsInteger := fDMNFCe.mAuxDadosNFeCodigo.AsInteger;
      fDMNFCe.qObs_Lei.Open;
      if trim(fDMNFCe.qObs_LeiOBS.AsString) <> '' then
        Grava_DadosAdicionaisNFe(fDMNFCe.qObs_LeiOBS.AsString,0);
    end;
    fDMNFCe.mAuxDadosNFe.Next;
  end;

  if (trim(fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) <> '') then
  begin
    Grava_DadosAdicionaisNFe(fDMCupomFiscal.cdsCupomFiscalDADOS_ADICIONAIS.AsString,0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat)) > 0 then
  begin
    if fDMCupomFiscal.cdsParametrosIMP_TIPO_TRIBUTOS.AsString = 'T' then
    begin
      vPercAux := StrToCurr(FormatCurr('0.00',((fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat / vVlr_Trib_Itens) * 100)));
      vTexto := '(Vlr. aproximado total de tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12. R$ ' + FormatFloat('###,###,##0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat);
      vTexto := vTexto + '  ' + FormatFloat('0.00',vPercAux) + '%';
    end
    else
    begin
      vPercAux_Estadual  := 0;
      vPercAux_Federal   := 0;
      vPercAux_Municipal := 0;
      vPercAux := StrToCurr(FormatCurr('0.00',((fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat / vVlr_Trib_Itens) * 100)));
      if vPerc_Trib_Estadual <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Estadual := StrToCurr(FormatCurr('0.00',vPerc_Trib_Estadual))
      else
      if vVlr_Trib_Estadual <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Estadual  := StrToCurr(FormatCurr('0.00',((fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat / vVlr_Trib_Estadual) * 100)));
      if vPerc_Trib_Federal <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Federal := StrToCurr(FormatCurr('0.00',vPerc_Trib_Federal))
      else
      if vVlr_Trib_Federal <> StrToCurr(FormatCurr('0.00',0)) then
        vPercAux_Federal  := StrToCurr(FormatCurr('0.00',((fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat / vVlr_Trib_Federal) * 100)));
      if vPerc_Trib_Municipal <> StrToCurr(FormatCurr('0.00',0)) then
        vPerc_Trib_Municipal := StrToCurr(FormatCurr('0.00',vPerc_Trib_Municipal))
      else
      if vVlr_Trib_Municipal <> StrToCurr(FormatCurr('0.00',0)) then
        vPerc_Trib_Municipal := StrToCurr(FormatCurr('0.00',((fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat / vVlr_Trib_Municipal) * 100)));
      vTexto := '(Vlr.aprox. tributos R$ ' + FormatFloat('###,###,##0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_FEDERAL.AsFloat);
      if fDMCupomFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux_Federal);
      vTexto := vTexto + ' Federal,';
      vTexto := vTexto + ' R$ ' + FormatFloat('###,###,##0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_ESTADUAL.AsFloat);
      if fDMCupomFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux_Estadual);
      vTexto := vTexto + ' Estadual e R$ ' + FormatFloat('###,###,##0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL.AsFloat);
      if fDMCupomFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux_Municipal);
      vTexto := vTexto + ' Municipal  R$ ' + FormatFloat('###,###,##0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TRIBUTO.AsFloat);
      if fDMCupomFiscal.cdsParametrosIMP_PERC_TRIB_DADOS_ADIC.AsString = 'S' then
        vTexto := vTexto + ' %' + FormatFloat('0.00',vPercAux);
      vTexto := vTexto + ' Total';
      vTexto := vTexto + ' Lei 12.741/12,';
      if (trim(fDMCupomFiscal.cdsCupomFiscalFONTE_TRIBUTOS.AsString) = '') and (fDMCupomFiscal.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I') then
        vTexto := vTexto + ' Fonte IBPT)'
      else
        vTexto := vTexto + ' Fonte ' + fDMCupomFiscal.cdsCupomFiscalFONTE_TRIBUTOS.AsString + ')';
    end;
    Grava_DadosAdicionaisNFe(vTexto,0);
  end;

  vTexto := '';
  if trim(fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString) <> '' then
    vTexto := 'Fone: ' + fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString;
  if (trim(fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString) <> '') and (UpperCase(trim(fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString)) <> 'CONSUMIDOR') then
    vTexto := '(Consumidor: ' + fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString + ' ' + vTexto + ')'
  else
  if trim(vTexto) <> '' then
    vTexto := '(' + vTexto + ')';
  if trim(fDmNFCe.cdsCupomFiscalCLIENTE_OBS.AsString) <> '' then
     vTexto := vTexto + '(' + fDmNFCe.cdsCupomFiscalCLIENTE_OBS.AsString + ')';
  if trim(vTexto) <> '' then
    Grava_DadosAdicionaisNFe(vTexto,0);
  //**********************

  //27/01/2017
  if fDMNFCe.qParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S' then
  begin
    vTexto := '';
    fDMNFCe.mPedAux.First;
    while not fDMNFCe.mPedAux.Eof do
    begin
      fDMNFCe.qPedido.Close;
      fDMNFCe.qPedido.ParamByName('ID').AsInteger := fDMNFCe.mPedAuxID_Pedido.AsInteger;
      fDMNFCe.qPedido.Open;
      if trim(fDMNFCe.qPedidoOBS_NOTA.AsString) <> '' then
        vTexto := vTexto + '(OC: ' + fDMNFCe.qPedidoPEDIDO_CLIENTE.AsString + ' obs: ' + fDMNFCe.qPedidoOBS_NOTA.AsString + ')';
      fDMNFCe.mPedAux.Next;
    end;
    if trim(vTexto) <> '' then
      Grava_DadosAdicionaisNFe(vTexto,0);
  end;
  //****
  vObsSimples            := False;
  vObsSimplesPermiteIcms := False;
end;

procedure TfNFCe.Monta_mItensNFe;
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
begin
  fDMCupomFiscal.cdsTab_CSTICMS.IndexFieldNames := 'ID';
  fDMCupomFiscal.cdsCFOP.IndexFieldNames        := 'ID';
  fDMCupomFiscal.cdsTab_Cofins.IndexFieldNames  := 'ID';
  fDMCupomFiscal.cdsTab_Pis.IndexFieldNames     := 'ID';
  fDMCupomFiscal.cdsTab_CSTIPI.IndexFieldNames  := 'ID';
  fDMCupomFiscal.cdsTab_NCM.IndexFieldNames     := 'ID';

  vItemNFe := 0;
  fDMNFCe.mAuxDadosNFe.EmptyDataSet;
  fDMNFCe.mItensNFe.EmptyDataSet;
  fDMNFCe.mDadosAdicionaisNFe.EmptyDataSet;
  fDMNFCe.mPedAux.EmptyDataSet;

  vVlr_Trib_Itens      := 0;
  vVlr_Trib_Estadual   := 0;
  vVlr_Trib_Federal    := 0;
  vVlr_Trib_Municipal  := 0;
  vPerc_Trib_2         := False;
  vPerc_Trib_Estadual  := 0;
  vPerc_Trib_Federal   := 0;
  vPerc_Trib_Municipal := 0;
  vTextoNumNotaNFe := '';
  fDMCupomFiscal.vDescricao_Operacao := '';
  fDMCupomFiscal.cdsCupom_Itens.First;
  while not fDMCupomFiscal.cdsCupom_Itens.Eof do
  begin
    if fDMCupomFiscal.cdsCupom_ItensCANCELADO.AsString <> 'S' then
    begin
      vTextoDetNFe := '';
      vNomeProduto := '';
      inc(vItemNFe);
      prc_Abrir_Produto(fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsString);
      if fDMCupomFiscal.cdsProdutoID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger then
        MessageDlg('*** Atenção: Tabela de Produto Com Problema, verifique na Danfe se os produtos estão corretos!', mtInformation, [mbOk], 0);
      if fDMCupomFiscal.cdsCFOPID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger then
        fDMCupomFiscal.cdsCFOP.Locate('ID',fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger,([Locaseinsensitive]));
      if (fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger > 0) and (trim(fDMCupomFiscal.vDescricao_Operacao) = '') then
        fDMCupomFiscal.vDescricao_Operacao := fDMCupomFiscal.cdsCFOPNOME.AsString;
      if fDMCupomFiscal.cdsCFOPID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger then
        ShowMessage('*** Atenção: Nota com problema no CFOP (CFOP não encontrado na tabela CFOP)!'
                   + #13 + ' ID CFOP Cupom: ' + fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsString
                   + #13 + ' ID CFOP Cadastro: ' + fDMCupomFiscal.cdsCFOPID.AsString);

      if (fDMCupomFiscal.cdsCFOPID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger) or
         (fDMCupomFiscal.cdsProdutoID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger) then
        Break;

      vPerc_Trib_2 := True;
      if StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat)) > 0 then
      begin
        if StrToFloat(FormatFloat('0.00',vVlr_Trib_Estadual)) > 0 then
        begin
          if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Estadual)) <> StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)))
            and (StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)) <> 0) then
            vPerc_Trib_Estadual := 0
        end
        else
          vPerc_Trib_Estadual := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat));
        if fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
          vVlr_Trib_Estadual := StrToFloat(FormatFloat('0.00',vVlr_Trib_Estadual + fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat));

        if StrToFloat(FormatFloat('0.00',vVlr_Trib_Federal)) > 0 then
        begin
          if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Federal)) <> StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat)))
            and (StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat)) <> 0) then
            vPerc_Trib_Federal := 0
        end
        else
          vPerc_Trib_Federal := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat));
        if fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
          vVlr_Trib_Federal := StrToFloat(FormatFloat('0.00',vVlr_Trib_Federal + fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat));

        if StrToFloat(FormatFloat('0.00',vVlr_Trib_Municipal)) > 0 then
        begin
          if (StrToFloat(FormatFloat('0.00',vPerc_Trib_Municipal)) <> StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)))
            and (StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)) <> 0) then
            vPerc_Trib_Municipal := 0
        end
        else
          vPerc_Trib_Municipal := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat));
        if fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat > StrToFloat(FormatFloat('0.00',0)) then
          vVlr_Trib_Municipal := StrToFloat(FormatFloat('0.00',vVlr_Trib_Municipal + fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat));
        vVlr_Trib_Itens := StrToFloat(FormatFloat('0.00',vVlr_Trib_Itens + fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat));
      end;
      
      //*******************
      vExiste_Aux := False;
      if vExiste_Aux then
        fDMNFCe.mItensNFe.Edit
      else
      begin
        fDMNFCe.mItensNFe.Insert;
        fDMNFCe.mItensNFeID_Produto.AsInteger   := fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger;
        fDMNFCe.mItensNFeCodAuxiliar.AsString   := '';

        //25/09/2018
        if fDMNFCe.qParametros_NFeENVAR_CODBARRA.AsString = 'S' then
        begin
          if (fDMCupomFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (trim(fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString) <> '') then
          begin
            prc_Abrir_CBarra;
            if trim(fDMNFCe.qCBarraCOD_BARRA.AsString) <> '' then
              fDMNFCe.mItensNFeCodBarra.AsString := fDMNFCe.qCBarraCOD_BARRA.AsString;
          end;
          if trim(fDMNFCe.mItensNFeCodBarra.AsString) = '' then
          begin
            prc_Abrir_qProduto_Forn;
            if not(fDMNFCe.qProduto_Forn.IsEmpty) and (trim(fDMNFCe.qProduto_FornCOD_BARRA.AsString) <> '') then
              fDMNFCe.mItensNFeCodBarra.AsString := fDMNFCe.qProduto_FornCOD_BARRA.AsString
            else
              fDMNFCe.mItensNFeCodBarra.AsString := fDMCupomFiscal.cdsProdutoCOD_BARRA.AsString;
          end;
        end;
        fDMNFCe.mItensNFeCodBarra2.AsString := '';
        if trim(fDMCupomFiscal.cdsProdutoCOD_BARRA2.AsString) <> '' then
        begin
          fDMNFCe.mItensNFeCodBarra2.AsString := trim(fDMCupomFiscal.cdsProdutoCOD_BARRA2.AsString);
          if StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat)) > 0 then
          begin
            fDMNFCe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMNFCe.mItensNFeVlrUnitario.AsFloat / fDMCupomFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat));
            fDMNFCe.mItensNFeQtd_Trib.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsCupom_ItensQTD.AsFloat * fDMCupomFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat));
          end;
          if trim(fDMCupomFiscal.cdsProdutoUNIDADE2.AsString) <> '' then
            fDMNFCe.mItensNFeUnidade_Trib.AsString := fDMCupomFiscal.cdsProdutoUNIDADE2.AsString;
        end;
        fDMNFCe.mItensNFeTipoReg.AsString       := 'P';
        fDMNFCe.mItensNFeFilial.AsInteger       := fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
        fDMNFCe.mItensNFeNumNota.AsInteger      := fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger;
        fDMNFCe.mItensNFeItemNota.AsInteger     := vItemNFe;
        fDMNFCe.mItensNFeItemOriginal.AsInteger := fDMCupomFiscal.cdsCupom_ItensITEM.AsInteger;
        fDMNFCe.mItensNFeCodNatOper.AsString    := fDMCupomFiscal.cdsCFOPCODCFOP.AsString;
        fDMNFCe.mItensNFeVlrIOF.AsFloat         := 0;
        if fDMCupomFiscal.cdsParametrosIMP_NFE_REF_PROD.AsString = 'R' then
          fDMNFCe.mItensNFeCodProduto.AsString := fDMCupomFiscal.cdsCupom_ItensREFERENCIA.AsString
        else
          fDMNFCe.mItensNFeCodProduto.AsString := fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsString;
        if (trim(fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString) <> '')  then
          fDMNFCe.mItensNFeCodProduto.AsString := fDMNFCe.mItensNFeCodProduto.AsString + '.' + fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString;
        vNomeProduto := fDMCupomFiscal.cdsCupom_ItensNOME_PRODUTO.AsString;
        if trim(fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString) <> '' then
          vNomeProduto := vNomeProduto + ' ' + fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString;

        //if (vItemNFe = 1) and (vTipo_Ambiente_NFe = '2') then
        //  fDMNFCe.mItensNFeNomeProduto.AsString := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
        //else
        fDMNFCe.mItensNFeNomeProduto.AsString       := TirarAcento(vNomeProduto);
        fDMNFCe.mItensNFeUnidade.AsString           := TirarAcento(fDMCupomFiscal.cdsCupom_ItensUNIDADE.AsString);
        //25/09/2018
        if trim(fDMNFCe.mItensNFeUnidade_Trib.AsString) = '' then
        begin //04/07/2017  unidade tributável
          //if trim(fDMCupomFiscal.cdsCupom_ItensUNIDADE_Trib.AsString) <> '' then
            //fDMNFe.mItensNFeUnidade_Trib.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE_TRIB.AsString
          //else
            fDMNFCe.mItensNFeUnidade_Trib.AsString := fDMCupomFiscal.cdsCupom_ItensUNIDADE.AsString;
        end;
        //**************
        fDMNFCe.mItensNFeAliqIcms.AsFloat           := fDMCupomFiscal.cdsCupom_ItensPERC_ICMS.AsFloat;
        fDMNFCe.mItensNFeAliqIpi.AsFloat            := fDMCupomFiscal.cdsCupom_ItensPERC_IPI.AsFloat;
        fDMNFCe.mItensNFePercPis.AsFloat            := fDMCupomFiscal.cdsCupom_ItensPERC_PIS.AsFloat;
        fDMNFCe.mItensNFeAliqPis.AsFloat            := fDMCupomFiscal.cdsCupom_ItensPERC_PIS.AsFloat;
        fDMNFCe.mItensNFePercCofins.AsFloat         := fDMCupomFiscal.cdsCupom_ItensPERC_COFINS.AsFloat;
        fDMNFCe.mItensNFeAliqCofins.AsFloat         := fDMCupomFiscal.cdsCupom_ItensPERC_COFINS.AsFloat;
        fDMNFCe.mItensNFeSomaVlrTotalProd.AsBoolean := True;
        fDMNFCe.mItensNFePercIcmsSubstInterno.AsFloat  := StrToFloat(FormatFloat('0.0000',0));
        fDMNFCe.mItensNFeVlrIcmsDesonerado.AsFloat     := StrToFloat(FormatFloat('0.00',0));
        fDMNFCe.mItensNFeCodMotivoDesonerado.AsInteger := 0;
        if fDMCupomFiscal.cdsTab_CSTICMS.FindKey([fDMCupomFiscal.cdsCupom_ItensID_CSTICMS.AsInteger]) then
        begin
          //Verifica % de redução da situação tributária
          if StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat)) > 0 then
          begin
            fDMNFCe.mItensNFePercRedICMS.AsFloat := 100 - StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat));
            fDMNFCe.mItensNFeAliqSitTrib.AsFloat := fDMCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat;
          end
          else
          begin
            if StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsTab_CSTICMSPERCENTUAL.AsFloat)) > 0 then
              fDMNFCe.mItensNFePercRedICMS.AsFloat := 100 - StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsTab_CSTICMSPERCENTUAL.AsFloat));
            fDMNFCe.mItensNFeAliqSitTrib.AsFloat := fDMCupomFiscal.cdsTab_CSTICMSPERCENTUAL.AsFloat;
          end;
          fDMNFCe.mItensNFeCodSitTrib.AsString := fDMCupomFiscal.cdsCupom_ItensORIGEM_PROD.AsString + fDMCupomFiscal.cdsTab_CSTICMSCOD_CST.AsString;
        end;
        fDMNFCe.mItensNFeCod_Cest.AsString := '';
        if (trim(fDMCupomFiscal.cdsProdutoCOD_CEST.AsString) <> '') and not(fDMCupomFiscal.cdsProdutoCOD_CEST.IsNull) then
          fDMNFCe.mItensNFeCod_Cest.AsString := fDMCupomFiscal.cdsProdutoCOD_CEST.AsString;

        if fDMCupomFiscal.cdsProdutoID_NCM.AsInteger > 0 then
        begin
          fDMCupomFiscal.cdsCupom_Itens.Edit;
          fDMCupomFiscal.cdsCupom_ItensID_NCM.AsInteger := fDMCupomFiscal.cdsProdutoID_NCM.AsInteger;
          fDMCupomFiscal.cdsCupom_Itens.Post;
          fDMCupomFiscal.cdsCupom_Itens.ApplyUpdates(0);
        end
        else
        begin
          ShowMessage('Produto sem NCM: ' + fDMCupomFiscal.cdsProdutoNome.AsString);
          Exit;
        end;

        if fDMCupomFiscal.cdsTab_NCM.FindKey([fDMCupomFiscal.cdsCupom_ItensID_NCM.AsInteger]) then
        begin
          fDMNFCe.mItensNFeClasFiscalRed.AsString := fDMCupomFiscal.cdsTab_NCMNCM.AsString;
          fDMNFCe.mItensNFeClasFiscal.AsString    := fDMCupomFiscal.cdsTab_NCMNCM.AsString;
          //24/11/2015 Nova
          if (trim(fDMCupomFiscal.cdsTab_NCMCOD_CEST.AsString) <> '') and (fDMNFce.mItensNFeCod_Cest.AsString = '') then
            fDMNFce.mItensNFeCod_Cest.AsString := fDMCupomFiscal.cdsTab_NCMCOD_CEST.AsString;
          //******
          //03/03/2018
          if fDMCupomFiscal.cdsTab_NCMID_OBS_LEI.AsInteger > 0 then
            Grava_mAuxDadosNFe('LEI',fDMCupomFiscal.cdsTab_NCMID_OBS_LEI.AsString);
          //**************
        end;
        fDMNFCe.mItensNFeNCM_EX.AsString := fDMCupomFiscal.cdsProdutoNCM_EX.AsString;
        fDMNFCe.mItensNFePedidoCliente.AsString := '';
        fDMNFCe.mItensNFeItemPedido.AsInteger   := 0;
        fDMNFCe.mItensNFeNumOS.AsString         := '';
        //*********
        //03/03/2018
        //fDMNFCe.mItensNFePercRedICMS.AsFloat    := 0;
        //*************************************
        if (fDMCupomFiscal.cdsCupom_ItensID_CSTIPI.AsInteger > 0) and (fDMCupomFiscal.cdsTab_CSTIPI.FindKey([fDMCupomFiscal.cdsCupom_ItensID_CSTIPI.AsInteger])) then
          fDMNFCe.mItensNFeCodCSTIPI.AsString       := fDMCupomFiscal.cdsTab_CSTIPICOD_IPI.AsString;
        //24/11/2015 Nova
        if fDMCupomFiscal.cdsCupom_ItensID_ENQIPI.AsInteger <= 0 then
          fDMNFCe.mItensNFeCod_EnqIPI.AsString := '999'
        else
        begin
          if fDMCupomFiscal.cdsCupom_ItensID_ENQIPI.AsInteger > 0 then
            if fDMCupomFiscal.cdsEnqIPI.FindKey([fDMCupomFiscal.cdsCupom_ItensID_ENQIPI.AsInteger]) then
              fDMNFCe.mItensNFeCod_EnqIPI.AsString := fDMCupomFiscal.cdsEnqIPICODIGO.AsString;
        end;
        //**********

        fDMNFCe.mItensNFeMVA.AsFloat              := 0;
        fDMNFCe.mItensNFePercRedICMSSubst.AsFloat := 0;
        if fDMCupomFiscal.cdsTab_CofinsID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_COFINS.AsInteger then
          fDMCupomFiscal.cdsTab_Cofins.FindKey([fDMCupomFiscal.cdsCupom_ItensID_COFINS.AsInteger]);
        if fDMCupomFiscal.cdsTab_PisID.AsInteger <> fDMCupomFiscal.cdsCupom_ItensID_PIS.AsInteger then
          fDMCupomFiscal.cdsTab_Pis.FindKey([fDMCupomFiscal.cdsCupom_ItensID_PIS.AsInteger]);
        fDMNFCe.mItensNFeCodCofins.AsString  := fDMCupomFiscal.cdsTab_CofinsCODIGO.AsString;
        fDMNFCe.mItensNFeTipoCofins.AsString := fDMCupomFiscal.cdsCupom_ItensTIPO_COFINS.AsString;
        fDMNFCe.mItensNFeCodPis.AsString     := fDMCupomFiscal.cdsTab_PisCODIGO.AsString;
        fDMNFCe.mItensNFeTipoPis.AsString    := fDMCupomFiscal.cdsCupom_ItensTIPO_PIS.AsString;
        if Trim(fDMCupomFiscal.cdsProdutoCOMPLEMENTO.AsString) <> '' then
          vTextoDetNFe := TirarAcento(fDMCupomFiscal.cdsProdutoCOMPLEMENTO.AsString) + ' ';
        vCodProdutoNFe := '';
        vNomeTriang    := '';
        vTextoTriang   := '';
        if vTextoDetNFe <> '' then
          fDMNFCe.mItensNFeInfAdicionais.Value := vTextoDetNFe + ' ';
        if Trim(fDMNFCe.mItensNFeInfAdicionais.Value) = '' then
          fDMNFCe.mItensNFeInfAdicionais.Value := Texto1
        else
          fDMNFCe.mItensNFeInfAdicionais.Value := fDMNFCe.mItensNFeInfAdicionais.Value + ' (' + Texto1 + ')';

        if (StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat)) > 0) and (fDMCupomFiscal.cdsParametrosLEI_TRANSPARENCIA_IMP_ITEM.AsString = 'S') then
        begin
          Texto1 := fDMCupomFiscal.cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM.AsString;
          if fDMCupomFiscal.cdsParametrosIMP_TIPO_TRIBUTOS_ITENS.AsString = 'T' then
          begin
            if trim(Texto1) = '' then
              Texto1 := 'Vlr. aprox.de tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12.';
            Texto1 := '(' + Texto1 + ' R$ ' + FormatFloat('####,###,##0.00',fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat);
            vAux := StrToCurr(FormatCurr('0.00',((fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat / fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat) * 100)));
            Texto1 := Texto1 + ' (' + FormatFloat('0.00',vAux) + '%)';
          end
          else
          begin
            Texto1 := 'Vlr.aprox.de trib. R$ ' + FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat);
            if fDMCupomFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat);
            Texto1 := Texto1 + ' Federal';
            Texto1 := Texto1 + ', R$ ' + FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat);
            if fDMCupomFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat);
            Texto1 := Texto1 + ' Estadual';
            Texto1 := Texto1 + ', R$ ' + FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat);
            if fDMCupomFiscal.cdsParametrosIMP_PERC_TRIB_ITENS.AsString = 'S' then
              Texto1 := Texto1 + ' %' + FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat);
            Texto1 := Texto1 + ' Municipal';
            Texto1 := Texto1 + ' lei 12.741/12';
          end;
          if trim(fDMCupomFiscal.cdsCupom_ItensFONTE_TRIBUTO.AsString) <> '' then
            Texto1 := Texto1 + ' Fonte: ' + fDMCupomFiscal.cdsCupom_ItensFONTE_TRIBUTO.AsString + ')'
          else
            Texto1 := Texto1 + ')';
          fDMNFCe.mItensNFeInfAdicionais.Value := fDMNFCe.mItensNFeInfAdicionais.Value + Texto1;
        end;
      end;
      fDMNFCe.mItensNFeVlrUnitario.AsFloat       := StrToFloat(FormatFloat('0.0000000000',fDMCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat));
      if (StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat)) > 0) and (trim(fDMCupomFiscal.cdsProdutoCOD_BARRA2.AsString) <> '') then
        fDMNFCe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat / fDMCupomFiscal.cdsProdutoQTD_EMBALAGEM.AsFloat))
      else //04/07/2017
      //if StrToFloat(FormatFloat('0.0000000000',fDMCupomFiscal.cdsCupom_Itensvlr_un fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO_TRIB.AsFloat)) > 0 then
      //  fDMNFCe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO_TRIB.AsFloat))
      //else
        fDMNFCe.mItensNFeVlr_Unitario_Trib.AsFloat := StrToFloat(FormatFloat('0.0000000000',fDMCupomFiscal.cdsCupom_ItensVLR_UNITARIO.AsFloat));
      //*********

      fDMNFCe.mItensNFeVlrBaseImportacao.AsFloat := StrToFloat(FormatFloat('0.00',0));
      fDMNFCe.mItensNFeVlrImportacao.AsFloat     := StrToFloat(FormatFloat('0.00',0));
      fDMNFCe.mItensNFeVlrDespAduaneira.AsFloat  := StrToFloat(FormatFloat('0.00',0));

      fDMNFCe.mItensNFeQtd.AsFloat               := StrToFloat(FormatFloat('0.000',fDMNFCe.mItensNFeQtd.AsFloat + fDMCupomFiscal.cdsCupom_ItensQTD.AsFloat));

      //25/09/2018
      if StrToFloat(FormatFloat('0.0000',fDMNFCe.mItensNFeQtd_Trib.AsFloat)) <= 0 then
        fDMNFCe.mItensNFeQtd_Trib.AsFloat := StrToFloat(FormatFloat('0.00000',fDMNFCe.mItensNFeQtd.AsFloat));
      //*****************

      fDMNFCe.mItensNFeVlrTotal.AsFloat          := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTotal.AsFloat + (fDMCupomFiscal.cdsCupom_ItensVLR_TOTAL.AsFloat
                                                 + fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTORATEIO.AsFloat)));
      fDMNFCe.mItensNFeVlrIcms.AsFloat            := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcms.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat));
      fDMNFCe.mItensNFeVlrIpi.AsFloat             := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIpi.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_IPI.AsFloat));
      fDMNFCe.mItensNFeBaseIcmsSimples.AsFloat    := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeBaseIcmsSimples.AsFloat + 0));
      fDMNFCe.mItensNFeVlrIcmsSimples.AsFloat     := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrIcmsSimples.AsFloat + 0));
      fDMNFCe.mItensNFeVlrPis.AsFloat             := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrPis.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_PIS.AsFloat));
      fDMNFCe.mItensNFeVlrCofins.AsFloat          := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrCofins.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_COFINS.AsFloat));
      fDMNFCe.mItensNFeVlrFrete.AsFloat           := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrFrete.AsFloat + 0));
      fDMNFCe.mItensNFeVlrSeguro.AsFloat          := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrSeguro.AsFloat + 0));
      fDMNFCe.mItensNFeVlrOutrasDespesas.AsFloat  := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrOutrasDespesas.AsFloat + 0));
      fDMNFCe.mItensNFeVlrDesconto.AsFloat        := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrDesconto.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTO.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_DESCONTORATEIO.AsFloat));
      fDMNFCe.mItensNFeBaseICMS.AsFloat           := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeBaseICMS.AsFloat + fDMCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat));
      fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat      := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsBaseSubst.AsFloat + 0));
      fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat       := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeIcmsVlrSubst.AsFloat + 0));
      fDMNFCe.mItensNFeVlrTributos.AsFloat        := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTributos.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO.AsFloat));
      fDMNFCe.mItensNFeVlrTributos_Estadual.AsFloat  := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTributos_Estadual.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_ESTADUAL.AsFloat));
      fDMNFCe.mItensNFeVlrTributos_Federal.AsFloat   := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTributos_Federal.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_FEDERAL.AsFloat));
      fDMNFCe.mItensNFeVlrTributos_Municipal.AsFloat := StrToFloat(FormatFloat('0.00',fDMNFCe.mItensNFeVlrTributos_Municipal.AsFloat + fDMCupomFiscal.cdsCupom_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat));

      fDMNFCe.mItensNFePercTributos_Estadual.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_ESTADUAL.AsFloat));
      fDMNFCe.mItensNFePercTributos_Federal.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_FEDERAL.AsFloat));
      fDMNFCe.mItensNFePercTributos_Municipal.AsFloat := StrToFloat(FormatFloat('0.00',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat));
    
      fDMNFCe.mItensNFeVlrIcmsOperacao.AsFloat    := StrToFloat(FormatFloat('0.00',0));
      fDMNFCe.mItensNFePercTribIcms.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMCupomFiscal.cdsCupom_ItensPERC_TRIBICMS.AsFloat));
      fDMNFCe.mItensNFeInfAdicionais.Value        := Trim(fDMNFCe.mItensNFeInfAdicionais.Value);

      fDMNFCe.mItensNFe.Post;

      //27/01/2017
      if (fDMNFCe.qParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S') and (fDMCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger > 0) then
      begin
        if not fDMNFCe.mPedAux.FindKey([fDMCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger]) then
        begin
          fDMNFCe.mPedAux.Insert;
          fDMNFCe.mPedAuxID_Pedido.AsInteger      := fDMCupomFiscal.cdsCupom_ItensID_PEDIDO.AsInteger;
          fDMNFCe.mPedAuxObs_Nova.AsString        := '';
          fDMNFCe.mPedAux.Post;
        end;
      end;
      //************************
    end;

    fDMCupomFiscal.cdsCupom_Itens.Next;
  end;
end;

procedure TfNFCe.Monta_mParcelaNFe;
begin
  fDMNFCe.mParcelaNFe.EmptyDataSet;
  if fDMCupomFiscal.cdsCupomFiscalTIPO_PGTO.AsString = 'V' then
  begin 
    fDMNFCe.mParcelaNFe.Insert;
    fDMNFCe.mParcelaNFeNumNota.AsInteger     := fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger;
    fDMNFCe.mParcelaNFeParcela.AsInteger     := 0;
    fDMNFCe.mParcelaNFeValor.AsFloat         := fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat;
    fDMNFCe.mParcelaNFeDtVencimento.AsString := 'A Vista';
    fDMNFCe.mParcelaNFe.Post;
  end
  else
  begin
    fDMCupomFiscal.cdsCupom_Parc.First;
    while not fDMCupomFiscal.cdsCupom_Parc.Eof do
    begin
      fDMNFCe.mParcelaNFe.Insert;
      fDMNFCe.mParcelaNFeNumNota.AsInteger     := fDMCupomFiscal.cdsCupomFiscalNUMCUPOM.AsInteger;
      fDMNFCe.mParcelaNFeParcela.AsInteger     := fDMCupomFiscal.cdsCupom_ParcPARCELA.AsInteger;
      fDMNFCe.mParcelaNFeValor.AsFloat         := fDMCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsFloat;
      fDMNFCe.mParcelaNFeDtVencimento.AsString := fDMCupomFiscal.cdsCupom_ParcDTVENCIMENTO.AsString;
      fDMNFCe.mParcelaNFe.Post;
      fDMCupomFiscal.cdsCupom_Parc.Next;
    end;
  end;
end;

function TfNFCe.fnc_Posicionar_Cidade(ID: Integer): Boolean;
begin
  Result := True;
  fDMNFCe.qCidade.Close;
  fDMNFCe.qCidade.ParamByName('ID').AsInteger := ID;
  fDMNFCe.qCidade.Open;
  if fDMNFCe.qCidade.IsEmpty then
    Result := False;
end;

procedure TfNFCe.prc_Posicionar_Tabelas;
begin
  fDMNFCe.qFilial.Close;
  fDMNFCe.qFilial.ParamByName('ID').AsInteger := vFilial;
  fDMNFCe.qFilial.Open;

  fDMNFCe.qUF.Close;
  fDMNFCe.qUF.ParamByName('UF').AsString := fDMNFCe.qFilialUF.AsString;
  fDMNFCe.qUF.Open;

  fDMNFCe.qFilial_NFCe.Close;
  fDMNFCe.qFilial_NFCe.ParamByName('ID').AsInteger := vFilial;
  fDMNFCe.qFilial_NFCe.Open;

  fDMNFCe.qParametros.Close;
  fDMNFCe.qParametros.Open;
end;

procedure TfNFCe.prc_Imprimir_Danfe(Tipo: String);
begin
  fDMNFCe.cdsCupomFiscal.Close;
  fDMNFCe.sdsCupomFiscal.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsCupomFiscalID.AsInteger;
  fDMNFCe.cdsCupomFiscal.Open;

  fDMNFCe.qFilial.Close;
  fDMNFCe.qFilial.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
  fDMNFCe.qFilial.Open;

  vFilial := fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;

  if fDMCupomFiscal.cdsPessoaCODIGO.AsInteger <> fDMNFCe.cdsCupomFiscalID_CLIENTE.AsInteger then
    fDMCupomFiscal.cdsPessoa.Locate('CODIGO',fDMNFCe.cdsCupomFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  vEmail_Fortes := fDMCupomFiscal.cdsPessoaEMAIL_NFE.AsString;

  fRelDANFE_NFCe := TfRelDANFE_NFCe.Create(Self);
  //fRelDANFE_NFCe.fDMCupomFiscal := fDMCupomFiscal;
  fRelDANFE_NFCe.fDMNFCe        := fDMNFCe;
  {case ComboBox2.ItemIndex of
    0: fRelDANFE_NFCe.vAmbiente := '1';
    1: fRelDANFE_NFCe.vAmbiente := '2';
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
  fRelDanfe.Destroy;}
end;

procedure TfNFCe.btEnviarNovoClick(Sender: TObject);
var
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  Recibo: string;
  ChaveAcesso: string;
  vGravarChave: Boolean;
  vEnviarTxt: Boolean;
  vIDAux: Integer;

  ID: TTransactionDesc;
  sds: TSQLDataSet;
  Flag: Boolean;
  vCont: Integer;
begin
  fDMNFCe.vDialogoImpressora := fDMCupomFiscal.cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA.AsString = 'S';
  if fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S' then
  begin
    ShowMessage('Cupom não pode ser enviado pois está denegado!');
    exit;
  end;
  vIDAux := fDMCupomFiscal.cdsCupomFiscalID.AsInteger;

  //3.10  02/10/2014
  case ComboBox1.ItemIndex of
    0: vTipo_Emissao_NFe := '1';
    1: vTipo_Emissao_NFe := '5';
    2: vTipo_Emissao_NFe := '9';
  end;
  vTipo_Ambiente_NFe    := IntToStr(ComboBox2.ItemIndex + 1);
  vFinalidade_NFe       := '1';
  vProcesso_Emissao_NFe := '0';
  vEnviarTxt := False;
  //*********

  vNomeArquivo := Monta_Diretorio('X',fDMNFCe.qParametrosENDXMLNFCE.AsString);
  vNomeArqPdf  := Monta_Diretorio('P',fDMNFCe.qParametrosENDPDFNFCE.AsString);
  if vNomeArquivo = '' then
    exit;

  vTextoEnvio := TStringList.Create;
  vTextoEnvio.Clear;
  oNFe := TStringList.Create;
  oNFeStream := TMemoryStream.Create;

  vMSGNFCe := '';
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 70;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('CUPOMFISCAL');
      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
          begin
            Flag := False;
          end;
        end;
      end;
    except
      raise
    end;

    ChaveAcesso         := '';
    vGerar_Chave_Antiga := 'N';
    Gera_Chave(False,False);
    vChave_XML := lbChaveAcesso.Caption;
    lbChaveAcesso.Caption := '';
    uXMLNFCe4_00.prc_Gerar_XML_400(fDMCupomFiscal,fDMNFCe,oNFe);

    oNFe.SaveToStream(oNFeStream);
    oNFeStream.Position := 0;

    Memo1.Text := oNFe.Text;

    vGravarChave := False;
    texto        := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
    vContigencia := Verifica_Contigencia;
    //if not ConectadoInternet(Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString), texto) then
    //  exit;

    ChaveAcesso := EnviarNFe( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                              Texto,
                              oNFeStream,
                              vContigencia,
                              fDMNFCe.qFilial_NFCeCLDTOKEN.AsString,
                              fDMNFCe.qFilial_NFCeCSC.AsString );

    if trim(ChaveAcesso) <> '' then
      vChave_Geral := ChaveAcesso;

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      vMSGNFCe := 'Não foi possível enviar o NFCe!' + #13 + E.Message + #13+ '  Clique para continuar!';
    end;
  end;

  if trim(ChaveAcesso) <> '' then
    btBuscarStatusClick(Sender);

  flag  := False;
  vCont := 0;
  while not flag do
  begin
    vCont := vCont + 1;
    fDmCupomFiscal.qVer.Close;
    fDmCupomFiscal.qVer.ParamByName('ID').AsInteger := vIDAux;
    fDmCupomFiscal.qVer.Open;
    if (trim(fDmCupomFiscal.qVerNFECHAVEACESSO.AsString) = '') or (fDmCupomFiscal.qVerNFECHAVEACESSO.IsNull) then
    begin
      if (posex('Nota fiscal já enviada.',vMSGNFCe) > 0) and (vCont < 2) then
      begin
        if (vChave_XML <> '') then
        begin
          vChave_Geral          := vChave_XML;
          lbChaveAcesso.Caption := vChave_XML;
        end;
        vGerar_Chave_Antiga := '';
        btBuscarStatusClick(sender);
      end
      else
      begin
        if MessageDlg(vMSGNFCe + #13 + #13 + #13 + '*** Deseja reenviar o cupom?' ,mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          if vIDAux <> fDMCupomFiscal.cdsCupomFiscalID.AsInteger then
            fDMCupomFiscal.prcLocalizar(vIDAux);
          FreeAndNil(oNFeStream);
          FreeAndNil(oNfe);
          btEnviarNovoClick(Sender);
        end;
        flag := True;
      end
    end
    else
      flag := True;
  end;

  fDmCupomFiscal.qVer.Close;
  FreeAndNil(oNFeStream);
  FreeAndNil(oNfe);
end;

procedure TfNFCe.btBuscarStatusClick(Sender: TObject);
var
  oNFeStream, DANFE: TMemoryStream;
  Recibo: string;
  NroProtocolo: string;
  ChaveAcesso: string;
  CodigoErro: integer;
  MensagemErro: string;

  ID: TTransactionDesc;
  sds: TSQLDataSet;
  Flag: Boolean;
  vCont: Integer;
begin
  if (trim(lbChaveAcesso.Caption) = '') and (trim(vGerar_Chave_Antiga) = '')  and (trim(vChave_Geral) = '') then
  begin
    vGerar_Chave_Antiga := 'N';
    Gera_Chave(False,False);
    vChave_Geral          := lbChaveAcesso.Caption;
    lbChaveAcesso.Caption := '';
  end;
  if trim(lbChaveAcesso.Caption) <> '' then
    vChave_Geral := lbChaveAcesso.Caption;
  if trim(vChave_Geral) = '' then
  begin
    ShowMessage('Nota não enviada!');
    exit;
  end;

  texto := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);

  vNomeArquivo := Monta_Diretorio('X',fDMNFCe.qParametrosENDXMLNFCE.AsString);
  vNomeArqPdf  := Monta_Diretorio('P',fDMNFCe.qParametrosENDPDFNFCE.AsString);
  if vNomeArquivo = '' then
    exit;

  vContigencia := Verifica_Contigencia;
  ChaveAcesso  := vChave_Geral;
  vChave_Geral := '';

  oNFeStream := TMemoryStream.Create;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 71;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('CUPOMFISCAL');
      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
          begin
            Flag := False;
          end;
        end;
      end;
    except
      raise
    end;

    BuscarStatusNF( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                    texto,
                    ChaveAcesso,
                    vContigencia,
                    true,//NFCe NFe 23/09/2015
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

    if (CodigoErro > 0) and (CodigoErro <> 302) and (CodigoErro <> 301) then
      raise Exception.Create(MensagemErro)
    else
    begin
      fDMCupomFiscal.Gravar_Envio_Nota(Recibo,NroProtocolo,ChaveAcesso,1,ComboBox2.ItemIndex+1,CodigoErro,fDMNFCe.mDadosAdicionaisNFeObs.Value);

      lbErro.Visible := (fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S');
      lbErro.Caption := 'CUPOM DENEGADO: ' + fDMCupomFiscal.cdsCupomFiscalMOTIVO_DENEGADO.AsString;

      if fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S' then
        vMSGNFCe := '*** CUPOM FISCAL - DENEGADO:  ' + fDMCupomFiscal.cdsCupomFiscalMOTIVO_DENEGADO.AsString
                   +#13 + #13 + ' Verificar esta ocorrência, venda não realizada!'
      else
        vMSGNFCe := '';
      //btDanfeClick(fNFCe);
    end;

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      vMSGNFCe := vMSGNFCe + #13 + #13 + 'Não foi possível buscar o status da NFCe!' + #13 + E.Message + #13+ '  Clique para continuar!';
    end;
  end;

  if trim(vMSGNFCe) <> '' then
    MessageDlg(vMSGNFCe, mtInformation, [mbOk], 0)
  else
  begin
    try
      btDanfeClick(fNFCe);
    except
    end;
  end;

  FreeAndNil(oNFeStream);
end;

procedure TfNFCe.prc_Controlar_Envio_Email(Tipo: String);
begin
end;

procedure TfNFCe.prc_Configura_Tela;
var
  i: Integer;
  vFlagConexao: Boolean;
begin
  //Tag = 1   Inutilizar
  //Tag = 2   Cancelar
  prc_Posicionar_Tabelas;
  if Tag = 1 then
  begin
    if fDMNFCe.qFilialNFCEPRODUCAO.AsString = '1' then
      ComboBox2.ItemIndex := 0
    else
      ComboBox2.ItemIndex := 1;
  end
  else
  if Tag <> 1 then
  begin
    if trim(fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) <> '' then
    begin
      if fDMCupomFiscal.cdsCupomFiscalNFEAMBIENTE.AsString = '1' then
        ComboBox2.ItemIndex := 0
      else
        ComboBox2.ItemIndex := 1;
      ComboBox2.Enabled := False;
    end
    else
    begin
      if fDMNFCe.qFilialNFCEPRODUCAO.AsString = '1' then
        ComboBox2.ItemIndex := 0
      else
        ComboBox2.ItemIndex := 1;
      ComboBox2.Enabled := True;
    end;
  end;

  if Tag <> 1  then
  begin
    Gera_NFCe;
    lbErro.Visible := (fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S');
    lbErro.Caption := 'CUPOM DENEGADO: ' + fDMCupomFiscal.cdsCupomFiscalMOTIVO_DENEGADO.AsString;

    lbRecibo.Caption                   := fDMCupomFiscal.cdsCupomFiscalNFERECIBO.AsString;
    lbNroProtocolo.Caption             := fDMCupomFiscal.cdsCupomFiscalNFEPROTOCOLO.AsString;
    lbChaveAcesso.Caption              := fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString;
    lbNroProtocoloCancelamento.Caption := fDMCupomFiscal.cdsCupomFiscalNFEPROTOCOLO_CANCELADA.AsString;
    //NFCe
    //lbCodBarraContingencia.Caption := fDMCupomFiscal.cdsCupomFiscalNFECODBARRA_CONTINGENCIA.AsString;
    if Tag <> 5 then
    begin
      if fDMCupomFiscal.cdsCupomFiscalTIPO_ENVIONFE.AsString = '1-NORMAL' then
        ComboBox1.ItemIndex := 0
      else
      if fDMCupomFiscal.cdsCupomFiscalTIPO_ENVIONFE.AsString = '5-CONTINGENCIA FS-DA' then
        ComboBox1.ItemIndex := 1
      else
      if fDMCupomFiscal.cdsCupomFiscalTIPO_ENVIONFE.AsString = '9-CONTINGENCIA off-line' then
        ComboBox1.ItemIndex := 2;
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
        ShowMessage('Erro: ' + E.Message + #13 + '! NFeConfig não aberto ou Servidor não encontrado!'+#13+#13+
                    'PROGRAMA NFECONFIG PODE ESTAR FECHADO' + #13+#13+
                    'Clicar no botão "OUTRAS OPÇÕES" e depois na opção "Abrir NFeConfig"');
      end;
    end;
  end;
  if vPessoaTransp = '' then
    vPessoaTransp := 'J';
end;

procedure TfNFCe.prc_Danfe_Flexdocs;
var
  oNFe: TStrings;
  oNFeStream, QRCodeStream: TMemoryStream;
  vNomeArq: String;
  vArqAux: String;
  jGraphic: TBitmap;//TJPEGImage;
begin
  fDMConsNotaEletronica := TDMConsNotaEletronica.Create(Self);

  fDMNFCe.cdsCupomFiscal.Close;
  fDMNFCe.sdsCupomFiscal.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsCupomFiscalID.AsInteger;
  fDMNFCe.cdsCupomFiscal.Open;

  fDMNFCe.qFilial.Close;
  fDMNFCe.qFilial.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
  fDMNFCe.qFilial.Open;

  fDMNFCe.qFilial_NFCe.Close;
  fDMNFCe.qFilial_NFCe.ParamByName('ID').AsInteger := fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;
  fDMNFCe.qFilial_NFCe.Open;

  vFilial := fDMCupomFiscal.cdsCupomFiscalFILIAL.AsInteger;

  if fDMCupomFiscal.cdsPessoaCODIGO.AsInteger <> fDMNFCe.cdsCupomFiscalID_CLIENTE.AsInteger then
    fDMCupomFiscal.cdsPessoa.Locate('CODIGO',fDMNFCe.cdsCupomFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  vEmail_Fortes := fDMCupomFiscal.cdsPessoaEMAIL_NFE.AsString;

  oNFe         := TStringList.Create;
  oNFeStream   := TMemoryStream.Create;
  QRCodeStream := TMemoryStream.Create;
  prc_Configura_Variaveis_Envio;
  if (trim(fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) <> '') and (ComboBox6.ItemIndex <= 0) then
  begin
    fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Close;
    fDMConsNotaEletronica.sdsNota_Fiscal_Eletronica.ParamByName('CHAVE_ACESSO').AsString := fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString;
    fDMConsNotaEletronica.cdsNota_Fiscal_Eletronica.Open;
    fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaXML_ASSINADO_PROC.SaveToStream(oNFeStream);
    oNFeStream.Position := 0;
    //oNFeStream.SaveToFile('C:\a\aaa.xml');
    onfe.LoadFromStream(oNFeStream);
    //fDMConsNotaEletronica.cdsNota_Fiscal_EletronicaXML_ASSINADO_PROC.SaveToStream(oNFeStream);
  end
  else
  if (trim(fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) = '') or (ComboBox6.ItemIndex = 1) then
  begin
    try
      vGerar_Chave_Antiga := 'N';
      Gera_Chave(False,False);
      vChave_XML := lbChaveAcesso.Caption;
      lbChaveAcesso.Caption := '';
      prc_Gerar_XML_400(fDMCupomFiscal,fDMNFCe,oNFe);
      oNFe.SaveToStream(oNFeStream);
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao gerar XML da NFCe: ' + #13 + E.Message);
      end;
    end;
  end
  else
  if (ComboBox6.ItemIndex = 2) then
  begin
    vArqAux := Monta_Diretorio('X',fDMNFCe.qParametrosENDXMLNFCE.AsString);
    vArqAux := vArqAux + '_' + fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString + '.xml';
    oNFe.LoadFromFile(vArqAux);
    //oNFeStream.LoadFromFile(vArqAux);
  end;

  if not CheckBox1.Checked then
  begin
    QRCodeStream := TMemoryStream.Create;
    GerarQRCodeNFCe(trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                    texto,
                    fDMNFCe.qFilial_NFCeCLDTOKEN.AsString, // idToken
                    fDMNFCe.qFilial_NFCeCSC.AsString, // CSC
                    Trim(oNFe.Text),
                    QRCodeStream);
    jGraphic := TBitmap.Create;// TJPEGImage.Create;
    //30/11/2015  Cleomar
    try
      QRCodeStream.Position := 0;
      jGraphic.LoadFromStream(QRCodeStream);
      //Image1.Picture.Assign(jGraphic);
    except
      FreeAndNil(jGraphic);
      raise;
    end;
  end;

  fRelDanfe_NFCe := TfRelDanfe_NFCe.Create(Self);
  //fRelDanfe_NFCe.fDmCupomFiscal := fDmCupomFiscal;
  fRelDanfe_NFCe.fDmNFCe := fDmNFCe;
  fRelDanfe_NFCe.RLReport1.PrintDialog := fDmNFCe.vDialogoImpressora;
  if not CheckBox1.Checked then
    fRelDanfe_NFCe.RLImage2.Picture.Graphic := jGraphic;
  if ComboBox3.ItemIndex = 0 then
  begin
//    fRelDanfe_NFCe.RLReport1.Prepare := True;
    fRelDanfe_NFCe.RLReport1.Print;
  end
  else
    fRelDanfe_NFCe.RLReport1.PreviewModal;
  FreeAndNil(fRelDanfe_NFCe);

  //oNFeStream.Position := 0;

  FreeAndNil(fDMConsNotaEletronica);
  FreeAndNil(oNFe);
  FreeAndNil(oNFeStream);
  //FreeAndNil(Danfe);
end;

procedure TfNFCe.prc_Configura_Variaveis_Envio;
begin
  case ComboBox1.ItemIndex of
    0: vTipo_Emissao_NFe := '1';
    1: vTipo_Emissao_NFe := '2';
    3: vTipo_Emissao_NFe := '3';
    4: vTipo_Emissao_NFe := '5';
  end;
  vTipo_Ambiente_NFe    := IntToStr(ComboBox2.ItemIndex + 1);
  vFinalidade_NFe       := '1';
  vProcesso_Emissao_NFe := '0';
  vMarca_Homologacao    := '';
  vCliente_Canhoto      := '';
  if fDMCupomFiscal.cdsPessoaCODIGO.AsInteger <> fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger then
    fDMCupomFiscal.cdsPessoa.Locate('CODIGO',fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,([Locaseinsensitive]));
  vCliente_Canhoto := fDMCupomFiscal.cdsPessoaNOME.AsString;
  if fDMCupomFiscal.cdsPessoaPESSOA.AsString = 'J' then
    vCliente_Canhoto := vCliente_Canhoto + ', CNPJ: ' + fDMCupomFiscal.cdsPessoaCNPJ_CPF.AsString
  else
  if fDMCupomFiscal.cdsPessoaPESSOA.AsString = 'F' then
    vCliente_Canhoto := vCliente_Canhoto + ', CPF: ' + fDMCupomFiscal.cdsPessoaCNPJ_CPF.AsString
  else
    vCliente_Canhoto := vCliente_Canhoto + ', DOC: ' + fDMCupomFiscal.cdsPessoaCNPJ_CPF.AsString;
  vCliente_Canhoto := 'Recebemos de ' + fDMCupomFiscal.cdsFilialNOME.AsString + ', os produtos constantes da nota fiscal indicada ao lado: '
                    + 'Data de Emissão:' + fDMCupomFiscal.cdsCupomFiscalDTEMISSAO.AsString
                    + ', Valor Total: R$' + FormatFloat('###,###,##0.00',fDMCupomFiscal.cdsCupomFiscalVLR_TOTAL.AsFloat)
                    + ', Destinatário: ' + vCliente_Canhoto;
  if vTipo_Ambiente_NFe = '2' then
    vMarca_Homologacao := 'HOMOLOGAÇÃO ';
  if fDMCupomFiscal.cdsCupomFiscalCANCELADO.AsString = 'S' then
    vMarca_Homologacao := 'CANCELADA'
  else
  if fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S' then
    vMarca_Homologacao := 'DENEGADA';
end;

procedure TfNFCe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    CheckBox1.Visible := not(CheckBox1.Visible);
end;

procedure TfNFCe.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    ComboBox6.ItemIndex := 1;
    ComboBox3.ItemIndex := 1;
  end;
end;

procedure TfNFCe.prc_Abrir_Produto(vId: String);
begin
  fDMCupomFiscal.cdsProduto.Close;
  fDMCupomFiscal.sdsProduto.CommandText := fDMCupomFiscal.ctProduto;
  fDMCupomFiscal.sdsProduto.CommandText := fDMCupomFiscal.sdsProduto.CommandText + ' AND ID = ' + vID + ' ORDER BY NOME';
  fDMCupomFiscal.cdsProduto.Open;
end;

procedure TfNFCe.btnAjustaRecClick(Sender: TObject);
begin
  vGerar_Chave_Antiga := 'N';
  Gera_Chave(False,False);

  fDMNFCe.cdsNota_Eletronica.Close;
  fDMNFCe.sdsNota_Eletronica.ParamByName('CHAVE_ACESSO').AsString := lbChaveAcesso.Caption;
  fDMNFCe.cdsNota_Eletronica.Open;

  if fDMNFCe.cdsNota_EletronicaID.AsInteger <= 0 then
    exit;

  fDMNFCe.prc_Abrir_NFe_Log(True);

  fDMNFCe.vNRec_Orig := '';
  fDMNFCe.cdsNFe_Log.First;
  while not fDMNFCe.cdsNFe_Log.Eof do
  begin
    fDMNFCe.prc_Procurar_Recibo;
    if trim(fDMNFCe.vNRec_Orig) <> '' then
      fDMNFCe.cdsNFe_Log.Last;
    fDMNFCe.cdsNFe_Log.Next;
  end;

  if trim(fDMNFCe.vNRec_Orig) <> '' then
  begin
    fDMNFCe.cdsNota_Eletronica.Edit;
    fDMNFCe.cdsNota_EletronicaNRO_RECIBO.AsString := fDMNFCe.vNRec_Orig;
    fDMNFCe.cdsNota_EletronicaXML_ASSINADO_PROC.Clear;
    fDMNFCe.cdsNota_Eletronica.Post;
    fDMNFCe.cdsNota_Eletronica.ApplyUpdates(0);

    if MessageDlg('Recibo Atualizado, deseja buscar o Status?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      btBuscarStatusClick(Sender);
  end;
end;

procedure TfNFCe.btnLogClick(Sender: TObject);
var
  ffrmNFCE_Log: TfrmNFCE_Log;
begin
  vGerar_Chave_Antiga := 'N';
  Gera_Chave(False,False);

  fDMNFCe.cdsNota_Eletronica.Close;
  fDMNFCe.sdsNota_Eletronica.ParamByName('CHAVE_ACESSO').AsString := lbChaveAcesso.Caption;
  fDMNFCe.cdsNota_Eletronica.Open;

  fDMNFCe.prc_Abrir_NFe_Log(False);

  ffrmNFCE_Log := TfrmNFCE_Log.Create(self);
  ffrmNFCE_Log.fDMNFCe := fDMNFCe;
  ffrmNFCE_Log.btnAtualizaRec.Enabled := (trim(fDMCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString) = '');
  ffrmNFCE_Log.ShowModal;
  FreeAndNil(ffrmNFCE_Log);
end;

procedure TfNFCe.prc_Abrir_CBarra;
var
 vTam : String;
begin
  vTam := '';
  if trim(fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString) <> '' then
    vTam := fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString;
  fDMNFCe.qCBarra.Close;
  fDMNFCe.qCBarra.ParamByName('ID_PRODUTO').AsInteger := fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger;
  fDMNFCe.qCBarra.ParamByName('ID_COR').AsInteger     := fDMCupomFiscal.cdsCupom_ItensID_COR_COMBINACO.AsInteger;
  fDMNFCe.qCBarra.ParamByName('TAMANHO').AsString     := vTam;
  fDMNFCe.qCBarra.Open;
end;

procedure TfNFCe.prc_Abrir_qProduto_Forn;
var
  vComando : String;
  vTam : String;
begin
  vTam := '';
  if (fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString) <> '' then
    vTam := fDMCupomFiscal.cdsCupom_ItensTAMANHO.AsString;
  vComando := '';
  if trim(vTam) <> '' then
    vComando := ' AND TAMANHO = ' + QuotedStr(vTam);
  fDMNFCe.qProduto_Forn.Close;
  fDMNFCe.qProduto_Forn.SQL.Text := fDMNFCe.ctqProduto_Forn + vComando;
  fDMNFCe.qProduto_Forn.ParamByName('ID').AsInteger            := fDMCupomFiscal.cdsCupom_ItensID_PRODUTO.AsInteger;
  fDMNFCe.qProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger := fDMCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger;
  fDMNFCe.qProduto_Forn.ParamByName('ID_COR').AsInteger        := fDMCupomFiscal.cdsCupom_ItensID_COR_COMBINACO.AsInteger;
  fDMNFCe.qProduto_Forn.Open;
end;

procedure TfNFCe.btEnviarSincronoClick(Sender: TObject);
var
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  Recibo: string;
  ChaveAcesso: string;
  vGravarChave: Boolean;
  vEnviarTxt: Boolean;
  vIDAux: Integer;

  ID: TTransactionDesc;
  sds: TSQLDataSet;
  Flag: Boolean;
  vCont: Integer;

  vNumProtocolo : String;
  CodigoErro : Integer;
begin
  CodigoErro := 0;
  fDMNFCe.vDialogoImpressora := fDMCupomFiscal.cdsCupomParametrosEXIBIR_DIALOGO_IMPRESSORA.AsString = 'S';
  if fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S' then
  begin
    ShowMessage('Cupom não pode ser enviado pois está denegado!');
    exit;
  end;
  vIDAux := fDMCupomFiscal.cdsCupomFiscalID.AsInteger;

  //3.10  02/10/2014
  case ComboBox1.ItemIndex of
    0: vTipo_Emissao_NFe := '1';
    1: vTipo_Emissao_NFe := '5';
    2: vTipo_Emissao_NFe := '9';
  end;
  vTipo_Ambiente_NFe    := IntToStr(ComboBox2.ItemIndex + 1);
  vFinalidade_NFe       := '1';
  vProcesso_Emissao_NFe := '0';
  vEnviarTxt := False;
  //*********

  vNomeArquivo := Monta_Diretorio('X',fDMNFCe.qParametrosENDXMLNFCE.AsString);
  vNomeArqPdf  := Monta_Diretorio('P',fDMNFCe.qParametrosENDPDFNFCE.AsString);
  if vNomeArquivo = '' then
    exit;

  vTextoEnvio := TStringList.Create;
  vTextoEnvio.Clear;
  oNFe := TStringList.Create;
  oNFeStream := TMemoryStream.Create;

  vMSGNFCe := '';
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 71;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('CUPOMFISCAL');
      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
          begin
            Flag := False;
          end;
        end;
      end;
    except
      raise
    end;

    ChaveAcesso         := '';
    vNumProtocolo       := '';
    vGerar_Chave_Antiga := 'N';
    Gera_Chave(False,False); //aqui posso enviar no modo Síncrono para testar, é com o ACBR   18/11/2018
    vChave_XML := lbChaveAcesso.Caption;
    lbChaveAcesso.Caption := '';
    uXMLNFCe4_00.prc_Gerar_XML_400(fDMCupomFiscal,fDMNFCe,oNFe);

    oNFe.SaveToStream(oNFeStream);
    oNFeStream.Position := 0;

    Memo1.Text := oNFe.Text;

    vGravarChave := False;
    texto        := Monta_Texto(fDMNFCe.qFilialCNPJ_CPF.AsString,14);
    vContigencia := Verifica_Contigencia;
    //if not ConectadoInternet(Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString), texto) then
    //  exit;

    {ChaveAcesso := EnviarNFe( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                              Texto,
                              oNFeStream,
                              vContigencia,
                              fDMNFCe.qFilial_NFCeCLDTOKEN.AsString,
                              fDMNFCe.qFilial_NFCeCSC.AsString );}
                                         
    ChaveAcesso := EnviarNFeSinc( Trim(fDMNFCe.qParametrosLOCALSERVIDORNFE.AsString),
                                 Texto,
                                 oNFeStream,
                                 vContigencia,
                                 fDMNFCe.qFilial_NFCeCLDTOKEN.AsString,
                                 fDMNFCe.qFilial_NFCeCSC.AsString,
                                 vNumProtocolo);

    if trim(ChaveAcesso) <> '' then
      vChave_Geral := ChaveAcesso;

    //18/11/2018  Gravar aqui o xml sem precisar Buscar o Status
    lbChaveAcesso.Caption  := ChaveAcesso;
    lbRecibo.Caption       := Recibo;
    lbNroProtocolo.Caption := vNumProtocolo;
    if Trim(lbNroProtocolo.Caption) = '' then
      lbChaveAcesso.Caption := '';

    oNFeStream.Position := 0;
    vNomeArquivo        := vNomeArquivo + '_' + lbChaveAcesso.Caption + '.xml';
    SalvarUTF8( oNFeStream, vNomeArquivo );

    //Verificar o código do Erro 18/11/2018
    //if (CodigoErro > 0) and (CodigoErro <> 302) and (CodigoErro <> 301) then
    //  raise Exception.Create(MensagemErro)
    //else
    begin
      fDMCupomFiscal.Gravar_Envio_Nota(Recibo,vNumProtocolo,lbChaveAcesso.Caption,1,ComboBox2.ItemIndex+1,CodigoErro,fDMNFCe.mDadosAdicionaisNFeObs.Value);

      lbErro.Visible := (fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S');
      lbErro.Caption := 'CUPOM DENEGADO: ' + fDMCupomFiscal.cdsCupomFiscalMOTIVO_DENEGADO.AsString;

      if fDMCupomFiscal.cdsCupomFiscalNFEDENEGADA.AsString = 'S' then
        vMSGNFCe := '*** CUPOM FISCAL - DENEGADO:  ' + fDMCupomFiscal.cdsCupomFiscalMOTIVO_DENEGADO.AsString
                   +#13 + #13 + ' Verificar esta ocorrência, venda não realizada!'
      else
        vMSGNFCe := '';
    end;
    //************************

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      vMSGNFCe := 'Não foi possível enviar o NFCe!' + #13 + E.Message + #13+ '  Clique para continuar!';
    end;
  end;

  flag  := False;
  vCont := 0;
  while not flag do
  begin
    vCont := vCont + 1;
    fDmCupomFiscal.qVer.Close;
    fDmCupomFiscal.qVer.ParamByName('ID').AsInteger := vIDAux;
    fDmCupomFiscal.qVer.Open;
    if (trim(fDmCupomFiscal.qVerNFECHAVEACESSO.AsString) = '') or (fDmCupomFiscal.qVerNFECHAVEACESSO.IsNull) then
    begin
      if (posex('Nota fiscal já enviada.',vMSGNFCe) > 0) and (vCont < 2) then
      begin
        if (vChave_XML <> '') then
        begin
          vChave_Geral          := vChave_XML;
          lbChaveAcesso.Caption := vChave_XML;
        end;
        vGerar_Chave_Antiga := '';
        btBuscarStatusClick(sender);
      end
      else
      begin
        if MessageDlg(vMSGNFCe + #13 + #13 + #13 + '*** Deseja reenviar o cupom?' ,mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          if vIDAux <> fDMCupomFiscal.cdsCupomFiscalID.AsInteger then
            fDMCupomFiscal.prcLocalizar(vIDAux);
          FreeAndNil(oNFeStream);
          FreeAndNil(oNfe);
          btEnviarSincronoClick(Sender);
        end;
        flag := True;
      end
    end
    else
      flag := True;
  end;

  if trim(vMSGNFCe) <> '' then
    MessageDlg(vMSGNFCe, mtInformation, [mbOk], 0)
  else
  begin
    try
      btDanfeClick(fNFCe);
    except
    end;
  end;

  fDmCupomFiscal.qVer.Close;
  FreeAndNil(oNFeStream);
  FreeAndNil(oNfe);
end;

end.
