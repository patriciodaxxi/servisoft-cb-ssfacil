unit ApiDirectcall;

interface

uses
  Windows, Classes, SysUtils;

type
  TApiDirectCall = class
  private
    FUser: string;
    FPassword: string;
    FToken: string;
  private
    function dopost(AMethod: string; ARequest: TStringList): string;
    function getToken: string;
  public
    function sendSms(AFrom, ATo, AText: string): string;

    property User: string read FUser write FUser;
    property Password: string read FPassword write FPassword;
  end;

implementation

uses
  msxml, idHTTP, idSSLOpenSSL;

{ TApiDirectCall }

function TApiDirectCall.dopost(AMethod: string; ARequest: TStringList): string;
var
  IdHTTP: TIdHttp;
  idHandle: TIdSSLIOHandlerSocket;
  RBody: TStringStream;
begin
  IdHTTP := TIdHttp.Create(nil);
  idHandle := TIdSSLIOHandlerSocket.Create(nil);
  idHandle.SSLOptions.Method := sslvTLSv1;
  idHandle.SSLOptions.Mode   := sslmUnassigned;
  IdHTTP.IOHandler := idHandle;
  RBody := TStringStream.Create('');
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

function TApiDirectCall.getToken: string;
var
  body: TStringList;
  response: string;
  XMLDOMDocument  : IXMLDOMDocument;
  XMLDOMNode      : IXMLDOMNode;
begin
  if (FToken = EmptyStr) then
  begin
    body := TStringList.Create;
    body.add('client_id=' + FUser);
    body.add('client_secret=' + FPassword);
    body.add('format=xml');

    response := dopost('request_token', body);

    XMLDOMDocument:=CoDOMDocument.Create;
    XMLDOMDocument.loadXML(response);
    XMLDOMNode := XMLDOMDocument.selectSingleNode('//oauth/access_token');

    FToken := XMLDOMNode.text;
  end;

  Result := FToken;
end;

function TApiDirectCall.sendSms(AFrom, ATo, AText: string): string;
var
  body: TStringList;
  response: string;
  XMLDOMDocument  : IXMLDOMDocument;
  XMLDOMNode      : IXMLDOMNode;
begin
  body := TStringList.Create;
  body.add('access_token=' + getToken);
  body.add('texto=' + AText);
  body.add('tipo=texto');
  body.add('origem=' + AFrom);
  body.add('destino=' + ATo);
  body.add('format=xml');

  response := dopost('sms/send', body);

  XMLDOMDocument:=CoDOMDocument.Create;
  XMLDOMDocument.loadXML(response);
  XMLDOMNode := XMLDOMDocument.selectSingleNode('//directcall/msg');

  Result := XMLDOMNode.text;
end;

end.
