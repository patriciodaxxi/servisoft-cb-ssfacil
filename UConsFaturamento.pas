unit UConsFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsFaturamento, RxLookup, UCBase, Mask, ToolEdit, RzPanel,
  RzTabs, CurrEdit, NxEdit, NxCollection, ComObj, Menus;

type
  TfrmConsFaturamento = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    RzPageControl1: TRzPageControl;
    TS_Cliente: TRzTabSheet;
    TS_Cliente_Prod: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    ceVlrFaturamento: TCurrencyEdit;
    TS_Produto: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    TS_DTEmissao: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    Panel2: TPanel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    TS_Produto_Det: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
    ceVlrVendas: TCurrencyEdit;
    Label8: TLabel;
    Label9: TLabel;
    ceVlrServico: TCurrencyEdit;
    Panel4: TPanel;
    NxComboBox1: TNxComboBox;
    Label10: TLabel;
    TS_Nota: TRzTabSheet;
    SMDBGrid6: TSMDBGrid;
    NxComboBox2: TNxComboBox;
    CheckBox2: TCheckBox;
    Panel5: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    ceVlrIcmsSubst: TCurrencyEdit;
    ceVlrFaturamento_ST: TCurrencyEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    TS_UF: TRzTabSheet;
    TS_Cupom: TRzTabSheet;
    SMDBGrid8: TSMDBGrid;
    TS_Vendedor: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    TS_Vendedor_Acum: TRzTabSheet;
    TS_Vendedor_Cli: TRzTabSheet;
    TS_Vendedor_Prod: TRzTabSheet;
    SMDBGrid11: TSMDBGrid;
    SMDBGrid9: TSMDBGrid;
    SMDBGrid10: TSMDBGrid;
    Panel6: TPanel;
    CheckBox3: TCheckBox;
    Label18: TLabel;
    cbImpCliente: TNxComboBox;
    RzPageControl3: TRzPageControl;
    TS_Cliente_Acum: TRzTabSheet;
    TS_Cliente_UF: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid12: TSMDBGrid;
    TS_Cliente_Cid: TRzTabSheet;
    SMDBGrid13: TSMDBGrid;
    RzPageControl4: TRzPageControl;
    TS_UF_Acumulado: TRzTabSheet;
    SMDBGrid7: TSMDBGrid;
    TS_UF_Produto: TRzTabSheet;
    SMDBGrid14: TSMDBGrid;
    TS_UF_Grupo: TRzTabSheet;
    SMDBGrid15: TSMDBGrid;
    CheckBox4: TCheckBox;
    Label5: TLabel;
    ceValorIPI: TCurrencyEdit;
    CheckBox5: TCheckBox;
    ceValorFrete: TCurrencyEdit;
    Label11: TLabel;
    Label12: TLabel;
    ceDevolucoes: TCurrencyEdit;
    CheckBox6: TCheckBox;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Excel1: TMenuItem;
    TS_Cli_Prod: TRzTabSheet;
    SMDBGrid16: TSMDBGrid;
    TS_ReciboNF: TRzTabSheet;
    SMDBGrid17: TSMDBGrid;
    chkCupomEnv: TCheckBox;
    TS_Cliente_Cid_Det: TRzTabSheet;
    SMDBGrid18: TSMDBGrid;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure SMDBGrid4TitleClick(Column: TColumn);
    procedure SMDBGrid5TitleClick(Column: TColumn);
    procedure SMDBGrid6TitleClick(Column: TColumn);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SMDBGrid12TitleClick(Column: TColumn);
    procedure SMDBGrid13TitleClick(Column: TColumn);
    procedure SMDBGrid14TitleClick(Column: TColumn);
    procedure SMDBGrid7TitleClick(Column: TColumn);
    procedure Imprimir1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure SMDBGrid8TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsFaturamento: TDMConsFaturamento;
    ColunaOrdenada: String;
    vComando: String;
    vOpcaoImp: String;

    procedure prc_Opcao_Rel_Vendedor;

    procedure prc_Consultar_Nota_Cli;
    procedure prc_Consultar_Nota_CliProd;
    procedure prc_Consultar_Nota_Cli_UF; //05/10/2015
    procedure prc_Consultar_Nota_Cli_Cid; //05/10/2015
    procedure prc_Consultar_Nota_Cli_Cid_Det; //24/10/2018
    procedure prc_Consultar_Faturamento;
    procedure prc_Monta_Condicao;
    procedure prc_Consultar_Nota_Prod;
    procedure prc_Consultar_Nota_DT;
    procedure prc_Consultar_Nota_UF;
    procedure prc_Consultar_Nota_UF_Produto;
    procedure prc_Consultar_Produto_Det;
    procedure prc_Consultar_Nota;
    procedure prc_Consultar_ReciboNF;
    procedure prc_Monta_Cab;
    procedure prc_Consultar_Cupom;
    procedure prc_Consultar_VendProd;
    procedure prc_Consultar_VendCli;
    procedure prc_Consultar_Vend_Cli_Prod;
    procedure prc_Consultar_Vend;
    procedure prc_Consultar_Nota_UF_Grupo;

    procedure prc_Imprimir_Nota_Cli;
    procedure prc_Imprimir_Nota_CliProd;
    procedure prc_Imprimir_Nota_Cli_UF;
    procedure prc_Imprimir_Nota_Cli_Cid;
    procedure prc_Imprimir_Nota_Cli_Cid_Det;
    procedure prc_Imprimir_Nota_Prod;
    procedure prc_Imprimir_Nota_DT;
    procedure prc_Imprimir_Produto_Det;
    procedure prc_Imprimir_Nota;
    procedure prc_Imprimir_ReciboNF;
    procedure prc_Imprimir_Nota_UF;
    procedure prc_Imprimir_Cupom;
    procedure prc_Imprimir_VendedorProd;
    procedure prc_Imprimir_VendedorCli;
    procedure prc_Imprimir_Vendedor;
    procedure prc_Imprimir_Produto_UF;
    procedure prc_Imprimir_Grupo_UF;

    procedure prc_Gravar_mGrupoAux;
    procedure prc_CriaExcel(vDados: TDataSource);

    procedure prc_Ajustar_Grids(Grid: TSMDBGrid);
  public
    { Public declarations }
  end;

var
  frmConsFaturamento: TfrmConsFaturamento;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelEstoque, URelFat_Cli, URelFat_CliProd, URelFat_Prod, URelFat_DT, StrUtils,
  URelFat_Produto_Det, URelFat_Nota, URelFat_UF, URelFat_Cupom,
  URelFat_ReciboNF;

{$R *.dfm}

procedure TfrmConsFaturamento.btnConsultarClick(Sender: TObject);
begin
  //if fMenu.vTipo_Reg_Cons_Fat = 'NTS' then
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) then
  begin
    MessageDlg('*** É obrigatório informar a data inicial e final!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar_Faturamento;
  prc_Monta_Condicao;
  if RzPageControl1.ActivePage = TS_Cliente then
  begin
    if RzPageControl3.ActivePage = TS_Cliente_Acum then
      prc_Consultar_Nota_Cli
    else
    if RzPageControl3.ActivePage = TS_Cliente_UF then
      prc_Consultar_Nota_Cli_UF
    else
    if RzPageControl3.ActivePage = TS_Cliente_Cid then
      prc_Consultar_Nota_Cli_Cid
    else
      prc_Consultar_Nota_Cli_Cid_Det;
  end
  else
  if RzPageControl1.ActivePage = TS_Cliente_Prod then
    prc_Consultar_Nota_CliProd
  else
  if RzPageControl1.ActivePage = TS_Produto then
    prc_Consultar_Nota_Prod
  else
  if RzPageControl1.ActivePage = TS_DTEmissao then
    prc_Consultar_Nota_DT
  else
  if RzPageControl1.ActivePage = TS_Produto_Det then
    prc_Consultar_Produto_Det
  else
  if RzPageControl1.ActivePage = TS_Nota then
    prc_Consultar_Nota
  else
  if RzPageControl1.ActivePage = TS_UF then
  begin
    if RzPageControl4.ActivePage = TS_UF_Acumulado then
      prc_Consultar_Nota_UF
    else
    if RzPageControl4.ActivePage = TS_UF_Produto then
      prc_Consultar_Nota_UF_Produto
    else
    if RzPageControl4.ActivePage = TS_UF_Grupo then
      prc_Consultar_Nota_UF_Grupo;
  end
  else
  if RzPageControl1.ActivePage = TS_CUPOM then
    prc_Consultar_Cupom
  else
  if RzPageControl1.ActivePage = TS_ReciboNF then
    prc_Consultar_ReciboNF
  else
  if RzPageControl1.ActivePage = TS_Vendedor then
  begin
    fDMConsFaturamento.cdsNotaFiscal_Vend.IndexFieldNames     := '';
    fDMConsFaturamento.cdsNotaFiscal_VendProd.IndexFieldNames := '';
    fDMConsFaturamento.cdsNotaFiscal_VendCli.IndexFieldNames  := '';
    if RzPageControl2.ActivePage = TS_Vendedor_Prod then
      prc_Consultar_VendProd
    else
    if RzPageControl2.ActivePage = TS_Vendedor_Cli then
      prc_Consultar_VendCli
    else
    if RzPageControl2.ActivePage = TS_Cli_Prod then
      prc_Consultar_Vend_Cli_Prod
    else
      prc_Consultar_Vend;
    if CheckBox3.Checked then
    begin
      fDMConsFaturamento.cdsNotaFiscal_VendProd.IndexFieldNames := 'NOME_VENDEDOR;REFERENCIA;NOME_ORIGINAL';
      fDMConsFaturamento.cdsNotaFiscal_VendCli.IndexFieldNames  := 'NOME_VENDEDOR;NOME_CLIFORN;ID_PESSOA';
      fDMConsFaturamento.cdsNotaFiscal_Vend.IndexFieldNames     := 'NOME_VENDEDOR';
    end;
  end;  
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_Cli;
var
  vDesc: String;
begin
  if CheckBox2.Checked then
    vDesc := 'V.VLR_TOTAL - V.VLR_ICMSSUBST'
  else
    vDesc := 'V.VLR_TOTAL';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsNotaFiscal_Cli.Close;
//  fDMConsFaturamento.cdsNotaFiscal_Cli.IndexFieldNames := '';
  fDMConsFaturamento.sdsNotaFiscal_Cli.CommandText := 'SELECT ID_PESSOA, CANCELADO, NOME_CLIENTE, FANTASIA, '
                                                    + ' SUM (' + vDesc +')' + ' VLR_TOTAL, SUM(QTD) QTD, '
                                                    + ' SUM(VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, SUM(' + vDesc + ' - VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                    + ' SUM(VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_Cli.CommandText := fDMConsFaturamento.sdsNotaFiscal_Cli.CommandText + vComando
                                                    + ' GROUP BY ID_PESSOA, CANCELADO, NOME_CLIENTE, FANTASIA '
                                                    + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_Cli.Open;
end;

procedure TfrmConsFaturamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsFaturamento.FormShow(Sender: TObject);
var
  vTexto1, vTexto2: String;
begin
  fDMConsFaturamento := TDMConsFaturamento.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFaturamento);
  fDMConsFaturamento.cdsFilial.First;
  if (fDMConsFaturamento.cdsFilial.RecordCount < 2) and (fDMConsFaturamento.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsFaturamento.cdsFilialID.AsInteger;
  if fMenu.vTipo_Reg_Cons_Fat = 'NTS' then
  begin
    NxComboBox2.Items.Clear;
    NxComboBox2.Items.Add('Dt. Emissão');
    NxComboBox2.ItemIndex := 0;
    Caption := 'Consulta Faturamento';
    vTexto1 := 'Faturamento';
    vTexto2 := 'Cliente';
    fDMConsFaturamento.vTipo_Nota := 'S';
    Label16.Caption               := 'Fat.Líq.:';
  end
  else
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
  begin
    Caption := 'Consulta Compras';
    vTexto1 := 'Compras';
    vTexto2 := 'Fornecedor';
    Label16.Caption := 'Vlr.Compras:';
    fDMConsFaturamento.vTipo_Nota := 'E';
    fDMConsFaturamento.cdsFornecedor.Open;
    RxDBLookupCombo2.LookupSource := fDMConsFaturamento.dsFornecedor;
  end;
  Label1.Caption     := 'Vlr. Total ' + vTexto1 + ':';
  Label3.Caption     := vTexto2 + ':';
  TS_Cliente.Caption := vTexto2;


  TS_Cliente_Prod.Caption      := vTexto2 + ' / Produto';
  fDMConsFaturamento.vTipo_Reg := fMenu.vTipo_Reg_Cons_Fat;
  Panel4.Visible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  Label8.Visible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  Label9.Visible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  ceVlrServico.Visible   := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  ceVlrVendas.Visible    := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  TS_Cupom.TabVisible    := ((fDMConsFaturamento.qParametrosUSA_CUPOM_FISCAL.AsString = 'S') and (fMenu.vTipo_Reg_Cons_Fat = 'NTS'));
  TS_Vendedor.TabVisible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
  TS_ReciboNF.TabVisible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');

  //05/07/2017
  CheckBox5.Visible    := (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S');
  Label11.Visible      := (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S');
  ceValorFrete.Visible := (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S');
  CheckBox6.Visible    := (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_DEVOL_CONS.AsString = 'S');
  Label12.Visible      := (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_DEVOL_CONS.AsString = 'S');
  ceDevolucoes.Visible := (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_DEVOL_CONS.AsString = 'S');
  chkCupomEnv.Visible  := (fDMConsFaturamento.qParametrosUSA_CUPOM_FISCAL.AsString = 'S');
  //**************


  prc_Ajustar_Grids(SMDBGrid1);
  prc_Ajustar_Grids(SMDBGrid2);
  prc_Ajustar_Grids(SMDBGrid3);
  prc_Ajustar_Grids(SMDBGrid4);
  prc_Ajustar_Grids(SMDBGrid5);
  prc_Ajustar_Grids(SMDBGrid6);
  prc_Ajustar_Grids(SMDBGrid7);
  prc_Ajustar_Grids(SMDBGrid8);
  prc_Ajustar_Grids(SMDBGrid9);
  prc_Ajustar_Grids(SMDBGrid10);
  prc_Ajustar_Grids(SMDBGrid11);
  prc_Ajustar_Grids(SMDBGrid12);
  prc_Ajustar_Grids(SMDBGrid13);
  prc_Ajustar_Grids(SMDBGrid14);
  prc_Ajustar_Grids(SMDBGrid15);
  prc_Ajustar_Grids(SMDBGrid16);
  prc_Ajustar_Grids(SMDBGrid17);
end;

procedure TfrmConsFaturamento.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal_Cli.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsFaturamento.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMConsFaturamento.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmConsFaturamento.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMConsFaturamento.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmConsFaturamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    fDMConsFaturamento.cdsFornecedor.IndexFieldNames := 'NOME'
  else
    fDMConsFaturamento.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmConsFaturamento.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmConsFaturamento.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfrmConsFaturamento.prc_Consultar_Faturamento;
var
  vComandoAux: String;
  vDescData: String;
begin
  vComandoAux := '';
  if NxComboBox2.ItemIndex = 0 then
    vDescData := 'DTEMISSAO'
  else
    vDescData := 'DTENTRADASAIDA';
  {if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    vDescData := 'DTENTRADASAIDA'
  else
    vDescData := 'DTEMISSAO';}
  fDMConsFaturamento.qFaturamento.Close;
  fDMConsFaturamento.qFaturamento.SQL.Text := fDMConsFaturamento.ctFaturamento
                                              + ' AND TIPO_ES = ' + QuotedStr(fDMConsFaturamento.vTipo_Nota);
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    vComandoAux := vComandoAux + ' AND TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat);

  if RxDBLookupCombo1.Text <> '' then
    fDMConsFaturamento.qFaturamento.SQL.Add(' AND FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue));
  vComandoAux := vComandoAux + ' AND ' + vDescData + ' BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                             + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMConsFaturamento.qFaturamento.SQL.Add(vComandoAux);
  fDMConsFaturamento.qFaturamento.Open;
  ceVlrFaturamento.Value := StrToFloat(FormatFloat('0.00',fDMConsFaturamento.qFaturamentoVLR_TOTAL.AsFloat));
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    ceVlrFaturamento.Value := StrToFloat(FormatFloat('0.00',ceVlrFaturamento.Value + fDMConsFaturamento.qFaturamentoVLR_IPI.AsFloat));
  ceVlrVendas.Value      := StrToFloat(FormatFloat('0.00',fDMConsFaturamento.qFaturamentoVLR_VENDAS.AsFloat));
  ceVlrServico.Value     := StrToFloat(FormatFloat('0.00',fDMConsFaturamento.qFaturamentoVLR_LIQUIDO_NFSE.AsFloat));
  ceVlrIcmsSubst.Value   := StrToFloat(FormatFloat('0.00',fDMConsFaturamento.qFaturamentoVLR_ICMSSUBST.AsFloat));

  if CheckBox2.Checked then
    fDMConsFaturamento.vVlrFaturamento := fDMConsFaturamento.qFaturamentoVLR_DUPLICATA_ST.AsFloat
  else
    fDMConsFaturamento.vVlrFaturamento := fDMConsFaturamento.qFaturamentoVLR_TOTAL.AsFloat;
  if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
    fDMConsFaturamento.vVlrFaturamento := StrToFloat(FormatFloat('0.00',fDMConsFaturamento.vVlrFaturamento + fDMConsFaturamento.qFaturamentoVLR_IPI.AsFloat));

  //Somar os fretes      foi ajustado em 05/07/2017, pois estava calculando notas de entrada e saida junto
  {fDMConsFaturamento.qFrete.Active := False;
  fDMConsFaturamento.qFrete.ParamByName('D1').AsDate := DateEdit1.date;
  fDMConsFaturamento.qFrete.ParamByName('D2').AsDate := DateEdit2.date;
  fDMConsFaturamento.qFrete.Active := True;
  fDMConsFaturamento.vVlrFrete := fDMConsFaturamento.qFreteVLR_FRETE.AsCurrency;
  ceValorFrete.Value           := fDMConsFaturamento.vVlrFrete;}

  if fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S' then
  begin
    fDMConsFaturamento.vVlrFrete := fDMConsFaturamento.qFaturamentoVLR_FRETE.AsFloat;
    ceValorFrete.Value           := fDMConsFaturamento.vVlrFrete;
  end
  else
  begin
    fDMConsFaturamento.vVlrFrete := 0;
    ceValorFrete.Clear;
  end;
  if fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_DEVOL_CONS.AsString = 'S' then
  begin
    fDMConsFaturamento.qDevolucoes.Active := False;
    fDMConsFaturamento.qDevolucoes.ParamByName('D1').AsDate := DateEdit1.date;
    fDMConsFaturamento.qDevolucoes.ParamByName('D2').AsDate := DateEdit2.date;
    fDMConsFaturamento.qDevolucoes.Active := True;
    fDMConsFaturamento.vVlrDevol := fDMConsFaturamento.qDevolucoesVLR_NOTA.AsCurrency;
    ceDevolucoes.Value           := fDMConsFaturamento.vVlrDevol;
  end
  else
  begin
    fDMConsFaturamento.vVlrDevol := 0;
    ceDevolucoes.Clear;
  end;
  fDMConsFaturamento.vVlrIPI := fDMConsFaturamento.qFaturamentoVLR_IPI.AsCurrency;
  ceValorIPI.Value           := fDMConsFaturamento.vVlrIPI;

  fDMConsFaturamento.vVlrLiq := StrToFloat(FormatFloat('0.00',fDMConsFaturamento.qFaturamentoVLR_DUPLICATA_ST.AsFloat -
                                                              ceDevolucoes.Value - ceValorFrete.Value - ceValorIPI.Value));
  ceVlrFaturamento_ST.Value  := fDMConsFaturamento.vVlrLiq;
end;

procedure TfrmConsFaturamento.prc_Monta_Condicao;
var
  vDescData: String;
begin
  if NxComboBox2.ItemIndex = 0 then
    vDescData := 'DTEMISSAO'
  else
    vDescData := 'DTENTRADASAIDA';
  vComando := '';
  if RzPageControl1.ActivePage = TS_Cupom then
  begin
    vDescData := 'DTEMISSAO';
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND NT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND NT.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND ' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND ' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if chkCupomEnv.Checked then
      vComando := vComando + ' AND NT.NFEPROTOCOLO is not null';
  end
  else
  if (RzPageControl1.ActivePage = TS_Nota) or (RzPageControl1.ActivePage = TS_ReciboNF) then
  begin
    if NxComboBox2.ItemIndex = 0 then
      vDescData := 'DTEMISSAO'
    else
      vDescData := 'DTSAIDAENTRADA';
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND NT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND NT.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if (RxDBLookupCombo3.Text <> '') and (RzPageControl1.ActivePage <> TS_Nota) then
      vComando := vComando + ' AND IT.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND ' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND ' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end
  else
  if RzPageControl1.ActivePage = TS_Vendedor then
  begin
    vComando := ' WHERE 0 = 0 ';
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND V.' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND V.' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND V.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if (RxDBLookupCombo3.Text <> '') then
      vComando := vComando + ' AND V.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if NxComboBox1.ItemIndex = 0 then
    begin
      if fMenu.vTipo_Reg_Cons_Fat = 'NTS' then
        vComando := vComando + ' AND (V.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat) + ' OR V.TIPO_REG = ' + QuotedStr('CFI') + ')'
      else
        vComando := vComando + ' AND V.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat);
    end
    else
    if NxComboBox1.ItemIndex = 1 then
      //vComando := vComando + '  AND V.TIPO_REG = ' + QuotedStr('NSE');
      vComando := vComando + ' AND ((V.TIPO_REG = ' + QuotedStr('NSE') + ') OR (V.TIPO_REG = ' + QuotedStr('REC') + '))';
  end
  else
  begin
    vComando := '';
    if RzPageControl1.ActivePage = TS_Produto_Det then
      vComando := ', COMB.NOME NOME_COR ';
    vComando := vComando + 'FROM VCONSFATURAMENTO V';
    if (RzPageControl1.ActivePage = TS_UF) and ((RzPageControl4.ActivePage = TS_UF_Produto) or (RzPageControl4.ActivePage = TS_UF_Grupo)) then
      vComando := vComando + ' LEFT JOIN PRODUTO PROD ON (V.ID_PRODUTO = PROD.ID) ' + ' LEFT JOIN GRUPO GR ON (PROD.ID_GRUPO = GR.ID) ';
    if (RzPageControl1.ActivePage = TS_Produto_Det) then
      vComando := vComando + ' LEFT JOIN COMBINACAO COMB ON (V.ID_COR = COMB.ID) ';
    vComando := vComando
              + ' WHERE V.TIPO_ES = ' + QuotedStr(fDMConsFaturamento.vTipo_Nota);
    if fMenu.vTipo_Reg_Cons_Fat = 'NTE' then
      vComando := vComando + '  AND V.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat)
    else
    begin
      if NxComboBox1.ItemIndex = 0 then
      begin
        if fMenu.vTipo_Reg_Cons_Fat = 'NTS' then
          vComando := vComando + '  AND (V.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat) + ' OR V.TIPO_REG = ' + QuotedStr('CFI') + ')'
        else
          vComando := vComando + '  AND V.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat);
      end
      else
      if NxComboBox1.ItemIndex = 1 then
        vComando := vComando + '  AND ((V.TIPO_REG = ' + QuotedStr('NSE') + ') OR (V.TIPO_REG = ' + QuotedStr('REC') + '))';
      {case NxComboBox1.ItemIndex of
        0: vComando := vComando + '  AND MOV.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat);
        1: vComando := vComando + '  AND mov.TIPO_REG = ' + QuotedStr('NSE');
      end;}
    end;
    if RxDBLookupCombo1.Text <> '' then
      vComando := vComando + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      vComando := vComando + ' AND V.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if (RxDBLookupCombo3.Text <> '') then
      vComando := vComando + ' AND V.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo3.KeyValue);

    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND V.' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND V.' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  end;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_CliProd;
var
  vDesc: String;
begin
  vDesc := 'V.VLR_TOTAL';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - V.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsNotaFiscal_CliProd.Close;
  fDMConsFaturamento.cdsNotaFiscal_CliProd.IndexFieldNames := '';
  fDMConsFaturamento.sdsNotaFiscal_CliProd.CommandText     := 'select V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.TIPO_MOV, V.ID_PRODUTO, '
                                                           +  'V.REFERENCIA, V.NOME_PRODUTO_SERV, '
                                                           +  'SUM (' + vDesc + ') VLR_TOTAL, sum(V.QTD) QTD, sum(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, '
                                                           +  'SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, sum(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_CliProd.CommandText := fDMConsFaturamento.sdsNotaFiscal_CliProd.CommandText + vComando
                                                        + 'GROUP BY V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.TIPO_MOV, V.ID_PRODUTO, '
                                                        + 'V.REFERENCIA, V.NOME_PRODUTO_SERV '
                                                        + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_CliProd.Open;
end;

procedure TfrmConsFaturamento.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal_CliProd.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.SMDBGrid3TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal_Prod.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid3.Columns.Count - 1 do
    if not (SMDBGrid3.Columns.Items[I] = Column) then
      SMDBGrid3.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_Prod;
var
  vDesc: String;
begin
  vDesc := 'V.VLR_TOTAL';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - V.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsNotaFiscal_Prod.Close;
  fDMConsFaturamento.cdsNotaFiscal_Prod.IndexFieldNames := '';
  fDMConsFaturamento.sdsNotaFiscal_Prod.CommandText     := 'SELECT V.ID_PRODUTO, V.REFERENCIA, V.NOME_PRODUTO_SERV,'
                                                         + ' V.TIPO_MOV, V.TIPO_REG, V.TIPO_ES, '
                                                         + 'SUM(V.QTD) QTD, '
                                                         + 'SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, '
                                                         + 'SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                         + 'SUM (' + vDesc + ') VLR_TOTAL, '
                                                         + 'SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_Prod.CommandText := fDMConsFaturamento.sdsNotaFiscal_Prod.CommandText + vComando
                                                        + ' GROUP BY V.ID_PRODUTO, V.REFERENCIA, V.NOME_PRODUTO_SERV, V.TIPO_MOV, V.TIPO_REG, V.TIPO_ES '
                                                        + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_Prod.Open;
end;

procedure TfrmConsFaturamento.SMDBGrid4TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal_DT.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid4.Columns.Count - 1 do
    if not (SMDBGrid4.Columns.Items[I] = Column) then
      SMDBGrid4.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_DT;
var
  vDesc: String;
begin
  vDesc := 'V.VLR_TOTAL';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - V.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  //if CheckBox5.Checked then
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsNotaFiscal_DT.Close;
  fDMConsFaturamento.cdsNotaFiscal_DT.IndexFieldNames := '';
  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
    fDMConsFaturamento.sdsNotaFiscal_DT.CommandText := ' SELECT SUM (' + vDesc + ') VLR_TOTAL, V.DTEMISSAO, SUM(V.QTD) QTD, '
  else
    fDMConsFaturamento.sdsNotaFiscal_DT.CommandText := ' SELECT SUM (' + vDesc + ') VLR_TOTAL, V.DTENTRADASAIDA DTEMISSAO, SUM(V.QTD) QTD, ';
  fDMConsFaturamento.sdsNotaFiscal_DT.CommandText := fDMConsFaturamento.sdsNotaFiscal_DT.CommandText
                                                   + 'SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                   + 'SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_DT.CommandText := fDMConsFaturamento.sdsNotaFiscal_DT.CommandText + vComando;

  if fDMConsFaturamento.vTipo_Reg = 'NTS' then
    fDMConsFaturamento.sdsNotaFiscal_DT.CommandText := fDMConsFaturamento.sdsNotaFiscal_DT.CommandText
                                                     + ' GROUP BY V.DTEMISSAO '
  else
    fDMConsFaturamento.sdsNotaFiscal_DT.CommandText := fDMConsFaturamento.sdsNotaFiscal_DT.CommandText
                                                     + ' GROUP BY V.DTENTRADASAIDA ';
  fDMConsFaturamento.sdsNotaFiscal_DT.CommandText := fDMConsFaturamento.sdsNotaFiscal_DT.CommandText
                                                   + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_DT.Open;
end;

procedure TfrmConsFaturamento.prc_Monta_Cab;
begin
  vTipo_Config_Email := 3;
  fDMConsFaturamento.vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsFaturamento.vDescOpcao_Rel := fDMConsFaturamento.vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if RxDBLookupCombo2.Text <> '' then
    fDMConsFaturamento.vDescOpcao_Rel := fDMConsFaturamento.vDescOpcao_Rel + '(Cli: ' + RxDBLookupCombo2.Text + ')';
  if RxDBLookupCombo3.Text <> '' then
    fDMConsFaturamento.vDescOpcao_Rel := fDMConsFaturamento.vDescOpcao_Rel + '(Prod: ' + RxDBLookupCombo3.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fDMConsFaturamento.vDescOpcao_Rel := fDMConsFaturamento.vDescOpcao_Rel + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')';
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_Cli;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_Cli.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  vTipo_Config_Email := 3;
  SMDBGrid1.DisableScroll;
  fRelFat_Cli                    := TfRelFat_Cli.Create(Self);
  fRelFat_Cli.fDMConsFaturamento := fDMConsFaturamento;
  fRelFat_Cli.RLReport1.PreviewModal;
  fRelFat_Cli.RLReport1.Free;
  FreeAndNil(fRelFat_Cli);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_CliProd;
var
  vTexto: String;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_CliProd.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid2.DisableScroll;
  case cbImpCliente.ItemIndex of
    0: vTexto := 'FANTASIA';
    1: vTexto := 'NOME_CLIENTE';
  end;
  case ComboBox1.ItemIndex of
    //0,1: fDMConsFaturamento.cdsNotaFiscal_CliProd.IndexFieldNames := 'NOME_CLIENTE;NOME_PRODUTO_SERV';
    //2,3: fDMConsFaturamento.cdsNotaFiscal_CliProd.IndexFieldNames := 'NOME_PRODUTO_SERV;NOME_CLIENTE';
    0,1: fDMConsFaturamento.cdsNotaFiscal_CliProd.IndexFieldNames := vTexto + ';NOME_PRODUTO_SERV';
    2,3: fDMConsFaturamento.cdsNotaFiscal_CliProd.IndexFieldNames := 'NOME_PRODUTO_SERV;' + vTexto;
    4: fDMConsFaturamento.cdsNotaFiscal_CliProd.IndexFieldNames := 'VLR_DUPLICATA';
  end;
  fRelFat_CliProd                      := TfRelFat_CliProd.Create(Self);
  fRelFat_CliProd.RLGroup1.DataFields  := vTexto;
  fRelFat_CliProd.RLDBText5.DataField  := vTexto;
  fRelFat_CliProd.RLDBText7.DataField  := vTexto;
  fRelFat_CliProd.RLDBText12.DataField := vTexto;
  fRelFat_CliProd.fDMConsFaturamento   := fDMConsFaturamento;
  if (ComboBox1.ItemIndex <= 1) and (CheckBox1.Checked) then
  begin
    fRelFat_CliProd.RLReport1.PreviewModal;
    fRelFat_CliProd.RLReport1.Free;
    FreeAndNil(fRelFat_CliProd);
  end
  else
  if (ComboBox1.ItemIndex > 1) and (ComboBox1.ItemIndex <= 3) and  (CheckBox1.Checked) then
  begin
    fRelFat_CliProd.RLReport2.PreviewModal;
    fRelFat_CliProd.RLReport2.Free;
    FreeAndNil(fRelFat_CliProd);
  end
  else
  begin
    fRelFat_CliProd.RLReport3.PreviewModal;
    fRelFat_CliProd.RLReport3.Free;
    FreeAndNil(fRelFat_CliProd);
  end;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_DT;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_DT.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid4.DisableScroll;
  fRelFat_DT                    := TfRelFat_DT.Create(Self);
  fRelFat_DT.fDMConsFaturamento := fDMConsFaturamento;
  fRelFat_DT.RLReport1.PreviewModal;
  fRelFat_DT.RLReport1.Free;
  FreeAndNil(fRelFat_DT);
  SMDBGrid4.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_Prod;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_Prod.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid3.DisableScroll;
  fRelFat_Prod                    := TfRelFat_Prod.Create(Self);
  fRelFat_Prod.fDMConsFaturamento := fDMConsFaturamento;
  fRelFat_Prod.RLReport1.PreviewModal;
  fRelFat_Prod.RLReport1.Free;
  FreeAndNil(fRelFat_Prod);
  SMDBGrid3.EnableScroll;
end;

procedure TfrmConsFaturamento.SMDBGrid5TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsProduto_Det.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid5.Columns.Count - 1 do
    if not (SMDBGrid5.Columns.Items[I] = Column) then
      SMDBGrid5.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Produto_Det;
var
  vTexto: String;
begin
  case cbImpCliente.ItemIndex of
    0: vTexto := 'FANTASIA';
    1: vTexto := 'NOME_CLIENTE';
  end;
  if not(fDMConsFaturamento.cdsProduto_Det.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid5.DisableScroll;
  fDMConsFaturamento.cdsProduto_Det.IndexFieldNames := 'TIPO_MOV;NOME_PRODUTO_SERV;NOME_COR;REFERENCIA;'+vTexto +';SERIE;NUM_NOTA';
  fRelFat_Produto_Det                     := TfRelFat_Produto_Det.Create(Self);
  fRelFat_Produto_Det.RLDBText2.DataField := vTexto;
  fRelFat_Produto_Det.fDMConsFaturamento  := fDMConsFaturamento;
  fRelFat_Produto_Det.RLReport1.PreviewModal;
  fRelFat_Produto_Det.RLReport1.Free;
  FreeAndNil(fRelFat_Produto_Det);
  SMDBGrid5.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Consultar_Produto_Det;
var
  vDesc: String;
begin
  vDesc := 'V.VLR_TOTAL';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - V.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  //if CheckBox5.Checked then
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsProduto_Det.Close;
  fDMConsFaturamento.cdsProduto_Det.IndexFieldNames := '';
  fDMConsFaturamento.sdsProduto_Det.CommandText := ' SELECT (' + vDesc + ') VLR_TOTAL, V.ID_PRODUTO, V.REFERENCIA, V.NOME_PRODUTO_SERV, '
                                                 + ' V.QTD, V.unidade, V.vlr_unitario, V.vlr_total, V.num_nota, V.num_rps, V.filial, '
                                                 + ' V.NOME_CLIENTE, V.DTEMISSAO, V.dtentradasaida, V.VLR_DESCONTO,  V.SERIE, V.TIPO_MOV, '
                                                 + ' V.TIPO_ES, V.TIPO_REG, V.VLR_ICMSSUBST, V.ID_COR ';
  fDMConsFaturamento.sdsProduto_Det.CommandText := fDMConsFaturamento.sdsProduto_Det.CommandText + vComando;
  fDMConsFaturamento.cdsProduto_Det.Open;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota;
var
  vDesc: String;
begin
  vDesc := 'NT.VLR_DUPLICATA';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - NT.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - NT.VLR_IPI';
  //if CheckBox5.Checked then
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - NT.VLR_FRETE';

  fDMConsFaturamento.cdsNotaFiscal.Close;
  fDMConsFaturamento.sdsNotaFiscal.CommandText := 'SELECT NT.filial, NT.DTEMISSAO, NT.NUMNOTA, NT.SERIE, NT.ID_CLIENTE, CLI.NOME NOME_CLIENTE, '
                                                + 'NT.BASE_ICMS, NT.VLR_ICMS, (' + vDesc + ') VLR_DUPLICATA, NT.VLR_NOTA, NT.VLR_IPI, '
                                                + 'NT.VLR_ITENS, NT.VLR_IPI, NT.DTSAIDAENTRADA, NT.VLR_ICMSSUBST, VEN.NOME NOME_VENDEDOR, '
                                                + '(SELECT SUM(I.VLR_TOTAL) FROM NOTAFISCAL_ITENS I INNER JOIN TAB_CFOP CFOP ON I.ID_CFOP = CFOP.ID '
                                                + 'WHERE I.ID = NT.ID AND CFOP.FATURAMENTO = '+QuotedStr('S') +') VLR_FATURAMENTO '
                                                + 'FROM NOTAFISCAL NT '
                                                + 'INNER JOIN PESSOA CLI ON (NT.ID_CLIENTE = CLI.CODIGO) '
                                                + 'LEFT JOIN PESSOA VEN ON (NT.ID_VENDEDOR = VEN.CODIGO) '
                                                + 'WHERE NT.CANCELADA = ' + QuotedStr('N') + ' AND NT.nfedenegada = ' + QuotedStr('N')
                                                + ' AND (SELECT SUM(I.VLR_TOTAL) FROM NOTAFISCAL_ITENS I INNER JOIN '
                                                + 'TAB_CFOP CFOP ON I.ID_CFOP = CFOP.ID WHERE I.ID = NT.ID AND CFOP.FATURAMENTO = '
                                                + QuotedStr('S') + ') > 0 '
                                                + ' AND NT.TIPO_NOTA = ' + QuotedStr(fDMConsFaturamento.vTipo_Nota)
                                                + ' AND NT.TIPO_REG = ' + QuotedStr(fMenu.vTipo_Reg_Cons_Fat)
                                                + vComando
                                                + ' ORDER BY FILIAL, NUMNOTA ';
  fDMConsFaturamento.cdsNotaFiscal.Open;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota;
var
  vTexto: String;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  case cbImpCliente.ItemIndex of
    0: vTexto := 'FANTASIA';
    1: vTexto := 'NOME_CLIENTE';
  end;
  SMDBGrid5.DisableScroll;
  fRelFat_Nota                      := TfRelFat_Nota.Create(Self);
  fRelFat_Nota.RLDBText11.DataField := vTexto;
  fRelFat_Nota.fDMConsFaturamento   := fDMConsFaturamento;
  fRelFat_Nota.RLReport1.PreviewModal;
  fRelFat_Nota.RLReport1.Free;
  FreeAndNil(fRelFat_Nota);
  SMDBGrid5.EnableScroll;
end;

procedure TfrmConsFaturamento.SMDBGrid6TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid6.Columns.Count - 1 do
    if not (SMDBGrid6.Columns.Items[I] = Column) then
      SMDBGrid6.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.CheckBox2Click(Sender: TObject);
begin
  Label15.Visible             := CheckBox2.Checked;
  Label16.Visible             := CheckBox2.Checked;
  ceVlrIcmsSubst.Visible      := CheckBox2.Checked;
  ceVlrFaturamento_ST.Visible := CheckBox2.Checked;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_UF;
var
  vDesc: String;
begin
  vDesc := 'V.VLR_TOTAL';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - V.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  //if CheckBox5.Checked then
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsNotaFiscal_UF.Close;
  fDMConsFaturamento.cdsNotaFiscal_UF.IndexFieldNames := '';
  fDMConsFaturamento.sdsNotaFiscal_UF.CommandText := ' SELECT SUM (' + vDesc + ') VLR_TOTAL, V.UF, SUM(V.QTD) QTD, ';
  fDMConsFaturamento.sdsNotaFiscal_UF.CommandText   := fDMConsFaturamento.sdsNotaFiscal_UF.CommandText
                                                     + 'SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                     + 'SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_UF.CommandText := fDMConsFaturamento.sdsNotaFiscal_UF.CommandText + vComando;

  fDMConsFaturamento.sdsNotaFiscal_UF.CommandText := fDMConsFaturamento.sdsNotaFiscal_UF.CommandText
                                                   + ' GROUP BY V.UF ';
  fDMConsFaturamento.sdsNotaFiscal_UF.CommandText := fDMConsFaturamento.sdsNotaFiscal_UF.CommandText
                                                   + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_UF.Open;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_UF;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_UF.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid7.DisableScroll;
  fRelFat_UF                    := TfRelFat_UF.Create(Self);
  fRelFat_UF.fDMConsFaturamento := fDMConsFaturamento;
  fRelFat_UF.RLReport1.PreviewModal;
  fRelFat_UF.RLReport1.Free;
  FreeAndNil(fRelFat_UF);
  SMDBGrid7.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Consultar_Cupom;
var
  vDesc: String;
begin
  fDMConsFaturamento.cdsCupomFiscal.Close;
  fDMConsFaturamento.sdsCupomFiscal.CommandText := 'SELECT NT.FILIAL, NT.DTEMISSAO, NT.NUMCUPOM, NT.ID_CLIENTE, CLI.NOME NOME_CLIENTE, '
                                                 + 'NT.VLR_TOTAL, VEN.NOME NOME_VENDEDOR '
                                                 + 'FROM CUPOMFISCAL NT '
                                                 + 'LEFT JOIN PESSOA CLI ON (NT.ID_CLIENTE = CLI.CODIGO) '
                                                 + 'LEFT JOIN PESSOA VEN ON (NT.ID_VENDEDOR = VEN.CODIGO) '
                                                 + 'WHERE NT.CANCELADO = ' + QuotedStr('N')
                                                 + vComando
                                                 + ' ORDER BY NT.FILIAL, NT.NUMCUPOM ';
  fDMConsFaturamento.cdsCupomFiscal.Open;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Cupom;
begin
  if not(fDMConsFaturamento.cdsCupomFiscal.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  SMDBGrid8.DisableScroll;
  fRelFat_Cupom                    := TfRelFat_Cupom.Create(Self);
  fRelFat_Cupom.fDMConsFaturamento := fDMConsFaturamento;
  fRelFat_Cupom.RLReport1.PreviewModal;
  fRelFat_Cupom.RLReport1.Free;
  FreeAndNil(fRelFat_Cupom);
  SMDBGrid8.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Consultar_VendProd;
var
  vComandoGroup: String;
  i: Integer;
  vDesc: String;
  vComandoAux: String;
begin
  {vComandoGroup := '';
  i := PosEx('GROUP',fDMConsFaturamento.ctNotaFiscal_VendProd,0);
  if i > 0 then
  begin
    vComandoGroup := copy(fDMConsFaturamento.ctNotaFiscal_VendProd,i,(Length(fDMConsFaturamento.ctNotaFiscal_VendProd) - i) + 1);
    delete(fDMConsFaturamento.ctNotaFiscal_VendProd,i,(Length(fDMConsFaturamento.ctNotaFiscal_VendProd) - i) + 1);
  end;}
  if CheckBox2.Checked then
    vDesc := ' SUM(V.VLR_VENDAS - V.VLR_ICMSSUBST) VLR_VENDAS '
  else
    vDesc := ' SUM(V.VLR_VENDAS) VLR_VENDAS ';
  vComandoAux := 'SELECT v.tipo_mov, V.id_produto, V.referencia, V.nome_combinacao, V.id_cor, V.id_vendedor, V.nome_vendedor, V.NOME_ORIGINAL, V.NOME_PRODUTO_SERV, '
               + ' SUM (v.vlr_duplicata) VLR_DUPLICATA, SUM(v.QTD) QTD, SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, ' + vDesc + ', SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST '
               + 'FROM vfaturamento v '
               + vComando
               + 'GROUP BY v.tipo_mov, V.id_produto, V.referencia, V.nome_combinacao, V.id_cor, V.id_vendedor, V.nome_vendedor, V.NOME_ORIGINAL, V.NOME_PRODUTO_SERV '
               + 'Order BY VLR_DUPLICATA DESC';

  //vComando := fDMConsFaturamento.ctNotaFiscal_VendProd + ' ' + vComando + ' ' + vComandoGroup;
  fDMConsFaturamento.cdsNotaFiscal_VendProd.Close;
  fDMConsFaturamento.sdsNotaFiscal_VendProd.CommandText := vComandoAux;
  fDMConsFaturamento.cdsNotaFiscal_VendProd.Open;
end;

procedure TfrmConsFaturamento.prc_Consultar_VendCli;
var
  vComandoGroup: String;
  i: Integer;
  vDesc: String;
  vComandoAux: String;
begin
  {vComandoGroup := '';
  i := PosEx('GROUP',fDMConsFaturamento.ctNotaFiscal_VendCli,0);
  if i > 0 then
  begin
    vComandoGroup := copy(fDMConsFaturamento.ctNotaFiscal_VendCli,i,(Length(fDMConsFaturamento.ctNotaFiscal_VendCli) - i) + 1);
    delete(fDMConsFaturamento.ctNotaFiscal_VendCli,i,(Length(fDMConsFaturamento.ctNotaFiscal_VendCli) - i) + 1);
  end;
  vComando := fDMConsFaturamento.ctNotaFiscal_VendCli + ' ' + vComando + ' ' + vComandoGroup;}

  if CheckBox2.Checked then
    vDesc := ' SUM(V.VLR_VENDAS - V.VLR_ICMSSUBST) VLR_VENDAS '
  else
    vDesc := ' SUM(V.VLR_VENDAS) VLR_VENDAS ';

  vComandoAux := 'select v.tipo_mov, V.id_pessoa, V.nome_cliforn, V.id_vendedor, V.nome_vendedor, SUM (v.vlr_duplicata) VLR_DUPLICATA, SUM(v.QTD) QTD, '
               + ' SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, ' + vDesc + ', SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST '
               + ' from vfaturamento v '
               + vComando
               + ' GROUP BY v.tipo_mov, V.id_pessoa, V.nome_cliforn, V.id_vendedor, V.nome_vendedor '
               + ' order BY VLR_DUPLICATA desc ';

  fDMConsFaturamento.cdsNotaFiscal_VendCli.Close;
  fDMConsFaturamento.sdsNotaFiscal_VendCli.CommandText := vComandoAux;
  fDMConsFaturamento.cdsNotaFiscal_VendCli.Open;
end;

procedure TfrmConsFaturamento.prc_Consultar_Vend;
var
  vComandoGroup: String;
  i: Integer;
  vComandoAux: String;
  vDesc: String;
begin
  {vComandoGroup := '';
  i := PosEx('GROUP',fDMConsFaturamento.ctNotaFiscal_Vend,0);
  if i > 0 then
  begin
    vComandoGroup := copy(fDMConsFaturamento.ctNotaFiscal_Vend,i,(Length(fDMConsFaturamento.ctNotaFiscal_Vend) - i) + 1);
    delete(fDMConsFaturamento.ctNotaFiscal_Vend,i,(Length(fDMConsFaturamento.ctNotaFiscal_Vend) - i) + 1);
  end;
  vComando := fDMConsFaturamento.ctNotaFiscal_Vend + ' ' + vComando + ' ' + vComandoGroup;}
  if CheckBox2.Checked then
    vDesc := ' SUM(V.VLR_VENDAS - V.VLR_ICMSSUBST) VLR_VENDAS '
  else
    vDesc := ' SUM(V.VLR_VENDAS) VLR_VENDAS ';
  vComandoAux := 'Select v.tipo_mov, V.id_vendedor, V.nome_vendedor, SUM (v.vlr_duplicata) VLR_DUPLICATA, SUM(v.QTD) QTD, '
               + ' SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, ' + vDesc + ', SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST '
               + ' from vfaturamento v '
               + vComando
               + ' GROUP BY v.tipo_mov, V.id_vendedor, V.nome_vendedor '
               + ' order BY VLR_DUPLICATA desc ';
  fDMConsFaturamento.cdsNotaFiscal_Vend.Close;
  fDMConsFaturamento.sdsNotaFiscal_Vend.CommandText := vComandoAux;
  fDMConsFaturamento.cdsNotaFiscal_Vend.Open;
end;

procedure TfrmConsFaturamento.prc_Imprimir_VendedorProd;
var
  vArq: String;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_VendProd.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CheckBox3.Checked then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Vend_Prod.fr3'
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Vend_Prod2.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid11.DisableScroll;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid11.EnableScroll;
end;

procedure TfrmConsFaturamento.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
  begin
    fDMConsFaturamento.cdsNotaFiscal_VendProd.IndexFieldNames := 'NOME_VENDEDOR;REFERENCIA;NOME_ORIGINAL';
    fDMConsFaturamento.cdsNotaFiscal_VendCli.IndexFieldNames  := 'NOME_VENDEDOR;NOME_CLIFORN;ID_PESSOA';
    fDMConsFaturamento.cdsNotaFiscal_Vend.IndexFieldNames     := 'NOME_VENDEDOR';
  end
  else
  begin
    fDMConsFaturamento.cdsNotaFiscal_VendProd.IndexFieldNames := '';
    fDMConsFaturamento.cdsNotaFiscal_VendCli.IndexFieldNames  := '';
    fDMConsFaturamento.cdsNotaFiscal_Vend.IndexFieldNames     := '';
  end;
end;

procedure TfrmConsFaturamento.prc_Opcao_Rel_Vendedor;
begin
  if fDMConsFaturamento.qParametrosUSA_SERVICO.AsString = 'S' then
    fDMConsFaturamento.frxReport1.variables['ImpServico'] := QuotedStr('S')
  else
    fDMConsFaturamento.frxReport1.variables['ImpServico'] := QuotedStr('N');
  if CheckBox2.Checked then
    fDMConsFaturamento.frxReport1.variables['ImpST'] := QuotedStr('S')
  else
    fDMConsFaturamento.frxReport1.variables['ImpST'] := QuotedStr('N');
  if RxDBLookupCombo1.Text <> '' then
    fDMConsFaturamento.frxReport1.variables['NomeEmpresa'] := QuotedStr(RxDBLookupCombo1.Text)
  else
  begin
    fDMConsFaturamento.cdsFilial.First;
    fDMConsFaturamento.frxReport1.variables['NomeEmpresa'] := QuotedStr(fDMConsFaturamento.cdsFilialNOME.AsString);
  end;
  fDMConsFaturamento.frxReport1.variables['ImpOpcao'] := QuotedStr(fDMConsFaturamento.vDescOpcao_Rel);
end;

procedure TfrmConsFaturamento.prc_Imprimir_VendedorCli;
var
  vArq: String;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_VendCli.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CheckBox3.Checked then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Vend_Cli.fr3'
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Vend_Cli2.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid9.DisableScroll;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid9.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Vendedor;
var
  vArq: String;
begin
  if not(fDMConsFaturamento.cdsNotaFiscal_Vend.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Vend.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid10.DisableScroll;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid10.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_Cli_UF;
var
  vDesc: String;
begin
  if CheckBox2.Checked then
    vDesc := 'V.VLR_TOTAL - V.VLR_ICMSSUBST'
  else
    vDesc := 'V.VLR_TOTAL';

  fDMConsFaturamento.cdsNotaFiscal_Cli_UF.Close;
  fDMConsFaturamento.cdsNotaFiscal_Cli_UF.IndexFieldNames := '';
  fDMConsFaturamento.sdsNotaFiscal_Cli_UF.CommandText := 'SELECT V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.UF, '
                                                    + ' SUM (' + vDesc +')' + ' VLR_TOTAL, SUM(V.QTD) QTD, '
                                                    + ' SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                    + ' SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_Cli_UF.CommandText := fDMConsFaturamento.sdsNotaFiscal_Cli_UF.CommandText + vComando
                                                    + ' GROUP BY V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.UF '
                                                    + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_Cli_UF.Open;
end;

procedure TfrmConsFaturamento.SMDBGrid12TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal_Cli_UF.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid12.Columns.Count - 1 do
    if not (SMDBGrid12.Columns.Items[I] = Column) then
      SMDBGrid12.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_Cli_UF;
var
  vArq: String;
begin
  fDMConsFaturamento.cdsNotaFiscal_Cli_UF.IndexFieldNames := 'UF;Nome_Cliente';
  fDMConsFaturamento.cdsNotaFiscal_Cli_UF.First;
  if not(fDMConsFaturamento.cdsNotaFiscal_Cli_UF.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CheckBox3.Checked then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Cli_UF.fr3'
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Cli_UF.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid12.DisableScroll;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid12.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_Cli_Cid;
var
  vDesc: String;
begin
  if CheckBox2.Checked then
    vDesc := 'V.VLR_TOTAL - MOV.VLR_ICMSSUBST'
  else
    vDesc := 'V.VLR_TOTAL';

  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid.Close;
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid.IndexFieldNames := '';
  fDMConsFaturamento.sdsNotaFiscal_Cli_Cid.CommandText := 'SELECT V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.UF, V.CIDADE, '
                                                    + ' SUM (' + vDesc +')' + ' VLR_TOTAL, SUM(V.QTD) QTD, '
                                                    + ' SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                    + ' SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_Cli_Cid.CommandText := fDMConsFaturamento.sdsNotaFiscal_Cli_Cid.CommandText + vComando
                                                    + ' GROUP BY V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.UF, V.CIDADE '
                                                    + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid.Open;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_Cli_Cid;
var
  vArq: String;
begin
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid.IndexFieldNames := 'UF;CIDADE;Nome_Cliente';
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid.First;
  if not(fDMConsFaturamento.cdsNotaFiscal_Cli_Cid.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CheckBox3.Checked then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Cli_Cid.fr3'
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Cli_Cid.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid13.DisableScroll;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid13.EnableScroll;
end;

procedure TfrmConsFaturamento.SMDBGrid13TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid13.Columns.Count - 1 do
    if not (SMDBGrid13.Columns.Items[I] = Column) then
      SMDBGrid13.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_UF_Produto;
var
  vDesc: String;
begin
  vDesc := 'V.VLR_TOTAL';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - V.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  //if CheckBox5.Checked then
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsProduto_UF.Close;
  fDMConsFaturamento.cdsProduto_UF.IndexFieldNames := '';
  fDMConsFaturamento.sdsProduto_UF.CommandText     := ' SELECT V.ID_PRODUTO, V.REFERENCIA, V.NOME_PRODUTO_SERV, gr.nome nome_grupo, '
                                                    + ' gr.codigo COD_GRUPO, gr.cod_principal COD_GRUPO_PRI, V.UF, '
                                                    + ' SUM ('+ vDesc + ') VLR_TOTAL, V.TIPO_MOV, V.TIPO_REG, V.TIPO_ES, '
                                                    + ' SUM(V.QTD) QTD, SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, '
                                                    + ' SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                    + ' SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsProduto_UF.CommandText := fDMConsFaturamento.sdsProduto_UF.CommandText + vComando
                                                        + ' GROUP BY V.ID_PRODUTO, V.REFERENCIA, V.NOME_PRODUTO_SERV, V.TIPO_MOV, '
                                                        + ' V.TIPO_REG, V.TIPO_ES, gr.nome, gr.codigo, gr.cod_principal, V.UF '
                                                        + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsProduto_UF.Open;
end;

procedure TfrmConsFaturamento.SMDBGrid14TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsProduto_UF.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid14.Columns.Count - 1 do
    if not (SMDBGrid14.Columns.Items[I] = Column) then
      SMDBGrid14.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.SMDBGrid7TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'clPerc_SobreFat' then
    exit;
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsNotaFiscal_UF.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid7.Columns.Count - 1 do
    if not (SMDBGrid7.Columns.Items[I] = Column) then
      SMDBGrid7.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Produto_UF;
var
  vArq: String;
begin
  fDMConsFaturamento.cdsProduto_UF.IndexFieldNames := 'UF;COD_GRUPO;REFERENCIA';
  fDMConsFaturamento.cdsProduto_UF.First;
  if not(fDMConsFaturamento.cdsProduto_UF.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Prod_UF.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid14.DisableScroll;
  prc_Gravar_mGrupoAux;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid14.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Gravar_mGrupoAux;
begin
  fDMConsFaturamento.mGrupoAux.EmptyDataSet;

  fDMConsFaturamento.cdsProduto_UF.First;
  while not fDMConsFaturamento.cdsProduto_UF.Eof do
  begin
    if fDMConsFaturamento.mGrupoAux.Locate('CodGrupo',fDMConsFaturamento.cdsProduto_UFCOD_GRUPO.AsString,[loCaseInsensitive]) then
      fDMConsFaturamento.mGrupoAux.Edit
    else
    begin
      fDMConsFaturamento.mGrupoAux.Insert;
      fDMConsFaturamento.mGrupoAuxCodGrupo.AsString        := fDMConsFaturamento.cdsProduto_UFCOD_GRUPO.AsString;
      fDMConsFaturamento.mGrupoAuxNome_Grupo.AsString      := fDMConsFaturamento.cdsProduto_UFNOME_GRUPO.AsString;
      fDMConsFaturamento.mGrupoAuxVlr_Duplicata.AsFloat    := 0;
      fDMConsFaturamento.mGrupoAuxVlr_Liquido_NFSe.AsFloat := 0;
      fDMConsFaturamento.mGrupoAuxVlr_Vendas.AsFloat       := 0;
      fDMConsFaturamento.mGrupoAuxVlr_ICMSSubst.AsFloat    := 0;
      fDMConsFaturamento.mGrupoAuxQtd.AsFloat              := 0;
    end;
    fDMConsFaturamento.mGrupoAuxVlr_Duplicata.AsFloat    := fDMConsFaturamento.mGrupoAuxVlr_Duplicata.AsFloat + fDMConsFaturamento.cdsProduto_UFVLR_TOTAL.AsFloat;
    fDMConsFaturamento.mGrupoAuxVlr_Liquido_NFSe.AsFloat := fDMConsFaturamento.mGrupoAuxVlr_Liquido_NFSe.AsFloat + fDMConsFaturamento.cdsProduto_UFVLR_LIQUIDO_NFSE.AsFloat;
    fDMConsFaturamento.mGrupoAuxVlr_Vendas.AsFloat       := fDMConsFaturamento.mGrupoAuxVlr_Vendas.AsFloat + fDMConsFaturamento.cdsProduto_UFVLR_VENDAS.AsFloat;
    fDMConsFaturamento.mGrupoAuxVlr_ICMSSubst.AsFloat    := fDMConsFaturamento.mGrupoAuxVlr_ICMSSubst.AsFloat + fDMConsFaturamento.cdsProduto_UFVLR_ICMSSUBST.AsFloat;
    fDMConsFaturamento.mGrupoAuxQtd.AsFloat              := fDMConsFaturamento.mGrupoAuxQtd.AsFloat + fDMConsFaturamento.cdsProduto_UFQTD.AsFloat;
    fDMConsFaturamento.mGrupoAux.Post;
    fDMConsFaturamento.cdsProduto_UF.Next;
  end;
end;

procedure TfrmConsFaturamento.prc_Imprimir_Grupo_UF;
var
  vArq: String;
begin
  fDMConsFaturamento.cdsGrupo_UF.IndexFieldNames := 'UF;COD_GRUPO';
  fDMConsFaturamento.cdsGrupo_UF.First;
  if not(fDMConsFaturamento.cdsGrupo_UF.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Grupo_UF.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid15.DisableScroll;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid15.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_UF_Grupo;
var
  vDesc: String;
begin
  vDesc := 'V.VLR_TOTAL';
  if CheckBox2.Checked then
    vDesc := vDesc + ' - V.VLR_ICMSSUBST';
  if CheckBox4.Checked then
    vDesc := vDesc + ' - V.VLR_IPI';
  //if CheckBox5.Checked then
  if (CheckBox5.Checked) and (fDMConsFaturamento.qParametros_NFeMOSTRAR_VLR_FRETE_CONS.AsString = 'S') then
    vDesc := vDesc + ' - V.VLR_FRETE';

  fDMConsFaturamento.cdsGrupo_UF.Close;
  fDMConsFaturamento.cdsGrupo_UF.IndexFieldNames := '';
  fDMConsFaturamento.sdsGrupo_UF.CommandText     := 'SELECT gr.nome nome_grupo, gr.codigo COD_GRUPO, gr.cod_principal COD_GRUPO_PRI, V.UF, '
                                                  + ' gr.codigo COD_GRUPO, gr.cod_principal COD_GRUPO_PRI, V.UF, '
                                                  + ' SUM ('+ vDesc + ') VLR_TOTAL, V.TIPO_MOV, V.TIPO_REG, V.TIPO_ES, '
                                                  + ' SUM(V.QTD) QTD, SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, '
                                                  + ' SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                  + ' SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsGrupo_UF.CommandText := fDMConsFaturamento.sdsGrupo_UF.CommandText + vComando
                                                        + ' GROUP BY V.TIPO_MOV, '
                                                        + ' V.TIPO_REG, V.TIPO_ES, gr.nome, gr.codigo, gr.cod_principal, V.UF '
                                                        + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsGrupo_UF.Open;
end;

procedure TfrmConsFaturamento.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel(planilha, vDados);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_' + RzPageControl1.ActivePage.Caption;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmConsFaturamento.Imprimir1Click(Sender: TObject);
begin
  prc_Monta_Cab;
  case cbImpCliente.ItemIndex of
    0: vImpCliente_RF := 'F';
    1: vImpCliente_RF := 'R';
  end;
  if RzPageControl1.ActivePage = TS_Cliente then
  begin
    if RzPageControl3.ActivePage = TS_Cliente_Acum then
      prc_Imprimir_Nota_Cli
    else
    if RzPageControl3.ActivePage = TS_Cliente_UF then
      prc_Imprimir_Nota_Cli_UF
    else
    if RzPageControl3.ActivePage = TS_Cliente_Cid then
      prc_Imprimir_Nota_Cli_Cid
    else
      prc_Imprimir_Nota_Cli_Cid_Det;
  end
  else
  if RzPageControl1.ActivePage = TS_Cliente_Prod then
    prc_Imprimir_Nota_CliProd
  else
  if RzPageControl1.ActivePage = TS_Produto then
    prc_Imprimir_Nota_Prod
  else
  if RzPageControl1.ActivePage = TS_DTEmissao then
    prc_Imprimir_Nota_DT
  else
  if RzPageControl1.ActivePage = TS_Produto_Det then
    prc_Imprimir_Produto_Det
  else
  if RzPageControl1.ActivePage = TS_Nota then
    prc_Imprimir_Nota
  else
  if RzPageControl1.ActivePage = TS_UF then
  begin
    if RzPageControl4.ActivePage = TS_UF_Acumulado then
      prc_Imprimir_Nota_UF
    else
    if RzPageControl4.ActivePage = TS_UF_Produto then
      prc_Imprimir_Produto_UF
    else
    if RzPageControl4.ActivePage = TS_UF_Grupo then
      prc_Imprimir_Grupo_UF;
  end
  else
  if RzPageControl1.ActivePage = TS_Cupom then
    prc_Imprimir_Cupom
  else
  if RzPageControl1.ActivePage = TS_ReciboNF then
    prc_Imprimir_ReciboNF
  else
  if RzPageControl1.ActivePage = TS_Vendedor then
  begin
    if RzPageControl2.ActivePage = TS_Vendedor_Prod then
      prc_Imprimir_VendedorProd
    else
    if RzPageControl2.ActivePage = TS_Vendedor_Cli then
      prc_Imprimir_VendedorCli
    else
      prc_Imprimir_Vendedor;
  end;
end;

procedure TfrmConsFaturamento.Excel1Click(Sender: TObject);
begin
  case RzPageControl1.ActivePageIndex of
    0: case RzPageControl3.ActivePageIndex of
         0: prc_CriaExcel(SMDBGrid1.DataSource);
         1: prc_CriaExcel(SMDBGrid12.DataSource);
         2: prc_CriaExcel(SMDBGrid13.DataSource);
       end;
    1: prc_CriaExcel(SMDBGrid2.DataSource);
    2: prc_CriaExcel(SMDBGrid3.DataSource);
    3: prc_CriaExcel(SMDBGrid4.DataSource);
    4: case RzPageControl4.ActivePageIndex of
         0: prc_CriaExcel(SMDBGrid7.DataSource);
         1: prc_CriaExcel(SMDBGrid14.DataSource);
         2: prc_CriaExcel(SMDBGrid15.DataSource);
       end;
    5: prc_CriaExcel(SMDBGrid5.DataSource);
    6: prc_CriaExcel(SMDBGrid6.DataSource);
    7: prc_CriaExcel(SMDBGrid8.DataSource);
    8: prc_CriaExcel(SMDBGrid17.DataSource);
    9: case RzPageControl2.ActivePageIndex of
         0: prc_CriaExcel(SMDBGrid10.DataSource);
         1: prc_CriaExcel(SMDBGrid9.DataSource);
         2: prc_CriaExcel(SMDBGrid11.DataSource);
         3: prc_CriaExcel(SMDBGrid16.DataSource);
       end;
  end;
end;

procedure TfrmConsFaturamento.prc_Consultar_Vend_Cli_Prod;
begin
  if RxDbLookupCombo1.Value = '' then
  begin
    ShowMessage('Selecione a Filial!');
    RxDbLookupCombo1.SetFocus;
    Exit;
  end;
  fDMConsFaturamento.cdsVendCliProd.Close;
  fDmConsFaturamento.sdsVendCliProd.ParamByName('D1').AsDate := DateEdit1.Date;
  fDmConsFaturamento.sdsVendCliProd.ParamByName('D2').AsDate := DateEdit2.Date;
  fDmConsFaturamento.sdsVendCliProd.ParamByName('F1').AsInteger := RxDbLookupCombo1.KeyValue;
  fDMConsFaturamento.cdsVendCliProd.Open;
end;

procedure TfrmConsFaturamento.SMDBGrid8TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsFaturamento.cdsCupomFiscal.IndexFieldNames := ColunaOrdenada;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsFaturamento.prc_Consultar_ReciboNF;
var
  vDesc: String;
begin
  fDMConsFaturamento.cdsReciboNF.Close;
  fDMConsFaturamento.sdsReciboNF.CommandText := 'SELECT NT.FILIAL, NT.DTEMISSAO, NT.NUMNOTA, NT.SERIE, NT.ID_CLIENTE, CLI.NOME NOME_CLIENTE,'
                                                + ' NT.VLR_NOTA, NT.VLR_ITENS, NT.DTSAIDAENTRADA, VEN.NOME NOME_VENDEDOR, NT.VLR_NOTA VLR_FATURAMENTO'
                                                + ' FROM NOTAFISCAL NT'
                                                + ' INNER JOIN PESSOA CLI on (NT.ID_CLIENTE = CLI.CODIGO)'
                                                + ' LEFT JOIN PESSOA VEN on (NT.ID_VENDEDOR = VEN.CODIGO)'
                                                + ' WHERE NT.CANCELADA = ' + QuotedStr('N')
                                                + ' AND NT.NFEDENEGADA = ' + QuotedStr('N')
                                                + ' AND NT.TIPO_REG = ' + QuotedStr('RNF')
                                                + vComando
                                                + ' ORDER BY FILIAL, NUMNOTA ';
  fDMConsFaturamento.cdsReciboNF.Open;
end;

procedure TfrmConsFaturamento.prc_Imprimir_ReciboNF;
var
  vTexto: String;
begin
  if not(fDMConsFaturamento.cdsReciboNF.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  case cbImpCliente.ItemIndex of
    0: vTexto := 'FANTASIA';
    1: vTexto := 'NOME_CLIENTE';
  end;
  SMDBGrid17.DisableScroll;
  fRelFat_ReciboNF                      := TfRelFat_ReciboNF.Create(Self);
  fRelFat_ReciboNF.RLDBText11.DataField := vTexto;
  fRelFat_ReciboNF.fDMConsFaturamento   := fDMConsFaturamento;
  fRelFat_ReciboNF.RLReport1.PreviewModal;
  fRelFat_ReciboNF.RLReport1.Free;
  FreeAndNil(fRelFat_ReciboNF);
  SMDBGrid17.EnableScroll;
end;

procedure TfrmConsFaturamento.prc_Ajustar_Grids(Grid: TSMDBGrid);
var
  i : Integer;
begin
  for i := 0 to Grid.ColCount - 2 do
  begin
    if (Grid.Columns[i].FieldName = 'VLR_LIQUIDO_NFSE') or (Grid.Columns[i].FieldName = 'NOME_VENDEDOR') then
      Grid.Columns[i].Visible := (fMenu.vTipo_Reg_Cons_Fat <> 'NTE');
    if (Grid.Columns[i].FieldName = 'clPerc_SobreFat') then
    begin
      if (fMenu.vTipo_Reg_Cons_Fat = 'NTE') then
        Grid.Columns[i].Title.Caption := '% Sobre Compras'
      else
        Grid.Columns[i].Title.Caption := '% Sobre Faturamento';
    end;
    if (Grid.Columns[i].FieldName = 'VLR_VENDAS') then
    begin
      if (fMenu.vTipo_Reg_Cons_Fat = 'NTE') then
        Grid.Columns[i].Title.Caption := 'Vlr. Compras'
      else
        Grid.Columns[i].Title.Caption := 'Vlr. Vendas';
    end;
    if (Grid.Columns[i].FieldName = 'VLR_FATURAMENTO') then
    begin
      if (fMenu.vTipo_Reg_Cons_Fat = 'NTE') then
        Grid.Columns[i].Title.Caption := 'Vlr. Compras'
      else
        Grid.Columns[i].Title.Caption := 'Vlr. Faturamento';
    end;
  end;
end;

procedure TfrmConsFaturamento.prc_Consultar_Nota_Cli_Cid_Det;
var
  vDesc : string;
begin
  if CheckBox2.Checked then
    vDesc := 'V.VLR_TOTAL - MOV.VLR_ICMSSUBST'
  else
    vDesc := 'V.VLR_TOTAL';

  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid_Det.Close;
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid_Det.IndexFieldNames := '';
  fDMConsFaturamento.sdsNotaFiscal_Cli_Cid_Det.CommandText := 'SELECT V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.UF, V.CIDADE, V.DTEMISSAO, '
                                                    + ' SUM (' + vDesc +')' + ' VLR_TOTAL, SUM(V.QTD) QTD, SUM(V.VLR_ICMS) VALOR_ICMS, '
                                                    + ' SUM(V.VLR_LIQUIDO_NFSE) VLR_LIQUIDO_NFSE, SUM(' + vDesc + ' - V.VLR_LIQUIDO_NFSE) VLR_VENDAS, '
                                                    + ' SUM(V.BASE_ICMS) BASE_ICMS, SUM(V.BASE_ICMS_ST) BASE_ICMSST, SUM(V.VLR_ICMSSUBST) VLR_ICMSSUBST ';
  fDMConsFaturamento.sdsNotaFiscal_Cli_Cid_Det.CommandText := fDMConsFaturamento.sdsNotaFiscal_Cli_Cid_Det.CommandText + vComando
                                                    + ' GROUP BY V.ID_PESSOA, V.CANCELADO, V.NOME_CLIENTE, V.FANTASIA, V.UF, V.CIDADE, V.DTEMISSAO '
                                                    + ' ORDER BY VLR_TOTAL DESC ';
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid_Det.Open;

end;

procedure TfrmConsFaturamento.prc_Imprimir_Nota_Cli_Cid_Det;
var
  vArq : String;
begin
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid_Det.IndexFieldNames := 'UF;CIDADE;Nome_Cliente;DTEMISSAO';
  fDMConsFaturamento.cdsNotaFiscal_Cli_Cid_Det.First;
  if not(fDMConsFaturamento.cdsNotaFiscal_Cli_Cid_Det.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CheckBox3.Checked then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Cli_Cid_Det.fr3'
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Cli_Cid_Det.fr3';
  if FileExists(vArq) then
    fDMConsFaturamento.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  SMDBGrid13.DisableScroll;
  prc_Opcao_Rel_Vendedor;
  fDMConsFaturamento.frxReport1.ShowReport;
  SMDBGrid13.EnableScroll;
end;

end.
