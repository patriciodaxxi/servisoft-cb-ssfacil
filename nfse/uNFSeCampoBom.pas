unit uNFSeCampoBom;

interface

uses
  Windows, Classes, SysUtils, uNFSeComunicacao, InvokeRegistry, SOAPHTTPTrans, Dialogs;

type
  TNFSeCampoBom = class(TNFSeComunicacao)
  private
    function ProcessarErro(AMotivo: widestring): widestring;
  protected
    function ConfigurarEnvelope(AXml, AMetodo: widestring): widestring; override;
    procedure CarregarSchema(AMetodo: widestring; out ASchemaName, ASchemaFile: widestring); override;
    procedure ConfigurarHttp(AHttp: THTTPReqResp; AMetodo: widestring); override;
  public
    function EnviarLote(ALote: WideString; ATxt: TStream; AXml: TStream): WideString; override;
    procedure ConsultarLote(ALote: WideString; AXml: TStream); override;
    procedure CancelarNFSe(ANroNFSe, ACodigoMunicipio, ACodigoCancelamento, AMotivoCancelamento: WideString; AXml: TStream); override;
    procedure ObterNota(AChaveNFSe: widestring; AXml: TStream);
    procedure ConsultarNFSeCB(ANotaInicio, ANotaFim: WideString; ADataInicio, ADataFim: TDateTime; ASerie: WideString; AXml: TStream);
    procedure NFSeObterNotaEmPNG(ANotaInicio, ANotaFim: WideString; ADataInicio, ADataFim: TDateTime; ASerie: WideString; ANota: TStream);
 end;

implementation

uses
  XMLIntf, XMLDoc, uDados, uNFSeBanco, ACBrUtil, StrUtils, ACBrD5, IdCoderMIME;

{ TNFSeCampoBom }

procedure TNFSeCampoBom.CancelarNFSe(ANroNFSe, ACodigoMunicipio,
  ACodigoCancelamento, AMotivoCancelamento: WideString; AXml: TStream);
var
  XmlEnv, XmlAss: WideString;
  RetWS, RetSt, RetMt, RetChv: WideString;
  StrStream: TStringStream;
begin
  XmlEnv := '<?xml version="1.0"?>' +
            '<pedidoStatusLote versao="1.0">' +
            '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
            '  <cLote>' + ANroNFSe + '</cLote>' +
            '</pedidoStatusLote>';

  XmlAss := AssinarNFSe(XmlEnv, 'obterCriticaLote', '', '');//'pedidoStatusLote');

  RetWS := ExecutarHttp(XmlAss, 'obterCriticaLote');

  RetSt := SeparaDados(RetWS, 'sit', False);
  RetMt := SeparaDados(RetWS, 'motivos', False);
  if (Trim(RetMt) = '') then
    RetMt := SeparaDados(RetWS, 'mot', False);

  RetChv:= SeparaDados(RetWS, 'chvAcessoNFSe', False);

  if (RetSt = '100') then
  begin
    XmlEnv := '<?xml version="1.0"?>' +
              '<pedCancelaNFSe versao="1.0">' +
              '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
              '  <chvAcessoNFS-e>' + RetChv + '</chvAcessoNFS-e>' +
              '  <motivo>' + ACodigoCancelamento + '</motivo> '+
              '</pedCancelaNFSe>';

    XmlAss := AssinarNFSe(XmlEnv, 'cancelarNotaFiscal', '', ''); //'pedAnulaNFSe');

    RetWS := ExecutarHttp(XmlAss, 'cancelarNotaFiscal');

    RetSt := SeparaDados(RetWS, 'sit', False);
    RetMt := SeparaDados(RetWS, 'mot', False);

    if (RetSt = '100') then
    begin
      StrStream := TStringStream.Create(RetWS);
      try
        StrStream.Position := 0;
        TMemoryStream(AXml).Clear;
        AXml.CopyFrom(StrStream, StrStream.Size);
      finally
        FreeAndNil(StrStream);
      end;
    end
    else
    begin
      raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de cancelamento da NFS-e falhou:' + chr(13) + ProcessarErro(RetMt));
    end;
  end
  else
  begin
    raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de cancelamento da NFS-e falhou:' + chr(13) + ProcessarErro(RetMt));
  end;
end;

procedure TNFSeCampoBom.CarregarSchema(AMetodo: widestring; out ASchemaName,
  ASchemaFile: widestring);
begin
  ASchemaFile := 'CampoBom\NFSe-Infisc-v1.xsd';
  ASchemaName := '';
end;

function TNFSeCampoBom.ConfigurarEnvelope(AXml, AMetodo: widestring): widestring;
begin
  Result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"' +
            '                  xmlns:xsd="http://www.w3.org/2001/XMLSchema"' +
            '                  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">' +
            '  <soapenv:Body>' +
            '    <ns1:' + AMetodo + ' soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"' +
            '                         xmlns:ns1="http://ws.pc.gif.com.br/">' +
            '      <xml xsi:type="xsd:string">' + ParseText(AXml, False, True) + '</xml>' +
            '    </ns1:' + AMetodo + '>' +
            '  </soapenv:Body>' +
            '</soapenv:Envelope>';
end;

procedure TNFSeCampoBom.ConfigurarHttp(AHttp: THTTPReqResp; AMetodo: widestring);
begin
  inherited ConfigurarHttp(AHttp, AMetodo);
  if ServidorNFSe.Ambiente = 0 then
    AHttp.URL := 'https://nfse.campobom.rs.gov.br/portal/Servicos'
  else
    //AHttp.URL := 'http://homol.campobom.infisc.com.br/portal/Servicos';
    AHttp.URL := 'https://campobom-homol.infisc.com.br/portal/Servicos?wsdl';

end;

procedure TNFSeCampoBom.ConsultarLote(ALote: WideString; AXml: TStream);
var
  NFSeBanco: TdmNFSeBanco;
  XmlEnv, XmlAss: WideString;
  RetWS, RetSt, RetMt, RetChv, RetNFS: WideString;
  StrStream: TStringStream;
  Tentativas: Integer;
begin
  NFSeBanco := TdmNFSeBanco.Create(nil);
  try
    XmlEnv := '<?xml version="1.0"?>' +
              '<pedidoStatusLote versao="1.0">' +
              '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
              '  <cLote>' + ALote + '</cLote>' +
              '</pedidoStatusLote>';

    XmlAss := AssinarNFSe(XmlEnv, 'obterCriticaLote', '', ''); //'pedidoStatusLote');

    Tentativas := 0;
    while (Tentativas < 4) do
    begin
      RetWS := ExecutarHttp(XmlAss, 'obterCriticaLote');

      RetSt := SeparaDados(RetWS, 'sit', False);
      RetMt := SeparaDados(RetWS, 'motivos', False);
      if (Trim(RetMt) = '') then
        RetMt := SeparaDados(RetWS, 'mot', False);
      RetChv:= SeparaDados(RetWS, 'chvAcessoNFSe', False);

      // Incluir a consulta da situação do lote
      NFSeBanco.IncluirConsultaSituacao( ALote,
                                         '',
                                         RetMt,
                                         RetWS );
      if (RetSt = '100') then
      begin
        XmlEnv := '<?xml version="1.0"?>' +
                  '<pedidoNFSe versao="1.0">' +
                  '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
                  '  <chvAcessoNFS-e>' + RetChv + '</chvAcessoNFS-e>' +
                  '</pedidoNFSe>';

        XmlAss := AssinarNFSe(XmlEnv, 'obterNotaFiscal', '', ''); //'pedidoNFSe');

        Tentativas := 0;
        while Tentativas < 4 do
        begin
          RetWS := ExecutarHttp(XmlAss, 'obterNotaFiscal');

          RetSt := SeparaDados(RetWS, 'sit', False);
          RetMt := SeparaDados(RetWS, 'mot', False);
          RetNFS:= '<?xml version="1.0" encoding="UTF-8"?>' +
                   AnsiReplaceStr(SeparaDados(RetWS, 'NFS-e', True), '#$A', '');

          // Incluir consulta de lote
          NFSeBanco.IncluirConsultaLote( ALote,
                                         '',
                                         RetMt,
                                         RetNFS );

          if (RetSt = '100') then
          begin
            StrStream := TStringStream.Create(RetNFS);
            try
              StrStream.Position := 0;
              TMemoryStream(AXml).Clear;
              AXml.CopyFrom(StrStream, StrStream.Size);
            finally
              FreeAndNil(StrStream);
            end;
            Break;
          end
          else if (RetSt = '') then
          begin
            Sleep(5000);
            Inc(Tentativas);
          end
          else
          begin
            raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de consulta do lote NFS-e falhou:' + chr(13) + ProcessarErro(RetMt));
          end;
        end;
        Break;
      end
      else if (RetSt = '') then
      begin
        Sleep(5000);
        Inc(Tentativas);
      end
      else
      begin
        raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de consulta situação do lote NFS-e falhou:' + chr(13) + ProcessarErro(RetMt));
      end;
    end;

    if (Tentativas >= 4) then
      raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Não foi possível realizar a consulta da nota, tente mais tarde.');
  finally
    FreeAndNil(NFSeBanco);
  end;
end;

procedure TNFSeCampoBom.ConsultarNFSeCB(ANotaInicio, ANotaFim: WideString;
  ADataInicio, ADataFim: TDateTime; ASerie: WideString; AXml: TStream);
var
  XmlEnv, XmlAss: WideString;
  RetWS, RetSt, RetMt, RetNFS: WideString;
  StrStream: TStringStream;
begin
  XmlEnv := '<?xml version="1.0"?>' +
            '<pedidoLoteNFSe versao="1.0">' +
            '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
            '  <notaInicial>' + ANotaInicio + '</notaInicial>' +
            '  <notaFinal>' + ANotaFim + '</notaFinal>' +
            '  <emissaoInicial>' + FormatDateTime('YYYY-MM-DD', ADataInicio) + '</emissaoInicial>' +
            '  <emissaoFinal>' + FormatDateTime('YYYY-MM-DD', ADataFim) + '</emissaoFinal>' +
            '  <serieNotaFiscal>' + ASerie + '</serieNotaFiscal>' +
            '</pedidoLoteNFSe>';

  XmlAss := AssinarNFSe(XmlEnv, 'obterLoteNotaFiscal', '', ''); //'pedidoNFSe');

  RetWS := ExecutarHttp(XmlAss, 'obterLoteNotaFiscal');

  RetSt := SeparaDados(RetWS, 'sit', False);
  RetMt := SeparaDados(RetWS, 'mot', False);
  RetNFS:= '<?xml version="1.0" encoding="UTF-8"?>' +
           AnsiReplaceStr(SeparaDados(RetWS, 'NFS-e', True), '#$A', '');

  if (RetSt = '100') then
  begin
    StrStream := TStringStream.Create(RetNFS);
    try
      StrStream.Position := 0;
      TMemoryStream(AXml).Clear;
      AXml.CopyFrom(StrStream, StrStream.Size);
    finally
      FreeAndNil(StrStream);
    end;
  end
  else
  begin
    raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de consulta de NFS-e falhou:' + chr(13) + ProcessarErro(RetMt));
  end;
end;

function TNFSeCampoBom.EnviarLote(ALote: WideString; ATxt,
  AXml: TStream): WideString;
var
  StrStream: TStringStream;
  NFSeBanco: TdmNFSeBanco;

  Xml, XmlEnv, XmlAss, xNFSe: WideString;
  {MsgErro,} RetWS, RetSt, RetMt, RetChv, RetDt, RetLt: WideString;
begin
  StrStream := TStringStream.Create('');
  try
    ATxt.Position := 0;
    StrStream.CopyFrom(ATxt, ATxt.Size);
    Xml := StrStream.DataString;
//  finally
//    FreeAndNil(StrStream);
//  end;
//
//  XmlAss := AssinarNFSe(Xml, 'NFS-e');
//  Xml    := XmlAss;
//
//  StrStream := TStringStream.Create(Xml);
//  try
    StrStream.Position := 0;
    TMemoryStream(AXml).Clear;
    AXml.CopyFrom(StrStream, StrStream.Size);
  finally
    FreeAndNil(StrStream);
  end;

  NFSeBanco := TdmNFSeBanco.Create(nil);
  try
    xNFSe := SeparaDados(Xml, 'lote>', False);
    if (Trim(xNFSe) = '') then
      xNFSe := SeparaDados(Xml, 'NFS-e', True);

    XmlEnv := '<?xml version="1.0"?>' +
              '<envioLote versao="1.0">' +
              '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
              '  <dhTrans>' + FormatDateTime('YYYY-MM-DD HH:NN:SS', Now) + '</dhTrans>' +
              xNFSe +
              '</envioLote>';

    XmlAss := AssinarNFSe(XmlEnv, 'enviarLoteNotas', '', ''); // 'envioLote');


    // Registrar XML antes do envio
    NFSeBanco.IncluirEnvioLote( ServidorNFSe.Certificado.CnpjTitular,
                                ServidorNFSe.MunicipioIBGE,
                                ALote,
                                XmlAss,
                                ServidorNFSe.Ambiente + 1 );

    RetWS := ExecutarHttp(XmlAss, 'enviarLoteNotas');

    RetSt := SeparaDados(RetWS, 'sit', False);
    RetMt := SeparaDados(RetWS, 'motivos', False);
    if (Trim(RetMt) = '') then
      RetMt := SeparaDados(RetWS, 'mot', False);
    RetDt := SeparaDados(RetWS, 'dhRecbto', False);
    RetLt := SeparaDados(RetWS, 'cLote', False);
    RetChv:= SeparaDados(RetWs, 'chvAcessoNFSe', False);

    if (RetSt = '100') then
      Result := 'Numero do Lote: [' + RetLt + '] / ' +
                'Data de Recebimento: [' + RetDt + '] / ' +
                'Chave: [' + RetChv + ']'
    else
      raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de envio de lote NFS-e falhou:' + chr(13) + ProcessarErro(RetMt));

    // Registrar retorno
    NFSeBanco.AtualizarEnvioLote( RetMt,
                                  RetWS,
                                  RetDt,
                                  RetLt );

    // Retornao XML
    StrStream := TStringStream.Create(RetWS);
    try
      StrStream.Position := 0;
      TMemoryStream(AXml).Clear;
      AXml.CopyFrom(StrStream, StrStream.Size);
    finally
      FreeAndNil(StrStream);
    end;
  finally
    FreeAndNil(NFSeBanco);
  end;
end;

procedure TNFSeCampoBom.NFSeObterNotaEmPNG(ANotaInicio,
  ANotaFim: WideString; ADataInicio, ADataFim: TDateTime;
  ASerie: WideString; ANota: TStream);
var
  XmlEnv, XmlAss: WideString;
  RetWS, RetSt, RetMt, RetPNG: WideString;
  Decoder: TIdDecoderMIME;
begin
  XmlEnv := '<?xml version="1.0"?>' +
            '<pedidoLoteNFSePNG versao="1.0">' +
            '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
            '  <notaInicial>' + ANotaInicio + '</notaInicial>' +
            '  <notaFinal>' + ANotaFim + '</notaFinal>' +
            '  <emissaoInicial>' + FormatDateTime('YYYY-MM-DD', ADataInicio) + '</emissaoInicial>' +
            '  <emissaoFinal>' + FormatDateTime('YYYY-MM-DD', ADataFim) + '</emissaoFinal>' +
            '  <serieNotaFiscal>' + ASerie + '</serieNotaFiscal>' +
            '</pedidoLoteNFSePNG>';

  XmlAss := AssinarNFSe(XmlEnv, 'obterNotasEmPNG', '', ''); //'pedidoLoteNFSePNG');

  RetWS := ExecutarHttp(XmlAss, 'obterNotasEmPNG');

  RetSt := SeparaDados(RetWS, 'sit', False);
  RetMt := SeparaDados(RetWS, 'mot', False);
  RetPNG:= SeparaDados(RetWS, 'NFS-ePNG', False);

  if (RetSt = '100') then
  begin
    Decoder := TIdDecoderMIME.Create(nil);
    try
      Decoder.DecodeToStream(RetPNG, ANota);
    finally
      FreeAndNil(Decoder);
    end;
  end
  else
  begin
    raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de Obter Nota em PNG falhou:' + chr(13) + ProcessarErro(RetMt));
  end;

end;

procedure TNFSeCampoBom.ObterNota(AChaveNFSe: widestring; AXml: TStream);
var
  XmlEnv, XmlAss: WideString;
  RetWS, RetSt, RetMt, RetNFS: WideString;
  StrStream: TStringStream;
begin
  XmlEnv := '<?xml version="1.0"?>' +
            '<pedidoNFSe versao="1.0">' +
            '  <CNPJ>' + ServidorNFSe.Certificado.CnpjTitular + '</CNPJ>' +
            '  <chvAcessoNFS-e>' + AChaveNFSe + '</chvAcessoNFS-e>' +
            '</pedidoNFSe>';

  XmlAss := AssinarNFSe(XmlEnv, 'obterNotaFiscal', '', ''); //'pedidoNFSe');

  RetWS := ExecutarHttp(XmlAss, 'obterNotaFiscal');

  RetSt := SeparaDados(RetWS, 'sit', False);
  RetMt := SeparaDados(RetWS, 'mot', False);
  RetNFS:= '<?xml version="1.0" encoding="UTF-8"?>' +
           AnsiReplaceStr(SeparaDados(RetWS, 'NFS-e', True), '#$A', '');

  if (RetSt = '100') then
  begin
    StrStream := TStringStream.Create(RetNFS);
    try
      StrStream.Position := 0;
      TMemoryStream(AXml).Clear;
      AXml.CopyFrom(StrStream, StrStream.Size);
    finally
      FreeAndNil(StrStream);
    end;
  end
  else
  begin
    raise ExceptionNFSe.Create(StrToIntDef(RetSt,0), 'Processo de obter NFS-e falhou:' + chr(13) + ProcessarErro(RetMt));
  end;
end;

function TNFSeCampoBom.ProcessarErro(AMotivo: widestring): widestring;
var
  i, iPos: Integer;
begin
  AMotivo := AnsiReplaceStr(AMotivo, '            ', '');
  AMotivo := AnsiReplaceStr(AMotivo, '<mot>', '');
  AMotivo := AnsiReplaceStr(AMotivo, '</mot>', '');
  AMotivo := AnsiReplaceStr(AMotivo, #13, #8);
  AMotivo := AnsiReplaceStr(AMotivo, #10, #8);
  AMotivo := Trim(AMotivo);

  I := 1;
  iPos := PosEx('Erro', AMotivo, i);
  while iPos > 0 do
  begin
    I := iPos;
    iPos := PosEx(' ', AMotivo, i);
    AMotivo := Copy(AMotivo, 1, iPos - 1) + '||' + Copy(AMotivo, iPos + 1, Length(AMotivo));
    iPos := PosEx('Erro', AMotivo, iPos);
  end;

  Result := AMotivo;
end;

end.

