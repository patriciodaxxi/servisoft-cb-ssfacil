unit UGerar_Lote_Calc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadLote, StdCtrls,DB, dbXPress,
  SqlExpr, RzTabs, CurrEdit, Mask, ToolEdit, RxLookup, Menus, UCBase, ExtCtrls, NxCollection, NxEdit, DBVGrids, RzPanel,
  Grids, DBGrids, SMDBGrid, ComCtrls;

type
  TfrmGerar_Lote_Calc = class(TForm)
    RzPageControl2: TRzPageControl;
    TS_Gerar: TRzTabSheet;
    TS_Consulta: TRzTabSheet;
    PopupMenu1: TPopupMenu;
    Lote1: TMenuItem;
    Panel2: TPanel;
    btnExcluir: TNxButton;
    pnlPesquisa: TPanel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    cbxOpcao: TNxComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cbxOpcaoData: TNxComboBox;
    btnConsultar: TNxButton;
    Shape2: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    NxLabel2: TNxLabel;
    CurrencyEdit3: TCurrencyEdit;
    btnImprimir: TNxButton;
    pnlCadastro: TPanel;
    FolhaResumo1: TMenuItem;
    SMDBGrid2: TSMDBGrid;
    VDBGrid1: TVDBGrid;
    TS_Auxiliar: TRzTabSheet;
    Panel3: TPanel;
    NxLabel1: TNxLabel;
    NxLabel8: TNxLabel;
    NxLabel9: TNxLabel;
    NxLabel10: TNxLabel;
    NxLabel11: TNxLabel;
    Shape1: TShape;
    Label3: TLabel;
    NxLabel12: TNxLabel;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    cbOpcaoTalaoAux: TNxComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    NxComboBox2: TNxComboBox;
    btnConsultar_Talao_Aux: TNxButton;
    CurrencyEdit6: TCurrencyEdit;
    SMDBGrid3: TSMDBGrid;
    NxLabel13: TNxLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    NxLabel14: TNxLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    VDBGrid2: TVDBGrid;
    Shape3: TShape;
    Label4: TLabel;
    btnImpTalao_Aux: TNxButton;
    UCControls1: TUCControls;
    Panel4: TPanel;
    TS_Pedidos: TRzTabSheet;
    Panel5: TPanel;
    btnConsultar_Pedidos_Ord: TNxButton;
    NxLabel15: TNxLabel;
    CurrencyEdit7: TCurrencyEdit;
    SMDBGrid4: TSMDBGrid;
    TS_Atualizar: TRzTabSheet;
    NxLabel16: TNxLabel;
    CurrencyEdit8: TCurrencyEdit;
    btnAtualizar_Mat: TNxButton;
    Label8: TLabel;
    btnGerarTalao_Aux: TNxButton;
    Label9: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    Edit4: TEdit;
    PopupMenu2: TPopupMenu;
    MarcarDesmarcargerarOCIndividual1: TMenuItem;
    MarcarCampoGerarOC1: TMenuItem;
    MarcartodososcampoparagerarOC1: TMenuItem;
    Desmarcartodos1: TMenuItem;
    MarcarDesmarcarPedido1: TMenuItem;
    RzGroupBox1: TRzGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DateEdit6: TDateEdit;
    DateEdit7: TDateEdit;
    btnConsultar_Pedidos: TNxButton;
    Label14: TLabel;
    Edit5: TEdit;
    Label15: TLabel;
    DateEdit8: TDateEdit;
    Label16: TLabel;
    DateEdit9: TDateEdit;
    ckFaturado: TNxCheckBox;
    RzGroupBox2: TRzGroupBox;
    gbxCarimbo: TRzGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    DateEdit3: TDateEdit;
    Shape4: TShape;
    Label13: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ckDtEntrega: TCheckBox;
    ckAgrupar: TCheckBox;
    ckAgrupar_Pedido: TCheckBox;
    NxPanel1: TNxPanel;
    ImprimirOrdemProduo1: TMenuItem;
    RzPageControl1: TRzPageControl;
    TS_Item: TRzTabSheet;
    TS_Pedido: TRzTabSheet;
    GroupBox1: TGroupBox;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    GroupBox2: TGroupBox;
    SMDBGrid5: TSMDBGrid;
    StaticText2: TStaticText;
    PopupMenu3: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    ProgressBar1: TProgressBar;
    Personalizado1: TMenuItem;
    Personalizado11: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultar_PedidosClick(Sender: TObject);
    procedure ckDtEntregaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lote1Click(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure FolhaResumo1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btnConsultar_Talao_AuxClick(Sender: TObject);
    procedure cbOpcaoTalaoAuxChange(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImpTalao_AuxClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure btnConsultar_Pedidos_OrdClick(Sender: TObject);
    procedure btnAtualizar_MatClick(Sender: TObject);
    procedure btnGerarTalao_AuxClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure CurrencyEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MarcarDesmarcargerarOCIndividual1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure MarcarCampoGerarOC1Click(Sender: TObject);
    procedure MarcarDesmarcarPedido1Click(Sender: TObject);
    procedure MarcartodososcampoparagerarOC1Click(Sender: TObject);
    procedure Desmarcartodos1Click(Sender: TObject);
    procedure ImprimirOrdemProduo1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Personalizado11Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadLote: TDMCadLote;
    vNumLote: Integer;
    vNumOrdem: Integer;
    vNumPedido: Integer;
    vItem_Mat: Integer;
    vQtd_Produto: Real;
    vQtd_Selecionada: Real;

    procedure prc_Consultar;
    procedure prc_Consultar_Ped;
    procedure prc_Gerar_Lote;
    procedure prc_Gerar_Talao;
    procedure prc_Gerar_Talao_Proc;
    procedure prc_Consultar_Lote;
    procedure prc_Le_mLote;

    procedure prc_Limpar_Auxiliar;
    procedure prc_Limpar_Var;

    procedure prc_Controle_Talao_Auxiliar;
    procedure prc_Gravar_Talao_Aux(Qtd: Real);
    procedure prc_Gravar_Talao_Aux_Tam(Qtd: Real);

    procedure prc_Consultar_Talao_Aux;

    procedure prc_Gravar_mLoteAux(Qtd: Integer);
    procedure prc_Gravar_mTalaoAux(Qtd: Real ; ID: Integer);

    procedure prc_Gerar_Materiais(Tipo : String); //L=Lote  T=Talão
    procedure prc_Abrir_Lote_Mat(Num_Ordem: Integer);
    procedure prc_Gravar_Lote_Mat(Num_Ordem, ID_Material, ID_Cor, ID_Fornecedor: Integer ; Carimbo, Tamanho: String ; Qtd_Consumo, Qtd_Produto: Real);
    procedure prc_Consultar_Pedido_Ord;
    function fnc_Ordem_Producao_OC: Boolean;
    procedure prc_Atualizar_Material;

    procedure prc_Marcar_Desmarcar(Tipo : String); //I=Item   R=Referência   P=Pedido   TM=Total    TD=Total
    procedure prc_Marcar_Desmarcar_PED(Tipo : String); //P=Pedido   TM=Total marcar    TD=Total Desmarcar

    procedure prc_Gravar_mPedTalao;

    procedure prc_Gravar_cdsTalao(Qtd: Real);
    procedure prc_Gravar_cdsTalao_Ped(Qtd: Real);
    procedure prc_Gravar_cdsTalao_Processo;

    procedure prc_Le_cdsPendente(ID : Integer);
    procedure prc_Embalagem;

  public
    { Public declarations }
  end;

var
  frmGerar_Lote_Calc: TfrmGerar_Lote_Calc;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao, USel_Produto, UMenu, URelLote,
  URelLote_Res, URelTalao_Rot, URelTalao_Aux, UDMLoteImp, URelLote2;

{$R *.dfm}

procedure TfrmGerar_Lote_Calc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_Lote_Calc.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadLote := TDMCadLote.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
  DateEdit3.Date := Date;
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'Carimbo') then
      SMDBGrid2.Columns[i].Visible := (fDMCadLote.qParametrosUSA_CARIMBO.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'Nome_Combinacao') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadLote.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadLote.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
    if (SMDBGrid2.Columns[i].FieldName = 'Nome_Lote') or (SMDBGrid2.Columns[i].FieldName = 'ID_Produto') or (SMDBGrid2.Columns[i].FieldName = 'DtEntrega') then
      SMDBGrid2.Columns[i].Visible := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString <> 'P');
    if (SMDBGrid2.Columns[i].FieldName = 'Talao_Aux_Gerado') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString <> 'P') and (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S'));
    if (SMDBGrid2.Columns[i].FieldName = 'Pedido_Cliente') or (SMDBGrid2.Columns[i].FieldName = 'Num_Pedido') or (SMDBGrid2.Columns[i].FieldName = 'Nome_Cliente') or
       (SMDBGrid2.Columns[i].FieldName = 'Descricao_Tipo') then
      SMDBGrid2.Columns[i].Visible := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'ID_Produto') or (SMDBGrid2.Columns[i].FieldName = 'Referencia') or (SMDBGrid2.Columns[i].FieldName = 'Nome_Produto') then
      SMDBGrid2.Columns[i].Visible := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S');
  end;
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'CARIMBO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadLote.qParametrosUSA_CARIMBO.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'NOME_COMBINACAO') then
      SMDBGrid1.Columns[i].Visible := ((fDMCadLote.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadLote.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
  end;
  TS_Auxiliar.TabVisible := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S');
  btnGerarTalao_Aux.Visible := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S');
  Shape2.Visible := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S');
  Label1.Visible := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S');
  fDMCadLote.qProxima_Ordem.Close;
  fDMCadLote.qProxima_Ordem.Open;
  CurrencyEdit3.AsInteger := fDMCadLote.qProxima_OrdemNUM_ORDEM.AsInteger;
  VDBGrid1.Visible := (fDMCadLote.qParametrosUSA_GRADE.AsString = 'S');
  Label9.Visible := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString <> 'P');
  Edit3.Visible  := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString <> 'P');
  pnlCadastro.Visible  := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString <> 'P');

  ImprimirOrdemProduo1.Visible := (fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'P');

  TS_Item.TabVisible   := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S');
  TS_Pedido.TabVisible := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString = 'S');
  Label15.Visible      := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S');
  Label16.Visible      := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S');
  DateEdit8.Visible    := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S');
  DateEdit9.Visible    := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S');
  if fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString = 'S' then
    RzPageControl1.ActivePage := TS_Pedido
  else
    RzPageControl1.ActivePage := TS_Item;
  ckFaturado.Visible := (fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S');
  if fDMCadLote.qParametros_PedPERMITE_ALT_NOMEPROD.AsString = 'S' then
  begin
    ckAgrupar.Checked        := False;
    ckAgrupar_Pedido.Checked := False;
    ckAgrupar.Visible        := True;
    ckAgrupar_Pedido.Visible := True;
  end;
end;

procedure TfrmGerar_Lote_Calc.btnConsultar_PedidosClick(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Item then
    prc_Consultar
  else
    prc_Consultar_Ped;
end;

procedure TfrmGerar_Lote_Calc.prc_Consultar;
var
  vTextoData : String;
begin
  if fDMCadLote.qParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P' then
    vTextoData := 'PED.DTENTREGA'
  else
    vTextoData := 'PI2.DTENTREGA';
  Label12.Caption  := '0';
  vQtd_Selecionada := 0;
  fDMCadLote.cdsPendente.Close;
  fDMCadLote.sdsPendente.CommandText := fDMCadLote.ctPendente;
  if fDMCadLote.qParametros_LoteUSA_GEROU_LOTE_PROD.AsString = 'S' then
  begin
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText
                                        + ' AND ((PI2.GEROU_LOTE_PROD = ' + QuotedStr('N') + ') OR (PI2.GEROU_LOTE_PROD IS NULL))'
  end
  else
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText
                                        + ' AND NOT EXISTS( SELECT 1 FROM TALAO_PED '
                                        + ' WHERE TALAO_PED.ID_PEDIDO =  PI2.ID AND TALAO_PED.ITEM_PEDIDO = PI2.ITEM) ';
  if not ckFaturado.Checked then
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText + ' AND PI2.QTD_RESTANTE > 0';
  if DateEdit6.Date > 10 then
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  if DateEdit7.Date > 10 then
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit7.date));
  if DateEdit8.Date > 10 then
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText + ' AND ' + vTextoData + '  >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit8.date));
  if DateEdit9.Date > 10 then
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText + ' AND ' + vTextoData + '  <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit9.date));
  if trim(Edit5.Text) <> '' then
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText + ' AND  CLI.NOME LIKE ' + QuotedStr('%'+Edit5.Text+'%');
  fDMCadLote.cdsPendente.Open;
  fDMCadLote.cdsPendente.IndexFieldNames := 'NUM_PEDIDO;REFERENCIA;ID_PRODUTO;TAMANHO';
end;

procedure TfrmGerar_Lote_Calc.prc_Gerar_Lote;
var
  vData: TDateTime;
  vCarimboAux: String;
  vID_CombinacaoAux: Integer;
  vNumPedAux: Integer;
begin
  if ckDtEntrega.Checked then
    vData := fDMCadLote.cdsPendenteDTENTREGA.AsDateTime
  else
    vData := DateEdit3.Date;
  vCarimboAux       := '';
  vID_CombinacaoAux := 0;
  //16/07/2015 foi incluido o if do combobox1
  if (ComboBox1.ItemIndex = 1) and (trim(Edit1.Text) <> '') then
    vCarimboAux := Edit1.Text
  else
  if fDMCadLote.cdsPendenteCARIMBO.AsString <> '' then
    vCarimboAux := fDMCadLote.cdsPendenteCARIMBO.AsString;

  if fDMCadLote.cdsPendenteID_COR.AsInteger > 0 then
    vID_CombinacaoAux := fDMCadLote.cdsPendenteID_COR.AsInteger;
  if not ckAgrupar_Pedido.Checked then
    vNumPedAux := fDMCadLote.cdsPendenteNUM_PEDIDO.AsInteger
  else
    vNumPedAux := 0;

  if not(ckAgrupar_Pedido.Checked) and (vNumPedido <> fDMCadLote.cdsPendenteNUM_PEDIDO.AsInteger) then
    fDMCadLote.prc_Inserir
  else
  if not(ckAgrupar.Checked)  then
    fDMCadLote.prc_Inserir
  //if not(ckAgrupar_Pedido.Checked) and not(fDMCadLote.cdsLote.Locate('ID_PRODUTO;DTENTREGA;CARIMBO;ID_COMBINACAO',VarArrayOf([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vData,vCarimboAux,vID_CombinacaoAux]),[locaseinsensitive])) then
  //  fDMCadLote.prc_Inserir
  //else
  else
  if fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString = 'S' then
  begin
    if fDMCadLote.cdsLote.Locate('ID_PEDIDO',fDMCadLote.cdsPendenteID.AsInteger,[loCaseInsensitive]) then
      fDMCadLote.cdsLote.Edit
    else
      fDMCadLote.prc_Inserir;
  end
  else
  if fDMCadLote.cdsLote.Locate('ID_PRODUTO;DTENTREGA;CARIMBO;ID_COMBINACAO;NUM_PEDIDO',VarArrayOf([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vData,vCarimboAux,vID_CombinacaoAux,vNumPedAux]),[locaseinsensitive]) then
    fDMCadLote.cdsLote.Edit
  else
    fDMCadLote.prc_Inserir;

  if fDMCadLote.cdsLote.State in [dsInsert] then
  begin
    fDMCadLote.cdsLoteQTD_TALOES.AsInteger    := 0;
    fDMCadLote.cdsLoteDTEMISSAO.AsDateTime    := Date;
    fDMCadLote.cdsLoteHREMISSAO.AsDateTime    := Now;
    if fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString = 'S' then
    begin
      fDMCadLote.cdsLoteID_PEDIDO.AsInteger  := fDMCadLote.cdsPendenteID.AsInteger;
      fDMCadLote.cdsLoteNUM_PEDIDO.AsInteger := fDMCadLote.cdsPendenteNUM_PEDIDO.AsInteger;
    end
    else
    begin
      fDMCadLote.cdsLoteID_PRODUTO.AsInteger    := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
      fDMCadLote.cdsLoteID_COMBINACAO.AsInteger := vID_CombinacaoAux;
      fDMCadLote.cdsLoteCARIMBO.AsString        := vCarimboAux;
      fDMCadLote.cdsLoteNUM_PEDIDO.AsInteger    := vNumPedAux;
      case ComboBox1.ItemIndex of
        0: fDMCadLote.cdsLoteCARIMBO.AsString := fDMCadLote.cdsPendenteCARIMBO.AsString;
        1: fDMCadLote.cdsLoteCARIMBO.AsString := Edit1.Text;
      end;
    end;
    fDMCadLote.cdsLoteDTENTREGA.AsDateTime    := vData;
    fDMCadLote.cdsLoteFILIAL.AsInteger        := fDMCadLote.cdsPendenteFILIAL.AsInteger;
    fDMCadLote.cdsLoteQTD.AsFloat             := 0;
    fDMCadLote.cdsLoteNOME.AsString           := Edit2.Text;
    if vNumLote <= 0 then
    begin
      fDMCadLote.qProximo_Lote.Close;
      fDMCadLote.qProximo_Lote.Open;
      vNumLote := fDMCadLote.qProximo_LoteNUM_LOTE.AsInteger;
    end;
    vNumLote := vNumLote + 1;
    if vNumOrdem <= 0 then
    begin
      fDMCadLote.qProxima_Ordem.Close;
      fDMCadLote.qProxima_Ordem.Open;
      vNumOrdem := fDMCadLote.qProxima_OrdemNUM_ORDEM.AsInteger + 1;
    end;
    fDMCadLote.cdsLoteNUM_LOTE.AsInteger    := vNumLote;
    fDMCadLote.cdsLoteNUM_ORDEM.AsInteger   := vNumOrdem;
    if fDMCadLote.qParametros_PedPERMITE_ALT_NOMEPROD.AsString = 'S' then
      fDMCadLote.cdsLoteNOME_PRODUTO.AsString := fDMCadLote.cdsPendenteNOMEPRODUTO.AsString
    else
      fDMCadLote.cdsLoteNOME_PRODUTO.Clear;
    fDMCadLote.cdsLoteOBS.AsString := fDMCadLote.cdsPendenteOBS_LOTE.AsString;
  end;
  fDMCadLote.cdsLoteQTD.AsFloat := fDMCadLote.cdsLoteQTD.AsFloat + fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
  fDMCadLote.cdsLote.Post;
end;

procedure TfrmGerar_Lote_Calc.prc_Gerar_Talao;
var
  vTamAux: String;
  vTalaoAux: Integer;
  vFlag: Boolean;
  vQtd_Ped: Real;
  vQtd_Aux: Real;
begin
  if trim(fDMCadLote.cdsPendenteTAMANHO.AsString) = '' then
    vTamAux := ''
  else
    vTamAux := fDMCadLote.cdsPendenteTAMANHO.AsString;

  vTalaoAux := 0;
  if (fDMCadLote.mAuxiliar_Talao.FindKey([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vTamAux])) then
    vTalaoAux := fDMCadLote.mAuxiliar_TalaoNum_Talao.AsInteger;

  vQtd_Ped := fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
  vFlag    := False;
  while StrToFloat(FormatFloat('0.00000',vQtd_Ped)) > 0  do
  begin                                                
    //if fDMCadLote.cdsTalao.Locate('TAMANHO',vTamAux,[loCaseInsensitive]) then
    if not(vFlag) and (fDMCadLote.cdsTalao.Locate('ID_PRODUTO;TAMANHO;NUM_TALAO',VarArrayOf([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vTamAux,vTalaoAux]),[locaseinsensitive])) then
      fDMCadLote.cdsTalao.Edit
    else
    begin
      fDMCadLote.prc_Inserir_Talao;
      fDMCadLote.cdsTalaoID_PRODUTO.AsInteger := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
      fDMCadLote.cdsTalaoTAMANHO.AsString     := vTamAux;
    end;
    vQtd_Aux := vQtd_Ped;
    if StrToFloat(FormatFloat('0',fDMCadLote.cdsProdutoQTD_TALAO.AsInteger)) > 0 then
    begin
      if StrToFloat(FormatFloat('0.00000',fDMCadLote.cdsTalaoQTD.AsFloat)) >= StrToFloat(FormatFloat('0',fDMCadLote.cdsProdutoQTD_TALAO.AsInteger)) then
      begin
        fDMCadLote.prc_Inserir_Talao;
        fDMCadLote.cdsTalaoID_PRODUTO.AsInteger := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
        fDMCadLote.cdsTalaoTAMANHO.AsString     := vTamAux;
      end
      else
      begin
        vQtd_Aux := fDMCadLote.cdsTalaoQTD.AsFloat + vQtd_Ped;
        if StrToFloat(FormatFloat('0.00000',vQtd_Aux)) >= StrToFloat(FormatFloat('0',fDMCadLote.cdsProdutoQTD_TALAO.AsInteger)) then
          vQtd_Aux := fDMCadLote.cdsProdutoQTD_TALAO.AsInteger -  fDMCadLote.cdsTalaoQTD.AsFloat;
      end;
    end;
    //fDMCadLote.cdsTalaoQTD.AsFloat          := fDMCadLote.cdsTalaoQTD.AsFloat + fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
    fDMCadLote.cdsTalaoQTD.AsFloat          := fDMCadLote.cdsTalaoQTD.AsFloat + vQtd_Aux;
    fDMCadLote.cdsTalaoQTD_PENDENTE.AsFloat := fDMCadLote.cdsTalaoQTD.AsFloat;
    //ver aqui
    //fDMCadLote.cdsTalao.Post;

    if fDMCadLote.cdsTalao.State in [dsInsert] then
    begin
      fDMCadLote.mAuxiliar_Talao.Insert;
      fDMCadLote.mAuxiliar_TalaoID_Produto.AsInteger := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
      fDMCadLote.mAuxiliar_TalaoTamanho.AsString     := fDMCadLote.cdsPendenteTAMANHO.AsString;
      fDMCadLote.mAuxiliar_TalaoNum_Talao.AsInteger  := fDMCadLote.cdsTalaoNUM_TALAO.AsInteger;
      fDMCadLote.mAuxiliar_Talao.Post;
    end;
    fDMCadLote.cdsTalao_Ped.Insert;
    fDMCadLote.cdsTalao_PedID_PEDIDO.AsInteger   := fDMCadLote.cdsPendenteID.AsInteger;
    fDMCadLote.cdsTalao_PedITEM_PEDIDO.AsInteger := fDMCadLote.cdsPendenteITEM.AsInteger;
    //fDMCadLote.cdsTalao_PedQTD.AsFloat           := fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
    fDMCadLote.cdsTalao_PedQTD.AsFloat           := vQtd_Aux;
    fDMCadLote.cdsTalao_PedID_CLIENTE.AsInteger  := fDMCadLote.cdsPendenteID_CLIENTE.AsInteger;
    fDMCadLote.cdsTalao_PedBAIXADO.AsString      := 'N';
    fDMCadLote.cdsTalao_Ped.Post;

    vQtd_Ped := StrToFloat(FormatFloat('0.00000',vQtd_Ped - vQtd_Aux));
    if StrToFloat(FormatFloat('0.00000',vQtd_Ped)) <= 0 then
      vFlag := True;
  end;
end;

procedure TfrmGerar_Lote_Calc.ckDtEntregaClick(Sender: TObject);
begin
  Label2.Visible    := not(ckDtEntrega.Checked);
  DateEdit3.Visible := not(ckDtEntrega.Checked);
end;

procedure TfrmGerar_Lote_Calc.btnConsultarClick(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  VDBGrid1.DataSource := nil;
  ProgressBar1.Visible := True;
  prc_Consultar_Lote;
  prc_Limpar_Auxiliar;
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  ProgressBar1.Max := fDMCadLote.cdsConsulta_Lote.RecordCount;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    if fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'P' then
      fDMCadLote.prc_Gravar_mLote('T')
    else
      fDMCadLote.prc_Gravar_mLote('L');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  VDBGrid1.DataSource := fDMCadLote.dsmTalao;
  SMDBGrid2.EnableScroll;
  ProgressBar1.Visible := False;
end;

procedure TfrmGerar_Lote_Calc.prc_Consultar_Lote;
var
  vComando: String;
  vDescData: String;
begin
  case cbxOpcaoData.ItemIndex of
    0: vDescData := 'L.DTEMISSAO';
    1: vDescData := 'L.DTENTREGA';
  end;
  fDMCadLote.cdsConsulta_Lote.Close;
  fDMCadLote.sdsConsulta_Lote.CommandText := fDMCadLote.ctConsulta_Lote + ' WHERE 0 = 0 ';
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando :=  vComando + ' AND L.NUM_LOTE >= ' + CurrencyEdit1.Text;
  if CurrencyEdit2.AsInteger > 0 then
    vComando :=  vComando + ' AND L.NUM_LOTE <= ' + CurrencyEdit2.Text;
  if CurrencyEdit3.AsInteger > 0 then
    vComando :=  vComando + ' AND L.NUM_ORDEM = ' + CurrencyEdit3.Text;
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND ' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND ' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case cbxOpcao.ItemIndex of
    0: vComando := vComando + ' AND T.QTD_PENDENTE > 0';
    1: vComando := vComando + ' AND T.QTD_PRODUZIDO > 0';
  end;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND T.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND L.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  fDMCadLote.sdsConsulta_Lote.CommandText := fDMCadLote.sdsConsulta_Lote.CommandText + vComando;
  fDMCadLote.cdsConsulta_Lote.Open;
end;

procedure TfrmGerar_Lote_Calc.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadLote.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmGerar_Lote_Calc.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
  end;
end;

procedure TfrmGerar_Lote_Calc.Lote1Click(Sender: TObject);
begin
  {prc_Limpar_Auxiliar;
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('L');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;}
  prc_Le_mLote;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  if fDMCadLote.qParametros_GeralEMPRESA_CALCADOS.AsString = 'S' then
  begin
    fRelLote2            := TfRelLote2.Create(Self);
    fRelLote2.Tag        := 1;
    fRelLote2.fDMCadLote := fDMCadLote;
    fRelLote2.vTipo_Rel  := 'L';
    fRelLote2.RLReport1.PreviewModal;
    fRelLote2.RLReport1.Free;
    FreeAndNil(fRelLote2);
  end
  else
  begin
    fRelLote            := TfRelLote.Create(Self);
    fRelLote.Tag        := 1;
    fRelLote.fDMCadLote := fDMCadLote;
    fRelLote.vTipo_Rel  := 'L';
    fRelLote.RLReport1.PreviewModal;
    fRelLote.RLReport1.Free;
    FreeAndNil(fRelLote);
  end;
end;

procedure TfrmGerar_Lote_Calc.prc_Limpar_Auxiliar;
begin
  fDMCadLote.mLote.First;
  while not fDMCadLote.mLote.eof do
  begin
    fDMCadLote.mTalao.First;
    while not fDMCadLote.mTalao.Eof do
      fDMCadLote.mTalao.Delete;
    fDMCadLote.mLote.Delete;
  end;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  fDMCadLote.mTamanho.First;
  while not fDMCadLote.mTamanho.Eof do
    fDMCadLote.mTamanho.Delete;
end;

procedure TfrmGerar_Lote_Calc.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
{  fDMCadLote.cdsConsulta_Lote.IndexFieldNames := Column.FieldName;
  ColunaOrdenada := Column.FieldName;
  fDMCadLote.mLote.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;}

  ColunaOrdenada := Column.FieldName;
  fDMCadLote.mLote.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;

end;

procedure TfrmGerar_Lote_Calc.btnConfirmarClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  if MessageDlg('Gerar Lote/Talões?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if not(ckDtEntrega.Checked) and (DateEdit3.Date < 10) then
  begin
    MessageDlg('*** Data de entrega do Lote/Talão não informada!', mtError, [mbOk], 0);
    exit;
  end;

  if (ComboBox1.ItemIndex = 1) and (trim(Edit1.Text) = '') then
  begin
    if MessageDlg('Confirma a geração do Lote sem Carimbo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  if fDMCadLote.qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
  begin
    MessageDlg('*** Quando o campo LOTE_TEXTIL estiver marcado, não pode ser usado esse form!', mtInformation, [mbOk], 0);
    exit;
  end;

  SMDBGrid1.DisableScroll;

  vNumLote  := 0;
  vNumOrdem := 0;
  fDMCadLote.mAuxiliar_Talao.EmptyDataSet;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('LOTE');
    sds.ExecSQL();

    fDMCadLote.prc_Localizar(-1);

    vNumPedido := 0;

    if fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString = 'S' then
    begin
      fDMCadLote.cdsPendente_Ped.First;
      while not fDMCadLote.cdsPendente_Ped.Eof do
      begin
        if fDMCadLote.cdsPendente_PedSELECIONADO.AsString = 'S' then
          prc_Le_cdsPendente(fDMCadLote.cdsPendente_PedID.AsInteger);
        fDMCadLote.cdsPendente_Ped.Next;
      end;
    end
    else
      prc_Le_cdsPendente(0);

    //29/08/2018
    fDMCadLote.mProdAux.EmptyDataSet;
    //****
    if not fDMCadLote.cdsLote.IsEmpty then
    begin
      fDMCadLote.cdsLote.First;
      prc_Abrir_Lote_Mat(fDMCadLote.cdsLoteNUM_ORDEM.AsInteger);
      fDMCadLote.cdsLote_Mat.Last;
      vItem_Mat := fDMCadLote.cdsLote_MatITEM.AsInteger;
      while not fDMCadLote.cdsLote.Eof do
      begin
        if fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString <> 'S' then
        begin
          if fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S' then
            prc_Controle_Talao_Auxiliar
          else
          if fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'P' then
            prc_Gerar_Talao_Proc;
          prc_Gerar_Materiais('L');
        end;
        //else
        //begin
        //  fDMCadLote.cdsTalao.First;
        //  while not fDMCadLote.cdsTalao.Eof do
        //  begin
        //    prc_Gerar_Materiais('T');
        //    fDMCadLote.cdsTalao.Next;
        //  end;
        //end;

        fDMCadLote.cdsLote.Edit;
        fDMCadLote.cdsLoteQTD_TALOES.AsInteger := fDMCadLote.cdsTalao.RecordCount;
        fDMCadLote.cdsLote.Post;

        //Grava produto para montar os materiais da Embalagem   29/08/2018
        if (fDMCadLote.mProdAux.FindKey([fDMCadLote.cdsLoteID_PRODUTO.AsInteger])) then
          fDMCadLote.mProdAux.Edit
        else
        begin
          fDMCadLote.mProdAux.Insert;
          fDMCadLote.mProdAuxID_Produto.AsInteger := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
          fDMCadLote.mProdAuxQtd.AsInteger        := 0;
        end;
        fDMCadLote.mProdAuxQtd.AsFloat := fDMCadLote.mProdAuxQtd.AsFloat + fDMCadLote.cdsLoteQTD.AsFloat; 
        fDMCadLote.mProdAux.Post;
        //*****************
        
        fDMCadLote.cdsLote.Next;
      end;

      //13/03/2017 SulTextil
      {if fDMCadLote.qParametros_LoteLOTE_POR_PEDIDO.AsString = 'S' then
      begin
        fDMCadLote.cdsLote_Mat.First;
        while not fDMCadLote.cdsLote_Mat.Eof do
        begin
          fDMCadLote.qMaterial.Close;
          fDMCadLote.qMaterial.ParamByName('ID').AsInteger := fDMCadLote.cdsLote_MatID_MATERIAL.AsInteger;
          fDMCadLote.qMaterial.Open;
          if fDMCadLote.qMaterialTIPO_REG.AsString = 'S' then
          begin
            if fDMCadLote.cdsLoteTIPO_LOTE.AsString <> 'S' then
              prc_Gravar_Lote_Semi;
          end;
          prc_Gerar_Talao_Semi;
          fDMCadLote.cdsLote_Mat.Next;
        end;
      end;}
      //*********************

      //29/08/2018
      fDMCadLote.mProdAux.First;
      while not fDMCadLote.mProdAux.Eof do
      begin
        prc_Embalagem;
        fDMCadLote.mProdAux.Next;
      end;
      if fDMCadLote.mProdAux.RecordCount > 0 then
        fDMCadLote.cdsLote_Mat.ApplyUpdates(0);

      //*******************

      fDMCadLote.cdsLote.ApplyUpdates(0);
      MessageDlg('*** Lotes/Talões Gerados!', mtInformation, [mbok], 0);
      dmDatabase.scoDados.Commit(ID);
      prc_Limpar_Var;
      CurrencyEdit3.AsInteger := vNumOrdem;
      //btnConsultar_PedidosClick(Sender);
      RzPageControl2.ActivePage := TS_Consulta;
      btnConsultarClick(Sender);
    end
    else
    begin
      MessageDlg('*** Nenhum pedido selecionado!' +  fDMCadLote.cdsLoteNUM_LOTE.AsString, mtInformation, [mbok], 0);
      dmDatabase.scoDados.Rollback(ID);
    end;

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;



  FreeAndNil(sds);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmGerar_Lote_Calc.prc_Limpar_Var;
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
  cbxOpcao.ItemIndex := 0;
  RxDBLookupCombo1.ClearValue;
end;

procedure TfrmGerar_Lote_Calc.btnExcluirClick(Sender: TObject);
var
  vNumOrdemAux: String;
  sds: TSQLDataSet;
begin
  if MessageDlg('Deseja excluir os Lotes/Talões selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vNumOrdemAux := InputBox('Exclusão dos Lotes/Talões','Informe o número do controle: ', '');
  vNumOrdemAux := Monta_Numero(vNumOrdemAux,0);
  if (trim(vNumOrdemAux) = '') or (vNumOrdemAux = '0') then
    exit;

  fDMCadLote.qVerificaExclusao.Close;
  fDMCadLote.qVerificaExclusao.ParamByName('NUM_ORDEM').AsInteger := StrToInt(vNumOrdemAux);
  fDMCadLote.qVerificaExclusao.Open;
  if fDMCadLote.qVerificaExclusaoCOUNT.AsInteger > 0 then
  begin
    MessageDlg('*** Existe Lote/Talão baixado, exclusão cancelada!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadLote.qVerificaExclusao2.Close;
  fDMCadLote.qVerificaExclusao2.ParamByName('NUM_ORDEM').AsInteger := StrToInt(vNumOrdemAux);
  fDMCadLote.qVerificaExclusao2.Open;
  if fDMCadLote.qVerificaExclusao2Contador.AsInteger > 0 then
  begin
    MessageDlg('*** Existe Ordem de compra gerada para esta Ordem de Produção!', mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    sds.CommandText   := ' DELETE FROM LOTE  '
                     + ' WHERE NUM_ORDEM = ' + vNumOrdemAux;
    sds.ExecSQL();

    sds.CommandText   := ' DELETE FROM LOTE_MAT  '
                     + ' WHERE NUM_ORDEM = ' + vNumOrdemAux;
    sds.ExecSQL();

    MessageDlg('*** Nº Controle ' + vNumOrdemAux + ' excluído!', mtInformation, [mbok], 0);

  finally
    FreeAndNil(sds);
    btnConsultarClick(Sender);
  end;
end;

procedure TfrmGerar_Lote_Calc.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Gerar then
  begin
    //28/05/2018
    if fDMCadLote.qParametros_LoteQTD_DIAS_DTEMISSAO.AsInteger > 0 then
    begin
      fDMCadLote.cdsPendente.Close;
      DateEdit6.Date := Date - fDMCadLote.qParametros_LoteQTD_DIAS_DTEMISSAO.AsInteger;
    end
    else
      btnConsultar_PedidosClick(Sender);
  end
  else
  if RzPageControl2.ActivePage = TS_Consulta then
  begin
    if CurrencyEdit3.AsInteger <= 0 then
    begin
      fDMCadLote.qProxima_Ordem.Close;
      fDMCadLote.qProxima_Ordem.Open;
      CurrencyEdit3.AsInteger := fDMCadLote.qProxima_OrdemNUM_ORDEM.AsInteger;
    end;
  end
  else
  if RzPageControl2.ActivePage = TS_Auxiliar then
  begin
    fDMCadLote.cdsAtelier.Close;
    fDMCadLote.cdsAtelier.Open;
    if not fDMCadLote.cdsSetor.Active then
      fDMCadLote.cdsSetor.Open;
  end;
end;

procedure TfrmGerar_Lote_Calc.FolhaResumo1Click(Sender: TObject);
begin
  //prc_Limpar_Auxiliar;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  fDMCadLote.mTamanho.First;
  while not fDMCadLote.mTamanho.Eof do
    fDMCadLote.mTamanho.Delete;
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  prc_Le_mLote;
  {fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('L');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;}
  fRelLote_Res            := TfRelLote_Res.Create(Self);       
  fRelLote_Res.Tag        := 1;
  fRelLote_Res.fDMCadLote := fDMCadLote;
  fRelLote_Res.RLReport1.PreviewModal;
  fRelLote_Res.RLReport1.Free;
  FreeAndNil(fRelLote_Res);
end;

procedure TfrmGerar_Lote_Calc.prc_Le_mLote;
begin
  fDMCadLote.mLote.First;
  while not fDMCadLote.mLote.Eof do
  begin
    if SMDBGrid2.SelectedRows.CurrentRowSelected then
    begin
      fDMCadLote.mLote.Edit;
      fDMCadLote.mLoteSelecionado.AsString := 'S';
      fDMCadLote.mLote.Post;
    end
    else
    begin
      fDMCadLote.mLote.Edit;
      fDMCadLote.mLoteSelecionado.AsString := 'N';
      fDMCadLote.mLote.Post;
    end;
    fDMCadLote.mLote.Next;
  end;
  fDMCadLote.mLote.First;
end;

procedure TfrmGerar_Lote_Calc.ComboBox1Change(Sender: TObject);
begin
  Edit1.Visible := (ComboBox1.ItemIndex = 1);
end;

procedure TfrmGerar_Lote_Calc.prc_Controle_Talao_Auxiliar;
var
  vQtdTalaoAux: Integer;
  vAux: Integer;
  vMultiplo: Integer;
  i: Integer;
  vResto: Integer;
  vAux2: Real;
  vQtdPares: Integer;
  vContadorAux: Integer;
begin
  fDMCadLote.mLoteAux.First;
  while not fDMCadLote.mLoteAux.Eof do
  begin
    fDMCadLote.mTalaoAux.First;
    while not fDMCadLote.mTalaoAux.Eof do
      fDMCadLote.mTalaoAux.Delete;
    fDMCadLote.mLoteAux.Delete;
  end;
  fDMCadLote.qProduto_Atelier.Close;
  fDMCadLote.qProduto_Atelier.ParamByName('ID').AsInteger := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
  fDMCadLote.qProduto_Atelier.Open;
  while not fDMCadLote.qProduto_Atelier.Eof do
  begin
    if (fDMCadLote.qProduto_AtelierLIMITE_POR_TALAO.AsString = 'S') and (fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0) then
    begin
      vQtdTalaoAux := fDMCadLote.cdsLoteQTD.AsInteger div fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger;
      if vQtdTalaoAux <= 0 then
      begin
        prc_Gravar_mLoteAux(fDMCadLote.cdsLoteQTD.AsInteger);
        vQtdTalaoAux := 1;
      end
      else
      begin
        for i := 1 to vQtdTalaoAux do
          prc_Gravar_mLoteAux(fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger);
        if fDMCadLote.cdsLoteQTD.AsInteger mod fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0 then
        begin
          vAux := fDMCadLote.cdsLoteQTD.AsInteger - (vQtdTalaoAux * fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger);
          prc_Gravar_mLoteAux(vAux);
        end;
      end;
    end
    else
      prc_Gravar_mLoteAux(fDMCadLote.cdsLoteQTD.AsInteger);
      //prc_Gravar_Talao_Aux(fDMCadLote.cdsLoteQTD.AsFloat);

    fDMCadLote.mLoteAux.First;
    while not fDMCadLote.mLoteAux.Eof do
    begin
      vAux2 := StrToCurr(FormatCurr('0.0000',(fDMCadLote.mLoteAuxQtd.AsInteger / fDMCadLote.cdsLoteQTD.AsInteger) * 100));
      fDMCadLote.mLoteAux.Edit;
      fDMCadLote.mLoteAuxPercentual.AsFloat := StrToCurr(FormatCurr('0.0000',vAux2));
      fDMCadLote.mLoteAux.Post;
      fDMCadLote.mLoteAux.Next;
    end;

    //Incluido para acumular os talões   08/01/2016
    fDMCadLote.mGerarAux.EmptyDataSet;
    fDMCadLote.cdsTalao.First;
    while not fDMCadLote.cdsTalao.Eof do
    begin
      if fDMCadLote.mGerarAux.Locate('Tamanho',fDMCadLote.cdsTalaoTAMANHO.AsString,[loCaseInsensitive]) then
        fDMCadLote.mGerarAux.Edit
      else
      begin
        fDMCadLote.mGerarAux.Insert;
        fDMCadLote.mGerarAuxTamanho.AsString := fDMCadLote.cdsTalaoTAMANHO.AsString;
        fDMCadLote.mGerarAuxQtd.AsInteger    := 0;
      end;
      fDMCadLote.mGerarAuxQtd.AsFloat := fDMCadLote.mGerarAuxQtd.AsFloat + fDMCadLote.cdsTalaoQTD.AsFloat;
      fDMCadLote.mGerarAux.Post;
      fDMCadLote.cdsTalao.Next;
    end;
    //*****************

    //08/01/2016  desativa e passado para o mGerarAux (acumulando os tamanhos)
    fDMCadLote.mGerarAux.First;
    while not fDMCadLote.mGerarAux.Eof do
    begin
      if (fDMCadLote.qProduto_AtelierLIMITE_POR_TALAO.AsString = 'S') and (fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0) then
      begin
        vQtdPares    := fDMCadLote.mGerarAuxQtd.AsInteger;
        vContadorAux := fDMCadLote.mLoteAux.RecordCount;
        fDMCadLote.mLoteAux.First;
        while not fDMCadLote.mLoteAux.Eof do
        begin
        //aqui ver  04/06/2015
          vContadorAux := vContadorAux - 1;
          vAux2 := StrToCurr(FormatCurr('0',fDMCadLote.mGerarAuxQtd.AsFloat * fDMCadLote.mLoteAuxPercentual.AsFloat / 100));
          if StrToCurr(FormatCurr('0',vAux2)) > vQtdPares then
            vAux2 := vQtdPares
          else
          if vContadorAux <= 0 then
            vAux2 := vQtdPares;
          if (fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2) > fDMCadLote.mLoteAuxQtd.AsInteger then
            vAux2 := fDMCadLote.mLoteAuxQtd.AsInteger - fDMCadLote.mLoteAuxQtdAux.AsInteger;
          if vaux2 > 0 then
          begin
            fDMCadLote.mLoteAux.Edit;
            fDMCadLote.mLoteAuxQtdAux.AsInteger := StrToInt(FormatFloat('0',fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2));
            fDMCadLote.mLoteAux.Post;
            prc_Gravar_mTalaoAux(vAux2,fDMCadLote.mLoteAuxID.AsInteger);
            vQtdPares := StrToInt(FormatCurr('0',vQtdPares - vAux2));
            if vQtdPares <= 0 then
              fDMCadLote.mLoteAux.Last;
          end;
          fDMCadLote.mLoteAux.Next;
        end;
      end
      else
        prc_Gravar_mTalaoAux(fDMCadLote.mGerarAuxQtd.AsInteger,1);
      fDMCadLote.mGerarAux.Next;
    end;

    {fDMCadLote.cdsTalao.First;
    while not fDMCadLote.cdsTalao.Eof do
    begin
      if (fDMCadLote.qProduto_AtelierLIMITE_POR_TALAO.AsString = 'S') and (fDMCadLote.qProduto_AtelierQTD_LIMITE_POR_TALAO.AsInteger > 0) then
      begin
        vQtdPares    := fDMCadLote.cdsTalaoQTD.AsInteger;
        vContadorAux := fDMCadLote.mLoteAux.RecordCount;
        fDMCadLote.mLoteAux.First;
        while not fDMCadLote.mLoteAux.Eof do
        begin
        //aqui ver  04/06/2015
          vContadorAux := vContadorAux - 1;
          vAux2 := StrToCurr(FormatCurr('0',fDMCadLote.cdsTalaoQTD.AsFloat * fDMCadLote.mLoteAuxPercentual.AsFloat / 100));
          if StrToCurr(FormatCurr('0',vAux2)) > vQtdPares then
            vAux2 := vQtdPares
          else
          if vContadorAux <= 0 then
            vAux2 := vQtdPares;
          if (fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2) > fDMCadLote.mLoteAuxQtd.AsInteger then
            vAux2 := fDMCadLote.mLoteAuxQtd.AsInteger - fDMCadLote.mLoteAuxQtdAux.AsInteger;
          if vaux2 > 0 then
          begin
            fDMCadLote.mLoteAux.Edit;
            fDMCadLote.mLoteAuxQtdAux.AsInteger := StrToInt(FormatFloat('0',fDMCadLote.mLoteAuxQtdAux.AsInteger + vAux2));
            fDMCadLote.mLoteAux.Post;
            prc_Gravar_mTalaoAux(vAux2,fDMCadLote.mLoteAuxID.AsInteger);
            vQtdPares := StrToInt(FormatCurr('0',vQtdPares - vAux2));
            if vQtdPares <= 0 then
              fDMCadLote.mLoteAux.Last;
          end;
          fDMCadLote.mLoteAux.Next;
        end;
      end
      else
        prc_Gravar_mTalaoAux(fDMCadLote.cdsTalaoQTD.AsInteger,1);
      fDMCadLote.cdsTalao.Next;
    end;}


    fDMCadLote.mLoteAux.First;
    while not fDMCadLote.mLoteAux.Eof do
    begin
      prc_Gravar_Talao_Aux(fDMCadLote.mLoteAuxQtd.AsInteger);
      fDMCadLote.mTalaoAux.First;
      while not fDMCadLote.mTalaoAux.Eof do
      begin
        prc_Gravar_Talao_Aux_Tam(fDMCadLote.mTalaoAuxQtd.AsInteger);
        fDMCadLote.mTalaoAux.Delete;
      end;
      fDMCadLote.mLoteAux.Delete;
    end;

    fDMCadLote.qProduto_Atelier.Next;
  end;
  
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_Talao_Aux(Qtd: Real);
var
  vItemAux: Integer;
begin
  fDMCadLote.cdsTalao_Aux.Last;
  vItemAux := fDMCadLote.cdsTalao_AuxITEM.AsInteger;
  fDMCadLote.cdsTalao_Aux.Insert;
  fDMCadLote.cdsTalao_AuxID.AsInteger            := fDMCadLote.cdsLoteID.AsInteger;
  fDMCadLote.cdsTalao_AuxITEM.AsInteger          := vItemAux + 1;
  fDMCadLote.cdsTalao_AuxID_ATELIER.AsInteger    := fDMCadLote.qProduto_AtelierID_ATELIER.AsInteger;
  fDMCadLote.cdsTalao_AuxID_SETOR.AsInteger      := fDMCadLote.qProduto_AtelierID_SETOR.AsInteger;
  fDMCadLote.cdsTalao_AuxID_PRODUTO.AsInteger    := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
  fDMCadLote.cdsTalao_AuxID_COMBINACAO.AsInteger := fDMCadLote.cdsLoteID_COMBINACAO.AsInteger;
  fDMCadLote.cdsTalao_AuxQTD.AsFloat             := StrToFloat(FormatFloat('0.000',Qtd));
  if fDMCadLote.cdsTalao_AuxID_ATELIER.AsInteger > 0 then
    fDMCadLote.cdsTalao_AuxID_ATELIER_ORIG.AsInteger := fDMCadLote.cdsTalao_AuxID_ATELIER.AsInteger;
  fDMCadLote.cdsTalao_AuxSELECIONADO.AsString := 'S';
  fDMCadLote.cdsTalao_AuxDTPAGAMENTO.Clear;
  fDMCadLote.cdsTalao_Aux.Post;

  if fDMCadLote.cdsLoteTALAO_AUX_GERADO.AsString <> 'S' then
  begin
    fDMCadLote.cdsLote.Edit;
    fDMCadLote.cdsLoteTALAO_AUX_GERADO.AsString := 'S';
    fDMCadLote.cdsLote.Post;
  end;
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_Talao_Aux_Tam(Qtd: Real);
var
  vItemAux: Integer;
begin
  fDMCadLote.cdsTalao_Aux_Tam.Last;
  vItemAux := fDMCadLote.cdsTalao_Aux_TamITEM_TAM.AsInteger;
  
  fDMCadLote.cdsTalao_Aux_Tam.Insert;
  fDMCadLote.cdsTalao_Aux_TamID.AsInteger       := fDMCadLote.cdsTalao_AuxID.AsInteger;
  fDMCadLote.cdsTalao_Aux_TamITEM.AsInteger     := fDMCadLote.cdsTalao_AuxITEM.AsInteger;
  fDMCadLote.cdsTalao_Aux_TamITEM_TAM.AsInteger := vItemAux + 1;
  fDMCadLote.cdsTalao_Aux_TamTAMANHO.AsString   := fDMCadLote.mTalaoAuxTamanho.AsString;
  fDMCadLote.cdsTalao_Aux_TamQTD.AsFloat        := StrToFloat(FormatFloat('0.000',Qtd));
  fDMCadLote.cdsTalao_Aux_Tam.Post;
end;

procedure TfrmGerar_Lote_Calc.btnConsultar_Talao_AuxClick(Sender: TObject);
begin
  prc_Consultar_Talao_Aux;
end;

procedure TfrmGerar_Lote_Calc.prc_Consultar_Talao_Aux;
var
  vComando: String;
begin
  fDMCadLote.cdsConsulta_Talao_Aux.Close;
  vComando := fDMCadLote.ctConsulta_Talao_Aux;
  case cbOpcaoTalaoAux.ItemIndex of
    0: vComando := vComando + ' WHERE (T.dtretorno is null) and (T.dtsaida is null)';
    1: vComando := vComando + ' WHERE (T.dtsaida is not null) and (T.dtretorno is null) ';
    2: vComando := vComando + ' WHERE (T.dtRetorno is not null) ';
    3: vComando := vComando + ' WHERE (0 = 0) ';
  end;
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND T.ID_Atelier = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo4.Text <> '' then
    vComando := vComando + ' AND T.ID_Setor = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND T.ID_Produto = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if CurrencyEdit6.AsInteger > 0 then
    vComando := vComando + ' AND LOTE.NUM_ORDEM = ' + IntToStr(CurrencyEdit6.AsInteger);
  if CurrencyEdit4.AsInteger > 0 then
    vComando := vComando + ' AND LOTE.NUM_LOTE >= ' + IntToStr(CurrencyEdit4.AsInteger);
  if CurrencyEdit5.AsInteger > 0 then
    vComando := vComando + ' AND LOTE.NUM_LOTE <= ' + IntToStr(CurrencyEdit5.AsInteger);
  if NxComboBox2.ItemIndex = 0 then
  begin
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND T.DTSAIDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND T.DTSAIDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  end
  else
  begin
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND T.DTRETORNO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND T.DTRETORNO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  end;
  if trim(Edit4.Text) <> '' then
    vComando := vComando + ' AND LOTE.NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadLote.sdsConsulta_Talao_Aux.CommandText := vComando;
  fDMCadLote.cdsConsulta_Talao_Aux.Open;
end;

procedure TfrmGerar_Lote_Calc.cbOpcaoTalaoAuxChange(Sender: TObject);
begin
  case cbOpcaoTalaoAux.ItemIndex of
    0 ,1: NxComboBox2.ItemIndex := 0;
    2: NxComboBox2.ItemIndex    := 1;
  end;
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_mLoteAux(Qtd: Integer);
var
  vItemAux: Integer;
begin
  fDMCadLote.mLoteAux.Last;
  vItemAux := fDMCadLote.mLoteAuxID.AsInteger;
  fDMCadLote.mLoteAux.Insert;
  fDMCadLote.mLoteAuxID.AsInteger  := vItemAux + 1;
  fDMCadLote.mLoteAuxQtd.AsInteger := Qtd;
  fDMCadLote.mLoteAux.Post;
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_mTalaoAux(Qtd: Real ; ID: Integer);
begin
  if fDMCadLote.mTalaoAux.Locate('ID;Tamanho',VarArrayOf([ID,fDMCadLote.mGerarAuxTamanho.AsString]),[locaseinsensitive]) then
    fDMCadLote.mTalaoAux.Edit
  else
  begin
    fDMCadLote.mTalaoAux.Insert;
    fDMCadLote.mTalaoAuxID.AsInteger     := ID;
    //fDMCadLote.mTalaoAuxTamanho.AsString := fDMCadLote.cdsTalaoTAMANHO.AsString;
    fDMCadLote.mTalaoAuxTamanho.AsString := fDMCadLote.mGerarAuxTamanho.AsString;
    fDMCadLote.mTalaoAuxQtd.AsInteger    := 0;
  end;
  fDMCadLote.mTalaoAuxQtd.AsFloat := StrToCurr(FormatCurr('0',fDMCadLote.mTalaoAuxQtd.AsInteger + Qtd));
  fDMCadLote.mTalaoAux.Post;
end;

procedure TfrmGerar_Lote_Calc.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadLote.cdsConsulta_Talao_AuxDTRETORNO.IsNull) and (fDMCadLote.cdsConsulta_Talao_AuxDTSAIDA.AsDateTime > 10) then
    Background := clYellow
  else
  if fDMCadLote.cdsConsulta_Talao_AuxDTRETORNO.AsDateTime > 10 then
    Background := clMoneyGreen;
end;

procedure TfrmGerar_Lote_Calc.btnImpTalao_AuxClick(Sender: TObject);
begin
  fDMCadLote.mImpTalao_Aux.EmptyDataSet;
  fDMCadLote.cdsConsulta_Talao_Aux.First;
  while not fDMCadLote.cdsConsulta_Talao_Aux.Eof do
  begin
    if (SMDBGrid3.SelectedRows.CurrentRowSelected) then
    begin
      fDMCadLote.mImpTalao_Aux.Insert;
      fDMCadLote.mImpTalao_AuxID.AsInteger   := fDMCadLote.cdsConsulta_Talao_AuxID_TALAO.AsInteger;
      fDMCadLote.mImpTalao_AuxItem.AsInteger := fDMCadLote.cdsConsulta_Talao_AuxITEM.AsInteger;
      fDMCadLote.mImpTalao_Aux.Post;
    end;
    fDMCadLote.cdsConsulta_Talao_Aux.Next;
  end;
  SMDBGrid3.DataSource := nil;
  VDBGrid2.DataSource  := nil;
  fRelTalao_Aux            := TfRelTalao_Aux.Create(Self);
  fRelTalao_Aux.fDMCadLote := fDMCadLote;
  fRelTalao_Aux.RLReport1.PreviewModal;
  fRelTalao_Aux.RLReport1.Free;
  FreeAndNil(fRelTalao_Aux);
  SMDBGrid3.DataSource := fDMCadLote.dsConsulta_Talao_Aux;
  VDBGrid2.DataSource  := fDMCadLote.dsConsulta_Talao_Aux_Tam;
end;

procedure TfrmGerar_Lote_Calc.SMDBGrid1TitleClick(Column: TColumn);
//var
//  i: Integer;
//  ColunaOrdenada: String;
begin
  {ColunaOrdenada := Column.FieldName;
  fDMCadLote.cdsPendente.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;}
end;

procedure TfrmGerar_Lote_Calc.SMDBGrid3TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadLote.cdsConsulta_Talao_Aux.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid3.Columns.Count - 1 do
    if not (SMDBGrid3.Columns.Items[I] = Column) then
      SMDBGrid3.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerar_Lote_Calc.prc_Gerar_Materiais(Tipo : String); //L=Lote  T=Talão
var
  vCarimbo: String;
  vTamanho: String;
  vID_Cor: Integer;
  vQtdAux: Real;
  vID_CorAnt, vID_MaterialAnt: Integer;
begin
  fDMCadLote.cdsConsumo.Close;
  if Tipo = 'T' then
  begin
    fDMCadLote.sdsConsumo.ParamByName('ID_COMBINACAO').AsInteger := fDMCadLote.cdsTalaoID_COMBINACAO.AsInteger;
    fDMCadLote.sdsConsumo.ParamByName('ID_PRODUTO').AsInteger    := fDMCadLote.cdsTalaoID_PRODUTO.AsInteger;
  end
  else
  begin
    fDMCadLote.sdsConsumo.ParamByName('ID_COMBINACAO').AsInteger := fDMCadLote.cdsLoteID_COMBINACAO.AsInteger;
    fDMCadLote.sdsConsumo.ParamByName('ID_PRODUTO').AsInteger    := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
  end;

  fDMCadLote.cdsConsumo.Open;
  if fDMCadLote.cdsConsumo.IsEmpty then
    exit;

  vID_CorAnt      := 0;
  vID_MaterialAnt := 0;

  fDMCadLote.cdsConsumo.First;
  while not fDMCadLote.cdsConsumo.Eof do
  begin
    vCarimbo := fDMCadLote.cdsLoteCARIMBO.AsString;
    //15/11/2016  Foi incluido o if do usa carimbo
    if (fDMCadLote.cdsConsumoTRANSFER.AsString <> 'S') and (fDMCadLote.cdsConsumoUSA_CARIMBO_OC.AsString <> 'S') then
      vCarimbo := '';
    if fDMCadLote.cdsConsumoID_COR_MAT.AsInteger <= 0 then
      vID_Cor := 0
    else
      vID_Cor := fDMCadLote.cdsConsumoID_COR_MAT.AsInteger;
    if (vID_MaterialAnt <> fDMCadLote.cdsConsumoID_MATERIAL.AsInteger) or (vID_CorAnt <> fDMCadLote.cdsConsumoID_COR_MAT.AsInteger) then
    begin
      if Tipo = 'T' then
        vQtd_Produto := fDMCadLote.cdsTalaoQTD.AsFloat
      else
        vQtd_Produto := fDMCadLote.cdsLoteQTD.AsFloat;
    end
    else
      vQtd_Produto := 0;
    vTamanho := '';
    vQtdAux  := StrToFloat(FormatFloat('0.00000',fDMCadLote.cdsConsumoQTD_CONSUMO.AsFloat));
    if (fDMCadLote.cdsConsumoID_GRADE_MAT.AsInteger > 0) or (fDMCadLote.cdsConsumoTIPO_CONSUMO.AsString = 'T') then
    begin
      fDMCadLote.cdsTalao.First;
      while not fDMCadLote.cdsTalao.Eof do
      begin
        if (fDMCadLote.cdsConsumoTIPO_CONSUMO.AsString = 'T') then
        begin
          fDMCadLote.qConsumo_Tam.Close;
          fDMCadLote.qConsumo_Tam.ParamByName('ID').AsInteger     := fDMCadLote.cdsConsumoID.AsInteger;
          fDMCadLote.qConsumo_Tam.ParamByName('ITEM').AsInteger   := fDMCadLote.cdsConsumoITEM_CONSUMO.AsInteger;
          fDMCadLote.qConsumo_Tam.ParamByName('TAMANHO').AsString := vTamanho;
          fDMCadLote.qConsumo_Tam.Open;
          vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadLote.qConsumo_TamQTD_CONSUMO.AsFloat));
        end;
        if fDMCadLote.cdsConsumoID_GRADE_MAT.AsInteger > 0 then
          vTamanho := fDMCadLote.cdsTalaoTAMANHO.AsString;
        if StrToFloat(FormatFloat('0.000',vQtd_Produto)) > 0 then
          vQtd_Produto := fDMCadLote.cdsTalaoQTD.AsFloat;

        prc_Gravar_Lote_Mat(fDMCadLote.cdsLoteNUM_ORDEM.AsInteger,fDMCadLote.cdsConsumoID_MATERIAL.AsInteger,vID_Cor,fDMCadLote.cdsConsumoID_FORNECEDOR.AsInteger,vCarimbo,vTamanho,vQtdAux,fDMCadLote.cdsTalaoQTD.AsFloat);

        fDMCadLote.cdsTalao.Next;
      end;
    end
    else
      prc_Gravar_Lote_Mat(fDMCadLote.cdsLoteNUM_ORDEM.AsInteger,fDMCadLote.cdsConsumoID_MATERIAL.AsInteger,vID_Cor,fDMCadLote.cdsConsumoID_FORNECEDOR.AsInteger,vCarimbo,vTamanho,vQtdAux,fDMCadLote.cdsLoteQTD.AsFloat);

    vID_CorAnt      := fDMCadLote.cdsConsumoID_COR_MAT.AsInteger;
    vID_MaterialAnt := fDMCadLote.cdsConsumoID_MATERIAL.AsInteger;
    fDMCadLote.cdsConsumo.Next;
  end;

  //Gerar Embalagens 29/08/2018



  //******************

  fDMCadLote.cdsLote_Mat.ApplyUpdates(0);
end;

procedure TfrmGerar_Lote_Calc.prc_Abrir_Lote_Mat(Num_Ordem: Integer);
begin
  fDMCadLote.cdsLote_Mat.Close;
  fDMCadLote.sdsLote_Mat.ParamByName('NUM_ORDEM').AsInteger := Num_Ordem;
  fDMCadLote.cdsLote_Mat.Open;
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_Lote_Mat(Num_Ordem, ID_Material,
  ID_Cor, ID_Fornecedor: Integer; Carimbo, Tamanho: String; Qtd_Consumo,
  Qtd_Produto: Real);
var
  vCarimboAux: String;
  vStatus : String;
  vTamAux : String;  
begin
  vCarimboAux := '';
  if trim(Carimbo) <> '' then
    vCarimboAux := trim(TirarAcento(Carimbo));

  vStatus := '';  
  if fDMCadLote.cdsLote_Mat.Locate('NUM_ORDEM;ID_MATERIAL;ID_COR;CARIMBOAUX;TAMANHO',VarArrayOf([Num_Ordem,ID_Material,ID_Cor,vCarimboAux,Tamanho]),[locaseinsensitive]) then
  begin
    if (fDMCadLote.cdsLote_MatID_OC.AsInteger > 0) or (fDMCadLote.cdsLote_MatID_MOVESTOQUE_RES.AsInteger > 0) then
      vStatus := ''
    else
      vStatus := 'E';
  end
  else
    vStatus := 'I';
  if trim(vStatus) = '' then
    exit;

  //if fDMCadLote.cdsLote_Mat.Locate('NUM_ORDEM;ID_MATERIAL;ID_COR;CARIMBOAUX;TAMANHO',VarArrayOf([Num_Ordem,ID_Material,ID_Cor,vCarimboAux,Tamanho]),[locaseinsensitive]) then
  if vStatus = 'E' then
    fDMCadLote.cdsLote_Mat.Edit
  else
  begin
    vItem_Mat := vItem_Mat + 1;
    fDMCadLote.cdsLote_Mat.Insert;
    fDMCadLote.cdsLote_MatNUM_ORDEM.AsInteger     := Num_Ordem;
    fDMCadLote.cdsLote_MatITEM.AsInteger          := vItem_Mat;
    fDMCadLote.cdsLote_MatID_MATERIAL.AsInteger   := ID_Material;
    fDMCadLote.cdsLote_MatID_COR.AsInteger        := ID_Cor;
    fDMCadLote.cdsLote_MatCARIMBOAUX.AsString     := vCarimboAux;
    fDMCadLote.cdsLote_MatCARIMBO.AsString        := Carimbo;
    fDMCadLote.cdsLote_MatTAMANHO.AsString        := Tamanho;
    //17/09/2017
    if trim(Tamanho) <> '' then
    begin
     vTamAux := fnc_Busca_Tam_Material(ID_Material,Tamanho);
     if trim(vTamAux) <> '' then
       fDMCadLote.cdsLote_MatTAMANHO.AsString := vTamAux;
    end;

    fDMCadLote.cdsLote_MatQTD_CONSUMO.AsFloat     := 0;
    fDMCadLote.cdsLote_MatQTD_PRODUTO.AsFloat     := 0;
    fDMCadLote.cdsLote_MatID_FORNECEDOR.AsInteger := ID_Fornecedor;
    fDMCadLote.cdsLote_MatQtd_OC_Fat.AsFloat      := 0;
    fDMCadLote.cdsLote_MatGerado.AsString         := 'N';
  end;
  Qtd_Consumo := StrToFloat(FormatFloat('0.0000',Qtd_Consumo * Qtd_Produto));
  fDMCadLote.cdsLote_MatQTD_CONSUMO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadLote.cdsLote_MatQTD_CONSUMO.AsFloat + Qtd_Consumo));
  fDMCadLote.cdsLote_MatQTD_PRODUTO.AsFloat := fDMCadLote.cdsLote_MatQTD_PRODUTO.AsFloat + vQtd_Produto;
  fDMCadLote.cdsLote_Mat.Post;
end;

procedure TfrmGerar_Lote_Calc.btnConsultar_Pedidos_OrdClick(
  Sender: TObject);
begin
  prc_Consultar_Pedido_Ord;
end;

procedure TfrmGerar_Lote_Calc.prc_Consultar_Pedido_Ord;
begin
  fDMCadLote.cdsPedido_Ord.Close;
  fDMCadLote.sdsPedido_Ord.CommandText := fDMCadLote.ctPedido_Ord;
  if CurrencyEdit7.AsInteger > 0 then
  begin
    fDMCadLote.sdsPedido_Ord.CommandText := fDMCadLote.sdsPedido_Ord.CommandText + ' AND PED.num_pedido = :Num_Pedido';
    fDMCadLote.sdsPedido_Ord.ParamByName('Num_Pedido').AsInteger := CurrencyEdit7.AsInteger;
  end;
  fDMCadLote.cdsPedido_Ord.Open;
end;

procedure TfrmGerar_Lote_Calc.btnAtualizar_MatClick(Sender: TObject);
begin
  if CurrencyEdit8.AsInteger <= 0 then
  begin
    MessageDlg('*** Nº Ordem de Produção não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fnc_Ordem_Producao_OC then
    exit;
  prc_Atualizar_Material;
  CurrencyEdit8.AsInteger := 0;
end;

function TfrmGerar_Lote_Calc.fnc_Ordem_Producao_OC: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText := ' SELECT COUNT(1) CONTADOR FROM lote_mat M '
                   + ' WHERE M.num_ordem = :NUM_ORDEM '
                   + '   AND (M.id_oc > 0 or M.id_movestoque_res is NOT null or M.id_movestoque_res >= 0 ) ';
  sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit8.AsInteger;
  sds.Open;
  if sds.FieldByName('CONTADOR').AsInteger > 0 then
  begin
    //MessageDlg('*** Ordem de produção já gerada Ordem de Compra para Fornecedor!', mtInformation, [mbOk], 0);
    if MessageDlg('Ordem de produção já gerada Ordem de Compra para Fornecedor!' +#13 + #13 +
                  'Deseja atualizar os materiais que não foram geradas as OCs?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Result := True;
  end;
  FreeAndNil(sds);
end;

procedure TfrmGerar_Lote_Calc.prc_Atualizar_Material;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' DELETE from LOTE_MAT WHERE NUM_ORDEM = :NUM_ORDEM '
                     + '   and (id_oc is null or id_oc <= 0) '
                     + '  and (id_movestoque_res is null or id_movestoque_res <= 0 ) ';
    sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit8.AsInteger;
    sds.ExecSQL();

    prc_Abrir_Lote_Mat(CurrencyEdit8.AsInteger);
    fDMCadLote.cdsLote_Mat.First;
    fDMCadLote.cdsLote_Mat.Last;
    vItem_Mat := fDMCadLote.cdsLote_MatITEM.AsInteger;

    Label8.Visible := True;
    Label8.Refresh;

    sds.Close;
    sds.CommandText := 'SELECT ID FROM LOTE WHERE NUM_ORDEM = :NUM_ORDEM';
    sds.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit8.AsInteger;
    sds.Open;
    sds.First;
    while not sds.Eof do
    begin
      fDMCadLote.prc_Localizar(sds.FieldByName('ID').AsInteger);
      if not fDMCadLote.cdsLote.IsEmpty then
        prc_Gerar_Materiais('L');
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
  MessageDlg('*** Materiais atualizados!', mtConfirmation, [mbOk], 0);

  Label8.Visible := False;

end;

procedure TfrmGerar_Lote_Calc.btnGerarTalao_AuxClick(Sender: TObject);
var
  sds: TSQLDataSet;
  vGerar: Boolean;
  ID: TTransactionDesc;
begin
  if fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString <> 'S' then
    exit;

  if fDMCadLote.mLote.IsEmpty then
  begin
    MessageDlg('*** Lote não selecionado para gerar os talões auxiliares!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Gerar Talão auxiliar do Lote ' + fDMCadLote.mLoteNum_Lote.AsString + '?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vGerar := True;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR '
                     + ' FROM TALAO_AUX T '
                     + ' INNER JOIN LOTE L  ON T.ID = L.ID '
                     + ' WHERE L.NUM_LOTE = ' + fDMCadLote.mLoteNum_Lote.AsString;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
    begin
      if MessageDlg('Existe ' + sds.FieldByName('CONTADOR').AsString + ' talões auxiliares gerados para o lote '  + fDMCadLote.mLoteNum_Lote.AsString + #13
                + ' Deseja gerar novamente?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        vGerar := False
      else
      begin
        sds.Close;
        sds.CommandText := sds.CommandText + ' AND T.dtsaida IS NOT NULL ';
        sds.Open;
        if sds.FieldByName('CONTADOR').AsInteger > 0 then
        begin
          MessageDlg('*** Este lote já contém talões com saída para atelier!', mtInformation, [mbOk], 0);
          vGerar := False;
        end;
      end;
    end;
    if vGerar then
    begin
      sds.Close;
      sds.CommandText := ' DELETE from TALAO_AUX WHERE ID = ' + fDMCadLote.mLoteID_Lote.AsString;
      sds.ExecSQL();
      sds.Close;
      sds.CommandText := ' DELETE from TALAO_AUX_TAM WHERE ID = ' + fDMCadLote.mLoteID_Lote.AsString;
      sds.ExecSQL();
    end;

    FreeAndNil(sds);
    if not vGerar then
      exit;

    fDMCadLote.prc_Localizar(fDMCadLote.mLoteID_Lote.AsInteger);
    if fDMCadLote.cdsLote.IsEmpty then
      exit;
    if fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S' then
      prc_Controle_Talao_Auxiliar;

    fDMCadLote.mLote.Edit;
    fDMCadLote.mLoteTalao_Aux_Gerado.AsString := fDMCadLote.cdsLoteTALAO_AUX_GERADO.AsString;
    fDMCadLote.mLote.Post;

    fDMCadLote.cdsLote.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TfrmGerar_Lote_Calc.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'S' then
  begin
    if fDMCadLote.mLoteTalao_Aux_Gerado.AsString = 'N' then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TfrmGerar_Lote_Calc.CurrencyEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultar_Talao_AuxClick(Sender);
end;

procedure TfrmGerar_Lote_Calc.MarcarDesmarcargerarOCIndividual1Click(
  Sender: TObject);
begin
  prc_Marcar_Desmarcar('I');
end;

procedure TfrmGerar_Lote_Calc.prc_Marcar_Desmarcar(Tipo: String); //I=Item   R=Referência   P=Pedido   TM=Total    TD=Total
var
  vIDProdAux : Integer;
  vMD : String;
  vIDPedAux : Integer;


  procedure prc_Somar_Qtd;
  begin
    if fDMCadLote.cdsPendenteSELECIONADO.AsString = 'S' then
      vQtd_Selecionada := vQtd_Selecionada + fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat
    else
      vQtd_Selecionada := vQtd_Selecionada - fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
    Label12.Caption := FormatFloat('0.#####',vQtd_Selecionada);
  end;

  procedure prc_Selecionado;
  var
    vAux2 : String;
  begin
    vAux2 := fDMCadLote.cdsPendenteSELECIONADO.AsString;
    if (trim(fDMCadLote.cdsPendenteSELECIONADO.AsString) = '') then
      vAux2 := 'N';
    if vAux2 <> vMD then
    begin
      fDMCadLote.cdsPendente.Edit;
      fDMCadLote.cdsPendenteSELECIONADO.AsString := vMD;
      fDMCadLote.cdsPendente.Post;
      prc_Somar_Qtd;
    end;
  end;


begin
  if not(fDMCadLote.cdsPendente.Active) or (fDMCadLote.cdsPendente.IsEmpty) then
    exit;
  SMDBGrid1.DisableScroll;
  if Tipo = 'TS' then
    vMD := 'S'
  else
  if Tipo = 'TD' then
    vMD := 'N'
  else
  if fDMCadLote.cdsPendenteSELECIONADO.AsString = 'S' then
    vMD := 'N'
  else
    vMD := 'S';
  if Tipo = 'I' then
  begin
    prc_Selecionado;
  end
  else
  if Tipo = 'R' then
  begin
    vIDProdAux := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
    fDMCadLote.cdsPendente.First;
    while not fDMCadLote.cdsPendente.Eof do
    begin
      if fDMCadLote.cdsPendenteID_PRODUTO.AsInteger = vIDProdAux then
        prc_Selecionado;
      fDMCadLote.cdsPendente.Next;
    end;
    fDMCadLote.cdsPendente.Locate('ID_PRODUTO',vIDProdAux,[loCaseInsensitive]);
  end
  else
  if Tipo = 'P' then
  begin
    vIDPedAux := fDMCadLote.cdsPendenteID.AsInteger;
    fDMCadLote.cdsPendente.First;
    while not fDMCadLote.cdsPendente.Eof do
    begin
      if fDMCadLote.cdsPendenteID.AsInteger = vIDPedAux then
        prc_Selecionado;
      fDMCadLote.cdsPendente.Next;
    end;
    fDMCadLote.cdsPendente.Locate('ID',vIDPedAux,[loCaseInsensitive]);
  end
  else
  if copy(Tipo,1,1) = 'T' then
  begin
    fDMCadLote.cdsPendente.First;
    while not fDMCadLote.cdsPendente.Eof do
    begin
      prc_Selecionado;
      fDMCadLote.cdsPendente.Next;
    end;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmGerar_Lote_Calc.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadLote.cdsPendenteSELECIONADO.AsString = 'S' then
    Background := $00FFFFBB;
end;

procedure TfrmGerar_Lote_Calc.MarcarCampoGerarOC1Click(Sender: TObject);
begin
  prc_Marcar_Desmarcar('R');
end;

procedure TfrmGerar_Lote_Calc.MarcarDesmarcarPedido1Click(Sender: TObject);
begin
  prc_Marcar_Desmarcar('P');
end;

procedure TfrmGerar_Lote_Calc.MarcartodososcampoparagerarOC1Click(
  Sender: TObject);
begin
  prc_Marcar_Desmarcar('TS');
end;

procedure TfrmGerar_Lote_Calc.Desmarcartodos1Click(Sender: TObject);
begin
  prc_Marcar_Desmarcar('TD');
end;

procedure TfrmGerar_Lote_Calc.prc_Gerar_Talao_Proc;
var
  vTalaoAux: Integer;
  vFlag: Boolean;
  vQtd_Ped: Real;
  vQtd_Aux: Real;
  vIDPedAux, vItemPedAux : Integer;
begin
  vTalaoAux := 0;

  fDMCadLote.mPedTalao.Filtered := False;
  fDMCadLote.mPedTalao.Filter   := 'ID_LOTE = ' + QuotedStr(fDMCadLote.cdsLoteID.AsString);
  fDMCadLote.mPedTalao.Filtered := True;

  fDMCadLote.cdsProduto.Locate('ID',fDMCadLote.cdsLoteID_PRODUTO.AsInteger,[loCaseInsensitive]);

  //10/03/2017
  fDMCadLote.mPedTalao.First;
  while not fDMCadLote.mPedTalao.Eof do
  begin
    prc_Gravar_cdsTalao(fDMCadLote.mPedTalaoQtd.AsFloat);
    fDMCadLote.mPedTalao.Next;
  end;
  //**************
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_mPedTalao;
begin
  fDMCadLote.mPedTalao.Insert;
  fDMCadLote.mPedTalaoID_Lote.AsInteger    := fDMCadLote.cdsLoteID.AsInteger;
  fDMCadLote.mPedTalaoID_Pedido.AsInteger  := fDMCadLote.cdsPendenteID.AsInteger;
  fDMCadLote.mPedTalaoItem_Ped.AsInteger   := fDMCadLote.cdsPendenteITEM.AsInteger;
  fDMCadLote.mPedTalaoQtd.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat));
  fDMCadLote.mPedTalaoID_Cliente.AsInteger := fDMCadLote.cdsPendenteID_CLIENTE.AsInteger;
  fDMCadLote.mPedTalao.Post;
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_cdsTalao(Qtd: Real);
var
  vTalaoAux: Integer;
  vFlag: Boolean;
  vQtd_Aux: Real;
  vIDPedAux, vItemPedAux : Integer;
begin
  vFlag    := False;
  while StrToFloat(FormatFloat('0.00000',Qtd)) > 0  do
  begin
    fDMCadLote.prc_Inserir_Talao;
    fDMCadLote.cdsTalaoID_PRODUTO.AsInteger := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
    fDMCadLote.cdsTalaoTAMANHO.AsString     := '';
    vQtd_Aux := Qtd;
    if (fDMCadLote.qProduto_ProcessoLIMITE_POR_TALAO.AsString = 'S') and (StrToFloat(FormatFloat('0',fDMCadLote.qProduto_ProcessoQTD_LIMITE_POR_TALAO.AsInteger)) > 0) then
    begin
      if StrToFloat(FormatFloat('0.00000',vQtd_Aux)) >= StrToFloat(FormatFloat('0',fDMCadLote.qProduto_ProcessoQTD_LIMITE_POR_TALAO.AsInteger)) then
        vQtd_Aux := StrToFloat(FormatFloat('0.00000',fDMCadLote.qProduto_ProcessoQTD_LIMITE_POR_TALAO.AsFloat));
    end;
    fDMCadLote.cdsTalaoQTD.AsFloat           := StrToFloat(FormatFloat('0.0000',vQtd_Aux));
    fDMCadLote.cdsTalaoQTD_PENDENTE.AsFloat  := fDMCadLote.cdsTalaoQTD.AsFloat;
    fDMCadLote.cdsTalaoQTD_PRODUZIDO.AsFloat := StrToFloat(FormatFloat('0.0000',0));
    fDMCadLote.cdsTalaoDTBAIXA.Clear;
    fDMCadLote.cdsTalaoHRBAIXA.Clear;
    fDMCadLote.cdsTalaoDTENTRADA.Clear;
    fDMCadLote.cdsTalaoHRENTRADA.Clear;
    fDMCadLote.cdsTalaoIMPRESSO.AsString := 'N';
    fDMCadLote.cdsTalaoID_COMBINACAO.Clear;
    //fDMCadLote.cdsTalaoID_PROCESSO.AsInteger := fDMCadLote.qProduto_ProcessoID_PROCESSO.AsInteger;
    fDMCadLote.cdsTalao.Post;

    if fDMCadLote.qProduto_ProcessoAGRUPAR_PEDIDOS.AsString = 'S' then
    begin
      fDMCadLote.mPedTalao.First;
      while not fDMCadLote.mPedTalao.Eof do
      begin
        prc_Gravar_cdsTalao_Ped(fDMCadLote.mPedTalaoQtd.AsFloat);
        fDMCadLote.mPedTalao.Next;
      end;
    end
    else
      prc_Gravar_cdsTalao_Ped(vQtd_Aux);

    Qtd := StrToFloat(FormatFloat('0.00000',Qtd - vQtd_Aux));
    if StrToFloat(FormatFloat('0.00000',Qtd)) <= 0 then
      vFlag := True;
  end;

  fDMCadLote.qProduto_Processo.Close;
  fDMCadLote.qProduto_Processo.ParamByName('ID').AsInteger := fDMCadLote.cdsLoteID_PRODUTO.AsInteger;
  fDMCadLote.qProduto_Processo.Open;
  while not fDMCadLote.qProduto_Processo.Eof do
  begin
    prc_Gravar_cdsTalao_Processo;
    fDMCadLote.qProduto_Processo.Next;
  end;

end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_cdsTalao_Ped(Qtd: Real);
begin
  fDMCadLote.cdsTalao_Ped.Insert;
  fDMCadLote.cdsTalao_PedID_PEDIDO.AsInteger   := fDMCadLote.mPedTalaoID_Pedido.AsInteger;
  fDMCadLote.cdsTalao_PedITEM_PEDIDO.AsInteger := fDMCadLote.mPedTalaoItem_Ped.AsInteger;
  fDMCadLote.cdsTalao_PedQTD.AsFloat           := StrToFloat(FormatFloat('0.0000',Qtd));
  fDMCadLote.cdsTalao_PedID_CLIENTE.AsInteger  := fDMCadLote.mPedTalaoID_CLIENTE.AsInteger;
  fDMCadLote.cdsTalao_PedBAIXADO.AsString      := 'N';
  fDMCadLote.cdsTalao_Ped.Post;
end;

procedure TfrmGerar_Lote_Calc.ImprimirOrdemProduo1Click(Sender: TObject);
var
  vNumOrdemAux : String;
  fDMLoteImp: TDMLoteImp;
  vArq : String;
  vObsAux : WideString;
begin
  if fDMCadLote.mLoteNum_Ordem.AsInteger > 0 then
    vNumOrdemAux := fDMCadLote.mLoteNum_Ordem.AsString
  else
    vNumOrdemAux := '';
  vNumOrdemAux := InputBox('Imprimir Ordem de Produção','Informe o número da Ordem de Produção: ', vNumOrdemAux);
  vNumOrdemAux := Monta_Numero(vNumOrdemAux,0);
  if (trim(vNumOrdemAux) = '') or (vNumOrdemAux = '0') then
  begin
    MessageDlg('*** Ordem de Produção não informada!', mtError, [mbOk], 0);
    exit;
  end;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Talao_SLTextil_Lote.fr3';
  if not (FileExists(vArq)) then
  begin
    MessageDlg('*** Relatório não localizado: ' + vArq , mtInformation, [mbOk], 0);
    exit;
  end;

  fDMLoteImp := TDMLoteImp.Create(Self);
  fDMLoteImp.cdsTalao_SL.Close;
  fDMLoteImp.sdsTalao_SL.ParamByName('NUM_ORDEM').AsInteger := StrToInt(vNumOrdemAux) ;
  fDMLoteImp.cdsTalao_SL.Open;
  fDMLoteImp.frxReport1.Report.LoadFromFile(vArq);
  fDMLoteImp.frxReport1.ShowReport;

  FreeAndNil(fDMLoteImp);
end;

procedure TfrmGerar_Lote_Calc.prc_Gravar_cdsTalao_Processo;
var
  vItemAux : Integer;
begin
  fDMCadLote.cdsTalao_Processo.Last;
  vItemAux := fDMCadLote.cdsTalao_ProcessoITEM.AsInteger;

  fDMCadLote.cdsTalao_Processo.Insert;
  fDMCadLote.cdsTalao_ProcessoID.AsInteger := fDMCadLote.cdsTalaoID.AsInteger;
  fDMCadLote.cdsTalao_ProcessoNUM_TALAO.AsInteger := fDMCadLote.cdsTalaoNUM_TALAO.AsInteger;
  fDMCadLote.cdsTalao_ProcessoITEM.AsInteger      := vItemAux + 1;
  fDMCadLote.cdsTalao_ProcessoID_PROCESSO.AsInteger := fDMCadLote.qProduto_ProcessoID_PROCESSO.AsInteger;
  fDMCadLote.cdsTalao_ProcessoDTENTRADA.Clear;
  fDMCadLote.cdsTalao_ProcessoHRENTRADA.Clear;
  fDMCadLote.cdsTalao_ProcessoDTBAIXA.Clear;
  fDMCadLote.cdsTalao_ProcessoHRBAIXA.Clear;
  fDMCadLote.cdsTalao_ProcessoQTD.AsFloat := fDMCadLote.cdsTalaoQTD.AsFloat;
  fDMCadLote.cdsTalao_ProcessoQTD_PRODUZIDO.AsFloat := 0;
  fDMCadLote.cdsTalao_Processo.Post;
end;

procedure TfrmGerar_Lote_Calc.MenuItem3Click(Sender: TObject);
begin
  prc_Marcar_Desmarcar_Ped('P');
end;

procedure TfrmGerar_Lote_Calc.prc_Marcar_Desmarcar_PED(Tipo: String);//P=Pedido   TM=Total marcar    TD=Total Desmarcar
var
  vMarcar : String;
  ID : Integer;
begin
  ID := fDMCadLote.cdsPendente_PedID.AsInteger;
  if Tipo = 'P' then
  begin
    fDMCadLote.cdsPendente_Ped.Edit;
    if fDMCadLote.cdsPendente_PedSELECIONADO.AsString = 'S' then
      fDMCadLote.cdsPendente_PedSELECIONADO.AsString := 'N'
    else
      fDMCadLote.cdsPendente_PedSELECIONADO.AsString := 'S';
    fDMCadLote.cdsPendente_Ped.Post;
  end
  else
  begin
    fDMCadLote.cdsPendente_Ped.First;
    while not fDMCadLote.cdsPendente_Ped.Eof do
    begin
      fDMCadLote.cdsPendente_Ped.Edit;
      if Tipo = 'TM' then
        fDMCadLote.cdsPendente_PedSELECIONADO.AsString := 'S'
      else
        fDMCadLote.cdsPendente_PedSELECIONADO.AsString := 'N';
      fDMCadLote.cdsPendente_Ped.Post;
      fDMCadLote.cdsPendente_Ped.Next;
    end;
  end;
  fDMCadLote.cdsPendente_Ped.Locate('ID',ID,[loCaseInsensitive]);
end;

procedure TfrmGerar_Lote_Calc.MenuItem4Click(Sender: TObject);
begin
  prc_Marcar_Desmarcar_Ped('TM');
end;

procedure TfrmGerar_Lote_Calc.MenuItem5Click(Sender: TObject);
begin
  prc_Marcar_Desmarcar_Ped('TD');
end;

procedure TfrmGerar_Lote_Calc.SMDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadLote.cdsPendente_PedSELECIONADO.AsString = 'S' then
    Background := $00FFFFBB;
end;

procedure TfrmGerar_Lote_Calc.prc_Consultar_Ped;
var
  vTextoData : String;
begin
  Label12.Caption  := '0';
  vQtd_Selecionada := 0;
  fDMCadLote.cdsPendente_Ped.Close;
  fDMCadLote.sdsPendente_Ped.CommandText := fDMCadLote.ctPendente_Ped;
  if DateEdit6.Date > 10 then
    fDMCadLote.sdsPendente_Ped.CommandText := fDMCadLote.sdsPendente_Ped.CommandText + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  if DateEdit7.Date > 10 then
    fDMCadLote.sdsPendente_Ped.CommandText := fDMCadLote.sdsPendente_Ped.CommandText + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit7.date));
  if trim(Edit5.Text) <> '' then
    fDMCadLote.sdsPendente_Ped.CommandText := fDMCadLote.sdsPendente_Ped.CommandText + ' AND  CLI.NOME LIKE ' + QuotedStr('%'+Edit5.Text+'%');
  fDMCadLote.cdsPendente_Ped.Open;
  fDMCadLote.cdsPendente_Ped.IndexFieldNames := 'NUM_PEDIDO';
end;

procedure TfrmGerar_Lote_Calc.prc_Le_cdsPendente(ID: Integer);
begin
  if ID > 0 then
  begin
    fDMCadLote.cdsPendente.Close;
    fDMCadLote.sdsPendente.CommandText := fDMCadLote.ctPendente + ' AND PED.ID = ' + IntToStr(ID);
    fDMCadLote.cdsPendente.Open;
  end;

  fDMCadLote.cdsPendente.First;
  while not fDMCadLote.cdsPendente.Eof do
  begin
    //if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    if (fDMCadLote.cdsPendenteSELECIONADO.AsString = 'S') or (ID > 0) then
    begin
      if fDMCadLote.cdsProdutoID.AsInteger <> fDMCadLote.cdsPendenteID_PRODUTO.AsInteger then
        fDMCadLote.cdsProduto.Locate('ID',fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,[loCaseInsensitive]);
      prc_Gerar_Lote;
      //O IF foi incluido 23/02/2017  para gerar os talões da SulTextil
      //if ID <= 0 then
      //begin
        if fDMCadLote.qParametrosGERAR_TALAO_AUXILIAR.AsString = 'P' then
        begin
          prc_Gravar_mPedTalao;
          //prc_Gerar_Talao_Proc;
        end
        else
          prc_Gerar_Talao;
      //end
      //else
      //begin
      //  prc_Gravar_mPedTalao;
      //  prc_Gerar_Talao2;  //SulTextil
      //end;
    end;
    vNumPedido := fDMCadLote.cdsPendenteNUM_PEDIDO.AsInteger;
    fDMCadLote.cdsPendente.Next;
  end;
end;

procedure TfrmGerar_Lote_Calc.prc_Embalagem;
var
  vQtdAux : Real;
begin
  fDMCadLote.cdsEmbalagem.Close;
  fDMCadLote.sdsEmbalagem.ParamByName('ID_PRODUTO').AsInteger := fDMCadLote.mProdAuxID_Produto.AsInteger;
  fDMCadLote.cdsEmbalagem.Open;
  fDMCadLote.cdsEmbalagem.First;
  while not fDMCadLote.cdsEmbalagem.Eof do
  begin
    if fDMCadLote.cdsEmbalagemTIPO_EMB.AsString = 'X' then
      vQtdAux := fDMCadLote.cdsEmbalagemQTD_CONSUMO.AsFloat
    else
    if fDMCadLote.cdsEmbalagemTIPO_EMB.AsString = 'C' then
    begin
      if StrToFloat(FormatFloat('0.00',fDMCadLote.cdsEmbalagemQTD_CONSUMO.AsFloat)) = 1 then
        vQtdAux := fDMCadLote.cdsEmbalagemQTD_CONSUMO.AsFloat
      else
        vQtdAux := StrToFloat(FormatFloat('0.000000',1 /  fDMCadLote.cdsEmbalagemQTD_CONSUMO.AsFloat));
    end;
    prc_Gravar_Lote_Mat(fDMCadLote.cdsLoteNUM_ORDEM.AsInteger,
                        fDMCadLote.cdsEmbalagemID_MATERIAL.AsInteger,
                        fDMCadLote.cdsEmbalagemID_COR_MAT.AsInteger,
                        fDMCadLote.cdsEmbalagemID_FORNECEDOR.AsInteger,
                        '','',vQtdAux,fDMCadLote.mProdAuxQtd.AsFloat);

    fDMCadLote.cdsEmbalagem.Next;
  end;

end;

procedure TfrmGerar_Lote_Calc.Personalizado11Click(Sender: TObject);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Lote_Fepam.fr3';
  if FileExists(vArq) then
    fDMCadLote.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  prc_Le_mLote;
  fDMCadLote.mLote.Filtered := false;
  fDMCadLote.mLote.IndexFieldNames := 'Num_Lote';
  fDMCadLote.mLote.Filter   := 'SELECIONADO = ' +  QuotedStr('S');
  fDMCadLote.mLote.Filtered := True;
  fDMCadLote.frxReport1.ShowReport;
  fDMCadLote.mLote.Filtered := false;


end;

end.
