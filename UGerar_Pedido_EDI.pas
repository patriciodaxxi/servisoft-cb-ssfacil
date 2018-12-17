unit UGerar_Pedido_EDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls,
  Grids, DBGrids, SMDBGrid, RzTabs, RzPanel, UDMGerar_EDI, NxCollection, UDMCadPedido, SqlExpr, dbXPress, DB, StrUtils,
  UGerar_Pedido_EDI_Cons, DateUtils, RxLookup, Buttons;

type
  TfrmGerar_Pedido_EDI = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    FilenameEdit1: TFilenameEdit;
    gbxVendedor: TRzGroupBox;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    ts_Erro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    btnGravar_Pedido: TNxButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Shape1: TShape;
    Label2: TLabel;
    StaticText1: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    TabSheet1: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    ckExportacao: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FilenameEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravar_PedidoClick(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDMGerar_EDI: TDMGerar_EDI;
    fDMCadPedido: TDMCadPedido;
    ffrmGerar_Pedido_EDI_Cons: TfrmGerar_Pedido_EDI_Cons;

    Registro: String;
    vCNPJ_Cliente: String;
    vErro: Boolean;
    vID_Variacao: Integer;
    vEnd_Arquivo: String;

    procedure prc_Gravar_mAuxiliar;
    procedure prc_Le_EDI;
    procedure prc_Gerar_mAuxiliar;
    procedure prc_Gravar_NaoGerado(Motivo: String);
    procedure prc_Gravar_Pedido;
    procedure prc_Gravar_Pedido_Item;
    procedure prc_Mover_Dados;
    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Copiar_Arquivo;
    procedure MoverArquivo(Origem, Destino,Arquivo: String);

    procedure prc_Posicionar_Regra_Empresa(ID_Operacao: Integer; Finalidade: String);

    function fnc_Verifica_Cliente: Boolean;
  public
    { Public declarations }
  end;

var
  frmGerar_Pedido_EDI: TfrmGerar_Pedido_EDI;

implementation

uses rsDBUtils, UCadPedido_Itens, DmdDatabase, UDMUtil, uUtilPadrao, uCalculo_Pedido,
  uGrava_Pedido;

{$R *.dfm}

procedure TfrmGerar_Pedido_EDI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vTipo_Pedido := '';
  Action       := Cafree;
end;

procedure TfrmGerar_Pedido_EDI.FilenameEdit1Change(Sender: TObject);
begin
  vTipo_Pedido := 'P';
  if trim(FilenameEdit1.Text) <> '' then
    prc_Le_EDI;
end;

procedure TfrmGerar_Pedido_EDI.prc_Gerar_mAuxiliar;
begin

end;

procedure TfrmGerar_Pedido_EDI.FormShow(Sender: TObject);
begin
  fDMGerar_EDI := TDMGerar_EDI.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMGerar_EDI);
  vTipo_Pedido := 'P';
  FilenameEdit1.InitialDir := fDMGerar_EDI.qParametros_GeralEND_ARQ_EDI.AsString;
  fDMGerar_EDI.prc_Abre_Operacao;
  RxDBLookupCombo1.KeyValue := fDMGerar_EDI.qParametrosID_OPERACAO_VENDA.AsInteger;
end;

procedure TfrmGerar_Pedido_EDI.prc_Gravar_mAuxiliar;
var
  vAux: Integer;
  vTexto: String;
  vTexto2 : String;
  i : Integer;
begin
  fDMGerar_EDI.mAuxiliar.Insert;
  fDMGerar_EDI.mAuxiliarCNPJCliente.AsString       := vCNPJ_Cliente;
  fDMGerar_EDI.mAuxiliarID_Cliente.AsInteger       := fDMGerar_EDI.qClienteCODIGO.AsInteger;
  fDMGerar_EDI.mAuxiliarNumOC.AsString             := TrimLeft(copy(Registro,fDMGerar_EDI.qEDI_ConfigNUM_OC_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigNUM_OC_TAM.AsInteger));
  fDMGerar_EDI.mAuxiliarItem.AsInteger             := StrToInt(copy(Registro,fDMGerar_EDI.qEDI_ConfigOCO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigOCO_TAM.AsInteger));
  if fDMGerar_EDI.qEDI_ConfigUSA_PLANO.AsString = '2' then
    fDMGerar_EDI.mAuxiliarPlano.AsString := copy(Registro,fDMGerar_EDI.qEDI_ConfigPLANO2_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigPLANO2_TAM.AsInteger)
  else
    fDMGerar_EDI.mAuxiliarPlano.AsString := copy(Registro,fDMGerar_EDI.qEDI_ConfigPLANO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigPLANO_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarDtEmissao.AsString         := copy(Registro,fDMGerar_EDI.qEDI_ConfigDTEMISSAO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigDTEMISSAO_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarDtEmissao.AsString         := copy(fDMGerar_EDI.mAuxiliarDtEmissao.AsString,7,2) + '/' + copy(fDMGerar_EDI.mAuxiliarDtEmissao.AsString,5,2) + '/' + copy(fDMGerar_EDI.mAuxiliarDtEmissao.AsString,1,4);
  fDMGerar_EDI.mAuxiliarTipoOperacao.AsString      := copy(Registro,fDMGerar_EDI.qEDI_ConfigTIPO_OPERACAO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigTIPO_OPERACAO_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarDtEntrega.AsString         := copy(Registro,fDMGerar_EDI.qEDI_ConfigDTENTREGA_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigDTENTREGA_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarDtEntrega.AsString         := copy(fDMGerar_EDI.mAuxiliarDtEntrega.AsString,7,2) + '/' + copy(fDMGerar_EDI.mAuxiliarDtEntrega.AsString,5,2) + '/' + copy(fDMGerar_EDI.mAuxiliarDtEntrega.AsString,1,4);
  fDMGerar_EDI.mAuxiliarLocalEntrega.AsString      := copy(Registro,fDMGerar_EDI.qEDI_ConfigCOD_LOCAL_ENTREGA_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigCOD_LOCAL_ENTREGA_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarFabrica.AsString           := copy(Registro,fDMGerar_EDI.qEDI_ConfigFABRICA_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigFABRICA_INI.AsInteger);
  fDMGerar_EDI.mAuxiliarCodProdCli.AsString        := copy(Registro,fDMGerar_EDI.qEDI_ConfigCOD_PRODUTO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigCOD_PRODUTO_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarCodProdCli.AsString        := TrimLeft(fDMGerar_EDI.mAuxiliarCodProdCli.AsString);
  fDMGerar_EDI.mAuxiliarQuantidade.AsString       := copy(Registro,fDMGerar_EDI.qEDI_ConfigQTD_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigQTD_TAM.AsInteger-fDMGerar_EDI.qEDI_ConfigQTD_DEC.AsInteger);
  vAux := (fDMGerar_EDI.qEDI_ConfigQTD_TAM.AsInteger - fDMGerar_EDI.qEDI_ConfigQTD_DEC.AsInteger) + fDMGerar_EDI.qEDI_ConfigQTD_INI.AsInteger;
  fDMGerar_EDI.mAuxiliarQuantidade.AsString       := fDMGerar_EDI.mAuxiliarQuantidade.AsString + ',' + copy(Registro,vAux,fDMGerar_EDI.qEDI_ConfigQTD_DEC.AsInteger);
  fDMGerar_EDI.mAuxiliarQuantidade.AsString       := FormatFloat('0.000###',fDMGerar_EDI.mAuxiliarQuantidade.AsFloat);
  fDMGerar_EDI.mAuxiliarUnidade.AsString           := copy(Registro,fDMGerar_EDI.qEDI_ConfigUNIDADE_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigUNIDADE_TAM.AsInteger);


  fDMGerar_EDI.mAuxiliarPercTransferencia.AsString := copy(Registro,fDMGerar_EDI.qEDI_ConfigPERC_TRANSF_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigPERC_TRANSF_INI.AsInteger);
  fDMGerar_EDI.mAuxiliarVlrUnitario.AsString       := copy(Registro,fDMGerar_EDI.qEDI_ConfigVLR_UNITARIO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigVLR_UNITARIO_TAM.AsInteger-fDMGerar_EDI.qEDI_ConfigVLR_UNITARIO_DEC.AsInteger);
  vAux := (fDMGerar_EDI.qEDI_ConfigVLR_UNITARIO_TAM.AsInteger - fDMGerar_EDI.qEDI_ConfigVLR_UNITARIO_DEC.AsInteger) + fDMGerar_EDI.qEDI_ConfigVLR_UNITARIO_INI.AsInteger;
  fDMGerar_EDI.mAuxiliarVlrUnitario.AsString       := fDMGerar_EDI.mAuxiliarVlrUnitario.AsString + ',' + copy(Registro,vAux,fDMGerar_EDI.qEDI_ConfigVLR_UNITARIO_DEC.AsInteger);
  fDMGerar_EDI.mAuxiliarVlrUnitario.AsString       := FormatFloat('0.0000##',fDMGerar_EDI.mAuxiliarVlrUnitario.AsFloat);
  fDMGerar_EDI.mAuxiliarCondPgto.AsString          := copy(Registro,fDMGerar_EDI.qEDI_ConfigCOND_PGTO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigCOND_PGTO_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarDrawback.AsString          := copy(Registro,fDMGerar_EDI.qEDI_ConfigDRAWBACK_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigDRAWBACK_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarPlano2.AsString            := copy(Registro,fDMGerar_EDI.qEDI_ConfigPLANO2_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigPLANO2_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarNomeProduto.AsString       := copy(Registro,fDMGerar_EDI.qEDI_ConfigNOME_PRODUTO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigNOME_PRODUTO_TAM.AsInteger);
  vTexto := copy(Registro,fDMGerar_EDI.qEDI_ConfigCNPJ_FORNECEDOR_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigCNPJ_FORNECEDOR_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarCNPJFornecedor.AsString    := copy(vTexto,1,2) + '.' + copy(vTexto,3,3) + '.' +  copy(vTexto,6,3) + '/' +  copy(vTexto,9,4) + '-' +  copy(vTexto,13,2);
  fDMGerar_EDI.mAuxiliarReservado.AsString         := copy(Registro,fDMGerar_EDI.qEDI_ConfigRESERVADO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigRESERVADO_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarTamnanho.AsString := '';
  if fDMGerar_EDI.qEDI_ConfigTAMANHO_INI.AsInteger > 0 then
    fDMGerar_EDI.mAuxiliarTamnanho.AsString := copy(Registro,fDMGerar_EDI.qEDI_ConfigTAMANHO_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigTAMANHO_TAM.AsInteger);
  fDMGerar_EDI.mAuxiliarItem_Cliente.AsInteger     := StrToInt(copy(Registro,fDMGerar_EDI.qEDI_ConfigITEM_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigITEM_TAM.AsInteger));
  fDMGerar_EDI.mAuxiliarCodCorCli.AsString         := '';
  if fDMGerar_EDI.qEDI_ConfigCOD_COR_INI.AsInteger > 0 then
  begin
    vTexto2 := copy(Registro,fDMGerar_EDI.qEDI_ConfigCOD_COR_INI.AsInteger,fDMGerar_EDI.qEDI_ConfigCOD_COR_TAM.AsInteger);
    i := pos('-',vTexto2);
    if i > 0 then
      fDMGerar_EDI.mAuxiliarCodCorCli.AsString := trim(copy(vTexto2,1,i-1));
    fDMGerar_EDI.mAuxiliarNomeCorCli.AsString := copy(vTexto2,i+1,Length(vTexto2)-i);
  end;
  fDMGerar_EDI.qProduto_Forn.Close;
  fDMGerar_EDI.qProduto_Forn.SQL.Text := fDMGerar_EDI.ctqProduto_Forn;
  fDMGerar_EDI.qProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger    := fDMGerar_EDI.qClienteCodigo.AsInteger;
  fDMGerar_EDI.qProduto_Forn.ParamByName('COD_MATERIAL_FORN').AsString := fDMGerar_EDI.mAuxiliarCodProdCli.AsString;
  fDMGerar_EDI.qProduto_Forn.ParamByName('COD_COR_FORN').AsString      := fDMGerar_EDI.mAuxiliarCodCorCli.AsString;
  fDMGerar_EDI.qProduto_Forn.ParamByName('TAMANHO_CLIENTE').AsString   := fDMGerar_EDI.mAuxiliarTamnanho.AsString;
  fDMGerar_EDI.qProduto_Forn.Open;
  if not fDMGerar_EDI.qProduto_Forn.IsEmpty then
  begin
    fDMGerar_EDI.mAuxiliarID_Produto.AsInteger := fDMGerar_EDI.qProduto_FornID.AsInteger;
    fDMGerar_EDI.mAuxiliarTamanho_Int.AsString := fDMGerar_EDI.qProduto_FornTAMANHO.AsString;
    fDMGerar_EDI.mAuxiliarID_Cor.AsInteger     := fDMGerar_EDI.qProduto_FornID_COR.AsInteger;
  end;
  vTexto := Monta_Numero(fDMGerar_EDI.mAuxiliarDtEntrega.AsString,0);
  if Length(trim(vTexto)) <> 8 then
  begin
    prc_Gravar_NaoGerado('Problema na data de entrega');
    fDMGerar_EDI.mAuxiliarErro.AsBoolean := True;
    vErro := True;
  end;
  if not fDMGerar_EDI.mAuxiliarErro.AsBoolean then
  begin
    vTexto := Monta_Numero(fDMGerar_EDI.mAuxiliarDtEmissao.AsString,0);
    if Length(trim(vTexto)) <> 8 then
    begin
      prc_Gravar_NaoGerado('Problema na data de emissão');
      fDMGerar_EDI.mAuxiliarErro.AsBoolean := True;
      vErro := True;
    end;
  end;

  if not fDMGerar_EDI.mAuxiliarErro.AsBoolean then
  begin
    if fDMGerar_EDI.mAuxiliarDtEntrega.AsDateTime < fDMGerar_EDI.mAuxiliarDtEmissao.AsDateTime then
    begin
      prc_Gravar_NaoGerado('Data de entrega menor que a data de emissão');
      fDMGerar_EDI.mAuxiliarErro.AsBoolean := True;
      vErro := True;
    end;
  end;

  if not fDMGerar_EDI.mAuxiliarErro.AsBoolean then
  begin
    if fDMGerar_EDI.mAuxiliarID_Produto.AsInteger <= 0 then
    begin
      prc_Gravar_NaoGerado('Produto / tamanho não encontrado');
      fDMGerar_EDI.mAuxiliarErro.AsBoolean := True;
      vErro := True;
    end
    else
    begin
      if (fDMGerar_EDI.qProduto_FornINATIVO.AsString = 'S') or ((fDMGerar_EDI.qProduto_FornTIPO_REG.AsString <> 'P') and (fDMGerar_EDI.qProduto_FornTIPO_REG.AsString <> 'S')) then
      begin
        prc_Gravar_NaoGerado('Produto não encontrado na base, favor verificar se não esta cadastrado como Material ou Inativo!');
        fDMGerar_EDI.mAuxiliarErro.AsBoolean := True;
        vErro := True;
      end;
    end;
  end;
  if fDMGerar_EDI.qProduto_FornID_COR.AsInteger > 0 then
    fDMGerar_EDI.mAuxiliarID_Cor.AsInteger := fDMGerar_EDI.qProduto_FornID_COR.AsInteger;

  fDMGerar_EDI.qVerifica_Pedido.Close;
  fDMGerar_EDI.qVerifica_Pedido.ParamByName('ID_CLIENTE').AsInteger    := fDMGerar_EDI.mAuxiliarID_Cliente.AsInteger;
  fDMGerar_EDI.qVerifica_Pedido.ParamByName('PEDIDO_CLIENTE').AsString := fDMGerar_EDI.mAuxiliarNumOC.AsString;
  fDMGerar_EDI.qVerifica_Pedido.Open;
  if not fDMGerar_EDI.qVerifica_Pedido.IsEmpty then
  begin
    prc_Gravar_NaoGerado('Número OC ' + fDMGerar_EDI.mAuxiliarNumOC.AsString + ' já está no pedido ' + fDMGerar_EDI.qVerifica_PedidoNUM_PEDIDO.AsString);
    fDMGerar_EDI.mAuxiliarErro.AsBoolean := True;
    vErro := True;
  end;
  fDMGerar_EDI.qFilial.Close;
  fDMGerar_EDI.qFilial.ParamByName('CNPJ_CPF').AsString := fDMGerar_EDI.mAuxiliarCNPJFornecedor.AsString;
  fDMGerar_EDI.qFilial.Open;
  if not fDMGerar_EDI.qFilial.IsEmpty then
    fDMGerar_EDI.mAuxiliarFilial.AsInteger := fDMGerar_EDI.qFilialID.AsInteger
  else
  if fDMGerar_EDI.qFilial.IsEmpty then
  begin
    prc_Gravar_NaoGerado('Pedido não pertence a esta empresa');
    fDMGerar_EDI.mAuxiliarErro.AsBoolean := True;
    vErro := True;
  end;
  fDMGerar_EDI.mAuxiliar.Post;
end;

procedure TfrmGerar_Pedido_EDI.prc_Le_EDI;
var
  F: TextFile;
begin
  vErro        := False;
  vEnd_Arquivo := FilenameEdit1.Text;
  if copy(vEnd_Arquivo,1,1) = '"' then
    Delete(vEnd_Arquivo,1,1);
  if copy(vEnd_Arquivo,Length(vEnd_Arquivo),1) = '"' then
    Delete(vEnd_Arquivo,Length(vEnd_Arquivo),1);
  vID_Variacao  := 0;
  vCNPJ_Cliente := '';
  fDMGerar_EDI.qEDI_Config.Close;
  fDMGerar_EDI.mAuxiliar.EmptyDataSet;
  fDMGerar_EDI.mNaoGerado.EmptyDataSet;
  fDMGerar_EDI.mGerado.EmptyDataSet;
  try
    AssignFile(F,vEnd_Arquivo);
    Reset(F);
    while not Eof(F) do
    begin
      ReadLn(F,Registro);
      Registro := TirarAcento(Registro);
      //03/02/2014 foi alterado porque estava repetindo o mesmo cnpj para todos os pedidos
      //if (vCNPJ_Cliente = '') and not(fnc_Verifica_Cliente) then
      if not(fnc_Verifica_Cliente) then
      begin
        vErro := True;
        break;
      end;
      prc_Gravar_mAuxiliar;
    end;
  finally
    CloseFile(F);
  end;
  if vErro then
    RzPageControl2.ActivePage := ts_Erro;
end;

function TfrmGerar_Pedido_EDI.fnc_Verifica_Cliente: Boolean;
begin
  Result := False;
  vCNPJ_Cliente := copy(Registro,1,14);
  if ckExportacao.Checked then
    vCNPJ_Cliente := Monta_Texto(vCNPJ_Cliente,0)
  else
    vCNPJ_Cliente := copy(vCNPJ_Cliente,1,2) + '.' + copy(vCNPJ_Cliente,3,3) + '.' +  copy(vCNPJ_Cliente,6,3) + '/' +  copy(vCNPJ_Cliente,9,4) + '-' +  copy(vCNPJ_Cliente,13,2);
  fDMGerar_EDI.qCliente.Close;
  fDMGerar_EDI.qCliente.ParamByName('CNPJ_CPF').AsString := vCNPJ_Cliente;
  fDMGerar_EDI.qCliente.Open;
  if (fDMGerar_EDI.qCliente.IsEmpty) or (fDMGerar_EDI.qClienteID_EDI.AsInteger <= 0) then
  begin
    MessageDlg('*** Cliente não encontrado ou não foi informado o Layout do EDI!', mtError, [mbOk], 0);
    exit;
  end;
  fDMGerar_EDI.qEDI_Config.Close;
  fDMGerar_EDI.qEDI_Config.ParamByName('ID').AsInteger := fDMGerar_EDI.qClienteID_EDI.AsInteger;
  fDMGerar_EDI.qEDI_Config.Open;
  if fDMGerar_EDI.qEDI_Config.IsEmpty then
    exit;
  Result := True;
end;

procedure TfrmGerar_Pedido_EDI.btnGravar_PedidoClick(Sender: TObject);
var
  vNumOC: String;
  vID_Produto: Integer;
  vPlano: String;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  if (fDMGerar_EDI.mAuxiliar.IsEmpty) or (vErro) then
  begin
    MessageDlg('*** Arquivo EDI vazio ou com erro!', mtError, [mbOk], 0);
    exit;
  end;

  if trim(fDMGerar_EDI.qParametros_GeralEND_ARQ_EDI.AsString) = '' then
  begin
    MessageDlg('*** Não foi informada a pasta do EDI nos Parâmetros!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadPedido := TDMCadPedido.Create(Self);
  vTipo_Pedido := 'P';
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
  fDMCadPedido.prc_Abrir_cdsCliente('C');
  fDMCadPedido.prc_Abrir_Produto;
  vNumOC := '';

  {sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 10;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 ' +
                         ' WHERE TABELA = ' + QuotedStr('PEDIDO');
    sds.ExecSQL();}

    fDMGerar_EDI.mAuxiliar.First;
    while not fDMGerar_EDI.mAuxiliar.Eof do
    begin
      if vNumOC <> fDMGerar_EDI.mAuxiliarNumOC.AsString then
        prc_Gravar_Pedido;
      prc_Gravar_Pedido_Item;
      vNumOC := fDMGerar_EDI.mAuxiliarNumOC.AsString;
      fDMGerar_EDI.mAuxiliar.Next;
    end;
    if not (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]) then
      fDMCadPedido.cdsPedido.Edit;
    uGrava_Pedido.prc_Gravar(fDMCadPedido);
    fDMGerar_EDI.mGerado.Insert;
    fDMGerar_EDI.mGeradoNumPedido.AsInteger    := fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger;
    fDMGerar_EDI.mGeradoPedidoCliente.AsString := fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString;
    fDMGerar_EDI.mGerado.Post;

    //dmDatabase.scoDados.Commit(ID);
  //except
   // dmDatabase.scoDados.Rollback(ID);
    //raise;
  //end;
  //FreeAndNil(sds);
  FreeAndNil(fDMCadPedido);
  if fDMGerar_EDI.mNaoGerado.IsEmpty then
  begin
    MessageDlg('*** Processo Concluído!', mtConfirmation, [mbOk], 0);
    prc_Copiar_Arquivo;
  end
  else
    MessageDlg('*** Processo com Erro!', mtConfirmation, [mbOk], 0);
  FilenameEdit1.Clear;
  fDMGerar_EDI.mAuxiliar.EmptyDataSet;
end;

procedure TfrmGerar_Pedido_EDI.prc_Gravar_NaoGerado(Motivo: String);
begin
  fDMGerar_EDI.mNaoGerado.Insert;
  fDMGerar_EDI.mNaoGeradoPedido.AsString := fDMGerar_EDI.mAuxiliarNumOC.AsString;
  if trim(fDMGerar_EDI.mAuxiliarPlano.AsString) <> '' then
    fDMGerar_EDI.mNaoGeradoNumOS.AsString := fDMGerar_EDI.mAuxiliarPlano.AsString
  else
    fDMGerar_EDI.mNaoGeradoNumOS.AsString := fDMGerar_EDI.mAuxiliarPlano2.AsString;
  fDMGerar_EDI.mNaoGeradoMotivo.AsString := Motivo;
  fDMGerar_EDI.mNaoGeradoItem.AsInteger  := fDMGerar_EDI.mAuxiliarItem.AsInteger;
  fDMGerar_EDI.mNaoGerado.Post;
end;

procedure TfrmGerar_Pedido_EDI.prc_Gravar_Pedido;
var
  vIDAux: Integer;
begin
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    uGrava_Pedido.prc_Gravar(fDMCadPedido);
    fDMGerar_EDI.mGerado.Insert;
    fDMGerar_EDI.mGeradoNumPedido.AsInteger    := fDMCadPedido.cdsPedidoNUM_PEDIDO.AsInteger;
    fDMGerar_EDI.mGeradoPedidoCliente.AsString := fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString;
    fDMGerar_EDI.mGerado.Post;
  end;
  fDMCadPedido.prc_Inserir;

  if fDMGerar_EDI.qFilialSIMPLES.AsString = 'S' then
    fDMCadPedido.prc_Abrir_CSTICMS('S')
  else
    fDMCadPedido.prc_Abrir_CSTICMS('N');

  fDMCadPedido.cdsPedidoFILIAL.AsInteger        := fDMGerar_EDI.mAuxiliarFilial.AsInteger;
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedidoFILIAL.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsPedidoDTEMISSAO.AsString      := fDMGerar_EDI.mAuxiliarDtEmissao.AsString;
  fDMCadPedido.cdsPedidoPEDIDO_CLIENTE.AsString := fDMGerar_EDI.mAuxiliarNumOC.AsString;
  fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger    := fDMGerar_EDI.mAuxiliarID_Cliente.AsInteger;
  if fDMGerar_EDI.qClienteID_TRANSPORTADORA.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_TRANSPORTADORA.AsInteger := fDMGerar_EDI.qClienteID_TRANSPORTADORA.AsInteger;
  if fDMGerar_EDI.qClienteID_REDESPACHO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_REDESPACHO.AsInteger := fDMGerar_EDI.qClienteID_REDESPACHO.AsInteger;
  if fDMGerar_EDI.qClienteID_CONDPGTO.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger := fDMGerar_EDI.qClienteID_CONDPGTO.AsInteger;
  if fDMGerar_EDI.qClienteID_VENDEDOR.AsInteger > 0 then
    fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger := fDMGerar_EDI.qClienteID_VENDEDOR.AsInteger;
  if fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger > 0 then
  begin
    if StrToFloat(FormatFloat('0.00',fDMGerar_EDI.qClientePERC_COMISSAO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMGerar_EDI.qClientePERC_COMISSAO.AsFloat))
    else
      fDMCadPedido.cdsPedidoPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMGerar_EDI.qClientePERC_COMISSAO_VEND.AsFloat));
  end;
  fDMCadPedido.cdsPedidoTIPO_FRETE.AsString := fDMGerar_EDI.qClienteTIPO_FRETE.AsString;

  //CFOP
  vIDAux       := 0;
  vID_Variacao := 0;
  if (fDMGerar_EDI.mAuxiliarTipoOperacao.AsString = 'V') or (fDMGerar_EDI.mAuxiliarTipoOperacao.AsString = 'E') then
   // vIDAux :=fDMGerar_EDI.qParametrosID_OPERACAO_VENDA.AsInteger
    vIDAux := RxDBLookupCombo1.KeyValue
  else
  if fDMGerar_EDI.mAuxiliarTipoOperacao.AsString = 'B' then
    vIDAux := fDMGerar_EDI.qParametrosID_OPERACAO_MAOOBRA.AsInteger;
  if vIDAux > 0 then
    fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger := vIDAux;

  case ComboBox1.ItemIndex of
    0: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'C';
    1: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'R';
    2: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'I';
    3: fDMCadPedido.cdsPedidoFINALIDADE.AsString := 'O';
  end;

  {if vIDAux > 0 then
  begin
    fDMGerar_EDI.qRegra_Empresa.Close;
    fDMGerar_EDI.qRegra_Empresa.ParamByName('ID_OPERACAO').AsInteger := vIDAux;
    if fDMGerar_EDI.qFilialSIMPLES.AsString = 'S' then
      fDMGerar_EDI.qRegra_Empresa.ParamByName('Tipo_Empresa').AsString := 'S'
    else
      fDMGerar_EDI.qRegra_Empresa.ParamByName('Tipo_Empresa').AsString := 'G';
    if fDMGerar_EDI.qClienteCODIGO_TRIB.AsInteger > 2 then
      fDMGerar_EDI.qRegra_Empresa.ParamByName('Tipo_Cliente').AsString := 'G'
    else
      fDMGerar_EDI.qRegra_Empresa.ParamByName('Tipo_Cliente').AsString := 'S';
    if fDMGerar_EDI.qClienteUF.AsString = fDMGerar_EDI.qFilialUF.AsString then
      fDMGerar_EDI.qRegra_Empresa.ParamByName('UF_Cliente').AsString := 'D'
    else
      fDMGerar_EDI.qRegra_Empresa.ParamByName('UF_Cliente').AsString := 'F';
    fDMGerar_EDI.qRegra_Empresa.ParamByName('Pessoa_Cliente').AsString := fDMGerar_EDI.qClientePESSOA.AsString;
    case ComboBox1.ItemIndex of
      0: fDMGerar_EDI.qRegra_Empresa.ParamByName('Finalidade').AsString := 'C';
      1: fDMGerar_EDI.qRegra_Empresa.ParamByName('Finalidade').AsString := 'R';
      2: fDMGerar_EDI.qRegra_Empresa.ParamByName('Finalidade').AsString := 'I';
      3: fDMGerar_EDI.qRegra_Empresa.ParamByName('Finalidade').AsString := 'O';
    end;
    fDMGerar_EDI.qRegra_Empresa.Open;
    if fDMGerar_EDI.qRegra_EmpresaID_CFOP.AsInteger > 0 then
      fDMCadPedido.cdsPedidoID_CFOP.AsInteger := fDMGerar_EDI.qRegra_EmpresaID_CFOP.AsInteger;
    if fDMGerar_EDI.qRegra_EmpresaID_VARIACAO.AsInteger > 0 then
      vID_Variacao := fDMGerar_EDI.qRegra_EmpresaID_VARIACAO.AsInteger;
  end;}
  fDMCadPedido.cdsPedidoDTENTREGA.AsString      := fDMGerar_EDI.mAuxiliarDtEntrega.AsString;
  fDMCadPedido.cdsPedidoPERC_TRANSF.AsFloat     := 0;
  fDMCadPedido.cdsPedidoLOCALENTREGA.AsString   := 'N';
  fDMCadPedido.cdsPedidoID_REGIMETRIB.AsInteger := fDMGerar_EDI.qFilialID_REGIME_TRIB.AsInteger;
  fDMCadPedido.cdsPedidoSIMPLES_FILIAL.AsString := fDMGerar_EDI.qFilialSIMPLES.AsString;
  fDMCadPedido.cdsPedidoNOME_CLIENTE.AsString   := fDMGerar_EDI.qClienteNOME.AsString;
  fDMCadPedido.cdsPedidoTIPO_REG.AsString       := 'P';
  fDMCadPedido.cdsPedidoFATURADO.AsString       := 'N';
end;

procedure TfrmGerar_Pedido_EDI.prc_Gravar_Pedido_Item;
var
  vID_VariacaoAux: Integer;
  vFinalidadeAux: String;
begin
  fDMCadPedido.prc_Inserir_Itens;
  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger  := fDMGerar_EDI.mAuxiliarID_Produto.AsInteger;
  fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
  begin
    MessageDlg('*** Produto esta com problema, verificar!', mtError, [mbOk], 0);
    fDMCadPedido.cdsPedido_Itens.Cancel;
    exit;
  end;
  //16/08/2017
  fDMCadPedido.cdsPedido_ItensID_COR.AsInteger := fDMGerar_EDI.mAuxiliarID_Cor.AsInteger;
  if fDMCadPedido.cdsPedido_ItensID_COR.AsInteger <= 0 then
    fDMCadPedido.cdsPedido_ItensID_COR.AsInteger := 0;
  //*****************
  
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);

  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';

  uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
  if (fDMCadPedido.vID_CFOP <= 0) and (fDMCadPedido.cdsPedidoID_CFOP.AsInteger > 0) then
    fDMCadPedido.vID_CFOP := fDMCadPedido.cdsPedidoID_CFOP.AsInteger;
  fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
  vID_VariacaoAux := fDMCadPedido.fnc_Buscar_Regra_CFOP(fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger);
  if vID_VariacaoAux > 0 then
  begin
    fDMCadPedido.vID_Variacao := vID_VariacaoAux;
    fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := vID_VariacaoAux;
  end;

  //fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger     := fDMCadPedido.cdsPedidoID_CFOP.AsInteger;
  //fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger := vID_Variacao;

  prc_Mover_Dados;

  fDMCadPedido.cdsTab_CSTICMS.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger,([Locaseinsensitive]));
  fDMCadPedido.cdsTab_CSTIPI.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger,([Locaseinsensitive]));

  fDMCadPedido.cdsPedido_ItensTAMANHO.AsString      := fDMGerar_EDI.mAuxiliarTamanho_Int.AsString;
  fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString   := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
  fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString  := fDMCadPedido.cdsProdutoNOME.AsString;
  if fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString + ' TAM. ' + fDMCadPedido.cdsPedido_ItensTAMANHO.AsString;
  if fDMGerar_EDI.mAuxiliarCodCorCli.AsString <> '' then
  begin
    fDMCadPedido.cdsPedido_ItensCOD_COR_CLIENTE.AsString  := fDMGerar_EDI.mAuxiliarCodCorCli.AsString;
    fDMCadPedido.cdsPedido_ItensNOME_COR_CLIENTE.AsString := fDMGerar_EDI.mAuxiliarNomeCorCli.AsString;
  end;
  fDMCadPedido.cdsPedido_ItensTAMANHO_CLIENTE.AsString := fDMGerar_EDI.mAuxiliarTamnanho.AsString;
  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString      := fDMGerar_EDI.mAuxiliarUnidade.AsString;
  fDMCadPedido.cdsPedido_ItensQTD.AsFloat           := fDMGerar_EDI.mAuxiliarQuantidade.AsFloat;
  fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat  := 0;
  fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat  := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
  fDMCadPedido.cdsPedido_ItensQTD_CANCELADO.AsFloat := 0;
  fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat  := 0;
  fDMCadPedido.cdsPedido_ItensCANCELADO.AsString    := 'N';
  fDMCadPedido.cdsPedido_ItensDTENTREGA.AsString    := fDMGerar_EDI.mAuxiliarDtEntrega.AsString;
  fDMCadPedido.cdsPedido_ItensFATURADO.AsString     := 'N';
  fDMCadPedido.cdsPedido_ItensCOD_PRODUTO_CLIENTE.AsString := fDMGerar_EDI.mAuxiliarCodProdCli.AsString;
  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString      := fDMGerar_EDI.mAuxiliarUnidade.AsString;

  //03/08/2018
  if ((fDMCadPedido.cdsPedido_ItensUNIDADE.AsString = 'PAR') or (fDMCadPedido.cdsPedido_ItensUNIDADE.AsString = 'PR') or (fDMCadPedido.cdsPedido_ItensUNIDADE.AsString = 'PRS'))
    and (fDMCadPedido.cdsProdutoUNIDADE.AsString = 'PARES') then
    fDMCadPedido.cdsPedido_ItensUNIDADE.AsString := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  //*******

  if trim(fDMGerar_EDI.mAuxiliarPlano.AsString) <> '' then
    fDMCadPedido.cdsPedido_ItensNUMOS.AsString := fDMGerar_EDI.mAuxiliarPlano.AsString
  else
    fDMCadPedido.cdsPedido_ItensNUMOS.AsString := fDMGerar_EDI.mAuxiliarPlano2.AsString;
  if fDMGerar_EDI.qClienteUSA_TRANSFICMS.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensPERC_TRANSF.AsFloat := fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat;
  if CheckBox1.Checked then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMGerar_EDI.mAuxiliarVlrUnitario.AsFloat;
  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
  if fDMCadPedido.cdsParametrosUSA_LOTE.AsString <> 'S' then
    fDMCadPedido.cdsPedido_ItensGERAR_LOTE.AsString := 'N';
  if fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime > 10 then
    fDMCadPedido.cdsPedido_ItensDTPRODUCAO.AsDateTime := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;
  //10/11/2017
  if fDMGerar_EDI.mAuxiliarItem_Cliente.AsInteger > 0 then
    fDMCadPedido.cdsPedido_ItensITEM_CLIENTE.AsInteger := fDMGerar_EDI.mAuxiliarItem_Cliente.AsInteger;
  //***************
  uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                        fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                        fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);
  fDMCadPedido.cdsPedido_Itens.Post;
end;

procedure TfrmGerar_Pedido_EDI.prc_Mover_Dados;
var
  vID_ICMS, vID_IPI: Integer;
  vPrecoAux: Real;
begin
  vID_ICMS := 0;
  vID_IPI  := 0;

  if not(fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,[loCaseInsensitive])) then
    exit;

  if fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsCFOP_Variacao.Locate('ITEM',fDMCadPedido.cdsPedido_ItensID_VARIACAO.AsInteger,[loCaseInsensitive]) then
    begin
      vID_IPI  := fDMCadPedido.cdsCFOP_VariacaoID_CSTIPI.AsInteger;
      vID_ICMS := fDMCadPedido.cdsCFOP_VariacaoID_CSTICMS.AsInteger;
    end;
  end
  else
  begin
    vID_IPI  := fDMCadPedido.cdsCFOPID_CSTIPI.AsInteger;
    vID_ICMS := fDMCadPedido.cdsCFOPID_CSTICMS.AsInteger;
  end;

  if vID_ICMS > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := vID_ICMS
  else
    prc_Buscar_Imposto('CST','ICMS');
  if vID_IPI > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger := vID_IPI
  else
    prc_Buscar_Imposto('CST','IPI');

  if (fDMCadPedido.cdsFilialSIMPLES.AsString = 'S') or (fDMCadPedido.cdsCFOPGERAR_ICMS.AsString <> 'S') then
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0
  else
  if fDMCadPedido.cdsCFOPGERAR_ICMS.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;

  if (fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) then
    fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat
  else
  if (fDMCadPedido.cdsCFOPGERAR_IPI.AsString <> 'S') and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) then
    fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := 0;
  vPrecoAux := 0;
  if StrToFloat(FormatFloat('0.00000',vPreco_Pos)) > 0 then
    vPrecoAux := StrToFloat(FormatFloat('0.00000',vPreco_Pos))
  else
  if fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger > 0 then
    vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,fDMCadPedido.cdsProdutoID.AsInteger);
  if StrToFloat(FormatFloat('0.0000',vPrecoAux)) > 0 then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.000000',vPrecoAux))
  else
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsProdutoPRECO_VENDA.AsFloat;

  fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := fDMCadPedido.cdsCFOPCODCFOP.AsString;
  fDMCadPedido.cdsPedido_ItensCOD_CST.AsString := fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString;
  fDMCadPedido.cdsPedido_ItensCOD_IPI.AsString := fDMCadPedido.cdsTab_CSTIPICOD_IPI.AsString;
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) and
     (fDMCadPedido.cdsFilialSIMPLES.AsString <> 'S') and
     (fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString <> '00') then
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat))
  else
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat));

  fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := fDMCadPedido.cdsProdutoID_NCM.AsInteger;
end;

procedure TfrmGerar_Pedido_EDI.prc_Buscar_Imposto(Auxiliar, Nome: String);
begin
  if fDMCadPedido.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadPedido.cdsPedido_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadPedido.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadPedido.cdsPedido_Itens.FieldByName('PERC_'+Nome).AsFloat  := fDMCadPedido.cdsCFOP.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadPedido.cdsPedido_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadPedido.cdsCFOP.FieldByName('TIPO_'+Nome).AsString;
    end;
  end
  else
  if fDMCadPedido.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadPedido.cdsPedido_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadPedido.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadPedido.cdsPedido_Itens.FieldByName('PERC_'+Nome).AsFloat := fDMCadPedido.cdsFilial.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadPedido.cdsPedido_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadPedido.cdsFilial.FieldByName('TIPO_'+Nome).AsString;
    end;
  end;
end;

procedure TfrmGerar_Pedido_EDI.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMGerar_EDI.mAuxiliarErro.AsBoolean then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmGerar_Pedido_EDI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (trim(FilenameEdit1.Text) <> '') then
    prc_Le_EDI;
end;

procedure TfrmGerar_Pedido_EDI.SMDBGrid3DblClick(Sender: TObject);
var
  vCodAux: String;
  i: Integer;
  vOcorrencia : Integer;
begin
  if (fDMGerar_EDI.mAuxiliar.IsEmpty) or (trim(fDMGerar_EDI.mAuxiliarCodProdCli.AsString) = '') then
    exit;
  vOcorrencia := fDMGerar_EDI.mAuxiliarItem.AsInteger;
  vCodProduto_Pos := 0;
  fDMGerar_EDI.qProduto_Tam.Close;
  fDMGerar_EDI.qProduto_Tam.ParamByName('ID').AsInteger := fDMGerar_EDI.mAuxiliarID_Produto.AsInteger;
  fDMGerar_EDI.qProduto_Tam.Open;
  vCodAux := copy(fDMGerar_EDI.mAuxiliarCodProdCli.AsString,1,Length(fDMGerar_EDI.mAuxiliarCodProdCli.AsString) - Length(fDMGerar_EDI.qProduto_TamTAMANHO.AsString));
  ffrmGerar_Pedido_EDI_Cons                := TfrmGerar_Pedido_EDI_Cons.Create(self);
  ffrmGerar_Pedido_EDI_Cons.fDMGerar_EDI   := fDMGerar_EDI;
  ffrmGerar_Pedido_EDI_Cons.Edit1.Text     := vCodAux;
  ffrmGerar_Pedido_EDI_Cons.Edit4.Text     := fDMGerar_EDI.mAuxiliarCodCorCli.AsString; 
  ffrmGerar_Pedido_EDI_Cons.Edit5.Text     := fDMGerar_EDI.mAuxiliarTamnanho.AsString;
  ffrmGerar_Pedido_EDI_Cons.Label4.Caption := fDMGerar_EDI.mAuxiliarCNPJCliente.AsString;
  ffrmGerar_Pedido_EDI_Cons.ShowModal;
  FreeAndNil(ffrmGerar_Pedido_EDI_Cons);
  if vCodProduto_Pos > 0 then
    prc_Le_EDI;
  fDMGerar_EDI.mAuxiliar.Locate('Item',vOcorrencia,[loCaseInsensitive]);
end;

procedure TfrmGerar_Pedido_EDI.prc_Posicionar_Regra_Empresa(
  ID_Operacao: Integer; Finalidade: String);
{var
  vCodRegAux: Integer;
  vTipoAux: String;
  vUFClienteAux: String;
  vTipoEmpresa: String;
  vZonaAux: String;
  vSTAux: String;
  vTipoProd: String;}
begin
  {if fDMGerar_EDI.qClienteID_REGIME_TRIB.AsInteger > 0 then
    vCodRegAux := fDMGerar_EDI.qClienteID_REGIME_TRIB.AsInteger
  else
    vCodRegAux := 1;
  if fDMGerar_EDI.qClienteUF.AsString = fDMGerar_EDI.qFilialUF.AsString then
    vUFClienteAux := 'D'
  else
  //if fDMGerar_EDI.qClienteif_ cdsClienteID_PAIS.AsInteger > 1 then
  //  vUFClienteAux := 'E'
  //else
    vUFClienteAux := 'F';
  if (trim(fDMGerar_EDI.qClienteINSC_SUFRAMA.AsString) <> '') and not(fDMGerar_EDI.qClienteINSC_SUFRAMA.IsNull) then
    vZonaAux := 'S'
  else
    vZonaAux := 'N';
  fDMGerar_EDI.qprod
  if fDMCadPedido.cdsTab_NCMID.AsInteger <> fDMCadPedido.cdsProdutoID_NCM.AsInteger then
    fDMCadPedido.cdsTab_NCM.Locate('ID',fDMCadPedido.cdsProdutoID_NCM.AsInteger,([Locaseinsensitive]));
  if fDMCadPedido.cdsTab_NCMGERAR_ST.AsString = 'S' then
    vSTAux := 'S'
  else
    vSTAux := 'N';

  if fDMCadPedido.cdsParametrosUSA_SPED.AsString = 'S' then
  begin
    if (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '00') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '01') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '02') then
      vTipoProd := 'R'
    else
    if (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '03') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '04') or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '05')
      or (fDMCadPedido.cdsProdutoSPED_TIPO_ITEM.AsString = '06') then
      vTipoProd := 'V';
  end
  else
  begin
    if (fDMCadPedido.cdsProdutoTIPO_VENDA.AsString = 'R') or (fDMCadPedido.cdsProdutoTIPO_VENDA.AsString = 'C') then
      vTipoProd := 'R'
    else
      vTipoProd := 'V';
  end;

  fDMCadPedido.qRegime_Trib.Close;
  fDMCadPedido.qRegime_Trib.ParamByName('ID').AsInteger := vCodRegAux;
  fDMCadPedido.qRegime_Trib.Open;
  if fDMCadPedido.qRegime_TribCODIGO.AsInteger > 2 then
    vTipoAux := 'G'
  else
    vTipoAux := 'S';
  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    vTipoEmpresa := 'S'
  else
    vTipoEmpresa := 'G';

  fDMCadPedido.vID_CFOP := fnc_Regra_Empresa_CFOP(fDMCadPedido.cdsClientePESSOA.AsString,vZonaAux,vSTAux,vTipoProd,vTipoEmpresa,vTipoAux,vUFClienteAux,ID_Operacao);
  fDMCadPedido.vID_Variacao := 0;
  if fDMCadPedido.vID_CFOP > 0 then
    fDMCadPedido.vUsarRegraEmpresa := True
  else
    fDMCadPedido.vUsarRegraEmpresa := False;}
end;

procedure TfrmGerar_Pedido_EDI.prc_Copiar_Arquivo;
var
  Diretorio: String;
  Diretorio_Ori: String;
  vAnoMes: String;
  vArquivo: String;
begin
  Diretorio_Ori := ExtractFilePath(vEnd_Arquivo);
  //if copy(Diretorio,length(Diretorio)-14,8) = 'Copiado\' then
  //  exit;
  if PosEx('Copiado',Diretorio_Ori,0) > 0 then
    exit;
  if trim(fDMGerar_EDI.qParametros_GeralEND_ARQ_EDI.AsString) = '' then
    exit;
  Diretorio := fDMGerar_EDI.qParametros_GeralEND_ARQ_EDI.AsString;
  if copy(Diretorio,Length(Diretorio),1) <> '\' then
    Diretorio := Diretorio + '\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  Diretorio := Diretorio + 'Copiado\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  vAnoMes := FormatFloat('0000',YearOf(Date)) + FormatFloat('00',MonthOf(Date));
  Diretorio := Diretorio + vAnoMes + '\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  vArquivo := ExtractFileName(vEnd_Arquivo);
  MoverArquivo(Diretorio_Ori,Diretorio,vArquivo);
end;

procedure TfrmGerar_Pedido_EDI.MoverArquivo(Origem, Destino,
  Arquivo: String);
var
  o, d: PAnsiChar;
begin
  o := PAnsiChar(Origem + Arquivo);
  d := PAnsiChar(Destino + Arquivo);
  MoveFile(o,d);
end;

procedure TfrmGerar_Pedido_EDI.BitBtn1Click(Sender: TObject);
begin
  SMDBGrid3.DisableScroll;
  fDMGerar_EDI.mVer.EmptyDataSet;
  fDMGerar_EDI.mAuxiliar.First;
  while not fDMGerar_EDI.mAuxiliar.Eof do
  begin
    fDMGerar_EDI.qVer.Close;
    fDMGerar_EDI.qVer.ParamByName('PEDIDO_CLIENTE').AsString := fDMGerar_EDI.mAuxiliarNumOC.AsString;
    fDMGerar_EDI.qVer.ParamByName('ITEM_CLIENTE').AsInteger  := fDMGerar_EDI.mAuxiliarItem_Cliente.AsInteger;
    fDMGerar_EDI.qVer.Open;
    if (fDMGerar_EDI.qVerNUMOS.AsString <> fDMGerar_EDI.mAuxiliarPlano2.AsString) or
       ((fDMGerar_EDI.qVerID_PRODUTO.AsInteger > 0) and (fDMGerar_EDI.qVerID_PRODUTO.AsInteger <> fDMGerar_EDI.mAuxiliarID_Produto.AsInteger)) or
       ((fDMGerar_EDI.qVerID_COR.AsInteger > 0) and (fDMGerar_EDI.qVerID_COR.AsInteger <> fDMGerar_EDI.mAuxiliarID_Cor.AsInteger)) or
       (fDMGerar_EDI.qVerCOD_PRODUTO_CLIENTE.AsString <> fDMGerar_EDI.mAuxiliarCodProdCli.AsString) then
    begin
      fDMGerar_EDI.mVer.Insert;
      fDMGerar_EDI.mVerID_Pedido.AsInteger      := fDMGerar_EDI.qVerID.AsInteger;
      fDMGerar_EDI.mVerNum_Pedido.AsInteger     := fDMGerar_EDI.qVerNUM_PEDIDO.AsInteger;
      fDMGerar_EDI.mVerItem.AsInteger           := fDMGerar_EDI.qVerITEM.AsInteger;
      fDMGerar_EDI.mVerItem_Cliente.AsInteger   := fDMGerar_EDI.qVerITEM_CLIENTE.AsInteger;
      fDMGerar_EDI.mVerItem_EDI.AsInteger       := fDMGerar_EDI.mAuxiliarItem_Cliente.AsInteger;
      fDMGerar_EDI.mVerNum_OS.AsString          := fDMGerar_EDI.qVerNUMOS.AsString;
      fDMGerar_EDI.mVerID_Produto.AsInteger     := fDMGerar_EDI.qVerID_PRODUTO.AsInteger;
      fDMGerar_EDI.mVerID_Cor.AsInteger         := fDMGerar_EDI.qVerID_COR.AsInteger;
      fDMGerar_EDI.mVerCod_Produto_Cli.AsString := fDMGerar_EDI.qVerCOD_PRODUTO_CLIENTE.AsString;
      fDMGerar_EDI.mVerID_Produto_EDI.AsInteger := fDMGerar_EDI.mAuxiliarID_Produto.AsInteger;
      fDMGerar_EDI.mVerID_Cor_EDI.AsInteger     := fDMGerar_EDI.mAuxiliarID_Cor.AsInteger;
      fDMGerar_EDI.mVerDiferenca.AsString       := '';

      if (fDMGerar_EDI.qVerNUMOS.AsString <> fDMGerar_EDI.mAuxiliarPlano2.AsString) then
        fDMGerar_EDI.mVerDiferenca.AsString := fDMGerar_EDI.mVerDiferenca.AsString + '(OS)';

      if (fDMGerar_EDI.qVerID_PRODUTO.AsInteger <> fDMGerar_EDI.mAuxiliarID_Produto.AsInteger) then
        fDMGerar_EDI.mVerDiferenca.AsString := fDMGerar_EDI.mVerDiferenca.AsString + '(IDProd)';

      if (fDMGerar_EDI.qVerID_COR.AsInteger <> fDMGerar_EDI.mAuxiliarID_Cor.AsInteger) then
        fDMGerar_EDI.mVerDiferenca.AsString := fDMGerar_EDI.mVerDiferenca.AsString + '(IDCor)';

      if (fDMGerar_EDI.qVerCOD_PRODUTO_CLIENTE.AsString <> fDMGerar_EDI.mAuxiliarCodProdCli.AsString) then
        fDMGerar_EDI.mVerDiferenca.AsString := fDMGerar_EDI.mVerDiferenca.AsString + '(Prod.Cli)';

      fDMGerar_EDI.mVer.Post;
    end;
    fDMGerar_EDI.mAuxiliar.Next;
  end;
  SMDBGrid3.EnableScroll;
  ShowMessage('Verificado!');
end;

end.
