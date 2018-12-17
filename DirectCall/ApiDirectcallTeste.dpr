unit ApiDirectcallTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdHttp, xmldom, XMLIntf, msxmldom, MSXML,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdIOHandler,
  IdIOHandlerSocket, IdServerIOHandler, IdSSLOpenSSL;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    client_id: TEdit;
    Label2: TLabel;
    client_secret: TEdit;
    Label3: TLabel;
    access_token: TEdit;
    request_token: TButton;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    sms: TMemo;
    enviar_sms: TButton;
    enviar_voz: TButton;
    de_sms: TEdit;
    Label6: TLabel;
    d: TLabel;
    para_sms: TEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    origem: TEdit;
    destino: TEdit;
    chamar: TButton;
    IdHTTP: TIdHTTP;
    procedure request_tokenClick(Sender: TObject);
    procedure enviar_smsClick(Sender: TObject);
    procedure enviar_vozClick(Sender: TObject);
    procedure chamarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses ApiDirectcall;

{$R *.dfm}

function dopost(AMethod: string; ARequest: TStringList): string;
var
  IdHTTP: TIdHttp;
  idHandle: TIdSSLIOHandlerSocket;
  RBody: TStringStream;
  log: TStringList;
begin
  IdHTTP := TIdHttp.Create(nil);
  idHandle := TIdSSLIOHandlerSocket.Create(nil);
  idHandle.SSLOptions.Method := sslvTLSv1;
  idHandle.SSLOptions.Mode   := sslmUnassigned;
  IdHTTP.IOHandler := idHandle;
  RBody := TStringStream.Create('');
  log := TStringList.Create;
  try

    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Post('https://api.directcallsoft.com/'+AMethod, ARequest, RBody);
    Result := RBody.DataString;

  finally
    FreeAndNil(RBody);
    FreeAndNil(IdHTTP);
    FreeAndNil(idHandle);
  end;
end;

procedure TForm1.request_tokenClick(Sender: TObject);
var
  body: TStringList;
  response: string;
  XMLDOMDocument  : IXMLDOMDocument;
  XMLDOMNode      : IXMLDOMNode;
begin
  body := TStringList.Create;
  body.add('client_id=' + client_id.Text);
  body.add('client_secret=' + client_secret.Text);
  body.add('format=xml');
  
  response := dopost('request_token', body);

  XMLDOMDocument:=CoDOMDocument.Create;
  XMLDOMDocument.loadXML(response);
  XMLDOMNode := XMLDOMDocument.selectSingleNode('//oauth/access_token');

  ShowMessage('Login realizado com sucesso, seu access_token e: ' + XMLDOMNode.text);
  access_token.Text := XMLDOMNode.text;

end;

procedure TForm1.enviar_smsClick(Sender: TObject);
//var
//  body: TStringList;
//  response: string;
//  XMLDOMDocument  : IXMLDOMDocument;
//  XMLDOMNode      : IXMLDOMNode;

var
  api: TApiDirectCall;
begin

//  body := TStringList.Create;
//  body.add('access_token=' + access_token.Text);
//  body.add('texto=' + sms.Text);
//  body.add('tipo=texto');
//  body.add('origem=' + de_sms.Text);
//  body.add('destino=' + para_sms.Text);
//  body.add('format=xml');
//
//  response := dopost('sms/send', body);
//
//  XMLDOMDocument:=CoDOMDocument.Create;
//  XMLDOMDocument.loadXML(response);
//  XMLDOMNode := XMLDOMDocument.selectSingleNode('//directcall/msg');
//  ShowMessage( XMLDOMNode.text );

  api := TApiDirectCall.Create;
  try
    api.User := client_id.Text;
    api.Password := client_secret.Text;
    ShowMessage( api.sendSms(de_sms.Text, para_sms.Text, sms.Text) );
  finally
    FreeAndNil(api);
  end;

end;

procedure TForm1.enviar_vozClick(Sender: TObject);
var
  body: TStringList;
  response: string;
  XMLDOMDocument  : IXMLDOMDocument;
  XMLDOMNode      : IXMLDOMNode;
begin

  body := TStringList.Create;
  body.add('access_token=' + access_token.Text);
  body.add('texto=' + sms.Text);
  body.add('tipo=voz');
  body.add('origem=' + de_sms.Text);
  body.add('destino=' + para_sms.Text);
  body.add('format=xml');

  response := dopost('sms/send', body);

  XMLDOMDocument:=CoDOMDocument.Create;
  XMLDOMDocument.loadXML(response);
  XMLDOMNode := XMLDOMDocument.selectSingleNode('//directcall/msg');
  ShowMessage( XMLDOMNode.text );

end;

procedure TForm1.chamarClick(Sender: TObject);
var
  body: TStringList;
  response: string;
  XMLDOMDocument  : IXMLDOMDocument;
  XMLDOMNode      : IXMLDOMNode;
begin

  body := TStringList.Create;
  body.add('access_token=' + access_token.Text);
  body.add('origem=' + origem.Text);
  body.add('destino=' + destino.Text);
  body.add('format=xml');

  response := dopost('voz/call', body);

  XMLDOMDocument:=CoDOMDocument.Create;
  XMLDOMDocument.loadXML(response);
  XMLDOMNode := XMLDOMDocument.selectSingleNode('//directcall/msg');
  ShowMessage( XMLDOMNode.text );

end;

end.
