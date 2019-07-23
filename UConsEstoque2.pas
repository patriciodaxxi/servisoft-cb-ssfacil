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
    RadioGroup2: TRadioGroup;
    ckPrecoCusto: TCheckBox;
    CheckBox1: TCheckBox;
    btnConsultar: TNxButton;
    Label5: TLabel;
    ceIDProduto: TCurrencyEdit;
    UCControls1: TUCControls;
    ckPrecoVenda: TCheckBox;
    Label6: TLabel;
    rxdbLocalEstoque: TRxDBLookupCombo;
    Label8: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label9: TLabel;
    ckImpAgrupado: TCheckBox;
    btnImprimir_Est: TNxButton;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RadioGroup2Click(Sender: TObject);
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
    procedure btnImprimir_EstClick(Sender: TObject);
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
  uConsProduto_Compras;

{$R *.dfm}

procedure TfrmConsEstoque2.prc_Consultar;
var
  vQtdAux: Integer;
begin
  vQtdAux := 0;
  fDMConsEstoque.cdsEstoque2.Close;
  if CheckBox1.Checked then
    fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.ctEstoque + ' WHERE (0 = 0) '
  else
    fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.ctEstoque + ' WHERE (INATIVO = ' + QuotedStr('N') + ')';
  if ceIDProduto.AsInteger > 0 then
    fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText + ' AND AUX.ID = ' + ceIDProduto.Text
  else
  begin
    if trim(edtRef.Text) <> '' then
      fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText + ' AND AUX.REFERENCIA LIKE ' + QuotedStr('%'+edtRef.Text+'%')
    else
    begin
      case RadioGroup1.ItemIndex of
        0: fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText + ' AND AUX.QTD > ' + IntToStr(vQtdAux);
        1: fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText + ' AND AUX.QTD < ' + IntToStr(vQtdAux);
        2: fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText + ' AND coalesce(AUX.QTD,0) < coalesce(AUX.QTD_ESTOQUE_MIN,0) ';
      end;
    end;
  end;
  if fDMConsEstoque.qParametros_EstUSA_QTD_INI.AsString = 'S' then
  begin
    if CurrencyEdit1.Value > 0 then
      fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText + ' AND AUX.QTDGERAL >= ' + CurrencyEdit1.Text;
    if CurrencyEdit2.Value > 0 then
      fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText + ' AND AUX.QTDGERAL <= ' + CurrencyEdit2.Text;
  end;
  if rxdbLocalEstoque.Text <> '' then
    fDMConsEstoque.sdsEstoque.CommandText := fDMConsEstoque.sdsEstoque.CommandText
                                          + ' AND ((AUX.ID_LOCAL_ESTOQUE = ' + IntToStr(rxdbLocalEstoque.KeyValue) + ')'
                                          + ' OR (AUX.ID_LOCAL_ESTOQUE is null))';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsEstoque.sdsEstoque.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  case RadioGroup2.ItemIndex of
    0: fDMConsEstoque.sdsEstoque.ParamByName('TIPO_REG').AsString := 'P';
    1: fDMConsEstoque.sdsEstoque.ParamByName('TIPO_REG').AsString := 'M';
    2: fDMConsEstoque.sdsEstoque.ParamByName('TIPO_REG').AsString := 'C';
    3: fDMConsEstoque.sdsEstoque.ParamByName('TIPO_REG').AsString := 'S';
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

procedure TfrmConsEstoque2.RadioGroup2Click(Sender: TObject);
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
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque2QTD.AsFloat)) = 0 then
  begin
    AFont.Color := clRed;
    AFont.Style := [];
  end
  else
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque2QTD.AsFloat)) < 0 then
  begin
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end
  else
  if StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque2QTD.AsFloat)) <
     StrToFloat(FormatFloat('0.000000',fDMConsEstoque.cdsEstoque2QTD_ESTOQUE_MIN.AsFloat)) then
  begin
    AFont.Color := clMaroon;
    Background  := clYellow;
    AFont.Style := [];
  end;
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
  case RadioGroup2.ItemIndex of
    0: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'PRODUTO';
    1: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'MATERIAL';
    2: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'MATERIAL DE CONSUMO';
    3: fDMConsEstoque.vOpcao_ProdMat := fDMConsEstoque.vOpcao_ProdMat + 'SEMI ACABADO';
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
    case RadioGroup2.ItemIndex of
      0: vTipoReg := 'P';
      1: vTipoReg := 'M';
      2: vTipoReg := 'C';
      3: vTipoReg := 'S';
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
    if (ckPrecoCusto.Checked) or (ckPrecoVenda.Checked) then
    begin
      fRelEstoque.vPrecoCusto := ckPrecoCusto.Checked;
      fRelEstoque.vPrecoVenda := ckPrecoVenda.Checked;
      fRelEstoque.RLReport2.PreviewModal;
      fRelEstoque.RLReport2.Free;
      FreeAndNil(fRelEstoque);
    end
    else
    begin
      fRelEstoque.RLReport1.PreviewModal;
      fRelEstoque.RLReport1.Free;
      FreeAndNil(fRelEstoque);
    end;
  finally
    SMDBGrid1.EnableScroll;
  end;

end;

procedure TfrmConsEstoque2.btnImprimir_EstClick(Sender: TObject);
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
    if (ckPrecoCusto.Checked) or (ckPrecoVenda.Checked) then
    begin
      fRelEstoque.vPrecoCusto := ckPrecoCusto.Checked;
      fRelEstoque.vPrecoVenda := ckPrecoVenda.Checked;
      fRelEstoque.RLReport2.PreviewModal;
      fRelEstoque.RLReport2.Free;
      FreeAndNil(fRelEstoque);
    end
    else
    begin
      fRelEstoque.RLReport1.PreviewModal;
      fRelEstoque.RLReport1.Free;
      FreeAndNil(fRelEstoque);
    end;
  finally
    SMDBGrid1.EnableScroll;
  end;

end;

end.
