unit UConsEstoque_Atual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Mask, 
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, NxCollection, ToolEdit, CurrEdit,
  UConsProduto_Pes, UConsEstoque_Mov, Menus, StrUtils;

type
  TfrmConsEstoque_Atual = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label7: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    edtRef: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    btnConsultar: TNxButton;
    ceIDProduto: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure edtRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure ceIDProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;
    ffrmConsProduto_Pes: TfrmConsProduto_Pes;
    ffrmConsEstoque_Mov : TfrmConsEstoque_Mov;

    procedure prc_Consultar;
    procedure prc_Chamar_Sel_Produto(Tipo: String);
  public
    { Public declarations }
  end;

var
  frmConsEstoque_Atual: TfrmConsEstoque_Atual;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelEstoque, URelInventario, USel_Produto;

{$R *.dfm}

procedure TfrmConsEstoque_Atual.prc_Consultar;
var
  vQtdAux: Integer;
  vComandoAux, vComandoAux2: String;
  vComando : String;
  i : Integer;
begin
  fDMConsEstoque.cdsEstoque_Atual.Close;
  vQtdAux := 0;
  i := PosEx('GROUP',fDMConsEstoque.ctEstoque_Atual,0);
  vComandoAux  := copy(fDMConsEstoque.ctEstoque_Atual,i,Length(fDMConsEstoque.ctEstoque_Atual) - i + 1);
  vComandoAux2 := copy(fDMConsEstoque.ctEstoque_Atual,1,i-1);
  vComando := ' WHERE 0 = 0 ';
  if ceIDProduto.AsInteger > 0 then
    vComando := vComando + ' AND PRO.ID = ' + ceIDProduto.Text
  else
  begin
    if trim(edtRef.Text) <> '' then
      vComando := vComando + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+edtRef.Text+'%')
    else
    begin
      case RadioGroup1.ItemIndex of
        0: vComando := vComando + ' AND EA.QTD > ' + IntToStr(vQtdAux);
        1: vComando := vComando + ' AND EA.QTD < ' + IntToStr(vQtdAux);
        2: vComando := vComando + ' AND coalesce(EA.QTD,0) < coalesce(PRO.QTD_ESTOQUE_MIN,0) ';
      end;
    end;
  end;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND EA.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  case RadioGroup2.ItemIndex of
    0: vComando := vComando + ' AND PRO.TIPO_REG = ' +  QuotedStr('P');
    1: vComando := vComando + ' AND PRO.TIPO_REG = ' +  QuotedStr('M');
    2: vComando := vComando + ' AND PRO.TIPO_REG = ' +  QuotedStr('C');
    3: vComando := vComando + ' AND PRO.TIPO_REG = ' +  QuotedStr('S');
  end;
  fDMConsEstoque.sdsEstoque_Atual.CommandText := vComandoAux2 + vComando + vComandoAux;
  fDMConsEstoque.cdsEstoque_Atual.Open;
end;

procedure TfrmConsEstoque_Atual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoque_Atual.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;
end;

procedure TfrmConsEstoque_Atual.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque_Atual.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Atual.edtRefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender)
  else
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('R');
end;

procedure TfrmConsEstoque_Atual.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque_AtualQTD.AsFloat)) = 0 then
  begin
    AFont.Color := clRed;
    AFont.Style := [];
  end
  else
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque_AtualQTD.AsFloat)) < 0 then
  begin
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end
  else
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque_AtualQTD.AsFloat)) <
     StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque_AtualQTD_ESTOQUE_MIN.AsFloat)) then
  begin
    AFont.Color := clMaroon;
    Background  := clYellow;
    AFont.Style := [];
  end;
end;

procedure TfrmConsEstoque_Atual.btnConsultarClick(Sender: TObject);
begin
  if fDMConsEstoque.qParametrosUSA_GRADE.AsString = 'S' then
    fDMConsEstoque.cdsEstoque_Atual.IndexFieldNames := 'NOME_PRODUTO;NOME_COMBINACAO;TAMANHO'
  else
    fDMConsEstoque.cdsEstoque_Atual.IndexFieldNames := 'NOME_PRODUTO';
  prc_Consultar;
end;

procedure TfrmConsEstoque_Atual.ceIDProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender)
  else
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('P');
end;

procedure TfrmConsEstoque_Atual.prc_Chamar_Sel_Produto(Tipo: String);
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

procedure TfrmConsEstoque_Atual.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vId: Integer;
  vTipoReg: String;
  vIndexName, vIndexValue: String;
begin
  if (Key = Vk_F6) and not(fDMConsEstoque.cdsEstoque_Atual.IsEmpty) then
  begin
    case RadioGroup2.ItemIndex of
      0: vTipoReg := 'P';
      1: vTipoReg := 'M';
      2: vTipoReg := 'C';
      3: vTipoReg := 'S';
    end;
    vId := fDMConsEstoque.cdsEstoque_AtualID.AsInteger;
    vIndexName  := fDMConsEstoque.cdsEstoque_Atual.IndexFieldNames;
    vIndexValue := fDMConsEstoque.cdsEstoque_Atual.FieldByName(vIndexName).AsString;
    ceIDProduto.AsInteger := vId;
    ffrmConsEstoque_Mov   := TfrmConsEstoque_Mov.Create(self);
    vControleExterno      := True;
    ffrmConsEstoque_Mov.RxDBLookupCombo1.KeyValue := RxDBLookupCombo1.KeyValue;
    ffrmConsEstoque_Mov.ceIDProduto.AsInteger := ceIDProduto.AsInteger;
    ffrmConsEstoque_Mov.edtRef.Text := edtRef.Text;
    ffrmConsEstoque_Mov.WindowState := wsMaximized;
    ffrmConsEstoque_Mov.ShowModal;
    ceIDProduto.Clear;
    FreeAndNil(frmConsEstoque_Mov);
  end;
end;

end.
