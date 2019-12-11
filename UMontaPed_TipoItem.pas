unit UMontaPed_TipoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, FMTBcd, DB,
  Provider, DBClient, SqlExpr, RxLookup, Mask, ToolEdit, CurrEdit,
  UDMCopiaPedido, ShellAPI, Menus, uConsProdutoPedido, UCadPedido_Itens, uDMCadPedido,
  uSel_Produto, uMostraPDF, classe.ControlePedidoProjeto, classe.Controle, classe.ConexaoBD;

type
  EnumTipo = (tpChapa, tpInox, tpAluminio);
type
  TfrmMontaPed_TipoItem = class(TForm)
    Panel1: TPanel;
    StaticText1: TStaticText;
    Panel2: TPanel;
    btnCopiar: TBitBtn;
    lblDiretorio: TLabel;
    DirectoryEdit1: TDirectoryEdit;
    SpeedButton1: TSpeedButton;
    mArquivoImportado: TClientDataSet;
    dsmArquivoImportado: TDataSource;
    mArquivoImportadoCaminhoArquivo: TStringField;
    mArquivoImportadoNomeArquivo: TStringField;
    mArquivoImportadoExtensaoArquivo: TStringField;
    mArquivoImportadoEspessura: TFloatField;
    mArquivoImportadoQtde: TFloatField;
    mArquivoImportadoLargura: TFloatField;
    mArquivoImportadoPeso: TFloatField;
    mArquivoImportadoVlr_Unitario: TFloatField;
    mArquivoImportadoVlr_Dobra: TFloatField;
    mArquivoImportadoVlr_Total: TFloatField;
    mArquivoImportadoComprimento: TFloatField;
    mArquivoImportadoPrecoKG: TFloatField;
    RadioGroup1: TRadioGroup;
    mArquivoImportadoCodigo_Produto: TIntegerField;
    Shape1: TShape;
    Label25: TLabel;
    RadioGroup2: TRadioGroup;
    mArquivoImportadoAltura: TFloatField;
    mArquivoImportadoFator_Calculo: TFloatField;
    Shape2: TShape;
    Label1: TLabel;
    pnlItens: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnAbrirPDF: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnCopiarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure prc_OpenPDF(aFile: TFileName; TypeForm: Integer = SW_NORMAL);
    procedure SpeedButton2Click(Sender: TObject);
    procedure mArquivoImportadoEspessuraChange(Sender: TField);
    procedure mArquivoImportadoNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mArquivoImportadoQtdeChange(Sender: TField);
    procedure mArquivoImportadoVlr_DobraChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure btnAbrirPDFClick(Sender: TObject);
    procedure mArquivoImportadoVlr_UnitarioChange(Sender: TField);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    ctChapaLocal: string;
    ffrmCadPedido_Itens : TfrmCadPedido_Itens;
    ffrmMostraPDF : TfrmMostraPDF;
    procedure ListarArquivos(Diretorio: string);
    procedure prc_Calcular_Peso_PC_Chapa;
    procedure prc_Calcular_VlrTotal;
    procedure prc_Desabilita_Controles;
    procedure prc_Habilita_Controles;
    function fnc_Buscar_Produto(MM : Real; Tipo : String): Integer;
    function NomeArquivoSemExtensao(Texto: string): string;

  public
    { Public declarations }
    fDMCadPedido : TDMCadPedido;
    ffrmConsultaProduto : TfrmConsultaProduto;
    fDMCopiaPedido: TDMCopiaPedido;
    vTipo_Prod: string; //P=Produto  M=Material  'Vázio'=Ambos
    vID_Cliente: Integer;
  end;

var
  frmMontaPed_TipoItem: TfrmMontaPed_TipoItem;

implementation

uses
  DmdDatabase, uUtilPadrao, uCalculo_Pedido, classe.CalcularPeso;

{$R *.dfm}

procedure TfrmMontaPed_TipoItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmMontaPed_TipoItem.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmMontaPed_TipoItem.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  mArquivoImportado.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[i] = Column) then
      SMDBGrid1.Columns.Items[i].Title.Color := clBtnFace;
end;

procedure TfrmMontaPed_TipoItem.btnCopiarClick(Sender: TObject);
var
  vID_CFOPAnt : Integer;
  vControlePedidoProjeto : TPedidoControle;
  vControle : TControle;
begin
  mArquivoImportado.First;
  if mArquivoImportado.IsEmpty then
  begin
    MessageDlg('Nenhum registro encontrado!',mtError,mbOKCancel,0);
    exit;
  end;

  ffrmCadPedido_Itens := TfrmCadPedido_Itens.Create(self);
  ffrmCadPedido_Itens.Tag := 99;
  ffrmCadPedido_Itens.fDMCadPedido   := fDMCadPedido;
  ffrmCadPedido_Itens.vMostrar_Preco := True;

  mArquivoImportado.DisableControls;
  try
    while not mArquivoImportado.Eof do
    begin
      if mArquivoImportadoQtde.AsFloat > 0 then
      begin
        fDMCadPedido.prc_Inserir_Itens;
        fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := mArquivoImportadoCodigo_Produto.AsInteger;
        fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := mArquivoImportadoQtde.AsFloat;
        fDMCadPedido.cdsPedido_ItensUNIDADE.AsString     := SQLLocate('PRODUTO','ID','UNIDADE',mArquivoImportadoCodigo_Produto.AsString);
        fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := mArquivoImportadoQtde.AsFloat;
        fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := mArquivoImportadoQtde.AsFloat;
        fDMCadPedido.cdsPedido_ItensID_NCM.AsString      := SQLLocate('PRODUTO','ID','ID_NCM',mArquivoImportadoCodigo_Produto.AsString);
        fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := SQLLocate('PRODUTO','ID','REFERENCIA',mArquivoImportadoCodigo_Produto.AsString);
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := SQLLocate('PRODUTO','ID','NOME',mArquivoImportadoCodigo_Produto.AsString);
        fDMCadPedido.cdsPedido_ItensNCM.AsString         := SQLLocate('TAB_NCM','ID','NCM',fDMCadPedido.cdsPedido_ItensID_NCM.AsString);
        fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := mArquivoImportadoVlr_Unitario.AsFloat;
        fDMCadPedido.prc_Abrir_ProdutoLoja(mArquivoImportadoCodigo_Produto.AsInteger,'','');

        if fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0 then
          uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,fDMCadPedido.vFinalidade);
        if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) and (fDMCadPedido.vID_CFOP > 0) then
          fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
        if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
          vID_CFOPAnt := fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger
        else
          vID_CFOPAnt := 0;
//        ffrmCadPedido_Itens.pnlTipo1Exit(ffrmCadPedido_Itens);
        if (vID_CFOPAnt > 0) and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <> vID_CFOPAnt) then
        begin
          fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := vID_CFOPAnt;
          if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) then
            ffrmCadPedido_Itens.RxDBLookupCombo1Exit(ffrmCadPedido_Itens);
        end;
        ffrmCadPedido_Itens.prc_Move_Dados_Itens;
        fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := mArquivoImportadoVlr_Unitario.AsFloat;
        ffrmCadPedido_Itens.BitBtn1Click(ffrmCadPedido_Itens);

         //Grava Item Tipo do Pedido
        fDMCadPedido.cdsPedido_Item_Tipo.Insert;
        fDMCadPedido.cdsPedido_Item_TipoID.AsInteger         := fDMCadPedido.cdsPedido_ItensID.AsInteger;
        fDMCadPedido.cdsPedido_Item_TipoITEM.AsInteger       := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
        fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat  := mArquivoImportadoComprimento.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat      := mArquivoImportadoLargura.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat       := mArquivoImportadoAltura.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoESPESSURA.AsFloat    := mArquivoImportadoEspessura.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat       := mArquivoImportadoPrecoKG.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat          := mArquivoImportadoQtde.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := mArquivoImportadoVlr_Unitario.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat    := mArquivoImportadoVlr_Total.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat         := mArquivoImportadoPeso.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString := mArquivoImportadoNomeArquivo.AsString;
        fDMCadPedido.cdsPedido_Item_TipoVLR_DOBRA.AsFloat    := mArquivoImportadoVlr_Dobra.AsFloat;
        fDMCadPedido.cdsPedido_Item_TipoFATOR_CALCULO.AsFloat := mArquivoImportadoFator_Calculo.AsFloat;

        fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString := 'C';
        fDMCadPedido.cdsPedido_Item_TipoDESCRICAO_TIPO.AsString := 'CHAPA';
        fDMCadPedido.cdsPedido_Item_TipoCAMINHO_ARQUIVO_PDF.AsString := mArquivoImportadoCaminhoArquivo.AsString;

        fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',(fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)));
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' ' + fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString;

        fDMCadPedido.cdsPedido_Item_Tipo.Post;
        fdmCadPedido.cdsPedido_Itens.Post;

        vControle := TControle.Create;

        vControlePedidoProjeto := TPedidoControle.create(vControle);
        try
          vControlePedidoProjeto.NomeProjeto  := mArquivoImportadoNomeArquivo.AsString;
          vControlePedidoProjeto.ID_Pessoa    := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
          vControlePedidoProjeto.PRECO_KG     := mArquivoImportadoPrecoKG.AsFloat;
          vControlePedidoProjeto.PESO         := mArquivoImportadoPeso.AsFloat;
          vControlePedidoProjeto.VLR_DOBRA    := mArquivoImportadoVlr_Dobra.AsFloat;
          vControlePedidoProjeto.VLR_UNITARIO := mArquivoImportadoVlr_Unitario.AsFloat;
          vControlePedidoProjeto.COMPRIMENTO  := mArquivoImportadoComprimento.AsFloat;
          vControlePedidoProjeto.LARGURA      := mArquivoImportadoLargura.AsFloat;
          vControlePedidoProjeto.ESPESSURA    := mArquivoImportadoEspessura.AsFloat;
          vControlePedidoProjeto.ID_PRODUTO   := mArquivoImportadoCodigo_Produto.AsInteger;
          if not vControlePedidoProjeto.InserePedidoProjeto then
            MessageDlg('Erro ao gravar o projeto',mtInformation,[mbOK],0);
        finally
          begin
            vControlePedidoProjeto.Free;
            vControle.Free;
          end;
        end;

      end;
      mArquivoImportado.Next;
    end;
  finally
    mArquivoImportado.EnableControls;
  end;
  ShowMessage('Itens importados com sucesso!');
  Close;
end;

procedure TfrmMontaPed_TipoItem.SpeedButton1Click(Sender: TObject);
begin
  ListarArquivos(DirectoryEdit1.Text);
end;

procedure TfrmMontaPed_TipoItem.ListarArquivos(Diretorio: string);
var
  F: TSearchRec;
  Ret, i: Integer;
  TempNome, Extensao: string;
  vControlePedidoProjeto : TPedidoControle;
  vControle : TControle;
  vCalcularPeso : TCalcluar_Peso;
begin
  vControle := TControle.Create;
  vControlePedidoProjeto := TPedidoControle.create(vControle);
  vCalcularPeso := TCalcluar_Peso.Create;
  mArquivoImportado.EmptyDataSet;
  prc_Desabilita_Controles;
  Extensao := '*.PDF';
  Ret := FindFirst(Diretorio + '\' + Extensao, faAnyFile, F);
  try
    while Ret = 0 do
    begin
      mArquivoImportado.Insert;
      mArquivoImportadoCaminhoArquivo.AsString := Diretorio + '\' + UpperCase(F.Name);
      i := Pos('.', F.Name);
      mArquivoImportadoNomeArquivo.AsString := NomeArquivoSemExtensao(F.Name);
      mArquivoImportadoExtensaoArquivo.AsString := ExtractFileExt(F.Name);

      vControlePedidoProjeto.PesquisaPedidoProjeto(mArquivoImportadoNomeArquivo.AsString, fDMCadPedido.cdsPedidoID_CLIENTE.AsString);
      if vControlePedidoProjeto.ESPESSURA > 0 then
      begin
        mArquivoImportadoComprimento.AsFloat := vControlePedidoProjeto.COMPRIMENTO;
        mArquivoImportadoLargura.AsFloat     := vControlePedidoProjeto.LARGURA;
        mArquivoImportadoEspessura.AsFloat   := vControlePedidoProjeto.ESPESSURA;
        mArquivoImportadoCodigo_Produto.AsInteger := vControlePedidoProjeto.ID_PRODUTO;
        mArquivoImportadoPeso.AsFloat := vControlePedidoProjeto.PESO;
        mArquivoImportadoVlr_Unitario.AsFloat := vControlePedidoProjeto.VLR_UNITARIO;
        mArquivoImportadoVlr_Dobra.AsFloat := vControlePedidoProjeto.VLR_DOBRA;
        mArquivoImportadoPrecoKG.AsFloat := vControlePedidoProjeto.PRECO_KG;

        vCalcularPeso.Comprimento := vControlePedidoProjeto.COMPRIMENTO;
        vCalcularPeso.Largura := vControlePedidoProjeto.LARGURA;
        vCalcularPeso.Espessura := vControlePedidoProjeto.ESPESSURA;

        mArquivoImportadoPeso.AsFloat := vCalcularPeso.CalcularPeso;
      end;
      mArquivoImportado.Post;
      Ret := FindNext(F);
    end;
  finally
    begin
      mArquivoImportado.First;
      FindClose(F);
      vControlePedidoProjeto.Free;
      vControle.Free;
      vCalcularPeso.Free;
      prc_habilita_Controles;
    end;
  end;
end;

function TfrmMontaPed_TipoItem.NomeArquivoSemExtensao(Texto: string): string;
var
  Ext: string;
  I: Integer;
begin
  Ext := ExtractFileExt(Texto);
  I := pos(Ext, Texto);
  if I > 0 then
    Delete(Texto, I, Length(Ext));
  Result := Texto;
end;

procedure TfrmMontaPed_TipoItem.prc_OpenPDF(aFile: TFileName; TypeForm: Integer);
var
  Pdir: PChar;
begin
  GetMem(Pdir, 256);
  StrPCopy(Pdir, aFile);
  ShellExecute(0, nil, PChar(aFile), nil, Pdir, TypeForm);
  FreeMem(Pdir, 256);
end;

procedure TfrmMontaPed_TipoItem.SpeedButton2Click(Sender: TObject);
var
  vCaminhoPDF: string;
begin
//  vCaminhoPDF := StringReplace(mArquivoImportadoCaminhoArquivo.AsString, 'DWG', 'PDF', [rfReplaceAll]);
  vCaminhoPDF := mArquivoImportadoCaminhoArquivo.AsString;
  if FileExists(vCaminhoPDF) then
    prc_OpenPDF(vCaminhoPDF);
end;

function TfrmMontaPed_TipoItem.fnc_Buscar_Produto(MM: Real;
  Tipo: String) : Integer;
begin
  ffrmConsultaProduto := TfrmConsultaProduto.Create(nil);
  ffrmConsultaProduto.cdsProduto.Close;
  ffrmConsultaProduto.sdsProduto.ParamByName('TIPO').AsString := trim(Tipo)+'%';
  ffrmConsultaProduto.sdsProduto.ParamByName('ESPESSURA').AsFloat := MM;
  ffrmConsultaProduto.cdsProduto.Open;
  if ffrmConsultaProduto.cdsProduto.RecordCount > 1  then
  begin
    ffrmConsultaProduto.ShowModal;
    if (ffrmConsultaProduto.ModalResult = mrOk) and (ffrmConsultaProduto.cdsProdutoID.AsInteger > 0) then
      Result := ffrmConsultaProduto.cdsProdutoID.AsInteger;
  end
  else
  if ffrmConsultaProduto.cdsProduto.RecordCount = 1  then
      Result := ffrmConsultaProduto.cdsProdutoID.AsInteger
  else
  begin
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    if fDMCadPedido.cdsParametrosMOSTRAR_MATERIAL_PED.AsString = 'S' then
      frmSel_Produto.vTipo_Prod := ''
    else
      frmSel_Produto.vTipo_Prod := 'P';
    frmSel_Produto.Edit1.Text := TIPO;
    frmSel_Produto.BitBtn1Click(frmSel_Produto);
    frmSel_Produto.ShowModal;
    Result := vCodProduto_Pos;
    if vCodProduto_Pos <= 0 then
    begin
      ShowMessage('Nenhum produto localizado!');
      Result := 0;
    end;
  end;
  FreeAndNil(frmConsultaProduto);
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoEspessuraChange(
  Sender: TField);
var
  Tipo : String;
  vCodigoProduto : Integer;
begin
  case EnumTipo(RadioGroup1.ItemIndex)  of
    tpChapa    : Tipo := 'CHAPA';
    tpInox     : Tipo := 'INOX';
    tpAluminio : Tipo := 'ALUMINIO';
  end;
  mArquivoImportado.DisableControls;
  try
    vCodigoProduto := fnc_Buscar_Produto(mArquivoImportadoEspessura.AsFloat,Tipo);
    mArquivoImportado.Edit;
    mArquivoImportadoCodigo_Produto.AsInteger := vCodigoProduto;
    mArquivoImportado.Post;
  finally
    mArquivoImportado.EnableControls;
  end;
  prc_Calcular_Peso_PC_Chapa;
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoNewRecord(
  DataSet: TDataSet);
begin
  mArquivoImportadoCodigo_Produto.AsInteger := 0;
end;

procedure TfrmMontaPed_TipoItem.prc_Calcular_Peso_PC_Chapa;
var
  vCalcular : TCalcluar_Peso;
begin
  mArquivoImportado.DisableControls;
  vCalcular := TCalcluar_Peso.Create;
  try
    vCalcular.Espessura    := mArquivoImportadoEspessura.AsFloat;
    vCalcular.Largura      := mArquivoImportadoLargura.AsFloat;
    vCalcular.Comprimento  := mArquivoImportadoComprimento.AsFloat;
    vCalcular.FatorCalculo := mArquivoImportadoFator_Calculo.AsFloat;
    mArquivoImportado.Edit;
    mArquivoImportadoPeso.AsFloat := vCalcular.CalcularPeso;
    mArquivoImportadoVlr_Unitario.AsFloat := vCalcular.ValorUnitario;
    mArquivoImportado.Post;
  finally
    begin
      vCalcular.Free;
      mArquivoImportado.EnableControls;
    end;
  end;
end;

procedure TfrmMontaPed_TipoItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key <> #13) Then
    Exit;
  if (SMDBGrid1.SelectedIndex + 1 <> SMDBGrid1.FieldCount) Then
    SMDBGrid1.SelectedIndex := SMDBGrid1.SelectedIndex + 1
  else
  begin
    SMDBGrid1.SelectedIndex := 1;
    mArquivoImportado.Next;
  end;
end;

procedure TfrmMontaPed_TipoItem.prc_Calcular_VlrTotal;
var
  vCalcular : TCalcluar_Peso;
begin
  vCalcular := TCalcluar_Peso.Create;
  try
    vCalcular.ValorDobra := mArquivoImportadoVlr_Dobra.AsFloat;
    vCalcular.PrecoKG := mArquivoImportadoPrecoKG.AsFloat;
    vCalcular.Peso := mArquivoImportadoPeso.AsFloat;
    vCalcular.Quantidade := mArquivoImportadoQtde.AsFloat;
    vCalcular.CalcularVlrUnitario;
    vCalcular.CalcularVlrTotal;
    mArquivoImportado.Edit;
    mArquivoImportadoVlr_Unitario.AsFloat := vCalcular.ValorUnitario;
    mArquivoImportadoVlr_Total.AsFloat := vCalcular.ValorTotal;
    mArquivoImportado.Post;
  finally
    vCalcular.Free;
  end
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoQtdeChange(
  Sender: TField);
begin
  prc_Calcular_Peso_PC_Chapa;
  prc_Calcular_VlrTotal;
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoVlr_DobraChange(
  Sender: TField);
begin
  prc_Calcular_VlrTotal;
end;

procedure TfrmMontaPed_TipoItem.FormShow(Sender: TObject);
begin
  vFilial := fDMCadPedido.cdsPedidoFILIAL.AsInteger;
end;

procedure TfrmMontaPed_TipoItem.btnAbrirPDFClick(Sender: TObject);
var
  vCaminhoPDF : String;
begin
  //Para abrir esse form tem que ter os diretórios fonts e lib no diretório da aplicação
  ffrmMostraPDF := TfrmMostraPDF.Create(Self);
  try
//    vCaminhoPDF := StringReplace(mArquivoImportadoCaminhoArquivo.AsString, 'DWG', 'PDF', [rfReplaceAll]);
    vCaminhoPDF := mArquivoImportadoCaminhoArquivo.AsString;
    ffrmMostraPDF.vCaminhoPDF := vCaminhoPDF;
    ffrmMostraPDF.edtCaminhoPDF.Text := vCaminhoPDF;
    ffrmMostraPDF.Show;
  finally
//    FreeAndNil(ffrmMostraPDF);
  end;
end;


procedure TfrmMontaPed_TipoItem.mArquivoImportadoVlr_UnitarioChange(
  Sender: TField);
begin
  mArquivoImportadoVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',(mArquivoImportadoVlr_Unitario.AsFloat * mArquivoImportadoQtde.AsFloat)));
end;

procedure TfrmMontaPed_TipoItem.prc_Desabilita_Controles;
begin
  mArquivoImportadoEspessura.OnChange := nil;
  mArquivoImportadoVlr_Unitario.OnChange := nil;
  mArquivoImportadoVlr_Dobra.OnChange := nil;

end;

procedure TfrmMontaPed_TipoItem.prc_Habilita_Controles;
begin
  mArquivoImportadoEspessura.OnChange := mArquivoImportadoEspessuraChange;
  mArquivoImportadoVlr_Unitario.OnChange := mArquivoImportadoVlr_UnitarioChange;
  mArquivoImportadoVlr_Dobra.OnChange := mArquivoImportadoVlr_DobraChange;
end;

procedure TfrmMontaPed_TipoItem.FormDestroy(Sender: TObject);
begin
  if Assigned(ffrmMostraPDF) then
    FreeAndNil(ffrmMostraPDF);
end;

end.

