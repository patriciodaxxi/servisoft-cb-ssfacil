unit UDMCadCBarra;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCBarra = class(TDataModule)
    sdsCBarra: TSQLDataSet;
    dspCBarra: TDataSetProvider;
    cdsCBarra: TClientDataSet;
    dscBarra: TDataSource;
    sdsCBarraID: TIntegerField;
    sdsCBarraCOD_BARRA: TStringField;
    sdsCBarraID_PRODUTO: TIntegerField;
    sdsCBarraID_COR: TIntegerField;
    sdsCBarraTAMANHO: TStringField;
    sdsCBarraCOD_PRINCIPAL: TStringField;
    sdsCBarraCOD_SEQUENCIAL: TIntegerField;
    sdsCBarraFILIAL: TIntegerField;
    cdsCBarraID: TIntegerField;
    cdsCBarraCOD_BARRA: TStringField;
    cdsCBarraID_PRODUTO: TIntegerField;
    cdsCBarraID_COR: TIntegerField;
    cdsCBarraTAMANHO: TStringField;
    cdsCBarraCOD_PRINCIPAL: TStringField;
    cdsCBarraCOD_SEQUENCIAL: TIntegerField;
    cdsCBarraFILIAL: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    dsFilial: TDataSource;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    cdsCombinacaoID_COMBINACAO_COR: TFMTBCDField;
    dsCombinacao: TDataSource;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    mCBarraAux: TClientDataSet;
    dsmCBarraAux: TDataSource;
    mCBarraAuxID_Produto: TIntegerField;
    mCBarraAuxID_CBarra: TIntegerField;
    mCBarraAuxReferencia: TStringField;
    mCBarraAuxNome: TStringField;
    mCBarraAuxTamanho: TStringField;
    mCBarraAuxNome_Combinacao: TStringField;
    mCBarraAuxID_Combinacao: TIntegerField;
    sdsProduto_Tam: TSQLDataSet;
    dspProduto_Tam: TDataSetProvider;
    cdsProduto_Tam: TClientDataSet;
    dsProduto_Tam: TDataSource;
    cdsProduto_TamID: TIntegerField;
    cdsProduto_TamTAMANHO: TStringField;
    mCBarraAuxCBarra: TStringField;
    mCBarraAuxFilial: TIntegerField;
    mCBarraAuxNome_Filial: TStringField;
    qParametros: TSQLQuery;
    qParametrosINFORMAR_COR_PROD: TStringField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosUSA_GRADE: TStringField;
    sdsFilial_CBarra: TSQLDataSet;
    dspFilial_CBarra: TDataSetProvider;
    cdsFilial_CBarra: TClientDataSet;
    dsFilial_CBarra: TDataSource;
    sdsFilial_CBarraID: TIntegerField;
    sdsFilial_CBarraITEM: TIntegerField;
    sdsFilial_CBarraCOD_BARRA: TStringField;
    sdsFilial_CBarraULT_SEQUENCIA: TIntegerField;
    sdsFilial_CBarraMAX_SEQUENCIA: TIntegerField;
    sdsFilial_CBarraENCERRADO: TStringField;
    cdsFilial_CBarraID: TIntegerField;
    cdsFilial_CBarraITEM: TIntegerField;
    cdsFilial_CBarraCOD_BARRA: TStringField;
    cdsFilial_CBarraULT_SEQUENCIA: TIntegerField;
    cdsFilial_CBarraMAX_SEQUENCIA: TIntegerField;
    cdsFilial_CBarraENCERRADO: TStringField;
    sdsCBarra_Consulta: TSQLDataSet;
    dspCBarra_Consulta: TDataSetProvider;
    cdsCBarra_Consulta: TClientDataSet;
    dsCBarra_Consulta: TDataSource;
    cdsCBarra_ConsultaID: TIntegerField;
    cdsCBarra_ConsultaCOD_BARRA: TStringField;
    cdsCBarra_ConsultaID_PRODUTO: TIntegerField;
    cdsCBarra_ConsultaID_COR: TIntegerField;
    cdsCBarra_ConsultaTAMANHO: TStringField;
    cdsCBarra_ConsultaCOD_PRINCIPAL: TStringField;
    cdsCBarra_ConsultaCOD_SEQUENCIAL: TIntegerField;
    cdsCBarra_ConsultaFILIAL: TIntegerField;
    cdsCBarra_ConsultaREFERENCIA: TStringField;
    cdsCBarra_ConsultaNOME_PRODUTO: TStringField;
    cdsCBarra_ConsultaNOME_COMBINACAO: TStringField;
    cdsCBarra_ConsultaNOME_FILIAL: TStringField;
    mCBarraAuxCod_Principal: TStringField;
    mCBarraAuxCod_Sequencial: TIntegerField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdINF_CBARRA_MANUAL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCBarraUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgCBarra: String;
    ctCommand: String;
    ctCombinacao : String;
    ctConsulta : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadCBarra: TDMCadCBarra;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCBarra.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCBarra.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CBARRA',0);

  cdsCBarra.Insert;
  cdsCBarraID.AsInteger := vAux;
end;

procedure TDMCadCBarra.prc_Excluir;
begin
  if not(cdsCBarra.Active) or (cdsCBarra.IsEmpty) then
    exit;
  cdsCBarra.Delete;
  cdsCBarra.ApplyUpdates(0);
end;

procedure TDMCadCBarra.prc_Gravar;
begin
  vMsgCBarra := '';
  //if trim(cdsCBarraNOME.AsString) = '' then
    //vMsgCBarra := 'Nome não informado!';
  if vMsgCBarra <> '' then
    exit;
    
  cdsCBarra.Post;
  cdsCBarra.ApplyUpdates(0);
end;

procedure TDMCadCBarra.prc_Localizar(ID: Integer);
begin
  cdsCBarra.Close;
  sdsCBarra.CommandText := ctCommand;
  if ID <> 0 then
    sdsCBarra.CommandText := sdsCBarra.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsCBarra.Open;
end;

procedure TDMCadCBarra.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand    := sdsCBarra.CommandText;
  ctConsulta   := sdsCBarra_Consulta.CommandText;
  ctCombinacao := sdsCombinacao.CommandText;
  cdsProduto.Open;
  cdsFilial.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Prod.Close;
  qParametros_Prod.Open;
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

procedure TDMCadCBarra.dspCBarraUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCBarra.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
