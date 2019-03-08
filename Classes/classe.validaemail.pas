unit classe.validaemail;

interface

uses SysUtils, Forms, SqlExpr, DmdDatabase, uUtilPadrao,frxExportPDF, frxExportMail;

type
  TValidaEmail = class
  private
    FEmail : String;
    FUsuario : String;
    FSenha : String;
    FHost : String;
    FPorta : Integer;
    function getEmail: string;
    function getHost: String;
    function getSenha: String;
    function getUsuario: String;
    function getPorta: Integer;
    procedure setEmail(const Value: string);
    procedure setHost(const Value: String);
    procedure setSenha(const Value: String);
    procedure setUsuario(const Value: String);
    procedure setPorta(const Value: Integer);
  public
    constructor create(Filial : Integer; Tipo : String);
    property email : string read getEmail write setEmail;
    property usuario : String read getUsuario write setUsuario;
    property senha : String read getSenha write setSenha;
    property host : String read getHost write setHost;
    property porta : Integer read getPorta write setPorta;
  end;

implementation

{ TValidaEmail }

constructor TValidaEmail.create(Filial : Integer; Tipo : String);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'select CONFIG_EMAIL.* from FILIAL_EMAIL';
  sds.CommandText   := sds.CommandText + ' inner join CONFIG_EMAIL on FILIAL_EMAIL.ID_CONFIG_EMAIL = CONFIG_EMAIL.ID';
  sds.CommandText   := sds.CommandText + ' where FILIAL_EMAIL.ID = ' + IntToStr(Filial);
  sds.CommandText   := sds.CommandText + ' and FILIAL_EMAIL.TIPO_REG = ' + QuotedStr(Tipo);
  sds.Open;
  senha := Descriptografar(sds.FieldByName('Base').AsInteger
                                 , 'ssfacil'
                                 , sds.FieldByName('SMTP_SENHA').AsString );
  host  := sds.FieldByName('SMTP_CLIENTE').AsString;
  porta := sds.FieldByName('SMTP_PORTA').AsInteger;
  email := sds.FieldByName('REMETENTE_EMAIL').AsString;
  usuario := sds.FieldByName('SMTP_USUARIO').AsString;
end;

function TValidaEmail.getEmail: string;
begin
  Result := FEmail;
end;

function TValidaEmail.getHost: String;
begin
  Result := FHost;
end;

function TValidaEmail.getPorta: Integer;
begin
  Result := FPorta;
end;

function TValidaEmail.getSenha: String;
begin
  Result := FSenha;
end;

function TValidaEmail.getUsuario: String;
begin
  Result := FUsuario;
end;

procedure TValidaEmail.setEmail(const Value: string);
begin
  if Value = '' then
    raise Exception.Create('Email não informado nos parâmetros');
  FEmail := Value;
end;

procedure TValidaEmail.setHost(const Value: String);
begin
  if Value = '' then
    raise Exception.Create('Host não informado nos parâmetros');
  FHost := Value;
end;

procedure TValidaEmail.setSenha(const Value: String);
begin
  if Value = '' then
    raise Exception.Create('Senha do email não informada nos parâmetros');
  FSenha := Value;
end;

procedure TValidaEmail.setUsuario(const Value: String);
begin
  if Value = '' then
    raise Exception.Create('Usuário do email não informado nos parâmetros');
  FUsuario := Value;
end;

procedure TValidaEmail.setPorta(const Value: Integer);
begin
  if Value = 0 then
    raise Exception.Create('Porta do smtp não informada nos parâmetros');
  FPorta := Value;
end;

end.

