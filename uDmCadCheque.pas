unit uDmCadCheque;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, LogTypes, UDMCadDuplicata;

type
  TdmCadCheque = class(TDataModule)
    sdsCheque: TSQLDataSet;
    dspCheque: TDataSetProvider;
    cdsCheque: TClientDataSet;
    dsCheque: TDataSource;
    dsCheque_Mestre: TDataSource;
    sdsCheque_Hist: TSQLDataSet;
    cdsCheque_Hist: TClientDataSet;
    dsCheque_Hist: TDataSource;
    sdsCheque_Consulta: TSQLDataSet;
    dspCheque_Consulta: TDataSetProvider;
    cdsCheque_Consulta: TClientDataSet;
    dsCheque_Consulta: TDataSource;
    sdsBanco: TSQLDataSet;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoID: TIntegerField;
    cdsBancoCODIGO: TStringField;
    cdsBancoNOME: TStringField;
    dsBanco: TDataSource;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    cdsContasAGENCIA: TStringField;
    cdsContasNUMCONTA: TStringField;
    cdsContasFILIAL: TIntegerField;
    cdsContasDTENCERRAMENTO: TDateField;
    cdsContasTIPO_CONTA: TStringField;
    cdsContasID_BANCO: TIntegerField;
    cdsContasDIG_CONTA: TStringField;
    dsContas: TDataSource;
    cdsContasDIG_AGENCIA: TStringField;
    sdsPessoaEmissor: TSQLDataSet;
    dspPessoaEmissor: TDataSetProvider;
    cdsPessoaEmissor: TClientDataSet;
    cdsPessoaEmissorCODIGO: TIntegerField;
    cdsPessoaEmissorNOME: TStringField;
    dsPessoaEmissor: TDataSource;
    sdsPessoaReceptor: TSQLDataSet;
    dspPessoaReceptor: TDataSetProvider;
    cdsPessoaReceptor: TClientDataSet;
    dsPessoaReceptor: TDataSource;
    cdsPessoaReceptorCODIGO: TIntegerField;
    cdsPessoaReceptorNOME: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsChequeID: TIntegerField;
    sdsChequeEMITIDO_POR: TStringField;
    sdsChequeRECEBIDO_DE: TIntegerField;
    sdsChequeTITULAR: TStringField;
    sdsChequeAGENCIA: TStringField;
    sdsChequeCONTA: TStringField;
    sdsChequeNUM_CHEQUE: TStringField;
    sdsChequeDTEMISSAO: TDateField;
    sdsChequeDTBOM_PARA: TDateField;
    sdsChequeVALOR: TFloatField;
    sdsChequeFONE_CONTATO: TStringField;
    sdsChequeEMITIDO_PARA: TIntegerField;
    sdsChequeFILIAL: TIntegerField;
    sdsChequeID_CONTA: TIntegerField;
    sdsChequeID_BANCO: TIntegerField;
    cdsChequeID: TIntegerField;
    cdsChequeEMITIDO_POR: TStringField;
    cdsChequeRECEBIDO_DE: TIntegerField;
    cdsChequeTITULAR: TStringField;
    cdsChequeAGENCIA: TStringField;
    cdsChequeCONTA: TStringField;
    cdsChequeNUM_CHEQUE: TStringField;
    cdsChequeDTEMISSAO: TDateField;
    cdsChequeDTBOM_PARA: TDateField;
    cdsChequeVALOR: TFloatField;
    cdsChequeFONE_CONTATO: TStringField;
    cdsChequeEMITIDO_PARA: TIntegerField;
    cdsChequeFILIAL: TIntegerField;
    cdsChequeID_CONTA: TIntegerField;
    cdsChequeID_BANCO: TIntegerField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsChequeNOMINAL: TStringField;
    cdsChequeNOMINAL: TStringField;
    cdsChequesdsCheque_Hist: TDataSetField;
    cdsCheque_ConsultaID: TIntegerField;
    cdsCheque_ConsultaEMITIDO_POR: TStringField;
    cdsCheque_ConsultaRECEBIDO_DE: TIntegerField;
    cdsCheque_ConsultaTITULAR: TStringField;
    cdsCheque_ConsultaAGENCIA: TStringField;
    cdsCheque_ConsultaCONTA: TStringField;
    cdsCheque_ConsultaNUM_CHEQUE: TStringField;
    cdsCheque_ConsultaDTEMISSAO: TDateField;
    cdsCheque_ConsultaDTBOM_PARA: TDateField;
    cdsCheque_ConsultaVALOR: TFloatField;
    cdsCheque_ConsultaFONE_CONTATO: TStringField;
    cdsCheque_ConsultaEMITIDO_PARA: TIntegerField;
    cdsCheque_ConsultaFILIAL: TIntegerField;
    cdsCheque_ConsultaID_CONTA: TIntegerField;
    cdsCheque_ConsultaID_BANCO: TIntegerField;
    cdsCheque_ConsultaNOMINAL: TStringField;
    cdsCheque_ConsultaEMISSOR: TStringField;
    cdsCheque_ConsultaRECEPTOR: TStringField;
    sdsCheque_HistID: TIntegerField;
    sdsCheque_HistITEM: TIntegerField;
    sdsCheque_HistDTMOVIMENTO: TDateField;
    sdsCheque_HistTIPO_HIST: TStringField;
    cdsCheque_HistID: TIntegerField;
    cdsCheque_HistITEM: TIntegerField;
    cdsCheque_HistDTMOVIMENTO: TDateField;
    cdsCheque_HistTIPO_HIST: TStringField;
    cdsCheque_HistclTipoHist: TStringField;
    sdsCheque_Tit: TSQLDataSet;
    sdsCheque_TitID: TIntegerField;
    sdsCheque_TitITEM: TIntegerField;
    sdsCheque_TitID_DUPLICATA: TIntegerField;
    sdsCheque_TitITEM_HIST: TIntegerField;
    cdsCheque_Tit: TClientDataSet;
    cdsChequesdsCheque_Tit: TDataSetField;
    cdsCheque_TitID: TIntegerField;
    cdsCheque_TitITEM: TIntegerField;
    cdsCheque_TitID_DUPLICATA: TIntegerField;
    cdsCheque_TitITEM_HIST: TIntegerField;
    dsCheque_Tit: TDataSource;
    sdsCheque_TitID_PESSOA: TIntegerField;
    sdsCheque_TitNUMDUPLICATA: TStringField;
    sdsCheque_TitPARCELA: TIntegerField;
    sdsCheque_TitNUMNOTA: TIntegerField;
    sdsCheque_TitSERIE: TStringField;
    sdsCheque_TitNOME: TStringField;
    cdsCheque_TitID_PESSOA: TIntegerField;
    cdsCheque_TitNUMDUPLICATA: TStringField;
    cdsCheque_TitPARCELA: TIntegerField;
    cdsCheque_TitNUMNOTA: TIntegerField;
    cdsCheque_TitSERIE: TStringField;
    cdsCheque_TitNOME: TStringField;
    sdsCheque_Imp: TSQLDataSet;
    dspCheque_Imp: TDataSetProvider;
    cdsCheque_Imp: TClientDataSet;
    dsCheque_Imp: TDataSource;
    Cheque_ImpMestre: TDataSource;
    sdsCheque_Imp_Tit: TSQLDataSet;
    cdsCheque_Imp_Tit: TClientDataSet;
    dsCheque_Imp_Tit: TDataSource;
    sdsCheque_Imp_TitID: TIntegerField;
    sdsCheque_Imp_TitITEM: TIntegerField;
    sdsCheque_Imp_TitID_DUPLICATA: TIntegerField;
    sdsCheque_Imp_TitITEM_HIST: TIntegerField;
    sdsCheque_Imp_TitNUMDUPLICATA: TStringField;
    sdsCheque_Imp_TitPARCELA: TIntegerField;
    sdsCheque_Imp_TitVLR_PAGO: TFloatField;
    sdsCheque_Imp_TitNOME_PESSOA: TStringField;
    sdsCheque_ImpID: TIntegerField;
    sdsCheque_ImpEMITIDO_POR: TStringField;
    sdsCheque_ImpRECEBIDO_DE: TIntegerField;
    sdsCheque_ImpTITULAR: TStringField;
    sdsCheque_ImpAGENCIA: TStringField;
    sdsCheque_ImpCONTA: TStringField;
    sdsCheque_ImpNUM_CHEQUE: TStringField;
    sdsCheque_ImpDTEMISSAO: TDateField;
    sdsCheque_ImpDTBOM_PARA: TDateField;
    sdsCheque_ImpVALOR: TFloatField;
    sdsCheque_ImpFONE_CONTATO: TStringField;
    sdsCheque_ImpEMITIDO_PARA: TIntegerField;
    sdsCheque_ImpFILIAL: TIntegerField;
    sdsCheque_ImpID_CONTA: TIntegerField;
    sdsCheque_ImpID_BANCO: TIntegerField;
    sdsCheque_ImpNOMINAL: TStringField;
    sdsCheque_ImpDTCOMPENSADO: TDateField;
    sdsCheque_ImpNOME_FILIAL: TStringField;
    sdsCheque_ImpNOME_CONTA: TStringField;
    sdsCheque_ImpNUMCONTA: TStringField;
    sdsCheque_ImpDIG_AGENCIA: TStringField;
    sdsCheque_ImpDIG_CONTA: TStringField;
    sdsCheque_ImpNOME_BANCO: TStringField;
    sdsCheque_ImpCOD_BANCO: TStringField;
    cdsCheque_ImpID: TIntegerField;
    cdsCheque_ImpEMITIDO_POR: TStringField;
    cdsCheque_ImpRECEBIDO_DE: TIntegerField;
    cdsCheque_ImpTITULAR: TStringField;
    cdsCheque_ImpAGENCIA: TStringField;
    cdsCheque_ImpCONTA: TStringField;
    cdsCheque_ImpNUM_CHEQUE: TStringField;
    cdsCheque_ImpDTEMISSAO: TDateField;
    cdsCheque_ImpDTBOM_PARA: TDateField;
    cdsCheque_ImpVALOR: TFloatField;
    cdsCheque_ImpFONE_CONTATO: TStringField;
    cdsCheque_ImpEMITIDO_PARA: TIntegerField;
    cdsCheque_ImpFILIAL: TIntegerField;
    cdsCheque_ImpID_CONTA: TIntegerField;
    cdsCheque_ImpID_BANCO: TIntegerField;
    cdsCheque_ImpNOMINAL: TStringField;
    cdsCheque_ImpDTCOMPENSADO: TDateField;
    cdsCheque_ImpNOME_FILIAL: TStringField;
    cdsCheque_ImpNOME_CONTA: TStringField;
    cdsCheque_ImpNUMCONTA: TStringField;
    cdsCheque_ImpDIG_AGENCIA: TStringField;
    cdsCheque_ImpDIG_CONTA: TStringField;
    cdsCheque_ImpNOME_BANCO: TStringField;
    cdsCheque_ImpCOD_BANCO: TStringField;
    cdsCheque_Imp_TitID: TIntegerField;
    cdsCheque_Imp_TitITEM: TIntegerField;
    cdsCheque_Imp_TitID_DUPLICATA: TIntegerField;
    cdsCheque_Imp_TitITEM_HIST: TIntegerField;
    cdsCheque_Imp_TitNUMDUPLICATA: TStringField;
    cdsCheque_Imp_TitPARCELA: TIntegerField;
    cdsCheque_Imp_TitVLR_PAGO: TFloatField;
    cdsCheque_Imp_TitNOME_PESSOA: TStringField;
    sdsCheque_ImpAGENCIA_CONTA: TStringField;
    cdsCheque_ImpAGENCIA_CONTA: TStringField;
    sdsCheque_ImpCIDADE_FIL: TStringField;
    cdsCheque_ImpCIDADE_FIL: TStringField;
    cdsCheque_ImpsdsCheque_Imp_Tit: TDataSetField;
    sdsChequeDTCOMPENSADO: TDateField;
    sdsChequeUTILIZADO_PARA: TMemoField;
    cdsChequeDTCOMPENSADO: TDateField;
    cdsChequeUTILIZADO_PARA: TMemoField;
    sdsCheque_ImpUTILIZADO_PARA: TMemoField;
    cdsCheque_ImpUTILIZADO_PARA: TMemoField;
    cdsCheque_ConsultaDTCOMPENSADO: TDateField;
    cdsCheque_ConsultaUTILIZADO_PARA: TMemoField;
    cdsCheque_ConsultaNOME_CONTA: TStringField;
    cdsCheque_ConsultaAGENCIA_CONTA: TStringField;
    cdsCheque_ConsultaNUMCONTA: TStringField;
    cdsCheque_ConsultaDIG_AGENCIA: TStringField;
    cdsCheque_ConsultaDIG_CONTA: TStringField;
    cdsCheque_ConsultaNOME_BANCO: TStringField;
    cdsCheque_ConsultaCOD_BANCO: TStringField;
    qTipo_Cobranca: TSQLQuery;
    qTipo_CobrancaID: TIntegerField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    cdsContaOrcamentoNIVEL: TIntegerField;
    cdsContaOrcamentoSUPERIOR: TStringField;
    dsContaOrcamento: TDataSource;
    sdsChequeID_CONTA_ORCAMENTO: TIntegerField;
    cdsChequeID_CONTA_ORCAMENTO: TIntegerField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    cdsCheque_ConsultaID_CONTA_ORCAMENTO: TIntegerField;
    cdsCheque_ConsultaNOME_CONTA_BANCO: TStringField;
    cdsCheque_ConsultaDESCRICAO_EMITIDO: TStringField;
    cdsCheque_ConsultaCONTATO: TStringField;
    cdsCheque_ConsultaNOME_CORRENTISTA: TStringField;
    sdsChequeSTATUS: TStringField;
    cdsChequeSTATUS: TStringField;
    cdsCheque_ConsultaSTATUS: TStringField;
    cdsCheque_ConsultaTIPO_EMIT: TStringField;
    sdsCheque_TitTIPO_MOV: TIntegerField;
    sdsCheque_TitDESC_TIPO_MOV: TStringField;
    cdsCheque_TitTIPO_MOV: TIntegerField;
    cdsCheque_TitDESC_TIPO_MOV: TStringField;
    cdsCheque_ConsultaDESC_STATUS: TStringField;
    sdsCheque_TitDEVOLVIDO: TStringField;
    cdsCheque_TitDEVOLVIDO: TStringField;
    sdsChequeMOTIVO_COMP: TStringField;
    cdsChequeMOTIVO_COMP: TStringField;
    cdsCheque_ConsultaMOTIVO_COMP: TStringField;
    procedure cdsCheque_HistCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsChequeNewRecord(DataSet: TDataSet);
    procedure cdsCheque_TitNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    ctCheque: String;
    ctChequeCons: String;
    vMsgErro: String;
    vDtCompensado : TDateTime;
    vMotivo_Comp : String;
    procedure prc_Inserir;
    procedure prc_Localizar(vId: Integer);
    procedure prc_Excluir(vID: Integer);
    procedure prc_Gravar;
    procedure prc_Abrir_Cheque_Imp(ID : Integer);
  end;

var
  dmCadCheque: TdmCadCheque;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

procedure TdmCadCheque.cdsCheque_HistCalcFields(DataSet: TDataSet);
begin
  if not cdsCheque_HistTIPO_HIST.IsNull then
    case cdsCheque_HistTIPO_HIST.AsInteger of
      1: cdsCheque_HistclTipoHist.AsString := 'DEPÓSITO';
      2: cdsCheque_HistclTipoHist.AsString := 'DEVOLUÇÃO 1';
      3: cdsCheque_HistclTipoHist.AsString := 'REAPRESENTAÇÃO';
      4: cdsCheque_HistclTipoHist.AsString := 'DEVOLUÇÃO 2';
      5: cdsCheque_HistclTipoHist.AsString := 'COMPENSAÇÃO';
      6: cdsCheque_HistclTipoHist.AsString := 'REPASSE';
    end;
end;

procedure TdmCadCheque.prc_Localizar(vId: Integer);
begin
  cdsCheque.Close;
  sdsCheque.CommandText := ctCheque;
  if vId <> 0 then
    sdsCheque.CommandText := sdsCheque.CommandText + ' WHERE ID = ' + IntToStr(vId);
  cdsCheque.Open;
end;

procedure TdmCadCheque.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCheque     := sdsCheque.CommandText;
  ctChequeCons := sdsCheque_Consulta.CommandText;
  cdsBanco.Open;
  cdsContas.Open;
  cdsPessoaEmissor.Open;
  cdsPessoaReceptor.Open;
  cdsFilial.Open;
  cdsContaOrcamento.Open;
  qParametros.Close;
  qParametros.Open;
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

procedure TdmCadCheque.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCheque.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CHEQUE',0);

  cdsCheque.Insert;
  cdsChequeID.AsInteger     := vAux;
  cdsChequeFILIAL.AsInteger := vFilial;
end;

procedure TdmCadCheque.prc_Excluir(vID: Integer);
var
  fDMCadDuplicata : TDMCadDuplicata;
  vItemAux : Integer;
  vEstorno : Boolean;
begin
  if not(cdsCheque.Active) or (cdsCheque.IsEmpty) then
    Exit;
  vEstorno := True;
  fDMCadDuplicata := TDMCadDuplicata.Create(Self);
  try
    prc_Localizar(vId);
    cdsCheque_Hist.First;
    while not cdsCheque_Hist.Eof do
      cdsCheque_Hist.Delete;
    cdsCheque_Tit.First;
    while not cdsCheque_Tit.Eof do
    begin
      fDMCadDuplicata.prc_Localizar(cdsCheque_TitID_DUPLICATA.AsInteger);
      if not fDMCadDuplicata.cdsDuplicata.IsEmpty then
      begin
        fDMCadDuplicata.cdsDuplicata_Hist.Close;
        fDMCadDuplicata.cdsDuplicata_Hist.Open;
        fDMCadDuplicata.vDtUltPagamento := 0;
        vItemAux := 0;
        fDMCadDuplicata.cdsDuplicata_Hist.Last;
        while not fDMCadDuplicata.cdsDuplicata_Hist.Bof do
        begin
          if (vItemAux <= 0) and ((fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'PAG') or (fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'DEV')) then
            vItemAux := fDMCadDuplicata.cdsDuplicata_HistITEM.AsInteger
          else
          if (fDMCadDuplicata.vDtUltPagamento < 10) and ((fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'PAG') or (fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString = 'DEV')) then
          begin
            fDMCadDuplicata.vDtUltPagamento := fDMCadDuplicata.cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
            fDMCadDuplicata.cdsDuplicata_Hist.First;
          end;
          fDMCadDuplicata.cdsDuplicata_Hist.Prior;
        end;
        if vItemAux > 0 then
        begin
          fDMCadDuplicata.cdsDuplicata_Hist.Locate('ITEM',vItemAux,[loCaseInsensitive]);
          fDMCadDuplicata.prc_Estorno_Pag(False);
          vEstorno := True;
        end
        else
          vEstorno := False;
      end;
      //Tirado 11/01/2018
      //if vEstorno then
        cdsCheque_Tit.Delete;
    end;
    if cdsCheque_Tit.IsEmpty then
    begin
      cdsCheque.Delete;
      cdsCheque.ApplyUpdates(0);
    end;
  except
    raise;
  end;
  FreeAndNil(fDMCadDuplicata);
end;

procedure TdmCadCheque.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsChequeNUM_CHEQUE.AsString) = '' then
    vMsgErro := '*** Número do cheque não informado!';
  if trim(cdsChequeVALOR.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Valor do cheque não informado!';
  if cdsChequeDTEMISSAO.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data de emissão do cheque não informado!';
  if cdsChequeDTBOM_PARA.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '** Data de vencimento do cheque não informado!';
  if (cdsChequeEMITIDO_POR.AsString = '1') and (cdsChequeID_CONTA.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Conta/Banco não informado!';
  if (cdsChequeEMITIDO_POR.AsString <> '1') and (Trim(cdsChequeTITULAR.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '** Nome do emissor do cheque não informado!';
  if vMsgErro <> '' then
    exit;
  cdsCheque.Post;
  cdsCheque.ApplyUpdates(0);
end;

procedure TdmCadCheque.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TdmCadCheque.prc_Abrir_Cheque_Imp(ID: Integer);
begin
  cdsCheque_Imp.Close;
  sdsCheque_Imp.ParamByName('ID').AsInteger := ID;
  cdsCheque_Imp.Open;
  cdsCheque_Imp_Tit.Close;
  cdsCheque_Imp_Tit.Open;
end;

procedure TdmCadCheque.cdsChequeNewRecord(DataSet: TDataSet);
begin
  cdsChequeSTATUS.AsString := '0';
end;

procedure TdmCadCheque.cdsCheque_TitNewRecord(DataSet: TDataSet);
begin
  cdsCheque_TitDEVOLVIDO.AsString := 'N';
end;

end.

