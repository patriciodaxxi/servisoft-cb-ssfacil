unit classe.ConexaoBD;

interface

uses
  SqlExpr, inifiles, SysUtils, Forms, Dialogs, IdCoderMIME;

type
  TConexaoBanco = class

    private
      FConexaoBanco : TSQLConnection;

    public
      constructor Create;
      destructor Destroy; override;
      function GetConexao : TSQLConnection;
      property ConexaoBanco : TSQLConnection read GetConexao;

  end;

implementation

{ TConexaoBanco }

constructor TConexaoBanco.Create;
var
  ArquivoIni, BancoDados, DriverName, UserName, PassWord : String;
  LocalServer : Integer;
  Configuracoes : TIniFile;
  Decoder64: TIdDecoderMIME;
  Encoder64: TIdEncoderMIME;
begin
  Decoder64 := TIdDecoderMIME.Create(nil);
  ArquivoIni := ExtractFilePath(Application.ExeName) + '\Config.ini';
  if not FileExists(ArquivoIni) then
  begin
    MessageDlg('Arquivo config.ini não encontrado!', mtInformation,[mbOK],0);
    Exit;
  end;
  Configuracoes := TIniFile.Create(ArquivoINI);
  try
     BancoDados := Configuracoes.ReadString('SSFacil', 'DATABASE', DriverName);
     DriverName := Configuracoes.ReadString('SSFacil', 'DriverName', DriverName);
     UserName   := Configuracoes.ReadString('SSFacil', 'UserName',   UserName);
     PassWord   := Decoder64.DecodeString(Configuracoes.ReadString('SSFacil', 'PASSWORD', ''));
  finally
    Configuracoes.Free;
    Decoder64.Free;
  end;

  try
    FConexaoBanco := TSQLConnection.Create(Application);
    FConexaoBanco.ConnectionName := 'SSFacil';
    FConexaoBanco.DriverName     := 'Interbase';
    FConexaoBanco.LibraryName    := 'dbexpint.dll';
    FConexaoBanco.VendorLib      := 'gds32.dll';
    FConexaoBanco.GetDriverFunc  := 'getSQLDriverINTERBASE';
    FConexaoBanco.LoginPrompt    := False;

    FConexaoBanco.Connected := False;
    FConexaoBanco.Params.Values['DataBase'] := BancoDados;
    FConexaoBanco.Params.Values['User_Name'] := UserName;
    FConexaoBanco.Params.Values['Password'] := PassWord;
    FConexaoBanco.Connected := True;
  except
    MessageDlg('Erro ao conectar o Banco de dados ' + BancoDados,mtInformation,[mbOK],0);
  end;
end;

destructor TConexaoBanco.Destroy;
begin
  FConexaoBanco.Free;
  inherited;
end;

function TConexaoBanco.GetConexao: TSQLConnection;
begin
  Result := FConexaoBanco;
end;

end.
