{
Exemplo de uso:
  with TSendMail.Create(Self) do
    try
      Subject:='Hello World!';
      Body   :='E aí?';
      Recipients.Add('fulano1@dominio1.com.br');
      Recipients.Add('CC:fulano2@dominio2.com.br');
      Attachments.Add('LivroCaixa.pdf');
      EditDialog:=true;
      Send;
    finally
      Free;
    end;
}
unit SendMail;

interface

uses
  Classes, Dialogs, RzSndMsg, JvMail, ComObj, SqlExpr;

type
  TSendMail=class(TComponent)
  private
    { Private declarations }
    fLastError    :integer;
    fSubject      :string;
    fBody         :string;
    fSenderName   :string;
    fSenderAddress:string;
    fRecipients   :TStrings;
    fAttachments  :TStrings;
    fEditDialog   :boolean;
    //
    procedure   SetRecipients(Value:TStrings);
    procedure   SetAttachments(Value:TStrings);
  protected
    { Protected declarations }
  public
    { Public declarations }
    vTipo_Email : String;
    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;
    //
    function    Send:boolean;
//    function    MAPIErrorDescription(aErrorCode:integer):string; 
    //
    property    LastError:integer read fLastError;
  published
    { Published declarations }
    property    Subject      :string   read fSubject       write fSubject;
    property    Body         :string   read fBody          write fBody;
    //
    property    Recipients   :TStrings read fRecipients    write SetRecipients;
    property    Attachments  :TStrings read fAttachments   write SetAttachments;

    property    EditDialog   :boolean  read fEditDialog    write fEditDialog;

    property    SenderName   :string   read fSenderName    write fSenderName;
    property    SenderAddress:string   read fSenderAddress write fSenderAddress;
  end;

  function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
  function SendEMailByMAPI2(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
  function SendEMailByMAPI_OLE(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
  procedure Enviar_Email_Direto(Subject,Body:string; Attachments:TStrings);

implementation

uses
  MAPI, SysUtils, Forms, uUtilPadrao, DmdDatabase, uNFeComandos, StrUtils;

function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
var
  Msg: TRzSendMessage;

begin
  Msg := TRzSendMessage.Create(nil);
  try
    Msg.Attachments.Assign( Attachments );
    Msg.ToRecipients.Assign( Recipients );
    Msg.Subject := Subject;
    Msg.MessageText.Text := Body;
    Msg.Review := WithOpenMessage;
    Msg.Send;
  finally
    FreeAndNil(Msg);
  end;
end;

function SendEMailByMAPI2(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
const
	olMailItem = 0;
var
  vNomeArquivo : String;
  JvMail1 : TJvMail;
begin
  try
    JvMail1 := TJvMail.Create(nil);

    JvMail1.Clear;
    JvMail1.Attachment.Clear;
    JvMail1.Recipient.AddRecip(vEmail_Fortes);

    vNomeArquivo := Attachments[0];
    JvMail1.Subject := Subject;
    JvMail1.Attachment.Clear;
    JvMail1.Attachment.Add(vNomeArquivo);
    JvMail1.Body.Clear;
    JvMail1.Body.Add(Body);
    JvMail1.Body.Add('');

    //*************
    JvMail1.Body.Add('');

    JvMail1.SendMail(True);
  finally
    FreeAndNil(JvMail1);
  end;
end;

function SendEMailByMAPI_OLE(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
const
 olMailItem = 0;
var
  Email : String;
  vNomeArquivo : String;
	Outlook: OLEVariant;
	MailItem: Variant;
begin
  try
    try
      Outlook:=GetActiveOleObject('Outlook.Application') ;
    except
      Outlook:=CreateOleObject('Outlook.Application') ;
    end;

    MailItem := Outlook.CreateItem(olMailItem);
    vNomeArquivo := Attachments[0];
    //MailItem.Recipients.Clear;
    MailItem.Recipients.Add(vEmail_Fortes);


    MailItem.Subject := Subject;
    MailItem.Body    := Body;

    //MailItem.Attachments.Clear;
    MailItem.Attachments.Add(vNomeArquivo) ;

    MailItem.Send; //MailItem.Send to skip the window and just send the email
    VarClear(Outlook);
  finally
    FreeAndNil(Outlook);
    //FreeAndNil(MailItem);
  end;
end;

procedure Enviar_Email_Direto(Subject,Body:string; Attachments:TStrings);
var
  sds: TSQLDataSet;
  sds_Param: TSQLDataSet;
  vCNPJ_Filial : String;
  vSenhaEmail : String;
  lista_Anexo: TStringList;
  i : Integer;
  vCorpo_EmailAux : String;
  vLocalServidorNFe : String; 
begin
  sds         := TSQLDataSet.Create(nil);
  sds_Param   := TSQLDataSet.Create(nil);
  Lista_Anexo := TStringList.Create;
  Lista_Anexo.Clear;
  lista_Anexo.Add(Attachments.Text);
  //lista_Anexo.Add('C:\Delphi7\SSFacil\EXE_Novo\Ordem_de_Compra.pdf');
  try
    sds_Param.SQLConnection := dmDatabase.scoDados;
    sds_Param.NoMetadata    := True;
    sds_Param.GetMetadata   := False;
    sds_Param.CommandText   := 'SELECT LOCALSERVIDORNFE, '
                             + '(SELECT MAX(F.ID) ID_FILIAL FROM FILIAL F WHERE F.principal = ' + QuotedStr('S') + ')'
                             + ' FROM PARAMETROS ';
    sds_Param.Open;
    if vFilial <= 0 then
      vFilial := sds_Param.FieldByName('ID_FILIAL').AsInteger;
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.CommandText := 'SELECT FE.ID ID_FILIAL, FE.id_config_email, CE.nome_config, CE.remetente_nome, CE.remetente_email,'
                     + ' CE.smtp_cliente, CE.smtp_porta, CE.smtp_requer_ssl, CE.smtp_usuario, CE.smtp_senha,'
                     + ' CE.solicitar_confirmacao, CE.base, F.cnpj_cpf CNPJ_CPF_FILIAL, F.LOCALSERVIDORNFE'
                     + ' FROM FILIAL_EMAIL FE'
                     + ' INNER JOIN FILIAL F'
                     + ' ON FE.ID = F.ID'
                     + ' INNER JOIN CONFIG_EMAIL CE'
                     + ' ON FE.id_config_email = CE.id'
                     + ' WHERE FE.ID = ' + IntToStr(vFilial)
                     + '   AND FE.TIPO_REG = ' + IntToStr(vTipo_Config_Email);
    sds.Open;

    vSenhaEmail := Descriptografar(sds.FieldByName('BASE').AsInteger
                                 , 'ssfacil'
                                 , sds.FieldByName('SMTP_SENHA').AsString );

    vCNPJ_Filial :=Monta_Texto(sds.FieldByName('CNPJ_CPF_FILIAL').AsString,14);
    vLocalServidorNFe := sds_Param.FieldByName('LOCALSERVIDORNFE').AsString;
    if sds.FieldByName('LOCALSERVIDORNFE').AsString <> '' then
      vLocalServidorNFe := sds.FieldByName('LOCALSERVIDORNFE').AsString;

    EnviarEmail2(vLocalServidorNFe,
                 vCNPJ_Filial,
                 sds.FieldByName('REMETENTE_EMAIL').AsString,
                 sds.FieldByName('REMETENTE_NOME').AsString,
                 sds.FieldByName('SMTP_CLIENTE').AsString,
                 sds.FieldByName('SMTP_PORTA').AsString,
                 sds.FieldByName('SMTP_REQUER_SSL').AsString,
                 sds.FieldByName('SMTP_USUARIO').AsString,
                 vSenhaEmail,
                 sds.FieldByName('SOLICITAR_CONFIRMACAO').AsString,
                 vEmail_Fortes,
                 '', 
                 vEmail_Assunto_Fortes,
                 vEmail_Fortes_Corpo,
                 lista_Anexo);
                 //vEmail_Assunto_Fortes,'teste a',lista_Anexo);


  finally
    FreeAndNil(sds);
    FreeAndNil(sds_Param);
    FreeAndNil(lista_Anexo);
  end;

end;

{ TSendMail }

constructor TSendMail.Create(aOwner:TComponent);
begin
  inherited;
  //
  EditDialog  :=true;
  fRecipients :=TStringList.Create;
  fAttachments:=TStringList.Create;
end;

destructor TSendMail.Destroy;
begin
  fRecipients.free;
  Attachments.free;
  //
  inherited;
end;

procedure TSendMail.SetRecipients(Value:TStrings);
begin
  fRecipients.Assign(Value);
end;

procedure TSendMail.SetAttachments(Value:TStrings);
begin
  Attachments.Assign(Value);
end;

function TSendMail.Send:boolean;
begin
  if vTipo_Email = '1' then
    fLastError:=SendEMailByMAPI2(SenderName,SenderAddress,Subject,Body,Recipients,Attachments,EditDialog)
  else
  if vTipo_Email = '2' then
    fLastError:=SendEMailByMAPI_OLE(SenderName,SenderAddress,Subject,Body,Recipients,Attachments,EditDialog)
  else
  if vTipo_Email = '3' then
  begin
    fLastError:=0;
    Enviar_Email_Direto(Subject,Body,Attachments);
  end
  else
    fLastError:=SendEMailByMAPI(SenderName,SenderAddress,Subject,Body,Recipients,Attachments,EditDialog);
  result    :=(LastError=SUCCESS_SUCCESS);
end;

{function TSendMail.MAPIErrorDescription(aErrorCode:integer):string;
begin
  case aErrorCode of
    MAPI_E_USER_ABORT              : result:='User cancelled request';
    MAPI_E_FAILURE                 : result:='General MAPI failure';
    MAPI_E_LOGON_FAILURE           : result:='Logon failure';
    MAPI_E_DISK_FULL               : result:='Disk full';
    MAPI_E_INSUFFICIENT_MEMORY     : result:='Insufficient memory';
    MAPI_E_ACCESS_DENIED           : result:='Access denied';
    MAPI_E_TOO_MANY_SESSIONS       : result:='Too many sessions';
    MAPI_E_TOO_MANY_FILES          : result:='Too many files open';
    MAPI_E_TOO_MANY_RECIPIENTS     : result:='Too many recipients';
    MAPI_E_ATTACHMENT_NOT_FOUND    : result:='Attachment not found';
    MAPI_E_ATTACHMENT_OPEN_FAILURE : result:='Failed to open attachment';
    MAPI_E_ATTACHMENT_WRITE_FAILURE: result:='Failed to write attachment';
    MAPI_E_UNKNOWN_RECIPIENT       : result:='Unknown recipient';
    MAPI_E_BAD_RECIPTYPE           : result:='Invalid recipient type';
    MAPI_E_NO_MESSAGES             : result:='No messages';
    MAPI_E_INVALID_MESSAGE         : result:='Invalid message';
    MAPI_E_TEXT_TOO_LARGE          : result:='Text too large.';
    MAPI_E_INVALID_SESSION         : result:='Invalid session';
    MAPI_E_TYPE_NOT_SUPPORTED      : result:='Type not supported';
    MAPI_E_AMBIGUOUS_RECIPIENT     : result:='Ambiguous recipient';
    MAPI_E_MESSAGE_IN_USE          : result:='Message in use';
    MAPI_E_NETWORK_FAILURE         : result:='Network failure';
    MAPI_E_INVALID_EDITFIELDS      : result:='Invalid edit fields';
    MAPI_E_INVALID_RECIPS          : result:='Invalid recipients';
    MAPI_E_NOT_SUPPORTED           : result:='Not supported';
  else
    result:='Unknown Error Code: '+IntToStr(aErrorCode);
  end;
end;}

end.

