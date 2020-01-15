unit UConsEstoque2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Mask, 
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, NxCollection, ToolEdit, CurrEdit,
  UConsProduto_Pes, UConsEstoque_Mov, Menus, ComCtrls;

type
  TfrmConsEstoque2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtRef: TEdit;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    rgTipo: TRadioGroup;
    CheckBox1: TCheckBox;
    btnConsultar: TNxButton;
    Label5: TLabel;
    ceIDProduto: TCurrencyEdit;
    UCControls1: TUCControls;
    Label6: TLabel;
    rxdbLocalEstoque: TRxDBLookupCombo;
    Imprimir: TNxButton;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure rgTipoClick(Sender: TObject);
    procedure edtRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure ceIDProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxdbLocalEstoqueExit(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Produto1Click(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;
    ffrmConsProduto_Pes: TfrmConsProduto_Pes;
    ffrmConsEstoque_Mov : TfrmConsEstoque_Mov;

    procedure prc_Consultar;
    procedure prc_Monta_Cab;
    procedure prc_Chamar_Sel_Produto(Tipo: String);
  public
    { Public declarations }
  end;

var
  frmConsEstoque2: TfrmConsEstoque2;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelEstoque, USel_Grupo, USel_Produto,
  uConsProduto_Compras, Math;

{$R *.dfm}

procedure TfrmConsEstoque2.prc_Consultar;
var
  vQtdAux: Integer;
begin
  vQtdAux := 0;
  fDMConsEstoque.cdsEstoque2.Close;
  if RxDBLookupCombo1.KeyValue <> '' then
    fDMConsEstoque.sdsEstoque2.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue
  else
    fDMConsEstoque.sdsEstoque2.ParamByName('Filial').AsInteger := 0;
  if edtRef.Text <> '' then
    fDMConsEstoque.sdsEstoque2.ParamByName('REFERENCIA').AsString := '%' + trim(edtRef.Text) + '%'
  else
    fDMConsEstoque.sdsEstoque2.ParamByName('REFERENCIA').AsString := '%%';
    
  if ceIDProduto.Value > 0 then
    fDMConsEstoque.sdsEstoque2.ParamByName('ID_PRODUTO').AsInteger := ceIDProduto.AsInteger
  else
    fDMConsEstoque.sdsEstoque2.ParamByName('ID_PRODUTO').AsInteger := 0;
  if rxdbLocalEstoque.KeyValue > 0 then
    fDMConsEstoque.sdsEstoque2.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := rxdbLocalEstoque.KeyValue
  else
    fDMConsEstoque.sdsEstoque2.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := 0;

  case rgTipo.ItemIndex of
    0: fDMConsEstoque.sdsEstoque2.ParamByName('TIPO_REG').AsString := 'P';
    1: fDMConsEstoque.sdsEstoque2.ParamByName('TIPO_REG').AsString := 'M';
    2: fDMConsEstoque.sdsEstoque2.ParamByName('TIPO_REG').AsString := 'C';
    3: fDMConsEstoque.sdsEstoque2.ParamByName('TIPO_REG').AsString := 'S';
    4: fDMConsEstoque.sdsEstoque2.ParamByName('TIPO_REG').AsString := 'I';
  end;
  fDMConsEstoque.cdsEstoque2.Open;
end;

procedure TfrmConsEstoque2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  prc_Grava_Grid(SMDBGrid1, Name, fDMConsEstoque.qParametros_GeralENDGRIDS.AsString);
  Action := Cafree;
end;

procedure TfrmConsEstoque2.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  prc_le_Grid(SMDBGrid1, Name, fDMConsEstoque.qParametros_GeralENDGRIDS.AsString);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;

  fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;
end;

procedure TfrmConsEstoque2.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque2.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque2.rgTipoClick(Sender: TObject);
var
  i: Integer;
  vColunaAux: String;
  vColunaAux2: String;
begin
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
//    if (SMDBGrid1.Columns[i].FieldName = 'QTD_RESERVA') then
//      SMDBGrid1.Columns[i].Visible := ((fDMConsEstoque.qParametros_EstUSA_RESERVA.AsString = 'S') and (RadioGroup2.ItemIndex = 1))
//                                      or ((fDMConsEstoque.qParametros_EstUSA_RESERVA_PROD.AsString = 'S')
//                                           and ((RadioGroup2.ItemIndex = 0) or (RadioGroup2.ItemIndex = 3)));
//
//    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO') OR
//       (SMDBGrid1.Columns[i].FieldName = 'clTotal_Custo') then
//      SMDBGrid1.Columns[i].Visible := ckPrecoCusto.Checked;
//
//    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_VENDA') OR
//       (SMDBGrid1.Columns[i].FieldName = 'clTotal_Venda') then
//      SMDBGrid1.Columns[i].Visible := ckPrecoVenda.Checked;
  end;
end;

procedure TfrmConsEstoque2.edtRefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender)
  else
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('R');
end;

procedure TfrmConsEstoque2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque2SALDO.AsFloat)) = 0 then
  begin
    AFont.Color := clRed;
    AFont.Style := [];
  end
  else
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque2SALDO.AsFloat)) < 0 then
  begin
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end
  else
end;

procedure TfrmConsEstoque2.btnConsultarClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Filial não informada!');
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmConsEstoque2.ceIDProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender)
  else
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('P');
end;

procedure TfrmConsEstoque2.prc_Monta_Cab;
begin
  fDMConsEstoque.vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  case RadioGroup1.ItemIndex of
    0: fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Com Saldo)';
    1: fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Saldo Negativo)';
    2: fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Estoque Mínimo)';
  end;
  fDMConsEstoque.vOpcao_ProdMat := '';
  case rgTipo.ItemIndex of
    0: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'PRODUTO';
    1: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'MATERIAL';
    2: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'MATERIAL DE CONSUMO';
    3: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'SEMI ACABADO';
    4: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'IMOBILIZADO';
  end;
end;

procedure TfrmConsEstoque2.rxdbLocalEstoqueExit(Sender: TObject);
begin
  if rxdbLocalEstoque.Text <> '' then
    RadioGroup1.ItemIndex := 0;
end;

procedure TfrmConsEstoque2.prc_Chamar_Sel_Produto(Tipo: String);
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

procedure TfrmConsEstoque2.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vId: Integer;
  vTipoReg: String;
  vIndexName, vIndexValue: String;
begin
  if (Key = Vk_F6) and not(fDMConsEstoque.cdsEstoque2.IsEmpty) then
  begin
    case rgTipo.ItemIndex of
      0: vTipoReg := 'P';
      1: vTipoReg := 'M';
      2: vTipoReg := 'C';
      3: vTipoReg := 'S';
      4: vTipoReg := 'I';
    end;
    vId := fDMConsEstoque.cdsEstoque2ID.AsInteger;
    vIndexName  := fDMConsEstoque.cdsEstoque2.IndexFieldNames;
    vIndexValue := fDMConsEstoque.cdsEstoque2.FieldByName(vIndexName).AsString;
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
  if (Key = Vk_F8) and not(fDMConsEstoque.cdsEstoque2.IsEmpty) then
  begin
    frmConsProduto_Compras := TfrmConsProduto_Compras.Create(Self);
    frmConsProduto_Compras.vIdProd := fDMConsEstoque.cdsEstoque2ID.AsInteger;
    frmConsProduto_Compras.ShowModal;
    FreeAndNil(frmConsProduto_Compras);
  end;
end;

procedure TfrmConsEstoque2.Produto1Click(Sender: TObject);
begin
  if not(fDMConsEstoque.cdsEstoque2.Active) or (fDMConsEstoque.cdsEstoque2.IsEmpty) then
  begin
    MessageDlg('*** Efetuar pesquisa antes de imprimir!', mtError, [mbOk], 0);
    exit;
  end;

  SMDBGrid1.DisableScroll;
  try
    vTipo_Config_Email := 4;
    prc_Monta_Cab;
    fRelEstoque                := TfRelEstoque.Create(Self);
    fRelEstoque.fDMConsEstoque := fDMConsEstoque;
    fRelEstoque.vImpQtdGeral   := (fDMConsEstoque.cdsEstoque2.RecordCount > 1);
  finally
    SMDBGrid1.EnableScroll;
  end;

end;

procedure TfrmConsEstoque2.ImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  if not(fDMConsEstoque.cdsEstoque2.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid1.DisableScroll;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_Dimensoes.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsEstoque.frxReport1.variables['Opcao_Imp'] := QuotedStr(fDMConsEstoque.vDescOpcao_Rel);
  fDMConsEstoque.frxReport1.ShowReport;

end;

end.
