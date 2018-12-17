unit UConsEstoque_Res;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Mask, 
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, NxCollection, ToolEdit, CurrEdit,
  Menus, RzTabs;

type
  TfrmConsEstoque_Res = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtRef: TEdit;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    ceIDProduto: TCurrencyEdit;
    UCControls1: TUCControls;
    Label3: TLabel;
    Edit1: TEdit;
    RzPageControl1: TRzPageControl;
    TS_Geral: TRzTabSheet;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    btnImprimir_Est: TNxButton;
    TS_OP: TRzTabSheet;
    Panel3: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    SMDBGrid2: TSMDBGrid;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure edtRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultarClick(Sender: TObject);
    procedure ceIDProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimir_EstClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;

    procedure prc_Consultar;
    procedure prc_Consultar_Ord;
    procedure prc_Chamar_Sel_Produto(Tipo: String);

  public
    { Public declarations }
  end;

var
  frmConsEstoque_Res: TfrmConsEstoque_Res;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, USel_Produto, StrUtils;

{$R *.dfm}

procedure TfrmConsEstoque_Res.prc_Consultar;
begin
  fDMConsEstoque.cdsEstoque_Res.Close;
  fDMConsEstoque.sdsEstoque_Res.CommandText := fDMConsEstoque.ctEstoque_Res + ' WHERE (0 = 0) ';
  if ceIDProduto.AsInteger > 0 then
    fDMConsEstoque.sdsEstoque_Res.CommandText := fDMConsEstoque.sdsEstoque_Res.CommandText + ' AND E.ID_PRODUTO = ' + ceIDProduto.Text
  else
  begin
    if trim(edtRef.Text) <> '' then
      fDMConsEstoque.sdsEstoque_Res.CommandText := fDMConsEstoque.sdsEstoque_Res.CommandText + ' AND P.REFERENCIA LIKE ' + QuotedStr('%'+edtRef.Text+'%');
  end;
  if RxDBLookupCombo1.Text <> '' then
    fDMConsEstoque.sdsEstoque_Res.CommandText := fDMConsEstoque.sdsEstoque_Res.CommandText + ' AND E.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMConsEstoque.cdsEstoque_Res.Open;
end;

procedure TfrmConsEstoque_Res.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  prc_Grava_Grid(SMDBGrid1, Name, fDMConsEstoque.qParametros_GeralENDGRIDS.AsString);
  Action := Cafree;
end;

procedure TfrmConsEstoque_Res.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  prc_le_Grid(SMDBGrid1, Name, fDMConsEstoque.qParametros_GeralENDGRIDS.AsString);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_LOCAL') then
      SMDBGrid1.Columns[i].Visible := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'COD_LOCAL') then
      SMDBGrid1.Columns[i].Visible := (fDMConsEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'NUM_LOTE_CONTROLE') then
      SMDBGrid1.Columns[i].Visible := (fDMConsEstoque.qParametros_ProdUSA_LOTE_PROD.AsString = 'S');
  end;
end;

procedure TfrmConsEstoque_Res.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque_Res.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Res.edtRefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender)
  else
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('R');
end;

procedure TfrmConsEstoque_Res.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    ShowMessage('Filial não informada!');
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  prc_Consultar;
  fDMConsEstoque.cdsEstoque_Res.IndexFieldNames := 'NOME_PRODUTO;NOME_COMBINACAO;TAMANHO';
end;

procedure TfrmConsEstoque_Res.ceIDProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender)
  else
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('P');
end;

procedure TfrmConsEstoque_Res.prc_Chamar_Sel_Produto(Tipo: String);
begin
  vCodProduto_Pos := 0;
  frmSel_Produto := TfrmSel_Produto.Create(Self);
  frmSel_Produto.ShowModal;
  FreeAndNil(frmSel_Produto);
  if vCodProduto_Pos > 0 then
  begin
    edtRef.Text := vReferencia_Pos;
    ceIDProduto.AsInteger := vCodProduto_Pos;
    if Tipo = 'R' then
      edtRef.SetFocus
    else
      ceIDProduto.SetFocus;
  end;
end;

procedure TfrmConsEstoque_Res.btnImprimir_EstClick(Sender: TObject);
var
  vArq : String;
begin
  fDMConsEstoque.mProduto_Marca.EmptyDataSet;
  SMDBGrid1.DisableScroll;
  fDMConsEstoque.cdsEstoque_Res.First;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_Res.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado: ' + vArq);
    Exit;
  end;
  SMDBGrid1.EnableScroll;
  fDMConsEstoque.frxReport1.ShowReport;
end;

procedure TfrmConsEstoque_Res.NxButton1Click(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger < CurrencyEdit1.AsInteger then
    CurrencyEdit2.AsInteger := CurrencyEdit1.AsInteger;
  prc_Consultar_Ord;
  fDMConsEstoque.cdsEstoque_Res_Ord.IndexFieldNames := 'NUM_ORDEM;NOME_PRODUTO;NOME_COMBINACAO';
end;

procedure TfrmConsEstoque_Res.prc_Consultar_Ord;
var
  vComandoAux, vComandoAux2: String;
  i: Integer;
begin
  i := PosEx('GROUP',fDMConsEstoque.ctEstoque_Res_Ord,0);
  if i > 0 then
  begin
    vComandoAux  := copy(fDMConsEstoque.ctEstoque_Res_Ord,i,Length(fDMConsEstoque.ctEstoque_Res_Ord) - i + 1);
    vComandoAux2 := copy(fDMConsEstoque.ctEstoque_Res_Ord,1,i-1);
  end
  else
  begin
    vComandoAux  := '';
    vComandoAux2 := fDMConsEstoque.ctEstoque_Res_Ord;
  end;
  fDMConsEstoque.cdsEstoque_Res_Ord.Close;
  vComandoAux2 := vComandoAux2 + ' WHERE (0 = 0) ';
  if ceIDProduto.AsInteger > 0 then
    vComandoAux2 := vComandoAux2 + ' AND EM.ID_PRODUTO = ' + ceIDProduto.Text
  else
  begin
    if trim(edtRef.Text) <> '' then
      vComandoAux2 := vComandoAux2 + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+edtRef.Text+'%');
  end;
  if RxDBLookupCombo1.Text <> '' then
    vComandoAux2 := vComandoAux2 + ' AND EM.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if CurrencyEdit1.AsInteger > 0 then
    vComandoAux2 := vComandoAux2 + ' AND EM.NUM_ORDEM >= ' + IntToStr(CurrencyEdit1.AsInteger);
  if CurrencyEdit2.AsInteger > 0 then
    vComandoAux2 := vComandoAux2 + ' AND EM.NUM_ORDEM <= ' + IntToStr(CurrencyEdit2.AsInteger);
  fDMConsEstoque.sdsEstoque_Res_Ord.CommandText := vComandoAux2 + ' ' + vComandoAux;  
  fDMConsEstoque.cdsEstoque_Res_Ord.Open;
end;

procedure TfrmConsEstoque_Res.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger < CurrencyEdit1.AsInteger then
    CurrencyEdit2.AsInteger := CurrencyEdit1.AsInteger;
end;

procedure TfrmConsEstoque_Res.NxButton2Click(Sender: TObject);
var
  vArq : String;
begin
  fDMConsEstoque.mProduto_Marca.EmptyDataSet;
  SMDBGrid2.DisableScroll;
  fDMConsEstoque.cdsEstoque_Res_Ord.First;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_Res_Ord.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado: ' + vArq);
    Exit;
  end;
  SMDBGrid2.EnableScroll;
  fDMConsEstoque.frxReport1.ShowReport;
end;

end.
