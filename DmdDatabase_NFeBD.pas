unit DmdDatabase_NFeBD;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Forms, IniFiles, IdCoder, IdCoder3to4, IdCoderMIME, FMTBcd, IdBaseComponent,
  DBClient, Provider, Dialogs, MidasLib;

type
  TdmDatabase_NFeBD = class(TDataModule)
    scoNFeBD: TSQLConnection;
    Decoder64: TIdDecoderMIME;
    Encoder64: TIdEncoderMIME;
    sqVersaoAtual: TSQLQuery;
    sdsVersao: TSQLDataSet;
    sdsVersaoID: TIntegerField;
    sdsVersaoSCRIPT: TBlobField;
    dspVersao: TDataSetProvider;
    sdsExec: TSQLDataSet;
    cdsVersao: TClientDataSet;
    cdsVersaoID: TIntegerField;
    cdsVersaoSCRIPT: TBlobField;
    sqVersaoAtualVERSAO_BANCO_NFE: TIntegerField;
    sdsExec2: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function Fnc_ArquivoConfiguracao: string;
    procedure AtualizaFDB;
  public
    procedure prc_UpdateError(Tabela: String; ukTipo: TUpdateKind; Emsg: EUpdateError);
    //procedure AtualizaFDB;

  end;

var
  dmDatabase_NFeBD: TdmDatabase_NFeBD;

implementation

uses DmdDatabase;

{$R *.dfm}

const
  cArquivoConfiguracao = 'Config.ini';

function TdmDatabase_NFeBD.Fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TdmDatabase_NFeBD.DataModuleCreate(Sender: TObject);
var
  Config: TIniFile;
  dtLiberado: TDateTime;
begin
  scoNFeBD.Connected      := False;
  scoNFeBD.KeepConnection := True;

  if not FileExists(Fnc_ArquivoConfiguracao) then
    Exit;

  Config := TIniFile.Create(Fnc_ArquivoConfiguracao);
  scoNFeBD.LoadParamsFromIniFile(Fnc_ArquivoConfiguracao);

  try
//////////////////CONECTA AO BANCO DE DADOS DA APLICAÇÃO
    try
      scoNFeBD.Params.Values['DRIVERNAME'] := 'INTERBASE';
      scoNFeBD.Params.Values['SQLDIALECT'] := '3';
      scoNFeBD.Params.Values['DATABASE']   := Config.ReadString('NFeConfig', 'DATABASE', '');
      scoNFeBD.Params.Values['USER_NAME']  := Config.ReadString('NFeConfig', 'USERNAME', '');
      scoNFeBD.Params.Values['PASSWORD']   := Decoder64.DecodeString(Config.ReadString('NFeConfig', 'PASSWORD', ''));
      scoNFeBD.Connected := True;
    except
      on E: exception do
      begin
        raise Exception.Create('Erro ao conectar ao banco de dados:' + #13 +
                               'Mensagem: ' + E.Message + #13 +
                               'Classe: ' + E.ClassName + #13 + #13 +
                               'Dados da Conexao NFeConfig' + #13 +
                               'Banco de Dados: '  + scoNFeBD.Params.Values['Database'] + #13 +
                               'Usuário: '         + scoNFeBD.Params.Values['User_Name']);
      end;
    end;

  finally
    FreeAndNil(Config);
  end;

  AtualizaFDB;
end;

procedure TdmDatabase_NFeBD.prc_UpdateError(Tabela: String;
  ukTipo: TUpdateKind; Emsg: EUpdateError);
begin
  if ukTipo = ukDelete  then
    //raise Exception.Create('Erro ao tentar excluir: ' + ' Tabela: ' + '(' + Tabela + ')'  + #13 + Emsg.Message)
    raise Exception.Create('Erro ao tentar excluir: ' + #13 + Emsg.Message)
  else
  if ukTipo = ukModify then
    //raise Exception.Create('Erro ao tentar gravar: ' + ' Tabela: ' + '(' + Tabela + ')'  + #13 + Emsg.Message);
    raise Exception.Create('Erro ao tentar gravar: ' + #13 + Emsg.Message);
end;

procedure TdmDatabase_NFeBD.AtualizaFDB;
var
  DelimiterPos: Integer;
  S: WideString;
  Command: WideString;
  vFlag, vErro: Boolean;
  F: TextFile;
  arqLog: String;
  vID_Versao: Integer;
  vSQL_Ant: WideString;
  ID, ID2: TTransactionDesc;
  sds: TSQLDataSet;
  vFlag2 : Integer;
  vMicroAtual : Boolean;
  vTextoAux : String;
begin
  sqVersaoAtual.Open;
  if sqVersaoAtualVERSAO_BANCO_NFE.IsNull then
    vTextoAux := '0'
  else
    vTextoAux := sqVersaoAtualVERSAO_BANCO_NFE.AsString; 

  sdsVersao.CommandText := sdsVersao.CommandText + ' AND ID > ' + vTextoAux + ' AND PROGRAMA_ID = 5 ';
  cdsVersao.Open;
  if not cdsVersao.IsEmpty then
  begin
    try
      arqLog := '';
      sds := TSQLDataSet.Create(nil);
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      vFlag2 := 1;
      while vFlag2 = 1 do
      begin
        sds.Close;
        sds.CommandText   := 'SELECT FLAG  FROM TABELALOC WHERE TABELA = ' + QuotedStr('INICIO');
        sds.Open;
        vFlag2 := sds.FieldByName('FLAG').AsInteger;
      end;
      sqVersaoAtual.Close;
      sqVersaoAtual.Open;
      cdsVersao.Close;
      sdsVersao.CommandText := sdsVersao.CommandText + ' AND ID > ' + vTextoAux + ' AND PROGRAMA_ID = 5 ';
      cdsVersao.Open;
      if cdsVersao.IsEmpty then
        exit;

      sds.Close;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('INICIO');
      sds.ExecSQL();

      vErro  := False;
      arqLog := 'FDBUpdate_NFe_' + FormatDateTime('YYYYMMDD',Date) +  '_' + FormatDateTime('HHMMSS',Time) +  '.log';
      AssignFile(F,arqLog);
      ReWrite(F);

      while not cdsVersao.Eof do
      begin
        S := cdsVersaoSCRIPT.Value; // ScriptFile: String - your whole script
        vFlag := True;
        while vFlag do
        begin
          DelimiterPos := Pos('}', S);
          if DelimiterPos = 0 then
            DelimiterPos := Length(S);
          Command:= Copy(S, 1, DelimiterPos - 1);
          if pos('COMMIT',UpperCase(Command)) <= 0 then
            vSQL_Ant := Command;

          sdsExec.CommandText := (Command);
          if trim(sdsExec.CommandText) <> '' then
          begin
            ID.TransactionID  := 99;
            ID.IsolationLevel := xilREADCOMMITTED;
            scoNFeBD.StartTransaction(ID);
            try
              sdsExec.ExecSQL(True);
              scoNFeBD.Commit(ID);
            except
              WriteLn(F,'----------------------------');
              WriteLn(F,'Versão: ' + cdsVersaoID.AsString + ' = ' + vSQL_Ant);
              vErro := True;
              scoNFeBD.Rollback(ID);
            end;
          end;
          Delete(S, 1, DelimiterPos);
          if Length(S) = 0 then
            vFlag := False;
        end;
        sdsExec2.CommandText := 'UPDATE PARAMETROS_GERAL SET VERSAO_BANCO_NFE = ' + cdsVersaoID.AsString;
        sdsExec2.ExecSQL;

        cdsVersao.Next;
      end;
    finally
      if trim(arqLog) <> '' then
        CloseFile(F);
      if not(vErro) then
        DeleteFile(arqLog);
      sds.Close;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 0 WHERE TABELA = ' + QuotedStr('INICIO');
      sds.ExecSQL();

      FreeAndNil(sds);
    end;
  end;
  cdsVersao.Close;
  sqVersaoAtual.Close;
  dmDatabase.scoAtualiza.Connected := False;
end;

end.

