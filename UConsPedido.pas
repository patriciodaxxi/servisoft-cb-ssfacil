unit UConsPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsPedido, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  RzButton, RzTabs, UConsPedido_Nota, NxCollection, CurrEdit, Menus,
  ComCtrls;

type
  TfrmConsPedido = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
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
    Shape2: TShape;
    Label13: TLabel;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    SMDBGrid4: TSMDBGrid;
    Panel4: TPanel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Label11: TLabel;
    ComboBox2: TComboBox;
    TS_Ref: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    TS_Ref_Acum: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    TS_Cliente: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
    Label12: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Shape9: TShape;
    Label45: TLabel;
    TS_Combinacao: TRzTabSheet;
    SMDBGrid6: TSMDBGrid;
    Label16: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label17: TLabel;
    Label18: TLabel;
    cbImpCliente: TComboBox;
    ckAprovado: TCheckBox;
    pnlTotal: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    btnRecalcular: TNxButton;
    Shape10: TShape;
    Label50: TLabel;
    Label27: TLabel;
    Panel5: TPanel;
    Label28: TLabel;
    DateEdit5: TDateEdit;
    Label29: TLabel;
    DateEdit6: TDateEdit;
    Label30: TLabel;
    DateEdit7: TDateEdit;
    Label31: TLabel;
    DateEdit8: TDateEdit;
    UCControls1: TUCControls;
    TS_Ref2: TRzTabSheet;
    SMDBGrid7: TSMDBGrid;
    Label32: TLabel;
    Edit2: TEdit;
    Panel6: TPanel;
    ckImpNotas: TCheckBox;
    Panel7: TPanel;
    ckImpUnidade: TCheckBox;
    BitBtn3: TBitBtn;
    Label33: TLabel;
    ComboBox3: TComboBox;
    ProgressBar1: TProgressBar;
    chkImprimirPedidoItem: TCheckBox;
    TS_RefComb: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    TS_RefComb_Acum: TRzTabSheet;
    SMDBGrid8: TSMDBGrid;
    TS_RefComb_DtEntrega: TRzTabSheet;
    SMDBGrid9: TSMDBGrid;
    TS_ClienteDtEntrega: TRzTabSheet;
    SMDBGrid10: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid4TitleClick(Column: TColumn);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid5TitleClick(Column: TColumn);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid6GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RzPageControl1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure btnRecalcularClick(Sender: TObject);
    procedure ckAprovadoClick(Sender: TObject);
    procedure SMDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid7TitleClick(Column: TColumn);
    procedure SMDBGrid7GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid8GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid9GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    ffrmConsPedido_Nota: TfrmConsPedido_Nota;

    ColunaOrdenada: String;

    vComando, vComando_GroupBy: String;

    vOrdProducao: String;

    procedure prc_Consultar;
    procedure prc_Consultar_Pedido;
    procedure prc_Consultar_Ref;
    procedure prc_Consultar_Ref_Acum;
    procedure prc_Consultar_Cli;
    procedure prc_Consultar_Comb;
    procedure prc_Consultar_RefComb;
    procedure prc_Consultar_RefComb_DtEntrega;
    procedure prc_Consultar_RefComb_DtECliente;
    procedure prc_Monta_Condicao;
    procedure prc_GroupBy(ctTexto: String);
    procedure prc_Montar_RadioGroup2;
    procedure prc_Consultar_Ord_Prod;

    procedure prc_Somar_cdsPedido_item;
    procedure prc_Somar_cdsPedido;
    procedure prc_Imprimir_Personalizado(Opcao: String);
    procedure prc_Consultar_Ref2;

    procedure prc_Gravar_Unidade(Unidade: String ; Qtd, Qtd_Rest, Qtd_Fat: Real);

    procedure prc_Monta_mNotas_Ped;

  public
    { Public declarations }
    fDMConsPedido: TDMConsPedido;
    vOpcao_Rel: String; //H=Horizontal  V=Vertical

  end;

var
  frmConsPedido: TfrmConsPedido;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelPedido_Det, URelPedido_Res, StrUtils,
  URelPedido_Res2, USel_Produto, URelPedido_Ref, URelPedido_Ref_Acum,
  URelPedido_Cli, URelPedido_Ref_Comb, UInformar_DtExpedicao, USel_Pessoa;

{$R *.dfm}

procedure TfrmConsPedido.prc_Consultar;
var
  vOpcaoDtEntrega: String;
begin
  fDMConsPedido.cdsPedido_Item.Close;
  fDMConsPedido.cdsPedido_Item.IndexFieldNames := '';
  fDMConsPedido.sdsPedido_Item.CommandText := fDMConsPedido.ctPedido_Item + ' WHERE PED.TIPO_REG = ' + QuotedStr('P');
  if (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S') and not(ckAprovado.Checked) then
    fDMConsPedido.sdsPedido_Item.CommandText := fDMConsPedido.sdsPedido_Item.CommandText + ' AND PED.APROVADO_PED = ' + QuotedStr('A');
  vComando := '';

  //vOrdProducao := '123,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,148';
  if CurrencyEdit2.AsInteger > 0 then
    vComando := ' AND PED.NUM_PEDIDO IN (' + vOrdProducao + ')'
  else
  begin
    case ComboBox2.ItemIndex of
      0: vComando := vComando + ' AND CLI.CLIENTE_ESTOQUE = ' + QuotedStr('S');
      1: vComando := vComando + ' AND CLI.CLIENTE_ESTOQUE = ' + QuotedStr('N');
    end;
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if RxDBLookupCombo3.Text <> '' then
      vComando := vComando + ' AND ITE.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if RxDBLookupCombo5.Text <> '' then
      vComando := vComando + ' AND PED.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo5.KeyValue);
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    vOpcaoDtEntrega := '';
    if fDMConsPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
      vOpcaoDtEntrega := 'PED.DTENTREGA'
    else
      vOpcaoDtEntrega := 'ITE.DTENTREGA';
    if DateEdit3.Date > 10 then
      vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if trim(Edit1.Text) <> '' then
      vComando := vComando + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    if CurrencyEdit1.AsInteger > 0 then
      vComando := vComando + ' AND PED.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger);
    case RadioGroup2.ItemIndex of
      0: vComando := vComando + ' AND ITE.QTD_RESTANTE > 0 ';
      1: vComando := vComando + ' AND ITE.QTD_FATURADO > 0 ';
      2: vComando := vComando + ' AND ITE.QTD_CANCELADO > 0 ';
      4: vComando := vComando + ' AND ITE.QTD_FUT > 0 ';
    end;
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND ITE.DTFATURA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
    if DateEdit6.Date > 10 then
      vComando := vComando + ' AND ITE.DTFATURA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
    if DateEdit7.Date > 10 then
      vComando := vComando + ' AND ITE.DTEXPEDICAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit7.date));
    if DateEdit8.Date > 10 then
      vComando := vComando + ' AND ITE.DTEXPEDICAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit8.date));
    if trim(Edit2.Text) <> '' then
      vComando := vComando + ' AND ITE.NUMOS like ' + QuotedStr('%'+Edit2.Text+'%');
  end;
  fDMConsPedido.sdsPedido_Item.CommandText := fDMConsPedido.sdsPedido_Item.CommandText + vComando;
  fDMConsPedido.cdsPedido_Item.Open;
//  fDMConsPedido.cdsPedido_Item.IndexFieldNames := 'PEDIDO_CLIENTE;DTEMISSAO';
  prc_Somar_cdsPedido_item;
end;

procedure TfrmConsPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPedido.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  prc_Montar_RadioGroup2;
  RadioGroup2Click(Sender);
  ckMostrarPreco.Checked := ckMostrarPreco.Visible;
  fDMConsPedido.cdsFilial.First;
  if (fDMConsPedido.cdsFilial.RecordCount < 2) and (fDMConsPedido.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsPedido.cdsFilialID.AsInteger;
  Shape9.Visible  := (fDMConsPedido.qParametrosUSA_PEDIDO_FUT.AsString = 'S');
  Label45.Visible := (fDMConsPedido.qParametrosUSA_PEDIDO_FUT.AsString = 'S');
  TS_Combinacao.TabVisible := ((fDMConsPedido.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_GRUPO') then
      SMDBGrid2.Columns[i].Visible := (fDMConsPedido.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'NUM_TALAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMConsPedido.qParametrosEMPRESA_NAVALHA.AsString = 'S') or (fDMConsPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'I') or (fDMConsPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'P'));
    if (SMDBGrid2.Columns[i].FieldName = 'NUM_DOC') then
      SMDBGrid2.Columns[i].Visible := not(fDMConsPedido.qParametrosEMPRESA_AMBIENTES.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid2.Columns[i].Visible := (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'B')
    else
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_PRODUTO') then
      SMDBGrid2.Columns[i].Visible := (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString <> 'C') and (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString <> 'B')
    else
    if (SMDBGrid2.Columns[i].FieldName = 'TAM_CALC') then
      SMDBGrid2.Columns[i].Visible := (fDMConsPedido.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  end;

  for i := 1 to SMDBGrid4.ColCount - 2 do
  begin
    if (SMDBGrid4.Columns[i].FieldName = 'APROVADO_PED') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
    if (SMDBGrid4.Columns[i].FieldName = 'DTAPROVACAO') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
    if (SMDBGrid4.Columns[i].FieldName = 'QTD_FATURADO') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString <> 'S');
    if (SMDBGrid4.Columns[i].FieldName = 'QTD_RESTANTE') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString <> 'S');
    if (SMDBGrid4.Columns[i].FieldName = 'QTD_CANCELADO') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString <> 'S');
    if (SMDBGrid4.Columns[i].FieldName = 'VLR_FATURADO') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString <> 'S');
    if (SMDBGrid4.Columns[i].FieldName = 'VLR_RESTANTE') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString <> 'S');
    if (SMDBGrid4.Columns[i].FieldName = 'VLR_CANCELADO') then
      SMDBGrid4.Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString <> 'S');
  end;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'MONT_COMBINACAO') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametros_PedCONCATENA_PROD_COR_TAM.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametros_PedCONCATENA_PROD_COR_TAM.AsString <> 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'TAM_CALC') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  end;

  for i := 1 to SMDBGrid6.ColCount - 2 do
  begin
    if (SMDBGrid6.Columns[i].FieldName = 'TAM_CALC') then
      SMDBGrid6.Columns[i].Visible := (fDMConsPedido.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  end;

  TS_Combinacao.TabVisible := ((fDMConsPedido.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
  ckAprovado.Visible := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
  Shape10.Visible    := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
  Label50.Visible    := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
  //Label25.Visible    := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
  //Label26.Visible    := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
  label27.Visible   := ((fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S') and (label27.Enabled));
  Panel5.Visible    := ((fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S') or (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString = 'S'));
  Label30.Visible   := (fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S');
  DateEdit7.Visible := (fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S');
  Label31.Visible   := (fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S');
  DateEdit8.Visible := (fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S');
  if fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString = 'S' then
    ComboBox1.ItemIndex := 2;
  ckImpUnidade.Visible := (fDMConsPedido.qParametros_PedIMP_RESUMO_UNID.AsString = 'S');
  Panel7.Visible       := (fDMConsPedido.qParametros_PedIMP_RESUMO_UNID.AsString = 'S');
  if ckImpUnidade.Visible then
    ckImpUnidade.Checked := True
  else
    ckImpUnidade.Checked := False;

  Label32.Visible := fDMConsPedido.qParametros_PedUSA_OS_REMESSA.AsString = 'S';
  Edit2.Visible   := fDMConsPedido.qParametros_PedUSA_OS_REMESSA.AsString = 'S';
  if fDMConsPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
   Label32.Caption := 'Nº OC/OP';
end;

procedure TfrmConsPedido.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  vlbMesmoCampo: Boolean;
  vloIndices: TStrings;
  vliCont: Integer;

begin
    vlbMesmoCampo := False;
    vloIndices    := TStringList.Create;
    TClientDataSet(Column.Grid.DataSource.DataSet).GetIndexNames(vloIndices);
    TClientDataSet(Column.Grid.DataSource.DataSet).IndexName := EmptyStr;
    vliCont := vloIndices.IndexOf('idx' + Column.FieldName);
    if vliCont >= 0 then
    begin
      vlbMesmoCampo := not (ixDescending in TClientDataSet(Column.Grid.DataSource.DataSet).IndexDefs[vliCont].Options);
      TClientDataSet(Column.Grid.DataSource.DataSet).DeleteIndex('idx' + Column.FieldName);
    end;
    if Column.FieldName <> 'Descricao' then
    begin
      TClientDataSet(Column.Grid.DataSource.DataSet).AddIndex('idx' + Column.FieldName, Column.FieldName, [], IfThen(vlbMesmoCampo, Column.FieldName));
      TClientDataSet(Column.Grid.DataSource.DataSet).IndexName := 'idx' + Column.FieldName;
    end;
end;

procedure TfrmConsPedido.RadioGroup2Click(Sender: TObject);
var
  i: Integer;
  vGrid: array[1..4] of String;
  i2: Integer;
begin
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'VLR_TOTAL') OR (SMDBGrid1.Columns[i].FieldName = 'VLR_UNITARIO') OR
       (SMDBGrid1.Columns[i].FieldName = 'VLR_RESTANTE') OR (SMDBGrid1.Columns[i].FieldName = 'VLR_FATURADO') OR
       (SMDBGrid1.Columns[i].FieldName = 'VLR_CANCELADO') OR (SMDBGrid1.Columns[i].FieldName = 'VLR_DESCONTO') then
    begin
      SMDBGrid1.Columns[i].Visible := ckMostrarPreco.Checked;
    end;
    if (SMDBGrid1.Columns[i].FieldName = 'NUM_DOC') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametrosEMPRESA_NAVALHA.AsString = 'S'); 
    if (SMDBGrid1.Columns[i].FieldName = 'NUM_TALAO') then
      SMDBGrid1.Columns[i].Visible := ((fDMConsPedido.qParametrosEMPRESA_NAVALHA.AsString = 'S')or (fDMConsPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'I') or (fDMConsPedido.qParametros_PedUSA_NUM_TALAO.AsString = 'P'));
    if (SMDBGrid1.Columns[i].FieldName = 'QTD_PECA') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametrosEMPRESA_SUCATA.AsString = 'S');

    if (SMDBGrid1.Columns[i].FieldName = 'Descricao') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametros_PedCONCATENA_PROD_COR_TAM.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid1.Columns[i].Visible := ((fDMConsPedido.qParametros_PedCONCATENA_PROD_COR_TAM.AsString <> 'S') and ((fDMConsPedido.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'B')));
    if (SMDBGrid1.Columns[i].FieldName = 'APROVADO_PED') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'DTFATURA') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'DTEXPEDICAO') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'DTAPROVADO') then
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'NUMOS' then
    begin
      SMDBGrid1.Columns[i].Visible := (fDMConsPedido.qParametros_PedUSA_OS_REMESSA.AsString = 'S');
      if (fDMConsPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
        SMDBGrid1.Columns[i].Title.Caption := 'Nº OC/OP';
    end;
  end;
  TS_Combinacao.TabVisible := ((fDMConsPedido.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString = 'B'));

  vGrid[1] := 'SMDBGrid2';
  vGrid[2] := 'SMDBGrid3';
  vGrid[3] := 'SMDBGrid4';
  vGrid[4] := 'SMDBGrid5';
  for i2 := 1 to 4 do
  begin
    for i := 1 to TSMDBGrid(FindComponent(vGrid[i2])).ColCount - 2 do
    begin
      if copy(TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].FieldName,1,4) = 'VLR_' then
        TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].Visible := ckMostrarPreco.Checked;
      if (TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].FieldName = 'QTD_PECA') then
        TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].Visible := (fDMConsPedido.qParametrosEMPRESA_SUCATA.AsString = 'S');
      if (TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].FieldName = 'APROVADO_PED') then
        TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].Visible := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
      if (TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].FieldName = 'DTFATURA') then
        TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].Visible := (fDMConsPedido.qParametros_PedFATURAR_PED_INTEGRAL.AsString = 'S');
      if (TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].FieldName = 'DTEXPEDICAO') then
        TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].Visible := (fDMConsPedido.qParametros_PedUSA_DTEXPEDICAO.AsString = 'S');
      if (TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].FieldName = 'DTAPROVACAO') then
        TSMDBGrid(FindComponent(vGrid[i2])).Columns[i].Visible := (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S');
    end;
  end;
  pnlTotal.Visible := ckMostrarPreco.Checked;
end;

procedure TfrmConsPedido.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsPedido.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMConsPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsPedido.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmConsPedido.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMConsPedido.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmConsPedido.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMConsPedido.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfrmConsPedido.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmConsPedido.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmConsPedido.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FUT.AsFloat)) > 0 then
    Background  := clSilver
  else
  if (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S') and (fDMConsPedido.cdsPedido_ItemAPROVADO_PED.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsPedido.prc_Consultar_Pedido;
var
  vOpcaoDtEntrega: String;
  vComandoAux: String;
  i: Integer;
begin
  fDMConsPedido.cdsPedido.Close;
  i := PosEx('GROUP',UpperCase(fDMConsPedido.ctPedido),0);
  vComandoAux := copy(fDMConsPedido.ctPedido,i,Length(fDMConsPedido.ctPedido) - i + 1);
  vComando    := copy(fDMConsPedido.ctPedido,1,i-1);

  vComando := vComando + ' WHERE V.TIPO_REG = ' + QuotedStr('P');
  if (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S') and not(ckAprovado.Checked) then
    vComando := vComando + ' AND V.APROVADO_PED = ' + QuotedStr('A');

  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND V.NUM_PEDIDO IN (' + vOrdProducao + ')'
  else
  begin
    case ComboBox2.ItemIndex of
      0: vComando := vComando + ' AND V.CLIENTE_ESTOQUE = ' + QuotedStr('S');
      1: vComando := vComando + ' AND V.CLIENTE_ESTOQUE = ' + QuotedStr('N');
    end;
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND V.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if RxDBLookupCombo3.Text <> '' then
      vComando := vComando + ' AND V.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if RxDBLookupCombo5.Text <> '' then
      vComando := vComando + ' AND V.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo5.KeyValue);
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND V.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND V.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    vOpcaoDtEntrega := '';
    if fDMConsPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
      vOpcaoDtEntrega := 'V.DTENTREGA_PED'
    else
      vOpcaoDtEntrega := 'V.DTENTREGA_ITEM';
    if DateEdit3.Date > 10 then
      vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if trim(Edit1.Text) <> '' then
      vComando := vComando + ' AND V.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    if CurrencyEdit1.AsInteger > 0 then
      vComando := vComando + ' AND V.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger);

    case RadioGroup2.ItemIndex of
      0: vComando := vComando + ' AND V.QTD_RESTANTE > 0 ';
      1: vComando := vComando + ' AND V.QTD_FATURADO > 0 ';
      2: vComando := vComando + ' AND V.QTD_CANCELADO > 0 ';
      4: vComando := vComando + ' AND V.QTD_FUT > 0 ';
    end;
  end;
  fDMConsPedido.sdsPedido.CommandText := vComando + '  ' + vComandoAux;
  fDMConsPedido.cdsPedido.Open;
  fDMConsPedido.cdsPedido.IndexFieldNames := 'DTENTREGA_ITEM;PEDIDO_CLIENTE';
  prc_Somar_cdsPedido;
end;

procedure TfrmConsPedido.BitBtn3Click(Sender: TObject);
begin
  if not(fDMConsPedido.cdsPedido_Item.Active) or (fDMConsPedido.cdsPedido_Item.IsEmpty) then
    exit;

  {fDMConsPedido.cdsPedido_Nota.Close;
  fDMConsPedido.sdsPedido_Nota.ParamByName('ID').AsInteger   := fDMConsPedido.cdsPedido_ItemID.AsInteger;
  fDMConsPedido.sdsPedido_Nota.ParamByName('ITEM').AsInteger := fDMConsPedido.cdsPedido_ItemITEM.AsInteger;
  fDMConsPedido.cdsPedido_Nota.Open;

  if fDMConsPedido.qParametrosUSA_PEDIDO_FUT.AsString = 'S' then
  begin
    fDMConsPedido.cdsPedido_Fut.Close;
    fDMConsPedido.sdsPedido_Fut.ParamByName('ID').AsInteger   := fDMConsPedido.cdsPedido_ItemID.AsInteger;
    fDMConsPedido.sdsPedido_Fut.ParamByName('ITEM').AsInteger := fDMConsPedido.cdsPedido_ItemITEM.AsInteger;
    fDMConsPedido.cdsPedido_Fut.Open;
  end;

  fDMConsPedido.cdsBaixa_Pedido.Close;
  fDMConsPedido.sdsBaixa_Pedido.ParamByName('ID').AsInteger   := fDMConsPedido.cdsPedido_ItemID.AsInteger;
  fDMConsPedido.sdsBaixa_Pedido.ParamByName('ITEM').AsInteger := fDMConsPedido.cdsPedido_ItemITEM.AsInteger;
  fDMConsPedido.cdsBaixa_Pedido.Open;

  if fDMConsPedido.qParametrosUSA_VALE.AsString = 'S' then
  begin
    fDMConsPedido.cdsPedido_Vale.Close;
    fDMConsPedido.sdsPedido_Vale.ParamByName('ID').AsInteger   := fDMConsPedido.cdsPedido_ItemID.AsInteger;
    fDMConsPedido.sdsPedido_Vale.ParamByName('ITEM').AsInteger := fDMConsPedido.cdsPedido_ItemITEM.AsInteger;
    fDMConsPedido.cdsPedido_Vale.Open;
  end;

  ffrmConsPedido_Nota := TfrmConsPedido_Nota.Create(self);
  ffrmConsPedido_Nota.vTipo_RegAux  := 'P';
  ffrmConsPedido_Nota.fDMConsPedido := fDMConsPedido;
  ffrmConsPedido_Nota.ShowModal;
  FreeAndNil(ffrmConsPedido_Nota);

  fDMConsPedido.cdsPedido_Nota.Close;
  fDMConsPedido.cdsBaixa_Pedido.Close;}

  ffrmConsPedido_Nota := TfrmConsPedido_Nota.Create(self);
  ffrmConsPedido_Nota.vTipo_RegAux      := 'P';
  ffrmConsPedido_Nota.vID_Pedido_Cons   := fDMConsPedido.cdsPedido_ItemID.AsInteger;
  ffrmConsPedido_Nota.vItem_Pedido_Cons := fDMConsPedido.cdsPedido_ItemITEM.AsInteger;
  ffrmConsPedido_Nota.fDMConsPedido := fDMConsPedido;
  ffrmConsPedido_Nota.ShowModal;
  FreeAndNil(ffrmConsPedido_Nota);
end;

procedure TfrmConsPedido.SMDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedidoQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedidoQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedidoQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedidoQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedidoQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedidoQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S') and (fDMConsPedido.cdsPedidoAPROVADO_PED.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsPedido.SMDBGrid4TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsPedido.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid4.Columns.Count - 1 do
    if not (SMDBGrid4.Columns.Items[I] = Column) then
      SMDBGrid4.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsPedido.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo4.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo4.KeyValue;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'P';
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo4.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo4.SetFocus;
  end;
end;

procedure TfrmConsPedido.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo3.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo3.KeyValue;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'P';
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo3.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmConsPedido.prc_Consultar_Ref;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
  i: Integer;
begin
  fDMConsPedido.cdsPedido_Ref.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_Ref);

  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_Ref.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_Ref.IndexFieldNames := 'REFERENCIA;NOME_COR_COMBINACAO;NOME_PRODUTO';
  fDMConsPedido.cdsPedido_Ref.Open;
end;

procedure TfrmConsPedido.prc_Consultar_Ref_Acum;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
begin
  fDMConsPedido.cdsPedido_Ref_Acum.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_Ref_Acum);
  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_Ref_Acum.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_Ref_Acum.IndexFieldNames := 'REFERENCIA;NOME_PRODUTO';
  fDMConsPedido.cdsPedido_Ref_Acum.Open;
end;

procedure TfrmConsPedido.prc_Monta_Condicao;
var
  vOpcaoDtEntrega: String;
begin
  vComando := vComando + ' WHERE V.TIPO_REG = ' + QuotedStr('P');
  if fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S' then
    vComando := vComando + ' AND V.APROVADO_PED = ' + QuotedStr('A');

  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND V.NUM_PEDIDO IN (' + vOrdProducao + ')'
  else
  begin
    case ComboBox2.ItemIndex of
      0: vComando := vComando + ' AND V.CLIENTE_ESTOQUE = ' + QuotedStr('S');
      1: vComando := vComando + ' AND V.CLIENTE_ESTOQUE = ' + QuotedStr('N');
    end;
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND V.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if RxDBLookupCombo3.Text <> '' then
      vComando := vComando + ' AND V.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if RxDBLookupCombo5.Text <> '' then
      vComando := vComando + ' AND V.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo5.KeyValue);
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND V.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND V.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    vOpcaoDtEntrega := '';
    if fDMConsPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
      vOpcaoDtEntrega := 'V.DTENTREGA_PED'
    else
      vOpcaoDtEntrega := 'V.DTENTREGA_ITEM';
    if DateEdit3.Date > 10 then
      vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

    if trim(Edit1.Text) <> '' then
      vComando := vComando + ' AND V.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    if CurrencyEdit1.AsInteger > 0 then
      vComando := vComando + ' AND V.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger);

    case RadioGroup2.ItemIndex of
      0: vComando := vComando + ' AND V.QTD_RESTANTE > 0 ';
      1: vComando := vComando + ' AND V.QTD_FATURADO > 0 ';
      2: vComando := vComando + ' AND V.QTD_CANCELADO > 0 ';
      4: vComando := vComando + ' AND V.QTD_FUT > 0 ';
    end;
  end;
end;

procedure TfrmConsPedido.prc_GroupBy(ctTexto: String);
var
  i: Integer;
begin
  i := PosEx('GROUP',UpperCase(ctTexto),0);
  vComando_GroupBy := copy(ctTexto,i,Length(ctTexto) - i + 1);
  vComando         := copy(ctTexto,1,i-1);
end;

procedure TfrmConsPedido.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsPedido_Ref.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsPedido.SMDBGrid3TitleClick(Column: TColumn);
var
  i: Integer;
  vlbMesmoCampo: Boolean;
  vloIndices: TStrings;
  vliCont: Integer;
begin
  vlbMesmoCampo := False;
  vloIndices    := TStringList.Create;

  TClientDataSet(Column.Grid.DataSource.DataSet).GetIndexNames(vloIndices);
  TClientDataSet(Column.Grid.DataSource.DataSet).IndexName := EmptyStr;
  vliCont := vloIndices.IndexOf('idx' + Column.FieldName);
  if vliCont >= 0 then
  begin
    vlbMesmoCampo := not (ixDescending in TClientDataSet(Column.Grid.DataSource.DataSet).IndexDefs[vliCont].Options);
    TClientDataSet(Column.Grid.DataSource.DataSet).DeleteIndex('idx' + Column.FieldName);
  end;
  TClientDataSet(Column.Grid.DataSource.DataSet).AddIndex('idx' + Column.FieldName, Column.FieldName, [], IfThen(vlbMesmoCampo, Column.FieldName));
  TClientDataSet(Column.Grid.DataSource.DataSet).IndexName := 'idx' + Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid6.Columns.Count - 1 do
    if not (SMDBGrid6.Columns.Items[I] = Column) then
      SMDBGrid6.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsPedido.btnConsultarClick(Sender: TObject);
begin
  vOrdProducao := '';
  if CurrencyEdit2.AsInteger > 0 then
    prc_Consultar_Ord_Prod;

  if RzPageControl1.ActivePage = TS_Item then
    prc_Consultar
  else
  if RzPageControl1.ActivePage = TS_Pedido then
    prc_Consultar_Pedido
  else
  if RzPageControl1.ActivePage = TS_Ref then
    prc_Consultar_Ref
  else
  if RzPageControl1.ActivePage = TS_Ref_Acum then
    prc_Consultar_Ref_Acum
  else
  if RzPageControl1.ActivePage = TS_Cliente then
    prc_Consultar_Cli
  else
  if RzPageControl1.ActivePage = TS_Combinacao then
    prc_Consultar_Comb
  else
  if RzPageControl1.ActivePage = TS_Ref2 then
    prc_Consultar_Ref2
  else
  if RzPageControl1.ActivePage = TS_RefComb then
  begin
    if RzPageControl2.ActivePage = TS_RefComb_Acum then
      prc_Consultar_RefComb
    else
    if RzPageControl2.ActivePage = TS_RefComb_DtEntrega then
      prc_Consultar_RefComb_DtEntrega
    else
      prc_Consultar_RefComb_DtECliente;
  end;
end;

procedure TfrmConsPedido.btnImprimirClick(Sender: TObject);
var
  vOpcaoAux: String;
  vArq: String;
begin
  vTipo_Config_Email := 3;
  case cbImpCliente.ItemIndex of
    0: vImpCliente_RF := 'F';
    1: vImpCliente_RF := 'R';
  end;
  vOpcaoAux := '';
  if RxDBLookupCombo2.Text <> '' then
    vOpcaoAux := vOpcaoAux + '(Cliente: ' + RxDBLookupCombo2.Text + ')';
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
    vOpcaoAux := vOpcaoAux + '(Dt.Entrega Fin: ' + DateEdit4.Text + ')'
  else
  if (DateEdit5.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Fat.Ini: ' + DateEdit5.Text + ')'
  else
  if (DateEdit6.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Fat.Fin: ' + DateEdit4.Text + ')'
  else
  if (DateEdit7.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Exp.Ini: ' + DateEdit7.Text + ')'
  else
  if (DateEdit8.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Exp.Fin: ' + DateEdit8.Text + ')';
  if RxDBLookupCombo5.Text <> '' then
    vOpcaoAux := vOpcaoAux + '(Vendedor: ' + RxDBLookupCombo5.Text + ')';
  case ComboBox2.ItemIndex of
    0: vOpcaoAux := vOpcaoAux + '(Somente Ped. Estoque)';
  end;
  case RadioGroup2.ItemIndex of
    0: vOpcaoAux := vOpcaoAux + '(Pendente)';
    1: vOpcaoAux := vOpcaoAux + '(Faturado)';
    2: vOpcaoAux := vOpcaoAux + '(Cancelado)';
    4: vOpcaoAux := vOpcaoAux + '(Enviado Não Cobr.)';
  end;
  fDMConsPedido.frxReport1.Variables['DataInicial'] := QuotedStr(DateToStr(DateEdit1.Date));
  if RzPageControl1.ActivePage = TS_Item then
  begin
    SMDBGrid1.DisableScroll;
    fDMConsPedido.mNotas_Ped.EmptyDataSet;
    fDMConsPedido.cdsPedido_Item.First;
    if ckImpNotas.Checked then
      prc_Monta_mNotas_Ped;
    if ComboBox3.ItemIndex = 1 then
    begin
      fRelPedido_Det := TfRelPedido_Det.Create(Self);
      fRelPedido_Det.fDMConsPedido := fDMConsPedido;
      fRelPedido_Det.vImp_Vlr      := ckMostrarPreco.Checked;
      fRelPedido_Det.vOpcaoImp     := vOpcaoAux;
      fRelPedido_Det.RLReport1.PreviewModal;
      fRelPedido_Det.RLReport1.Free;
      FreeAndNil(fRelPedido_Det);
    end
    else
    begin
      //if ckImpNotas.Checked then
      //  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Item_Nota.fr3'
      //else
        vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Item.fr3';
      if FileExists(vArq) then
        fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
      else
      begin
        ShowMessage('Relatorio não localizado! ' + vArq);
        Exit;
      end;
      fDMConsPedido.frxReport1.variables['Opcao_Imp'] := QuotedStr(vOpcaoAux);
      fDMConsPedido.frxReport1.variables['Informar_Cor_Prod'] := QuotedStr(fDMConsPedido.qParametrosINFORMAR_COR_PROD.AsString);
      fDMConsPedido.frxReport1.ShowReport;
    end;
    SMDBGrid1.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TS_Pedido then
  begin
    SMDBGrid4.DisableScroll;
    if chkImprimirPedidoItem.Checked then
    begin
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Item_Consolidado.fr3';
      if FileExists(vArq) then
        fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
      else
      begin
        ShowMessage('Relatorio não localizado! ' + vArq);
        Exit;
      end;
      fDMConsPedido.vDataIni := FormatDateTime('DD/MM/YYYY',DateEdit1.Date);
      fDMConsPedido.vDataFim := FormatDateTime('DD/MM/YYYY',DateEdit2.Date);
      fDMConsPedido.frxReport1.ShowReport;
    end
    else
    begin
      if ComboBox1.ItemIndex = 0 then
      begin
        fRelPedido_Res2 := TfRelPedido_Res2.Create(Self);
        fRelPedido_Res2.fDMConsPedido := fDMConsPedido;
        fRelPedido_Res2.vImp_Vlr      := ckMostrarPreco.Checked;
        fRelPedido_Res2.vOpcaoImp     := vOpcaoAux;
        fRelPedido_Res2.RLReport1.PreviewModal;
        fRelPedido_Res2.RLReport1.Free;
        FreeAndNil(fRelPedido_Res2);
      end
      else
      if ComboBox1.ItemIndex = 1 then
      begin
        fRelPedido_Res := TfRelPedido_Res.Create(Self);
        fRelPedido_Res.fDMConsPedido := fDMConsPedido;
        fRelPedido_Res.vImp_Vlr      := ckMostrarPreco.Checked;
        fRelPedido_Res.vOpcaoImp     := vOpcaoAux;
        fRelPedido_Res.RLReport1.PreviewModal;
        fRelPedido_Res.RLReport1.Free;
        FreeAndNil(fRelPedido_Res);
      end
      else
        prc_Imprimir_Personalizado(vOpcaoAux);
      SMDBGrid4.EnableScroll;
    end;
  end
  else
  if RzPageControl1.ActivePage = TS_Ref then
  begin
    SMDBGrid2.DisableScroll;
    fRelPedido_Ref := TfRelPedido_Ref.Create(Self);
    fRelPedido_Ref.fDMConsPedido := fDMConsPedido;
    fRelPedido_Ref.vImp_Vlr      := ckMostrarPreco.Checked;
    fRelPedido_Ref.vOpcaoImp     := vOpcaoAux;
    fRelPedido_Ref.RLReport1.PreviewModal;
    fRelPedido_Ref.RLReport1.Free;
    FreeAndNil(fRelPedido_Ref);
    SMDBGrid2.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TS_Ref_Acum then
  begin
    SMDBGrid3.DisableScroll;
    fRelPedido_Ref_Acum := TfRelPedido_Ref_Acum.Create(Self);
    fRelPedido_Ref_Acum.fDMConsPedido := fDMConsPedido;
    fRelPedido_Ref_Acum.vImp_Vlr      := ckMostrarPreco.Checked;
    fRelPedido_Ref_Acum.vOpcaoImp     := vOpcaoAux;
    fRelPedido_Ref_Acum.RLReport1.PreviewModal;
    fRelPedido_Ref_Acum.RLReport1.Free;
    FreeAndNil(fRelPedido_Ref_Acum);
    SMDBGrid3.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TS_Cliente then
  begin
    SMDBGrid5.DisableScroll;
    fRelPedido_Cli := TfRelPedido_Cli.Create(Self);
    fRelPedido_Cli.fDMConsPedido := fDMConsPedido;
    fRelPedido_Cli.vImp_Vlr      := ckMostrarPreco.Checked;
    fRelPedido_Cli.vOpcaoImp     := vOpcaoAux;
    fRelPedido_Cli.RLReport1.PreviewModal;
    fRelPedido_Cli.RLReport1.Free;
    FreeAndNil(fRelPedido_Cli);
    SMDBGrid5.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TS_Combinacao then
  begin
    SMDBGrid5.DisableScroll;
    fRelPedido_Ref_Comb := TfRelPedido_Ref_Comb.Create(Self);
    fRelPedido_Ref_Comb.fDMConsPedido := fDMConsPedido;
    fRelPedido_Ref_Comb.vImp_Vlr      := ckMostrarPreco.Checked;
    fRelPedido_Ref_Comb.vOpcaoImp     := vOpcaoAux;
    fRelPedido_Ref_Comb.RLReport1.PreviewModal;
    fRelPedido_Ref_Comb.RLReport1.Free;
    FreeAndNil(fRelPedido_Ref_Comb);
    SMDBGrid5.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TS_Ref2 then
  begin
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Ref.fr3';
    if FileExists(vArq) then                                            
      fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vArq);
      Exit;
    end;
    fDMConsPedido.frxReport1.variables['Opcao_Imp'] := QuotedStr(vOpcaoAux);
    if ckImpUnidade.Checked then
      fDMConsPedido.frxReport1.variables['Imp_Unidade'] := QuotedStr('S')
    else
      fDMConsPedido.frxReport1.variables['Imp_Unidade'] := QuotedStr('N');
    fDMConsPedido.frxReport1.ShowReport;
  end
  else
  if RzPageControl1.ActivePage = TS_RefComb then
  begin
    if RzPageControl2.ActivePage = TS_RefComb_Acum then
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_RefComb.fr3'
    else
    if RzPageControl2.ActivePage = TS_RefComb_DtEntrega then
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_RefComb_DtEnt.fr3'
    else
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_RefComb_DtECli.fr3';
    if FileExists(vArq) then
      fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vArq);
      Exit;
    end;
    fDMConsPedido.frxReport1.variables['Opcao_Imp'] := QuotedStr(vOpcaoAux);
    fDMConsPedido.frxReport1.ShowReport;
  end;

end;

procedure TfrmConsPedido.SMDBGrid5TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsPedido_Cli.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid5.Columns.Count - 1 do
    if not (SMDBGrid5.Columns.Items[I] = Column) then
      SMDBGrid5.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsPedido.prc_Consultar_Cli;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
begin
  fDMConsPedido.cdsPedido_Cli.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_Cli);
  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_Cli.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_Cli.IndexFieldNames := 'FANTASIA;NOME_CLIENTE';
  fDMConsPedido.cdsPedido_Cli.Open;
end;

procedure TfrmConsPedido.prc_Montar_RadioGroup2;
begin
  if fDMConsPedido.qParametrosUSA_PEDIDO_FUT.AsString <> 'S' then
    RadioGroup2.Items.Delete(4);
end;

procedure TfrmConsPedido.prc_Consultar_Comb;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
begin
  fDMConsPedido.cdsPedido_Comb.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_Comb);
  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_Comb.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_Comb.IndexFieldNames := 'REFERENCIA;NOME_COR_COMBINACAO';
  fDMConsPedido.cdsPedido_Comb.Open;
end;

procedure TfrmConsPedido.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsPedido.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref_AcumQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref_AcumQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref_AcumQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref_AcumQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref_AcumQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref_AcumQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsPedido.SMDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CliQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CliQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CliQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CliQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CliQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CliQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsPedido.SMDBGrid6GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CombQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CombQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CombQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CombQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CombQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_CombQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsPedido.prc_Consultar_Ord_Prod;
var
  sds: TSQLDataSet;
begin
  vOrdProducao := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT DISTINCT P.NUM_PEDIDO FROM TALAO_PED T '
                       + ' INNER JOIN LOTE L ON T.ID = L.ID '
                       + ' INNER JOIN PEDIDO P ON T.ID_PEDIDO = P.ID '
                       + ' WHERE L.num_ordem = :NUM_ORDEM ';
    sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit2.AsInteger;
    sds.Open;
    sds.First;
    while not sds.Eof do
    begin
      if trim(vOrdProducao) <> '' then
        vOrdProducao := vOrdProducao + ',';
      vOrdProducao := vOrdProducao + sds.FieldByName('NUM_PEDIDO').AsString;
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmConsPedido.RzPageControl1Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  if fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S' then
  begin
    ckAprovado.Visible := ((RzPageControl1.ActivePage = TS_Item) or (RzPageControl1.ActivePage = TS_Pedido));
    Shape10.Visible    := ((RzPageControl1.ActivePage = TS_Item) or (RzPageControl1.ActivePage = TS_Pedido));
    Label50.Visible    := ((RzPageControl1.ActivePage = TS_Item) or (RzPageControl1.ActivePage = TS_Pedido));
    ckAprovadoClick(Sender);
    if not ckAprovado.Visible then
    begin
      Label25.Visible := False;
      Label26.Visible := False;
    end;
  end;
end;

procedure TfrmConsPedido.prc_Somar_cdsPedido_item;
var
  vVlrTotal, vVlrRestante, vVlrFaturado, vVlrPendAprovacao: Real;
begin
  fDMConsPedido.mUnidade.EmptyDataSet;
  vVlrTotal         := 0;
  vVlrRestante      := 0;
  vVlrFaturado      := 0;
  vVlrPendAprovacao := 0;
  SMDBGrid1.DisableScroll;
  fDMConsPedido.cdsPedido_Item.First;
  while not fDMConsPedido.cdsPedido_Item.Eof do
  begin
    prc_Gravar_Unidade(fDMConsPedido.cdsPedido_ItemUNIDADE.AsString,fDMConsPedido.cdsPedido_ItemQTD.AsFloat,fDMConsPedido.cdsPedido_ItemQTD_RESTANTE.AsFloat,fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat);
    vVlrTotal         := StrToFloat(FormatFloat('0.00',vVlrTotal + fDMConsPedido.cdsPedido_ItemVLR_TOTAL.AsFloat));
    vVlrRestante      := StrToFloat(FormatFloat('0.00',vVlrRestante + fDMConsPedido.cdsPedido_ItemVLR_RESTANTE.AsFloat));
    vVlrFaturado      := StrToFloat(FormatFloat('0.00',vVlrFaturado + fDMConsPedido.cdsPedido_ItemVLR_FATURADO.AsFloat));
    if (fDMConsPedido.cdsPedido_ItemAPROVADO_PED.AsString = 'P') then
      vVlrPendAprovacao := StrToFloat(FormatFloat('0.00',vVlrPendAprovacao + fDMConsPedido.cdsPedido_ItemVLR_TOTAL.AsFloat));
    fDMConsPedido.cdsPedido_Item.Next;
  end;
  SMDBGrid1.EnableScroll;
  Label20.Caption := FormatFloat('###,###,##0.00',vVlrTotal);
  Label21.Caption := FormatFloat('###,###,##0.00',vVlrRestante);
  Label24.Caption := FormatFloat('###,###,##0.00',vVlrFaturado);
  Label26.Caption := FormatFloat('###,###,##0.00',vVlrPendAprovacao);
end;

procedure TfrmConsPedido.btnRecalcularClick(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Item then
    prc_Somar_cdsPedido_item
  else
    prc_Somar_cdsPedido;
end;

procedure TfrmConsPedido.prc_Somar_cdsPedido;
var
  vVlrTotal, vVlrRestante, vVlrFaturado, vVlrPendAprovacao: Real;
begin
  vVlrTotal         := 0;
  vVlrRestante      := 0;
  vVlrFaturado      := 0;
  vVlrPendAprovacao := 0;
  SMDBGrid4.DisableScroll;
  fDMConsPedido.cdsPedido.First;
  while not fDMConsPedido.cdsPedido.Eof do
  begin
    vVlrTotal         := StrToFloat(FormatFloat('0.00',vVlrTotal + fDMConsPedido.cdsPedidoVLR_TOTAL.AsFloat));
    vVlrRestante      := StrToFloat(FormatFloat('0.00',vVlrRestante + fDMConsPedido.cdsPedidoVLR_RESTANTE.AsFloat));
    vVlrFaturado      := StrToFloat(FormatFloat('0.00',vVlrFaturado + fDMConsPedido.cdsPedidoVLR_FATURADO.AsFloat));
    if (fDMConsPedido.cdsPedidoAPROVADO_PED.AsString = 'P') then
      vVlrPendAprovacao := StrToFloat(FormatFloat('0.00',vVlrPendAprovacao + fDMConsPedido.cdsPedidoVLR_TOTAL.AsFloat));
    fDMConsPedido.cdsPedido.Next;
  end;
  SMDBGrid4.EnableScroll;
  Label20.Caption := FormatFloat('###,###,##0.00',vVlrTotal);
  Label21.Caption := FormatFloat('###,###,##0.00',vVlrRestante);
  Label24.Caption := FormatFloat('###,###,##0.00',vVlrFaturado);
  Label26.Caption := FormatFloat('###,###,##0.00',vVlrPendAprovacao);
end;

procedure TfrmConsPedido.ckAprovadoClick(Sender: TObject);
begin
  Label25.Visible := (ckAprovado.Checked);
  Label26.Visible := (ckAprovado.Checked);
end;

procedure TfrmConsPedido.SMDBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmInformar_DtExpedicao: TfrmInformar_DtExpedicao;
begin
  if (Key = Vk_F4) and (Label27.Visible) then
  begin
    ffrmInformar_DtExpedicao := TfrmInformar_DtExpedicao.Create(self);
    ffrmInformar_DtExpedicao.Tag := 1;
    if not(fDMConsPedido.cdsPedido.IsEmpty) then
      ffrmInformar_DtExpedicao.CurrencyEdit1.AsInteger := fDMConsPedido.cdsPedidoNUM_PEDIDO.AsInteger;
    ffrmInformar_DtExpedicao.ShowModal;
    FreeAndNil(ffrmInformar_DtExpedicao);
  end;
end;

procedure TfrmConsPedido.prc_Imprimir_Personalizado(Opcao: String);
var
  vArq: String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Cons_Pedido.fr3';
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsPedido.frxReport1.variables['Opcao_Imp'] := QuotedStr(Opcao);
  fDMConsPedido.frxReport1.ShowReport;
end;

procedure TfrmConsPedido.prc_Consultar_Ref2;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
  i: Integer;
begin
  fDMConsPedido.cdsPedido_Ref2.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_Ref2);

  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_Ref2.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_Ref2.IndexFieldNames := 'PEDIDO_CLIENTE;REFERENCIA';
  fDMConsPedido.cdsPedido_Ref2.Open;

  SMDBGrid7.DisableScroll;
  fDMConsPedido.mUnidade.EmptyDataSet;
  if ckImpUnidade.Checked then
  begin
    fDMConsPedido.cdsPedido_Ref2.First;
    while not fDMConsPedido.cdsPedido_Ref2.Eof do
    begin
      prc_Gravar_Unidade(fDMConsPedido.cdsPedido_Ref2UNIDADE.AsString,fDMConsPedido.cdsPedido_Ref2QTD.AsFloat,fDMConsPedido.cdsPedido_Ref2QTD_RESTANTE.AsFloat,fDMConsPedido.cdsPedido_Ref2QTD_FATURADO.AsFloat);
      fDMConsPedido.cdsPedido_Ref2.Next;
    end;
  end;
  SMDBGrid7.EnableScroll;
end;

procedure TfrmConsPedido.SMDBGrid7TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsPedido_Ref2.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid7.Columns.Count - 1 do
    if not (SMDBGrid7.Columns.Items[I] = Column) then
      SMDBGrid7.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsPedido.SMDBGrid7GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref2QTD_RESTANTE.AsFloat)) <= 0)
    and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref2QTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref2QTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref2QTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref2QTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_Ref2QTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsPedido.prc_Gravar_Unidade(Unidade: String; Qtd, Qtd_Rest,
  Qtd_Fat: Real);
begin
  if not (fDMConsPedido.qParametros_PedIMP_RESUMO_UNID.AsString = 'S') then
    exit;
  if fDMConsPedido.mUnidade.Locate('Unidade',Unidade,[loCaseInsensitive]) then
    fDMConsPedido.mUnidade.Edit
  else
  begin
    fDMConsPedido.mUnidade.Insert;
    fDMConsPedido.mUnidadeUnidade.AsString := Unidade;
  end;
  fDMConsPedido.mUnidadeQtd.AsFloat      := fDMConsPedido.mUnidadeQtd.AsFloat + Qtd;
  fDMConsPedido.mUnidadeQtd_Fat.AsFloat  := fDMConsPedido.mUnidadeQtd_Fat.AsFloat + Qtd_Fat;
  fDMConsPedido.mUnidadeQtd_Rest.AsFloat := fDMConsPedido.mUnidadeQtd_Rest.AsFloat + Qtd_Rest;
  fDMConsPedido.mUnidade.Post;
end;

procedure TfrmConsPedido.prc_Monta_mNotas_Ped;
begin
  fDMConsPedido.mNotas_Ped.MasterSource := nil;
  fDMConsPedido.mNotas_Ped.MasterFields := '';

  ProgressBar1.Visible  := True;
  ProgressBar1.Max      := fDMConsPedido.cdsPedido_Item.RecordCount;
  ProgressBar1.Position := 0;

  fDMConsPedido.mNotas_Ped.EmptyDataSet;
  fDMConsPedido.cdsPedido_Item.First;
  while not fDMConsPedido.cdsPedido_Item.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    if StrToFloat(FormatFloat('0.000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0 then
    begin
      fDMConsPedido.prc_Consultar_Pedido_Nota(fDMConsPedido.cdsPedido_ItemID.AsInteger,fDMConsPedido.cdsPedido_ItemITEM.AsInteger);
      fDMConsPedido.cdsPedido_Nota.First;
      while not fDMConsPedido.cdsPedido_Nota.Eof do
      begin
        fDMConsPedido.mNotas_Ped.Insert;
        fDMConsPedido.mNotas_PedID_Pedido.AsInteger   := fDMConsPedido.cdsPedido_ItemID.AsInteger;
        fDMConsPedido.mNotas_PedItem_Pedido.AsInteger := fDMConsPedido.cdsPedido_ItemITEM.AsInteger;
        fDMConsPedido.mNotas_PedNum_Nota.AsInteger    := fDMConsPedido.cdsPedido_NotaNUMNOTA.AsInteger;
        fDMConsPedido.mNotas_PedItem_Nota.AsInteger   := fDMConsPedido.cdsPedido_NotaITEM_NOTA.AsInteger;
        fDMConsPedido.mNotas_PedDtEmissao.AsDateTime  := fDMConsPedido.cdsPedido_NotaDTEMISSAO.AsDateTime;
        fDMConsPedido.mNotas_PedQtd.AsFloat           := fDMConsPedido.cdsPedido_NotaQTD.AsFloat;
        fDMConsPedido.mNotas_Ped.Post;
        fDMConsPedido.cdsPedido_Nota.Next;
      end;
    end;
    fDMConsPedido.cdsPedido_Item.Next;
  end;
  fDMConsPedido.cdsPedido_Item.First;
  ProgressBar1.Visible := False;

  fDMConsPedido.mNotas_Ped.MasterSource := fDMConsPedido.dsPedido_Item;
  fDMConsPedido.mNotas_Ped.MasterFields := 'ID;ITEM';
end;

procedure TfrmConsPedido.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if trim(RxDBLookupCombo2.Text) <> '' then
      vCodPessoa_Pos := RxDBLookupCombo2.KeyValue
    else
      vCodPessoa_Pos := 0;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo2.KeyValue := vCodPessoa_Pos;
    RxDBLookupCombo2.SetFocus;
  end;
end;

procedure TfrmConsPedido.prc_Consultar_RefComb;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
begin
  fDMConsPedido.cdsPedido_RefComb.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_RefComb);
  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_RefComb.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_RefComb.IndexFieldNames := 'REFERENCIA;NOME_COR_COMBINACAO';
  fDMConsPedido.cdsPedido_RefComb.Open;
end;

procedure TfrmConsPedido.SMDBGrid8GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefCombQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefCombQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefCombQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefCombQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefCombQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefCombQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsPedido.prc_Consultar_RefComb_DtEntrega;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
begin
  fDMConsPedido.cdsPedido_RefComb_DtEntrega.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_RefComb_DTEntrega);
  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_RefComb_DtEntrega.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_RefComb_DtEntrega.IndexFieldNames := 'DTENTREGA_ITEM;REFERENCIA;NOME_COR_COMBINACAO';
  fDMConsPedido.cdsPedido_RefComb_DtEntrega.Open;
end;

procedure TfrmConsPedido.SMDBGrid9GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefComb_DtEntregaQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefComb_DtEntregaQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefComb_DtEntregaQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefComb_DtEntregaQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefComb_DtEntregaQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_RefComb_DtEntregaQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsPedido.prc_Consultar_RefComb_DtECliente;
var
  vComandoAux, vComandoAux2: String;
  vOpcaoDtEntrega: String;
begin
  fDMConsPedido.cdsPedido_RefComb_DtEntrega.Close;
  prc_GroupBy(fDMConsPedido.ctPedido_RefComb_DTECliente);
  prc_Monta_Condicao;
  fDMConsPedido.sdsPedido_RefComb_DtECliente.CommandText := vComando + vComando_GroupBy;
  fDMConsPedido.cdsPedido_RefComb_DtECliente.IndexFieldNames := 'DTENTREGA_ITEM;REFERENCIA;NOME_COR_COMBINACAO;NOME_CLIENTE';
  fDMConsPedido.cdsPedido_RefComb_DtECliente.Open;
end;

end.
