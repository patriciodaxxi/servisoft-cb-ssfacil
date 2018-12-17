unit UConsLoteMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, Grids, DBGrids, SMDBGrid, StdCtrls, dbXPress, SqlExpr,
  RzTabs, CurrEdit, Mask, ToolEdit, RxLookup, Menus, UCBase, ExtCtrls,
  NxCollection, NxEdit, DBVGrids, RzPanel, UGerar_Necessidade_Compras_Forn,
  ComCtrls, UDMCadNecessidade_Compras, UDMEstoque_Res, DB;

type
  TfrmConsLoteMat = class(TForm)
    pnlCadastro: TPanel;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    ProgressBar1: TProgressBar;
    RzPageControl1: TRzPageControl;
    TS_Material: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid5: TSMDBGrid;
    TS_Produto: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    Label13: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    Edit3: TEdit;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CurrencyEdit2Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: DBGrids.TColumn);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMCadPedido: TDMCadPedido;
    fDMCadNecessidade_Compras: TDMCadNecessidade_Compras;
    fDMEstoque_Res: TDMEstoque_Res;
    ffrmGerar_Necessidade_Compras_Forn: TfrmGerar_Necessidade_Compras_Forn;
    vID_Fornecedor_Mapa: Integer;
    vNum_OC: Integer;

    //Novo
    vNum_Necessidade: Integer;
    vID_Necessidade: Integer;
    vNum_OrdProducao: Integer;

    //****
    procedure prc_Le_mEmbalagem;
    procedure prc_Limpa_Tabelas;

    //novo 14/06/2015
    procedure prc_Verifica_Necessidade;
    procedure prc_Le_Lote_Mat;
    procedure prc_Gravar_mMaterial;
    procedure prc_Gravar_mMaterial_Agrup;
    procedure prc_Le_Lote;
    procedure prc_Gravar_mMaterial_Prod;
    procedure prc_Grava_mMaterial_Ord;
    function fnc_Existe_Ordem: Boolean;
    function fnc_Busca_QtdOC : Real;

  public
    { Public declarations }
  end;

var
  frmConsLoteMat: TfrmConsLoteMat;

implementation

uses
  rsDBUtils, DmdDatabase, uUtilPadrao, UMenu, uCalculo_Pedido,
  UGerar_Necessidade_Compras_MProd, USel_OrdemProd,
  UGerar_Necessidade_Compra_Alt;
  //UGerar_Necessidade_Compra_Alt;


{$R *.dfm}

procedure TfrmConsLoteMat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    prc_Grava_Grid(SMDBGrid1, Name, fDMCadNecessidade_Compras.qParametros_GeralENDGRIDS.AsString);
  finally
    FreeAndNil(fDMCadNecessidade_Compras);
    FreeAndNil(fDMEstoque_Res);
    Action := Cafree;
  end;
end;

procedure TfrmConsLoteMat.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadNecessidade_Compras := TDMCadNecessidade_Compras.Create(Self);
  fDMEstoque_Res := TDMEstoque_Res.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNecessidade_Compras);
  if fDMCadNecessidade_Compras.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo2.KeyValue := fDMCadNecessidade_Compras.cdsFilialID.AsInteger;
  prc_le_Grid(SMDBGrid1,Name, fDMCadNecessidade_Compras.qParametros_GeralENDGRIDS.AsString);
  SMDBGrid5.Visible := (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S');
end;

procedure TfrmConsLoteMat.btnConsultarClick(Sender: TObject);
begin
  if (CurrencyEdit2.AsInteger <= 0) and (trim(Edit3.Text) = '') then
  begin
    MessageDlg('*** Número da ordem não informada!', mtError, [mbOk], 0);
    Exit;
  end;

  if trim(RxDBLookupCombo2.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOk], 0);
    Exit;
  end;

  vFilial := RxDBLookupCombo2.KeyValue;
  prc_Limpa_Tabelas;
  if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S' then
  begin
    if (CurrencyEdit2.AsInteger > 0) and (CurrencyEdit1.AsInteger <= 0) then
      CurrencyEdit1.AsInteger := CurrencyEdit2.AsInteger
    else
    if (CurrencyEdit1.AsInteger > 0) and (CurrencyEdit2.AsInteger <= 0) then
      CurrencyEdit2.AsInteger := CurrencyEdit1.AsInteger;
  end
  else
  if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S' then
  begin
    if not fnc_Existe_Ordem then
    begin
      MessageDlg('*** Ordem de produção não encontrada!', mtError, [mbOk], 0);
      Exit;
    end;
    CurrencyEdit2.AsInteger := vNum_OrdProducao;
  end;
  SMDBGrid1.DisableScroll;

  prc_Le_Lote_Mat;
  if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S' then
  begin
    prc_Le_Lote;
    prc_Grava_mMaterial_Ord;
  end;

  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := 'Nome_Setor;Nome_Material;Nome_Cor;Tamanho';
  fDMCadNecessidade_Compras.mMaterial_Prod.IndexFieldNames := 'Num_Mapa;ID_Produto';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsLoteMat.prc_Le_mEmbalagem;
var
  vQtdAux: Integer;
begin
  fDMCadNecessidade_Compras.mEmbalagem.First;
  while not fDMCadNecessidade_Compras.mEmbalagem.Eof do
  begin
    vQtdAux := fDMCadNecessidade_Compras.mEmbalagemQtd_Produto.AsInteger div fDMCadNecessidade_Compras.mEmbalagemQtd_Por_Embalagem.AsInteger;
    if fDMCadNecessidade_Compras.mEmbalagemQtd_Produto.AsInteger mod fDMCadNecessidade_Compras.mEmbalagemQtd_Por_Embalagem.AsInteger > 0 then
      vQtdAux := vQtdAux + 1;
    fDMCadNecessidade_Compras.mEmbalagem.Edit;
    fDMCadNecessidade_Compras.mEmbalagemQtd_Consumo.AsInteger := vQtdAux;
    fDMCadNecessidade_Compras.mEmbalagem.Post;
    fDMCadNecessidade_Compras.mEmbalagem.Next;
  end;
end;

procedure TfrmConsLoteMat.prc_Limpa_Tabelas;
begin
  fDMCadNecessidade_Compras.mMaterial.EmptyDataSet;
  fDMCadNecessidade_Compras.mMaterial_Prod.EmptyDataSet;
  fDMCadNecessidade_Compras.mEmbalagem.EmptyDataSet;
  fDMCadNecessidade_Compras.mLote.EmptyDataSet;
end;

procedure TfrmConsLoteMat.btnImprimirClick(Sender: TObject);
var
  vArq: string;
  vOpcaoImp: string;
  vObsPedido: string;
  vIndice_mMaterial: string;
  vComando : String;
begin
  if fDMCadNecessidade_Compras.mMaterial.IsEmpty then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ConsLoteMat.fr3';
  if FileExists(vArq) then
    fDMCadNecessidade_Compras.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  vIndice_mMaterial := fDMCadNecessidade_Compras.mMaterial.IndexFieldNames;
  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := 'Nome_Setor;Nome_Fornecedor;ID_Fornecedor;Nome_Material;Nome_Cor;Tamanho';
  fDMCadNecessidade_Compras.mMaterial.First;
  vOpcaoImp := '(Filial: ' + IntToStr(vFilial) + ')';
  if trim(Edit3.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Ordens Prod.: ' + Edit3.Text + ')';
  if (CurrencyEdit2.AsInteger > 0) and (CurrencyEdit1.AsInteger > 0) then
    vOpcaoImp := vOpcaoImp + '(Orden Ini: ' + CurrencyEdit2.Text + '  Fin: ' + CurrencyEdit1.Text + ')'
  else
  if (CurrencyEdit2.AsInteger > 0) then
    vOpcaoImp := vOpcaoImp + '(Orden Inicial: ' + CurrencyEdit2.Text + ')'
  else
  if (CurrencyEdit1.AsInteger > 0) then
    vOpcaoImp := vOpcaoImp + '(Orden Final: ' + CurrencyEdit1.Text + ')';
  vObsPedido := '';

  fDMCadNecessidade_Compras.qPedido.Close;
  //fDMCadNecessidade_Compras.qPedido.ParamByName('NUM_ORDEM').AsInteger  := CurrencyEdit2.AsInteger;
  //fDMCadNecessidade_Compras.qPedido.ParamByName('NUM_ORDEM2').AsInteger := CurrencyEdit1.AsInteger;
  vComando := '';
  if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S' then
  begin
    if trim(Edit3.Text) <> '' then
      vComando := ' WHERE L.NUM_ORDEM in (' + Edit3.Text + ')'
    else
      vComando := ' WHERE L.NUM_ORDEM >= ' + CurrencyEdit2.Text + ' AND L.NUM_ORDEM <= ' + CurrencyEdit1.Text;
    fDMCadNecessidade_Compras.qPedido.SQL.Text := fDMCadNecessidade_Compras.ctqPedido + vComando + ' ORDER BY P.NUM_PEDIDO ';
  end
  else
  begin
    vComando := ' WHERE L.num_ordem = :NUM_ORDEM ';
    fDMCadNecessidade_Compras.qPedido.SQL.Text := fDMCadNecessidade_Compras.ctqPedido + vComando + ' ORDER BY P.NUM_PEDIDO ';
    fDMCadNecessidade_Compras.qPedido.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit2.AsInteger;
  end;
  fDMCadNecessidade_Compras.qPedido.Open;
  while not fDMCadNecessidade_Compras.qPedido.Eof do
  begin
    if vObsPedido = '' then
      vObsPedido := fDMCadNecessidade_Compras.qPedidoNUM_PEDIDO.AsString
    else
      vObsPedido := vObsPedido + ', ' + fDMCadNecessidade_Compras.qPedidoNUM_PEDIDO.AsString;
    fDMCadNecessidade_Compras.qPedido.Next;
  end;
  if trim(vObsPedido) = '' then
  begin
    fDMCadNecessidade_Compras.mLote.First;
    vObsPedido := vObsPedido;
  end;
  if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S' then
  begin
    if trim(Edit3.Text) <> '' then
      fDMCadNecessidade_Compras.frxReport1.variables['NumMapa'] := QuotedStr(Edit3.Text)
    else
      fDMCadNecessidade_Compras.frxReport1.variables['NumMapa'] := QuotedStr(CurrencyEdit2.Text) + QuotedStr(' a ') + QuotedStr(CurrencyEdit1.Text);
  end
  else
   fDMCadNecessidade_Compras.frxReport1.variables['NumMapa'] := QuotedStr(fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsString);
  fDMCadNecessidade_Compras.frxReport1.variables['Opcao_Imp'] := QuotedStr(vOpcaoImp);
  fDMCadNecessidade_Compras.frxReport1.variables['Pedidos_Sel'] := QuotedStr(vObsPedido);
  fDMCadNecessidade_Compras.frxReport1.variables['NomeMapa'] := QuotedStr(fDMCadNecessidade_Compras.mMaterialNome_Mapa.AsString);
  fDMCadNecessidade_Compras.frxReport1.variables['ImpEstoque'] := QuotedStr(fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString);
  fDMCadNecessidade_Compras.frxReport1.ShowReport;
  if not fDMCadNecessidade_Compras.mMaterial.Active then
    fDMCadNecessidade_Compras.mMaterial.Open;
  if not fDMCadNecessidade_Compras.mMaterial_Prod.Active then
    fDMCadNecessidade_Compras.mMaterial_Prod.Open;
  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := vIndice_mMaterial;
end;

procedure TfrmConsLoteMat.prc_Le_Lote_Mat;
var
  vTexto : String;
  vComando : String;
begin
  //+ ' WHERE L.NUM_ORDEM in (' + CurrencyEdit2.Text+',' +CurrencyEdit1.Text + ')';
  //(:NUM_ORDEM,:NUM_ORDEM2)
  SMDBGrid1.DisableScroll;
  fDMCadNecessidade_Compras.cdsLote_Mat.Close;
  fDMCadNecessidade_Compras.sdsLote_Mat.CommandText := fDMCadNecessidade_Compras.ctLote_Mat;
  vComando := '';
  if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S' then
  begin
    if CurrencyEdit2.AsInteger > 0 then
      vComando := ' WHERE L.NUM_ORDEM >= ' + CurrencyEdit2.Text + ' AND L.NUM_ORDEM <= ' + CurrencyEdit1.Text
    else
      vComando := ' WHERE L.NUM_ORDEM in (' + Edit3.Text + ')';
    fDMCadNecessidade_Compras.sdsLote_Mat.CommandText := fDMCadNecessidade_Compras.sdsLote_Mat.CommandText + vComando;
  end
  else
  begin
    vComando := ' WHERE L.NUM_ORDEM = :NUM_ORDEM ';
    fDMCadNecessidade_Compras.sdsLote_Mat.CommandText := fDMCadNecessidade_Compras.sdsLote_Mat.CommandText + vComando;
    fDMCadNecessidade_Compras.sdsLote_Mat.ParamByName('NUM_ORDEM').AsInteger  := CurrencyEdit2.AsInteger;
  end;
  if trim(RxDBLookupCombo1.Text) <> '' then
    fDMCadNecessidade_Compras.sdsLote_Mat.CommandText := fDMCadNecessidade_Compras.sdsLote_Mat.CommandText
                                                       + ' AND L.ID_SETOR =  ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMCadNecessidade_Compras.sdsLote_Mat.ParamByName('FILIAL').AsInteger     := RxDBLookupCombo2.KeyValue;
  fDMCadNecessidade_Compras.cdsLote_Mat.Open;

  fDMCadNecessidade_Compras.cdsLote_Mat.First;
  while not fDMCadNecessidade_Compras.cdsLote_Mat.Eof do
  begin
    if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S' then
      prc_Gravar_mMaterial_Agrup
    else
      prc_Gravar_mMaterial;
    fDMCadNecessidade_Compras.cdsLote_Mat.Next;
  end;

  if (fDMCadNecessidade_Compras.qParametros_LoteLOTE_TEXTIL.AsString <> 'S') and (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S') then
  begin
    fDMCadNecessidade_Compras.mMaterial.First;
    while not fDMCadNecessidade_Compras.mMaterial.Eof do
    begin
      fDMCadNecessidade_Compras.qVerifica_Mat.Close;
      fDMCadNecessidade_Compras.qVerifica_Mat.ParamByName('ID_Material').AsInteger := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
      fDMCadNecessidade_Compras.qVerifica_Mat.ParamByName('Num_Ordem').AsInteger := vNum_OrdProducao;
      fDMCadNecessidade_Compras.qVerifica_Mat.Open;
      if fDMCadNecessidade_Compras.qVerifica_MatCONTADOR.AsInteger <= 0 then
      begin
        fDMCadNecessidade_Compras.mMaterial.Edit;
        fDMCadNecessidade_Compras.mMaterialMaterial_OK.AsBoolean := False;
        fDMCadNecessidade_Compras.mMaterial.Post;
      end;
      fDMCadNecessidade_Compras.mMaterial.Next;
    end;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsLoteMat.prc_Gravar_mMaterial;
var
  vQtdAux: Real;
begin
  fDMCadNecessidade_Compras.mMaterial.Insert;
  fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger := fDMCadNecessidade_Compras.qLoteNUM_ORDEM.AsInteger;
  fDMCadNecessidade_Compras.mMaterialItem.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatITEM.AsInteger;
  fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_MATERIAL.AsInteger;
  fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_COR.AsInteger;
  fDMCadNecessidade_Compras.mMaterialNome_Cor.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_COR.AsString;
  fDMCadNecessidade_Compras.mMaterialTamanho.AsString := fDMCadNecessidade_Compras.cdsLote_MatTAMANHO.AsString;
  fDMCadNecessidade_Compras.mMaterialUnidade.AsString := fDMCadNecessidade_Compras.cdsLote_MatUNIDADE.AsString;
  fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat := fDMCadNecessidade_Compras.cdsLote_MatQTD_CONSUMO.AsFloat;
  fDMCadNecessidade_Compras.mMaterialQtd_Pares_Prod.AsFloat := fDMCadNecessidade_Compras.cdsLote_MatQTD_PRODUTO.AsFloat;
  fDMCadNecessidade_Compras.mMaterialID_OC.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_OC.AsInteger;
  fDMCadNecessidade_Compras.mMaterialItem_OC.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatITEM_OC.AsInteger;
  fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatNUM_OC.AsInteger;
  fDMCadNecessidade_Compras.mMaterialNome_Material.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_MATERIAL.AsString;
  fDMCadNecessidade_Compras.mMaterialQtd_OC_Fat.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_OC_FAT.AsFloat));
  fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString := fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString;
  if fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString <> 'S' then
    fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString := 'N';
  if fDMCadNecessidade_Compras.cdsLote_MatID_FORNECEDOR.AsInteger > 0 then
  begin
    fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_FORNECEDOR.AsInteger;
    fDMCadNecessidade_Compras.mMaterialNome_Fornecedor.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_FORNECEDOR.AsString;
  end
  else
  begin
    fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_FORNECEDOR_MAT.AsInteger;
    fDMCadNecessidade_Compras.mMaterialNome_Fornecedor.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_FORNECEDOR_MAT.AsString;
  end;
  fDMCadNecessidade_Compras.mMaterialVlr_Unitario.AsFloat := fDMCadNecessidade_Compras.cdsLote_MatPRECO_CUSTO.AsFloat;
  fDMCadNecessidade_Compras.mMaterialVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadNecessidade_Compras.cdsLote_MatPRECO_CUSTO.AsFloat * fDMCadNecessidade_Compras.cdsLote_MatQTD_CONSUMO.AsFloat));
  fDMCadNecessidade_Compras.mMaterialPerc_IPI.AsFloat := fDMCadNecessidade_Compras.cdsLote_MatPERC_IPI.AsFloat;
  fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean := False;
  fDMCadNecessidade_Compras.mMaterialNome_Mapa.AsString := fDMCadNecessidade_Compras.qLoteNOME.AsString;
  fDMCadNecessidade_Compras.mMaterialID_Mapa.AsInteger := vID_Necessidade;
  fDMCadNecessidade_Compras.mMaterialCarimbo.AsString := fDMCadNecessidade_Compras.cdsLote_MatCARIMBO.AsString;
  fDMCadNecessidade_Compras.mMaterialTransfer.AsString := fDMCadNecessidade_Compras.cdsLote_MatTRANSFER.AsString;
  fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString := fDMCadNecessidade_Compras.cdsLote_MatCARIMBOAUX.AsString;
  fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_ESTOQUE.AsFloat));
  if StrToFloat(FormatFloat('0.00000', fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat)) < 0 then
    fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat := StrToFloat(FormatFloat('0', 0));
  fDMCadNecessidade_Compras.mMaterialQtd_OC.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_OC.AsFloat));
  fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_RESERVA.AsFloat));
  fDMCadNecessidade_Compras.mMaterialGerado.AsString := fDMCadNecessidade_Compras.cdsLote_MatGERADO.AsString;
  fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_MOVESTOQUE_RES.AsInteger;
  //09/02/2017
  if fDMCadNecessidade_Compras.cdsLote_MatGerado.AsString = 'S' then
    fDMCadNecessidade_Compras.mMaterialQtd_Sobra_OC.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_SOBRA_OC.AsFloat))
  else
    fDMCadNecessidade_Compras.mMaterialQtd_Sobra_OC.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_ESTOQUE_OC.AsFloat));
  fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_USADA_OC.AsFloat));
  //************************
  if fDMCadNecessidade_Compras.mMaterialID_OC.AsInteger > 0 then
    fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_OC.AsFloat + fDMCadNecessidade_Compras.cdsLote_MatQTD_OC_FAT.AsFloat))
  else if fDMCadNecessidade_Compras.cdsLote_MatGerado.AsString = 'S' then
    fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', 0))
  else if fDMCadNecessidade_Compras.cdsLote_MatGerado.AsString <> 'S' then
  begin
    fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := fDMCadNecessidade_Compras.cdsLote_MatQTD_CONSUMO.AsFloat;
    if StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat)) <= StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat)) then
    begin
      fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat));
      fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', 0));
    end
    else
    begin
      if StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat)) > 0 then
      begin
        fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat));
        vQtdAux := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat - fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat));
        fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', vQtdAux));
      end
      else
      begin
        fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', 0));
        fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat));
      end;
    end;
    if (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Sobra_OC.AsFloat)) > 0) then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat - fDMCadNecessidade_Compras.mMaterialQtd_Sobra_OC.AsFloat));
      if StrToFloat(FormatFloat('0.0000', vQtdAux)) <= 0 then
      begin
        vQtdAux := StrToFloat(FormatFloat('0.0000', 0));
        fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat));
      end
      else
        fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Sobra_OC.AsFloat));
      fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat := StrToFloat(FormatFloat('0.0000', vQtdAux));
      fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', vQtdAux));
    end;
  end;

  if fDMCadNecessidade_Compras.cdsLote_MatID_OC.AsInteger > 0 then
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_OC_ORIGINAL.AsFloat))
  else if fDMCadNecessidade_Compras.cdsLote_MatID_MOVESTOQUE_RES.AsInteger > 0 then
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', 0))
  else
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat));

  fDMCadNecessidade_Compras.mMaterial.Post;
end;

procedure TfrmConsLoteMat.prc_Le_Lote;
begin
  fDMCadNecessidade_Compras.cdsLote.Close;
  fDMCadNecessidade_Compras.sdsLote.ParamByName('NUM_ORDEM').AsInteger := vNum_OrdProducao;
  fDMCadNecessidade_Compras.cdsLote.Open;

  fDMCadNecessidade_Compras.cdsLote.First;
  while not fDMCadNecessidade_Compras.cdsLote.Eof do
  begin
    prc_Gravar_mMaterial_Prod;
    fDMCadNecessidade_Compras.cdsLote.Next;
  end;
end;

procedure TfrmConsLoteMat.prc_Gravar_mMaterial_Prod;
begin
  fDMCadNecessidade_Compras.mMaterial_Prod.Insert;
  fDMCadNecessidade_Compras.mMaterial_ProdNum_Mapa.AsInteger := vNum_Necessidade;
  fDMCadNecessidade_Compras.mMaterial_ProdID_Produto.AsInteger := fDMCadNecessidade_Compras.cdsLoteID_PRODUTO.AsInteger;
  fDMCadNecessidade_Compras.mMaterial_ProdReferencia.AsString := fDMCadNecessidade_Compras.cdsLoteREFERENCIA.AsString;
  fDMCadNecessidade_Compras.mMaterial_ProdNome_Produto.AsString := fDMCadNecessidade_Compras.cdsLoteNOME_PRODUTO.AsString;
  fDMCadNecessidade_Compras.mMaterial_ProdID_Combinacao.AsInteger := fDMCadNecessidade_Compras.cdsLoteID_COMBINACAO.AsInteger;
  fDMCadNecessidade_Compras.mMaterial_ProdNome_Combinacao.AsString := fDMCadNecessidade_Compras.cdsLoteNOME_COMBINACAO.AsString;
  fDMCadNecessidade_Compras.mMaterial_ProdQtd.AsFloat := fDMCadNecessidade_Compras.cdsLoteQTD.AsFloat;
  fDMCadNecessidade_Compras.mMaterial_Prod.Post;
end;

procedure TfrmConsLoteMat.prc_Grava_mMaterial_Ord;
begin
  fDMCadNecessidade_Compras.mMaterial_Ord.Insert;
  fDMCadNecessidade_Compras.mMaterial_OrdNum_Mapa.AsInteger := vNum_Necessidade;
  fDMCadNecessidade_Compras.mMaterial_OrdNum_Ord.AsInteger := CurrencyEdit2.AsInteger;
  fDMCadNecessidade_Compras.mMaterial_OrdNome_Ord.AsString := '';
  fDMCadNecessidade_Compras.mMaterial_Ord.Post;
end;

procedure TfrmConsLoteMat.prc_Verifica_Necessidade;
begin
  fDMCadNecessidade_Compras.qNecessidade.Close;
  fDMCadNecessidade_Compras.qNecessidade.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit2.AsInteger;
  fDMCadNecessidade_Compras.qNecessidade.Open;

  vID_Necessidade := fDMCadNecessidade_Compras.qNecessidadeID.AsInteger;
  vNum_OrdProducao := fDMCadNecessidade_Compras.qNecessidadeNUM_ORDPRODUCAO.AsInteger;

  fDMCadNecessidade_Compras.qNecessidade.Close;
end;

function TfrmConsLoteMat.fnc_Existe_Ordem: Boolean;
begin
  Result := False;
  fDMCadNecessidade_Compras.qLote.Close;
  fDMCadNecessidade_Compras.qLote.SQL.Clear;
  fDMCadNecessidade_Compras.qLote.SQL.Text := fDMCadNecessidade_Compras.ctqLote;
  if CurrencyEdit2.AsInteger > 0 then
  begin
    fDMCadNecessidade_Compras.qLote.SQL.Text := fDMCadNecessidade_Compras.qLote.SQL.Text + ' WHERE L.num_ordem = :NUM_ORDEM ';
    fDMCadNecessidade_Compras.qLote.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit2.AsInteger;
  end;
  fDMCadNecessidade_Compras.qLote.Open;
  if not fDMCadNecessidade_Compras.qLote.IsEmpty then
    Result := True;
  vNum_OrdProducao := fDMCadNecessidade_Compras.qLoteNUM_ORDEM.AsInteger;
end;

procedure TfrmConsLoteMat.CurrencyEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vNumOrd_Pos := CurrencyEdit2.AsInteger;
    frmSel_OrdemProd := TfrmSel_OrdemProd.Create(Self);
    frmSel_OrdemProd.ShowModal;
    CurrencyEdit2.AsInteger := vNumOrd_Pos;
  end
  else if key = vk_Return then
  begin
    if CurrencyEdit2.AsInteger > 0 then
      btnConsultarClick(Sender);
  end;
end;

procedure TfrmConsLoteMat.CurrencyEdit2Change(Sender: TObject);
begin
  prc_Limpa_Tabelas;
  if CurrencyEdit2.AsInteger > 0 then
    Edit3.Text := '';
end;

procedure TfrmConsLoteMat.SMDBGrid1TitleClick(Column: DBGrids.TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsLoteMat.prc_Gravar_mMaterial_Agrup;
var
  vQtdAux: Real;
  vIDSetor : Integer;
begin
  vIDSetor := 0;
  if fDMCadNecessidade_Compras.cdsLote_MatID_SETOR.AsInteger > 0 then
    vIDSetor := fDMCadNecessidade_Compras.cdsLote_MatID_SETOR.AsInteger;
  if fDMCadNecessidade_Compras.mMaterial.Locate('ID_Setor;ID_Material;ID_Cor;Tamanho',
     VarArrayOf([vIDSetor,fDMCadNecessidade_Compras.cdsLote_MatID_MATERIAL.AsInteger,fDMCadNecessidade_Compras.cdsLote_MatID_COR.AsInteger
                 ,fDMCadNecessidade_Compras.cdsLote_MatTAMANHO.AsString]), [locaseinsensitive]) then
    fDMCadNecessidade_Compras.mMaterial.Edit
  else
  begin
    fDMCadNecessidade_Compras.mMaterial.Insert;
    if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S' then
      fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger := fDMCadNecessidade_Compras.qLoteNUM_ORDEM.AsInteger
    else
      fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger := 0;
    fDMCadNecessidade_Compras.mMaterialItem.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatITEM.AsInteger;
    fDMCadNecessidade_Compras.mMaterialID_Setor.AsInteger := vIDSetor;
    fDMCadNecessidade_Compras.mMaterialNome_Setor.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_SETOR.AsString;
    fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_MATERIAL.AsInteger;
    fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_COR.AsInteger;
    fDMCadNecessidade_Compras.mMaterialNome_Cor.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_COR.AsString;
    fDMCadNecessidade_Compras.mMaterialTamanho.AsString := fDMCadNecessidade_Compras.cdsLote_MatTAMANHO.AsString;
    fDMCadNecessidade_Compras.mMaterialUnidade.AsString := fDMCadNecessidade_Compras.cdsLote_MatUNIDADE.AsString;
    fDMCadNecessidade_Compras.mMaterialID_OC.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_OC.AsInteger;
    fDMCadNecessidade_Compras.mMaterialItem_OC.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatITEM_OC.AsInteger;
    fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatNUM_OC.AsInteger;
    fDMCadNecessidade_Compras.mMaterialQtd_OC_Fat.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_OC_FAT.AsFloat));
    fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString := fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString;
    if fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString <> 'S' then
      fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString := 'N';
    if fDMCadNecessidade_Compras.cdsLote_MatID_FORNECEDOR.AsInteger > 0 then
    begin
      fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_FORNECEDOR.AsInteger;
      fDMCadNecessidade_Compras.mMaterialNome_Fornecedor.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_FORNECEDOR.AsString;
    end
    else
    begin
      fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger := fDMCadNecessidade_Compras.cdsLote_MatID_FORNECEDOR_MAT.AsInteger;
      fDMCadNecessidade_Compras.mMaterialNome_Fornecedor.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_FORNECEDOR_MAT.AsString;
    end;
    fDMCadNecessidade_Compras.mMaterialNome_Material.AsString := fDMCadNecessidade_Compras.cdsLote_MatNOME_MATERIAL.AsString;
    fDMCadNecessidade_Compras.mMaterialVlr_Unitario.AsFloat := fDMCadNecessidade_Compras.cdsLote_MatPRECO_CUSTO.AsFloat;
    fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean := False;
    if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S' then
      fDMCadNecessidade_Compras.mMaterialNome_Mapa.AsString := fDMCadNecessidade_Compras.qLoteNOME.AsString
    else
      fDMCadNecessidade_Compras.mMaterialNome_Mapa.AsString := '';
    fDMCadNecessidade_Compras.mMaterialID_Mapa.AsInteger := vID_Necessidade;
    fDMCadNecessidade_Compras.mMaterialCarimbo.AsString := fDMCadNecessidade_Compras.cdsLote_MatCARIMBO.AsString;
    fDMCadNecessidade_Compras.mMaterialTransfer.AsString := fDMCadNecessidade_Compras.cdsLote_MatTRANSFER.AsString;
    fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString := fDMCadNecessidade_Compras.cdsLote_MatCARIMBOAUX.AsString;
  end;

  fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat := fDMCadNecessidade_Compras.mMaterialQtd_Consumo.AsFloat + fDMCadNecessidade_Compras.cdsLote_MatQTD_CONSUMO.AsFloat;
  fDMCadNecessidade_Compras.mMaterialQtd_Pares_Prod.AsFloat := fDMCadNecessidade_Compras.mMaterialQtd_Pares_Prod.AsFloat + fDMCadNecessidade_Compras.cdsLote_MatQTD_PRODUTO.AsFloat;
  fDMCadNecessidade_Compras.mMaterialVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadNecessidade_Compras.cdsLote_MatPRECO_CUSTO.AsFloat * fDMCadNecessidade_Compras.cdsLote_MatQTD_CONSUMO.AsFloat));
  fDMCadNecessidade_Compras.mMaterialPerc_IPI.AsFloat := fDMCadNecessidade_Compras.cdsLote_MatPERC_IPI.AsFloat;
  fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_ESTOQUE.AsFloat));
  if StrToFloat(FormatFloat('0.00000', fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat)) < 0 then
    fDMCadNecessidade_Compras.mMaterialQtd_Estoque.AsFloat := StrToFloat(FormatFloat('0', 0));
  fDMCadNecessidade_Compras.mMaterialQtd_OC.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_OC.AsFloat));
  fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.cdsLote_MatQTD_RESERVA.AsFloat));
  fDMCadNecessidade_Compras.mMaterialGerado.AsString := fDMCadNecessidade_Compras.cdsLote_MatGERADO.AsString;
  fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger := 0;
  fDMCadNecessidade_Compras.mMaterialQtd_Sobra_OC.AsFloat := fnc_Busca_QtdOC;
  fDMCadNecessidade_Compras.mMaterial.Post;
end;

procedure TfrmConsLoteMat.Edit3Change(Sender: TObject);
begin
  if trim(Edit3.Text) <> '' then
  begin
    CurrencyEdit1.Clear;
    CurrencyEdit2.Clear;
  end;
end;

procedure TfrmConsLoteMat.Edit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vNUM_Ordem_Sel := Edit3.Text;
    frmSel_OrdemProd := TfrmSel_OrdemProd.Create(Self);
    frmSel_OrdemProd.ShowModal;
    Edit3.Text := vNUM_Ordem_Sel;
  end;
end;

function TfrmConsLoteMat.fnc_Busca_QtdOC: Real;
var
  vID_Cor : Integer;
  vTamanho : String;
begin
  Result := 0;
  vID_Cor := 0;
  if fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger > 0 then
    vID_Cor := fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger;
  vTamanho := '';
  if trim(fDMCadNecessidade_Compras.mMaterialTamanho.AsString) <> '' then
    vTamanho := fDMCadNecessidade_Compras.mMaterialTamanho.AsString;

  fDMCadNecessidade_Compras.qQtdOC.Close;
  fDMCadNecessidade_Compras.qQtdOC.ParamByName('ID_PRODUTO').AsInteger := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  fDMCadNecessidade_Compras.qQtdOC.ParamByName('ID_COR').AsInteger     := vID_Cor;
  fDMCadNecessidade_Compras.qQtdOC.ParamByName('TAMANHO').AsString     := vTamanho;
  fDMCadNecessidade_Compras.qQtdOC.Open;
  Result := StrToFloat(FormatFloat('0.0000',fDMCadNecessidade_Compras.qQtdOCQTD_RESTANTE.AsFloat));
end;

end.

