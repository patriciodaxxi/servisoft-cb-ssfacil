unit UCadVale_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadVale, Buttons,
  RxLookup, DBCtrls, DB, Mask, RxDBComb, UCadProduto, UCadUnidade, RzTabs, RzPanel, UDMInformar_Tam, NxCollection,
  StdCtrls, UInformar_Tam, uDmEstoque;

type
  TfrmCadVale_Itens = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    Label12: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label2: TLabel;
    pnlCod_Barras: TPanel;
    Label11: TLabel;
    Edit1: TEdit;
    lblTamanho: TLabel;
    btnGrade: TNxButton;
    dblcTamanho: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    DBCheckBox2: TDBCheckBox;
    Label5: TLabel;
    Label56: TLabel;
    DBEdit31: TDBEdit;
    gbxDesconto: TRzGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    dbedtVlrDesc: TDBEdit;
    dbedtPercDesc: TDBEdit;
    dbedtVlrProd: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure btnGradeClick(Sender: TObject);
    procedure dbedtPercDescExit(Sender: TObject);
    procedure dbedtVlrDescEnter(Sender: TObject);
    procedure dbedtVlrDescExit(Sender: TObject);
    procedure dbedtVlrProdEnter(Sender: TObject);
    procedure dbedtVlrProdExit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmInformar_Tam: TfrmInformar_Tam;

    vCodProdutoAnt: Integer;
    vID_OperacaoAnt: Integer;
    vFinalidadeAnt: String;
    vID_CSTICMAnt: Integer;
    vIPI_Suspenso: Boolean;
    vPIS_Suspenso: Boolean;
    vVlrDesc_Ant: Real;
    vVlrProd_Ant: Real;

    vVlr_Total_Prod, vVlr_Total_Desc : Real;

    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Calcular_VlrItens;
    procedure prc_Mover_Cofins_Pis;

    function  fnc_Erro: Boolean;

    function fnc_Gerar_Cofins: Boolean;
    function fnc_Gerar_PIS: Boolean;
    function fnc_Verificar_Cod_Barras: Boolean;
    function fnc_Verificar_Produto: Boolean;

    function fnc_Buscar_Regra_CFOP(ID_CFOP: Integer): Integer;
    procedure prc_Gravar_mItens;
    procedure prc_Gravar_Tam;

  public
    { Public declarations }
    vNotaSelecionada: Boolean;
    vGravacao_Ok: Boolean;
    vPedidoSelecionado: Boolean;
    vBaseIcms_Cre, vVlrIcms_Cre: Real;

    fDMCadVale: TDMCadVale;
    fDmEstoque: TDmEstoque;
    fDMInformar_Tam: TDMInformar_Tam;

    procedure prc_Move_Dados_Itens;
    procedure prc_Mover_Finalidade;
  end;

var
  frmCadVale_Itens: TfrmCadVale_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil;

{$R *.dfm}

procedure TfrmCadVale_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmCadVale.cdsValeItens.State in [dsEdit,dsInsert] then
    fDmCadVale.cdsValeItens.Cancel;
  if fDmCadVale.qParametrosUSA_GRADE.AsString = 'S' then
    FreeAndNil(fDMInformar_Tam);
  Action := Cafree;
end;

procedure TfrmCadVale_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadVale);
  Label1.Visible  := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  DBEdit1.Visible := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  Label3.Visible  := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  DBEdit3.Visible := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');

  //Tamanhos
  if fDmCadVale.qParametrosUSA_GRADE.AsString = 'S' then
  begin
    fDMInformar_Tam := TDMInformar_Tam.Create(Self);
    if (fDmCadVale.cdsValeItens.State in [dsEdit]) and (trim(fDmCadVale.cdsValeItensTAMANHO.AsString) <> '') then
    begin
      fDMInformar_Tam.prc_Abrir_Produto_Tam(fDmCadVale.cdsValeItensID_PRODUTO.AsInteger);
      lblTamanho.Visible  := True;
      oDBUtils.SetDataSourceProperties(dblcTamanho,fDMInformar_Tam);
      dblcTamanho.Visible := True;
    end;
  end;

  vCodProdutoAnt  := fDmCadVale.cdsValeItensID_PRODUTO.AsInteger;

  Label2.Visible := (DBEdit2.ReadOnly);

  pnlCod_Barras.Visible := (fDmCadVale.qParametrosUSA_COD_BARRAS.AsString = 'S');
  Label13.Visible       := (fDmCadVale.qParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit15.Visible      := (fDmCadVale.qParametrosUSA_ID_PRODUTO.AsString = 'S');

  if fDmCadVale.qParametrosUSA_GRADE.AsString = 'S' then
    fDMInformar_Tam := TDMInformar_Tam.Create(Self);

  //Tamanho
  if (fDmCadVale.cdsValeItens.State in [dsEdit]) and (fDmCadVale.qParametrosUSA_GRADE.AsString = 'S') then
  begin
    fDmCadVale.cdsProduto.Locate('ID',fDmCadVale.cdsValeItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    btnGrade.Visible := ((fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    DBEdit2.ReadOnly := ((fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    if (fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible) then
      DBEdit2.Color := clSilver
    else
      DBEdit2.Color := clWindow;
  end;
  //***************

  Label56.Visible  := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  DBEdit31.Visible := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');

  gbxDesconto.Visible := (fDMCadVale.qParametros_FinUSA_DESCONTO_VALE.AsString = 'S');

  vVlr_Total_Prod := StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat));
  vVlr_Total_Desc := StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat));
end;

procedure TfrmCadVale_Itens.prc_Buscar_Imposto(Auxiliar, Nome: String);
begin
end;

procedure TfrmCadVale_Itens.prc_Move_Dados_Itens;
var
  vID_ICMS, vID_IPI: Integer;
  vPrecoAux: Real;
  vDescExp: String;
begin
  vID_ICMS := 0;
  vID_IPI  := 0;
  if not fDmCadVale.cdsProduto.Locate('ID',fDmCadVale.cdsValeItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
  fDmCadVale.cdsPessoa.Locate('CODIGO',fDmCadVale.cdsValeID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDmCadVale.cdsUF.Locate('UF',fDmCadVale.cdsPessoaUF.AsString,[loCaseInsensitive]);

  if fDmCadVale.cdsValeFILIAL.AsInteger <> fDmCadVale.cdsFilialID.AsInteger then
    fDmCadVale.cdsFilial.Locate('ID',fDmCadVale.cdsValeFILIAL.AsInteger,[loCaseInsensitive]);

  if vNotaSelecionada then
    fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat := fDmCadVale.cdsProdutoPRECO_VENDA.AsFloat
  else
  begin
    vPrecoAux := 0;
    if fDmCadVale.cdsPessoaID_TAB_PRECO.AsInteger > 0 then
      vPrecoAux := DMUtil.fnc_Buscar_Preco(fDmCadVale.cdsPessoaID_TAB_PRECO.AsInteger,fDmCadVale.cdsProdutoID.AsInteger);
    if StrToFloat(FormatFloat('0.000000',vPrecoAux)) > 0 then
      fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.000000',vPrecoAux))
    else
      fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat := fDmCadVale.cdsProdutoPRECO_VENDA.AsFloat;
  end;
  fDmCadVale.cdsValeItensUNIDADE.AsString := fDmCadVale.cdsProdutoUNIDADE.AsString;

  //Tamanho
  btnGrade.Visible    := ((fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and (fDmCadVale.cdsValeItens.State in [dsInsert]));
  lblTamanho.Visible  := ((fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and (fDmCadVale.cdsValeItens.State in [dsEdit]));
  dblcTamanho.Visible := ((fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and (fDmCadVale.cdsValeItens.State in [dsEdit]));
  DBEdit2.ReadOnly := ((fDmCadVale.qParametrosUSA_GRADE.AsString = 'S') and (fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S')) ;
  if (fDmCadVale.qParametrosUSA_GRADE.AsString = 'S') and (fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
  //************
end;

procedure TfrmCadVale_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadVale_Itens.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDmCadVale.cdsValeItensQTD.AsFloat > 0) and (fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDmCadVale.cdsValeItensQTD.AsFloat * fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat));
  fDmCadVale.cdsValeItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadVale_Itens.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadVale_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
begin
  vGravacao_Ok := False;
  if fnc_Erro then
    exit;

  if fDmCadVale.cdsValeItens.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;
  vFlagErro := False;
  if fDmCadVale.cdsValeItens.State in [dsEdit,dsInsert] then
    fDmCadVale.cdsValeItensNOME_PRODUTO.AsString := fDmCadVale.cdsProdutoNOME.AsString;
  try
{    fDmCadVale.prc_Calculo_GeralItem(fDmCadVale.cdsValeItensQTD.AsFloat,fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat,
                                     fDmCadVale.cdsValeItensVLR_DESCONTO.AsFloat,fDmCadVale.cdsValeItensPERC_DESCONTO.AsFloat,
                                     fDmCadVale.cdsValeItensVLR_TOTAL.AsFloat,fDmCadVale.cdsValeItensGERAR_DUPLICATA.AsString);
}
    //Tamanho aqui
    if fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S' then
    begin
      if fDmCadVale.cdsValeItens.State in [dsEdit] then
        fDmCadVale.cdsValeItensNOME_PRODUTO.AsString := fDmCadVale.cdsValeItensNOME_PRODUTO.AsString +
                                                        ' TAM. ' + fDmCadVale.cdsValeItensTAMANHO.AsString
      else
      begin
        prc_Gravar_mItens;
        fDmCadVale.cdsValeItensNOME_PRODUTO.AsString := fDmCadVale.cdsValeItensNOME_PRODUTO.AsString +
                                                        ' TAM. ' + fDMInformar_Tam.vTamanho_Ini;
        fDmCadVale.cdsValeItensTAMANHO.AsString      := fDMInformar_Tam.vTamanho_Ini;
        fDmCadVale.cdsValeItensQTD.AsFloat           := fDMInformar_Tam.vQtd_Ini;
        vEditar := True;
      end;
    end;
    //*****
    fDmCadVale.cdsValeItens.Post;

    fDMCadVale.cdsValeVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',(fDMCadVale.cdsValeVLR_DESCONTO.AsFloat + fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat) - vVlr_Total_Desc));
    fDMCadVale.cdsValeVLR_PRODUTO.AsFloat  := StrToFloat(FormatFloat('0.00',(fDMCadVale.cdsValeVLR_PRODUTO.AsFloat + fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat
                                            + fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat) - vVlr_Total_Prod));
    fDMCadVale.cdsValeVLR_TOTAL.AsFloat  := StrToFloat(FormatFloat('0.00',(fDMCadVale.cdsValeVLR_TOTAL.AsFloat + fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat) - vVlr_Total_Prod));

    //Tamanho aqui
    if (fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and (fDmCadVale.qParametrosUSA_GRADE.AsString = 'S') then
      prc_Gravar_Tam;

    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vGravacao_Ok := False;
      vFlagErro    := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  if (vNotaSelecionada) or (vPedidoSelecionado) then
    exit;

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      fDmCadVale.prc_Inserir_Itens;
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

function TfrmCadVale_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if fDmCadVale.cdsProdutoID.AsInteger <> fDmCadVale.cdsValeItensID_PRODUTO.AsInteger then
    fDmCadVale.cdsProduto.Locate('ID',fDmCadVale.cdsValeItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if fDmCadVale.cdsValeItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDmCadVale.cdsValeItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDmCadVale.cdsValeItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (StrToFloat(FormatFloat('0.000000',fDmCadVale.cdsValeItensVLR_UNITARIO.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  //Aqui tamanho
  if (fDmCadVale.qParametrosUSA_GRADE.AsString = 'S') and (trim(fDmCadVale.cdsValeItensTAMANHO.AsString) = '') and (fDmCadVale.cdsProdutoUSA_GRADE.AsString = 'S') and
     (fDmCadVale.cdsValeItens.State in [dsEdit])then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadVale_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadVale_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadVale_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDmCadVale.cdsProduto.Close;
  fDmCadVale.cdsProduto.Open;
end;

procedure TfrmCadVale_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender)
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDmCadVale.cdsValeItensID_PRODUTO.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    fDmCadVale.cdsValeItensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDmCadVale.cdsValeItensID_PRODUTO.AsInteger > 0 then
    begin
      if DBEdit15.Visible then
        DBEdit15.SetFocus
      else
        RxDBLookupCombo4.SetFocus;
    end;
  end;
end;

procedure TfrmCadVale_Itens.FormCreate(Sender: TObject);
begin
  vNotaSelecionada   := False;
  vPedidoSelecionado := False;
end;

procedure TfrmCadVale_Itens.Panel5Exit(Sender: TObject);
var
  vFinalidadeAux: String;
  vID_VariacaoAux: Integer;
begin
  if not fDmCadVale.cdsProduto.Locate('ID',fDmCadVale.cdsValeItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
end;

procedure TfrmCadVale_Itens.Panel1Exit(Sender: TObject);
begin
  if (fDmCadVale.cdsValeItens.State in [dsInsert]) or (fDmCadVale.cdsValeItensID_PRODUTO.AsInteger <> vCodProdutoAnt) then
    prc_Move_Dados_Itens;
end;

function TfrmCadVale_Itens.fnc_Gerar_Cofins: Boolean;
begin
end;

function TfrmCadVale_Itens.fnc_Gerar_PIS: Boolean;
begin
end;

procedure TfrmCadVale_Itens.prc_Mover_Cofins_Pis;
begin
end;

procedure TfrmCadVale_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDmCadVale.cdsProduto.IndexFieldNames := 'REFERENCIA';
  prc_Mover_Finalidade;
end;

procedure TfrmCadVale_Itens.prc_Mover_Finalidade;
begin
end;

procedure TfrmCadVale_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmCadVale.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadVale_Itens.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit1.Text) <> '') then
  begin
    if not fnc_Verificar_Cod_Barras then
      MessageDlg('*** Código de Barras não encontrado!', mtError, [mbOk], 0)
    else
      fDmCadVale.cdsValeItensID_PRODUTO.AsInteger := fDmCadVale.cdsProdutoID.AsInteger;
  end;
end;

function TfrmCadVale_Itens.fnc_Verificar_Cod_Barras: Boolean;
begin
  Result := False;
  if fDmCadVale.cdsProduto.Locate('COD_BARRA',Edit1.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadVale_Itens.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit15.Text) <> '') then
  begin
    if not fnc_Verificar_Produto then
      MessageDlg('*** Código do produto não encontrado!', mtError, [mbOk], 0)
  end;
end;

function TfrmCadVale_Itens.fnc_Verificar_Produto: Boolean;
begin
  Result := False;
  if fDmCadVale.cdsProduto.Locate('ID',DBEdit15.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadVale_Itens.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

function TfrmCadVale_Itens.fnc_Buscar_Regra_CFOP(ID_CFOP: Integer): Integer;
begin
end;

procedure TfrmCadVale_Itens.btnGradeClick(Sender: TObject);
begin
  ffrmInformar_Tam := TfrmInformar_Tam.Create(self);
  ffrmInformar_Tam.fDMInformar_Tam := fDMInformar_Tam;
  ffrmInformar_Tam.fDMInformar_Tam.prc_Le_Produto_Tam(fDmCadVale.cdsValeItensID_PRODUTO.AsInteger);
  ffrmInformar_Tam.ShowModal;
  if fDMInformar_Tam.vGravar = 'S' then
    fDmCadVale.cdsValeItensQTD.AsFloat := fDMInformar_Tam.vQtd_Grade;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadVale_Itens.prc_Gravar_Tam;
var
  x: Integer;
  vItemAux: Integer;
begin
  fDMInformar_Tam.mItens.First;
  fDMInformar_Tam.mTamanho.First;
  while not fDMInformar_Tam.mTamanho.Eof do
  begin
    if (fDMInformar_Tam.mTamanhoTamanho.AsString <> fDMInformar_Tam.vTamanho_Ini) and (StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0) then
    begin
      fDmCadVale.prc_Inserir_Itens;
      for x := 0 to (fDMInformar_Tam.mItens.FieldCount - 1) do
      begin
        try
          if (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Item') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Nome_Produto_Original') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_RESTANTE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Obs') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_Atelier') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Unitario_Atelier') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TOTAL_ATELIER') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DT_ENVIO_ATELIER') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NomeProduto') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Qtd_Cancelado') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Qtd_Restante') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Qtd_Faturado') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Cancelado') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DtEntrega')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Faturado') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DtFaturado')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Cod_Produto_Cliente') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Tipo')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NumOS') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'BASE_ICMSTRANSF')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRANSF') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRANSF')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_CONFIG_CFOP') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_AFATURAR')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DT_RETORNO_ATELIER') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_PAGTO_ATELIER')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DT_PAGTO_ATELIER') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Aprovado_Orc')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'MOTIVO_NAO_APROV') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DTAPROVADO_NAO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_ORCAMENTO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_ORCAMENTO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_LIBERADA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_PRODUZIDA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_ICMSSIMPLES') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_PIS_COFINS_SUFRAMA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'OBS_ETIQUETA') then
            fDmCadVale.cdsValeItens.FieldByName(fDMInformar_Tam.mItens.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mItens.Fields[x].Value;
        except
        end;
      end;
      fDmCadVale.cdsValeItensNOME_PRODUTO.AsString := fDMInformar_Tam.mItensNome_Produto_Original.AsString +
                                                      ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDmCadVale.cdsValeItensTAMANHO.AsString      := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDmCadVale.cdsValeItensQTD.AsFloat           := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDmCadVale.cdsValeItens.Post;
    end;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

procedure TfrmCadVale_Itens.prc_Gravar_mItens;
var
  x: Integer;
begin
  fDMInformar_Tam.mItens.EmptyDataSet;
  fDMInformar_Tam.mPedido_Cli.EmptyDataSet;

  fDMInformar_Tam.mItens.Insert;
  for x := 0 to (fDmCadVale.cdsValeItens.FieldCount - 1) do
  begin
    if (fDmCadVale.cdsValeItens.Fields[x].FieldName <> 'sdsVale_Ped') and
       (fDmCadVale.cdsValeItens.Fields[x].FieldName <> 'sdsValePed') and
       (fDmCadVale.cdsValeItens.Fields[x].FieldName <> 'sdsVale_NDevolvida') and
       (fDmCadVale.cdsValeItens.Fields[x].FieldName <> 'sdsVale_Imp') and
       (fDmCadVale.cdsValeItens.Fields[x].FieldName <> 'QTD_LANCAR_ESTOQUE') then
      fDMInformar_Tam.mItens.FieldByName(fDmCadVale.cdsValeItens.Fields[x].FieldName).AsVariant := fDmCadVale.cdsValeItens.Fields[x].Value;
  end;
  fDMInformar_Tam.mItensNome_Produto_Original.AsString := fDmCadVale.cdsValeItensNOME_PRODUTO.AsString;
  fDMInformar_Tam.mItens.Post;
end;

procedure TfrmCadVale_Itens.dbedtPercDescExit(Sender: TObject);
var
  vAux : Real;
begin
  if (fDMCadVale.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') and
     (StrToFloat(FormatFloat('0.0000',fDMCadVale.cdsValeItensPERC_DESCONTO.AsFloat)) > StrToFloat(FormatFloat('0.0000',fDMCadVale.cdsProdutoPERC_DESC_MAX.AsFloat))) then
  begin
    MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadVale.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
    dbedtPercDesc.SetFocus;
  end
  else
  begin
    vAux := StrToFloat(FormatFloat('0.00', fDMCadVale.cdsValeItensQTD.AsFloat * fDMCadVale.cdsValeItensVLR_UNITARIO.AsFloat));
    fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    vAux := StrToFloat(FormatFloat('0.00', (vAux * fDMCadVale.cdsValeItensPERC_DESCONTO.AsFloat) / 100));
    fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat - vAux));
  end;
end;

procedure TfrmCadVale_Itens.dbedtVlrDescEnter(Sender: TObject);
begin
  vVlrDesc_Ant := StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat));
end;

procedure TfrmCadVale_Itens.dbedtVlrDescExit(Sender: TObject);
var
  vAux : Real;
begin
  if StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrDesc_Ant)) then
  begin
    fDMCadVale.cdsValeItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
    vAux := StrToFloat(FormatFloat('0.00', fDMCadVale.cdsValeItensQTD.AsFloat * fDMCadVale.cdsValeItensVLR_UNITARIO.AsFloat));
    fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', vAux));
    vAux := StrToFloat(FormatFloat('0.00000',(fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat / fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat) * 100));
    fDMCadVale.cdsValeItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00000', vAux));
    fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00', fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat - fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat));
    if (StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',fDMCadVale.cdsProdutoPERC_DESC_MAX.AsFloat))) and (fDMCadVale.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') then
    begin
      MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadVale.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
      dbedtVlrDesc.SetFocus;
    end;
  end;
end;

procedure TfrmCadVale_Itens.dbedtVlrProdEnter(Sender: TObject);
begin
  vVlrProd_Ant := StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat));
end;

procedure TfrmCadVale_Itens.dbedtVlrProdExit(Sender: TObject);
var
  vAux, vAux2 : Real;
begin
  if StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrProd_Ant)) then
  begin
    vAux := StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_UNITARIO.AsFloat * fDMCadVale.cdsValeItensQTD.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat)) > StrToFloat(FormatFloat('0.00',vAux)) then
      fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
    if StrToFloat(FormatFloat('0.00',fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat)) = StrToFloat(FormatFloat('0.00',vAux)) then
    begin
      fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat  := 0;
      fDMCadVale.cdsValeItensPERC_DESCONTO.AsFloat := 0;
    end
    else
    begin
      vAux2 := StrToFloat(FormatFloat('0.00000',100 - ((fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat / vAux) * 100)));
      fDMCadVale.cdsValeItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00000',vAux2));
      fDMCadVale.cdsValeItensVLR_DESCONTO.AsFloat  := StrToFloat(FormatFloat('0.00',vAux - fDMCadVale.cdsValeItensVLR_TOTAL.AsFloat));
    end;
  end;
end;

procedure TfrmCadVale_Itens.DBEdit4Enter(Sender: TObject);
begin
  DBEdit4.ReadOnly := (fDMCadVale.cdsValeItensID_PEDIDO.AsInteger > 0);
end;

end.
