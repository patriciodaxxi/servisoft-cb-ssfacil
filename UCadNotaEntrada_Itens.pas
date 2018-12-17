unit UCadNotaEntrada_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal,
  StdCtrls, Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, UCadProduto, UCadUnidade, UCadCFOP, UDMInformar_Tam,
  NxCollection, UInformar_Tam, SqlExpr, RzPanel;

type
  TfrmCadNotaEntrada_Itens = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label10: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label11: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label15: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    Label17: TLabel;
    btnGrade: TNxButton;
    dblcTamanho: TRxDBLookupCombo;
    lblTamanho: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    pnlCombinacao: TPanel;
    Label53: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Panel4: TPanel;
    lblFinalidade: TLabel;
    rxcbFinalidade: TRxDBComboBox;
    RzGroupBox2: TRzGroupBox;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Exit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadCFOP: TfrmCadCFOP;
    ffrmInformar_Tam: TfrmInformar_Tam;
    vID_Produto_Ant: Integer;

    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Calcular_VlrItens;

    function fnc_Erro: Boolean;

    procedure prc_Gravar_Tam;
    procedure prc_Abrir_Combinacao;

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMInformar_Tam: TDMInformar_Tam;

    vGravacao_Ok: Boolean;
    vPedidoSelecionado: Boolean;

    procedure prc_Move_Dados_Itens;
    procedure prc_Gravar_mItens;

  end;

var
  frmCadNotaEntrada_Itens: TfrmCadNotaEntrada_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, uCalculo_NotaFiscal, USel_Unidade,
  DmdDatabase;

{$R *.dfm}

procedure TfrmCadNotaEntrada_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadNotaEntrada_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  //if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
  if fDMCadNotaFiscal.vState_Item = 'I' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'S';

  //if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
  if (fDMCadNotaFiscal.vState_Item = 'I') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount < 1) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;

  Label17.Visible := (fDMCadNotaFiscal.cdsParametrosGRAVAR_INF_ADICIONAIS_NTE.AsString = 'S');

  //Tamanhos
  if fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    fDMInformar_Tam := TDMInformar_Tam.Create(Self);
    if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit]) and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) <> '') then
    begin
      fDMInformar_Tam.prc_Abrir_Produto_Tam(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger);
      lblTamanho.Visible  := True;
      oDBUtils.SetDataSourceProperties(dblcTamanho, fDMInformar_Tam);
      dblcTamanho.Visible := True;
      //RxDBLookupCombo8.LookupSource := fDMInformar_Tam.cdsProduto_Tam;
    end;
  end;

  //Tamanho
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit]) and (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') then
  begin
    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    btnGrade.Visible := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    DBEdit2.ReadOnly := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible) then
      DBEdit2.Color := clSilver
    else
      DBEdit2.Color := clWindow;
  end;
  //***************
  Label19.Visible  := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
  DBEdit10.Visible := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
  pnlCombinacao.Visible := (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B');
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger > 0 then
    prc_Abrir_Combinacao;
  Label20.Visible  := (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S');
  DBEdit11.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S');
  Panel4.Visible   := (fDMCadNotaFiscal.qParametros_NTEMOSTRAR_FINALIDADE.AsString = 'S');
  if Panel4.Visible then
    Panel4.TabOrder := 1;
  Label9.Visible           := ((fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S') and (fDMCadNotaFiscal.qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS.AsString = 'S'));
  RxDBLookupCombo6.Visible := ((fDMCadNotaFiscal.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S') and (fDMCadNotaFiscal.qParametros_NTEUSA_CENTRO_CUSTO.AsString = 'S'));
end;

procedure TfrmCadNotaEntrada_Itens.Panel2Enter(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger < 1) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger < 1) then
    exit;

  prc_Move_Dados_Itens;
end;

procedure TfrmCadNotaEntrada_Itens.prc_Buscar_Imposto(Auxiliar, Nome: String);
begin
  if fDMCadNotaFiscal.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadNotaFiscal.cdsCFOP.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName('PERC_'+Nome).AsFloat  := fDMCadNotaFiscal.cdsCFOP.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadNotaFiscal.cdsCFOP.FieldByName('TIPO_'+Nome).AsString;
    end;
  end
  else
  if fDMCadNotaFiscal.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger > 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName('ID_'+Auxiliar+Nome).AsInteger := fDMCadNotaFiscal.cdsFilial.FieldByName('ID_'+Auxiliar+Nome).AsInteger;
    if trim(Auxiliar) = '' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName('PERC_'+Nome).AsFloat := fDMCadNotaFiscal.cdsFilial.FieldByName('PERC_'+Nome).AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName('TIPO_'+Nome).AsString := fDMCadNotaFiscal.cdsFilial.FieldByName('TIPO_'+Nome).AsString;
    end;
  end;
end;

procedure TfrmCadNotaEntrada_Itens.prc_Move_Dados_Itens;
begin
  if not fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]) then
    exit;
  if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);

  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat := 0
  else
  if fDMCadNotaFiscal.cdsCFOPGERAR_ICMS.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat := fDMCadNotaFiscal.cdsUFPERC_ICMS.AsFloat;

  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert]) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> vID_Produto_Ant) then
  begin
    prc_Buscar_Imposto('CST','ICMS');
    prc_Buscar_Imposto('CST','IPI');
    if fDMCadNotaFiscal.cdsCFOPGERAR_IPI.AsString = 'S' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat := fDMCadNotaFiscal.cdsProdutoPERC_IPI.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsProdutoPRECO_CUSTO.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
    if fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString   := fDMCadNotaFiscal.cdsProdutoORIGEM_PROD.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCOFINS.AsString     := fDMCadNotaFiscal.cdsTab_CofinsCODIGO.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCODPIS.AsString        := fDMCadNotaFiscal.cdsTab_PisCODIGO.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.AsString       := fDMCadNotaFiscal.cdsTab_CSTICMSCOD_CST.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_IPI.AsString       := fDMCadNotaFiscal.cdsTab_CSTIPICOD_IPI.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := fDMCadNotaFiscal.cdsCFOPGERAR_ESTOQUE.AsString;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString     := fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO.AsString := 'S';

  //Tamanho
  btnGrade.Visible    := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert]));
  lblTamanho.Visible  := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit]));
  dblcTamanho.Visible := ((fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit]));
  DBEdit2.ReadOnly := ((fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S')) ;
  if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
  //************
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert]) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <> vID_Produto_Ant) then
  begin
    if fDMCadNotaFiscal.cdsProdutoID_CONTA_ORCAMENTO.AsInteger > 0 then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID.AsInteger := fDMCadNotaFiscal.cdsProdutoID_CONTA_ORCAMENTO.AsInteger;
  end;
end;

procedure TfrmCadNotaEntrada_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadNotaEntrada_Itens.prc_Calcular_VlrItens;
var
  vAux: Real;
  vDesconto: Real;
begin
  vAux := 0;
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat > 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
  vDesconto := 0;
  if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat)) > 0) then
    vDesconto := StrToFloat(FormatFloat('0.00',vAux * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat / 100))
  else
  if (StrToFloat(FormatFloat('0.00',vAux)) > 0) and (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0) then
    vDesconto := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat / 100));
  vAux := StrToFloat(FormatFloat('0.00',vAux - vDesconto));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadNotaEntrada_Itens.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadNotaEntrada_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    if fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString = 'N' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';

    if fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]) then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString := fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString;

    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'I';

    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    //08/07/2014  Quantidade por pacote
    if fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString = fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat := StrToFloat(FormatFloat('0',0));
    //************

    if (pnlCombinacao.Visible) and (RxDBLookupCombo14.Text <> '') then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_COR_COMBINACAO.AsString := RxDBLookupCombo14.Text;

    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString    := fDMCadNotaFiscal.cdsProdutoNOME.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString      := fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString;

    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := fDMCadNotaFiscal.cdsCFOPGERAR_DUPLICATA.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat      := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDDEVOLVIDA.AsFloat     := 0;

    prc_Calculo_GeralItem(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                           fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat,
                                           fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString);
    if fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger > 0 then
    begin
      fDMCadNotaFiscal.cdsTab_NCM.Locate('ID',fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger,[loCaseInsensitive]);
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNCM.AsString := fDMCadNotaFiscal.cdsTab_NCMNCM.AsString;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;

    //Tamanho aqui
    //if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) = '') then
    if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') then
    begin
      //if not Assigned(fDMInformar_Tam) then
      //  fDMInformar_Tam := TDMInformar_Tam.Create(Self);
      if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit]) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) then
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' TAM. ' + fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString
      else
      begin
        prc_Gravar_mItens;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + ' TAM. ' + fDMInformar_Tam.vTamanho_Ini;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString      := fDMInformar_Tam.vTamanho_Ini;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat           := fDMInformar_Tam.vQtd_Ini;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMInformar_Tam.vQtd_Ini;
      end;
    end;
    //*****
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
    //Tamanho aqui
    if (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger <= 0) then
      prc_Gravar_Tam;
    fDMCadNotaFiscal.cdsNotaFiscalQTDTOTAL_ITENS.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount;
    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vFlagErro    := True;
      vGravacao_Ok := False;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  fDMCadNotaFiscal.vState_Item := '';
  if not vFlagErro then
    Close;
end;

function TfrmCadNotaEntrada_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
  sds: TSQLDataSet;
  vQtdAux : Real;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  vMsgErro := '';
  if (fDMCadNotaFiscal.qParametros_OCPERMITIR_ENT_MAIOR.AsString <> 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0)
    and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger > 0) then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT I.qtd_restante, I.qtd_liberada, '
                         + ' (select ni.qtd from notafiscal_itens ni '
                         + '   where ni.id_pedido = :ID  and ni.item_pedido = :ITEM   and ni.id = :ID_NOTA and ni.item = :item_nota ) qtd_nota '
                         + ' FROM PEDIDO_ITEM I '
                         + ' WHERE I.ID = :ID '
                         + ' AND I.ITEM = :ITEM ';
      sds.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
      sds.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
      sds.ParamByName('ID_NOTA').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
      sds.ParamByName('ITEM_NOTA').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
      sds.Open;
      if fDMCadNotaFiscal.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
        vQtdAux := StrToFloat(FormatFloat('0.0000',sds.FieldByName('qtd_liberada').AsFloat))
      else
        vQtdAux := StrToFloat(FormatFloat('0.0000',sds.FieldByName('qtd_restante').AsFloat));
      vQtdAux := vQtdAux + StrToFloat(FormatFloat('0.0000',sds.FieldByName('qtd_Nota').AsFloat));
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) > StrToFloat(FormatFloat('0.0000',vQtdAux)) then
        vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a quantidade da OC!';
    finally
      FreeAndNil(sds);
    end;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** CFOP não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** NCM (Classificação Fiscal) não informada!';
  if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  //28/11/2017
  if (fDMCadNotaFiscal.qParametros_NTEMOSTRAR_FINALIDADE.AsString = 'S') and ((fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'C') and
     (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'R') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'I') and
     (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'O')) then
    vMsgErro := vMsgErro + #13 + '*** Finalidade da compra não foi informada!';
  //Aqui tamanho
  if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) = '') and (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and
     (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit])then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadNotaEntrada_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadNotaFiscal.vState_Item := '';
  Close;
end;

procedure TfrmCadNotaEntrada_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadNotaEntrada_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsProduto.Close;
  fDMCadNotaFiscal.cdsProduto.Open;
end;

procedure TfrmCadNotaEntrada_Itens.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadCFOP := TfrmCadCFOP.Create(self);
  ffrmCadCFOP.ShowModal;

  FreeAndNil(ffrmCadCFOP);

  SpeedButton5Click(Sender);
end;

procedure TfrmCadNotaEntrada_Itens.SpeedButton5Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCFOP.Close;
  fDMCadNotaFiscal.cdsCFOP.Open;
end;

procedure TfrmCadNotaEntrada_Itens.Panel1Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCFOP.IndexFieldNames := 'CODCFOP';
  vID_Produto_Ant := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
end;

procedure TfrmCadNotaEntrada_Itens.DBEdit7Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadNotaEntrada_Itens.DBEdit8Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadNotaEntrada_Itens.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := fDMCadNotaFiscal.cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD.AsString;
    frmSel_Produto.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger > 0 then
      RxDBLookupCombo4.SetFocus;
  end;
end;

procedure TfrmCadNotaEntrada_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'REFERENCIA';                    
end;

procedure TfrmCadNotaEntrada_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'NOME';                    
end;

procedure TfrmCadNotaEntrada_Itens.FormCreate(Sender: TObject);
begin
  vGravacao_Ok       := False;
  vPedidoSelecionado := False;
end;

procedure TfrmCadNotaEntrada_Itens.btnGradeClick(Sender: TObject);
begin
  ffrmInformar_Tam := TfrmInformar_Tam.Create(self);
  ffrmInformar_Tam.fDMInformar_Tam := fDMInformar_Tam;
  ffrmInformar_Tam.fDMInformar_Tam.prc_Le_Produto_Tam(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger);
  ffrmInformar_Tam.ShowModal;
  if fDMInformar_Tam.vGravar = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat := fDMInformar_Tam.vQtd_Grade;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadNotaEntrada_Itens.prc_Gravar_mItens;
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
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'QTD_DESC_ESTOQUE')  and  (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'QTD_LANCAR_ESTOQUE') and

       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'QTD_DESC_ESTOQUE')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'QTD_LANCAR_ESTOQUE') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_FCP')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_UF_DEST') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_PARTILHA')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ICMS_FCP') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_DEST')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_REMET') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'GRAVOU_TAB_TAMANHO') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_Tam') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'ID_MOVESTOQUE_PED') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ICMS_DESON') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_PIS_COFINS_SUFRAMA') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_DESC_SUFRAMA') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_DESC_SUFRAMA')  and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_AFRMM') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PERC_ISSQN')        and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_ISSQN') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'PRECO_CUSTO_TOTAL') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'VLR_AJUSTE_CUSTO') and
       (fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_Copia') then
      fDMInformar_Tam.mItens.FieldByName(fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].FieldName).AsVariant := fDMCadNotaFiscal.cdsNotaFiscal_Itens.Fields[x].Value;
  end;
  fDMInformar_Tam.mItensNome_Produto_Original.AsString := fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
  fDMInformar_Tam.mItens.Post;
end;

procedure TfrmCadNotaEntrada_Itens.prc_Gravar_Tam;
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
      fDMCadNotaFiscal.prc_Inserir_Itens;
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
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PRECO_CUSTO')   and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_MARGEM') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_MARGEM2')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'OBS_ETIQUETA') then
            fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName(fDMInformar_Tam.mItens.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mItens.Fields[x].Value;
        except
        end;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMInformar_Tam.mItensNome_Produto_Original.AsString + ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString      := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat           := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
    end;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

procedure TfrmCadNotaEntrada_Itens.DBEdit9KeyDown(Sender: TObject;
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
      Label19.Visible  := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
      DBEdit10.Visible := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
    end;
  end;
end;

procedure TfrmCadNotaEntrada_Itens.prc_Abrir_Combinacao;
begin
  fDMCadNotaFiscal.cdsCombinacao.Close;
  fDMCadNotaFiscal.sdsCombinacao.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
  fDMCadNotaFiscal.cdsCombinacao.Open;
end;

procedure TfrmCadNotaEntrada_Itens.Panel1Exit(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadNotaFiscal.cdsParametrosINFORMAR_COR_PROD.AsString = 'B') then
    prc_Abrir_Combinacao;
end;

end.
