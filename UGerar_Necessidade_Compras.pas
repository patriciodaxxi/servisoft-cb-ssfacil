unit UGerar_Necessidade_Compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, Grids, DBGrids, SMDBGrid, StdCtrls, dbXPress, SqlExpr,
  RzTabs, CurrEdit, Mask, ToolEdit, RxLookup, Menus, UCBase, ExtCtrls,
  NxCollection, NxEdit, DBVGrids, RzPanel, UGerar_Necessidade_Compras_Forn,
  ComCtrls, UDMCadNecessidade_Compras, UDMEstoque_Res, DB;

type
  TfrmGerar_Necessidade_Compras = class(TForm)
    pnlCadastro: TPanel;
    btnConsultar: TNxButton;
    RzPageControl3: TRzPageControl;
    btnGerar_OC: TNxButton;
    btnExcluir: TNxButton;
    PopupMenu1: TPopupMenu;
    MarcarCampoGerarOC1: TMenuItem;
    btnImprimir: TNxButton;
    gbxOC: TRzGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    MarcartodososcampoparagerarOC1: TMenuItem;
    Desmarcartodos1: TMenuItem;
    ProgressBar1: TProgressBar;
    gbxMapa: TRzGroupBox;
    Label12: TLabel;
    Edit1: TEdit;
    TS_GerarMapa_OrdProducao: TRzTabSheet;
    Label13: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    RzPageControl1: TRzPageControl;
    TS_Material: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid5: TSMDBGrid;
    TS_Produto: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    MarcarDesmarcargerarOCIndividual1: TMenuItem;
    Label6: TLabel;
    Shape2: TShape;
    StatusBar1: TStatusBar;
    Label7: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    TabSheet1: TRzTabSheet;
    Label8: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnGerar_OCClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure MarcarCampoGerarOC1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure MarcartodososcampoparagerarOC1Click(Sender: TObject);
    procedure Desmarcartodos1Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CurrencyEdit2Change(Sender: TObject);
    procedure MarcarDesmarcargerarOCIndividual1Click(Sender: TObject);
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
    procedure prc_OC;
    procedure prc_Inserir_OC;
    procedure prc_Gravar_OC;
    procedure prc_Gravar_OC_Itens;
    procedure prc_Limpa_Tabelas;
    procedure prc_Gravar_NumOC_Mapa;
    procedure prc_gravar_Lote_Mat_Forn;

    //novo 14/06/2015
    procedure prc_Verifica_Necessidade;
    procedure prc_Le_Lote_Mat;
    procedure prc_Gravar_mMaterial;
    procedure prc_Gravar_mMaterial_Agrup;
    procedure prc_Le_Lote;
    procedure prc_Gravar_mMaterial_Prod;
    procedure prc_Grava_mMaterial_Ord;
    procedure prc_Le_Pedido_Sobra_OC;
    procedure prc_Gravar_Lote_Mat_OC(Qtd: Real);
    function fnc_Existe_Ordem: Boolean;
  public
    { Public declarations }
  end;

var
  frmGerar_Necessidade_Compras: TfrmGerar_Necessidade_Compras;

implementation

uses
  rsDBUtils, DmdDatabase, uUtilPadrao, UMenu, uCalculo_Pedido,
  UGerar_Necessidade_Compras_MProd, USel_OrdemProd,
  UGerar_Necessidade_Compra_Alt, UGerar_Necessidade_Compras_OC,
  uGrava_Pedido;
  //UGerar_Necessidade_Compra_Alt;


{$R *.dfm}

procedure TfrmGerar_Necessidade_Compras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    prc_Grava_Grid(SMDBGrid1, Name, fDMCadNecessidade_Compras.qParametros_GeralENDGRIDS.AsString);
  finally
    FreeAndNil(fDMCadNecessidade_Compras);
    FreeAndNil(fDMEstoque_Res);
    Action := Cafree;
  end;
end;

procedure TfrmGerar_Necessidade_Compras.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadNecessidade_Compras := TDMCadNecessidade_Compras.Create(Self);
  fDMEstoque_Res := TDMEstoque_Res.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNecessidade_Compras);
  if fDMCadNecessidade_Compras.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo2.KeyValue := fDMCadNecessidade_Compras.cdsFilialID.AsInteger;
  prc_le_Grid(SMDBGrid1,Name, fDMCadNecessidade_Compras.qParametros_GeralENDGRIDS.AsString);
  SMDBGrid1.ClearFilter;
  Label7.Visible        := (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S');
  CurrencyEdit1.Visible := (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S');
  Edit3.Visible         := (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S');
  btnGerar_OC.Visible   := (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S');
  if fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString = 'S' then
  begin
    for i := 0 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'Gerar_OC') or (SMDBGrid1.Columns[i].FieldName = 'Nome_Mapa') or
         (SMDBGrid1.Columns[i].FieldName = 'Carimbo') or (SMDBGrid1.Columns[i].FieldName = 'Qtd_OC_Original') or (SMDBGrid1.Columns[i].FieldName = 'Qtd_Reserva')
          or (SMDBGrid1.Columns[i].FieldName = 'Qtd_OC_Usada') or (SMDBGrid1.Columns[i].FieldName = 'Num_OC') or (SMDBGrid1.Columns[i].FieldName = 'Item_OC')
          or (SMDBGrid1.Columns[i].FieldName = 'Qtd_OC') or (SMDBGrid1.Columns[i].FieldName = 'ID_MovEstoque_Res')  or (SMDBGrid1.Columns[i].FieldName = 'Qtd_Sobra_OC')
          or (SMDBGrid1.Columns[i].FieldName = 'Qtd_Para_OC') then
        SMDBGrid1.Columns[i].Visible := False;
    end;
  end;
  SMDBGrid5.Visible := (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S');
  gbxOC.Visible     := (fDMCadNecessidade_Compras.qParametros_LoteUSA_NECESSIDADE_IF.AsString <> 'S');
end;

procedure TfrmGerar_Necessidade_Compras.btnConsultarClick(Sender: TObject);
begin
  if (CurrencyEdit2.AsInteger <= 0) and (trim(Edit2.Text) = '') and (trim(Edit3.Text) = '') then
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
  //prc_Verifica_Necessidade;
  //if vNum_OrdProducao <= 0 then
  //  vNum_OrdProducao := CurrencyEdit2.AsInteger;
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

  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := 'NUM_MAPA;ID_MATERIAL;ID_COR;TAMANHO';
  fDMCadNecessidade_Compras.mMaterial_Prod.IndexFieldNames := 'NUM_MAPA;ID_PRODUTO;ID_COMBINACAO';

  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := 'Num_Mapa;Nome_Material;Nome_Cor;Tamanho';
  fDMCadNecessidade_Compras.mMaterial_Prod.IndexFieldNames := 'Num_Mapa;ID_Produto';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmGerar_Necessidade_Compras.SMDBGrid1DblClick(Sender: TObject);
var
  vNumMapaAux, vIDMaterialAux, vIDCorAux: Integer;
  vTamAux: string;
  vID_Aux: Integer;
begin
  if fDMCadNecessidade_Compras.mMaterial.IsEmpty then
    exit;

  vID_Aux := fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger;
  vNumMapaAux := fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger;
  vIDMaterialAux := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  vIDCorAux := fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger;
  vTamAux := '';
  if trim(fDMCadNecessidade_Compras.mMaterialTamanho.AsString) <> '' then
    vTamAux := fDMCadNecessidade_Compras.mMaterialTamanho.AsString;

  ffrmGerar_Necessidade_Compras_Forn := TfrmGerar_Necessidade_Compras_Forn.Create(self);
  ffrmGerar_Necessidade_Compras_Forn.fDMCadNecessidade_Compras := fDMCadNecessidade_Compras;
  if fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger > 0 then
    ffrmGerar_Necessidade_Compras_Forn.RxDBLookupCombo1.KeyValue := fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger;
  ffrmGerar_Necessidade_Compras_Forn.ShowModal;
  FreeAndNil(ffrmGerar_Necessidade_Compras_Forn);

  fDMCadNecessidade_Compras.mMaterial.Locate('NUM_MAPA;ID_MATERIAL;ID_COR;TAMANHO', VarArrayOf([vNumMapaAux, vIDMaterialAux, vIDCorAux, vTamAux]), [locaseinsensitive]);

  if vID_Aux <> fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger then
    prc_gravar_Lote_Mat_Forn;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Le_mEmbalagem;
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

procedure TfrmGerar_Necessidade_Compras.btnGerar_OCClick(Sender: TObject);
var
  vMSGAux: string;
  vQtdSel: Integer;
  vGravar_Mapa: Boolean;
begin
  if fDMCadNecessidade_Compras.mMaterial.IsEmpty then
    exit;

  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data de entrega não informada!', mtError, [mbOk], 0);
    Exit;
  end;
  if DateEdit1.Date < Date then
  begin
    MessageDlg('*** Data de entrega menor que data de emissão!', mtError, [mbOk], 0);
    Exit;
  end;
  if vFilial <= 0 then
  begin
    MessageDlg('*** Filial não escolhida na hora da consulta!', mtError, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Gerar OC de Compra para o fornecedor dos materiais selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vMSGAux := '';
  vQtdSel := 0;
  fDMCadNecessidade_Compras.mMaterial.First;
  while not fDMCadNecessidade_Compras.mMaterial.Eof do
  begin
    if fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger <= 0 then
      vGravar_Mapa := True;

    if fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean then
    begin
      vQtdSel := vQtdSel + 1;
      if (fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger <= 0) and (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat)) > 0) then
        vMSGAux := '*** Existe material selecionado sem fornecedor!'
      else if (StrToFloat(FormatFloat('0.000000', fDMCadNecessidade_Compras.mMaterialVlr_Unitario.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat)) > 0) then
        vMSGAux := '*** Existe material selecionado sem preço!'
      else if (fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger > 0) or (fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger > 0) then
        vMSGAux := '*** OC/Reserva já gerada para alguns materiais selecionados!';
    end;
    fDMCadNecessidade_Compras.mMaterial.Next;
  end;
  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux + #13 + #13 + '*** OC/Reserva não vai ser gerada!', mtError, [mbOk], 0);
    exit;
  end;
  if vQtdSel <= 0 then
  begin
    MessageDlg('*** Não foi selecionado nenhum material para gerar OC/Reserva!', mtError, [mbOk], 0);
    exit;
  end;

  prc_OC;
end;

procedure TfrmGerar_Necessidade_Compras.btnExcluirClick(Sender: TObject);
var
  vMSGAux: string;
begin
  if not (fDMCadNecessidade_Compras.cdsNecessidade_Compras.Active) then
    exit;

  vMSGAux := '';

  fDMCadNecessidade_Compras.prc_Excluir;

  prc_Limpa_Tabelas;
end;

procedure TfrmGerar_Necessidade_Compras.prc_OC;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vQtdReserva: Real;
begin
  fDMCadPedido := TDMCadPedido.Create(Self);

  fDMCadPedido.prc_Abrir_cdsCliente('F');

  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := 'Gerar_OC;Nome_Fornecedor;Nome_Material;Nome_Cor;Tamanho';

  vNum_OC := 0;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    //sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('PEDIDO');
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('NECESSIDADE');
    sds.ExecSQL();

    vID_Fornecedor_Mapa := 0;
    fDMCadNecessidade_Compras.mMaterial.First;
    while not fDMCadNecessidade_Compras.mMaterial.Eof do
    begin
      if (fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean) and (fDMCadNecessidade_Compras.mMaterialID_OC.AsInteger <= 0) and (fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger <= 0) and (fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString <> 'S') then
      begin
        if StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat)) > 0 then
        begin
          if vID_Fornecedor_Mapa <> fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger then
          begin
            if fDMCadPedido.cdsPedido.State in [dsEdit, dsInsert] then
              prc_Gravar_OC;
            prc_Inserir_OC;
          end;
          prc_Gravar_OC_Itens;
        end;
        //12/02/2017
        vQtdReserva := 0;
        if (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat)) > 0) then
        begin              //aqui 16/05/2017
          vQtdReserva := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat + fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat));

          prc_Le_Pedido_Sobra_OC;
        end;
        //*************************
        //if StrToFloat(FormatFloat('0.0000',fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat)) > 0 then
        if StrToFloat(FormatFloat('0.0000', vQtdReserva)) > 0 then
        begin
          fDMCadNecessidade_Compras.mMaterial.Edit;
          fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger := fDMEstoque_Res.fnc_Gravar_Estoque_Res(0, RxDBLookupCombo2.KeyValue,
                                                                                fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger,
                                                                                fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger,
                                                                                CurrencyEdit2.AsInteger, fDMCadNecessidade_Compras.mMaterialTamanho.AsString,
                                                                            //'E','NEC',fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat,
                                                                               'E', 'NEC', vQtdReserva, Date,'');
          fDMCadNecessidade_Compras.mMaterialGerado.AsString := 'S';
          fDMCadNecessidade_Compras.mMaterial.Post;
          prc_Gravar_NumOC_Mapa;
        end;
        //10/02/2017
        if StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat)) > 0 then
        begin
          fDMCadNecessidade_Compras.mMaterial.Edit;
          fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString := 'S';
          fDMCadNecessidade_Compras.mMaterial.Post;
          prc_Gravar_NumOC_Mapa;
        end;
        //******************
        if StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat)) > 0 then
          vID_Fornecedor_Mapa := fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger;
      end;
      fDMCadNecessidade_Compras.mMaterial.Next;
    end;
    if fDMCadPedido.cdsPedido.State in [dsEdit, dsInsert] then
      uGrava_Pedido.prc_Gravar(fDMCadPedido);

    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

  FreeAndNil(fDMCadPedido);

  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := 'Num_Mapa;Nome_Material;Nome_Cor;Tamanho';
end;

procedure TfrmGerar_Necessidade_Compras.MarcarCampoGerarOC1Click(Sender: TObject);
var
  vNumMapaAux, vIDMaterialAux, vIDCorAux: Integer;
  vTamAux: string;
  vGerar_OC: Boolean;
begin
  if fDMCadNecessidade_Compras.mMaterial.IsEmpty then
    exit;
  if fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger > 0 then
  begin
    MessageDlg('*** OC já gerada!', mtInformation, [mbOk], 0);
    exit;
  end;

  SMDBGrid1.DisableScroll;
  vGerar_OC := not (fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean);
  fDMCadNecessidade_Compras.mMaterial.Edit;
  fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean := vGerar_OC;
  fDMCadNecessidade_Compras.mMaterial.Post;

  vNumMapaAux := fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger;
  vIDMaterialAux := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  vIDCorAux := fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger;
  vTamAux := '';
  if trim(fDMCadNecessidade_Compras.mMaterialTamanho.AsString) <> '' then
    vTamAux := fDMCadNecessidade_Compras.mMaterialTamanho.AsString;
  fDMCadNecessidade_Compras.mMaterial.First;
  while not fDMCadNecessidade_Compras.mMaterial.Eof do
  begin
    if (vNumMapaAux = fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger) and (vIDMaterialAux = fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger) and (fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger <= 0) then
    begin
      fDMCadNecessidade_Compras.mMaterial.Edit;
      fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean := vGerar_OC;
      fDMCadNecessidade_Compras.mMaterial.Post;
    end;
    fDMCadNecessidade_Compras.mMaterial.Next;
  end;
  fDMCadNecessidade_Compras.mMaterial.Locate('NUM_MAPA;ID_MATERIAL;ID_COR;TAMANHO', VarArrayOf([vNumMapaAux, vIDMaterialAux, vIDCorAux, vTamAux]), [locaseinsensitive]);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Inserir_OC;
begin
  fDMCadPedido.prc_Inserir;
  fDMCadPedido.cdsPedidoTIPO_REG.AsString := 'C';
  fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime := Date;
  fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger := fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger;
  fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString := fDMCadNecessidade_Compras.mMaterialNome_Fornecedor.AsString;
  //04/02/2017  vai gravar o campo da ordem de produção para pesquisar nas OC
  fDMCadPedido.cdsPedidoNUM_ORDPROD.AsInteger := CurrencyEdit2.AsInteger;
  //****************
  if vNum_OC <= 0 then
  begin
    //01/03/2016 alterado a busca do próximo número do pedido/orçamento/ordem de compra
    //fDMCadPedido.qProximoPedido.Close;
    //fDMCadPedido.qProximoPedido.ParamByName('TIPO_REG').AsString := fDMCadPedido.cdsPedidoTIPO_REG.AsString;
    //fDMCadPedido.qProximoPedido.Open;
    //vNum_OC := fDMCadPedido.qProximoPedidoNUM_PEDIDO.AsInteger;
    vNum_OC := fnc_Proximo_Num_Pedido('C', fDMCadPedido.qParametros_PedUSA_NUM_PEDIDO_POR_FILIAL.AsString, fDMCadPedido.cdsFilialNUM_OC_ULT.AsInteger);
  end;
  vNum_OC := vNum_OC + 1;
  fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger := vNum_OC;
  fDMCadPedido.cdsPedidoID_MAPA.AsInteger := fDMCadNecessidade_Compras.mMaterialID_Mapa.AsInteger;

  if (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString <> 'I') and (DateEdit1.Date > 10) then
    fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime := DateEdit1.Date;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Gravar_OC_Itens;
var
  vQtdAux: Real;
begin
  fDMCadPedido.prc_Inserir_Itens;
  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  fDMCadPedido.cdsPedido_ItensTAMANHO.AsString := fDMCadNecessidade_Compras.mMaterialTamanho.AsString;
  fDMCadPedido.cdsPedido_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat));
  fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
  if DateEdit1.Date > 10 then
    fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := DateEdit1.Date;
  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString := fDMCadNecessidade_Compras.mMaterialUnidade.AsString;
  fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadNecessidade_Compras.mMaterialPerc_IPI.AsFloat));
  fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00', 0));

  fDMCadNecessidade_Compras.qMaterial.Close;
  fDMCadNecessidade_Compras.qMaterial.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  fDMCadNecessidade_Compras.qMaterial.Open;

  fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString := fDMCadNecessidade_Compras.qMaterialREFERENCIA.AsString;
  fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadNecessidade_Compras.qMaterialNOME.AsString;
  fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialVlr_Unitario.AsFloat));
  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
  fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := fDMCadNecessidade_Compras.qMaterialID_NCM.AsInteger;
  fDMCadPedido.cdsPedido_ItensID_COR.AsInteger := fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger;
  fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := fDMCadNecessidade_Compras.mMaterialCarimbo.AsString;

  //09/02/2017
  vQtdAux := 0;
  if (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat)) > StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat))) then
    vQtdAux := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat - fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat));
  fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat := StrToFloat(FormatFloat('0.0000', vQtdAux));
  //******************
  fDMCadPedido.cdsPedido_ItensTIPO_REG.AsString := 'C';
  uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido, fDMCadPedido.cdsPedido_ItensQTD.AsFloat, fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                        fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat, fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat, fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

  fDMCadPedido.cdsPedido_Itens.Post;

  fDMCadNecessidade_Compras.mMaterial.Edit;
  fDMCadNecessidade_Compras.mMaterialID_OC.AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMCadNecessidade_Compras.mMaterialItem_OC.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  if fDMCadNecessidade_Compras.mMaterialID_OC.AsInteger > 0 then
  begin
    fDMCadNecessidade_Compras.qVerifica_OC.Close;
    fDMCadNecessidade_Compras.qVerifica_OC.ParamByName('ID').AsInteger   := fDMCadNecessidade_Compras.mMaterialID_OC.AsInteger;
    fDMCadNecessidade_Compras.qVerifica_OC.ParamByName('ITEM').AsInteger := fDMCadNecessidade_Compras.mMaterialItem_OC.AsInteger;
    fDMCadNecessidade_Compras.qVerifica_OC.Open;
    if fDMCadNecessidade_Compras.qVerifica_OCCANCELADO.AsString = 'S' then
      fDMCadNecessidade_Compras.mMaterialOC_Cancelada.AsString := 'S'
    else
      fDMCadNecessidade_Compras.mMaterialOC_Cancelada.AsString := 'N';
  end;
  fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger := fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger;
  fDMCadNecessidade_Compras.mMaterialGerado.AsString := 'S';
  fDMCadNecessidade_Compras.mMaterial.Post;

  prc_Gravar_NumOC_Mapa;

  if not (fDMCadPedido.cdsPedido.State in [dsEdit, dsInsert]) then
    fDMCadPedido.cdsPedido.Edit;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Limpa_Tabelas;
begin
  fDMCadNecessidade_Compras.mMaterial.EmptyDataSet;
  fDMCadNecessidade_Compras.mMaterial_Prod.EmptyDataSet;
  fDMCadNecessidade_Compras.mEmbalagem.EmptyDataSet;
  fDMCadNecessidade_Compras.mLote.EmptyDataSet;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Gravar_NumOC_Mapa;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'UPDATE LOTE_MAT SET NUM_OC = ' + fDMCadNecessidade_Compras.mMaterialNum_OC.AsString
                     + ', ID_OC = ' + fDMCadNecessidade_Compras.mMaterialID_OC.AsString + ', ITEM_OC = '
                     + fDMCadNecessidade_Compras.mMaterialItem_OC.AsString + ', ID_FORNECEDOR = ' + fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsString
                     //+ ', QTD_OC = :QTD_OC ' + fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsString
                     //+ ', QTD_RESERVA = :QTD_RESERVA ' + fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsString
                     //+ ', QTD_OC_ORIGINAL = :QTD_OC_ORIGINAL ' + fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsString
                    + ', QTD_OC = :QTD_OC '
                    + ', QTD_RESERVA = :QTD_RESERVA '
                    + ', QTD_OC_ORIGINAL = :QTD_OC_ORIGINAL '
                    + ', GERADO = ' + QuotedStr(fDMCadNecessidade_Compras.mMaterialGerado.AsString)
                    + ', ID_MOVESTOQUE_RES = ' + fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsString
                    + ', GERADO_SOBRA_OC = ' + QuotedStr(fDMCadNecessidade_Compras.mMaterialGerado_Sobra_OC.AsString)
                    + ', QTD_USADA_OC = :QTD_USADA_OC '
                    + ' WHERE NUM_ORDEM = ' + IntToStr(CurrencyEdit2.AsInteger)
                    + '   AND ID_MATERIAL = ' + fDMCadNecessidade_Compras.mMaterialID_Material.AsString
                    + '   AND ID_COR = ' + fDMCadNecessidade_Compras.mMaterialID_Cor.AsString
                    + '   AND TAMANHO = ' + QuotedStr(fDMCadNecessidade_Compras.mMaterialTamanho.AsString)
                    + '   AND CARIMBOAUX = ' + QuotedStr(fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString);
    sds.ParamByName('QTD_OC').AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Para_OC.AsFloat));
    sds.ParamByName('QTD_RESERVA').AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_Reserva.AsFloat));
    sds.ParamByName('QTD_OC_ORIGINAL').AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_OC_Original.AsFloat));
    sds.ParamByName('QTD_USADA_OC').AsFloat := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat));
    sds.ExecSQL();

  finally
    FreeAndNil(sds);
  end;

end;

procedure TfrmGerar_Necessidade_Compras.prc_Gravar_OC;
begin
  fDMCadPedido.cdsPedido.Post;
  fDMCadPedido.cdsPedido.ApplyUpdates(0);
end;

procedure TfrmGerar_Necessidade_Compras.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadNecessidade_Compras.mMaterialOC_Cancelada.AsString = 'S' then
    Background := clRed
  else
  if (fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger > 0) or (fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger > 0) then
    Background := clMoneyGreen
  else if not (fDMCadNecessidade_Compras.mMaterialMaterial_OK.AsBoolean) and not (fDMCadNecessidade_Compras.mMaterial.IsEmpty) then
    Background := clSilver;
end;

procedure TfrmGerar_Necessidade_Compras.btnImprimirClick(Sender: TObject);
var
  vArq: string;
  vOpcaoImp: string;
  vObsPedido: string;
  vIndice_mMaterial: string;
  vComando : String;
begin
  if fDMCadNecessidade_Compras.mMaterial.IsEmpty then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Rel_Necessidade_Compras.fr3';
  if FileExists(vArq) then
    fDMCadNecessidade_Compras.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  vIndice_mMaterial := fDMCadNecessidade_Compras.mMaterial.IndexFieldNames;
  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := 'Nome_Fornecedor;ID_Fornecedor;Nome_Material;Nome_Cor;Tamanho';
  fDMCadNecessidade_Compras.mMaterial.First;
  vOpcaoImp := '(Filial: ' + IntToStr(vFilial) + ')';
  if fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger > 0 then
    vOpcaoImp := '(Filial: ' + IntToStr(vFilial) + ')'
  else
  begin
  end;

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

procedure TfrmGerar_Necessidade_Compras.MarcartodososcampoparagerarOC1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fDMCadNecessidade_Compras.mMaterial.First;
  while not fDMCadNecessidade_Compras.mMaterial.Eof do
  begin
    if fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger <= 0 then
    begin
      fDMCadNecessidade_Compras.mMaterial.Edit;
      fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean := True;
      fDMCadNecessidade_Compras.mMaterial.Post;
    end;
    fDMCadNecessidade_Compras.mMaterial.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmGerar_Necessidade_Compras.Desmarcartodos1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fDMCadNecessidade_Compras.mMaterial.First;
  while not fDMCadNecessidade_Compras.mMaterial.Eof do
  begin
    fDMCadNecessidade_Compras.mMaterial.Edit;
    fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean := False;
    fDMCadNecessidade_Compras.mMaterial.Post;
    fDMCadNecessidade_Compras.mMaterial.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Le_Lote_Mat;
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
  fDMCadNecessidade_Compras.sdsLote_Mat.ParamByName('FILIAL').AsInteger     := RxDBLookupCombo2.KeyValue;
  //fDMCadNecessidade_Compras.sdsLote_Mat.ParamByName('NUM_ORDEM').AsInteger  := vNum_OrdProducao;
  //fDMCadNecessidade_Compras.sdsLote_Mat.ParamByName('NUM_ORDEM2').AsInteger := CurrencyEdit1.AsInteger;
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

procedure TfrmGerar_Necessidade_Compras.prc_Gravar_mMaterial;
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

procedure TfrmGerar_Necessidade_Compras.prc_Le_Lote;
begin
  fDMCadNecessidade_Compras.cdsLote.Close;
  fDMCadNecessidade_Compras.sdsLote.ParamByName('NUM_ORDEM').AsInteger := vNum_OrdProducao;
  fDMCadNecessidade_Compras.cdsLote.Open;

  fDMCadNecessidade_Compras.cdsLote.First;
  Edit1.Text := fDMCadNecessidade_Compras.cdsLoteNOME.AsString;
  while not fDMCadNecessidade_Compras.cdsLote.Eof do
  begin
    prc_Gravar_mMaterial_Prod;
    fDMCadNecessidade_Compras.cdsLote.Next;
  end;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Gravar_mMaterial_Prod;
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

procedure TfrmGerar_Necessidade_Compras.prc_Grava_mMaterial_Ord;
begin
  fDMCadNecessidade_Compras.mMaterial_Ord.Insert;
  fDMCadNecessidade_Compras.mMaterial_OrdNum_Mapa.AsInteger := vNum_Necessidade;
  fDMCadNecessidade_Compras.mMaterial_OrdNum_Ord.AsInteger := CurrencyEdit2.AsInteger;
  fDMCadNecessidade_Compras.mMaterial_OrdNome_Ord.AsString := '';
  fDMCadNecessidade_Compras.mMaterial_Ord.Post;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Verifica_Necessidade;
begin
  fDMCadNecessidade_Compras.qNecessidade.Close;
  fDMCadNecessidade_Compras.qNecessidade.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit2.AsInteger;
  fDMCadNecessidade_Compras.qNecessidade.Open;

  vID_Necessidade := fDMCadNecessidade_Compras.qNecessidadeID.AsInteger;
  vNum_OrdProducao := fDMCadNecessidade_Compras.qNecessidadeNUM_ORDPRODUCAO.AsInteger;

  fDMCadNecessidade_Compras.qNecessidade.Close;
end;

procedure TfrmGerar_Necessidade_Compras.SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  ffrmGerar_Necessidade_Compras_MProd: TfrmGerar_Necessidade_Compras_MProd;
begin
  if (Key = Vk_F4) then
  begin
    ffrmGerar_Necessidade_Compras_MProd := TfrmGerar_Necessidade_Compras_MProd.Create(self);
    ffrmGerar_Necessidade_Compras_MProd.fDMCadNecessidade_Compras := fDMCadNecessidade_Compras;
    ffrmGerar_Necessidade_Compras_MProd.vNum_Ordem := CurrencyEdit2.AsInteger;
    ffrmGerar_Necessidade_Compras_MProd.ShowModal;
    FreeAndNil(ffrmGerar_Necessidade_Compras_MProd);
  end;
  if (Key = Vk_F3) then
  begin
    if (fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger > 0) or (fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger > 0) then
    begin
      MessageDlg('Já possui Ordem de Compra gerada!', mtError, [mbOK], 0);
      Exit;
    end;
    frmGerar_Necessidade_Compra_Alt := TfrmGerar_Necessidade_Compra_Alt.Create(self);
    frmGerar_Necessidade_Compra_Alt.fDMCadNecessidade_Compras := fDMCadNecessidade_Compras;
    frmGerar_Necessidade_Compra_Alt.vNum_Ordem_Loc := CurrencyEdit2.AsInteger;
    frmGerar_Necessidade_Compra_Alt.ShowModal;
    FreeAndNil(frmGerar_Necessidade_Compra_Alt);
  end;
  if (Key = Vk_F7) then
  begin
    if fDMCadNecessidade_Compras.mMaterialID_MovEstoque_Res.AsInteger > 0 then
    begin
      MessageDlg('Possui reserva, primeiro fazer a exclusão da reserva!', mtError, [mbOK], 0);
      Exit;
    end;
    frmGerar_Necessidade_Compras_OC := TfrmGerar_Necessidade_Compras_OC.Create(self);
    frmGerar_Necessidade_Compras_OC.fDMCadNecessidade_Compras := fDMCadNecessidade_Compras;
    frmGerar_Necessidade_Compras_OC.vNum_Ordem_Loc := CurrencyEdit2.AsInteger;
    frmGerar_Necessidade_Compras_OC.vItem_Loc      := fDMCadNecessidade_Compras.mMaterialItem.AsInteger;
    frmGerar_Necessidade_Compras_OC.ShowModal;
    FreeAndNil(frmGerar_Necessidade_Compras_OC);
  end;
end;

function TfrmGerar_Necessidade_Compras.fnc_Existe_Ordem: Boolean;
begin
  Result := False;
  fDMCadNecessidade_Compras.qLote.Close;
  fDMCadNecessidade_Compras.qLote.SQL.Clear;
  fDMCadNecessidade_Compras.qLote.SQL.Text := fDMCadNecessidade_Compras.ctqLote;
  if CurrencyEdit2.AsInteger > 0 then
  begin
    fDMCadNecessidade_Compras.qLote.SQL.Text := fDMCadNecessidade_Compras.qLote.SQL.Text + ' WHERE L.num_ordem = :NUM_ORDEM ';
    fDMCadNecessidade_Compras.qLote.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit2.AsInteger;
  end
  else
  begin
    fDMCadNecessidade_Compras.qLote.SQL.Text := fDMCadNecessidade_Compras.qLote.SQL.Text + ' WHERE L.nome = :NOME ';
    fDMCadNecessidade_Compras.qLote.ParamByName('NOME').AsString := Edit2.Text;
  end;
  fDMCadNecessidade_Compras.qLote.Open;
  if not fDMCadNecessidade_Compras.qLote.IsEmpty then
    Result := True;
  vNum_OrdProducao := fDMCadNecessidade_Compras.qLoteNUM_ORDEM.AsInteger;
end;

procedure TfrmGerar_Necessidade_Compras.CurrencyEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmGerar_Necessidade_Compras.Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_Return then
  begin
    if trim(Edit2.Text) <> '' then
      btnConsultarClick(Sender);
  end
  else if (Key = Vk_F2) then
  begin
    vNumOrd_Pos := CurrencyEdit2.AsInteger;
    frmSel_OrdemProd := TfrmSel_OrdemProd.Create(Self);
    frmSel_OrdemProd.ShowModal;
    CurrencyEdit2.AsInteger := vNumOrd_Pos;
    if CurrencyEdit2.AsInteger > 0 then
      CurrencyEdit2.SetFocus;
  end;
end;

procedure TfrmGerar_Necessidade_Compras.CurrencyEdit2Change(Sender: TObject);
begin
  prc_Limpa_Tabelas;
  if CurrencyEdit2.AsInteger > 0 then
    Edit3.Text := '';
end;

procedure TfrmGerar_Necessidade_Compras.MarcarDesmarcargerarOCIndividual1Click(Sender: TObject);
var
  vGerar_OC: Boolean;
begin
  if fDMCadNecessidade_Compras.mMaterial.IsEmpty then
    exit;
  if fDMCadNecessidade_Compras.mMaterialNum_OC.AsInteger > 0 then
  begin
    MessageDlg('*** OC já gerada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vGerar_OC := not (fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean);
  fDMCadNecessidade_Compras.mMaterial.Edit;
  fDMCadNecessidade_Compras.mMaterialGerar_OC.AsBoolean := vGerar_OC;
  fDMCadNecessidade_Compras.mMaterial.Post;
end;

procedure TfrmGerar_Necessidade_Compras.prc_gravar_Lote_Mat_Forn;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'UPDATE LOTE_MAT SET ID_FORNECEDOR = ' + fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsString + ' WHERE NUM_ORDEM = ' + IntToStr(CurrencyEdit2.AsInteger) + '   AND ID_MATERIAL = ' + fDMCadNecessidade_Compras.mMaterialID_Material.AsString + '   AND ID_COR = ' + fDMCadNecessidade_Compras.mMaterialID_Cor.AsString + '   AND TAMANHO = ' + QuotedStr(fDMCadNecessidade_Compras.mMaterialTamanho.AsString) + '   AND CARIMBOAUX = ' + QuotedStr(fDMCadNecessidade_Compras.mMaterialCarimbo_Aux.AsString);
    sds.ExecSQL();

  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmGerar_Necessidade_Compras.SMDBGrid1TitleClick(Column: DBGrids.TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadNecessidade_Compras.mMaterial.IndexFieldNames := Column.FieldName;
  //Column.Title.Color := clBtnShadow;
  //for i := 0 to SMDBGrid1.Columns.Count - 1 do
  //  if not (SMDBGrid1.Columns.Items[I] = Column) then
  //    SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Le_Pedido_Sobra_OC;
var
  vQtdAux: Real;
begin
  vQtdAux := StrToFloat(FormatFloat('0.0000', fDMCadNecessidade_Compras.mMaterialQtd_OC_Usada.AsFloat));
  fDMCadNecessidade_Compras.cdsPedido_Sobra_OC.Close;
  fDMCadNecessidade_Compras.sdsPedido_Sobra_OC.ParamByName('ID_PRODUTO').AsInteger := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  fDMCadNecessidade_Compras.sdsPedido_Sobra_OC.ParamByName('ID_COR').AsInteger := fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger;
  fDMCadNecessidade_Compras.sdsPedido_Sobra_OC.ParamByName('TAMANHO').AsString := fDMCadNecessidade_Compras.mMaterialTamanho.AsString;
  fDMCadNecessidade_Compras.cdsPedido_Sobra_OC.Open;
  fDMCadNecessidade_Compras.cdsPedido_Sobra_OC.IndexFieldNames := 'ID;ITEM';
  fDMCadNecessidade_Compras.cdsPedido_Sobra_OC.First;
  while not fDMCadNecessidade_Compras.cdsPedido_Sobra_OC.Eof do
  begin
    if fDMCadNecessidade_Compras.cdsPedido_Sobra_OCQTD_RESTANTE.AsFloat >= vQtdAux then
    begin
      prc_Gravar_Lote_Mat_OC(vQtdAux);
      vQtdAux := StrToFloat(FormatFloat('0.0000', 0));
    end
    else
    begin
      prc_Gravar_Lote_Mat_OC(fDMCadNecessidade_Compras.cdsPedido_Sobra_OCQTD_RESTANTE.AsFloat);
      vQtdAux := StrToFloat(FormatFloat('0.0000', vQtdAux - fDMCadNecessidade_Compras.cdsPedido_Sobra_OCQTD_RESTANTE.AsFloat));
    end;
    if StrToFloat(FormatFloat('0.0000', vQtdAux)) <= 0 then
      fDMCadNecessidade_Compras.cdsPedido_Sobra_OC.Last;
    fDMCadNecessidade_Compras.cdsPedido_Sobra_OC.Next;
  end;
end;

procedure TfrmGerar_Necessidade_Compras.prc_Gravar_Lote_Mat_OC(Qtd: Real);
begin
  fDMCadNecessidade_Compras.cdsLote_Mat_OC.Close;
  fDMCadNecessidade_Compras.sdsLote_Mat_OC.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit2.AsInteger;
  fDMCadNecessidade_Compras.sdsLote_Mat_OC.ParamByName('ITEM').AsInteger := fDMCadNecessidade_Compras.mMaterialItem.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_OC.Open;

  fDMCadNecessidade_Compras.cdsLote_Mat_OC.Insert;
  fDMCadNecessidade_Compras.cdsLote_Mat_OCNUM_ORDEM.AsInteger := CurrencyEdit2.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_OCITEM.AsInteger := fDMCadNecessidade_Compras.mMaterialItem.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_OCID_OC.AsInteger := fDMCadNecessidade_Compras.cdsPedido_Sobra_OCID.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_OCITEM_OC.AsInteger := fDMCadNecessidade_Compras.cdsPedido_Sobra_OCITEM.AsInteger;
  fDMCadNecessidade_Compras.cdsLote_Mat_OCQTD.AsFloat := StrToFloat(FormatFloat('0.0000', Qtd));
  fDMCadNecessidade_Compras.cdsLote_Mat_OC.Post;
  fDMCadNecessidade_Compras.cdsLote_Mat_OC.ApplyUpdates(0);
end;

procedure TfrmGerar_Necessidade_Compras.prc_Gravar_mMaterial_Agrup;
var
  vQtdAux: Real;
begin
  if fDMCadNecessidade_Compras.mMaterial.Locate('ID_Material;ID_Cor;Tamanho',
     VarArrayOf([fDMCadNecessidade_Compras.cdsLote_MatID_MATERIAL.AsInteger, fDMCadNecessidade_Compras.cdsLote_MatID_COR.AsInteger
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
  fDMCadNecessidade_Compras.mMaterial.Post;
end;

procedure TfrmGerar_Necessidade_Compras.Edit3Change(Sender: TObject);
begin
  if trim(Edit3.Text) <> '' then
  begin
    CurrencyEdit1.Clear;
    CurrencyEdit2.Clear;
  end;
end;

procedure TfrmGerar_Necessidade_Compras.Edit3KeyDown(Sender: TObject;
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

end.

