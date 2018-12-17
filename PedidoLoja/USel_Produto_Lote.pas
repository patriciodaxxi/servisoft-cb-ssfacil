unit USel_Produto_Lote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids, SMDBGrid, FMTBcd,
  SqlExpr, Provider;

type
  TfrmSel_Produto_Lote = class(TForm)
    Label1: TLabel;
    SMDBGrid1: TSMDBGrid;
    sdsEstoque_Lote: TSQLDataSet;
    dspEstoque_Lote: TDataSetProvider;
    cdsEstoque_Lote: TClientDataSet;
    cdsEstoque_LoteQTD: TFMTBCDField;
    cdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField;
    dsEstoque_Lote: TDataSource;
    cdsEstoque_LotePRECO_CUSTO: TFloatField;
    cdsEstoque_LotePRECO_VENDA: TFloatField;
    CheckBox1: TCheckBox;
    cdsEstoque_LoteLOCALIZACAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    ctComando : String;
    procedure prc_Abre_Lote;
    { Private declarations }
  public
    { Public declarations }
    vID_Produto_Loc : Integer;
  end;

var
  frmSel_Produto_Lote: TfrmSel_Produto_Lote;

implementation

uses uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmSel_Produto_Lote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfrmSel_Produto_Lote.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    Close
  else
  if Key = VK_RETURN then
  begin
    vNum_Lote_Pos := cdsEstoque_LoteNUM_LOTE_CONTROLE.AsString;
    vPreco_Pos    := StrToFloat(FormatFloat('0.00',cdsEstoque_LotePRECO_VENDA.AsFloat));
    Close;
  end;
end;

procedure TfrmSel_Produto_Lote.SMDBGrid1DblClick(Sender: TObject);
begin
  vNum_Lote_Pos := cdsEstoque_LoteNUM_LOTE_CONTROLE.AsString;
  vPreco_Pos    := StrToFloat(FormatFloat('0.00',cdsEstoque_LotePRECO_VENDA.AsFloat));
  Close;
end;

procedure TfrmSel_Produto_Lote.FormShow(Sender: TObject);
begin
  //Tag = 5  Vem da consulta do produto, só para mostrar a consulta
  ctComando := sdsEstoque_Lote.CommandText;
  Label1.Visible := (Tag <> 5);
  if (Tag <> 2) then
  begin
    prc_Abre_Lote;
  end;
end;

procedure TfrmSel_Produto_Lote.prc_Abre_Lote;
begin
  cdsEstoque_Lote.Close;
  sdsEstoque_Lote.CommandText := ctComando;
  if CheckBox1.Checked then
    sdsEstoque_Lote.CommandText := ctComando + ' AND (SELECT sum(L.qtd) QTD FROM ESTOQUE_LOTE L WHERE L.ID_PRODUTO = PL.ID AND L.NUM_LOTE_CONTROLE = PL.num_lote_controle) > 0';
  sdsEstoque_Lote.ParamByName('ID_PRODUTO').AsInteger := vID_Produto_Loc;
  cdsEstoque_Lote.Open;
end;

procedure TfrmSel_Produto_Lote.CheckBox1Click(Sender: TObject);
begin
  prc_Abre_Lote;
end;

end.
