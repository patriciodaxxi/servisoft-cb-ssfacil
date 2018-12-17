unit UCadPedidoSimples_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, UCadPedido_Itens_Imposto, Mask, RxDBComb, UCadProduto, UCadUnidade, UCadCFOP, ToolEdit,
  RXDBCtrl, RzTabs, RzPanel, UCadPessoa, UCadTabPreco;

type
  TfrmCadPedidoSimples_Itens = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    Panel4: TPanel;
    Label2: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    pnlCod_Barras: TPanel;
    Label20: TLabel;
    Edit1: TEdit;
    Label12: TLabel;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBMemo2: TDBMemo;
    Edit2: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure Panel4Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadPedido_Itens_Imposto: TfrmCadPedido_Itens_Imposto;
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadCFOP: TfrmCadCFOP;
    ffrmCadPessoa: TfrmCadPessoa;
    ffrmCadTabPreco: TfrmCadTabPreco;

    vCodProdutoAnt: Integer;

    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Calcular_VlrItens;

    function fnc_Erro: Boolean;

    function fnc_Verificar_Cod_Barras: Boolean;
    function fnc_Verificar_Produto: Boolean;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

    procedure prc_Move_Dados_Itens;
  end;

var
  frmCadPedidoSimples_Itens: TfrmCadPedidoSimples_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil, UMenu, uCalculo_Pedido;

{$R *.dfm}

procedure TfrmCadPedidoSimples_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    //fDMCadPedido.cdsPedido_Itens.CancelUpdates;
    fDMCadPedido.cdsPedido_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadPedidoSimples_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  vCodProdutoAnt := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;

  Label13.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');
  DBDateEdit1.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');

  pnlCod_Barras.Visible := (fDMCadPedido.cdsParametrosUSA_COD_BARRAS.AsString = 'S');
  Label21.Visible       := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit15.Visible      := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');

  {if fDMCadPedido.vSiglaUF = fDMCadPedido.cdsFilialUF.AsString then
  begin
    RxDBLookupCombo1.Visible := (fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger <= 0);
    RxDBLookupCombo6.Visible := (fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger <= 0);
    Label1.Visible           := (fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger <= 0);
    Label15.Visible          := (fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger <= 0);
    SpeedButton3.Visible     := (fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger <= 0);
    SpeedButton5.Visible     := (fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger <= 0);
    if (fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger > 0) and (trim(RxDBLookupCombo1.Text) = '') then
      fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.cdsParametrosID_CFOP_REQ.AsInteger;
  end
  else
  begin
    RxDBLookupCombo1.Visible := (fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger <= 0);
    RxDBLookupCombo6.Visible := (fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger <= 0);
    Label1.Visible           := (fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger <= 0);
    Label15.Visible          := (fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger <= 0);
    SpeedButton3.Visible     := (fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger <= 0);
    SpeedButton5.Visible     := (fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger <= 0);
    if (fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger > 0) and (trim(RxDBLookupCombo1.Text) = '') then
      fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.cdsParametrosID_CFOP_REQ2.AsInteger;
  end;}
end;

procedure TfrmCadPedidoSimples_Itens.Panel2Enter(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger < 1) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger < 1) then
    exit;

  if (fDMCadPedido.cdsPedido_Itens.State in [dsInsert]) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) then
    prc_Move_Dados_Itens;
end;

procedure TfrmCadPedidoSimples_Itens.prc_Buscar_Imposto(Auxiliar, Nome: String);
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

procedure TfrmCadPedidoSimples_Itens.prc_Move_Dados_Itens;
var
  vID_ICMS, vID_IPI: Integer;
  vPrecoAux: Real;
begin
  vID_ICMS := 0;
  vID_IPI  := 0;
  if not fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,[loCaseInsensitive]) then
    exit;
  if not fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
  {if fDMCadPedido.cdsConfig_CFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CONFIG_CFOP.AsInteger,[loCaseInsensitive]) then
  begin
    if (fDMCadPedido.cdsConfig_CFOPITEM_VARIACAO.AsInteger > 0) and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger = fDMCadPedido.cdsConfig_CFOPID_CFOP.AsInteger) then
    begin
      fDMCadPedido.qCFOP_Variacao.Close;
      fDMCadPedido.qCFOP_Variacao.ParamByName('ID').AsInteger   := fDMCadPedido.cdsConfig_CFOPID_CFOP.AsInteger;
      fDMCadPedido.qCFOP_Variacao.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsConfig_CFOPITEM_VARIACAO.AsInteger;
      fDMCadPedido.qCFOP_Variacao.Open;
      if fDMCadPedido.qCFOP_VariacaoID_CSTIPI.AsInteger > 0 then
        vID_IPI := fDMCadPedido.qCFOP_VariacaoID_CSTIPI.AsInteger;
      if fDMCadPedido.qCFOP_VariacaoID_CSTICMS.AsInteger > 0 then
        vID_ICMS := fDMCadPedido.qCFOP_VariacaoID_CSTICMS.AsInteger;
    end;
  end;}
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);

  //prc_Buscar_Imposto('','PIS');
  //prc_Buscar_Imposto('','COFINS');
  if vID_ICMS > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := vID_ICMS
  else
    prc_Buscar_Imposto('CST','ICMS');
  if vID_IPI > 0 then
    fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger := vID_IPI
  else
    prc_Buscar_Imposto('CST','IPI');

  if fDMCadPedido.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0
  else
  if fDMCadPedido.cdsCFOPGERAR_ICMS.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;

  if fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S' then
    fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat;

  vPrecoAux := 0;
  if fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger > 0 then
    vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,fDMCadPedido.cdsProdutoID.AsInteger);

  if StrToFloat(FormatFloat('0.0000',vPrecoAux)) > 0 then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.000000',vPrecoAux))
  else
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsProdutoPRECO_VENDA.AsFloat;

  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := fDMCadPedido.cdsCFOPCODCFOP.AsString;
  fDMCadPedido.cdsPedido_ItensCOD_CST.AsString := fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString;
  fDMCadPedido.cdsPedido_ItensCOD_IPI.AsString := fDMCadPedido.cdsTab_CSTIPICOD_IPI.AsString;
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) and (fDMCadPedido.cdsFilialSIMPLES.AsString <> 'S') and (fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString <> '00') then
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat))
  else
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat));
end;

procedure TfrmCadPedidoSimples_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadPedidoSimples_Itens.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDMCadPedido.cdsPedido_ItensQTD.AsFloat > 0) and (fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadPedidoSimples_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
begin
  fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := Edit2.Text;
  if fnc_Erro then
    exit;

  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;

  try
    if fDMCadPedido.cdsProdutoID.AsInteger <>  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';
    fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
    fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    if (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P') and (fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime > 10) then
      fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime;
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL_ATELIER.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO_ATELIER.AsFloat *
                                                             fDMCadPedido.cdsPedido_ItensQTD.AsFloat));

    uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                           fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                           fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

    fDMCadPedido.cdsPedido_Itens.Post;
  except
    on E: exception do
    begin
      vFlagErro := True;  
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;                                
  end;

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      fDMCadPedido.prc_Inserir_Itens;
      if pnlCod_Barras.Visible then
      begin
        Edit1.Clear;
        Edit1.SetFocus;
      end
      else
      begin
        if DBEdit15.Visible then
          DBEdit15.SetFocus
        else
          RxDBLookupCombo4.SetFocus;
      end;
    end;
  end;
end;

function TfrmCadPedidoSimples_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  vMsgErro := '';
  if fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.IsNull then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadPedido.cdsPedido_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadPedidoSimples_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadPedidoSimples_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadPedidoSimples_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.Close;
  fDMCadPedido.cdsProduto.Open;
end;

procedure TfrmCadPedidoSimples_Itens.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton6Click(Sender);
end;

procedure TfrmCadPedidoSimples_Itens.SpeedButton6Click(Sender: TObject);
begin
  fDMCadPedido.cdsUnidade.Close;
  fDMCadPedido.cdsUnidade.Open;
end;

procedure TfrmCadPedidoSimples_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vQtdAux: Real;  
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender)
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0 then
    begin
      if DBEdit15.Visible then
        DBEdit15.SetFocus
      else
        RxDBLookupCombo4.SetFocus;
    end;
    RxDBLookupCombo4Change(Sender);
  end;
end;

procedure TfrmCadPedidoSimples_Itens.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadPedido.cdsCFOP.IndexFieldNames := 'CODCFOP';
end;

procedure TfrmCadPedidoSimples_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadPedidoSimples_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedidoSimples_Itens.RxDBLookupCombo4Change(Sender: TObject);
begin
  if trim(RxDBLookupCombo4.Text) <> '' then
    Edit2.Text := fDMCadPedido.cdsProdutoNOME.AsString;
end;

procedure TfrmCadPedidoSimples_Itens.Panel4Exit(Sender: TObject);
var
  vFinalidadeAux: String;
begin
  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) then
  begin
    uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
    fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
  end;
end;

procedure TfrmCadPedidoSimples_Itens.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit1.Text) <> '') then
  begin
    if not fnc_Verificar_Cod_Barras then
      MessageDlg('*** Código de Barras não encontrado!', mtError, [mbOk], 0)
    else
    begin
      fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.cdsProdutoID.AsInteger;
      if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
        DBEdit2.SetFocus
      else
        RxDBLookupCombo4.SetFocus;
    end;
  end;
end;

function TfrmCadPedidoSimples_Itens.fnc_Verificar_Cod_Barras: Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('COD_BARRA',Edit1.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadPedidoSimples_Itens.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit15.Text) <> '') then
  begin
    if not fnc_Verificar_Produto then
      MessageDlg('*** Código do Produto não encontrado!', mtError, [mbOk], 0)
    else
    begin
      if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
        DBEdit2.SetFocus
      else
        RxDBLookupCombo4.SetFocus;
    end;
  end;
end;

function TfrmCadPedidoSimples_Itens.fnc_Verificar_Produto: Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('ID',DBEdit15.Text,[loCaseInsensitive]) then
    Result := True;
end;

end.
