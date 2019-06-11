unit UMontaPed_TipoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, FMTBcd, DB,
  Provider, DBClient, SqlExpr, RxLookup, Mask, ToolEdit, CurrEdit,
  UDMCopiaPedido, ShellAPI, Menus, uConsProdutoPedido, UCadPedido_Itens, uDMCadPedido,
  uSel_Produto, uMostraPDF;

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
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnCopiarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure prc_OpenPDF(aFile: TFileName; TypeForm: Integer = SW_NORMAL);
    procedure SpeedButton2Click(Sender: TObject);
    procedure mArquivoImportadoEspessuraChange(Sender: TField);
    procedure mArquivoImportadoNewRecord(DataSet: TDataSet);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure mArquivoImportadoLarguraChange(Sender: TField);
    procedure mArquivoImportadoComprimentoChange(Sender: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SMDBGrid1ColExit(Sender: TObject);
    procedure mArquivoImportadoPrecoKGChange(Sender: TField);
    procedure mArquivoImportadoQtdeChange(Sender: TField);
    procedure mArquivoImportadoVlr_DobraChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure btnAbrirPDFClick(Sender: TObject);
    procedure mArquivoImportadoVlr_UnitarioChange(Sender: TField);
  private
    { Private declarations }
    ctChapaLocal: string;
    ffrmCadPedido_Itens : TfrmCadPedido_Itens;
    ffrmMostraPDF : TfrmMostraPDF;
    procedure ListarArquivos(Diretorio: string);
    procedure prc_Calcular_Peso_PC_Chapa;
    procedure prc_Calcular_VlrTotal;

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
  DmdDatabase, uUtilPadrao, uCalculo_Pedido;

{$R *.dfm}

procedure TfrmMontaPed_TipoItem.SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

//  if Key = Vk_Return then
//  begin
//    Close;
//  end;
end;

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
      if mArquivoImportadoCodigo_Produto.AsInteger > 0 then
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

        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' ' + fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString;

        fDMCadPedido.cdsPedido_Item_Tipo.Post;
        fdmCadPedido.cdsPedido_Itens.Post;
      end;
      mArquivoImportado.Next;
    end;
  finally
    mArquivoImportado.EnableControls;
  end;
  ShowMessage('Itens importados com sucesso!');
  Close;



//  fDMCopiaPedido.mAux.EmptyDataSet;
//  cdsChapa.First;
//  while not cdsChapa.Eof do
//  begin
//    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
//    begin
//      fDMCopiaPedido.mAux.Insert;
//      fDMCopiaPedido.mAuxID_Pedido.AsInteger   := cdsChapaID_PEDIDO.AsInteger;
//      fDMCopiaPedido.mAuxNum_Pedido.AsInteger  := cdsChapaNUM_PEDIDO.AsInteger;
//      fDMCopiaPedido.mAuxItem_Pedido.AsInteger := cdsChapaITEM_PEDIDO.AsInteger;
//      fDMCopiaPedido.mAux.Post;
//    end;
//    cdsChapa.Next;
//  end;
//  Close;
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
begin
  mArquivoImportado.EmptyDataSet;
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
      mArquivoImportado.Post;
      Ret := FindNext(F);
    end;
  finally
    mArquivoImportado.First;
    FindClose(F);
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

procedure TfrmMontaPed_TipoItem.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (mArquivoImportadoEspessura.AsFloat > 0) and (mArquivoImportadoCodigo_Produto.AsInteger = 0) then
  begin
    Background  := clRed;
  end;
  if (mArquivoImportadoEspessura.AsFloat > 0) and (mArquivoImportadoCodigo_Produto.AsInteger > 0) and
     (fnc_Buscar_Estoque(mArquivoImportadoCodigo_Produto.AsInteger, fDMCadPedido.cdsPedidoID_LOCAL_ESTOQUE.AsInteger,0) <= 0) then
  begin
    Background  := clGreen;
  end;
end;

procedure TfrmMontaPed_TipoItem.prc_Calcular_Peso_PC_Chapa;
var
  vAux : Real;
begin
  vAux := (mArquivoImportadoComprimento.AsFloat + 10) * (mArquivoImportadoLargura.AsFloat + 10)
        * mArquivoImportadoEspessura.AsFloat * 8;
//        * mArquivoImportadoAltura.AsFloat * 8; ver com o Cleomar o campo altura ou espessura
  if StrToFloat(FormatFloat('0.0000000',vAux)) > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.0000000',vAux / 1000000));
    mArquivoImportado.Edit;
    mArquivoImportadoPeso.AsFloat := StrToFloat(FormatFloat('0.0000000',vAux));
    mArquivoImportado.Post;
  end;
  if (StrToFloat(FormatFloat('0.000',mArquivoImportadoFator_Calculo.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000000',mArquivoImportadoPeso.AsFloat)) > 0) then
  begin
    mArquivoImportado.Edit;
    mArquivoImportadoPeso.AsFloat := StrToFloat(FormatFloat('0.0000000',mArquivoImportadoPeso.AsFloat +((mArquivoImportadoPeso.AsFloat * mArquivoImportadoFator_Calculo.AsFloat) / 100)));
    mArquivoImportado.Post;
  end;
  if StrToFloat(FormatFloat('0.0000000',mArquivoImportadoPeso.AsFloat)) > 0 then
  begin
    mArquivoImportado.Edit;
    mArquivoImportadoVlr_Unitario.AsFloat := StrToFloat(FormatFloat('0.00',mArquivoImportadoPeso.AsFloat * mArquivoImportadoPrecoKG.AsFloat));
    mArquivoImportado.Post;
  end;
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoLarguraChange(
  Sender: TField);
begin
  prc_Calcular_Peso_PC_Chapa;
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoComprimentoChange(
  Sender: TField);
begin
  prc_Calcular_Peso_PC_Chapa;
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

procedure TfrmMontaPed_TipoItem.SMDBGrid1ColExit(Sender: TObject);
begin
//  if (SMDBGrid1.SelectedField.AsString <> '') and (SMDBGrid1.Columns[SMDBGrid1.SelectedIndex].FieldName = 'Comprimento') then
//    SMDBGrid1.SelectedField.Value := fnc_Somar_Edit(SMDBGrid1.SelectedField.AsString);
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoPrecoKGChange(
  Sender: TField);
begin
  prc_Calcular_Peso_PC_Chapa;
end;

procedure TfrmMontaPed_TipoItem.prc_Calcular_VlrTotal;
begin
  if StrToFloat(FormatFloat('0.0000000',mArquivoImportadoPeso.AsFloat)) > 0 then
  begin
    mArquivoImportado.Edit;
    mArquivoImportadoVlr_Unitario.AsFloat := StrToFloat(FormatFloat('0.00',mArquivoImportadoVlr_Dobra.AsFloat + (mArquivoImportadoPeso.AsFloat * mArquivoImportadoPrecoKG.AsFloat)));
    mArquivoImportado.Post;
  end;
  if (mArquivoImportadoVlr_Unitario.AsFloat > 0) and (mArquivoImportadoQtde.AsFloat > 0) then
  begin
    mArquivoImportado.Edit;
    mArquivoImportadoVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',mArquivoImportadoVlr_Unitario.AsFloat * mArquivoImportadoQtde.AsFloat));
    mArquivoImportado.Post;
  end;
end;

procedure TfrmMontaPed_TipoItem.mArquivoImportadoQtdeChange(
  Sender: TField);
begin
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
    ffrmMostraPDF.ShowModal;
  finally
    FreeAndNil(ffrmMostraPDF);
  end;
end;


procedure TfrmMontaPed_TipoItem.mArquivoImportadoVlr_UnitarioChange(
  Sender: TField);
begin
  mArquivoImportadoVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',(mArquivoImportadoVlr_Unitario.AsFloat * mArquivoImportadoQtde.AsFloat)));
end;

end.

