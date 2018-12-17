unit UDMCadRegra_Empresa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadRegra_Empresa = class(TDataModule)
    sdsOperacao_Nota: TSQLDataSet;
    dspOperacao_Nota: TDataSetProvider;
    cdsOperacao_Nota: TClientDataSet;
    dsOperacao_Nota: TDataSource;
    sdsCFOP: TSQLDataSet;
    sdsCFOPID: TIntegerField;
    sdsCFOPCODCFOP: TStringField;
    sdsCFOPNOME: TStringField;
    sdsCFOPENTRADASAIDA: TStringField;
    sdsCFOPGERAR_IPI: TStringField;
    sdsCFOPGERAR_ICMS: TStringField;
    sdsCFOPGERAR_DUPLICATA: TStringField;
    sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsCFOPNOME_INTERNO: TStringField;
    sdsCFOPID_CSTICMS: TIntegerField;
    sdsCFOPID_CSTIPI: TIntegerField;
    sdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    sdsCFOPID_PIS: TIntegerField;
    sdsCFOPID_COFINS: TIntegerField;
    sdsCFOPTIPO_PIS: TStringField;
    sdsCFOPTIPO_COFINS: TStringField;
    sdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    sdsCFOPTIPO_EMPRESA: TStringField;
    sdsCFOPSUBSTITUICAO_TRIB: TStringField;
    sdsCFOPMVA: TStringField;
    sdsCFOPPERC_COFINS: TFloatField;
    sdsCFOPPERC_PIS: TFloatField;
    sdsCFOPLEI: TMemoField;
    sdsCFOPBENEFICIAMENTO: TStringField;
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
    dsCFOP: TDataSource;
    sdsOperacao_NotaID: TIntegerField;
    sdsOperacao_NotaNOME: TStringField;
    cdsOperacao_NotaID: TIntegerField;
    cdsOperacao_NotaNOME: TStringField;
    qOperacao: TSQLQuery;
    qOperacaoID: TIntegerField;
    qOperacaoNOME: TStringField;
    qOperacaoPEDIR_FINALIDADE: TStringField;
    qOperacaoNATUREZA_NOTA: TStringField;
    qOperacaoSERIE_NFE: TStringField;
    qCFOP: TSQLQuery;
    qCFOPID: TIntegerField;
    qCFOPCODCFOP: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaID_OPERACAO: TIntegerField;
    cdsConsultaTIPO_EMPRESA: TStringField;
    cdsConsultaTIPO_CLIENTE: TStringField;
    cdsConsultaUF_CLIENTE: TStringField;
    cdsConsultaID_CFOP: TIntegerField;
    cdsConsultaNOME_OPERACAO: TStringField;
    cdsConsultaCODCFOP: TStringField;
    cdsConsultaDESC_TIPO_EMPRESA: TStringField;
    cdsConsultaDESC_TIPO_CLIENTE: TStringField;
    cdsConsultaDESC_UF_CLIENTE: TStringField;
    sdsRegra_Empresa: TSQLDataSet;
    dspRegra_Empresa: TDataSetProvider;
    cdsRegra_Empresa: TClientDataSet;
    dsRegra_Empresa: TDataSource;
    dsRegra_Empresa_Mestre: TDataSource;
    sdsRegra_Empresa_Itens: TSQLDataSet;
    cdsRegra_Empresa_Itens: TClientDataSet;
    dsRegra_Empresa_Itens: TDataSource;
    sdsRegra_EmpresaID: TIntegerField;
    sdsRegra_EmpresaID_OPERACAO: TIntegerField;
    sdsRegra_EmpresaTIPO_EMPRESA: TStringField;
    sdsRegra_EmpresaTIPO_CLIENTE: TStringField;
    sdsRegra_EmpresaUF_CLIENTE: TStringField;
    sdsRegra_EmpresaID_CFOP: TIntegerField;
    cdsRegra_EmpresaID: TIntegerField;
    cdsRegra_EmpresaID_OPERACAO: TIntegerField;
    cdsRegra_EmpresaTIPO_EMPRESA: TStringField;
    cdsRegra_EmpresaTIPO_CLIENTE: TStringField;
    cdsRegra_EmpresaUF_CLIENTE: TStringField;
    cdsRegra_EmpresaID_CFOP: TIntegerField;
    sdsRegra_Empresa_ItensID: TIntegerField;
    sdsRegra_Empresa_ItensITEM: TIntegerField;
    sdsRegra_Empresa_ItensFINALIDADE: TStringField;
    sdsRegra_Empresa_ItensID_CFOP: TIntegerField;
    sdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField;
    sdsRegra_Empresa_ItensZONA_FRANCA: TStringField;
    sdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField;
    sdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField;
    cdsRegra_EmpresasdsRegra_Empresa_Itens: TDataSetField;
    cdsRegra_Empresa_ItensID: TIntegerField;
    cdsRegra_Empresa_ItensITEM: TIntegerField;
    cdsRegra_Empresa_ItensFINALIDADE: TStringField;
    cdsRegra_Empresa_ItensID_CFOP: TIntegerField;
    cdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField;
    cdsRegra_Empresa_ItensZONA_FRANCA: TStringField;
    cdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField;
    cdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField;
    cdsRegra_Empresa_ItensCODCFOP: TStringField;
    sdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField;
    cdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField;
    cdsConsultaFINALIDADE_COMPRADOR: TStringField;
    cdsConsultaDESC_FINALIDADE_COMPRADOR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspRegra_EmpresaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsRegra_Empresa_ItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vFinalidade_Reg, vPessoa_Cliente_Reg, vZona_Franca_Reg, vSubst_Trib_Reg, vTipo_Produto_Reg : String;
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

    procedure prc_Inserir_Itens;

  end;

var
  DMCadRegra_Empresa: TDMCadRegra_Empresa;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadRegra_Empresa}

procedure TDMCadRegra_Empresa.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsRegra_Empresa.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('REGRA_EMPRESA',0);

  cdsRegra_Empresa.Insert;
  cdsRegra_EmpresaID.AsInteger := vAux;
end;

procedure TDMCadRegra_Empresa.prc_Excluir;
begin
  if not(cdsRegra_Empresa.Active) or (cdsRegra_Empresa.IsEmpty) then
    exit;
  cdsRegra_Empresa_Itens.First;
  while not cdsRegra_Empresa_Itens.Eof do
    cdsRegra_Empresa_Itens.Delete;
  cdsRegra_Empresa.Delete;
  cdsRegra_Empresa.ApplyUpdates(0);
end;

procedure TDMCadRegra_Empresa.prc_Gravar;
var
  sds: TSQLDataSet;
begin
  vMsgErro := '';
  if cdsRegra_EmpresaID_OPERACAO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Finalidade não informada!';
  if (cdsRegra_EmpresaTIPO_CLIENTE.AsString <> 'G') and (cdsRegra_EmpresaTIPO_CLIENTE.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Tipo do Destinatário não foi informado!';
  if (cdsRegra_EmpresaTIPO_EMPRESA.AsString <> 'G') and (cdsRegra_EmpresaTIPO_EMPRESA.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Tipo do Emitente não foi informado!';
  if (cdsRegra_EmpresaUF_CLIENTE.AsString <> 'D') and (cdsRegra_EmpresaUF_CLIENTE.AsString <> 'F') and (cdsRegra_EmpresaUF_CLIENTE.AsString <> 'E') then
    vMsgErro := vMsgErro + #13 + '*** UF do Destinatário não informada!';
  if (cdsRegra_EmpresaFINALIDADE_COMPRADOR.AsString <> 'R') and (cdsRegra_EmpresaFINALIDADE_COMPRADOR.AsString <> 'I')
    and (cdsRegra_EmpresaFINALIDADE_COMPRADOR.AsString <> 'C') and (cdsRegra_EmpresaFINALIDADE_COMPRADOR.AsString <> 'O') then
    vMsgErro := vMsgErro + #13 + '*** Finalidade da compra não informada!';

  if trim(vMsgErro) <> '' then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT ID FROM REGRA_EMPRESA '
                         +  ' WHERE ID_OPERACAO = ' + IntToStr(cdsRegra_EmpresaID.AsInteger)
                         +  '   AND TIPO_EMPRESA = ' + QuotedStr(cdsRegra_EmpresaTIPO_EMPRESA.AsString)
                         +  '   AND TIPO_CLIENTE = ' + QuotedStr(cdsRegra_EmpresaTIPO_CLIENTE.AsString)
                         +  '   AND UF_CLIENTE = ' + QuotedStr(cdsRegra_EmpresaUF_CLIENTE.AsString)
                         +  '   AND FINALIDADE_COMPRADOR = ' + QuotedStr(cdsRegra_EmpresaFINALIDADE_COMPRADOR.AsString);
      sds.Open;
      if (sds.FieldByName('ID').AsInteger > 0) and (sds.FieldByName('ID').AsInteger <> cdsRegra_EmpresaID.AsInteger)  then
        vMsgErro := vMsgErro + #13 + '*** Essa regra já esta no ID ' + sds.FieldByName('ID').AsString;
    finally
      FreeAndNil(sds);
    end;
  end;

  if trim(vMsgErro) <> '' then
    exit;
  cdsRegra_Empresa.Post;
  cdsRegra_Empresa.ApplyUpdates(0);
end;

procedure TDMCadRegra_Empresa.prc_Localizar(ID : Integer); //-1 é para inclusão
begin
  cdsRegra_Empresa.Close;
  sdsRegra_Empresa.CommandText := ctCommand;
  sdsRegra_Empresa.ParamByName('ID').AsInteger := ID;
  cdsRegra_Empresa.Open;
end;

procedure TDMCadRegra_Empresa.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsRegra_Empresa.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  cdsOperacao_Nota.Open;
  cdsCFOP.Open;
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

procedure TDMCadRegra_Empresa.dspRegra_EmpresaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadRegra_Empresa.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadRegra_Empresa.prc_Inserir_Itens;
var
  vItemAux : Integer;
begin
  cdsRegra_Empresa_Itens.Last;
  vItemAux := cdsRegra_Empresa_ItensITEM.AsInteger;

  vFinalidade_Reg     := 'O';
  vPessoa_Cliente_Reg := '';
  vZona_Franca_Reg    := 'N';
  vSubst_Trib_Reg     := 'N';
  vTipo_Produto_Reg   := '';
  if cdsRegra_Empresa_Itens.RecordCount > 0 then
  begin
    vFinalidade_Reg     := cdsRegra_Empresa_ItensFINALIDADE.AsString;
    vPessoa_Cliente_Reg := cdsRegra_Empresa_ItensPESSOA_CLIENTE.AsString;
    vZona_Franca_Reg    := cdsRegra_Empresa_ItensZONA_FRANCA.AsString;
    vSubst_Trib_Reg     := cdsRegra_Empresa_ItensSUBST_TRIBUTARIA.AsString;
    vTipo_Produto_Reg   := cdsRegra_Empresa_ItensTIPO_PRODUTO.AsString;
  end;

  cdsRegra_Empresa_Itens.Insert;
  cdsRegra_Empresa_ItensID.AsInteger   := cdsRegra_EmpresaID.AsInteger;
  cdsRegra_Empresa_ItensITEM.AsInteger := vItemAux + 1;
  cdsRegra_Empresa_ItensSUBST_TRIBUTARIA.AsString := vSubst_Trib_Reg;
  cdsRegra_Empresa_ItensZONA_FRANCA.AsString      := vZona_Franca_Reg;
  cdsRegra_Empresa_ItensFINALIDADE.AsString       := vFinalidade_Reg;
  if trim(vTipo_Produto_Reg) <> '' then
    cdsRegra_Empresa_ItensTIPO_PRODUTO.AsString := vTipo_Produto_Reg;
  if trim(vPessoa_Cliente_Reg) <> '' then
    cdsRegra_Empresa_ItensPESSOA_CLIENTE.AsString := vPessoa_Cliente_Reg;
end;

procedure TDMCadRegra_Empresa.cdsRegra_Empresa_ItensCalcFields(
  DataSet: TDataSet);
begin
  if cdsRegra_Empresa_ItensID_CFOP.AsInteger > 0 then
  begin
    qCFOP.Close;
    qCFOP.ParamByName('ID').AsInteger := cdsRegra_Empresa_ItensID_CFOP.AsInteger;
    qCFOP.Open;
    cdsRegra_Empresa_ItensCODCFOP.AsString := qCFOPCODCFOP.AsString;
  end
  else
    cdsRegra_Empresa_ItensCODCFOP.Clear;
end;

end.
