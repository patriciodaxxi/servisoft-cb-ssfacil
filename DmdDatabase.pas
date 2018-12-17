unit DmdDatabase;

interface
                              uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Forms, IniFiles, IdCoder, IdCoder3to4, IdCoderMIME, FMTBcd, IdBaseComponent,
  DBClient, Provider, Dialogs, MidasLib, RLFilters, RLRichFilter, RLXLSFilter, RLPDFFilter, RLPreviewForm;
                                  
type
  TdmDatabase = class(TDataModule)
    scoDados: TSQLConnection;
    Decoder64: TIdDecoderMIME;
    sdsExec: TSQLDataSet;
    scoAtualiza: TSQLConnection;
    sdsVersao: TSQLDataSet;                                                   
    dspVersao: TDataSetProvider;
    cdsVersao: TClientDataSet;
    sdsVersaoID: TIntegerField;
    sdsVersaoSCRIPT: TBlobField;
    cdsVersaoID: TIntegerField;
    cdsVersaoSCRIPT: TBlobField;
    sqVersaoAtual: TSQLQuery;
    sqVersaoAtualVERSAO_BANCO: TIntegerField;
    scoLiberacao: TSQLConnection;
    sqEmpresa: TSQLQuery;                                                                
    sqDataLiberacao: TSQLQuery;
    sqEmpresaCNPJ_CPF: TStringField;
    sqDataLiberacaoDT_LIBERADO: TStringField;
    sqEmpresaLIBERADO_ATE: TStringField;
    Encoder64: TIdEncoderMIME;                              
    sdsExecRemoto: TSQLDataSet;
    sdsModuloRemoto: TSQLDataSet;
    dspModuloRemoto: TDataSetProvider;
    cdsModuloRemoto: TClientDataSet;
    sdsModuloRemotoID: TIntegerField;
    sdsModuloRemotoMODULO_ID: TIntegerField;
    sdsModuloRemotoLIBERADO: TStringField;
    cdsModuloRemotoID: TIntegerField;
    cdsModuloRemotoMODULO_ID: TIntegerField;
    cdsModuloRemotoLIBERADO: TStringField;
    sdsModuloRemotoMODULO_NOME: TStringField;
    cdsModuloRemotoMODULO_NOME: TStringField;
    sqEmpresaID: TIntegerField;
    sqDataLiberacaoCODVENDEDOR: TIntegerField;
    sqEmpresaULTIMO_ACESSO: TStringField;
    qParametros: TSQLQuery;
    qParametrosID_RESP_SUPORTE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function Fnc_ArquivoConfiguracao: string;

    function Monta_Numero2(Campo: String; Tamanho: Integer): String;

  public
    function ProximaSequencia(NomeTabela: string; Filial: Integer): Integer;
    function Registro_Max(NomeTabela: string; Campo: String): Integer;
    procedure AtualizaFDB;
    function verificaLiberacao: Boolean;

    function ProximaTabelaLoc(NomeTabela : String) : Integer;

    procedure prc_UpdateError(Tabela: String; ukTipo: TUpdateKind; Emsg: EUpdateError);

  end;

var
  dmDatabase: TdmDatabase;

implementation

uses StrUtils;

{$R *.dfm}

const
  cArquivoConfiguracao = 'Config.ini';

function TdmDatabase.Fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

function TdmDatabase.ProximaSequencia(NomeTabela: string; Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
  Flag: Boolean;
begin
  Result := 0;
  iSeq   := 0;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID  := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    scoDados.StartTransaction(ID);
    try
      sds.SQLConnection := scoDados;
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := 'SELECT NUMREGISTRO FROM SEQUENCIAL WHERE TABELA = :TABELA AND FILIAL = :FILIAL';
      sds.ParamByName('TABELA').AsString := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger    := Filial;
      sds.Open;

      //iSeq := sds.FieldByName('NUMREGISTRO').AsInteger + 1;
      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;

      if (iSeq = 0) and (sds.IsEmpty) then
        scoDados.ExecuteDirect('INSERT INTO SEQUENCIAL(TABELA,FILIAL,NUMREGISTRO) VALUES(''' + NomeTabela +
                              ''', ''' + IntToStr(Filial) + ''', ''' + IntToStr(0) + ''' )');
      scoDados.Commit(ID);
    except
      scoDados.Rollback(ID);
      raise;
    end;
  finally
    FreeAndNil(sds);
  end;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID  := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    dmDatabase.scoDados.StartTransaction(ID);
    try //--
      sds.SQLConnection := dmDatabase.scoDados;

      sds.NoMetadata  := True;
      sds.GetMetadata := False;

      sds.CommandText := 'UPDATE SEQUENCIAL SET NUMREGISTRO = (SELECT MAX(COALESCE(NUMREGISTRO,0)) + 1 ' +
                         'FROM SEQUENCIAL ' +
                         'WHERE TABELA = :TABELA' +
                         ' AND FILIAL = :FILIAL) ' +
                         'WHERE TABELA = :TABELA' +
                         ' AND FILIAL = :FILIAL';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;

      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
            Flag := False;
        end;
      end;

      sds.Close;
      sds.CommandText := 'SELECT MAX(COALESCE(NUMREGISTRO,0)) NUMREGISTRO  ' +
                         'FROM SEQUENCIAL ' +
                         'WHERE TABELA = :TABELA ' +
                         'AND FILIAL = :FILIAL';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;
      sds.Open;

      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;

      dmDatabase.scoDados.Commit(ID);

      Result := iSeq;

    except
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end;

  finally
    FreeAndNil(sds);
  end;
end;

function TdmDatabase.Registro_Max(NomeTabela: string; Campo: String): Integer;
var                                                                                                             
  sds: TSQLDataSet;
  iSeq: Integer;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;

    sds.NoMetadata := True;
    sds.GetMetadata := False;

    sds.Close;
    sds.CommandText := ' SELECT MAX(' +CAMPO+ ')' + ' ID FROM ' + NomeTabela;
    sds.Open;

    iSeq := sds.FieldByName('ID').AsInteger;

    Result := iSeq;

  finally
    FreeAndNil(sds);
  end;
end;

procedure TdmDatabase.AtualizaFDB;
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
begin
   // verifica se alguém está atualizando
  {sds := TSQLDataSet.Create(nil);
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
  end;}
  //

  sqVersaoAtual.Open;
  sdsVersao.CommandText := sdsVersao.CommandText + ' AND ID > ' + sqVersaoAtualVERSAO_BANCO.AsString + ' AND PROGRAMA_ID = 1 ';
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
      sdsVersao.CommandText := sdsVersao.CommandText + ' AND ID > ' + sqVersaoAtualVERSAO_BANCO.AsString + ' AND PROGRAMA_ID = 1 ';
      cdsVersao.Open;
      if cdsVersao.IsEmpty then
        exit;

      sds.Close;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('INICIO');
      sds.ExecSQL();

      vErro  := False;
      arqLog := 'FDBUpdate_' + FormatDateTime('YYYYMMDD',Date) +  '_' + FormatDateTime('HHMMSS',Time) +  '.log';
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
          //SQLQuery1.ParamCheck := False;
          //SQLQuery1.SQL.Text := command;
          //SQLQuery1.SQL.SaveToFile('C:\a\testeedson.txt');
          if trim(sdsExec.CommandText) <> '' then
          begin
            ID.TransactionID  := 99;
            ID.IsolationLevel := xilREADCOMMITTED;
            dmDatabase.scoDados.StartTransaction(ID);
            try
              sdsExec.ExecSQL(True);
              //SQLQuery1.ExecSQL(True);
              dmDatabase.scoDados.Commit(ID);
            except
              WriteLn(F,'----------------------------');
              WriteLn(F,'Versão: ' + cdsVersaoID.AsString + ' = ' + vSQL_Ant);
              vErro := True;
              dmDatabase.scoDados.Rollback(ID);
            end;
          end;
          //sdsExec.CommandText := ('UPDATE PARAMETROS SET VERSAO_BANCO = ' + cdsVersaoID.AsString);
          //sdsExec.ExecSQL(True);
          Delete(S, 1, DelimiterPos);
          if Length(S) = 0 then
            vFlag := False;
        end;
        sdsExec.CommandText := ('UPDATE PARAMETROS SET VERSAO_BANCO = ' + cdsVersaoID.AsString);
        sdsExec.ExecSQL(True);

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
  scoAtualiza.Connected := False;
end;

function TdmDatabase.verificaLiberacao: Boolean;
var
  vData: String;
  vAux : String;
begin
  Result := True;

  vAux := Monta_Numero2(sqEmpresaCNPJ_CPF.AsString,0);
  if Length(vAux) > 11 then
    vAux := copy(vAux,1,2) + '.' + copy(vAux,3,3) + '.' + copy(vAux,6,3) + '/' + copy(vAux,9,4) + '-' + copy(vAux,13,2)
  else
    vAux := copy(vAux,1,3) + '.' + copy(vAux,4,3) + '.' + copy(vAux,7,3) + '-' + copy(vAux,10,2);
  sqDataLiberacao.Close;
  //sqDataLiberacao.ParamByName('D1').AsString := sqEmpresaCNPJ_CPF.AsString;
  sqDataLiberacao.ParamByName('D1').AsString := vAux;
  sqDataLiberacao.Open;

  //14/01/2018 Aqui vai ser ajustado o código do responsável pelo sistema na tabela SSFacil.fdb buscanddo infomação na base de dados
  //do ftp  servisoft.fdb
  qParametros.Close;
  qParametros.Open;
  if qParametrosID_RESP_SUPORTE.AsInteger <> sqDataLiberacaoCODVENDEDOR.AsInteger then
  begin
    sdsExec.CommandText := ('UPDATE PARAMETROS SET ID_RESP_SUPORTE = ' + IntToStr(sqDataLiberacaoCODVENDEDOR.AsInteger));
    sdsExec.ExecSQL(True);
  end;
  //*******************

  vData := Decoder64.DecodeString(sqDataLiberacaoDT_LIBERADO.AsString);
  if vData <> '' then
  begin
    sdsExec.CommandText := ('UPDATE FILIAL SET LIBERADO_ATE = ' +
                            QuotedStr(sqDataLiberacaoDT_LIBERADO.AsString) +
                            ' WHERE PRINCIPAL = ''S''');
    sdsExec.ExecSQL(True);

    if (StrToDate(vData) > 1) and (StrToDate(vData) < Date) then
      Result := False;

///INCLUI VENDEDOR NO CADASTRO DA FILIAL
    sdsExec.CommandText := ('UPDATE PARAMETROS SET ID_RESP_SUPORTE = ' + sqDataLiberacaoCODVENDEDOR.AsString);
    sdsExec.ExecSQL(True);
  end
  else
  begin
    ShowMessage('Empresa com o CNPJ  ' + sqEmpresaCNPJ_CPF.AsString + '  não localizada no banco de dados Servisoft!');
    Result := False;
  end;
end;

procedure TdmDatabase.prc_UpdateError(Tabela: String;
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

procedure TdmDatabase.DataModuleCreate(Sender: TObject);
var
  Config: TIniFile;
  dtLiberado: TDateTime;
  dtUltimo_Acesso : TDateTime;
  vTexto : String;
  vFoneAux : String;
begin
  scoDados.Connected     := False;
  scoLiberacao.Connected := False;
  scoAtualiza.Connected  := False;
  //scoDados.LoadParamsOnConnect     := True;
  //scoLiberacao.LoadParamsOnConnect := True;
  //scoAtualiza.LoadParamsOnConnect  := True;
  scoDados.KeepConnection     := True;
  scoLiberacao.KeepConnection := True;
  scoAtualiza.KeepConnection  := True;
  vTexto := Fnc_ArquivoConfiguracao;
  if not FileExists(Fnc_ArquivoConfiguracao) then
  begin
    MessageDlg(' Arquivo Config.ini não encontrado!',mtInformation,[mbOk],0);
    Exit;
  end;

  Config := TIniFile.Create(Fnc_ArquivoConfiguracao);
  scoDados.LoadParamsFromIniFile(Fnc_ArquivoConfiguracao);
  scoLiberacao.LoadParamsFromIniFile(Fnc_ArquivoConfiguracao);
  scoAtualiza.LoadParamsFromIniFile(Fnc_ArquivoConfiguracao);

  try
//////////////////CONECTA AO BANCO DE DADOS DA APLICAÇÃO
    try
      scoDados.Params.Values['DRIVERNAME'] := 'INTERBASE';
      scoDados.Params.Values['SQLDIALECT'] := '3';
      scoDados.Params.Values['DATABASE']   := Config.ReadString('SSFacil', 'DATABASE', '');
      scoDados.Params.Values['USER_NAME']  := Config.ReadString('SSFacil', 'USERNAME', '');
      scoDados.Params.Values['PASSWORD']   := Decoder64.DecodeString(Config.ReadString('SSFacil', 'PASSWORD', ''));
      scoDados.Connected := True;
    except
      on E: exception do
      begin
        raise Exception.Create('Erro ao conectar ao banco de dados:' + #13 +
                               'Mensagem: ' + E.Message + #13 +
                               'Classe: ' + E.ClassName + #13 + #13 +
                               'Dados da Conexao SSFacil' + #13 +
                               'Banco de Dados: '  + scoDados.Params.Values['Database'] + #13 +
                               'Usuário: '         + scoDados.Params.Values['User_Name']);
      end;
    end;

//////////////////VERIFICA SE EMPRESA ESTÁ LIBERADA
      sqEmpresa.Open;
      if (sqEmpresaLIBERADO_ATE.IsNull) or (Trim(sqEmpresaLIBERADO_ATE.AsString) = '') then
      begin
        sdsExec.CommandText := ('UPDATE FILIAL SET LIBERADO_ATE = ' +
                                QuotedStr(Encoder64.EncodeString(DateToStr(Date + 5)))) +
                                ' WHERE PRINCIPAL = ''S''';
        sdsExec.ExecSQL(True);
      end;
      sqEmpresa.Close;
      sqEmpresa.Open;

      dtLiberado := StrToDate(Decoder64.DecodeString(sqEmpresaLIBERADO_ATE.AsString));
      vTexto     := Decoder64.DecodeString(sqEmpresaULTIMO_ACESSO.AsString);
      if trim(vTexto) <> '' then
        dtUltimo_Acesso := StrToDate(Decoder64.DecodeString(sqEmpresaULTIMO_ACESSO.AsString))
      else
        dtUltimo_Acesso := 0;
      qParametros.Close;
      qParametros.Open;
      if qParametrosID_RESP_SUPORTE.AsInteger = 90 then
        vFoneAux := 'Contate com a Mash Soluções pelo telefone (51) 31110780 / 31110354 / 34411084!'
      else
        vFoneAux := 'Contate com a Servisoft pelo telefone (51) 3598-6584!';

      if (dtUltimo_Acesso > 10) and (dtUltimo_Acesso > Date) then
      begin
        MessageDlg('Data inválida, favor verificar a data do último acesso ' + DateToStr(dtUltimo_Acesso) + #13 + vFoneAux,mtInformation,[mbOk],0);
        Application.Terminate;
      end
      else
      if dtLiberado >= Date then
      begin
        sdsExec.CommandText := ('UPDATE FILIAL SET ULTIMO_ACESSO = ' +
                                QuotedStr(Encoder64.EncodeString(DateToStr(Date)))) +
                                ' WHERE PRINCIPAL = ''S''';
        sdsExec.ExecSQL(True);
      end
      else
      begin
        try
          try
            scoLiberacao.Params.Values['DRIVERNAME'] := 'INTERBASE';
            scoLiberacao.Params.Values['SQLDIALECT'] := '3';
            scoLiberacao.Params.Values['DATABASE']   := Config.ReadString('Liberacao', 'DATABASE', '');
            scoLiberacao.Params.Values['USER_NAME']  := Config.ReadString('Liberacao', 'USERNAME', '');
            scoLiberacao.Params.Values['PASSWORD']   := Decoder64.DecodeString(Config.ReadString('Liberacao', 'PASSWORD', ''));
            scoLiberacao.Connected := True;
          except
          on E: exception do
            raise Exception.Create('Erro ao conectar ao banco de dados!');
          end;

          if not(verificaLiberacao) then
          begin
            MessageDlg('A validade de uso do programa expirou!' + #13 +
                       vFoneAux,mtInformation,[mbOk],0);
            Application.Terminate;
        end;
        finally
          begin
            sqEmpresa.Close;
            sqEmpresa.Open;
            dtLiberado := StrToDate(Decoder64.DecodeString(sqEmpresaLIBERADO_ATE.AsString));
            if dtLiberado >= Date then
            begin
              sdsExec.CommandText := ('UPDATE FILIAL SET ULTIMO_ACESSO = ' +
                                     QuotedStr(Encoder64.EncodeString(DateToStr(Date)))) +
                                     ' WHERE PRINCIPAL = ''S''';
              sdsExec.ExecSQL(True);
            end
            else
            begin
              try
                scoLiberacao.Params.Values['DRIVERNAME'] := 'INTERBASE';
                scoLiberacao.Params.Values['SQLDIALECT'] := '3';
                scoLiberacao.Params.Values['DATABASE']   := Config.ReadString('Liberacao', 'DATABASE2', '');
                scoLiberacao.Params.Values['USER_NAME']  := Config.ReadString('Liberacao', 'USERNAME2', '');
                scoLiberacao.Params.Values['PASSWORD']   := Decoder64.DecodeString(Config.ReadString('Liberacao', 'PASSWORD2', ''));
                scoLiberacao.Connected := True;
              except
                MessageDlg('Servidor de licenças não localizado!' + #13 +
                           vFoneAux,mtInformation,[mbOk],0);
                Application.Terminate;
              end;
            end;
          end
        end;
      end;
//////////////////VERIFICA E ATUALIZA FDB
    try
      scoAtualiza.Params.Values['DRIVERNAME'] := 'INTERBASE';
      scoAtualiza.Params.Values['SQLDIALECT'] := '3';
      scoAtualiza.Params.Values['DATABASE']   := Config.ReadString('FDBUpdate', 'DATABASE', '');
      scoAtualiza.Params.Values['USER_NAME']  := Config.ReadString('FDBUpdate', 'USERNAME', '');
      scoAtualiza.Params.Values['PASSWORD']   := Decoder64.DecodeString(Config.ReadString('FDBUpdate', 'PASSWORD', ''));
      scoAtualiza.Connected := True;
    except
      on E: exception do
      begin
        raise Exception.Create('Erro ao conectar ao banco de dados:' + #13 +
                               'Mensagem: ' + E.Message + #13 +
                               'Classe: ' + E.ClassName + #13 + #13 +
                               'Dados da Conexao FDBUpdate' + #13 +
                               'Banco de Dados: '  + scoAtualiza.Params.Values['Database'] + #13 +
                               'Usuário: '         + scoAtualiza.Params.Values['User_Name']);
      end;
    end;

  finally
    FreeAndNil(Config);

  end;

  AtualizaFDB;
end;

function TdmDatabase.ProximaTabelaLoc(NomeTabela: String): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
  Flag: Boolean;
begin
  iSeq   := 0;
  Result := 0;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID := 990;
    ID.IsolationLevel := xilREADCOMMITTED;

    scoDados.StartTransaction(ID);
    try
      sds.SQLConnection := scoDados;
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := 'SELECT FLAG FROM TABELALOC WHERE TABELA = :TABELA';
      sds.ParamByName('TABELA').AsString := NomeTabela;
      sds.Open;

      //iSeq := sds.FieldByName('NUMREGISTRO').AsInteger + 1;
      iSeq := sds.FieldByName('FLAG').AsInteger;

      if (iSeq = 0) and (sds.IsEmpty) then
        scoDados.ExecuteDirect('INSERT INTO TABELALOC(TABELA,FLAG) VALUES(''' + NomeTabela +
                              ''', ''' + IntToStr(0) + ''' )');
      scoDados.Commit(ID);
    except
      scoDados.Rollback(ID);
      raise;
    end;
  finally
    FreeAndNil(sds);
  end;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID  := 990;
    ID.IsolationLevel := xilREADCOMMITTED;

    dmDatabase.scoDados.StartTransaction(ID);
    try //--
      sds.SQLConnection := dmDatabase.scoDados;

      sds.NoMetadata  := True;
      sds.GetMetadata := False;

      sds.CommandText := 'UPDATE TABELALOC SET FLAG = (SELECT MAX(COALESCE(FLAG,0)) + 1 ' +
                         'FROM TABELALOC ' +
                         'WHERE TABELA = :TABELA)' +
                         'WHERE TABELA = :TABELA';

      sds.ParamByName('TABELA').AsString  := NomeTabela;

      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
            Flag := False;
        end;
      end;

      sds.Close;
      sds.CommandText := 'SELECT MAX(COALESCE(FLAG,0)) FLAG  ' +
                         'FROM TABELALOC ' +
                         'WHERE TABELA = :TABELA ';
      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.Open;

      iSeq   := sds.FieldByName('FLAG').AsInteger;
      Result := iSeq;

      dmDatabase.scoDados.Commit(ID);

    except
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end;

  finally
    FreeAndNil(sds);
  end;
end;

function TdmDatabase.Monta_Numero2(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

end.

