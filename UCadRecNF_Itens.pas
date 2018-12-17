unit UCadRecNF_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, UCadProduto, UCadUnidade, RzTabs, Grids, DBGrids, 
  SMDBGrid, UDMInformar_Tam, NxCollection, UInformar_Tam, strUtils, RzPanel, SqlExpr;

type
  TfrmCadRecNF_Itens = class(TForm)
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
    Label30: TLabel;
    Shape1: TShape;
    lblEstoque: TLabel;
    pnlCod_Barras: TPanel;
    Label11: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    gbxVendedor: TRzGroupBox;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    lblTamanho: TLabel;
    btnGrade: TNxButton;
    dblcTamanho: TRxDBLookupCombo;
    DBEdit23: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit24: TDBEdit;
    pnlCor: TPanel;
    Label53: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    Label54: TLabel;
    DBEdit29: TDBEdit;
    Label56: TLabel;
    DBEdit31: TDBEdit;
    Label58: TLabel;
    DBEdit33: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGradeClick(Sender: TObject);
    procedure DBEdit23KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmInformar_Tam: TfrmInformar_Tam;

    vCodProdutoAnt: Integer;
    vQtd_Prod_Ant: Real;
    vQtd_KG_Ant: Real;
    vID_Produto_Ant: Integer;

    procedure prc_Calcular_VlrItens;

    function  fnc_Erro: Boolean;

    function fnc_Verificar_Cod_Barras: Boolean;
    function fnc_Verificar_Produto: Boolean;

    procedure prc_Gravar_mItens;
    procedure prc_Gravar_Tam;

    procedure prc_Chama_Form_Produto;
    procedure prc_Chama_Form_TabPreco;

    procedure prc_Abrir_Combinacao;
    procedure prc_Estoque(ID_Produto : Integer);

    function fnc_EstoqueItenxAux: Real;

  public
    { Public declarations }
    vNotaSelecionada: Boolean;
    vValeSelecionado: Boolean;
    vOSSelecionada: Boolean;
    vGravacao_Ok: Boolean;
    vPedidoSelecionado: Boolean;
    vSacolaSelecionada: Boolean;
    vPedAmbiente: Boolean;
    vItem_Original: Integer;

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMInformar_Tam: TDMInformar_Tam;

    procedure prc_Move_Dados_Itens;

    function fnc_Estoque_OK(ID_Produto, ID_Cor: Integer; Tamanho: String; Qtd: Real): Boolean;
  end;

var
  frmCadRecNF_Itens: TfrmCadRecNF_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UMenu, uCalculo_NotaFiscal, USel_TabPreco, USel_Unidade, UDMUtil, DmdDatabase,
  USenha;

{$R *.dfm}

procedure TfrmCadRecNF_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  if fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S' then
    FreeAndNil(fDMInformar_Tam);
  Action := Cafree;
end;

procedure TfrmCadRecNF_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);

  if fDMCadNotaFiscal.vState_Item = 'I' then
  begin
    vID_Produto_Ant := 0;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'S';
  end
  else
    vID_Produto_Ant := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;

  if fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    if not Assigned(fDMInformar_Tam) then
      fDMInformar_Tam := TDMInformar_Tam.Create(Self);
    if (fDMCadNotaFiscal.vState_Item = 'E') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') then
    begin
      fDMInformar_Tam.prc_Abrir_Produto_Tam(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger);
      lblTamanho.Visible  := True;
      oDBUtils.SetDataSourceProperties(dblcTamanho, fDMInformar_Tam);
      dblcTamanho.Visible := True;
    end;
  end;

  vCodProdutoAnt  := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;

  pnlCod_Barras.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_COD_BARRAS.AsString = 'S');
  Label13.Visible       := (fDMCadNotaFiscal.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit15.Visible      := (fDMCadNotaFiscal.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');

  if fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    if not Assigned(fDMInformar_Tam) then
      fDMInformar_Tam := TDMInformar_Tam.Create(Self);
  end;

  if (fDMCadNotaFiscal.vState_Item = 'E') and (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') then
  begin
    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    btnGrade.Visible := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    DBEdit2.ReadOnly := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible) then
      DBEdit2.Color := clSilver
    else
      DBEdit2.Color := clWindow;
  end;
  pnlCor.Visible := ((fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or
                    (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or
                    (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
    prc_Abrir_Combinacao;
  Label54.Visible  := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
  DBEdit29.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit] then
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat))
  else
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',0));

  Label58.Visible  := (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
  DBEdit33.Visible := (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
end;

procedure TfrmCadRecNF_Itens.prc_Move_Dados_Itens;
var
  vPrecoAux: Real;
  vIDAux: Integer;
  vAux: Real;
begin
  if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger <> fDMCadNotaFiscal.cdsFilialID.AsInteger then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString   := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'S';

  if (fDMCadNotaFiscal.vState_Item = 'I') or (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert]) then
  begin
    if vNotaSelecionada then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat
    else
    begin
      begin
        vPrecoAux := 0;
        if StrToFloat(FormatFloat('0.000000',vPreco_Pos)) > 0 then
          vPrecoAux := StrToFloat(FormatFloat('0.000000',vPreco_Pos))
        else
        begin
          if fDMCadNotaFiscal.cdsParametrospRODUTO_PRECO_POR_FINALIDADE.AsString = 'S' then
          begin
            case AnsiIndexStr(fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString,['C','R','I','O']) of
              0: fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_CONSUMO.AsFloat;
              1: fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_REVENDA.AsFloat;
              2: fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_INDUSTRIALIZACAO.AsFloat;
            else
              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat;
            end
          end
          else
          begin
            if fDMCadNotaFiscal.cdsClienteID_TAB_PRECO.AsInteger > 0 then
              vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadNotaFiscal.cdsClienteID_TAB_PRECO.AsInteger,fDMCadNotaFiscal.cdsProdutoID.AsInteger);
            if StrToFloat(FormatFloat('0.000000',vPrecoAux)) > 0 then
              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000000000',vPrecoAux))
            else
            begin
              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat;
              if (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsProdutoPRECO_VENDA.AsFloat)) <= 0) and (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'M') then
                fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat;
            end;
          end;
        end;
      end;
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString               := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger               := fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString           := fDMCadNotaFiscal.cdsProdutoORIGEM_PROD.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO.AsString := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensMAOOBRA.AsString               := 'N';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_DESONERACAO.AsInteger      := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat     := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.AsString          := '';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat     := StrToFloat(FormatFloat('0.0000',0));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DIFERIMENTO.AsFloat  := 0;

  //Tamanho
  if fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    btnGrade.Visible    := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.vState_Item = 'I'));
    lblTamanho.Visible  := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.vState_Item = 'E'));
    dblcTamanho.Visible := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.vState_Item = 'E'));
    DBEdit2.ReadOnly := ((fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S'));
    if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') then
      DBEdit2.Color := clSilver
    else
      DBEdit2.Color := clWindow;
  end;
  //************
  if (fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',0))
  else
  if ((fDMCadNotaFiscal.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> vID_Produto_Ant))
     and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger <= 0) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat := fnc_Buscar_Comissao_Prod(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                                                fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                                                fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger);
end;

procedure TfrmCadRecNF_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadRecNF_Itens.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat > 0) then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
    else
      vAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadRecNF_Itens.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadRecNF_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  vQtdAux: Real;
  vGravar_Tab_Tam: String;
begin
  vGravacao_Ok := False;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '0' then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_FCI.AsString       := '';
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_USADO_FCI.AsFloat := 0;
  end;

  if fnc_Erro then
    exit;

  if fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'N' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';

  if ((fDMCadNotaFiscal.qParametros_PedUSA_OPERACAO_SERV.AsString <> 'S') and (trim(fDMCadNotaFiscal.qParametros_NFeALTERAR_NOME_PROD.AsString) <> 'S'))
     or (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString) = '') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMCadNotaFiscal.cdsProdutoNOME.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString   := fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString;

  //Controle do estoque  11/05/2015
  if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S')
    and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') then
  begin
    if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString <> 'S')
       or ((fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit]) and (StrToFloat(FormatFloat('0.0000',vQtd_Prod_Ant)) <> StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat))))  then
    begin
      //11/09/2015  alterado conforme JW
      vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
      if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0) then
        vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat));
      if not fnc_Estoque_OK(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                            fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString,StrToFloat(FormatFloat('0.0000',vQtdAux))) then
        exit;
    end
    else
    begin
      vFlagErro := False;
      fDMInformar_Tam.mTamanho.First;
      while not fDMInformar_Tam.mTamanho.eof do
      begin
        if StrToFloat(FormatFloat('0.0000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0 then
        begin
          if not fnc_Estoque_OK(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                fDMInformar_Tam.mTamanhoTamanho.AsString,fDMInformar_Tam.mTamanhoQtd.AsFloat) then
          begin
            //fDMInformar_Tam.mTamanho.Delete
            fDMInformar_Tam.mTamanho.Last;
            vFlagErro := True;
          end
          else
            fDMInformar_Tam.mTamanho.Next
        end
        else
          fDMInformar_Tam.mTamanho.Next;
      end;
      if vFlagErro then
        exit;
      if fDMInformar_Tam.mTamanho.IsEmpty then
        exit;
    end;
  end;
  //**************  11/05/2015
  
  fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString := '';
  vEditar   := (fDMCadNotaFiscal.vState_Item = 'E');
  vFlagErro := False;

  try
    if (pnlCor.Visible) and (RxDBLookupCombo14.Text <> '') then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_COR_COMBINACAO.AsString := RxDBLookupCombo14.Text;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_IPI.Clear;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.Clear;
    if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat)) > 0) then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'I';
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_BARRA.AsString := '';

    //08/07/2014  Quantidade por pacote
    if fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString = fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat := StrToFloat(FormatFloat('0',0));
    //************
    if fDMCadNotaFiscal.cdsTab_NCMID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger then
      fDMCadNotaFiscal.cdsTab_NCM.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger,[loCaseInsensitive]);

    if not(vPedidoSelecionado) or (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString) = '') then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString      := fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNCM.AsString       := fDMCadNotaFiscal.cdsTab_NCMNCM.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger <= 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_ORIGINAL.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;

    prc_Calculo_RECNF_Itens(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                           fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat,
                                           fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,'S');

    if (fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S') then
    begin
      if not(fDMCadNotaFiscal.cdsNotaFiscal_Tam.IsEmpty) or not(fDMInformar_Tam.mTamanho.IsEmpty) then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString := 'S'
      else
        fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString := 'N';
    end
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString := 'N';
        
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString = 'S') then
    begin
      if not vPedidoSelecionado then
      begin
        fDMInformar_Tam.mTamanho.First;
        while not fDMInformar_Tam.mTamanho.Eof do
        begin
          if fDMCadNotaFiscal.cdsNotaFiscal_Tam.Locate('ID;ITEM;TAMANHO',VarArrayOf([fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger,
                                                         fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger,fDMInformar_Tam.mTamanhoTamanho.AsString]),[locaseinsensitive]) then
            fDMCadNotaFiscal.cdsNotaFiscal_Tam.Edit
          else
          begin
            if StrToFloat(FormatFloat('0.0000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0 then
            begin
              fDMCadNotaFiscal.cdsNotaFiscal_Tam.Insert;
              fDMCadNotaFiscal.cdsNotaFiscal_TamID.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
              fDMCadNotaFiscal.cdsNotaFiscal_TamITEM.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
              fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString := fDMInformar_Tam.mTamanhoTamanho.AsString;
              fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat      := 0;
              fDMCadNotaFiscal.cdsNotaFiscal_TamID_PEDIDO.AsInteger   := 0;
              fDMCadNotaFiscal.cdsNotaFiscal_TamITEM_PEDIDO.AsInteger := 0;
            end;
          end;
          if fDMCadNotaFiscal.cdsNotaFiscal_Tam.State in [dsEdit,dsInsert] then
          begin
            fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat := StrToFloat(FormatFloat('0.000',fDMInformar_Tam.mTamanhoQtd.AsFloat));
            fDMCadNotaFiscal.cdsNotaFiscal_Tam.Post;
          end;
          fDMInformar_Tam.mTamanho.Next;
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_Tam.First;
        while not fDMCadNotaFiscal.cdsNotaFiscal_Tam.Eof do
        begin
          if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat)) <= 0 then
            fDMCadNotaFiscal.cdsNotaFiscal_Tam.Delete
          else
            fDMCadNotaFiscal.cdsNotaFiscal_Tam.Next;
        end;
      end;
    end
    else
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString <> 'S') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.IsNull) then
    begin
      if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S')  then
      begin
        if (fDMCadNotaFiscal.vState_Item = 'E') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger > 0)   then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' TAM. ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString
        else
        begin
          prc_Gravar_mItens;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' TAM. ' + fDMInformar_Tam.vTamanho_Ini;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString      := fDMInformar_Tam.vTamanho_Ini;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat           := fDMInformar_Tam.vQtd_Ini;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMInformar_Tam.vQtd_Ini;
          vEditar := True;
        end;
      end;
    end;
    //*****

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NTE.AsInteger > 0 then
      fDMCadNotaFiscal.prc_Ajustar_NDevolvida;

    //15/11/2015
    if (fDMCadNotaFiscal.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString = 'S') then
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString = 'S' then
        uCalculo_NotaFiscal.prc_Gravar_cdsNotaFiscal_ItensAux(fDMCadNotaFiscal)
      else
        fDMCadNotaFiscal.prc_Excluir_cdsNotaFiscal_ItensAux(fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger);
    end;
    //**********
    //26/05/2016
    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString <> 'S') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.IsNull) then
    begin
      if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and
         (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger <= 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger <= 0) then
      begin
        prc_Gravar_Tam;
        if fDMCadNotaFiscal.cdsParametrosCALCULAR_PESO_CONSUMO.AsString <> 'S' then
        begin
          fDMCadNotaFiscal.cdsTab_NCM.Close;
          fDMCadNotaFiscal.cdsTab_NCM.Open;
          prc_Calcular_Desconto_Novo(fDMCadNotaFiscal,False);
        end;
      end;
    end;

    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vGravacao_Ok := False;
      vFlagErro    := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  lblEstoque.Caption := '0';

  if (vNotaSelecionada) or (vPedidoSelecionado) or (Tag = 99) or (vValeSelecionado) or (vOSSelecionada) or (vSacolaSelecionada) or (vPedAmbiente) then
  begin
    vNotaSelecionada   := False;
    vPedidoSelecionado := False;
    vValeSelecionado   := False;
    vOSSelecionada     := False;
    vSacolaSelecionada := False;
    vPedAmbiente       := False;
    exit;
  end;

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      fDMCadNotaFiscal.prc_Inserir_Itens;
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

function TfrmCadRecNF_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if fDMCadNotaFiscal.cdsProdutoID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger then
    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';                         
  if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') and (StrToFloat(FormatFloat('0.0000000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) = '') and (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and
     (fDMCadNotaFiscal.vState_Item = 'E') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString = 'N')  then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadRecNF_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadNotaFiscal.vID_Variacao := 0;
  Close;
end;

procedure TfrmCadRecNF_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadRecNF_Itens.SpeedButton4Click(Sender: TObject);
begin
  //02/06/2016  incluido a filial
  fDMCadNotaFiscal.cdsProduto.Close;
  if (fDMCadNotaFiscal.cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') or (fDMCadNotaFiscal.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S') then
    fDMCadNotaFiscal.prc_Filtrar_Produto_Cliente
  else
    fDMCadNotaFiscal.cdsProduto.Open;
end;

procedure TfrmCadRecNF_Itens.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton6Click(Sender);
end;

procedure TfrmCadRecNF_Itens.SpeedButton6Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsUnidade.Close;
  fDMCadNotaFiscal.cdsUnidade.Open;
end;

procedure TfrmCadRecNF_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender);
end;

procedure TfrmCadRecNF_Itens.FormCreate(Sender: TObject);
begin
  vNotaSelecionada   := False;
  vPedidoSelecionado := False;
  vValeSelecionado   := False;
  vOSSelecionada     := False;
  vSacolaSelecionada := False;
  vPedAmbiente       := False;
  fDMInformar_Tam := TDMInformar_Tam.Create(Self);
end;

procedure TfrmCadRecNF_Itens.Panel5Exit(Sender: TObject);
var
  vFinalidadeAux : String;
begin
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  vFinalidadeAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := 0;

  prc_Abrir_Combinacao;
end;

procedure TfrmCadRecNF_Itens.Panel1Exit(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger < 1) then
    exit;
  if (fDMCadNotaFiscal.vState_Item = 'I') or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) then
    prc_Move_Dados_Itens;
end;

procedure TfrmCadRecNF_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadRecNF_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadRecNF_Itens.RxDBLookupCombo4Change(Sender: TObject);
begin
  if trim(RxDBLookupCombo4.Text) <> '' then
    prc_Estoque(RxDBLookupCombo4.KeyValue);
end;

procedure TfrmCadRecNF_Itens.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit1.Text) <> '') then
  begin
    if not fnc_Verificar_Cod_Barras then
      MessageDlg('*** Código de Barras não encontrado!', mtError, [mbOk], 0)
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := fDMCadNotaFiscal.cdsProdutoID.AsInteger;
  end;
end;

function TfrmCadRecNF_Itens.fnc_Verificar_Cod_Barras: Boolean;
begin
  Result := False;
  if fDMCadNotaFiscal.cdsProduto.Locate('COD_BARRA',Edit1.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadRecNF_Itens.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit15.Text) <> '') then
  begin
    if not fnc_Verificar_Produto then
      MessageDlg('*** Código do produto não encontrado!', mtError, [mbOk], 0);
  end
  else
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto
  else
  if (Key = Vk_F3) then
    prc_Chama_Form_TabPreco;
end;

function TfrmCadRecNF_Itens.fnc_Verificar_Produto: Boolean;
begin
  Result := False;
  if fDMCadNotaFiscal.cdsProduto.Locate('ID',DBEdit15.Text,[loCaseInsensitive]) then
  begin
    if fDMCadNotaFiscal.cdsProdutoINATIVO.AsString = 'N' then
      Result := True;
  end;
end;

procedure TfrmCadRecNF_Itens.btnGradeClick(Sender: TObject);
begin
  ffrmInformar_Tam := TfrmInformar_Tam.Create(self);
  ffrmInformar_Tam.fDMInformar_Tam := fDMInformar_Tam;
  ffrmInformar_Tam.fDMInformar_Tam.prc_Le_Produto_Tam(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger);
  if not fDMCadNotaFiscal.cdsNotaFiscal_Tam.IsEmpty then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Tam.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Tam.Eof do
    begin
      if fDMInformar_Tam.mTamanho.Locate('Tamanho',fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString,[loCaseInsensitive]) then
        fDMInformar_Tam.mTamanho.Edit
      else
      begin
        fDMInformar_Tam.mTamanho.Insert;
        fDMInformar_Tam.mTamanhoTamanho.AsString := fDMCadNotaFiscal.cdsNotaFiscal_TamTAMANHO.AsString;
      end;
      fDMInformar_Tam.mTamanhoQtd.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscal_TamQTD.AsFloat));
      fDMInformar_Tam.mTamanho.Post;
      fDMCadNotaFiscal.cdsNotaFiscal_Tam.Next;
    end;
  end;
  ffrmInformar_Tam.ShowModal;
  if fDMInformar_Tam.vGravar = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := fDMInformar_Tam.vQtd_Grade;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadRecNF_Itens.prc_Gravar_Tam;
var
  x: Integer;
  vItemAux: Integer;
begin
  fDMInformar_Tam.mItens.First;
  fDMInformar_Tam.mTamanho.First;
  while not fDMInformar_Tam.mTamanho.Eof do
  begin
    if (fDMInformar_Tam.mTamanhoTamanho.AsString <> fDMInformar_Tam.vTamanho_Ini) and (StrToFloat(FormatFloat('0.0000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0) then
    begin
      fDMCadNotaFiscal.prc_Inserir_Itens(False);
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
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'GERAR_LOTE')    and (UpperCase(fDMInformar_Tam.mItens.Fields[x].FieldName) <> 'CARIMBO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DTPRODUCAO')    and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_TALAO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_LOTE')      and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'TIPO_ORCAMENTO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'End_Foto')      and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_PECA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_FUT')       and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CALCULAR_ST')   and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COMPLEMENTO_PROD') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_PIS_COFINS_SUFRAMA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'OBS_ETIQUETA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PRECO_CUSTO')   and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_MARGEM') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_MARGEM2') then
            fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName(fDMInformar_Tam.mItens.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mItens.Fields[x].Value;
        except
        end;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMInformar_Tam.mItensNome_Produto_Original.AsString + ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString      := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat           := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMInformar_Tam.mTamanhoQtd.AsFloat;

      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

      fDMInformar_Tam.mNotaFiscal_Imp.First;
      while not fDMInformar_Tam.mNotaFiscal_Imp.Eof do
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Imp.Last;
        vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger;
        vItemAux := vItemAux + 1;

        fDMCadNotaFiscal.cdsNotaFiscal_Imp.Insert;
        fDMCadNotaFiscal.cdsNotaFiscal_ImpID.AsInteger       := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
        fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
        fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger := vItemAux;
        for x := 0 to (fDMInformar_Tam.mNotaFiscal_Imp.FieldCount - 1) do
        begin
          try
            if (fDMInformar_Tam.mNotaFiscal_Imp.Fields[x].FieldName <> 'ID') and (fDMInformar_Tam.mNotaFiscal_Imp.Fields[x].FieldName <> 'Item') and
               (fDMInformar_Tam.mNotaFiscal_Imp.Fields[x].FieldName <> 'Item_Imp') then
              fDMCadNotaFiscal.cdsNotaFiscal_Imp.FieldByName(fDMInformar_Tam.mNotaFiscal_Imp.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mNotaFiscal_Imp.Fields[x].Value;
          except
          end;
        end;
        fDMCadNotaFiscal.cdsNotaFiscal_Imp.Post;

        fDMInformar_Tam.mNotaFiscal_Imp_AD.First;
        while not fDMInformar_Tam.mNotaFiscal_Imp_AD.Eof do
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Last;
          //vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_AD.AsInteger;
          //vItemAux := vItemAux + 1;

          fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Insert;
          fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdID.AsInteger       := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
          fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
          fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_IMP.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger;
          for x := 0 to (fDMInformar_Tam.mNotaFiscal_Imp_AD.FieldCount - 1) do
          begin
            try
              if (fDMInformar_Tam.mNotaFiscal_Imp_AD.Fields[x].FieldName <> 'ID') and (fDMInformar_Tam.mNotaFiscal_Imp_AD.Fields[x].FieldName <> 'Item') and
                 (fDMInformar_Tam.mNotaFiscal_Imp_AD.Fields[x].FieldName <> 'Item_Imp') then
                fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.FieldByName(fDMInformar_Tam.mNotaFiscal_Imp_AD.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mNotaFiscal_Imp_AD.Fields[x].Value;
            except
            end;
          end;
          fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Post;
          fDMInformar_Tam.mNotaFiscal_Imp_AD.Next;
        end;
        fDMInformar_Tam.mNotaFiscal_Imp.Next;
      end;
    end;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

procedure TfrmCadRecNF_Itens.prc_Gravar_mItens;
var
  x: Integer;
begin
  fDMInformar_Tam.mItens.EmptyDataSet;
  fDMInformar_Tam.mPedido_Cli.EmptyDataSet;

  fDMInformar_Tam.mItens.Insert;
  for x := 0 to (fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldCount - 1) do
  begin
    if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_Ped') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_NDevolvida') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_Imp') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_DrawBack') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_Fut') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_OS') and
       //(fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'NOME_COR_COMBINACAO') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'QTD_DESC_ESTOQUE') then
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'QTD_DESC_ESTOQUE')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'QTD_LANCAR_ESTOQUE') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_FCP')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_UF_DEST') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_PARTILHA')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ICMS_FCP') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_DEST')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_REMET') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'GRAVOU_TAB_TAMANHO') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_Tam') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'ID_MOVESTOQUE_PED')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_DESON') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_PIS_COFINS_SUFRAMA') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_DESC_SUFRAMA') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_DESC_SUFRAMA')       and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_AFRMM') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ISSQN')             and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ISSQN') then
      fDMInformar_Tam.mItens.FieldByName(fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName).AsVariant := fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].Value;
  end;
  fDMInformar_Tam.mItensItem_original.AsInteger        := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  fDMInformar_Tam.mItensNome_Produto_Original.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
  fDMInformar_Tam.mItens.Post;

  if not fDMCadNotaFiscal.cdsNotaFiscal_Imp.IsEmpty then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Imp.Eof do
    begin
      fDMInformar_Tam.mNotaFiscal_Imp.Insert;
      for x := 0 to (fDMCadNotaFiscal.cdsNotaFiscal_Imp.FieldCount - 1) do
      begin
        if (fDMCadNotaFiscal.cdsNotaFiscal_Imp.Fields[x].FieldName <> 'sdsNotaFiscal_Imp_Ad') then
          fDMInformar_Tam.mNotaFiscal_Imp.FieldByName(fDMCadNotaFiscal.cdsNotaFiscal_Imp.Fields[x].FieldName).AsVariant := fDMCadNotaFiscal.cdsNotaFiscal_Imp.Fields[x].Value;
      end;
      fDMInformar_Tam.mNotaFiscal_Imp.Post;

      fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.First;
      while not fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Eof do
      begin
        fDMInformar_Tam.mNotaFiscal_Imp_AD.Insert;
        for x := 0 to (fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.FieldCount - 1) do
        begin
          fDMInformar_Tam.mNotaFiscal_Imp_Ad.FieldByName(fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Fields[x].FieldName).AsVariant := fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Fields[x].Value;
        end;
        fDMInformar_Tam.mNotaFiscal_Imp_AD.Post;
        fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Next;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Imp.Next;
    end;
  end;
end;

procedure TfrmCadRecNF_Itens.DBEdit23KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0 then
      ShowMessage('Não foi escolhido nenhum produto!')
    else
    begin
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
      vUnidade_Pos := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
      vQtd_Pacote_Pos := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      frmSel_Unidade := TfrmSel_Unidade.Create(Self);
      frmSel_Unidade.vID_Produto_Uni := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
      frmSel_Unidade.vUnidade_Ori    := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
      frmSel_Unidade.ShowModal;
      if trim(vUnidade_Pos) <> '' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString   := vUnidade_Pos;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat := StrToFloat(FormatFloat('0.0000',vQtd_Pacote_Pos));
      end;
      Label45.Visible  := (fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsInteger > 1);
      DBEdit24.Visible := (fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsInteger > 1);
    end;
  end;
end;

procedure TfrmCadRecNF_Itens.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto
  else
  if (Key = Vk_F3) then
    prc_Chama_Form_TabPreco;
end;

procedure TfrmCadRecNF_Itens.prc_Chama_Form_Produto;
begin
  vCodProduto_Pos := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  vCodPessoa_Pos  := fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger;
  frmSel_Produto := TfrmSel_Produto.Create(Self);
  frmSel_Produto.ShowModal;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger > 0 then
  begin
    if DBEdit15.Visible then
      DBEdit15.SetFocus
    else
      RxDBLookupCombo4.SetFocus;
  end;
  RxDBLookupCombo4Change(RxDBLookupCombo4);
end;

procedure TfrmCadRecNF_Itens.prc_Chama_Form_TabPreco;
begin
  vCodProduto_Pos := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  frmSel_TabPreco := TfrmSel_TabPreco.Create(Self);
  frmSel_TabPreco.ShowModal;
  FreeAndNil(frmSel_Produto);
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger > 0 then
  begin
    if DBEdit15.Visible then
      DBEdit15.SetFocus
    else
      RxDBLookupCombo4.SetFocus;
  end;
  RxDBLookupCombo4Change(RxDBLookupCombo4);
end;

procedure TfrmCadRecNF_Itens.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto
  else
  if (Key = Vk_F3) then
    prc_Chama_Form_TabPreco;
end;

procedure TfrmCadRecNF_Itens.prc_Abrir_Combinacao;
begin
  fDMCadNotaFiscal.cdsCombinacao.Close;
  fDMCadNotaFiscal.sdsCombinacao.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  fDMCadNotaFiscal.cdsCombinacao.Open;
end;

procedure TfrmCadRecNF_Itens.DBEdit2Enter(Sender: TObject);
begin
  vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
end;

function TfrmCadRecNF_Itens.fnc_Estoque_OK(ID_Produto, ID_Cor: Integer; Tamanho: String; Qtd: Real): Boolean;
var
  vQtdAux: Real;
  vID_LocalAux: Integer;
  ffrmSenha: TfrmSenha;
begin
  Result := True;
  if fDMCadNotaFiscal.cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString <> 'S' then
    exit;
  //12/11/2015
  vID_LocalAux := fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger;
  if (fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger <= 0) then
    vID_LocalAux := fnc_Verificar_Local(fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString)
  else
  if (fDMCadNotaFiscal.cdsParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
    vID_LocalAux := 0;
  //**********
  vQtdAux := fnc_Busca_Estoque2(fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,ID_Produto,ID_Cor,Tamanho,vID_LocalAux,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger); //*** Foi acrescentado o campo local
  //15/11/2015 Estoque 
  if fDMCadNotaFiscal.mItensAlt.FindKey([fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,ID_Cor,Tamanho]) then
    vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + fDMCadNotaFiscal.mItensAltQtd.AsFloat));
  vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux - fnc_EstoqueItenxAux));
  //*******

  if StrToFloat(FormatFloat('0.0000',vQtdAux)) < StrToFloat(FormatFloat('0.0000',Qtd)) then
  begin
    if trim(fDMCadNotaFiscal.cdsParametrosSENHA_LIBERA_ESTOQUE.AsString) = '' then
      //Result := MessageDlg('Produto com quantidade menor no estoque, confirma inclusão do produto ?',mtConfirmation,[mbYes,mbNo],0) = mrNo
      Result := (MessageDlg('Produto com quantidade menor no estoque, confirma inclusão do produto ?',mtConfirmation,[mbYes,mbNo],0) = mrYes)
    else
    begin
      ffrmSenha := TfrmSenha.Create(self);
      ffrmSenha.Label2.Caption := 'Produto: ' + fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString + ',  com estoque negativo ';
      ffrmSenha.Label3.Caption := 'Informe a senha para liberar ';
      if Tamanho <> '' then
        ffrmSenha.Label4.Caption := 'Tamanho = ' + Tamanho
      else
        ffrmSenha.Label4.Caption := '';
      ffrmSenha.Label4.Caption := ffrmSenha.Label4.Caption + '   Qtd Est. ' + FormatFloat('0.####',vQtdAux);
      if StrToFloat(FormatFloat('0.0000',vQtdAux)) <= 0 then
        ffrmSenha.Label4.Font.Color := clRed
      else
        ffrmSenha.Label4.Font.Color := clBlue;
      ffrmSenha.vControlaSenha := True;
      ffrmSenha.vSenha_Param := fDMCadNotaFiscal.cdsParametrosSENHA_LIBERA_ESTOQUE.AsString;
      ffrmSenha.ShowModal;
      FreeAndNil(ffrmSenha);
      if vSenha <> fDMCadNotaFiscal.cdsParametrosSENHA_LIBERA_ESTOQUE.AsString then
        Result := False;
    end;
  end;
end;

procedure TfrmCadRecNF_Itens.DBEdit31Enter(Sender: TObject);
begin
  vQtd_KG_Ant := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat));
end;

procedure TfrmCadRecNF_Itens.DBEdit31Exit(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0 then
    begin
      if trim(fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString) <> '' then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString := fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString;
    end
    else
    if StrToFloat(FormatFloat('0.0000',vQtd_KG_Ant)) > 0 then
    begin
      if fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
    end;
  end;
end;

procedure TfrmCadRecNF_Itens.DBEdit15Exit(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger > 0 then
    prc_Estoque(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger);
end;

procedure TfrmCadRecNF_Itens.Panel5Enter(Sender: TObject);
begin
  vID_Produto_Ant := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
end;

function TfrmCadRecNF_Itens.fnc_EstoqueItenxAux: Real;
var
  sds: TSQLDataSet;
begin
  Result := StrToFloat(FormatFloat('0',0));
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.GetMetadata   := False;
    sds.NoMetadata    := True;
    sds.CommandText   := 'SELECT SUM(I.qtd) QTD  FROM notafiscal_itensaux I '
                       + ' WHERE I.id = :ID  AND I.ITEM <> :ITEM '
                       + '   AND I.id_produto = :ID_PRODUTO ';
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
      sds.CommandText := sds.CommandText + '   AND I.id_cor = :ID_COR ';
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '' then
      sds.CommandText := sds.CommandText + '   AND I.tamanho = :TAMANHO ';
    sds.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    sds.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
    sds.ParamByName('ID_PRODUTO').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
      sds.ParamByName('ID_COR').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger;
    if trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '' then
      sds.ParamByName('TAMANHO').AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString;
    sds.Open;
    Result := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD').AsFloat));
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadRecNF_Itens.prc_Estoque(ID_Produto: Integer);
var
  vQtdAux: Real;
  vID_Cor : Integer;
begin
  vQtdAux := 0;
  vID_Cor := 0;
  if trim(RxDBLookupCombo14.Text) <> '' then
    vID_Cor := RxDBLookupCombo14.KeyValue;
  vQtdAux := fnc_Buscar_Estoque(ID_Produto,fDMCadNotaFiscal.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger,vID_Cor);
  lblEstoque.Caption := FormatFloat('0.####',vQtdAux);
end;

end.
