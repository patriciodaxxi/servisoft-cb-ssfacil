unit uDmCadContaOrc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, dbXPress, Dialogs,Controls;

type
  TdmCadContaOrc = class(TDataModule)
    sdsContaOrc: TSQLDataSet;
    dspContaOrc: TDataSetProvider;
    cdsContaOrc: TClientDataSet;
    dsContaOrc: TDataSource;
    sdsSuperior: TSQLDataSet;
    dspSuperior: TDataSetProvider;
    cdsSuperior: TClientDataSet;
    dsSuperior: TDataSource;
    sdsSuperiorID: TIntegerField;
    sdsSuperiorCODIGO: TStringField;
    sdsSuperiorDESCRICAO: TStringField;
    cdsSuperiorID: TIntegerField;
    cdsSuperiorCODIGO: TStringField;
    cdsSuperiorDESCRICAO: TStringField;
    sqProximo: TSQLQuery;
    sqProximoMAX: TStringField;
    sdsSuperiorNIVEL: TIntegerField;
    cdsSuperiorNIVEL: TIntegerField;
    dsContaOrc_Mestre: TDataSource;
    sdsContaOrc_Itens: TSQLDataSet;
    sdsContaOrc_ItensID: TIntegerField;
    sdsContaOrc_ItensITEM: TIntegerField;
    sdsContaOrc_ItensANO: TIntegerField;
    sdsContaOrc_ItensTIPO_REG: TStringField;
    sdsContaOrc_ItensVALOR: TFloatField;
    cdsContaOrc_Itens: TClientDataSet;
    cdsContaOrc_ItensID: TIntegerField;
    cdsContaOrc_ItensITEM: TIntegerField;
    cdsContaOrc_ItensANO: TIntegerField;
    cdsContaOrc_ItensTIPO_REG: TStringField;
    cdsContaOrc_ItensVALOR: TFloatField;
    dsContaOrc_Itens: TDataSource;
    sdsPessoa: TSQLDataSet;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaID_VENDEDOR: TIntegerField;
    sdsPessoaPERC_COMISSAO: TFloatField;
    sdsPessoaID_CONDPGTO: TIntegerField;
    sdsPessoaID_CONTABOLETO: TIntegerField;
    sdsPessoaID_TIPOCOBRANCA: TIntegerField;
    sdsPessoaID_REGIME_TRIB: TIntegerField;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaID_VENDEDOR: TIntegerField;
    cdsPessoaPERC_COMISSAO: TFloatField;
    cdsPessoaID_CONDPGTO: TIntegerField;
    cdsPessoaID_CONTABOLETO: TIntegerField;
    cdsPessoaID_TIPOCOBRANCA: TIntegerField;
    cdsPessoaID_REGIME_TRIB: TIntegerField;
    dsPessoa: TDataSource;
    qCalculo: TSQLQuery;
    qCalculoVALOR: TFloatField;
    qParametros: TSQLQuery;
    qParametrosUSA_PREVISAO: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField;
    sdsContaOrc_CCusto: TSQLDataSet;
    cdsContaOrc_CCusto: TClientDataSet;
    dsContaOrc_CCusto: TDataSource;
    qCentroCusto: TSQLQuery;
    qCentroCustoID: TIntegerField;
    qCentroCustoCODIGO: TStringField;
    qCentroCustoDESCRICAO: TStringField;
    qCentroCustoSUPERIOR: TStringField;
    sdsContaOrc_CCustoID: TIntegerField;
    sdsContaOrc_CCustoITEM: TIntegerField;
    sdsContaOrc_CCustoID_CENTROCUSTO: TIntegerField;
    sdsContaOrc_CCustoPERCENTUAL: TFloatField;
    cdsContaOrc_CCustoID: TIntegerField;
    cdsContaOrc_CCustoITEM: TIntegerField;
    cdsContaOrc_CCustoID_CENTROCUSTO: TIntegerField;
    cdsContaOrc_CCustoPERCENTUAL: TFloatField;
    sdsContaOrcID: TIntegerField;
    sdsContaOrcTIPO: TStringField;
    sdsContaOrcCODIGO: TStringField;
    sdsContaOrcDESCRICAO: TStringField;
    sdsContaOrcNIVEL: TIntegerField;
    sdsContaOrcSUPERIOR: TStringField;
    sdsContaOrcINATIVO: TStringField;
    sdsContaOrcID_PESSOA: TIntegerField;
    sdsContaOrcDIA_VENCIMENTO: TIntegerField;
    sdsContaOrcDTVENCIMENTO: TDateField;
    sdsContaOrcTIPO_CALCULO: TStringField;
    sdsContaOrcVALOR: TFloatField;
    sdsContaOrcTIPO_DESPESA: TStringField;
    sdsContaOrcTIPO_RD: TStringField;
    sdsContaOrcCOD_CONTABIL: TIntegerField;
    sdsContaOrcNOME_AUX: TStringField;
    cdsContaOrcID: TIntegerField;
    cdsContaOrcTIPO: TStringField;
    cdsContaOrcCODIGO: TStringField;
    cdsContaOrcDESCRICAO: TStringField;
    cdsContaOrcNIVEL: TIntegerField;
    cdsContaOrcSUPERIOR: TStringField;
    cdsContaOrcINATIVO: TStringField;
    cdsContaOrcID_PESSOA: TIntegerField;
    cdsContaOrcDIA_VENCIMENTO: TIntegerField;
    cdsContaOrcDTVENCIMENTO: TDateField;
    cdsContaOrcTIPO_CALCULO: TStringField;
    cdsContaOrcVALOR: TFloatField;
    cdsContaOrcTIPO_DESPESA: TStringField;
    cdsContaOrcTIPO_RD: TStringField;
    cdsContaOrcCOD_CONTABIL: TIntegerField;
    cdsContaOrcNOME_AUX: TStringField;
    cdsContaOrcsdsContaOrc_CCusto: TDataSetField;
    cdsContaOrcsdsContaOrc_Itens: TDataSetField;
    sdsContaOrc_CCustoDESCRICAO: TStringField;
    cdsContaOrc_CCustoDESCRICAO: TStringField;
    qPlanoContabil: TSQLQuery;
    qPlanoContabilID: TIntegerField;
    qPlanoContabilNOME_AUX: TStringField;
    qParametros_Cta_Orc: TSQLQuery;
    qParametros_Cta_OrcUSA_VALOR_ORC: TStringField;
    sdsTipo_Conta_Orc: TSQLDataSet;
    dspTipo_Conta_Orc: TDataSetProvider;
    cdsTipo_Conta_Orc: TClientDataSet;
    dsTipo_Conta_Orc: TDataSource;
    cdsTipo_Conta_OrcID: TIntegerField;
    cdsTipo_Conta_OrcNOME: TStringField;
    sdsContaOrcID_TIPO_CONTA: TIntegerField;
    cdsContaOrcID_TIPO_CONTA: TIntegerField;
    qParametros_Cta_OrcMOSTRAR_PESSOA: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaTIPO: TStringField;
    cdsConsultaCODIGO: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaNIVEL: TIntegerField;
    cdsConsultaSUPERIOR: TStringField;
    cdsConsultaINATIVO: TStringField;
    cdsConsultaID_PESSOA: TIntegerField;
    cdsConsultaDIA_VENCIMENTO: TIntegerField;
    cdsConsultaDTVENCIMENTO: TDateField;
    cdsConsultaTIPO_CALCULO: TStringField;
    cdsConsultaVALOR: TFloatField;
    cdsConsultaTIPO_DESPESA: TStringField;
    cdsConsultaTIPO_RD: TStringField;
    cdsConsultaCOD_CONTABIL: TIntegerField;
    cdsConsultaID_TIPO_CONTA: TIntegerField;
    cdsConsultaNOME_AUX: TStringField;
    cdsConsultaANO: TIntegerField;
    cdsConsultaVALOR_ORC: TFloatField;
    qTotalFixa: TSQLQuery;
    qTotalFixaVLR_ORC: TFloatField;
    cdsConsultaclPerc_Adim: TFloatField;
    sdsContaOrcVLR_ORC: TFloatField;
    sdsContaOrcANO: TIntegerField;
    cdsContaOrcVLR_ORC: TFloatField;
    cdsContaOrcANO: TIntegerField;
    sdsPRC_SOMA_VLR_ORC: TSQLDataSet;
    sdsANT: TSQLDataSet;
    qTotalPares: TSQLQuery;
    qTotalParesPREVISAO: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspContaOrcUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsContaOrcNewRecord(DataSet: TDataSet);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgConta: String;
    ctCommand: String;
    ctConsulta: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Proximo_Codigo;
    procedure prc_Inserir_CentroCusto;
    procedure prc_Abrir_CentroCusto(ID:Integer);
    procedure prc_Inserir_Itens;
  end;

var
  dmCadContaOrc: TdmCadContaOrc;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TdmCadContaOrc.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsContaOrc.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CONTA_ORCAMENTO',0);

  cdsContaOrc.Insert;
  cdsContaOrcID.AsInteger := vAux;
end;

procedure TdmCadContaOrc.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsContaOrc.Active) or (cdsContaOrc.IsEmpty) then
    exit;

  prc_Abrir_CentroCusto(cdsContaOrcID.AsInteger);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
  cdsContaOrc_CCusto.First;
  while not cdsContaOrc_CCusto.Eof do
    cdsContaOrc_CCusto.Delete;
  cdsContaOrc_Itens.First;
  while not cdsContaOrc_Itens.Eof do
    cdsContaOrc_Itens.Delete;
  cdsContaOrc.Delete;
  cdsContaOrc.ApplyUpdates(0);
  dmDatabase.scoDados.Commit(ID);

  except
  on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
      //Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;

end;

procedure TdmCadContaOrc.prc_Gravar;
var
  i : Integer;
  vNivelAux : Integer;
  vTotalAliq : Real;
  vAno : Integer;
  vVlr_Orc : Real;
  vIDAux : Integer;
begin
  vMsgConta := '';
  vTotalAliq := 0;
  cdsContaOrc_CCusto.First;
  while not cdsContaOrc_CCusto.eof do
  begin
    vTotalAliq := vTotalAliq + cdsContaOrc_CCustoPERCENTUAL.AsFloat;
    cdsContaOrc_CCusto.Next;
  end;
  if (vTotalAliq > 0) and (vTotalAliq < 100) then
    if MessageDlg('Soma das alíquotas do Centro de Custo não atingiu os 100%, deseja Confirmar?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
      vMsgConta := 'O Registro não foi gravado!';

  if (vTotalAliq > 0) and (vTotalAliq > 100) then
    vMsgConta := 'Soma das alíquotas do Centro de Custo ultrapassou os 100%';
  if trim(cdsContaOrcDESCRICAO.AsString) = '' then
    vMsgConta := '*** Descrição não informada!';
  if (trim(cdsContaOrcCODIGO.AsString) = '') then
    vMsgConta := vMsgConta + #13 + '*** Código da conta não informado!';
  if (cdsContaOrcTIPO_RD.AsString <> 'R') and (cdsContaOrcTIPO_RD.AsString <> 'D') then
    vMsgConta := vMsgConta + #13 + '*** Receita/Despesa não informado!';
  if vMsgConta <> '' then
    exit;

  vNivelAux := 0;
  for i := 1 to Length(cdsContaOrcCODIGO.AsString) do
  begin
    if copy(cdsContaOrcCODIGO.AsString,i,1) = '.' then
      vNivelAux := vNivelAux + 1;
  end;
  vNivelAux := vNivelAux + 1;
  cdsContaOrcNIVEL.AsInteger := vNivelAux;
  vIDAux := cdsContaOrcID.AsInteger;
  cdsContaOrc.Post;
  if cdsContaOrc.ChangeCount > 0 then
    cdsContaOrc.ApplyUpdates(0);

  sdsPRC_SOMA_VLR_ORC.Close;
  sdsPRC_SOMA_VLR_ORC.ParamByName('ID').AsInteger := vIDAux;
  sdsPRC_SOMA_VLR_ORC.ExecSQL;
end;

procedure TdmCadContaOrc.prc_Localizar(ID: Integer);
begin
  cdsContaOrc.Close;
  sdsContaOrc.CommandText := ctCommand;
  if ID <> 0 then
    sdsContaOrc.CommandText := sdsContaOrc.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsContaOrc.Open;
  cdsContaOrc_Itens.Close;
  cdsContaOrc_Itens.Open;
  cdsContaOrc_CCusto.Close;
  cdsContaOrc_CCusto.Open;
end;

procedure TdmCadContaOrc.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsContaOrc.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  cdsPessoa.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  qParametros_Cta_Orc.Close;
  qParametros_Cta_Orc.Open;
  cdsTipo_Conta_Orc.Open;
  //*** Logs Implantado na versão .353 (neste datamodule foi na versão .611)
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

procedure TdmCadContaOrc.dspContaOrcUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TdmCadContaOrc.cdsContaOrcNewRecord(DataSet: TDataSet);
begin
  cdsContaOrcINATIVO.AsString := 'N';
end;

procedure TdmCadContaOrc.prc_Proximo_Codigo;
var
  vUlt: String;
  vProx: Integer;
  vNivel : Integer;
  sds: TSQLDataSet;
begin
  if (cdsContaOrcCODIGO.IsNull) or (cdsContaOrcCODIGO.AsString = '') then
  begin
    vNivel := cdsContaOrcNIVEL.AsInteger;
    if vNivel <= 1 then
      vNivel := 1;
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados; //--
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := ' SELECT MAX(CODIGO) CODIGO '
                       +  'FROM CONTA_ORCAMENTO '
                       +  'WHERE 0 = 0';
      if cdsContaOrcNIVEL.AsInteger > 1 then
        sds.CommandText := sds.CommandText + ' AND CODIGO LIKE ' + QuotedStr(cdsSuperiorCODIGO.AsString + '.%');
      sds.CommandText := sds.CommandText + ' AND NIVEL = ' + IntToStr(vNivel);
      sds.Open;
      vUlt := sds.FieldByName('CODIGO').AsString;
      if vNivel > 1 then
        vUlt := Copy(sds.FieldByName('CODIGO').AsString,Length(sds.FieldByName('CODIGO').AsString)-1,2);
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      cdsContaOrcCODIGO.AsString := FormatFloat('000',vProx);
      if vNivel > 1 then
        cdsContaOrcCODIGO.AsString := cdsSuperiorCODIGO.AsString + '.' + FormatFloat('00',vProx);
      sds.Close;
    finally
      FreeAndNil(sds);
    end;
  end;
end;

procedure TdmCadContaOrc.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TdmCadContaOrc.prc_Inserir_CentroCusto;
var
  vItemAux : Integer;
begin
  cdsContaOrc_CCusto.Last;
  vItemAux := cdsContaOrc_CCustoITEM.AsInteger;
  cdsContaOrc_CCusto.Insert;
  cdsContaOrc_CCustoID.AsInteger   := cdsContaOrcID.AsInteger;
  cdsContaOrc_CCustoITEM.AsInteger := vItemAux + 1;
end;

procedure TdmCadContaOrc.prc_Abrir_CentroCusto(ID: Integer);
begin
  cdsContaOrc_CCusto.Close;
  sdsContaOrc_CCusto.ParamByName('ID').AsInteger := ID;
  cdsContaOrc_CCusto.Open;
end;

procedure TdmCadContaOrc.cdsConsultaCalcFields(DataSet: TDataSet);
begin
  if StrToFloat(FormatFloat('0.00',qTotalFixaVLR_ORC.AsFloat)) > 0 then
  begin
    cdsConsultaclPerc_Adim.AsFloat := 0;
    if StrToFloat(FormatFloat('0.00',cdsConsultaVALOR_ORC.AsFloat)) > 0 then
      cdsConsultaclPerc_Adim.AsFloat := StrToFloat(FormatFloat('0.00',(cdsConsultaVALOR_ORC.AsFloat / qTotalFixaVLR_ORC.AsFloat) * 100));
  end;
end;

procedure TdmCadContaOrc.prc_Inserir_Itens;
var
  vItemAux : Integer;
begin
  cdsContaOrc_Itens.Last;
  vItemAux := cdsContaOrc_ItensITEM.AsInteger;
  cdsContaOrc_Itens.Insert;
  cdsContaOrc_ItensID.AsInteger   := cdsContaOrcID.AsInteger;
  cdsContaOrc_ItensITEM.AsInteger := vItemAux + 1;
end;

end.
