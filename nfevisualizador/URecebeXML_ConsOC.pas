unit URecebeXML_ConsOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls, Buttons,
  UDMRecebeXML, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, SqlExpr;

type
  TfrmRecebeXML_ConsOC = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_Pedido;
    function fnc_Verificar_OC_Pendente_Aprov(ID_Cliente: Integer): Integer;

  public
    { Public declarations }
    vCodCliente: Integer;

    fDMRecebeXML: TDMRecebeXML;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
  end;

var
  frmRecebeXML_ConsOC: TfrmRecebeXML_ConsOC;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

function TfrmRecebeXML_ConsOC.fnc_Verificar_OC_Pendente_Aprov(ID_Cliente: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR FROM PEDIDO P '
                       + 'WHERE P.tipo_reg = ' + QuotedStr('C')
                       + '  AND P.id_cliente = :ID_CLIENTE '
                       + '  AND P.aprovado_ped = ' + QuotedStr('P');
    sds.ParamByName('ID_CLIENTE').AsInteger := ID_Cliente;
    sds.Open;

    Result := sds.FieldByName('CONTADOR').AsInteger;
    sds.Close;

  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmRecebeXML_ConsOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRecebeXML_ConsOC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMRecebeXML);
  Panel3.Visible := False;
  prc_Consultar_Pedido;
  Panel1.Visible := (vCodCliente <= 0);
end;

procedure TfrmRecebeXML_ConsOC.prc_Consultar_Pedido;
var
  vQtdAux: Integer;
begin
  SMDBGrid1.DisableScroll;
  fDMRecebeXML.cdsOC.Close;
  fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.ctOC;
  //if vCodCliente > 0 then
    fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.sdsOC.CommandText + ' AND PE.ID_CLIENTE = ' + IntToStr(vCodCliente);
  if (fDMRecebeXML.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') then
    fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.sdsOC.CommandText + ' AND PE.APROVADO_PED = ' + QuotedStr('A');
  fDMRecebeXML.cdsOC.Open;
  fDMRecebeXML.cdsOC.First;
  SMDBGrid1.EnableScroll;

  if fDMRecebeXML.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S' then
  begin
    vQtdAux := fnc_Verificar_OC_Pendente_Aprov(vCodCliente);
    Panel3.Visible := (vQtdAux > 0);
    Label4.Caption := 'Qtd. de OC Pendente de aprovação: ' + IntToStr(vQtdAux);
  end;
end;

procedure TfrmRecebeXML_ConsOC.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(fDMRecebeXML.cdsOC.Active) or (fDMRecebeXML.cdsOC.IsEmpty) or (fDMRecebeXML.cdsOCID.AsInteger <= 0) then
    exit;

  fDMRecebeXML.prc_Move_Dados_Da_OC;

  {fDMRecebeXML.vNum_Pedido  := fDMRecebeXML.cdsOCNUM_PEDIDO.AsString;
  fDMRecebeXML.vID_Pedido   := fDMRecebeXML.cdsOCID.AsInteger;
  fDMRecebeXML.vItem_Pedido := fDMRecebeXML.cdsOCITEM.AsInteger;
  fDMRecebeXML.vUnidade     := fDMRecebeXML.cdsOCUNIDADE.AsString;
  vCodProduto_Pos           := fDMRecebeXML.cdsOCID_PRODUTO.AsInteger;
  vReferencia_Pos           := fDMRecebeXML.cdsOCREFERENCIA.AsString;
  vUsa_Cor_Pos              := fDMRecebeXML.cdsOCUSA_COR.AsString;
  vUsa_Preco_Cor_Pos        := fDMRecebeXML.cdsOCUSA_PRECO_COR.AsString;}
  Close;
end;

end.
