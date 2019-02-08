unit UConsEstoque_Atual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Mask, 
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, NxCollection, ToolEdit, CurrEdit,
  UConsProduto_Pes, UConsEstoque_Mov, Menus, StrUtils, RzTabs;

type
  TfrmConsEstoque_Atual = class(TForm)
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
    RzPageControl1: TRzPageControl;
    TS_Estoque: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TS_DeTerceiros: TRzTabSheet;
    TS_EmTerceiros: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    btnImprimir: TNxButton;
    TS_NCM: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    SMDBGrid5: TSMDBGrid;
    Panel3: TPanel;
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
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;
    ffrmConsProduto_Pes: TfrmConsProduto_Pes;
    ffrmConsEstoque_Mov : TfrmConsEstoque_Mov;
    vOpcaoImp : String;

    procedure prc_Consultar;
    procedure prc_Consultar_DeTerceiros;
    procedure prc_Consultar_EmTerceiros;
    procedure prc_Chamar_Sel_Produto(Tipo: String);
    procedure prc_Monta_Cab;
    procedure prc_Monta_mNCM;

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
  if (RzPageControl1.ActivePage = TS_Estoque) or (RzPageControl1.ActivePage = TS_NCM) then
  begin
    prc_Consultar;
    if (RzPageControl1.ActivePage = TS_NCM) then
      prc_Monta_mNCM;
  end
  else
  if RzPageControl1.ActivePage = TS_DeTerceiros then
    prc_Consultar_DeTerceiros
  else
  if RzPageControl1.ActivePage = TS_EmTerceiros then
    prc_Consultar_EmTerceiros;
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

procedure TfrmConsEstoque_Atual.prc_Consultar_DeTerceiros;
begin
  fDMConsEstoque.cdsEstoque_De_Terc.Close;
  fDMConsEstoque.sdsEstoque_De_Terc.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMConsEstoque.cdsEstoque_De_Terc.Open;
end;

procedure TfrmConsEstoque_Atual.prc_Consultar_EmTerceiros;
begin
  fDMConsEstoque.cdsEstoque_Em_Terc.Close;
  fDMConsEstoque.sdsEstoque_Em_Terc.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMConsEstoque.cdsEstoque_Em_Terc.Open;
end;

procedure TfrmConsEstoque_Atual.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque_De_Terc.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Atual.SMDBGrid3TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque_Em_Terc.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid3.Columns.Count - 1 do
    if not (SMDBGrid3.Columns.Items[I] = Column) then
      SMDBGrid3.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Atual.btnImprimirClick(Sender: TObject);
var
  vArq: string;
begin
  if (RzPageControl1.ActivePage = TS_Estoque) then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_Atual.fr3'
  else
  if (RzPageControl1.ActivePage = TS_NCM) then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_NCM.fr3'
  else
    exit;
  prc_Monta_Cab;
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsEstoque.frxReport1.variables['ImpOpcao'] := QuotedStr(vOpcaoImp);
  fDMConsEstoque.frxReport1.ShowReport;
end;

procedure TfrmConsEstoque_Atual.prc_Monta_Cab;
begin
  vOpcaoImp := '';
  vOpcaoImp := '';
  case RadioGroup1.ItemIndex of
    0: vOpcaoImp := vOpcaoImp + '(Com Saldo)';
    1: vOpcaoImp := vOpcaoImp + '(Negativo)';
    2: vOpcaoImp := vOpcaoImp + '(Mínimo)';
  end;
  case RadioGroup2.ItemIndex of
    0: vOpcaoImp := vOpcaoImp + '(Produto)';
    1: vOpcaoImp := vOpcaoImp + '(Material)';
    2: vOpcaoImp := vOpcaoImp + '(Material Consumo)';
    3: vOpcaoImp := vOpcaoImp + '(Semi Acabado)';
  end;
  if trim(RxDBLookupCombo1.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if trim(edtRef.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Ref: ' + edtRef.Text + ')';
  if ceIDProduto.AsInteger > 0 then
    vOpcaoImp := vOpcaoImp + '(ID Produto: ' + ceIDProduto.Text + ')';
end;

procedure TfrmConsEstoque_Atual.prc_Monta_mNCM;
begin
  SMDBGrid4.DisableScroll;
  fDMConsEstoque.mNCM.EmptyDataSet;
  fDMConsEstoque.mUnidade.EmptyDataSet;
  fDMConsEstoque.cdsEstoque_Atual.First;
  while not fDMConsEstoque.cdsEstoque_Atual.Eof do
  begin
    if StrToFloat(FormatFloat('0.0000',fDMConsEstoque.cdsEstoque_AtualQTD.AsFloat)) > 0 then
    begin
      if not fDMConsEstoque.mUnidade.Locate('Unidade',fDMConsEstoque.cdsEstoque_AtualUNIDADE.AsString,[loCaseInsensitive]) then
      begin
        fDMConsEstoque.mUnidade.Insert;
        fDMConsEstoque.mUnidadeUnidade.AsString := fDMConsEstoque.cdsEstoque_AtualUNIDADE.AsString;
        fDMConsEstoque.mUnidade.Post;
      end;
      if fDMConsEstoque.mNCM.Locate('ID_NCM',fDMConsEstoque.cdsEstoque_AtualID_NCM.AsInteger,[loCaseInsensitive]) then
       fDMConsEstoque.mNCM.Edit
       else
      begin
        fDMConsEstoque.mNCM.Insert;
        fDMConsEstoque.mNCMID_NCM.AsInteger := fDMConsEstoque.cdsEstoque_AtualID_NCM.AsInteger;
        fDMConsEstoque.mNCMNCM.AsString     := fDMConsEstoque.cdsEstoque_AtualNCM.AsString;
        if trim(fDMConsEstoque.cdsEstoque_AtualNOME_NCM.AsString) <> '' then
          fDMConsEstoque.mNCMNome.AsString := fDMConsEstoque.cdsEstoque_AtualNOME_NCM.AsString
        else
          fDMConsEstoque.mNCMNome.AsString := fDMConsEstoque.cdsEstoque_AtualNOME_PRODUTO.AsString;
        fDMConsEstoque.mNCMQtd.AsFloat := 0;
      end;
      fDMConsEstoque.mNCMQtd.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsEstoque.mNCMQtd.AsFloat + fDMConsEstoque.cdsEstoque_AtualQTD.AsFloat));
      fDMConsEstoque.mNCM.Post;
    end;
    fDMConsEstoque.cdsEstoque_Atual.Next;
  end;
  SMDBGrid4.EnableScroll;
end;

end.
