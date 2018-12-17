unit uDmDevolucao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, Graphics, Printers;

type
  TdmDevolucao = class(TDataModule)
    sdsDevolucao: TSQLDataSet;
    dspDevolucao: TDataSetProvider;
    cdsDevolucao: TClientDataSet;
    dsDevolucao: TDataSource;
    sdsDevolucaoID: TIntegerField;
    sdsDevolucaoDATA: TDateField;
    sdsDevolucaoVLR_CREDITO: TFloatField;
    cdsDevolucaoID: TIntegerField;
    cdsDevolucaoDATA: TDateField;
    cdsDevolucaoVLR_CREDITO: TFloatField;
    dsmCupomDevolucao: TDataSource;
    sdsDevolucaoItens: TSQLDataSet;
    cdsDevolucaoItens: TClientDataSet;
    dsDevolucaoItens: TDataSource;
    cdsDevolucaosdsDevolucaoItens: TDataSetField;
    sdsDevolucaoItensID: TIntegerField;
    sdsDevolucaoItensITEM: TIntegerField;
    sdsDevolucaoItensID_CUPOM: TIntegerField;
    sdsDevolucaoItensID_CUPOM_ITEM: TIntegerField;
    sdsDevolucaoItensID_PRODUTO: TIntegerField;
    sdsDevolucaoItensQTD: TFloatField;
    sdsDevolucaoItensVLR_CREDITO: TFloatField;
    sdsDevolucaoItensID_MOVESTOQUE: TIntegerField;
    sdsDevolucaoItensID_MOVIMENTO: TIntegerField;
    cdsDevolucaoItensID: TIntegerField;
    cdsDevolucaoItensITEM: TIntegerField;
    cdsDevolucaoItensID_CUPOM: TIntegerField;
    cdsDevolucaoItensID_CUPOM_ITEM: TIntegerField;
    cdsDevolucaoItensID_PRODUTO: TIntegerField;
    cdsDevolucaoItensQTD: TFloatField;
    cdsDevolucaoItensVLR_CREDITO: TFloatField;
    cdsDevolucaoItensID_MOVESTOQUE: TIntegerField;
    cdsDevolucaoItensID_MOVIMENTO: TIntegerField;
    sdsDevolucaoID_CUPOM: TIntegerField;
    cdsDevolucaoID_CUPOM: TIntegerField;
    sdsDevolucaoFILIAL: TIntegerField;
    sdsDevolucaoNUMCUPOM: TIntegerField;
    sdsDevolucaoSERIE: TStringField;
    sdsDevolucaoTIPO: TStringField;
    cdsDevolucaoFILIAL: TIntegerField;
    cdsDevolucaoNUMCUPOM: TIntegerField;
    cdsDevolucaoSERIE: TStringField;
    cdsDevolucaoTIPO: TStringField;
    sdsCupomItens: TSQLDataSet;
    dspCupomItens: TDataSetProvider;
    cdsCupomItens: TClientDataSet;
    dsCupomItens: TDataSource;
    cdsCupomItensITEM: TIntegerField;
    cdsCupomItensID_PRODUTO: TIntegerField;
    cdsCupomItensVLR_UNITARIO: TFloatField;
    cdsCupomItensQTD: TFloatField;
    mItensDevolucao: TClientDataSet;
    dsItensDevolucao: TDataSource;
    mItensDevolucaoID_PRODUTO: TIntegerField;
    mItensDevolucaoNOME_PRODUTO: TStringField;
    mItensDevolucaoVLR_UNITARIO: TCurrencyField;
    mItensDevolucaoQTD_ORIGINAL: TCurrencyField;
    mItensDevolucaoQTD_DEVOLVER: TCurrencyField;
    sdsProdutos: TSQLDataSet;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    cdsProdutosID: TIntegerField;
    cdsProdutosNOME: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialSERIE_NFCE: TStringField;
    qCupomFiscal: TSQLQuery;
    qCupomFiscalID: TIntegerField;
    cdsCupomItensNOME_PRODUTO: TStringField;
    mItensDevolucaoITEM: TIntegerField;
    sdsDevolucaoItensNOME_PRODUTO: TStringField;
    cdsDevolucaoItensNOME_PRODUTO: TStringField;
    sdsDevolucaoItensUNIDADE: TStringField;
    sdsDevolucaoItensTAMANHO: TStringField;
    cdsDevolucaoItensUNIDADE: TStringField;
    cdsDevolucaoItensTAMANHO: TStringField;
    mItensDevolucaoUNIDADE: TStringField;
    mItensDevolucaoTAMANHO: TStringField;
    cdsCupomItensUNIDADE: TStringField;
    cdsCupomItensTAMANHO: TStringField;
    cdsCupomItensQTD_DEVOLVIDA: TFloatField;
    cdsCupomItensID: TIntegerField;
    sdsDevolucaoCREDITADO: TStringField;
    cdsDevolucaoCREDITADO: TStringField;
    cdsCupomItensVLR_DESCONTO: TFloatField;
    cdsFilialNOME_INTERNO: TStringField;
    qCupomParametros: TSQLQuery;
    qCupomParametrosALTURA_SALTO_LINHA: TSmallintField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    cAvanco: Word;
  public
    { Public declarations }
    vMsgErro: String;
    ctDevolucao: String;
    ctCupom: String;

    procedure prc_Excluir;
    procedure prc_Gravar;
    procedure prc_Inserir;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Imprimir(ID: Integer);
  end;

var
  dmDevolucao: TdmDevolucao;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TdmDevolucao }

procedure TdmDevolucao.prc_Excluir;
begin
  if not(cdsDevolucao.Active) or (cdsDevolucao.IsEmpty) then
    Exit;
  cdsDevolucao.Delete;
  cdsDevolucao.ApplyUpdates(0);
end;

procedure TdmDevolucao.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsDevolucaoDATA.AsString) = '' then
    vMsgErro := vMsgErro + #13 + 'Data não informada!';
  if trim(cdsDevolucaoID_CUPOM.AsString) = '' then
    vMsgErro := vMsgErro + #13 + 'Cupom não informado!';
  if cdsDevolucaoItens.IsEmpty then
    vMsgErro := vMsgErro + #13 + 'Itens não informados!';
  if vMsgErro <> '' then
    Exit;

  cdsDevolucao.Post;
  cdsDevolucao.ApplyUpdates(0);
end;

procedure TdmDevolucao.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsDevolucao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CUPOM_DEVOLUCAO',0);

  cdsDevolucao.Insert;
  cdsDevolucaoID.AsInteger       := vAux;
  cdsDevolucaoCREDITADO.AsString := 'N';
end;

procedure TdmDevolucao.DataModuleCreate(Sender: TObject);
begin
  ctDevolucao := sdsDevolucao.CommandText;
  ctCupom     := qCupomFiscal.Sql.Text;
  cdsFilial.Open;
  cdsDevolucao.Open;
  qCupomParametros.Open;
  cAvanco := qCupomParametrosALTURA_SALTO_LINHA.AsInteger;
end;

procedure TdmDevolucao.prc_Localizar(ID: Integer);
begin
  cdsDevolucao.Close;
  sdsDevolucao.CommandText := ctDevolucao;
  if ID <> 0 then
    sdsDevolucao.CommandText := sdsDevolucao.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsDevolucao.Open;
end;

procedure TdmDevolucao.prc_Imprimir(ID: Integer);
var
  vTxt1: String;
  i: Integer;
  vLinha: Integer;
begin
  Printer.BeginDoc;
  Printer.Canvas.Font.Name  := 'Lucida Console';
  Printer.Canvas.Font.Size := 9;

  vLinha   := 0;
  Printer.Canvas.Font.Style := [fsBold]; //Declarar Graphics

  vTxt1 := cdsFilialNOME_INTERNO.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.Font.Size  := 7;
  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'         COMPROVANTE DE DEVOLUÇÃO');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [];
  Printer.Canvas.TextOut(0,vLinha,'               VALE TROCA');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'');
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;

  vTxt1 := 'TROCA Nº: ' + cdsDevolucaoID.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  vTxt1 := '    DATA: ' + FormatDateTime('dd/mm/yyyy',cdsDevolucaoDATA.AsDateTime);
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  vTxt1 := '   CUPOM: ' + cdsDevolucaoNUMCUPOM.AsString + '      SÉRIE: ' + cdsDevolucaoSERIE.AsString;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;

  Printer.Canvas.TextOut(0,vLinha,'------------------------------------------');
  vLinha := vLinha + cAvanco;
  Printer.Canvas.TextOut(0,vLinha,'');
  Printer.Canvas.Font.Size  := 9;
  vTxt1 := FormatFloat('R$ 0.00',cdsDevolucaoVLR_CREDITO.AsCurrency);
  vTxt1 := 'VALOR DE TROCA:    ' + vTxt1;
  Printer.Canvas.TextOut(0,vLinha,vTxt1);
  vLinha := vLinha + cAvanco;
  Printer.Canvas.Font.Style := [];

  for i := 1 to 5 do
    Printer.Canvas.TextOut(0,vLinha,'');

  Printer.EndDoc;
end;

end.
