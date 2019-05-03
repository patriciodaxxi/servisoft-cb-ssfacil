unit UDMCadPlanoMat;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, LogTypes,
  frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMCadPlanoMat = class(TDataModule)
    sdsPlanoMat: TSQLDataSet;
    dspPlanoMat: TDataSetProvider;
    sdsPlanoMatID: TIntegerField;
    sdsPlanoMatNUM_PLANO: TIntegerField;
    sdsPlanoMatDATA: TDateField;
    cdsPlanoMat: TClientDataSet;
    cdsPlanoMatID: TIntegerField;
    cdsPlanoMatNUM_PLANO: TIntegerField;
    cdsPlanoMatDATA: TDateField;
    dsPlanoMat: TDataSource;
    dsPlanoMat_Mestre: TDataSource;
    sdsPlanoMat_Itens: TSQLDataSet;
    cdsPlanoMat_Itens: TClientDataSet;
    dsPlanoMat_Itens: TDataSource;
    sdsPlanoMat_Lote: TSQLDataSet;
    cdsPlanoMat_Lote: TClientDataSet;
    dsPlanoMat_Lote: TDataSource;
    sdsPlanoMat_ItensID: TIntegerField;
    sdsPlanoMat_ItensITEM: TIntegerField;
    sdsPlanoMat_ItensID_MATERIAL: TIntegerField;
    sdsPlanoMat_ItensID_COR: TFMTBCDField;
    sdsPlanoMat_ItensTAMANHO: TStringField;
    sdsPlanoMat_ItensQTD_CONSUMO: TFloatField;
    sdsPlanoMat_ItensQTD_PAGO: TFloatField;
    cdsPlanoMatsdsPlanoMat_Itens: TDataSetField;
    cdsPlanoMat_ItensID: TIntegerField;
    cdsPlanoMat_ItensITEM: TIntegerField;
    cdsPlanoMat_ItensID_MATERIAL: TIntegerField;
    cdsPlanoMat_ItensID_COR: TFMTBCDField;
    cdsPlanoMat_ItensTAMANHO: TStringField;
    cdsPlanoMat_ItensQTD_CONSUMO: TFloatField;
    cdsPlanoMat_ItensQTD_PAGO: TFloatField;
    sdsPlanoMat_LoteID: TIntegerField;
    sdsPlanoMat_LoteNUM_ORDEM: TIntegerField;
    cdsPlanoMatsdsPlanoMat_Lote: TDataSetField;
    cdsPlanoMat_LoteID: TIntegerField;
    cdsPlanoMat_LoteNUM_ORDEM: TIntegerField;
    sdsOrdemPend: TSQLDataSet;
    dspOrdemPend: TDataSetProvider;
    cdsOrdemPend: TClientDataSet;
    dsOrdemPend: TDataSource;
    cdsOrdemPendNUM_ORDEM: TIntegerField;
    cdsOrdemPendDTEMISSAO: TDateField;
    sdsOrdemPend_Lote: TSQLDataSet;
    dspOrdemPend_Lote: TDataSetProvider;
    cdsOrdemPend_Lote: TClientDataSet;
    dsOrdemPend_Lote: TDataSource;
    cdsOrdemPend_LoteNUM_ORDEM: TIntegerField;
    cdsOrdemPend_LoteDTEMISSAO: TDateField;
    cdsOrdemPend_LoteID_PRODUTO: TIntegerField;
    cdsOrdemPend_LoteREFERENCIA: TStringField;
    cdsOrdemPend_LoteQTD: TFloatField;
    cdsOrdemPend_LoteID_COMBINACAO: TIntegerField;
    cdsOrdemPend_LoteNOME_COMBINACAO: TStringField;
    sdsLote_Mat: TSQLDataSet;
    dspLote_Mat: TDataSetProvider;
    cdsLote_Mat: TClientDataSet;
    dsLote_Mat: TDataSource;
    cdsLote_MatNUM_ORDEM: TIntegerField;
    cdsLote_MatID_MATERIAL: TIntegerField;
    cdsLote_MatID_COR: TIntegerField;
    cdsLote_MatQTD_CONSUMO: TFloatField;
    cdsLote_MatQTD_PRODUTO: TFloatField;
    cdsLote_MatTAMANHO: TStringField;
    cdsLote_MatTINGIMENTO: TStringField;
    cdsLote_MatTIPO_PRODUCAO: TStringField;
    cdsLote_MatCRU: TStringField;
    cdsLote_MatORDENAR: TStringField;
    mMatAux: TClientDataSet;
    mMatAuxID_Material: TIntegerField;
    mMatAuxID_Cor: TIntegerField;
    mMatAuxTamanho: TStringField;
    mMatAuxQtd_Consumo: TFloatField;
    mMatAuxQtd_Produto: TFloatField;
    mMatAuxTipo_Producao: TStringField;
    sdsPlanoMat_ItensTIPO_PRODUCAO: TStringField;
    cdsPlanoMat_ItensTIPO_PRODUCAO: TStringField;
    mMatAuxOrdenar: TStringField;
    sdsPlanoMat_ItensCRU: TStringField;
    sdsPlanoMat_ItensTINGIMENTO: TStringField;
    cdsPlanoMat_ItensCRU: TStringField;
    cdsPlanoMat_ItensTINGIMENTO: TStringField;
    mMatAuxCru: TStringField;
    mMatAuxTingimento: TStringField;
    sdsConsMaterial: TSQLDataSet;
    dspConsMaterial: TDataSetProvider;
    cdsConsMaterial: TClientDataSet;
    dsConsMaterial: TDataSource;
    cdsConsMaterialID: TIntegerField;
    cdsConsMaterialITEM: TIntegerField;
    cdsConsMaterialID_MATERIAL: TIntegerField;
    cdsConsMaterialID_COR: TFMTBCDField;
    cdsConsMaterialTAMANHO: TStringField;
    cdsConsMaterialQTD_CONSUMO: TFloatField;
    cdsConsMaterialTIPO_PRODUCAO: TStringField;
    cdsConsMaterialTINGIMENTO: TStringField;
    cdsConsMaterialCRU: TStringField;
    cdsConsMaterialNOME_MATERIAL: TStringField;
    cdsConsMaterialNOME_COR: TStringField;
    cdsConsMaterialDESC_TIPO_PRODUCAO: TStringField;
    cdsConsMaterialNUM_PLANO: TIntegerField;
    cdsConsMaterialDATA: TDateField;
    sdsConsTing: TSQLDataSet;
    dspConsTing: TDataSetProvider;
    cdsConsTing: TClientDataSet;
    dsConsTing: TDataSource;
    cdsConsTingID: TIntegerField;
    cdsConsTingITEM: TIntegerField;
    cdsConsTingID_MATERIAL: TIntegerField;
    cdsConsTingID_COR: TFMTBCDField;
    cdsConsTingTAMANHO: TStringField;
    cdsConsTingQTD_CONSUMO: TFloatField;
    cdsConsTingTIPO_PRODUCAO: TStringField;
    cdsConsTingTINGIMENTO: TStringField;
    cdsConsTingCRU: TStringField;
    cdsConsTingNOME_MATERIAL: TStringField;
    cdsConsTingNOME_COR: TStringField;
    cdsConsTingNUM_PLANO: TIntegerField;
    cdsConsTingDATA: TDateField;
    cdsConsTingDESC_TIPO_PRODUCAO: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxConsMaterial: TfrxDBDataset;
    frxConsTing: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsMaterial: String;
    ctConsTing : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Inserir_Itens;

  end;

var
  DMCadPlanoMat: TDMCadPlanoMat;

implementation

uses
  DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCadPlanoMat }

procedure TDMCadPlanoMat.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadPlanoMat.prc_Excluir;
begin
  if not(cdsPlanoMat.Active) or (cdsPlanoMat.IsEmpty) then
    exit;
  cdsPlanoMat_Itens.First;
  while not cdsPlanoMat_Itens.Eof do
    cdsPlanoMat_Itens.Delete;
  cdsPlanoMat_Lote.First;
  while not cdsPlanoMat_Lote.Eof do
    cdsPlanoMat_Lote.Delete;
  cdsPlanoMat.ApplyUpdates(0);
end;

procedure TDMCadPlanoMat.prc_Gravar;
var
  sds: TSQLDataSet;
begin
  vMsgErro := '';
  if cdsPlanoMatDATA.AsDateTime <= 10 then
    vMsgErro := 'Data não informada!';
  if vMsgErro <> '' then
    exit;

  cdsPlanoMat.Post;
  cdsPlanoMat.ApplyUpdates(0);

end;

procedure TDMCadPlanoMat.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsPlanoMat.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PLANOMAT',0);

  cdsPlanoMat.Insert;
  cdsPlanoMatID.AsInteger    := vAux;
  cdsPlanoMatDATA.AsDateTime := Date;
end;

procedure TDMCadPlanoMat.prc_Localizar(ID: Integer);
begin
  cdsPlanoMat.Close;
  sdsPlanoMat.CommandText := ctCommand;
  sdsPlanoMat.ParamByName('ID').AsInteger := ID;
  cdsPlanoMat.Open;
end;

procedure TDMCadPlanoMat.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand      := sdsPlanoMat.CommandText;
  ctConsMaterial := sdsConsMaterial.CommandText;
  ctConsTing     := sdsConsTing.CommandText;
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

procedure TDMCadPlanoMat.prc_Inserir_Itens;
var
  vItem : Integer;
begin
  cdsPlanoMat_Itens.Last;
  vItem := cdsPlanoMat_ItensItem.AsInteger;

  cdsPlanoMat_Itens.Insert;
  cdsPlanoMat_ItensID.AsInteger   := cdsPlanoMatID.AsInteger;
  cdsPlanoMat_ItensITEM.AsInteger := vItem + 1;
end;

end.
