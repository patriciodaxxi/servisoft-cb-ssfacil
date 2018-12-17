unit UDMGravarFinanceiro;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes;

type
  TDMGravarFinanceiro = class(TDataModule)
    sdsFinanceiro: TSQLDataSet;
    dspFinanceiro: TDataSetProvider;
    cdsFinanceiro: TClientDataSet;
    dsFinanceiro: TDataSource;
    sdsFinanceiroID: TIntegerField;
    sdsFinanceiroTIPO_ES: TStringField;
    sdsFinanceiroID_CONTA: TIntegerField;
    sdsFinanceiroDTMOVIMENTO: TDateField;
    sdsFinanceiroID_MOVDUPLICATA: TIntegerField;
    sdsFinanceiroITEM_MOVDUPLICATA: TIntegerField;
    sdsFinanceiroVLR_MOVIMENTO: TFloatField;
    sdsFinanceiroID_HISTORICO: TIntegerField;
    sdsFinanceiroHISTORICO_COMPL: TStringField;
    sdsFinanceiroID_PESSOA: TIntegerField;
    sdsFinanceiroFILIAL: TIntegerField;
    sdsFinanceiroUSUARIO: TStringField;
    sdsFinanceiroDTUSUARIO: TDateField;
    sdsFinanceiroHRUSUARIO: TTimeField;
    cdsFinanceiroID: TIntegerField;
    cdsFinanceiroTIPO_ES: TStringField;
    cdsFinanceiroID_CONTA: TIntegerField;
    cdsFinanceiroDTMOVIMENTO: TDateField;
    cdsFinanceiroID_MOVDUPLICATA: TIntegerField;
    cdsFinanceiroITEM_MOVDUPLICATA: TIntegerField;
    cdsFinanceiroVLR_MOVIMENTO: TFloatField;
    cdsFinanceiroID_HISTORICO: TIntegerField;
    cdsFinanceiroHISTORICO_COMPL: TStringField;
    cdsFinanceiroID_PESSOA: TIntegerField;
    cdsFinanceiroFILIAL: TIntegerField;
    cdsFinanceiroUSUARIO: TStringField;
    cdsFinanceiroDTUSUARIO: TDateField;
    cdsFinanceiroHRUSUARIO: TTimeField;
    sdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    cdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    sdsFinanceiroVLR_SAIDA: TFloatField;
    sdsFinanceiroVLR_ENTRADA: TFloatField;
    cdsFinanceiroVLR_SAIDA: TFloatField;
    cdsFinanceiroVLR_ENTRADA: TFloatField;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaCNPJ_CPF: TStringField;
    sdsFinanceiroID_EXTCOMISSAO: TIntegerField;
    cdsFinanceiroID_EXTCOMISSAO: TIntegerField;
    sdsFinanceiroID_NOTA: TIntegerField;
    cdsFinanceiroID_NOTA: TIntegerField;
    sdsFinanceiroID_NOTA_SERVICO: TIntegerField;
    sdsFinanceiroID_CUPOM: TIntegerField;
    sdsFinanceiroID_CHEQUE: TIntegerField;
    cdsFinanceiroID_NOTA_SERVICO: TIntegerField;
    cdsFinanceiroID_CUPOM: TIntegerField;
    cdsFinanceiroID_CHEQUE: TIntegerField;
    sdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField;
    cdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosID_CONTA_ORC_COMISSAO: TIntegerField;
    qParametrosID_CONTA_ORC_SERVICO: TIntegerField;
    sdsFinanceiroID_TERMINAL: TIntegerField;
    cdsFinanceiroID_TERMINAL: TIntegerField;
    sdsFinanceiroID_TRANSFERENCIA: TIntegerField;
    cdsFinanceiroID_TRANSFERENCIA: TIntegerField;
    sdsFinanceiroID_MOVATELIER: TIntegerField;
    cdsFinanceiroID_MOVATELIER: TIntegerField;
    sdsFinanceiroID_FECHAMENTO: TIntegerField;
    cdsFinanceiroID_FECHAMENTO: TIntegerField;
    sdsFinanceiroQUITADO_AUTOMATICO: TStringField;
    cdsFinanceiroQUITADO_AUTOMATICO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspFinanceiroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    vTipo_ES, vHistorico_Compl: String;
    vID_Conta, vID_ModDuplicata, vItem_MovDuplicata, vID_Historico, vID_Pessoa, vID_Forma_Pagamento,
    vID_ExtComissao, VID_Nota, vID_Cheque, vID_Conta_Orcamento, vID_Cupom, vID_MovAtelier: Integer;
    vID_Transferencia: Integer;
    vDtMovimento: TDateTime;
    vVlr_Movimento: Real;
    vTipo: String; //P=Pagamento  J=Juros  D=Despesas
    vID_Nota_Servico: Integer;
    vID_Fechamento: Integer;
    vAutoQuitado: String;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Excluir2;
  end;

var
  DMGravarFinanceiro: TDMGravarFinanceiro;

implementation

uses DmdDatabase, StdConvs, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCadFinanceiro}

procedure TDMGravarFinanceiro.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsFinanceiro.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('FINANCEIRO',0);

  cdsFinanceiro.Insert;
  cdsFinanceiroID.AsInteger                := vAux;
  cdsFinanceiroDTUSUARIO.AsDateTime        := Date;
  cdsFinanceiroHRUSUARIO.AsDateTime        := Now;
  cdsFinanceiroID_MOVDUPLICATA.AsInteger   := 0;
  cdsFinanceiroITEM_MOVDUPLICATA.AsInteger := 0;
  cdsFinanceiroVLR_MOVIMENTO.AsFloat       := 0;
  if vTerminal <= 0 then
    cdsFinanceiroID_TERMINAL.Clear
  else
    cdsFinanceiroID_TERMINAL.AsInteger := vTerminal;
end;

procedure TDMGravarFinanceiro.prc_Excluir;
begin
  if not(cdsFinanceiro.Active) or (cdsFinanceiro.IsEmpty) then
    exit;
  cdsFinanceiro.Delete;
  cdsFinanceiro.ApplyUpdates(0);
end;

procedure TDMGravarFinanceiro.prc_Gravar;
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  prc_Inserir;

  cdsFinanceiroTIPO_ES.AsString   := vTipo_ES;
  cdsFinanceiroID_CONTA.AsInteger := vID_Conta;
  if vTerminal <= 0 then
    cdsFinanceiroID_TERMINAL.Clear
  else
    cdsFinanceiroID_TERMINAL.AsInteger := vTerminal;
  cdsFinanceiroDTMOVIMENTO.AsDateTime := vDtMovimento;
  if vID_ModDuplicata > 0 then
    cdsFinanceiroID_MOVDUPLICATA.AsInteger := vID_ModDuplicata;
  if vItem_MovDuplicata > 0 then
    cdsFinanceiroITEM_MOVDUPLICATA.AsInteger := vItem_MovDuplicata;
  cdsFinanceiroVLR_MOVIMENTO.AsFloat := vVlr_Movimento;
  if vAutoQuitado = 'S' then
    cdsFinanceiroQUITADO_AUTOMATICO.AsString := 'S'
  else
    cdsFinanceiroQUITADO_AUTOMATICO.AsString := 'N';

  if vID_Forma_Pagamento > 0 then
    cdsFinanceiroID_FORMA_PAGAMENTO.AsInteger := vID_Forma_Pagamento;

  if vID_Pessoa > 0 then
  begin
    qPessoa.Close;
    qPessoa.ParamByName('CODIGO').AsInteger := vID_Pessoa;
    qPessoa.Open;
    cdsFinanceiroID_PESSOA.AsInteger := vID_Pessoa;
  end;

  if trim(vHistorico_Compl) <> '' then
    cdsFinanceiroHISTORICO_COMPL.AsString := vHistorico_Compl;
  cdsFinanceiroHISTORICO_COMPL.AsString := UpperCase(cdsFinanceiroHISTORICO_COMPL.AsString);

  cdsFinanceiroID_EXTCOMISSAO.AsInteger := vID_ExtComissao;
  cdsFinanceiroID_MOVATELIER.AsInteger  := vID_MovAtelier;
  if vID_Nota > 0 then
    cdsFinanceiroID_NOTA.AsInteger := VID_Nota;
  if vID_Cheque > 0 then
    cdsFinanceiroID_CHEQUE.AsInteger := vID_Cheque;
  if vID_Conta_Orcamento > 0 then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := vID_Conta_Orcamento;
  if vID_Cupom > 0 then
    cdsFinanceiroID_CUPOM.AsInteger := vID_Cupom;
  cdsFinanceiroFILIAL.AsInteger     := vFilial;
  cdsFinanceiroDTUSUARIO.AsDateTime := Date;
  cdsFinanceiroHRUSUARIO.AsDateTime := Now;
  if vID_Transferencia > 0 then
    cdsFinanceiroID_TRANSFERENCIA.AsInteger := vID_Transferencia;
  cdsFinanceiroUSUARIO.AsString := vUsuario;
  if vID_Nota_Servico > 0 then
    cdsFinanceiroID_NOTA_SERVICO.AsInteger := vID_Nota_Servico;
  if vID_Fechamento > 0 then
    cdsFinanceiroID_FECHAMENTO.AsInteger := vID_Fechamento;
  cdsFinanceiro.Post;
  cdsFinanceiro.ApplyUpdates(0);
end;

procedure TDMGravarFinanceiro.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsFinanceiro.Close;
  sdsFinanceiro.CommandText := ctCommand;
  if ID <> 0 then
    sdsFinanceiro.CommandText := sdsFinanceiro.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsFinanceiro.Open;
end;

procedure TDMGravarFinanceiro.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsFinanceiro.CommandText;
  qParametros.Close;
  qParametros.Open;
  vID_Cupom := 0;
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

procedure TDMGravarFinanceiro.dspFinanceiroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMGravarFinanceiro.prc_Excluir2;
begin
  cdsFinanceiro.Close;
  sdsFinanceiro.CommandText := ctCommand;
  if vID_ExtComissao > 0 then
    sdsFinanceiro.CommandText := sdsFinanceiro.CommandText +
                                 ' WHERE ID_EXTCOMISSAO = ' + IntToStr(vID_ExtComissao)
  else
  if vID_Nota > 0 then
    sdsFinanceiro.CommandText := sdsFinanceiro.CommandText +
                                 ' WHERE ID_NOTA = ' + IntToStr(vID_Nota);
  cdsFinanceiro.Open;
  if not cdsFinanceiro.IsEmpty then
  begin
    cdsFinanceiro.Delete;
    cdsFinanceiro.ApplyUpdates(0);
  end;
end;

procedure TDMGravarFinanceiro.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
