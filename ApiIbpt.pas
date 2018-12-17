unit ApiIbpt;

interface

uses
  Windows, Classes, SysUtils;

type
  TApiIbptProduto = record
    Chave: string;
    Codigo: string;
    Descricao: string;
    Ex: Integer;
    Estadual: Double;
    Fonte: string;
    Importado: Double;
    Municipal: Double;
    Nacional: Double;
    Tipo: string;
    Uf: string;
    Versao: string;
    VigenciaFim: string;
    VigenciaInicio: string;
  end;

  TApiIbpt = class
  private
    FToken: string;
    FCnpj: string;

    function doGet(AMethod: string; const ASource: TStrings): string;
  public
    constructor Create(AToken, ACnpj: string);

    function ConsultarProduto(ACodigo, AUf, ACodigoInterno, ADescricao, AUnidadeMedida,
      AGtin: string; AEx: integer; AValor: double): TApiIbptProduto;
  end;

implementation

uses
  msxml, idHTTP, StrUtils, uLkJSON;

{ TApiIbpt }

function TApiIbpt.ConsultarProduto(ACodigo, AUf, ACodigoInterno, ADescricao, AUnidadeMedida,
      AGtin: string; AEx: integer; AValor: double): TApiIbptProduto;
var
  body: TStringList;
  response: string;
  XMLDOMDocument  : IXMLDOMDocument;
  XMLDOMNode      : IXMLDOMNode;
  sThousandSeparator: Char;
  sDecimalSeparator: Char;
  json: TlkJSONobject;
begin
  sThousandSeparator := ThousandSeparator;
  sDecimalSeparator  := DecimalSeparator;
  try
    ThousandSeparator := ',';
    DecimalSeparator  := '.';

    body := TStringList.Create;
    body.add('token=' + FToken);
    body.add('cnpj=' + FCnpj);
    body.add('codigo=' + ACodigo);
    body.add('uf=' + AUf);
    body.add('codigoInterno=' + ACodigoInterno);
    body.add('descricao=' + ADescricao);
    body.add('unidadeMedida=' + AUnidadeMedida);
    body.add('gtin=' + AGtin);
    body.add('ex=' + IntToStr(AEx));
    body.add('valor=' + FloatToStr(AValor));

    response := doGet('Produtos', body);

    json := TlkJSON.ParseText(response) as TlkJSONobject;

    result.Chave := json.Field['Chave'].Value;
    result.Codigo := json.Field['Codigo'].Value;
    result.Descricao := json.Field['Descricao'].Value;
    result.Ex := json.Field['EX'].Value;
    result.Estadual := json.Field['Estadual'].Value;
    result.Fonte := json.Field['Fonte'].Value;
    result.Importado := json.Field['Importado'].Value;
    result.Municipal := json.Field['Municipal'].Value;
    result.Nacional := json.Field['Nacional'].Value;
    result.Tipo := json.Field['Tipo'].Value;
    result.Uf := json.Field['UF'].Value;
    result.Versao := json.Field['Versao'].Value;
    result.VigenciaFim := json.Field['VigenciaFim'].Value;
    result.VigenciaInicio := json.Field['VigenciaInicio'].Value;
  finally
    ThousandSeparator := sThousandSeparator;
    DecimalSeparator  := sDecimalSeparator;
  end;
end;

constructor TApiIbpt.Create(AToken, ACnpj: string);
begin
  FToken := AToken;
  FCnpj := ACnpj;
end;

type
  _TIdHttp = class(TIdHttp);

function TApiIbpt.doGet(AMethod: string; const ASource: TStrings): string;
var
  IdHTTP: _TIdHttp;
  sParams, sUrl: string;
  Response: TStringStream;
begin
  IdHTTP := _TIdHttp.Create(nil);
  Response := TStringStream.Create('');
  try
    sParams := IdHTTP.SetRequestParams(ASource);
    sUrl := 'http://iws.ibpt.org.br/api/deolhonoimposto/' + AMethod + '?' + sParams;

    IdHTTP.Request.ContentType  := 'application/xml';
    IdHTTP.Response.ContentType := 'application/xml';
    IdHTTP.Get(sUrl, Response);
    Result := Response.DataString;
  finally
    FreeAndNil(Response);
    FreeAndNil(IdHTTP);
  end;
end;

end.
