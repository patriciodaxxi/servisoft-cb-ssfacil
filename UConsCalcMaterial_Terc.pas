unit UConsCalcMaterial_Terc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsPedido, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  RzTabs;

type
  TfrmConsCalcMaterial_Terc = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    TabSheet3: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    Panel3: TPanel;
    Shape1: TShape;
    Label9: TLabel;
    Panel4: TPanel;
    Shape2: TShape;
    Label10: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;
    ColunaOrdenada: String;
    vQtdProduto : Real;

    procedure prc_Consultar;
    procedure prc_Le_cdsPedido_Mat;
    procedure prc_Gravar_mConsumo;
    procedure prc_Gravar_mProdutoSC;

  public
    { Public declarations }
  end;

var
  frmConsCalcMaterial_Terc: TfrmConsCalcMaterial_Terc;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelCalcMaterial_Terc,
  USel_Produto;

{$R *.dfm}

procedure TfrmConsCalcMaterial_Terc.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('*** Filial não informada!');
    exit;
  end;

  SMDBGrid1.DisableScroll;
  prc_Consultar;
  prc_Le_cdsPedido_Mat;
  SMDBGrid1.EnableScroll;
  fDMConsPedido.cdsPedido_Mat.IndexFieldNames := 'NOMECLIENTE;NOMEPRODUTO;NOMEMATERIAL';
end;

procedure TfrmConsCalcMaterial_Terc.prc_Consultar;
var
  vComando : String;
  vOpcaoDtEntrega : String;
begin
  fDMConsPedido.cdsPedido_Mat.Close;
  vComando := ' SELECT TAUX.FILIAL, TAUX.ID_CLIENTE, TAUX.ID_PRODUTO, TAUX.ID_MATERIAL, TAUX.NOMEMATERIAL, SUM(TAUX.CONSUMO_TOTAL) CONSUMO_TOTAL, TAUX.NOMECLIENTE,'
            + ' SUM(TAUX.QTD_RESTANTE) QTD_RESTANTE, TAUX.NOMEPRODUTO, TAUX.TAMANHO, TAUX.TIPO_CONSUMO, SUM(TAUX.CONSUMO_TOTAL_TAM) CONSUMO_TOTAL_TAM '
            + ' FROM (SELECT PED.FILIAL, PI.ID_PRODUTO, PI.nomeproduto, PI.referencia, MAT.NOME NOMEMATERIAL, MAT.ID ID_MATERIAL, MAT.REFERENCIA REFMATERIAL, PI.QTD_RESTANTE, PED.ID_CLIENTE, PC.qtd_consumo,'
            + '      (PC.qtd_consumo * PI.QTD_RESTANTE) CONSUMO_TOTAL, CLI.NOME NOMECLIENTE,'
            + '       PED.num_pedido, PI.item ITEM_PEDIDO, PI.TAMANHO, PC.TIPO_CONSUMO, (PC_TAM.qtd_consumo * PI.QTD_RESTANTE) CONSUMO_TOTAL_TAM'
            + '       FROM PEDIDO PED'
            + '       INNER JOIN PEDIDO_ITEM PI'
            + '         ON PED.ID = PI.ID'
            + '       INNER JOIN PESSOA CLI'
            + '         ON PED.ID_CLIENTE = CLI.CODIGO'
            + '       LEFT JOIN PRODUTO_CONSUMO PC'
            + '         ON PI.id_produto = PC.ID'

            + '       LEFT JOIN PRODUTO_CONSUMO_TAM PC_TAM'
            + '         ON PC.ID = PC_TAM.ID'
            + '         AND PC.item = PC_TAM.item'
            + '         AND PI.tamanho = PC_TAM.TAMANHO'

            + '       LEFT JOIN PRODUTO MAT'
            + '         ON PC.id_material = MAT.ID'


            + '       WHERE PI.qtd_restante > 0';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + 'AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND PI.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcaoDtEntrega := '';
  if fDMConsPedido.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vOpcaoDtEntrega := 'PED.DTENTREGA'
  else
    vOpcaoDtEntrega := 'PI.DTENTREGA';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  vComando := vComando + ') TAUX';
  vComando := vComando + ' GROUP BY TAUX.FILIAL, TAUX.ID_CLIENTE, TAUX.ID_PRODUTO, TAUX.ID_MATERIAL, TAUX.NOMEMATERIAL, TAUX.NOMECLIENTE, TAUX.NOMEPRODUTO '
            + ' , TAUX.TAMANHO, TAUX.TIPO_CONSUMO ';
  fDMConsPedido.sdsPedido_Mat.CommandText := vComando;
  fDMConsPedido.cdsPedido_Mat.Open;
end;

procedure TfrmConsCalcMaterial_Terc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsCalcMaterial_Terc.FormShow(Sender: TObject);
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  fDMConsPedido.cdsFilial.First;
  if (fDMConsPedido.cdsFilial.RecordCount < 2) and (fDMConsPedido.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsPedido.cdsFilialID.AsInteger;
end;

procedure TfrmConsCalcMaterial_Terc.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsPedido_Mat.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsCalcMaterial_Terc.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1Click(Sender);
end;

procedure TfrmConsCalcMaterial_Terc.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  fRelCalcMaterial_Terc   := TfRelCalcMaterial_Terc.Create(Self);
  fRelCalcMaterial_Terc.fDMConsPedido := fDMConsPedido;
  fRelCalcMaterial_Terc.vOpcaoImp      := '';
  if RxDBLookupCombo3.Text <> '' then
    fRelCalcMaterial_Terc.vOpcaoImp := fRelCalcMaterial_Terc.vOpcaoImp + '(Produto: ' + RxDBLookupCombo3.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelCalcMaterial_Terc.vOpcaoImp := fRelCalcMaterial_Terc.vOpcaoImp + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +  ')'
  else
  if (DateEdit1.Date > 10) then
    fRelCalcMaterial_Terc.vOpcaoImp := fRelCalcMaterial_Terc.vOpcaoImp + '(Dt.Emissão Ini: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fRelCalcMaterial_Terc.vOpcaoImp := fRelCalcMaterial_Terc.vOpcaoImp + '(Dt.Emissão Fin: ' + DateEdit2.Text + ')';

  if (DateEdit3.Date > 10) and (DateEdit4.Date > 10) then
    fRelCalcMaterial_Terc.vOpcaoImp := fRelCalcMaterial_Terc.vOpcaoImp + '(Dt.Entrega: ' + DateEdit3.Text + ' a ' + DateEdit4.Text +  ')'
  else
  if (DateEdit3.Date > 10) then
    fRelCalcMaterial_Terc.vOpcaoImp := fRelCalcMaterial_Terc.vOpcaoImp + '(Dt.Entrega Ini: ' + DateEdit3.Text + ')'
  else
  if (DateEdit4.Date > 10) then
    fRelCalcMaterial_Terc.vOpcaoImp := fRelCalcMaterial_Terc.vOpcaoImp + '(Dt.Entrega Fin: ' + DateEdit4.Text + ')';
  fRelCalcMaterial_Terc.RLReport1.PreviewModal;
  fRelCalcMaterial_Terc.RLReport1.Free;
  FreeAndNil(fRelCalcMaterial_Terc);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmConsCalcMaterial_Terc.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMConsPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsCalcMaterial_Terc.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmConsCalcMaterial_Terc.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMConsPedido.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmConsCalcMaterial_Terc.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmConsCalcMaterial_Terc.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmConsCalcMaterial_Terc.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMConsPedido.cdsPedido_MatID_MATERIAL.AsInteger < 1) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsCalcMaterial_Terc.prc_Le_cdsPedido_Mat;
var
  vProdutoAux, vClienteAux, vMaterialAux : Integer;
  vTamanho : String;
begin
  fDMConsPedido.mConsumo.EmptyDataSet;
  fDMConsPedido.mProdutoSC.EmptyDataSet;

  fDMConsPedido.mConsumo.IndexFieldNames   := 'ID_CLIENTE;ID_MATERIAL';
  fDMConsPedido.mProdutoSC.IndexFieldNames := 'ID_PRODUTO';
  vQtdProduto  := 0;
  vProdutoAux  := 0;
  vClienteAux  := 0;
  vMaterialAux := 0;
  vTamanho     := '';
  fDMConsPedido.cdsPedido_Mat.IndexFieldNames := 'ID_PRODUTO;TAMANHO;ID_CLIENTE;ID_MATERIAL';
  fDMConsPedido.cdsPedido_Mat.First;
  while not fDMConsPedido.cdsPedido_Mat.Eof do
  begin
    if (vProdutoAux <> fDMConsPedido.cdsPedido_MatID_PRODUTO.AsInteger) or (vClienteAux <> fDMConsPedido.cdsPedido_MatID_CLIENTE.AsInteger) or
       (vMaterialAux <> fDMConsPedido.cdsPedido_MatID_MATERIAL.AsInteger) OR (vTamanho <> fDMConsPedido.cdsPedido_MatTAMANHO.AsString) then
      vQtdProduto := fDMConsPedido.cdsPedido_MatQTD_RESTANTE.AsFloat
    else
      vQtdProduto := 0;
    if (fDMConsPedido.cdsPedido_MatID_MATERIAL.AsInteger > 0) and ((StrToFloat(FormatFloat('0.00000',fDMConsPedido.cdsPedido_MatCONSUMO_TOTAL.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00000',fDMConsPedido.cdsPedido_MatCONSUMO_TOTAL_TAM.AsFloat)) > 0)) then
      prc_Gravar_mConsumo
    else
      prc_Gravar_mProdutoSC;

    vProdutoAux  := fDMConsPedido.cdsPedido_MatID_PRODUTO.AsInteger;
    vClienteAux  := fDMConsPedido.cdsPedido_MatID_CLIENTE.AsInteger;
    vMaterialAux := fDMConsPedido.cdsPedido_MatID_MATERIAL.AsInteger;
    vTamanho     := fDMConsPedido.cdsPedido_MatTAMANHO.AsString;

    fDMConsPedido.cdsPedido_Mat.Next;
  end;
end;

procedure TfrmConsCalcMaterial_Terc.prc_Gravar_mConsumo;
begin
  if fDMConsPedido.mConsumo.FindKey([fDMConsPedido.cdsPedido_MatID_CLIENTE.AsInteger,fDMConsPedido.cdsPedido_MatID_MATERIAL.AsInteger]) then
    fDMConsPedido.mConsumo.Edit
  else
  begin
    fDMConsPedido.mConsumo.Insert;
    fDMConsPedido.mConsumoID_Cliente.AsInteger  := fDMConsPedido.cdsPedido_MatID_CLIENTE.AsInteger;
    fDMConsPedido.mConsumoNome_Cliente.AsString := fDMConsPedido.cdsPedido_MatNOMECLIENTE.AsString;
    fDMConsPedido.mConsumoID_Material.AsInteger := fDMConsPedido.cdsPedido_MatID_MATERIAL.AsInteger;
    fDMConsPedido.mConsumoNomeMaterial.AsString := fDMConsPedido.cdsPedido_MatNOMEMATERIAL.AsString;

    //abrir as notas de entrada
    fDMConsPedido.qNotaEntrada.Close;
    fDMConsPedido.qNotaEntrada.ParamByName('ID_CLIENTE').AsInteger := fDMConsPedido.cdsPedido_MatID_CLIENTE.AsInteger;
    fDMConsPedido.qNotaEntrada.ParamByName('FILIAL').AsInteger     := fDMConsPedido.cdsPedido_MatFILIAL.AsInteger;
    fDMConsPedido.qNotaEntrada.ParamByName('ID_PRODUTO').AsInteger := fDMConsPedido.cdsPedido_MatID_MATERIAL.AsInteger;
    fDMConsPedido.qNotaEntrada.Open;
    if not fDMConsPedido.qNotaEntrada.IsEmpty then
      fDMConsPedido.mConsumoQtd_MaterialTerc.AsFloat := StrToFloat(FormatFloat('0.00000',fDMConsPedido.qNotaEntradaQTDRESTANTE.AsFloat));
  end;
  if fDMConsPedido.cdsPedido_MatTIPO_CONSUMO.AsString = 'T' then
    fDMConsPedido.mConsumoQtd_ConsumoCalc.AsFloat := StrToFloat(FormatFloat('0.00000',fDMConsPedido.mConsumoQtd_ConsumoCalc.AsFloat + fDMConsPedido.cdsPedido_MatCONSUMO_TOTAL_TAM.AsFloat))
  else
    fDMConsPedido.mConsumoQtd_ConsumoCalc.AsFloat := StrToFloat(FormatFloat('0.00000',fDMConsPedido.mConsumoQtd_ConsumoCalc.AsFloat + fDMConsPedido.cdsPedido_MatCONSUMO_TOTAL.AsFloat));
  fDMConsPedido.mConsumoQtdProduto.AsFloat      := StrToFloat(FormatFloat('0.00000',fDMConsPedido.mConsumoQtdProduto.AsFloat + vQtdProduto));
  fDMConsPedido.mConsumoSaldo.AsFloat           := StrToFloat(FormatFloat('0.00000',fDMConsPedido.mConsumoQtd_MaterialTerc.AsFloat - fDMConsPedido.mConsumoQtd_ConsumoCalc.AsFloat));
  fDMConsPedido.mConsumo.Post;
end;

procedure TfrmConsCalcMaterial_Terc.prc_Gravar_mProdutoSC;
begin
  if not fDMConsPedido.mProdutoSC.FindKey([fDMConsPedido.cdsPedido_MatID_PRODUTO.AsInteger]) then
  begin
    fDMConsPedido.mProdutoSC.Insert;
    fDMConsPedido.mProdutoSCID_Produto.AsInteger := fDMConsPedido.cdsPedido_MatID_PRODUTO.AsInteger;
    fDMConsPedido.mProdutoSCNomeProduto.AsString := fDMConsPedido.cdsPedido_MatNOMEPRODUTO.AsString;
    fDMConsPedido.mProdutoSC.Post;
  end;
end;

procedure TfrmConsCalcMaterial_Terc.SMDBGrid2TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.mConsumo.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsCalcMaterial_Terc.SMDBGrid3TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.mProdutoSC.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid3.Columns.Count - 1 do
    if not (SMDBGrid3.Columns.Items[I] = Column) then
      SMDBGrid3.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsCalcMaterial_Terc.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00000',fDMConsPedido.mConsumoSaldo.AsFloat)) < 0 then 
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsCalcMaterial_Terc.RxDBLookupCombo4KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmConsCalcMaterial_Terc.RxDBLookupCombo3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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

end.
