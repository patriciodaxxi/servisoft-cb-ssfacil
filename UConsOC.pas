unit UConsOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsOC, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  RzTabs, CurrEdit, UDMConsPedido, UConsPedido_Nota, NxCollection;

type
  TfrmConsOC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ckMostrarPreco: TCheckBox;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Label9: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    RzPageControl1: TRzPageControl;
    TS_Item: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TS_Pedido: TRzTabSheet;
    Panel2: TPanel;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    SMDBGrid4: TSMDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    TS_Projeto: TRzTabSheet;
    Panel5: TPanel;
    Label11: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SMDBGrid2: TSMDBGrid;
    ckImpSolicitante: TCheckBox;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    ckAprovado: TCheckBox;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Shape10: TShape;
    Label50: TLabel;
    Label10: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid4TitleClick(Column: TColumn);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsOC: TDMConsOC;
    fDMConsPedido: TDMConsPedido;
    ffrmConsPedido_Nota : TfrmConsPedido_Nota;

    ColunaOrdenada: String;

    procedure prc_Consultar;
    procedure prc_Consultar_Pedido;
    procedure prc_Consultar_Projeto;

  public
    { Public declarations }
    vOpcao_Rel : String; //H=Horizontal  V=Vertical
  end;

var
  frmConsOC: TfrmConsOC;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelOC_Det, URelOC_Res, URelOC_Projeto , StrUtils;

{$R *.dfm}

procedure TfrmConsOC.btnConsultarClick(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Item then
    prc_Consultar
  else
  if RzPageControl1.ActivePage = TS_Pedido then
    prc_Consultar_Pedido
  else
  if RzPageControl1.ActivePage = TS_Projeto then
    prc_Consultar_Projeto;
end;

procedure TfrmConsOC.prc_Consultar;
var
  vComando : String;
  vOpcaoDtEntrega : String;
begin
  fDMConsOC.cdsOC_Item.Close;
  fDMConsOC.sdsOC_Item.CommandText := fDMConsOC.ctPedido_Item + ' WHERE PED.TIPO_REG = ' + QuotedStr('C');
  if (fDMConsOC.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and not(ckAprovado.Checked) then
    fDMConsOC.sdsOC_Item.CommandText := fDMConsOC.sdsOC_Item.CommandText + ' AND PED.APROVADO_PED = ' + QuotedStr('A');
  vComando := '';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND ITE.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo5.Text <> '' then
    vComando := vComando + ' AND PED.ID_SOLICITANTE = ' + IntToStr(RxDBLookupCombo5.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMConsOC.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'PED.DTENTREGA'
  else
    vOpcaoDtEntrega := 'ITE.DTENTREGA';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND PED.NUM_PEDIDO = ' + CurrencyEdit1.Text;

  case RadioGroup2.ItemIndex of
    0 : vComando := vComando + ' AND ITE.QTD_RESTANTE > 0 ';
    1 : vComando := vComando + ' AND ITE.QTD_FATURADO > 0 ';
  end;
  fDMConsOC.sdsOC_Item.CommandText := fDMConsOC.sdsOC_Item.CommandText + vComando;
  fDMConsOC.cdsOC_Item.Open;
  fDMConsOC.cdsOC_Item.IndexFieldNames := 'NUM_PEDIDO;DTEMISSAO';
end;

procedure TfrmConsOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsOC.FormShow(Sender: TObject);
begin
  fDMConsOC := TDMConsOC.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsOC);
  RadioGroup2Click(Sender);
  fDMConsOC.cdsFilial.First;
  if (fDMConsOC.cdsFilial.RecordCount < 2) and (fDMConsOC.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsOC.cdsFilialID.AsInteger;
  ckAprovado.Visible := (fDMConsOC.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S');
end;

procedure TfrmConsOC.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOC.cdsOC_Item.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsOC.RadioGroup2Click(Sender: TObject);
var
  i : Integer;
  //vColunaAux : String;
  //vColunaAux2 : String;
begin
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    //if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO') OR (SMDBGrid1.Columns[i].FieldName = 'PRECO_VENDA') then
    if (SMDBGrid1.Columns[i].FieldName = 'VLR_TOTAL') OR (SMDBGrid1.Columns[i].FieldName = 'VLR_UNITARIO') OR
       (SMDBGrid1.Columns[i].FieldName = 'VLR_RESTANTE') OR (SMDBGrid1.Columns[i].FieldName = 'VLR_FATURADO') OR
       (SMDBGrid1.Columns[i].FieldName = 'VLR_CANCELADO') OR (SMDBGrid1.Columns[i].FieldName = 'VLR_DESCONTO') then
    begin
      SMDBGrid1.Columns[i].Visible := ckMostrarPreco.Checked;
    end;
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid1.Columns[i].Visible := (fDMConsOC.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMConsOC.qParametrosINFORMAR_COR_PROD.AsString = 'C');
    //if trim(vColunaAux2) <> '' then
    //  SMDBGrid1.Columns[i].Visible := (SMDBGrid1.Columns[i].FieldName <> vColunaAux2);
  end;

  for i := 1 to SMDBGrid4.ColCount - 2 do
  begin
    if (SMDBGrid4.Columns[i].FieldName = 'VLR_TOTAL') OR (SMDBGrid4.Columns[i].FieldName = 'VLR_UNITARIO') OR
       (SMDBGrid4.Columns[i].FieldName = 'VLR_RESTANTE') OR (SMDBGrid4.Columns[i].FieldName = 'VLR_FATURADO') OR
       (SMDBGrid4.Columns[i].FieldName = 'VLR_CANCELADO') OR (SMDBGrid4.Columns[i].FieldName = 'VLR_DESCONTO') then
    begin
        SMDBGrid4.Columns[i].Visible := ckMostrarPreco.Checked;
    end;
  end;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'VLR_TOTAL') OR (SMDBGrid2.Columns[i].FieldName = 'VLR_UNITARIO') OR
       (SMDBGrid2.Columns[i].FieldName = 'VLR_RESTANTE') OR (SMDBGrid2.Columns[i].FieldName = 'VLR_FATURADO') OR
       (SMDBGrid2.Columns[i].FieldName = 'VLR_CANCELADO') OR (SMDBGrid2.Columns[i].FieldName = 'VLR_DESCONTO') OR
       (SMDBGrid2.Columns[i].FieldName = 'VLR_PROJETO') then
    begin
        SMDBGrid2.Columns[i].Visible := ckMostrarPreco.Checked;
    end;
  end;


end;

procedure TfrmConsOC.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsOC.btnImprimirClick(Sender: TObject);
var
  vOpcaoAux : String;
begin
  if ckImpSolicitante.Checked then
  begin
    if RzPageControl1.ActivePage = TS_Item then
      fDMConsOC.cdsOC_Item.IndexFieldNames := 'NOME_FUNCIONARIO;' + fDMConsOC.cdsOC_Item.IndexFieldNames
    else
    if RzPageControl1.ActivePage = TS_Pedido then
      fDMConsOC.cdsOC.IndexFieldNames := 'NOME_FUNCIONARIO;' + fDMConsOC.cdsOC.IndexFieldNames
    else
    if RzPageControl1.ActivePage = TS_Projeto then
      fDMConsOC.cdsOC.IndexFieldNames := 'NOME_PROJETO;' + fDMConsOC.cdsOC_Projeto.IndexFieldNames;
  end;
  vTipo_Config_Email := 4;
  vOpcaoAux := '';
  if RxDBLookupCombo2.Text <> '' then
    vOpcaoAux := vOpcaoAux + '(Fornecedor: ' + RxDBLookupCombo2.Text + ')';
  if RxDBLookupCombo5.Text <> '' then
    vOpcaoAux := vOpcaoAux + '(Solicitante: ' + RxDBLookupCombo5.Text + ')';
  if RxDBLookupCombo4.Text <> '' then
    vOpcaoAux := vOpcaoAux + '(Referência: ' + RxDBLookupCombo4.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Emissão Ini: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Emissão Fin: ' + DateEdit2.Text + ')';
  if (DateEdit3.Date > 10) and (DateEdit4.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Entrega: ' + DateEdit3.Text + ' a ' + DateEdit4.Text + ')'
  else
  if (DateEdit3.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Entrega Ini: ' + DateEdit3.Text + ')'
  else
  if (DateEdit4.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Entrega Fin: ' + DateEdit4.Text + ')';

  if RzPageControl1.ActivePage = TS_Item then
  begin
    SMDBGrid1.DisableScroll;
    fRelOC_Det := TfRelOC_Det.Create(Self);
    fRelOC_Det.fDMConsOC := fDMConsOC;
    fRelOC_Det.vImp_Vlr         := ckMostrarPreco.Checked;
    fRelOC_Det.vOpcaoImp        := vOpcaoAux;
    fRelOC_Det.vImp_Solicitante := ckImpSolicitante.Checked;
    fRelOC_Det.RLReport1.PreviewModal;
    fRelOC_Det.RLReport1.Free;
    FreeAndNil(fRelOC_Det);
    SMDBGrid1.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TS_Pedido then
  begin
    SMDBGrid4.DisableScroll;
    begin
      fRelOC_Res := TfRelOC_Res.Create(Self);
      fRelOC_Res.fDMConsOC        := fDMConsOC;
      fRelOC_Res.vImp_Vlr         := ckMostrarPreco.Checked;
      fRelOC_Res.vOpcaoImp        := vOpcaoAux;
      fRelOC_Res.vImp_Solicitante := ckImpSolicitante.Checked;
      fRelOC_Res.RLReport1.PreviewModal;
      fRelOC_Res.RLReport1.Free;
      FreeAndNil(fRelOC_Res);
    end;
    SMDBGrid4.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TS_Projeto then
  begin
    SMDBGrid2.DisableScroll;
    begin
      fRelOC_Projeto := TfRelOC_Projeto.Create(Self);
      fRelOC_Projeto.fDMConsOC        := fDMConsOC;
      fRelOC_Projeto.vImp_Vlr         := ckMostrarPreco.Checked;
      fRelOC_Projeto.vOpcaoImp        := vOpcaoAux;
      fRelOC_Projeto.RLReport1.PreviewModal;
      fRelOC_Projeto.RLReport1.Free;
      FreeAndNil(fRelOC_Projeto);
    end;
    SMDBGrid2.EnableScroll;
  end;
end;

procedure TfrmConsOC.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMConsOC.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsOC.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsOC.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmConsOC.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmConsOC.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmConsOC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOC_ItemQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOC_ItemQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOC_ItemQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOC_ItemQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOC_ItemQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOC_ItemQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDMConsOC.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMConsOC.cdsOC_ItemAPROVADO_PED.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsOC.prc_Consultar_Pedido;
var
  vComando : String;
  vOpcaoDtEntrega : String;
  vComandoAux : String;
  i : Integer;
begin
  fDMConsOC.cdsOC.Close;
  i := PosEx('GROUP',fDMConsOC.ctPedido,0);
  vComandoAux := copy(fDMConsOC.ctPedido,i,Length(fDMConsOC.ctPedido) - i + 1);
  vComando    := copy(fDMConsOC.ctPedido,1,i-1);

  vComando := vComando + ' WHERE PED.TIPO_REG = ' + QuotedStr('C');
  if (fDMConsOC.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and not(ckAprovado.Checked) then
    vComando := vComando + ' AND PED.APROVADO_PED = ' + QuotedStr('A');

  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND ITE.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo5.Text <> '' then
    vComando := vComando + ' AND PED.ID_SOLICITANTE = ' + IntToStr(RxDBLookupCombo5.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMConsOC.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'PED.DTENTREGA'
  else
    vOpcaoDtEntrega := 'ITE.DTENTREGA';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND PED.NUM_PEDIDO = ' + CurrencyEdit1.Text;

  case RadioGroup2.ItemIndex of
    0 : vComando := vComando + ' AND ITE.QTD_RESTANTE > 0 ';
    1 : vComando := vComando + ' AND ITE.QTD_FATURADO > 0 ';
  end;
  fDMConsOC.sdsOC.CommandText := vComando + '  ' + vComandoAux;
  fDMConsOC.cdsOC.Open;
  fDMConsOC.cdsOC.IndexFieldNames := 'DTENTREGA_ITEM;NUM_PEDIDO';
end;

procedure TfrmConsOC.SMDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOCQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOCQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOCQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOCQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOCQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsOC.cdsOCQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDMConsOC.qParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMConsOC.cdsOCAPROVADO_PED.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsOC.SMDBGrid4TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOC.cdsOC.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid4.Columns.Count - 1 do
    if not (SMDBGrid4.Columns.Items[I] = Column) then
      SMDBGrid4.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsOC.prc_Consultar_Projeto;
var
  vComando : String;
  vOpcaoDtEntrega : String;
  vComandoAux : String;
  i : Integer;
begin
  fDMConsOC.cdsOC_Projeto.Close;
  i := PosEx('GROUP',fDMConsOC.ctOC_Projeto,0);
  vComandoAux := copy(fDMConsOC.ctOC_Projeto,i,Length(fDMConsOC.ctOC_Projeto) - i + 1);
  vComando    := copy(fDMConsOC.ctOC_Projeto,1,i-1);

  vComando := vComando + ' WHERE PED.TIPO_REG = ' + QuotedStr('C');
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND ITE.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo5.Text <> '' then
    vComando := vComando + ' AND PED.ID_SOLICITANTE = ' + IntToStr(RxDBLookupCombo5.KeyValue);
  if RxDBLookupCombo6.Text <> '' then
    vComando := vComando + ' AND PCLI.ID_CENTROCUSTO = ' + IntToStr(RxDBLookupCombo6.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMConsOC.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'PED.DTENTREGA'
  else
    vOpcaoDtEntrega := 'ITE.DTENTREGA';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND PED.NUM_PEDIDO = ' + CurrencyEdit1.Text;

  case RadioGroup2.ItemIndex of
    0 : vComando := vComando + ' AND ITE.QTD_RESTANTE > 0 ';
    1 : vComando := vComando + ' AND ITE.QTD_FATURADO > 0 ';
  end;

  fDMConsOC.sdsOC_Projeto.CommandText := vComando + '  ' + vComandoAux;
  fDMConsOC.cdsOC_Projeto.Open;
  fDMConsOC.cdsOC_Projeto.IndexFieldNames := 'NOME_PROJETO;DTENTREGA_ITEM;NUM_PEDIDO';
end;

procedure TfrmConsOC.SMDBGrid2TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOC.cdsOC_Projeto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsOC.BitBtn3Click(Sender: TObject);
begin
  if not(fDMConsOC.cdsOC_Item.Active) or (fDMConsOC.cdsOC_Item.IsEmpty) then
    exit;

  {fDMConsPedido.cdsPedido_Nota.Close;
  fDMConsPedido.sdsPedido_Nota.ParamByName('ID').AsInteger   := fDMConsOC.cdsOC_ItemID.AsInteger;
  fDMConsPedido.sdsPedido_Nota.ParamByName('ITEM').AsInteger := fDMConsOC.cdsOC_ItemITEM.AsInteger;
  fDMConsPedido.cdsPedido_Nota.Open;

  fDMConsPedido.cdsBaixa_Pedido.Close;
  fDMConsPedido.sdsBaixa_Pedido.ParamByName('ID').AsInteger   := fDMConsOC.cdsOC_ItemID.AsInteger;
  fDMConsPedido.sdsBaixa_Pedido.ParamByName('ITEM').AsInteger := fDMConsOC.cdsOC_ItemITEM.AsInteger;
  fDMConsPedido.cdsBaixa_Pedido.Open;}

  fDMConsPedido := TDMConsPedido.Create(Self);
  try
    ffrmConsPedido_Nota := TfrmConsPedido_Nota.Create(self);
    ffrmConsPedido_Nota.vTipo_RegAux  := 'C';
    ffrmConsPedido_Nota.fDMConsPedido := fDMConsPedido;
    ffrmConsPedido_Nota.vID_Pedido_Cons   := fDMConsOC.cdsOC_ItemID.AsInteger;
    ffrmConsPedido_Nota.vItem_Pedido_Cons := fDMConsOC.cdsOC_ItemITEM.AsInteger;
    ffrmConsPedido_Nota.ShowModal;
    FreeAndNil(ffrmConsPedido_Nota);
    fDMConsPedido.cdsPedido_Nota.Close;
    fDMConsPedido.cdsBaixa_Pedido.Close;
  finally
    FreeAndNil(fDMConsPedido);
  end;
end;

end.
