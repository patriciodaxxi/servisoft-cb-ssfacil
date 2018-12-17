unit UDMCadEDI_Config;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadEDI_Config = class(TDataModule)
    sdsEdi_Config: TSQLDataSet;
    dspEdi_Config: TDataSetProvider;
    cdsEdi_Config: TClientDataSet;
    dsEdi_Config: TDataSource;
    sdsEdi_ConfigID: TIntegerField;
    sdsEdi_ConfigLAYOUT: TStringField;
    sdsEdi_ConfigCNPJ_CLIENTE_INI: TIntegerField;
    sdsEdi_ConfigCNPJ_CLIENTE_TAM: TIntegerField;
    sdsEdi_ConfigNUM_OC_INI: TIntegerField;
    sdsEdi_ConfigNUM_OC_TAM: TIntegerField;
    sdsEdi_ConfigOCO_INI: TIntegerField;
    sdsEdi_ConfigOCO_TAM: TIntegerField;
    sdsEdi_ConfigPLANO_INI: TIntegerField;
    sdsEdi_ConfigPLANO_TAM: TIntegerField;
    sdsEdi_ConfigDTEMISSAO_INI: TIntegerField;
    sdsEdi_ConfigDTEMISSAO_TAM: TIntegerField;
    sdsEdi_ConfigTIPO_OPERACAO_INI: TIntegerField;
    sdsEdi_ConfigTIPO_OPERACAO_TAM: TIntegerField;
    sdsEdi_ConfigDTENTREGA_INI: TIntegerField;
    sdsEdi_ConfigDTENTREGA_TAM: TIntegerField;
    sdsEdi_ConfigCOD_LOCAL_ENTREGA_INI: TIntegerField;
    sdsEdi_ConfigCOD_LOCAL_ENTREGA_TAM: TIntegerField;
    sdsEdi_ConfigFABRICA_INI: TIntegerField;
    sdsEdi_ConfigFABRICA_TAM: TIntegerField;
    sdsEdi_ConfigCOD_PRODUTO_INI: TIntegerField;
    sdsEdi_ConfigCOD_PRODUTO_TAM: TIntegerField;
    sdsEdi_ConfigQTD_INI: TIntegerField;
    sdsEdi_ConfigQTD_TAM: TIntegerField;
    sdsEdi_ConfigUNIDADE_INI: TIntegerField;
    sdsEdi_ConfigUNIDADE_TAM: TIntegerField;
    sdsEdi_ConfigPERC_TRANSF_INI: TIntegerField;
    sdsEdi_ConfigPERC_TRANSF_TAM: TIntegerField;
    sdsEdi_ConfigVLR_UNITARIO_INI: TIntegerField;
    sdsEdi_ConfigVLR_UNITARIO_TAM: TIntegerField;
    sdsEdi_ConfigVLR_UNITARIO_DEC: TIntegerField;
    sdsEdi_ConfigCOND_PGTO_INI: TIntegerField;
    sdsEdi_ConfigCOND_PGTO_TAM: TIntegerField;
    sdsEdi_ConfigNOME_PRODUTO_INI: TIntegerField;
    sdsEdi_ConfigNOME_PRODUTO_TAM: TIntegerField;
    sdsEdi_ConfigCNPJ_FORNECEDOR_INI: TIntegerField;
    sdsEdi_ConfigCNPJ_FORNECEDOR_TAM: TIntegerField;
    sdsEdi_ConfigPLANO2_INI: TIntegerField;
    sdsEdi_ConfigPLANO2_TAM: TIntegerField;
    sdsEdi_ConfigUSA_PLANO: TStringField;
    cdsEdi_ConfigID: TIntegerField;
    cdsEdi_ConfigLAYOUT: TStringField;
    cdsEdi_ConfigCNPJ_CLIENTE_INI: TIntegerField;
    cdsEdi_ConfigCNPJ_CLIENTE_TAM: TIntegerField;
    cdsEdi_ConfigNUM_OC_INI: TIntegerField;
    cdsEdi_ConfigNUM_OC_TAM: TIntegerField;
    cdsEdi_ConfigOCO_INI: TIntegerField;
    cdsEdi_ConfigOCO_TAM: TIntegerField;
    cdsEdi_ConfigPLANO_INI: TIntegerField;
    cdsEdi_ConfigPLANO_TAM: TIntegerField;
    cdsEdi_ConfigDTEMISSAO_INI: TIntegerField;
    cdsEdi_ConfigDTEMISSAO_TAM: TIntegerField;
    cdsEdi_ConfigTIPO_OPERACAO_INI: TIntegerField;
    cdsEdi_ConfigTIPO_OPERACAO_TAM: TIntegerField;
    cdsEdi_ConfigDTENTREGA_INI: TIntegerField;
    cdsEdi_ConfigDTENTREGA_TAM: TIntegerField;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_INI: TIntegerField;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_TAM: TIntegerField;
    cdsEdi_ConfigFABRICA_INI: TIntegerField;
    cdsEdi_ConfigFABRICA_TAM: TIntegerField;
    cdsEdi_ConfigCOD_PRODUTO_INI: TIntegerField;
    cdsEdi_ConfigCOD_PRODUTO_TAM: TIntegerField;
    cdsEdi_ConfigQTD_INI: TIntegerField;
    cdsEdi_ConfigQTD_TAM: TIntegerField;
    cdsEdi_ConfigUNIDADE_INI: TIntegerField;
    cdsEdi_ConfigUNIDADE_TAM: TIntegerField;
    cdsEdi_ConfigPERC_TRANSF_INI: TIntegerField;
    cdsEdi_ConfigPERC_TRANSF_TAM: TIntegerField;
    cdsEdi_ConfigVLR_UNITARIO_INI: TIntegerField;
    cdsEdi_ConfigVLR_UNITARIO_TAM: TIntegerField;
    cdsEdi_ConfigVLR_UNITARIO_DEC: TIntegerField;
    cdsEdi_ConfigCOND_PGTO_INI: TIntegerField;
    cdsEdi_ConfigCOND_PGTO_TAM: TIntegerField;
    cdsEdi_ConfigNOME_PRODUTO_INI: TIntegerField;
    cdsEdi_ConfigNOME_PRODUTO_TAM: TIntegerField;
    cdsEdi_ConfigCNPJ_FORNECEDOR_INI: TIntegerField;
    cdsEdi_ConfigCNPJ_FORNECEDOR_TAM: TIntegerField;
    cdsEdi_ConfigPLANO2_INI: TIntegerField;
    cdsEdi_ConfigPLANO2_TAM: TIntegerField;
    cdsEdi_ConfigUSA_PLANO: TStringField;
    sdsEdi_ConfigDRAWBACK_INI: TIntegerField;
    sdsEdi_ConfigDRAWBACK_TAM: TIntegerField;
    cdsEdi_ConfigDRAWBACK_INI: TIntegerField;
    cdsEdi_ConfigDRAWBACK_TAM: TIntegerField;
    sdsEdi_ConfigTAMANHO_INI: TIntegerField;
    sdsEdi_ConfigTAMANHO_TAM: TIntegerField;
    cdsEdi_ConfigTAMANHO_INI: TIntegerField;
    cdsEdi_ConfigTAMANHO_TAM: TIntegerField;
    sdsEdi_ConfigRESERVADO_INI: TIntegerField;
    sdsEdi_ConfigRESERVADO_TAM: TIntegerField;
    cdsEdi_ConfigRESERVADO_INI: TIntegerField;
    cdsEdi_ConfigRESERVADO_TAM: TIntegerField;
    sdsEdi_ConfigNOME: TStringField;
    cdsEdi_ConfigNOME: TStringField;
    sdsEdi_ConfigQTD_DEC: TIntegerField;
    cdsEdi_ConfigQTD_DEC: TIntegerField;
    sdsEdi_ConfigITEM_INI: TIntegerField;
    sdsEdi_ConfigITEM_TAM: TIntegerField;
    cdsEdi_ConfigITEM_INI: TIntegerField;
    cdsEdi_ConfigITEM_TAM: TIntegerField;
    sdsEdi_ConfigCOD_COR_INI: TIntegerField;
    sdsEdi_ConfigCOD_COR_TAM: TIntegerField;
    cdsEdi_ConfigCOD_COR_INI: TIntegerField;
    cdsEdi_ConfigCOD_COR_TAM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspEdi_ConfigUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgEDI_Config: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Restaurar_Padrao;
  end;

var
  DMCadEDI_Config: TDMCadEDI_Config;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadEDI_Config.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsEDI_Config.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('EDI_CONFIG',0);

  cdsEDI_Config.Insert;
  cdsEDI_ConfigID.AsInteger := vAux;
end;

procedure TDMCadEDI_Config.prc_Excluir;
begin
  if not(cdsEDI_Config.Active) or (cdsEDI_Config.IsEmpty) then
    exit;
  cdsEDI_Config.Delete;
  cdsEDI_Config.ApplyUpdates(0);
end;

procedure TDMCadEDI_Config.prc_Gravar;
begin
  vMsgEDI_Config := '';
  if trim(cdsEdi_ConfigLAYOUT.AsString) = '' then
    vMsgEDI_Config := 'Layout não informado!';
  if vMsgEDI_Config <> '' then
    exit;
    
  cdsEDI_Config.Post;
  cdsEDI_Config.ApplyUpdates(0);
end;

procedure TDMCadEDI_Config.prc_Localizar(ID: Integer);
begin
  cdsEDI_Config.Close;
  sdsEDI_Config.CommandText := ctCommand;
  if ID <> 0 then
    sdsEDI_Config.CommandText := sdsEDI_Config.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsEDI_Config.Open;
end;

procedure TDMCadEDI_Config.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsEDI_Config.CommandText;
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

procedure TDMCadEDI_Config.dspEdi_ConfigUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadEDI_Config.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadEDI_Config.prc_Restaurar_Padrao;
begin
  if cdsEdi_ConfigLAYOUT.AsString = 'VIA_UNO' then
  begin
    cdsEdi_ConfigCNPJ_CLIENTE_INI.AsInteger      := 1;
    cdsEdi_ConfigCNPJ_CLIENTE_TAM.AsInteger      := 14;
    cdsEdi_ConfigNUM_OC_INI.AsInteger            := 15;
    cdsEdi_ConfigNUM_OC_TAM.AsInteger            := 10;
    cdsEdi_ConfigOCO_INI.AsInteger               := 25;
    cdsEdi_ConfigOCO_TAM.AsInteger               := 2;
    cdsEdi_ConfigPLANO_INI.AsInteger             := 27;
    cdsEdi_ConfigPLANO_TAM.AsInteger             := 7;
    cdsEdi_ConfigDTEMISSAO_INI.AsInteger         := 34;
    cdsEdi_ConfigDTEMISSAO_TAM.AsInteger         := 8;
    cdsEdi_ConfigTIPO_OPERACAO_INI.AsInteger     := 42;
    cdsEdi_ConfigTIPO_OPERACAO_TAM.AsInteger     := 1;
    cdsEdi_ConfigDTENTREGA_INI.AsInteger         := 43;
    cdsEdi_ConfigDTENTREGA_TAM.AsInteger         := 8;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_INI.AsInteger := 51;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_TAM.AsInteger := 2;
    cdsEdi_ConfigFABRICA_INI.AsInteger           := 53;
    cdsEdi_ConfigFABRICA_TAM.AsInteger           := 4;
    cdsEdi_ConfigCOD_PRODUTO_INI.AsInteger       := 57;
    cdsEdi_ConfigCOD_PRODUTO_TAM.AsInteger       := 15;
    cdsEdi_ConfigQTD_INI.AsInteger               := 72;
    cdsEdi_ConfigQTD_TAM.AsInteger               := 9;
    cdsEdi_ConfigQTD_DEC.AsInteger               := 3;
    cdsEdi_ConfigUNIDADE_INI.AsInteger           := 81;
    cdsEdi_ConfigUNIDADE_TAM.AsInteger           := 3;
    cdsEdi_ConfigPERC_TRANSF_INI.AsInteger       := 84;
    cdsEdi_ConfigPERC_TRANSF_TAM.AsInteger       := 3;
    cdsEdi_ConfigVLR_UNITARIO_INI.AsInteger      := 87;
    cdsEdi_ConfigVLR_UNITARIO_TAM.AsInteger      := 14;
    cdsEdi_ConfigVLR_UNITARIO_DEC.AsInteger      := 4;
    cdsEdi_ConfigCOND_PGTO_INI.AsInteger         := 104;
    cdsEdi_ConfigCOND_PGTO_TAM.AsInteger         := 15;
    cdsEdi_ConfigDRAWBACK_INI.AsInteger          := 119;
    cdsEdi_ConfigDRAWBACK_TAM.AsInteger          := 1;
    cdsEdi_ConfigNOME_PRODUTO_INI.AsInteger      := 140;
    cdsEdi_ConfigNOME_PRODUTO_TAM.AsInteger      := 60;
    cdsEdi_ConfigCNPJ_FORNECEDOR_INI.AsInteger   := 200;
    cdsEdi_ConfigCNPJ_FORNECEDOR_TAM.AsInteger   := 14;
    cdsEdi_ConfigPLANO2_INI.AsInteger            := 214;
    cdsEdi_ConfigPLANO2_TAM.AsInteger            := 10;
    cdsEdi_ConfigUSA_PLANO.AsString              := '1';
    cdsEdi_ConfigTAMANHO_INI.AsInteger           := 0;
    cdsEdi_ConfigTAMANHO_TAM.AsInteger           := 0;
    cdsEdi_ConfigRESERVADO_INI.AsInteger         := 224;
    cdsEdi_ConfigRESERVADO_TAM.AsInteger         := 34;
  end
  else
  if cdsEdi_ConfigLAYOUT.AsString = 'BEIRA_RIO' then
  begin
    cdsEdi_ConfigCNPJ_CLIENTE_INI.AsInteger      := 1;
    cdsEdi_ConfigCNPJ_CLIENTE_TAM.AsInteger      := 14;
    cdsEdi_ConfigNUM_OC_INI.AsInteger            := 15;
    cdsEdi_ConfigNUM_OC_TAM.AsInteger            := 10;
    cdsEdi_ConfigOCO_INI.AsInteger               := 25;
    cdsEdi_ConfigOCO_TAM.AsInteger               := 3;
    cdsEdi_ConfigPLANO_INI.AsInteger             := 28;
    cdsEdi_ConfigPLANO_TAM.AsInteger             := 6;
    cdsEdi_ConfigDTEMISSAO_INI.AsInteger         := 34;
    cdsEdi_ConfigDTEMISSAO_TAM.AsInteger         := 8;
    cdsEdi_ConfigTIPO_OPERACAO_INI.AsInteger     := 42;
    cdsEdi_ConfigTIPO_OPERACAO_TAM.AsInteger     := 1;
    cdsEdi_ConfigDTENTREGA_INI.AsInteger         := 43;
    cdsEdi_ConfigDTENTREGA_TAM.AsInteger         := 8;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_INI.AsInteger := 51;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_TAM.AsInteger := 2;
    cdsEdi_ConfigFABRICA_INI.AsInteger           := 53;
    cdsEdi_ConfigFABRICA_TAM.AsInteger           := 4;
    cdsEdi_ConfigCOD_PRODUTO_INI.AsInteger       := 57;
    cdsEdi_ConfigCOD_PRODUTO_TAM.AsInteger       := 15;
    cdsEdi_ConfigQTD_INI.AsInteger               := 72;
    cdsEdi_ConfigQTD_TAM.AsInteger               := 9;
    cdsEdi_ConfigQTD_DEC.AsInteger               := 3;
    cdsEdi_ConfigUNIDADE_INI.AsInteger           := 81;
    cdsEdi_ConfigUNIDADE_TAM.AsInteger           := 3;
    cdsEdi_ConfigPERC_TRANSF_INI.AsInteger       := 84;
    cdsEdi_ConfigPERC_TRANSF_TAM.AsInteger       := 5;
    cdsEdi_ConfigVLR_UNITARIO_INI.AsInteger      := 89;
    cdsEdi_ConfigVLR_UNITARIO_TAM.AsInteger      := 14;
    cdsEdi_ConfigVLR_UNITARIO_DEC.AsInteger      := 4;
    cdsEdi_ConfigCOND_PGTO_INI.AsInteger         := 106;
    cdsEdi_ConfigCOND_PGTO_TAM.AsInteger         := 15;
    cdsEdi_ConfigDRAWBACK_INI.AsInteger          := 121;
    cdsEdi_ConfigDRAWBACK_TAM.AsInteger          := 1;
    cdsEdi_ConfigNOME_PRODUTO_INI.AsInteger      := 142;
    cdsEdi_ConfigNOME_PRODUTO_TAM.AsInteger      := 100;
    cdsEdi_ConfigCNPJ_FORNECEDOR_INI.AsInteger   := 242;
    cdsEdi_ConfigCNPJ_FORNECEDOR_TAM.AsInteger   := 14;
    cdsEdi_ConfigPLANO2_INI.AsInteger            := 390;
    cdsEdi_ConfigPLANO2_TAM.AsInteger            := 8;
    cdsEdi_ConfigUSA_PLANO.AsString              := '1';
    cdsEdi_ConfigTAMANHO_INI.AsInteger           := 335;
    cdsEdi_ConfigTAMANHO_TAM.AsInteger           := 5;
    cdsEdi_ConfigRESERVADO_INI.AsInteger         := 256;
    cdsEdi_ConfigRESERVADO_TAM.AsInteger         := 44;
    cdsEdi_ConfigITEM_INI.AsInteger              := 580;
    cdsEdi_ConfigITEM_TAM.AsInteger              := 6;
    cdsEdi_ConfigCOD_COR_INI.AsInteger           := 480;
    cdsEdi_ConfigCOD_COR_TAM.AsInteger           := 100;
  end
  else
  if cdsEdi_ConfigLAYOUT.AsString = 'WEST_COAST' then
  begin
    cdsEdi_ConfigCNPJ_CLIENTE_INI.AsInteger      := 1;
    cdsEdi_ConfigCNPJ_CLIENTE_TAM.AsInteger      := 14;
    cdsEdi_ConfigNUM_OC_INI.AsInteger            := 15;
    cdsEdi_ConfigNUM_OC_TAM.AsInteger            := 10;
    cdsEdi_ConfigOCO_INI.AsInteger               := 25;
    cdsEdi_ConfigOCO_TAM.AsInteger               := 2;
    cdsEdi_ConfigPLANO_INI.AsInteger             := 27;
    cdsEdi_ConfigPLANO_TAM.AsInteger             := 6;
    cdsEdi_ConfigDTEMISSAO_INI.AsInteger         := 33;
    cdsEdi_ConfigDTEMISSAO_TAM.AsInteger         := 8;
    cdsEdi_ConfigTIPO_OPERACAO_INI.AsInteger     := 41;
    cdsEdi_ConfigTIPO_OPERACAO_TAM.AsInteger     := 1;
    cdsEdi_ConfigDTENTREGA_INI.AsInteger         := 42;
    cdsEdi_ConfigDTENTREGA_TAM.AsInteger         := 8;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_INI.AsInteger := 50;
    cdsEdi_ConfigCOD_LOCAL_ENTREGA_TAM.AsInteger := 2;
    cdsEdi_ConfigFABRICA_INI.AsInteger           := 52;
    cdsEdi_ConfigFABRICA_TAM.AsInteger           := 4;
    cdsEdi_ConfigCOD_PRODUTO_INI.AsInteger       := 56;
    cdsEdi_ConfigCOD_PRODUTO_TAM.AsInteger       := 15;
    cdsEdi_ConfigQTD_INI.AsInteger               := 71;
    cdsEdi_ConfigQTD_TAM.AsInteger               := 9;
    cdsEdi_ConfigQTD_DEC.AsInteger               := 3;
    cdsEdi_ConfigUNIDADE_INI.AsInteger           := 80;
    cdsEdi_ConfigUNIDADE_TAM.AsInteger           := 3;
    cdsEdi_ConfigPERC_TRANSF_INI.AsInteger       := 83;
    cdsEdi_ConfigPERC_TRANSF_TAM.AsInteger       := 3;
    cdsEdi_ConfigVLR_UNITARIO_INI.AsInteger      := 86;
    cdsEdi_ConfigVLR_UNITARIO_TAM.AsInteger      := 14;
    cdsEdi_ConfigVLR_UNITARIO_DEC.AsInteger      := 4;
    cdsEdi_ConfigCOND_PGTO_INI.AsInteger         := 103;
    cdsEdi_ConfigCOND_PGTO_TAM.AsInteger         := 15;
    cdsEdi_ConfigDRAWBACK_INI.AsInteger          := 118;
    cdsEdi_ConfigDRAWBACK_TAM.AsInteger          := 1;
    cdsEdi_ConfigNOME_PRODUTO_INI.AsInteger      := 139;
    cdsEdi_ConfigNOME_PRODUTO_TAM.AsInteger      := 60;
    cdsEdi_ConfigCNPJ_FORNECEDOR_INI.AsInteger   := 199;
    cdsEdi_ConfigCNPJ_FORNECEDOR_TAM.AsInteger   := 14;
    cdsEdi_ConfigPLANO2_INI.AsInteger            := 286;
    cdsEdi_ConfigPLANO2_TAM.AsInteger            := 7;
    cdsEdi_ConfigUSA_PLANO.AsString              := '2';
    cdsEdi_ConfigTAMANHO_INI.AsInteger           := 283;
    cdsEdi_ConfigTAMANHO_TAM.AsInteger           := 3;
    cdsEdi_ConfigRESERVADO_INI.AsInteger         := 213;
    cdsEdi_ConfigRESERVADO_TAM.AsInteger         := 70;
  end;
end;

end.
