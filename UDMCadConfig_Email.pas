unit UDMCadConfig_Email;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadConfig_Email = class(TDataModule)
    sdsConfig_Email: TSQLDataSet;
    dspConfig_Email: TDataSetProvider;
    cdsConfig_Email: TClientDataSet;
    dsConfig_Email: TDataSource;
    sdsConfig_EmailID: TIntegerField;
    sdsConfig_EmailNOME_CONFIG: TStringField;
    sdsConfig_EmailREMETENTE_NOME: TStringField;
    sdsConfig_EmailREMETENTE_EMAIL: TStringField;
    sdsConfig_EmailSMTP_CLIENTE: TStringField;
    sdsConfig_EmailSMTP_PORTA: TIntegerField;
    sdsConfig_EmailSMTP_USUARIO: TStringField;
    sdsConfig_EmailSMTP_SENHA: TStringField;
    sdsConfig_EmailSOLICITAR_CONFIRMACAO: TStringField;
    sdsConfig_EmailBASE: TSmallintField;
    sdsConfig_EmailSMTP_REQUER_SSL: TStringField;
    cdsConfig_EmailID: TIntegerField;
    cdsConfig_EmailNOME_CONFIG: TStringField;
    cdsConfig_EmailREMETENTE_NOME: TStringField;
    cdsConfig_EmailREMETENTE_EMAIL: TStringField;
    cdsConfig_EmailSMTP_CLIENTE: TStringField;
    cdsConfig_EmailSMTP_PORTA: TIntegerField;
    cdsConfig_EmailSMTP_REQUER_SSL: TStringField;
    cdsConfig_EmailSMTP_USUARIO: TStringField;
    cdsConfig_EmailSMTP_SENHA: TStringField;
    cdsConfig_EmailSOLICITAR_CONFIRMACAO: TStringField;
    cdsConfig_EmailBASE: TSmallintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspConfig_EmailUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsConfig_EmailNewRecord(DataSet: TDataSet);
    procedure cdsConfig_EmailSMTP_SENHAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsConfig_EmailSMTP_SENHASetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadConfig_Email: TDMCadConfig_Email;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadConfig_Email.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsConfig_Email.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CONFIG_EMAIL',0);

  cdsConfig_Email.Insert;
  cdsConfig_EmailID.AsInteger := vAux;
end;

procedure TDMCadConfig_Email.prc_Excluir;
begin
  if not(cdsConfig_Email.Active) or (cdsConfig_Email.IsEmpty) then
    exit;
  cdsConfig_Email.Delete;
  cdsConfig_Email.ApplyUpdates(0);
end;

procedure TDMCadConfig_Email.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsConfig_EmailNOME_CONFIG.AsString) = '' then
    vMsgErro := '*** Nome da identificação da configuração não informado!';
  if (trim(cdsConfig_EmailREMETENTE_EMAIL.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Email não informado!';
  if (trim(cdsConfig_EmailREMETENTE_NOME.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Nome do remetente não informado!';
  if (trim(cdsConfig_EmailSMTP_CLIENTE.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** SMTP Cliente não informado!';
  if cdsConfig_EmailSMTP_PORTA.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** SMTP Porta não informada!';
  if (trim(cdsConfig_EmailSMTP_SENHA.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Senha não informada!';
  if (trim(cdsConfig_EmailSMTP_USUARIO.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Usuário não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsConfig_Email.Post;
  cdsConfig_Email.ApplyUpdates(0);
end;

procedure TDMCadConfig_Email.prc_Localizar(ID: Integer);
begin
  cdsConfig_Email.Close;
  sdsConfig_Email.CommandText := ctCommand;
  if ID <> 0 then
    sdsConfig_Email.CommandText := sdsConfig_Email.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsConfig_Email.Open;
end;

procedure TDMCadConfig_Email.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsConfig_Email.CommandText;
  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadConfig_Email.dspConfig_EmailUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadConfig_Email.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadConfig_Email.cdsConfig_EmailNewRecord(DataSet: TDataSet);
begin
  cdsConfig_EmailSMTP_REQUER_SSL.AsString       := 'N';
  cdsConfig_EmailSOLICITAR_CONFIRMACAO.AsString := 'N';
  cdsConfig_EmailBASE.AsInteger                 := Random(999);
end;

procedure TDMCadConfig_Email.cdsConfig_EmailSMTP_SENHAGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := Descriptografar( cdsConfig_EmailBASE.AsInteger
                         , 'ssfacil'
                         , Sender.AsString );
end;

procedure TDMCadConfig_Email.cdsConfig_EmailSMTP_SENHASetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := Criptografar( cdsConfig_EmailBASE.AsInteger
                                 , 'ssfacil'
                                 , Text );
end;

end.
