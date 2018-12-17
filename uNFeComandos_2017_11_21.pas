unit uNFeComandos;

interface

uses
  Classes, SysUtils, DBClient, contNrs;

procedure EnviaNFe(AServidor, ACnpj: string; ANFe: TStream; var ARecibo,
  ANroProtocolo, AChaveAcesso: string; AContingencia, AConvTXT2XML: Boolean;
  var ACodigoErro: integer; var AMensagemErro: string);

function EnviarNFe(AServidor, ACnpj: string; ANFe: TStream; AContingencia: Boolean; AidToken, ACSC: string): string;

procedure BuscarStatusNF(AServidor, ACnpj: string; AChaveAcesso: string;
  AContingencia, ACupom: Boolean; ANFe: TStream; var ARecibo, ANroProtocolo: string;
  var ACodigoErro: integer; var AMensagemErro: string);

procedure CancelaNFe(AServidor, ACnpj, ANroProtocolo, AChaveAcesso,
  AJustificativa: string; var ANroProtocoloCancelamento: string;
  ANFe: TStream; AContingencia, ACupom: Boolean);

function VerificaStatusNFe(AServidor, ACnpj: string; AContingencia: Boolean): Boolean;

function ConectadoInternet(AServidor, ACnpj: string): Boolean;

function CriaChaveNFe(AServidor, ACnpj: string; ADataEmissao: TDateTime; AUf, AModelo, ASerie, ANumero, ATipoEmissao: string; AVersaoAntiga: Boolean = False): string;

function NFe_Consultar(AServidor, ACnpj, AChaveNFe: string; AContingencia,ACupom: Boolean): string;

procedure NFe_AdicionaProtNFe(AServidor, ACnpj: string; ANFe: TStream; AContingencia: Boolean);

procedure NFe_GerarDANFE(AServidor, ACnpj, AMensagem, AMensagemRecibo: string; ANFe, ADANFE: TStream; AOrigemEmissorXML: Boolean = False);

function EnviarCartaCorrecao(AServidor, ACnpj: string; AChaveNFe, ATextoCorrecao: WideString;
  ANroCorrecao: Integer; AContingencia: Boolean; AXML: TStream): string;

function ConsultarNFeDestinada(AServidor, ACnpj: string; ANFeConsultada, AEmissorNFe: Integer;
  AUltNSU: string; AXml: TStream; var AIndCont: Integer): String;

procedure NFeDistNSU(AServidor, ACnpj, ACNPJConsulta, AUF, AultNSURecebido: String; var AultNSU, AmaxNSU: String; var AqtdeDocto: Integer; AXml: TStream);

procedure NFeConsNSU(AServidor, ACnpj, ACNPJConsulta, AUF, AultNSURecebido: String; AXml: TStream);

procedure EnviarManifestacao(AServidor, ACnpj, AChaveAcesso: string; ATipoEvento: Integer; AJustificativa: string; AContingencia: Boolean; AXml: TStream; var AProtocolo, ADataProtocolo: string);

procedure ConsultarCadastro(AServidor, ACnpj: string; ATipoArgumento: Integer; AUF, AArgumento: string; AXML: TStream);

procedure DownloadNFe(AServidor, ACnpj, AChaveAcesso: string; AXML: TStream);

procedure GerarQRCodeNFCe(AServidor, ACnpj, AidToken, ACSC, AXML: string; AStream: TStream);

// NFS-e
procedure NFSe_GerarLote(AServidor, ACnpj, ALote: String; ATxt: TStream; AXml: TStream);
procedure NFSe_CancelarNFSe(AServidor, ACnpj, ANroNFSe, ACodigoMunicipio, ACodigoCancelamento, AMotivoCancelamento: String; AXml: TStream);
procedure NFSe_ConsultarLote(AServidor, ACnpj, ALote: String; AXml: TStream);
procedure NFSe_ConsultarNFSe(AServidor, ACnpj, ADataInicio, ADataFim: WideString; AXml: TStream);
procedure NFSe_ConsultarNFSe2(AServidor, ACnpj, ADataInicio, ADataFim, ACNPJTomador, ACPFTomador, AIMTomador, ANumeroNFSe, ARSIntermediario, ACNPJIntermediario, ACPFIntermediario, AIMIntermediario: string; AXml: TStream);
procedure NFSe_ConsultarNFSeRPS(AServidor, ACnpj, ANumeroRPS, ASerieRPS, ATipoRPS: WideString; AXml: TStream);
procedure NFSe_ObterNota(AServidor, ACnpj, AChaveNFSe: WideString; AXml: TStream);
procedure NFSe_ConsultarNFSeCB(AServidor, ACnpj, ANotaInicio, ANotaFim: WideString; ADataInicio, ADataFim: TDateTime; ASerie: WideString; AXml: TStream);
procedure NFSe_ObterNotaEmPNG(AServidor, ACnpj, ANotaInicio, ANotaFim: WideString; ADataInicio, ADataFim: TDateTime; ASerie: WideString; ANota: TStream);
function NFSe_EnviarLote(AServidor, ACnpj, ALote: String; ATxt: TStream; AXml: TStream): String;

procedure NFSe_ListarNotas(AXml: TStream; AList: TStrings);
procedure NFSe_RecuperarNota(AConsultaXml: TStream; ANroNFSe: String; AXmlNFSe: TStream);
procedure NFSe_CarregarNotas(AXML: TStream; ACds: TClientDataSet);

// MDF-e
function MDFe_Buscar(AServidor, ACnpj, ARecibo: string; AMDFeAssinado, AXml: TStream): string;
function MDFe_Cancelar(AServidor, ACnpj, AChaveMDFe, AProtocolo, AJustificativa: string; AXml: TStream): string;
procedure MDFe_Consultar(AServidor, ACnpj, AChaveMDFe: string; AXml: TStream);
function MDFe_ConsultarNaoEncerrada(AServidor, ACnpj, AUf: string; AXml: TStream): Integer;
function MDFe_ConsultarStatus(AServidor, ACnpj, AUF: string): string;
function MDFe_CriarChave(AServidor, ACnpj, AUf, AAno, AMes, AModelo, ASerie, ANumeroDFe, ATipoEmissao: string): string;
function MDFe_Encerrar(AServidor, ACnpj, AChaveMDFe, AProtocolo, AData, AUF, AMunicipio: WideString; AXml: TStream): string;
function MDFe_Enviar(AServidor, ACnpj: string; AMDFe: TStream): string;
function MDFe_IncluirCondutor(AServidor, ACnpj, AChaveMDFe, ACpf, ANome: WideString; ASequencia: Integer; AXml: TStream): string;
function MDFe_ConsultarDistribuicaoInteressado(AServidor, ACnpj, AUf, AUltNSURecebido: string; AXml: TStream): string;
function MDFe_ConsultarDistribuicaoNSU(AServidor, ACnpj, AUf, ANSU: string; AXml: TStream): string;

//08/10/2009
procedure SalvarUTF8(AXMLStream: TStream; AArquivo: string);
procedure SalvarASCII(AXMLStream: TStream; AArquivo: string);

procedure InutilizaNFe(AServidor, ACnpj: string; AUf, AAno, AModelo, ASerie,
  ANfeInicial, ANfeFinal, AJustificativa: string; var ANroProtocoloInutilizacao: string;
  ANFe: TStream; AContingencia: Boolean);

function ConsultarNFe(AServidor, ACnpj: string; AChaveNFe: WideString; AXML: TStream; AContingencia, ACupom: Boolean): WideString;

procedure EnviarEmail(AServidor, ACnpj, AEmailDestinatario, AEmailBCC, AAssunto, AMensagem: string; AListBoxAnexos: TStrings );
procedure EnviarEmail2(AServidor, ACnpj, AEmailRemetente, ANomeRemetente, ASmtpCliente, ASmtpPorta, ASmtpSSL, ASmtpUsuario, 
                       ASmtpSenha, AConfirmacao, AEmailDestinatario, AEmailBCC, AAssunto, AMensagem: string; AListBoxAnexos: TStrings );

procedure ImportarNFeFornecedor(AServidor, ACnpj: string; ANFe: TStream);

type
  TTipoEmissao = (teContFS   = 2,
                  teContFSDA = 5);

  TICMS = (icComDestaque = 1, icSemDestaque = 2);

  TErro = class
  private
    FCodigo: String;
    FMensagem: String;
  public
    constructor Create(ACodigo, AMensagem: string);

    property Codigo: String read FCodigo;
    property Mensagem: String read FMensagem;
  end;

  EExceptionNFSe = class(Exception)
  private
    FErros: TObjectList;
    function GetCount: Integer;
    function GetErro(Index: Integer): TErro;
  public
    constructor CreateException(const Msg: string); virtual;
    destructor Destroy; override;

    property Count: Integer read GetCount;
    property Erro[Index: Integer]: TErro read GetErro;
  end;

  EExceptionMDFe = class(Exception);
//  public
//    constructor CreateException(const Msg: string); override;
//  end;

function GeraCodigoBarras(AServidor, ACNPJ, AUF, ACNPJBarras: string; AValorNF: Extended;
   ATipoEmissao: TTipoEmissao; AICMSProprio, AICMSSubstituicao: TICMS;
   ADataEmissao: TDateTime): string;

implementation

uses
  IdTCPClient, uNFeConsts, StrUtils, Dialogs, IdAntiFreeze, DB,
  IdAntiFreezeBase, Forms, StdCtrls, JvTransparentForm, IdIOHandlerSocket,
  IdTCPConnection, XMLIntf, XMLDoc;

type
  IAguarde = interface
  end;

  TAguarde = class(TInterfacedObject, IAguarde)
  private
    FTela: TForm;
    FLabel: TLabel;
    FAntiFreeze: TIdAntiFreeze;
    FTransparent: TJvTransparentForm;
    FMensagem: string;
    WindowList: Pointer;
  public
    class function Mostrar(AMensagem: String): IAguarde;
  public
    constructor Create(AMensagem: string);
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

  TTCPClient = class(TIdTCPClient)
  private
    FAguarde: IAguarde;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

function CriarTCPClient(AServidor: string): TIdTCPClient;
begin
  Result      := TTCPClient.Create(nil);
  Result.Name := 'TCPClient';
  Result.Host := AServidor;
  Result.Port := 7001;

  Result.IOHandler      := TIdIOHandlerSocket.Create(Result);
  Result.IOHandler.Name := 'IdIOHandlerStack';
end;

procedure EnviaNFe(AServidor, ACnpj: string; ANFe: TStream; var ARecibo,
  ANroProtocolo, AChaveAcesso: string; AContingencia, AConvTXT2XML: Boolean;
  var ACodigoErro: integer; var AMensagemErro: string);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
  Retorno: TStrings;
begin
  ACodigoErro := 0;
  AMensagemErro := EmptyStr;

  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(NFe_Envia));
      TCPClient.WriteStream(ANFe, True, True);
      TCPClient.WriteInteger(Integer(AContingencia));
      TCPClient.WriteInteger(Integer(AConvTXT2XML));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Retorno := TStringList.Create;
        try
          Retorno.Text  := TCPClient.ReadLn;
          Retorno.Text  := AnsiReplaceText(Retorno.Text, #8, sLineBreak);
          ARecibo       := Retorno[0];
          ANroProtocolo := Retorno[1];
          AChaveAcesso  := Retorno[2];
          TMemoryStream(ANFe).Clear;
          TCPClient.ReadStream(ANFe);
        finally
          FreeAndNil(Retorno);
        end;
      end
      else if (Codigo = NFe_ErrorEnvioNfe) then
      begin
        Retorno := TStringList.Create;
        try
          Retorno.Text  := TCPClient.ReadLn;
          Retorno.Text  := AnsiReplaceText(Retorno.Text, #8, sLineBreak);
          ARecibo       := Retorno[0];
          ANroProtocolo := Retorno[1];
          AChaveAcesso  := Retorno[2];
        finally
          FreeAndNil(Retorno);
        end;
        AMensagemErro := TCPClient.ReadLn;
        ACodigoErro := TCPClient.ReadInteger;
        TMemoryStream(ANFe).Clear;
        TCPClient.ReadStream(ANFe);
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function EnviarNFe(AServidor, ACnpj: string; ANFe: TStream; AContingencia: Boolean;
  AidToken, ACSC: string): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  Result := EmptyStr;
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(NFe_EnviarNF));
      TCPClient.WriteStream(ANFe, True, True);
      TCPClient.WriteInteger(Integer(AContingencia));
      TCPClient.WriteLn(AidToken);
      TCPClient.WriteLn(ACSC);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure BuscarStatusNF(AServidor, ACnpj: string; AChaveAcesso: string;
  AContingencia, ACupom: Boolean; ANFe: TStream; var ARecibo, ANroProtocolo: string;
  var ACodigoErro: integer; var AMensagemErro: string);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
  Retorno: TStrings;
begin
  ACodigoErro := 0;
  AMensagemErro := EmptyStr;

  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(NFe_BuscarStatusNF));
      TCPClient.WriteInteger(Integer(AContingencia));
      TCPClient.WriteInteger(Integer(ACupom));
      TCPClient.WriteLn(AChaveAcesso);
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Retorno := TStringList.Create;
        try
          Retorno.Text  := TCPClient.ReadLn;
          Retorno.Text  := AnsiReplaceText(Retorno.Text, #8, sLineBreak);
          ARecibo       := Retorno[0];
          ANroProtocolo := Retorno[1];
          TMemoryStream(ANFe).Clear;
          TCPClient.ReadStream(ANFe);
        finally
          FreeAndNil(Retorno);
        end;
      end
      else if (Codigo = NFe_ErrorEnvioNfe) then
      begin
        Retorno := TStringList.Create;
        try
          Retorno.Text  := TCPClient.ReadLn;
          Retorno.Text  := AnsiReplaceText(Retorno.Text, #8, sLineBreak);
          ARecibo       := Retorno[0];
          ANroProtocolo := Retorno[1];
        finally
          FreeAndNil(Retorno);
        end;
        AMensagemErro := TCPClient.ReadLn;
        ACodigoErro := TCPClient.ReadInteger;
        TMemoryStream(ANFe).Clear;
        TCPClient.ReadStream(ANFe);
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure CancelaNFe(AServidor, ACnpj, ANroProtocolo, AChaveAcesso,
  AJustificativa: string; var ANroProtocoloCancelamento: string;
  ANFe: TStream; AContingencia, ACupom: Boolean);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
  Dados: TStrings;
  DadosStream: TMemoryStream;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    Dados := TStringList.Create;
    DadosStream := TMemoryStream.Create;
    try
      Dados.Add(ANroProtocolo);
      Dados.Add(AChaveAcesso);
      Dados.Add(AJustificativa);
      Dados.SaveToStream(DadosStream);
      DadosStream.Position := 0;
      try
        TCPClient.Connect(1000);
        TCPClient.WriteLn(ACNPJ);
        TCPClient.WriteInteger(Integer(NFe_Cancela));
        TCPClient.WriteStream(DadosStream, True, True);
        TCPClient.WriteInteger(Integer(AContingencia));
        TCPClient.WriteInteger(Integer(ACupom)); //aqui
        Codigo := TCPClient.ReadInteger;
        if (Codigo = NFe_OK) then
        begin
          ANroProtocoloCancelamento := TCPClient.ReadLn;
          TMemoryStream(ANFe).Clear;
          TCPClient.ReadStream(ANFe);
        end
        else if (Codigo = NFe_Error) then
          raise Exception.Create(TCPClient.ReadLn);

      finally
        TCPClient.Disconnect;
      end;
    finally
      FreeAndNil(DadosStream);
      FreeAndNil(Dados);
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function VerificaStatusNFe(AServidor, ACnpj: string; AContingencia:Boolean): Boolean;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  Result := False;
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACNPJ);
      if AContingencia then
        TCPClient.WriteInteger(Integer(NFe_VerificaContingencia))
      else
        TCPClient.WriteInteger(Integer(NFe_Verifica));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
        Result := StrToBool(TCPClient.ReadLn)
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function ConectadoInternet(AServidor, ACnpj: string): Boolean;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  Result := False;
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACNPJ);
      TCPClient.WriteInteger(Integer(NFe_Conectado));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
        Result := StrToBool(TCPClient.ReadLn)
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function GeraCodigoBarras(AServidor, ACNPJ, AUF, ACNPJBarras: string; AValorNF: Extended;
   ATipoEmissao: TTipoEmissao; AICMSProprio, AICMSSubstituicao: TICMS;
   ADataEmissao: TDateTime): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
  Dados: TStrings;
  DadosStream: TMemoryStream;
begin
  ACNPJ    := AnsiReplaceText(AnsiReplaceText(AnsiReplaceStr(ACNPJ, '-',''), '.', ''), '/', '');

  TCPClient := CriarTCPClient(AServidor);
  try
    Dados := TStringList.Create;
    DadosStream := TMemoryStream.Create;
    try
      Dados.Add(AUF);
      Dados.Add(IntToStr(Ord(ATipoEmissao)));
      Dados.Add(ACNPJBarras);
      Dados.Add(FormatFloat('0.00', AValorNF));
      Dados.Add(IntToStr(Ord(AICMSProprio)));
      Dados.Add(IntToStr(Ord(AICMSSubstituicao)));
      Dados.Add(FormatDateTime('dd/mm/yyyy', ADataEmissao));
      Dados.SaveToStream(DadosStream);
      DadosStream.Position := 0;
      try
        TCPClient.Connect(1000);
        TCPClient.WriteLn(ACnpj);
        TCPClient.WriteInteger(Integer(NFe_CodigoBarrasContingencia));
        TCPClient.WriteStream(DadosStream, True, True);
        Codigo := TCPClient.ReadInteger;
        if (Codigo = NFe_OK) then
        begin
          Result := TCPClient.ReadLn;
        end
        else if (Codigo = NFe_Error) then
          raise Exception.Create(TCPClient.ReadLn);

      finally
        TCPClient.Disconnect;
      end;
    finally
      FreeAndNil(DadosStream);
      FreeAndNil(Dados);
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function CriaChaveNFe(AServidor, ACnpj: string; ADataEmissao: TDateTime; AUf,
   AModelo, ASerie, ANumero, ATipoEmissao: string; AVersaoAntiga: Boolean): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
  Dados: TStrings;
  DadosStream: TMemoryStream;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    Dados := TStringList.Create;
    DadosStream := TMemoryStream.Create;
    try
      Dados.Add(AUF);
      Dados.Add(FormatDateTime('YY', ADataEmissao));
      Dados.Add(FormatDateTime('MM', ADataEmissao));
      Dados.Add(AModelo);
      Dados.Add(ASerie);
      Dados.Add(ANumero);
      Dados.Add(ATipoEmissao); //  1- Normal, 2-Contingência FS, 3-Contingência SCAN, 4-DPEC e 5-Contigência FS-DA
      Dados.SaveToStream(DadosStream);
      DadosStream.Position := 0;
      try
        TCPClient.Connect(1000);
        TCPClient.WriteLn(ACnpj);
        TCPClient.WriteInteger(Integer(NFe_ChaveAcesso));
        TCPClient.WriteStream(DadosStream, True, True);
        TCPClient.WriteInteger(Integer(AVersaoAntiga));
        Codigo := TCPClient.ReadInteger;
        if (Codigo = NFe_OK) then
        begin
          Result := TCPClient.ReadLn;
        end
        else if (Codigo = NFe_Error) then
          raise Exception.Create(TCPClient.ReadLn);

      finally
        TCPClient.Disconnect;
      end;
    finally
      FreeAndNil(DadosStream);
      FreeAndNil(Dados);
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function NFe_Consultar(AServidor, ACnpj, AChaveNFe: string; AContingencia, ACupom: Boolean): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_Consultar));
      TCPClient.WriteLn(AChaveNFe);
      TCPClient.WriteInteger(Integer(AContingencia));
      TCPClient.WriteInteger(Integer(ACupom));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFe_AdicionaProtNFe(AServidor, ACnpj: string; ANFe: TStream; AContingencia: Boolean);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_AdicionaProtNFe));
      TCPClient.WriteStream(ANFe, True, True);
      TCPClient.WriteInteger(Integer(AContingencia));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TCPClient.ReadLn;
        TMemoryStream(ANFe).Clear;
        TCPClient.ReadStream(ANFe);
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure InutilizaNFe(AServidor, ACnpj: string; AUf, AAno, AModelo, ASerie,
  ANfeInicial, ANfeFinal, AJustificativa: string; var ANroProtocoloInutilizacao: string;
  ANFe: TStream; AContingencia: Boolean);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
  Dados: TStrings;
  DadosStream: TMemoryStream;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    Dados := TStringList.Create;
    DadosStream := TMemoryStream.Create;
    try
      Dados.Add(AUf);
      Dados.Add(AAno);
      Dados.Add(AModelo);
      Dados.Add(ASerie);
      Dados.Add(ANfeInicial);
      Dados.Add(ANFeFinal);
      Dados.Add(AJustificativa);

      Dados.SaveToStream(DadosStream);
      DadosStream.Position := 0;
      try
        TCPClient.Connect(1000);
        TCPClient.WriteLn(ACNPJ);
        TCPClient.WriteInteger(Integer(NFe_Inutilizar));
        TCPClient.WriteStream(DadosStream, True, True);
        TCPClient.WriteInteger(Integer(AContingencia));
        Codigo := TCPClient.ReadInteger;
        if (Codigo = NFe_OK) then
        begin
          ANroProtocoloInutilizacao := TCPClient.ReadLn;
          TMemoryStream(ANFe).Clear;
          TCPClient.ReadStream(ANFe);
        end
        else if (Codigo = NFe_Error) then
          raise Exception.Create(TCPClient.ReadLn);

      finally
        TCPClient.Disconnect;
      end;
    finally
      FreeAndNil(DadosStream);
      FreeAndNil(Dados);
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function ConsultarNFe(AServidor, ACnpj: string; AChaveNFe: WideString; AXML: TStream;
  AContingencia, ACupom: Boolean): WideString;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_ConsultarNFe));
      TCPClient.WriteLn(AChaveNFe);
      TCPClient.WriteInteger(Integer(AContingencia));
      TCPClient.WriteInteger(Integer(ACupom));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXML).Clear;
        TCPClient.ReadStream(AXML);
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFe_GerarDANFE(AServidor, ACnpj, AMensagem, AMensagemRecibo: string;
  ANFe, ADANFE: TStream; AOrigemEmissorXML: Boolean = False);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
  StrStream: TStringStream;
  XML: WideString;
begin
  StrStream := TStringStream.Create('');
  try
    ANFe.Position := 0;
    StrStream.CopyFrom(ANFe, ANFe.Size);
    XML := StrStream.DataString;
  finally
    FreeAndNil(StrStream);
  end;

  if AnsiStartsText(#239+#187+#191, XML) then
  begin
    XML := AnsiReplaceText(XML, #239+#187+#191, '');
    StrStream := TStringStream.Create(XML);
    try
      TMemoryStream(ANFe).Position := 0;
      TMemoryStream(ANFe).LoadFromStream(StrStream);
    finally
      FreeAndNil(StrStream);
    end;
  end;

  ANFe.Position := 0;
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_GerarDANFE));
      TCPClient.WriteLn(AMensagem);
      TCPClient.WriteLn(AMensagemRecibo);
      TCPClient.WriteStream(ANFe, True, True);
      TCPClient.WriteInteger(Integer(AOrigemEmissorXML));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TCPClient.ReadLn;
        TMemoryStream(ADANFE).Clear;
        TCPClient.ReadStream(ADANFE);
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function EnviarCartaCorrecao(AServidor, ACnpj: string; AChaveNFe, ATextoCorrecao: WideString;
  ANroCorrecao: Integer; AContingencia: Boolean; AXML: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_EnviarCartaCorrecao));
      TCPClient.WriteLn(AChaveNFe);
      TCPClient.WriteLn(Trim(ATextoCorrecao));
      TCPClient.WriteInteger(Integer(ANroCorrecao));
      TCPClient.WriteInteger(Integer(AContingencia));
      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXML).Clear;
        TCPClient.ReadStream(AXML);
      end
      else if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure SalvarUTF8(AXMLStream: TStream; AArquivo: string);
var
  F: System.TextFile;
  Texto: String;
  StrStream: TStringStream;
begin
  StrStream := TStringStream.Create('');
  try
    AXMLStream.Position := 0;
    StrStream.CopyFrom(AXMLStream, AXMLStream.Size);
    Texto := StrStream.DataString;
  finally
    FreeAndNil(StrStream);
  end;

  try
    if FileExists(AArquivo) then
      DeleteFile( AArquivo );
    AssignFile(f, AArquivo);
    Rewrite(f); // Criar Arquivo
    Write(f, #239+#187+#191);
    Writeln(F, UTF8Encode( Texto ));
  finally
    CloseFile(f);
  end;
end;

procedure EnviarEmail(AServidor, ACnpj, AEmailDestinatario, AEmailBCC,
  AAssunto, AMensagem: string; AListBoxAnexos: TStrings );
var
  TCPClient: TIdTCPClient;
  I, Codigo: Integer;
  Arquivo: TFileStream;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_EnviarEmail));
      TCPClient.WriteLn(AEmailDestinatario);
      TCPClient.WriteLn(AEmailBCC);
      TCPClient.WriteLn(AAssunto);
      TCPClient.WriteLn(AMensagem);

      TCPClient.WriteInteger(Integer(AListBoxAnexos.Count));
      if AListBoxAnexos.Count > 0 then
      begin
        for I := 0 to AListBoxAnexos.Count - 1 do
        begin
          Arquivo := TFileStream.Create( AListBoxAnexos[I], fmOpenRead or fmShareDenyNone );
          try
            Arquivo.Seek(0, soEnd);
            Arquivo.Seek(0, soBeginning);
            Arquivo.Position := 0;
            TCPClient.WriteLn( ExtractFileName(AListBoxAnexos[I]) );
            TCPClient.WriteStream(Arquivo, True, True);
          finally
            FreeAndNil(Arquivo);
          end;
        end;
      end;

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn)
      else
        TCPClient.ReadLn;
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure EnviarEmail2(AServidor, ACnpj, AEmailRemetente, ANomeRemetente, ASmtpCliente, ASmtpPorta, ASmtpSSL, ASmtpUsuario,
    ASmtpSenha, AConfirmacao, AEmailDestinatario, AEmailBCC, AAssunto, AMensagem: string; AListBoxAnexos: TStrings );
var
  TCPClient: TIdTCPClient;
  I, Codigo: Integer;
  Arquivo: TFileStream;
  NomeArquivo: String;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_EnviarEmail2));
  	  TCPClient.WriteLn(AEmailRemetente);
   	  TCPClient.WriteLn(ANomeRemetente);
	    TCPClient.WriteLn(ASmtpCliente);
	    TCPClient.WriteLn(ASmtpPorta);
	    TCPClient.WriteLn(ASmtpSSL);
	    TCPClient.WriteLn(ASmtpUsuario);
      TCPClient.WriteLn(ASmtpSenha);
	    TCPClient.WriteLn(AConfirmacao);
      TCPClient.WriteLn(AEmailDestinatario);
      TCPClient.WriteLn(AEmailBCC);
      TCPClient.WriteLn(AAssunto);
      TCPClient.WriteLn(AnsiReplaceStr(AnsiReplaceStr(AMensagem,#10,'\n'),#13,'\r'));

      TCPClient.WriteInteger(Integer(AListBoxAnexos.Count));
      if AListBoxAnexos.Count > 0 then
      begin
        for I := 0 to AListBoxAnexos.Count - 1 do
        begin
          NomeArquivo := Trim(AListBoxAnexos[I]);
          Arquivo := TFileStream.Create(NomeArquivo, fmOpenRead or fmShareDenyNone );
          try
            Arquivo.Seek(0, soEnd);
            Arquivo.Seek(0, soBeginning);
            Arquivo.Position := 0;
            TCPClient.WriteLn( ExtractFileName(NomeArquivo) );
            TCPClient.WriteStream(Arquivo, True, True);
          finally
            FreeAndNil(Arquivo);
          end;
        end;
      end;

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn)
      else
        TCPClient.ReadLn;
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure ImportarNFeFornecedor(AServidor, ACnpj: string; ANFe: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_ImportarNFeFornecedor));
      TCPClient.WriteStream(ANFe, True, True);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_Error) then
        raise Exception.Create(TCPClient.ReadLn)
      else
        TCPClient.ReadLn
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function ConsultarNFeDestinada(AServidor, ACnpj: string; ANFeConsultada, AEmissorNFe: Integer;
  AUltNSU: string; AXml: TStream; var AIndCont: Integer): String;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_ConsultarNFeDestinadas));
      TCPClient.WriteInteger(ANFeConsultada);
      TCPClient.WriteInteger(AEmissorNFe);
      TCPClient.WriteLn(AUltNSU);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result   := TCPClient.ReadLn;
        AIndCont := TCPClient.ReadInteger;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFeDistNSU(AServidor, ACnpj, ACNPJConsulta, AUF, AultNSURecebido: String; var AultNSU, AmaxNSU: String; var AqtdeDocto: Integer; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_distNSU));
      TCPClient.WriteLn(ACNPJConsulta);
      TCPClient.WriteLn(AUF);
      TCPClient.WriteLn(AultNSURecebido);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        AultNSU    := TCPClient.ReadLn;
        AmaxNSU    := TCPClient.ReadLn;
        AqtdeDocto := TCPClient.ReadInteger;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFeConsNSU(AServidor, ACnpj, ACNPJConsulta, AUF, AultNSURecebido: String; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_consNSU));
      TCPClient.WriteLn(ACNPJConsulta);
      TCPClient.WriteLn(AUF);
      TCPClient.WriteLn(AultNSURecebido);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure EnviarManifestacao(AServidor, ACnpj, AChaveAcesso: string;
  ATipoEvento: Integer; AJustificativa: string; AContingencia: Boolean;
  AXml: TStream; var AProtocolo, ADataProtocolo: string);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_EnviarManifestacao));
      TCPClient.WriteInteger(Integer(AContingencia));
      TCPClient.WriteLn(AChaveAcesso);
      TCPClient.WriteInteger(ATipoEvento);
      TCPClient.WriteLn(AJustificativa);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        AProtocolo := TCPClient.ReadLn;
        ADataProtocolo := Copy(AProtocolo, Pos(#8, AProtocolo) + 1, Length(AProtocolo));
        AProtocolo := Copy(AProtocolo, 1, Pos(#8, AProtocolo) - 1);
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure ConsultarCadastro(AServidor, ACnpj: string; ATipoArgumento: Integer;
  AUF, AArgumento: string; AXML: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_ConsultarContribuintes));
      TCPClient.WriteInteger(Integer(ATipoArgumento));
      TCPClient.WriteLn(AArgumento);
      TCPClient.WriteLn(AUF);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure DownloadNFe(AServidor, ACnpj, AChaveAcesso: string; AXML: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_DownloadNFe));
      TCPClient.WriteLn(AChaveAcesso);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure GerarQRCodeNFCe(AServidor, ACnpj, AidToken, ACSC, AXML: string; AStream: TStream);
var
  TCPClient: TIdTCPClient;
  StringStream: TStringStream;
  XMLStream: TMemoryStream;
  Codigo: Integer;
begin
  XMLStream := TMemoryStream.Create;

  if AnsiStartsText(#239+#187+#191, AXML) then
    AXML := AnsiReplaceText(AXML, #239+#187+#191, '');

  StringStream := TStringStream.Create(AXML);
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFe_GerarQRCodeNFCe));
      TCPClient.WriteLn(AidToken);
      TCPClient.WriteLn(ACSC);

      XMLStream.Position := 0;
      XMLStream.LoadFromStream(StringStream);
      XMLStream.Position := 0;
      TCPClient.WriteStream(XMLStream, True, True);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AStream).Clear;
        TCPClient.ReadStream(AStream);
      end
      else
        raise Exception.Create(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(StringStream);
    FreeAndNil(XMLStream);
    
    FreeAndNil(TCPClient);
  end;
end;

{ TAguarde }

procedure TAguarde.AfterConstruction;
begin
  inherited AfterConstruction;
  FAntiFreeze := TIdAntiFreeze.Create(nil);

  FTela             := TForm.Create(nil);
  FTela.Name        := 'frmTelaAguarde';
  FTela.Position    := poMainFormCenter;
  FTela.Caption     := 'Aguarde!';
  FTela.BorderStyle := bsNone;
  FTela.FormStyle   := fsStayOnTop;

  FLabel          := TLabel.Create(nil);
  FLabel.Name     := 'lblMensagem';
  FLabel.AutoSize := False;
  FLabel.Parent   := FTela;
  FLabel.Left     := 0;
  FLabel.Top      := 0;
  FLabel.Caption  := FMensagem;
  FLabel.AutoSize := True;

  FTransparent := TJvTransparentForm.Create(FTela);
  FTransparent.Name := 'JvTransparentForm';
  FTransparent.Enable := False;
  FTransparent.AutoSize := False;

  FTela.BorderWidth := 30;
  FTela.AutoSize    := True;

  FTela.Show;

  WindowList := DisableTaskWindows(FTela.Handle);
//  Application.ProcessMessages;
end;

procedure TAguarde.BeforeDestruction;
begin
  inherited BeforeDestruction;
  EnableTaskWindows(WindowList);
  FreeAndNil(FTransparent);
  FreeAndNil(FLabel);
  FreeAndNil(FTela);
  FreeAndNil(FAntiFreeze);
end;

constructor TAguarde.Create(AMensagem: string);
begin
  inherited Create;
  FMensagem := AMensagem;
end;

class function TAguarde.Mostrar(AMensagem: String): IAguarde;
begin
  Result := Self.Create(AMensagem);
end;

{ TTCPClient }

procedure TTCPClient.AfterConstruction;
begin
  inherited;
  FAguarde := TAguarde.Mostrar('Conectando com o servidor.');
end;

procedure TTCPClient.BeforeDestruction;
begin
  inherited;
  FAguarde := nil;
end;

// NFS-e
procedure NFSe_GerarLote(AServidor, ACnpj, ALote: String; ATxt: TStream; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_GerarLote));
      TCPClient.WriteLn(ALote);
      TCPClient.WriteStream(ATxt, True, True);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ConsultarLote(AServidor, ACnpj, ALote: String; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_ConsultarLote));
      TCPClient.WriteLn(ALote);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;


function NFSe_EnviarLote(AServidor, ACnpj, ALote: String; ATxt: TStream; AXml: TStream): String;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_EnviarLote));
      TCPClient.WriteLn(ALote);
      TCPClient.WriteStream(ATxt, True, True);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ConsultarNFSe(AServidor, ACnpj, ADataInicio, ADataFim: WideString; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_ConsultarNFSe));
      TCPClient.WriteLn(ADataInicio);
      TCPClient.WriteLn(ADataFim);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ConsultarNFSe2(AServidor, ACnpj, ADataInicio, ADataFim, ACNPJTomador, ACPFTomador,
  AIMTomador, ANumeroNFSe, ARSIntermediario, ACNPJIntermediario, ACPFIntermediario,
  AIMIntermediario: string; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_ConsultarNFSe2));
      TCPClient.WriteLn(ADataInicio);
      TCPClient.WriteLn(ADataFim);
      TCPClient.WriteLn(ACNPJTomador);
      TCPClient.WriteLn(ACPFTomador);
      TCPClient.WriteLn(AIMTomador);
      TCPClient.WriteLn(ANumeroNFSe);
      TCPClient.WriteLn(ARSIntermediario);
      TCPClient.WriteLn(ACNPJIntermediario);
      TCPClient.WriteLn(ACPFIntermediario);
      TCPClient.WriteLn(AIMIntermediario);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ConsultarNFSeRPS(AServidor, ACnpj, ANumeroRPS, ASerieRPS, ATipoRPS: WideString; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_ConsultarNFSeRPS));
      TCPClient.WriteLn(ANumeroRPS);
      TCPClient.WriteLn(ASerieRPS);
      TCPClient.WriteLn(ATipoRPS);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_CancelarNFSe(AServidor, ACnpj, ANroNFSe, ACodigoMunicipio,
  ACodigoCancelamento, AMotivoCancelamento: String; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_CancelarNFSe));
      TCPClient.WriteLn(ANroNFSe);
      TCPClient.WriteLn(ACodigoMunicipio);
      TCPClient.WriteLn(ACodigoCancelamento);
      TCPClient.WriteLn(AMotivoCancelamento);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ObterNota(AServidor, ACnpj, AChaveNFSe: WideString; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_ObterNFSe));
      TCPClient.WriteLn(AChaveNFSe);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ConsultarNFSeCB(AServidor, ACnpj, ANotaInicio, ANotaFim: WideString; ADataInicio, ADataFim: TDateTime; ASerie: WideString; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_ConsultarNFSeCB));
      TCPClient.WriteLn(ANotaInicio);
      TCPClient.WriteLn(ANotaFim);
      TCPClient.WriteLn(DateTimeToStr(ADataInicio));
      TCPClient.WriteLn(DateTimeToStr(ADataFim));
      TCPClient.WriteLn(ASerie);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ObterNotaEmPNG(AServidor, ACnpj, ANotaInicio, ANotaFim: WideString; ADataInicio, ADataFim: TDateTime; ASerie: WideString; ANota: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.NFSe_ObterNotaEmPNG));
      TCPClient.WriteLn(ANotaInicio);
      TCPClient.WriteLn(ANotaFim);
      TCPClient.WriteLn(DateTimeToStr(ADataInicio));
      TCPClient.WriteLn(DateTimeToStr(ADataFim));
      TCPClient.WriteLn(ASerie);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(ANota).Clear;
        TCPClient.ReadStream(ANota);
      end
      else
        raise EExceptionNFSe.CreateException(TCPClient.ReadLn);
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure NFSe_ListarNotas(AXml: TStream; AList: TStrings);
var
  xDoc: IXMLDocument;
  xNode, xAtt, xLista, xCompNfse, xTmp: IXMLNode;
  I: Integer;
  NroNFSe, NroRps: string;
  CodVer, DataEmissao: string;
  Valor, RazaoSocial: string;
  sXML: TStringStream;
  cXML, sPrefixo: String;
begin
  sXML := TStringStream.Create('');
  try
    TMemoryStream(AXml).Position := 0;
    sXML.CopyFrom(AXml, AXml.Size);
    cXML := sXML.DataString;
  finally
    FreeAndNil(sXML);
  end;

  //Alterado dia 14/01/2016 conforme Edson, para Tipografia
  //cXML := AnsiReplaceStr(cXML, 'utf-8', 'ISO-8859-1');
  cXML := AnsiReplaceStr(cXML, 'utf-8', 'iso-8859-1');
  if (cXML[1] = #239) then
    cXML := Copy(cXML, 4, Length(cXML)-3);
  xDoc := LoadXMLData(cXML);

  xNode := xDoc.ChildNodes.FindNode('ConsultarLoteRpsResposta');
  if (xNode = nil) then
    xNode := xDoc.ChildNodes.FindNode('ConsultarNfseRpsResposta');
  if (xNode <> nil) then
  begin
    xAtt := xNode.AttributeNodes.FindNode('xmlns:tc');
    if (xAtt <> nil) then
      sPrefixo := 'tc:'
    else
      sPrefixo := '';

    // Verifica se existe a lista
    xLista := xNode.ChildNodes.FindNode('ListaNfse');
    if (xLista <> nil) then
    begin
      for I := 0 to xLista.ChildNodes.Count - 1 do
      begin
        xNode := xLista.ChildNodes[I];
        xNode := xNode.ChildNodes[0];

        xNode := xNode.ChildNodes.FindNode(sPrefixo + 'InfNfse');
        NroNFse := xNode.ChildNodes.FindNode(sPrefixo + 'Numero').Text;
        CodVer := xNode.ChildNodes.FindNode(sPrefixo + 'CodigoVerificacao').Text;
        DataEmissao := xNode.ChildNodes.FindNode(sPrefixo + 'DataEmissao').Text;

        xTmp := xNode.ChildNodes.FindNode(sPrefixo + 'Servico');
        xTmp := xTmp.ChildNodes.FindNode(sPrefixo + 'Valores');
        xTmp := xTmp.ChildNodes.FindNode(sPrefixo + 'ValorServicos');
        Valor := xTmp.Text;

        xTmp := xNode.ChildNodes.FindNode(sPrefixo + 'TomadorServico');
        //xTmp := xTmp.ChildNodes.FindNode(sPrefixo + 'IdentificacaoTomador');
        xTmp := xTmp.ChildNodes.FindNode(sPrefixo + 'RazaoSocial');
        RazaoSocial := xTmp.Text;

        xNode := xNode.ChildNodes.FindNode(sPrefixo + 'IdentificacaoRps');
        NroRps := xNode.ChildNodes.FindNode(sPrefixo + 'Numero').Text;

        AList.Add('Rps: ' + NroRps + ' / NFSe: ' + NroNFSe +
                  ' / Cod. Verificação: ' + CodVer + ' / Data Emissão: ' + DataEmissao +
                  ' / Valor: ' + Valor + ' / Razão Social: ' + RazaoSocial);
      end;
    end
    else
    begin
      // Procura o CompNfse
      xCompNfse := xNode.ChildNodes.FindNode('CompNfse');
      if (xCompNfse <> nil) then
      begin
        xNode := xCompNfse.ChildNodes[0];

        xNode := xNode.ChildNodes.FindNode(sPrefixo + 'InfNfse');
        NroNFse := xNode.ChildNodes.FindNode(sPrefixo + 'Numero').Text;
        CodVer := xNode.ChildNodes.FindNode(sPrefixo + 'CodigoVerificacao').Text;
        DataEmissao := xNode.ChildNodes.FindNode(sPrefixo + 'DataEmissao').Text;

        xTmp := xNode.ChildNodes.FindNode(sPrefixo + 'Servico');
        xTmp := xTmp.ChildNodes.FindNode(sPrefixo + 'Valores');
        xTmp := xTmp.ChildNodes.FindNode(sPrefixo + 'ValorServicos');
        Valor := xTmp.Text;

        xTmp := xNode.ChildNodes.FindNode(sPrefixo + 'TomadorServico');
        xTmp := xTmp.ChildNodes.FindNode(sPrefixo + 'RazaoSocial');
        RazaoSocial := xTmp.Text;


        xNode := xNode.ChildNodes.FindNode(sPrefixo + 'IdentificacaoRps');
        NroRps := xNode.ChildNodes.FindNode(sPrefixo + 'Numero').Text;

        AList.Add('Rps: ' + NroRps + ' / NFSe: ' + NroNFSe +
                  ' / Cod. Verificação: ' + CodVer + ' / Data Emissão: ' + DataEmissao +
                  ' / Valor: ' + Valor + ' / Razão Social: ' + RazaoSocial);
      end;
    end;
  end;
end;

procedure NFSe_RecuperarNota(AConsultaXml: TStream; ANroNFSe: String; AXmlNFSe: TStream);
var
  xDoc: IXMLDocument;
  xNode, xAtt, xCompNfse, xLista: IXMLNode;
  I: Integer;
  NroNFSe: string;
  sXML: TStringStream;
  cXML, sPrefixo: String;
begin
  sXML := TStringStream.Create('');
  try
    TMemoryStream(AConsultaXml).Position := 0;
    sXML.CopyFrom(AConsultaXml, AConsultaXml.Size);
    cXML := sXML.DataString;
  finally
    FreeAndNil(sXML);
  end;

  xCompNfse := nil;

  //Alterado dia 14/01/2016 conforme Edson, para Tipografia
  //cXML := AnsiReplaceStr(cXML, 'utf-8', 'ISO-8859-1');
  cXML := AnsiReplaceStr(cXML, 'utf-8', 'iso-8859-1');
  if (cXML[1] = #239) then
    cXML := Copy(cXML, 4, Length(cXML)-3);
  xDoc := LoadXMLData(cXML);

  xNode := xDoc.ChildNodes.FindNode('ConsultarLoteRpsResposta');
  if (xNode = nil) then
    xNode := xDoc.ChildNodes.FindNode('ConsultarNfseRpsResposta');
  if (xNode <> nil) then
  begin
    xAtt := xNode.AttributeNodes.FindNode('xmlns:tc');
    if (xAtt <> nil) then
      sPrefixo := 'tc:'
    else
      sPrefixo := '';

    // Verifica se existe a lista
    xLista := xNode.ChildNodes.FindNode('ListaNfse');
    if (xLista <> nil) then
    begin
      for I := 0 to xLista.ChildNodes.Count - 1 do
      begin
        xCompNfse := xLista.ChildNodes[I];
        xNode := xCompNfse.ChildNodes[0];
        xNode := xNode.ChildNodes.FindNode(sPrefixo + 'InfNfse');
        NroNFse := Trim( xNode.ChildNodes.FindNode(sPrefixo + 'Numero').Text );
        if AnsiSameText(NroNFSe, ANroNFSe) then
          Break;
        xCompNfse := nil;
      end;
    end
    else
    begin
      // Procura o CompNfse
      xCompNfse := xNode.ChildNodes.FindNode('CompNfse');
      if (xCompNfse <> nil) then
      begin
        xNode := xCompNfse.ChildNodes[0];
        xNode := xNode.ChildNodes.FindNode(sPrefixo + 'InfNfse');
        NroNFse := Trim( xNode.ChildNodes.FindNode(sPrefixo + 'Numero').Text );
        if not AnsiSameText(NroNFSe, ANroNFSe) then
          xCompNfse := nil;
      end;
    end;

    if (xCompNfse <> nil) then
    begin
      if (xLista <> nil) then
      begin
        xNode := xLista.ParentNode;
        (xCompNfse as IXMLNodeAccess).SetParentNode(nil);
        xNode.ChildNodes.Add(xCompNfse);

        for I := xNode.ChildNodes.Count - 1 downto 0 do
        begin
          if (xNode.ChildNodes[I] = xLista) then
            xNode.ChildNodes.Delete(I);
        end;

        xNode.Attributes['xmlns:ts'] := 'http://www.issnetonline.com.br/webserviceabrasf/vsd/tipos_simples.xsd';

        TMemoryStream(AXmlNFSe).Position := 0;
        xDoc.Options := xDoc.Options + [doNodeAutoIndent];

        xDoc.XML.Text := AnsiReplaceText(xDoc.XML.Text, 'ConsultarLoteRpsResposta', 'ConsultarNfseRpsResposta');
        xDoc.XML.Text := AnsiReplaceText(xDoc.XML.Text, 'ConsultarLoteRpsResposta', 'ConsultarNfseRpsResposta');
      end;
      xDoc.XML.SaveToStream(AXmlNFSe);
    end;
  end;
end;

procedure NFSe_CarregarNotas(AXML: TStream; ACds: TClientDataSet);

  procedure Processar_Nodes(AFields: TFields; ACompNfse: IXMLNode; APrefixo: string);
  var
    I: Integer;
    sCampo: string;
    xNode: IXMLNode;
    sThousandSeparator: Char;
    sDecimalSeparator: Char;
  begin
    for I := 0 to AFields.Count - 1 do
    begin
      sCampo := APrefixo + AFields[I].FieldName;
      if (sCampo[Length(sCampo)] in ['0'..'9']) then
        sCampo := Copy(sCampo, 1, Length(sCampo) - 1);

      xNode := ACompNfse.ChildNodes.FindNode(sCampo);
      if (xNode <> nil) then
      begin
        if (AFields[I] is TADTField) then
          Processar_Nodes(TADTField(AFields[I]).Fields, xNode, APrefixo)
        else if (AFields[I] is TIntegerField) then
          AFields[I].AsInteger := StrToIntDef(xNode.Text, 0)
        else if (AFields[I] is TFloatField) then
        begin
          sThousandSeparator := ThousandSeparator;
          sDecimalSeparator  := DecimalSeparator;
          try
            ThousandSeparator := ',';
            DecimalSeparator  := '.';
            AFields[I].AsFloat := StrToFloatDef(xNode.Text, 0);
          finally
            ThousandSeparator := sThousandSeparator;
            DecimalSeparator  := sDecimalSeparator;
          end;
        end
        else
          AFields[I].AsString := xNode.Text;
      end;
    end;
  end;

var
  xDoc: IXMLDocument;
  sXML: TStringStream;
  xNode, xAtt, xLista, xCompNfse: IXMLNode;
  cXML, sPrefixo: String;
  I: Integer;
begin
  sXML := TStringStream.Create('');
  try
    TMemoryStream(AXml).Position := 0;
    sXML.CopyFrom(AXml, AXml.Size);
    cXML := sXML.DataString;
  finally
    FreeAndNil(sXML);
  end;

  //Alterado dia 14/01/2016 conforme Edson, para Tipografia
  //cXML := AnsiReplaceStr(cXML, 'utf-8', 'ISO-8859-1');
  cXML := AnsiReplaceStr(cXML, 'utf-8', 'iso-8859-1');
  if (cXML[1] = #239) then
    cXML := Copy(cXML, 4, Length(cXML)-3);
  xDoc := LoadXMLData(cXML);

  // Primeiro node
  xNode := xDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    xAtt := xNode.AttributeNodes.FindNode('xmlns:tc');
    if (xAtt <> nil) then
      sPrefixo := 'tc:'
    else
      sPrefixo := '';

    // Verifica se existe lista
    xLista := xNode.ChildNodes.FindNode('ListaNfse');
    if (xLista <> nil) then
    begin
      // Percorre a lista
      for I := 0 to xLista.ChildNodes.Count - 1 do
      begin
        ACds.Append;
        xCompNfse := xLista.ChildNodes[I];
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(ACds.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        ACds.Post;
      end;
    end
    else
    begin
      // Procura o CompNfse
      xCompNfse := xNode.ChildNodes.FindNode('CompNfse');
      if (xCompNfse <> nil) then
      begin
        ACds.Append;
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(ACds.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        ACds.Post;
      end;
    end;
  end;
end;

procedure SalvarASCII(AXMLStream: TStream; AArquivo: string);
var
  F: System.TextFile;
  Texto: String;
  StrStream: TStringStream;
begin
  StrStream := TStringStream.Create('');
  try
    AXMLStream.Position := 0;
    StrStream.CopyFrom(AXMLStream, AXMLStream.Size);
    Texto := StrStream.DataString;
  finally
    FreeAndNil(StrStream);
  end;

  try
    if FileExists(AArquivo) then
      DeleteFile( AArquivo );
    AssignFile(f, AArquivo);
    Rewrite(f); // Criar Arquivo
    Writeln(F, UTF8Encode( Texto ));
  finally
    CloseFile(f);
  end;
end;

{ TErro }

constructor TErro.Create(ACodigo, AMensagem: string);
begin
  inherited Create;
  FCodigo := ACodigo;
  FMensagem := AMensagem;
end;

{ EExceptionNFSe }

constructor EExceptionNFSe.CreateException(const Msg: string);
var
  List: TStringList;
  I: Integer;
  vLin, vCod, vMsg: string;
  sMsg: string;
begin
  FErros := TObjectList.Create(True);

  sMsg := AnsiReplaceStr(Msg, #8, #13);

  List := TStringList.Create;
  List.Text := sMsg;
  for I := 0 to List.Count - 1 do
  begin
    vLin := List[I];
    vCod := Copy(vLin, 0, Pos('|', vLin)-1);
    vLin := Copy(vLin, Pos('|', vLin), Length(vLin));
    vMsg := Copy(vLin, 0, Pos('|', vLin)-1);
    FErros.Add(TErro.Create(vCod, vMsg));

    inherited Create( AnsiReplaceStr(sMsg, '||', ' '));
  end;
end;

destructor EExceptionNFSe.Destroy;
begin
  FreeAndNil(FErros);
  inherited;
end;

function EExceptionNFSe.GetCount: Integer;
begin
  Result := FErros.Count
end;

function EExceptionNFSe.GetErro(Index: Integer): TErro;
begin
  Result := FErros[Index] as TErro;
end;


// MDF-e
function MDFe_Cancelar(AServidor, ACnpj, AChaveMDFe, AProtocolo, AJustificativa: string; AXml: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_Cancelar));
      TCPClient.WriteLn(AChaveMDFe);
      TCPClient.WriteLn(AProtocolo);
      TCPClient.WriteLn(AJustificativa);
      TCPClient.WriteStream(AXml, True, True);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_ConsultarStatus(AServidor, ACnpj, AUF: string): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_ConsultarStatus));
      TCPClient.WriteLn(AUf);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_CriarChave(AServidor, ACnpj, AUf, AAno, AMes, AModelo, ASerie, ANumeroDFe, ATipoEmissao: string): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_CriarChave));
      TCPClient.WriteLn(AUf);
      TCPClient.WriteLn(AAno);
      TCPClient.WriteLn(AMes);
      TCPClient.WriteLn(AModelo);
      TCPClient.WriteLn(ASerie);
      TCPClient.WriteLn(ANumeroDFe);
      TCPClient.WriteLn(ATipoEmissao);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_Buscar(AServidor, ACnpj, ARecibo: string; AMDFeAssinado, AXml: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_Buscar));
      TCPClient.WriteLn(ARecibo);
      TCPClient.WriteStream(AMDFeAssinado, True, True);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_Enviar(AServidor, ACnpj: string; AMDFe: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_Enviar));
      TCPClient.WriteStream(AMDFe, True, True);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AMDFe).Clear;
        TCPClient.ReadStream(AMDFe);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

procedure MDFe_Consultar(AServidor, ACnpj, AChaveMDFe: string; AXml: TStream);
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_Consultar));
      TCPClient.WriteLn(AChaveMDFe);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_ConsultarNaoEncerrada(AServidor, ACnpj, AUf: string; AXml: TStream): Integer;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  Result := 0;
  
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_ConsultarNaoEncerrada));
      TCPClient.WriteLn(AUf);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result :=  TCPClient.ReadInteger;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_Encerrar(AServidor, ACnpj, AChaveMDFe, AProtocolo, AData, AUF,
  AMunicipio: WideString; AXml: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_Encerrar));
      TCPClient.WriteLn(AChaveMDFe);
      TCPClient.WriteLn(AProtocolo);
      TCPClient.WriteLn(AData);
      TCPClient.WriteLn(AUF);
      TCPClient.WriteLn(AMunicipio);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_IncluirCondutor(AServidor, ACnpj, AChaveMDFe, ACpf, ANome: WideString; ASequencia: Integer; AXml: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_IncluirCondutor));
      TCPClient.WriteLn(AChaveMDFe);
      TCPClient.WriteLn(ACpf);
      TCPClient.WriteLn(ANome);
      TCPClient.WriteInteger(ASequencia);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_ConsultarDistribuicaoInteressado(AServidor, ACnpj, 
  AUf, AUltNSURecebido: string; AXml: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_ConsultarDistribuicaoInteressado));
      TCPClient.WriteLn(AUf);
      TCPClient.WriteLn(AUltNSURecebido);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

function MDFe_ConsultarDistribuicaoNSU(AServidor, ACnpj, AUf,
  ANSU: string; AXml: TStream): string;
var
  TCPClient: TIdTCPClient;
  Codigo: Integer;
begin
  TCPClient := CriarTCPClient(AServidor);
  try
    try
      TCPClient.Connect(1000);
      TCPClient.WriteLn(ACnpj);
      TCPClient.WriteInteger(Integer(uNFeConsts.MDFe_ConsultarDistribuicaoNSU));
      TCPClient.WriteLn(AUf);
      TCPClient.WriteLn(ANSU);

      Codigo := TCPClient.ReadInteger;
      if (Codigo = NFe_OK) then
      begin
        Result := TCPClient.ReadLn;
        TMemoryStream(AXml).Clear;
        TCPClient.ReadStream(AXml);
      end
      else
        raise EExceptionMDFe.Create( AnsiReplaceText(TCPClient.ReadLn, #8, sLineBreak) );
    finally
      TCPClient.Disconnect;
    end;
  finally
    FreeAndNil(TCPClient);
  end;
end;

end.
