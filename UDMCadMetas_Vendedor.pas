unit UDMCadMetas_Vendedor;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadMetas_Vendedor = class(TDataModule)
    sdsMetas_Vendedor: TSQLDataSet;
    dspMetas_Vendedor: TDataSetProvider;
    cdsMetas_Vendedor: TClientDataSet;
    dsMetas_Vendedor: TDataSource;
    sdsMetas_VendedorID: TIntegerField;
    sdsMetas_VendedorANO: TIntegerField;
    sdsMetas_VendedorMES: TIntegerField;
    sdsMetas_VendedorVLR_META: TFloatField;
    cdsMetas_VendedorID: TIntegerField;
    cdsMetas_VendedorANO: TIntegerField;
    cdsMetas_VendedorMES: TIntegerField;
    cdsMetas_VendedorVLR_META: TFloatField;
    qVerifica: TSQLQuery;
    qVerificaID: TIntegerField;
    qVerificaVLR_META: TFloatField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorUF: TStringField;
    cdsVendedorCIDADE: TStringField;
    sdsMetas_VendedorID_VENDEDOR: TIntegerField;
    cdsMetas_VendedorID_VENDEDOR: TIntegerField;
    qRegiao: TSQLQuery;
    qRegiaoCODIGO: TIntegerField;
    qRegiaoNOME: TStringField;
    qRegiaoUF: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaANO: TIntegerField;
    cdsConsultaMES: TIntegerField;
    cdsConsultaVLR_META: TFloatField;
    cdsConsultaID_VENDEDOR: TIntegerField;
    cdsConsultaNOME_MES: TStringField;
    cdsConsultaNOME_VENDEDOR: TStringField;
    cdsConsultaUF: TStringField;
    cdsConsultaREGIAO: TStringField;
    sdsMetas_VendedorANO_MES: TStringField;
    cdsMetas_VendedorANO_MES: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMetas_VendedorUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctqRegiao : String;
    ctConsulta : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar(Regiao : String);
    procedure prc_Excluir;
  end;

var
  DMCadMetas_Vendedor: TDMCadMetas_Vendedor;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, UDMCadCombinacao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadMetas_Vendedor.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsMetas_Vendedor.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('METAS_VENDEDOR',0);

  cdsMetas_Vendedor.Insert;
  cdsMetas_VendedorID.AsInteger := vAux;
end;

procedure TDMCadMetas_Vendedor.prc_Excluir;
begin
  if not(cdsMetas_Vendedor.Active) or (cdsMetas_Vendedor.IsEmpty) then
    exit;
  cdsMetas_Vendedor.Delete;
  cdsMetas_Vendedor.ApplyUpdates(0);
end;

procedure TDMCadMetas_Vendedor.prc_Gravar(Regiao : String);
var
  vRegiaoAux : String;
  vAnoAux, vMesAux : Integer;
  vVlrMetaAux : Real;
begin
  vMsgErro := '';
  if cdsMetas_VendedorANO.AsInteger < 2015 then
    vMsgErro := '*** Ano inválido!';
  if (cdsMetas_VendedorMES.AsInteger <= 0) or (cdsMetas_VendedorMES.AsInteger > 12) then
    vMsgErro := '*** Mês inválido!';           
  if (vMsgErro = '') and (Regiao = 'Vendedor') then
  begin
    qVerifica.Close;
    qVerifica.ParamByName('ANO').AsInteger := cdsMetas_VendedorANO.AsInteger;
    qVerifica.ParamByName('MES').AsInteger := cdsMetas_VendedorMES.AsInteger;
    qVerifica.ParamByName('ID_VENDEDOR').AsInteger := cdsMetas_VendedorID_VENDEDOR.AsInteger;
    qVerifica.Open;
    if not(qVerifica.IsEmpty) and (cdsMetas_VendedorID.AsInteger <> qVerificaID.AsInteger) then
      vMsgErro := '*** Ano/Mês já estão cadastrado no vendedor!';
  end;
  if vMsgErro <> '' then
    exit;
  if Regiao <> 'Vendedor' then
  begin
    vAnoAux     := cdsMetas_VendedorANO.AsInteger;
    vMesAux     := cdsMetas_VendedorMES.AsInteger;
    vVlrMetaAux := cdsMetas_VendedorVLR_META.AsFloat;
    cdsMetas_Vendedor.Cancel;

    vRegiaoAux := '';
    if Regiao = 'Sul' then
      vRegiaoAux := '''RS'''+','+'''SC'''+','+'''PR'''
    else
    if Regiao = 'Sudeste' then
      vRegiaoAux := '''SP'''+','+'''RJ'''+','+'''MG'''+','+'''ES'''
    else
    if Regiao = 'Centro-Oeste' then
      vRegiaoAux := '''DF'''+','+'''GO'''+','+'''MT'''+','+'''MS'''
    else
    if Regiao = 'Nordeste' then
      vRegiaoAux := '''BA'''+','+'''SE'''+','+'''AL'''+','+'''PE'''+','+'''PB'''+','+'''CE'''+','+'''MA'''+','+'''RN'''+'''PI'''
    else
    if Regiao = 'Norte' then
      vRegiaoAux := '''AM'''+','+'''RO'''+','+'''AC'''+','+'''RR'''+','+'''PA'''+','+'''AP'''+','+'''TO''';
    qRegiao.Close;
    qRegiao.SQL.Text := ctqRegiao
                      + ' AND VEND.UF IN (' + vRegiaoAux + ')';
    qRegiao.Open;

    while not qRegiao.Eof do
    begin
      cdsMetas_Vendedor.Close;
      sdsMetas_Vendedor.CommandText := ctCommand
                                     + ' WHERE ID_VENDEDOR = :ID_VENDEDOR'
                                     + '   AND ANO = :ANO'
                                     + '   AND MES = :MES';
      sdsMetas_Vendedor.ParamByName('ID_VENDEDOR').AsInteger := qRegiaoCODIGO.AsInteger;
      sdsMetas_Vendedor.ParamByName('ANO').AsInteger         := vAnoAux;
      sdsMetas_Vendedor.ParamByName('MES').AsInteger         := vMesAux;
      cdsMetas_Vendedor.Open;
      if not cdsMetas_Vendedor.IsEmpty then
        cdsMetas_Vendedor.Edit
      else
      begin
        prc_Inserir;
        cdsMetas_VendedorANO.AsInteger := vAnoAux;
        cdsMetas_VendedorMES.AsInteger := vMesAux;
        cdsMetas_VendedorID_VENDEDOR.AsInteger  := qRegiaoCODIGO.AsInteger;
      end;
      cdsMetas_VendedorVLR_META.AsFloat := vVlrMetaAux;
      cdsMetas_Vendedor.Post;
      cdsMetas_Vendedor.ApplyUpdates(0);
      qRegiao.Next;
    end
  end
  else
  begin
    cdsMetas_Vendedor.Post;
    cdsMetas_Vendedor.ApplyUpdates(0);
  end;
end;

procedure TDMCadMetas_Vendedor.prc_Localizar(ID: Integer);
begin
  cdsMetas_Vendedor.Close;
  sdsMetas_Vendedor.CommandText := ctCommand;
  if ID <> 0 then
    sdsMetas_Vendedor.CommandText := sdsMetas_Vendedor.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsMetas_Vendedor.Open;
end;

procedure TDMCadMetas_Vendedor.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsMetas_Vendedor.CommandText;
  ctqRegiao  := qRegiao.SQL.Text;
  ctConsulta := sdsConsulta.CommandText;
  cdsVendedor.Open;
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

procedure TDMCadMetas_Vendedor.dspMetas_VendedorUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadMetas_Vendedor.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
