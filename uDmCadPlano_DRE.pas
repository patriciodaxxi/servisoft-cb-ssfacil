unit uDmCadPlano_DRE;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, dbXPress, Dialogs,Controls;

type
  TDmCadPlano_DRE = class(TDataModule)
    sdsPlano_DRE: TSQLDataSet;
    dspPlano_DRE: TDataSetProvider;
    cdsPlano_DRE: TClientDataSet;
    dsPlano_DRE: TDataSource;
    sdsSuperior: TSQLDataSet;
    dspSuperior: TDataSetProvider;
    cdsSuperior: TClientDataSet;
    dsSuperior: TDataSource;
    cdsSuperiorID: TIntegerField;
    cdsSuperiorCODIGO: TStringField;
    sqProximo: TSQLQuery;
    sqProximoMAX: TStringField;
    cdsSuperiorNIVEL: TIntegerField;
    dsPlano_DRE_Mestre: TDataSource;
    qContaOrc: TSQLQuery;
    qContaOrcID: TIntegerField;
    qContaOrcTIPO: TStringField;
    qContaOrcCODIGO: TStringField;
    qContaOrcDESCRICAO: TStringField;
    qContaOrcNIVEL: TIntegerField;
    qContaOrcSUPERIOR: TStringField;
    qContaOrcINATIVO: TStringField;
    qContaOrcID_PESSOA: TIntegerField;
    qContaOrcDIA_VENCIMENTO: TIntegerField;
    qContaOrcDTVENCIMENTO: TDateField;
    qContaOrcTIPO_CALCULO: TStringField;
    qContaOrcVALOR: TFloatField;
    qContaOrcTIPO_DESPESA: TStringField;
    qContaOrcTIPO_RD: TStringField;
    qContaOrcCOD_CONTABIL: TIntegerField;
    sdsPlano_DRE_Itens: TSQLDataSet;
    cdsPlano_DRE_Itens: TClientDataSet;
    dsPlano_DRE_Itens: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsPlano_DREID: TIntegerField;
    sdsPlano_DRECODIGO: TStringField;
    sdsPlano_DRENOME: TStringField;
    sdsPlano_DRENIVEL: TIntegerField;
    sdsPlano_DRETIPO_REG: TStringField;
    sdsPlano_DRESUPERIOR: TIntegerField;
    sdsPlano_DREIMPRIMIR: TStringField;
    sdsPlano_DRESOMAR: TStringField;
    cdsPlano_DREID: TIntegerField;
    cdsPlano_DRECODIGO: TStringField;
    cdsPlano_DRENOME: TStringField;
    cdsPlano_DRENIVEL: TIntegerField;
    cdsPlano_DRETIPO_REG: TStringField;
    cdsPlano_DRESUPERIOR: TIntegerField;
    cdsPlano_DREIMPRIMIR: TStringField;
    cdsPlano_DRESOMAR: TStringField;
    sdsPlano_DRE_ItensID: TIntegerField;
    sdsPlano_DRE_ItensITEM: TIntegerField;
    sdsPlano_DRE_ItensID_CONTA_ORCAMENTO: TIntegerField;
    cdsPlano_DREsdsPlano_DRE_Itens: TDataSetField;
    cdsPlano_DRE_ItensID: TIntegerField;
    cdsPlano_DRE_ItensITEM: TIntegerField;
    cdsPlano_DRE_ItensID_CONTA_ORCAMENTO: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TStringField;
    cdsConsultaNOME: TStringField;
    cdsConsultaNIVEL: TIntegerField;
    cdsConsultaTIPO_REG: TStringField;
    cdsConsultaSUPERIOR: TIntegerField;
    cdsConsultaIMPRIMIR: TStringField;
    cdsConsultaSOMAR: TStringField;
    cdsConsultaNOME_AUX: TStringField;
    cdsConsultaDESCRICAO_TIPO_REG: TStringField;
    cdsSuperiorNOME: TStringField;
    cdsSuperiorSOMAR: TStringField;
    cdsPlano_DRE_ItensclNome: TStringField;
    cdsPlano_DRE_ItensclCodigo: TStringField;
    mPlanoAux: TClientDataSet;
    mPlanoAuxID_DRE: TIntegerField;
    mPlanoAuxCOD_DRE: TStringField;
    mPlanoAuxNOME: TStringField;
    mPlanoAuxNivel: TIntegerField;
    mPlanoAuxTipo_Reg: TStringField;
    mPlanoAuxSuperior: TIntegerField;
    mPlanoAuxSomar: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPlano_DREUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPlano_DRE_ItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgConta: String;
    ctCommand: String;
    ctConsulta: String;
    vItem_ContaOrc : Integer;
    vITem_Centro_Custo: Integer;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Proximo_Codigo;
    procedure prc_Inserir_Itens;
  end;

var
  DmCadPlano_DRE: TDmCadPlano_DRE;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDmCadPlano_DRE.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsPlano_DRE.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PLANO_DRE',0);

  cdsPlano_DRE.Insert;
  cdsPlano_DREID.AsInteger := vAux;
end;

procedure TDmCadPlano_DRE.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsPlano_DRE.Active) or (cdsPlano_DRE.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsPlano_DRE_Itens.First;
    while not cdsPlano_DRE_Itens.Eof do
      cdsPlano_DRE_Itens.Delete;
    cdsPlano_DRE.Delete;
    cdsPlano_DRE.ApplyUpdates(0);
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

procedure TDmCadPlano_DRE.prc_Gravar;
var
  i : Integer;
  vNivelAux : Integer;
begin
  vMsgConta := '';
  if trim(cdsPlano_DRENOME.AsString) = '' then
    vMsgConta := '*** Descrição não informada!';
  if (trim(cdsPlano_DRECODIGO.AsString) = '') then
    vMsgConta := vMsgConta + #13 + '*** Código da conta não informado!';
  if vMsgConta <> '' then
    exit;

  vNivelAux := 0;
  for i := 1 to Length(cdsPlano_DRECODIGO.AsString) do
  begin
    if copy(cdsPlano_DRECODIGO.AsString,i,1) = '.' then
      vNivelAux := vNivelAux + 1;
  end;
  vNivelAux := vNivelAux + 1;
  cdsPlano_DRENIVEL.AsInteger := vNivelAux;
  cdsPlano_DRE.Post;
  if cdsPlano_DRE.ChangeCount > 0 then
    cdsPlano_DRE.ApplyUpdates(0);
end;

procedure TDmCadPlano_DRE.prc_Localizar(ID: Integer);
begin
  cdsPlano_DRE.Close;
  sdsPlano_DRE.CommandText := ctCommand;
  if ID <> 0 then
    sdsPlano_DRE.CommandText := sdsPlano_DRE.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsPlano_DRE.Open;
  cdsPlano_DRE_Itens.Close;
  cdsPlano_DRE_Itens.Open;
end;

procedure TDmCadPlano_DRE.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsPlano_DRE.CommandText;
  ctConsulta := sdsConsulta.CommandText;
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

procedure TDmCadPlano_DRE.dspPlano_DREUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDmCadPlano_DRE.prc_Proximo_Codigo;
var
  vUlt: String;
  vProx: Integer;
  vNivel : Integer;
  sds: TSQLDataSet;
begin
  if (cdsPlano_DRECODIGO.IsNull) or (cdsPlano_DRECODIGO.AsString = '') then
  begin
    vNivel := cdsPlano_DRENIVEL.AsInteger;
    if vNivel <= 1 then
      vNivel := 1;
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados; //--
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := ' SELECT MAX(CODIGO) CODIGO '
                       +  'FROM PLANO_DRE '
                       +  'WHERE 0 = 0';
      if cdsPlano_DRENIVEL.AsInteger > 1 then
        sds.CommandText := sds.CommandText + ' AND CODIGO LIKE ' + QuotedStr(cdsSuperiorCODIGO.AsString + '.%');
      sds.CommandText := sds.CommandText + ' AND NIVEL = ' + IntToStr(vNivel);
      sds.Open;
      vUlt := sds.FieldByName('CODIGO').AsString;
      if vNivel > 1 then
        vUlt := Copy(sds.FieldByName('CODIGO').AsString,Length(sds.FieldByName('CODIGO').AsString)-1,2);
      if trim(vUlt) = '' then
        vUlt := '0';
      vProx := StrToInt(vUlt) + 1;
      cdsPlano_DRECODIGO.AsString := FormatFloat('000',vProx);
      if vNivel > 1 then
        cdsPlano_DRECODIGO.AsString := cdsSuperiorCODIGO.AsString + '.' + FormatFloat('00',vProx);
      sds.Close;
    finally
      FreeAndNil(sds);
    end;
  end;
end;

procedure TDmCadPlano_DRE.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDmCadPlano_DRE.prc_Inserir_Itens;
var
  vItemAux : Integer;
begin
  cdsPlano_DRE_Itens.Last;
  vItemAux := cdsPlano_DRE_ItensITEM.AsInteger;
  cdsPlano_DRE_Itens.Insert;
  cdsPlano_DRE_ItensID.AsInteger   := cdsPlano_DREID.AsInteger;
  cdsPlano_DRE_ItensITEM.AsInteger := vItemAux + 1;
end;

procedure TDmCadPlano_DRE.cdsPlano_DRE_ItensCalcFields(DataSet: TDataSet);
begin
  if cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger > 0 then
  begin
    qContaOrc.Close;
    qContaOrc.ParamByName('ID').AsInteger := cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger;
    qContaOrc.Open;
    cdsPlano_DRE_ItensclNome.AsString   := qContaOrcDESCRICAO.AsString;
    cdsPlano_DRE_ItensclCodigo.AsString := qContaOrcCODIGO.AsString;
  end;
end;

end.
