unit UDMCadDEPara_CFOP;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadDEPara_CFOP = class(TDataModule)
    sdsDEPara_CFOP: TSQLDataSet;
    dspDEPara_CFOP: TDataSetProvider;
    cdsDEPara_CFOP: TClientDataSet;
    dsDEPara_CFOP: TDataSource;
    sdsDEPara_CFOPID: TIntegerField;
    sdsDEPara_CFOPID_CFOP_ENT: TIntegerField;
    sdsDEPara_CFOPTIPO_PRODUTO: TStringField;
    sdsDEPara_CFOPID_CFOP_GRA: TIntegerField;
    cdsDEPara_CFOPID: TIntegerField;
    cdsDEPara_CFOPID_CFOP_ENT: TIntegerField;
    cdsDEPara_CFOPTIPO_PRODUTO: TStringField;
    cdsDEPara_CFOPID_CFOP_GRA: TIntegerField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    cdsCFOPLEI: TMemoField;
    cdsCFOPBENEFICIAMENTO: TStringField;
    cdsCFOPENTRADASAIDA: TStringField;
    cdsCFOPMAOOBRA: TStringField;
    cdsCFOPOBS_CLASSIFICACAO: TMemoField;
    dsCFOP: TDataSource;
    sdsDEPara_CFOP_Consulta: TSQLDataSet;
    dspDEPara_CFOP_Consulta: TDataSetProvider;
    cdsDEPara_CFOP_Consulta: TClientDataSet;
    dsDEPara_CFOP_Consulta: TDataSource;
    cdsDEPara_CFOP_ConsultaID: TIntegerField;
    cdsDEPara_CFOP_ConsultaID_CFOP_ENT: TIntegerField;
    cdsDEPara_CFOP_ConsultaTIPO_PRODUTO: TStringField;
    cdsDEPara_CFOP_ConsultaID_CFOP_GRA: TIntegerField;
    sdsDEPara_CFOPCOD_CFOP_ENT: TStringField;
    sdsDEPara_CFOPCOD_CFOP_GRA: TStringField;
    cdsDEPara_CFOPCOD_CFOP_ENT: TStringField;
    cdsDEPara_CFOPCOD_CFOP_GRA: TStringField;
    cdsDEPara_CFOP_ConsultaCOD_CFOP_ENT: TStringField;
    cdsDEPara_CFOP_ConsultaCOD_CFOP_GRA: TStringField;
    sdsDEPara_CFOPID_CFOP_PED: TIntegerField;
    sdsDEPara_CFOPCOD_CFOP_PED: TStringField;
    cdsDEPara_CFOPID_CFOP_PED: TIntegerField;
    cdsDEPara_CFOPCOD_CFOP_PED: TStringField;
    cdsDEPara_CFOP_ConsultaID_CFOP_PED: TIntegerField;
    cdsDEPara_CFOP_ConsultaCOD_CFOP_PED: TStringField;
    cdsDEPara_CFOP_ConsultaNOME_TIPO: TStringField;
    sdsDEPara_CFOPID_SITTRIB_CF: TIntegerField;
    cdsDEPara_CFOPID_SITTRIB_CF: TIntegerField;
    sdsSitTrib_CF: TSQLDataSet;
    dspSitTrib_CF: TDataSetProvider;
    cdsSitTrib_CF: TClientDataSet;
    dsSitTrib_CF: TDataSource;
    cdsSitTrib_CFID: TIntegerField;
    cdsSitTrib_CFCODIGO: TStringField;
    cdsSitTrib_CFPERCENTUAL: TFloatField;
    sdsDEPara_CFOPCOD_SITTRIB_CF: TStringField;
    cdsDEPara_CFOPCOD_SITTRIB_CF: TStringField;
    cdsDEPara_CFOP_ConsultaID_SITTRIB_CF: TIntegerField;
    cdsDEPara_CFOP_ConsultaCOD_SITTRIB_CF: TStringField;
    sdsDEPara_CFOPID_CFOP_PROD_NFCE: TIntegerField;
    sdsDEPara_CFOPCOD_CFOP_PROD_NFCE: TStringField;
    cdsDEPara_CFOPID_CFOP_PROD_NFCE: TIntegerField;
    cdsDEPara_CFOPCOD_CFOP_PROD_NFCE: TStringField;
    cdsDEPara_CFOP_ConsultaID_CFOP_PROD_NFCE: TIntegerField;
    cdsDEPara_CFOP_ConsultaCOD_CFOP_PROD_NFCE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCFOPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    ctConsulta : String;

    procedure prc_Localizar(ID : Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadDEPara_CFOP: TDMCadDEPara_CFOP;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadDEPara_CFOP.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsDEPara_CFOP.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('DEPARA_CFOP',0);

  cdsDEPara_CFOP.Insert;
  cdsDEPara_CFOPID.AsInteger := vAux;
end;

procedure TDMCadDEPara_CFOP.prc_Excluir;
begin
  if not(cdsDEPara_CFOP.Active) or (cdsDEPara_CFOP.IsEmpty) then
    exit;
  cdsDEPara_CFOP.Delete;
  cdsDEPara_CFOP.ApplyUpdates(0);
end;

procedure TDMCadDEPara_CFOP.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsDEPara_CFOPTIPO_PRODUTO.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo não informado!';
  if cdsDEPara_CFOPID_CFOP_ENT.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** CFOP entrada não informado!';
  if cdsDEPara_CFOPID_CFOP_GRA.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** CFOP para gravar não informado!';

  if trim(vMsgErro) <> '' then
    exit;

  cdsDEPara_CFOP.Post;
  cdsDEPara_CFOP.ApplyUpdates(0);
end;

procedure TDMCadDEPara_CFOP.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsDEPara_CFOP.Close;
  sdsDEPara_CFOP.CommandText := ctCommand;
  if ID <> 0 then
    sdsDEPara_CFOP.CommandText := sdsDEPara_CFOP.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsDEPara_CFOP.Open;
end;

procedure TDMCadDEPara_CFOP.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsDEPara_CFOP.CommandText;
  ctConsulta := sdsDEPara_CFOP_Consulta.CommandText;
  cdsCFOP.Open;
  cdsSitTrib_CF.Open;
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

procedure TDMCadDEPara_CFOP.dspCFOPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadDEPara_CFOP.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
