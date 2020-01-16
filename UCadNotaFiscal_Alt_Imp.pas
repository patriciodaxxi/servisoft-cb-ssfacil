unit UCadNotaFiscal_Alt_Imp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal, RzPanel,
  StdCtrls, Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, RzTabs, Grids, DBGrids, SMDBGrid, UCadNotaFiscal_Itens_Imp;

type
  TfrmCadNotaFiscal_Alt_Imp = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    SMDBGrid2: TSMDBGrid;
    GroupBox1: TGroupBox;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label33: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    DBEdit14: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    Label25: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label38: TLabel;
    Label41: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit31: TDBEdit;
    Label2: TLabel;
    DBEdit17: TDBEdit;
    Label1: TLabel;
    DBEdit15: TDBEdit;
    Label3: TLabel;
    DBEdit18: TDBEdit;
    Label4: TLabel;
    DBEdit19: TDBEdit;
    Label7: TLabel;
    DBEdit22: TDBEdit;
    Label12: TLabel;
    DBEdit26: TDBEdit;
    Label13: TLabel;
    DBEdit27: TDBEdit;
    Label46: TLabel;
    Label14: TLabel;
    Label49: TLabel;
    DBEdit28: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label40: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label42: TLabel;
    DBEdit36: TDBEdit;
    Label43: TLabel;
    DBEdit37: TDBEdit;
    Label44: TLabel;
    DBEdit38: TDBEdit;
    Label45: TLabel;
    DBEdit39: TDBEdit;
    Label15: TLabel;
    DBEdit29: TDBEdit;
    Label52: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    gbxVendedor: TRzGroupBox;
    Label10: TLabel;
    DBEdit25: TDBEdit;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    Label36: TLabel;
    DBEdit33: TDBEdit;
    Label11: TLabel;
    DBEdit24: TDBEdit;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    Label37: TLabel;
    DBEdit34: TDBEdit;
    Label39: TLabel;
    DBEdit35: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label59: TLabel;
    DBEdit46: TDBEdit;
    TabSheet2: TRzTabSheet;
    Panel4: TPanel;
    SMDBGrid3: TSMDBGrid;
    Label61: TLabel;
    DBEdit48: TDBEdit;
    Label62: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label63: TLabel;
    DBEdit49: TDBEdit;
    Label60: TLabel;
    DBEdit47: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    RzGroupBox3: TRzGroupBox;
    Label53: TLabel;
    DBEdit40: TDBEdit;
    Label56: TLabel;
    DBEdit43: TDBEdit;
    Label65: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label64: TLabel;
    DBEdit50: TDBEdit;
    RzGroupBox4: TRzGroupBox;
    Label66: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit56: TDBEdit;
    Label72: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Label73: TLabel;
    Label74: TLabel;
    DBEdit59: TDBEdit;
    Label75: TLabel;
    DBEdit60: TDBEdit;
    Label76: TLabel;
    DBEdit61: TDBEdit;
    Label77: TLabel;
    DBEdit62: TDBEdit;
    RzGroupBox5: TRzGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    Label81: TLabel;
    DBEdit66: TDBEdit;
    Label82: TLabel;
    DBEdit67: TDBEdit;
    Label83: TLabel;
    DBEdit68: TDBEdit;
    Label84: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RzGroupBox6: TRzGroupBox;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    Label87: TLabel;
    DBEdit71: TDBEdit;
    Label88: TLabel;
    DBEdit72: TDBEdit;
    Label89: TLabel;
    Label90: TLabel;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit27KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadNotaFiscal_Itens_Imp: TfrmCadNotaFiscal_Itens_Imp;
    vBase_ICMS_Ant, vIcms_Ant, vFrete_Ant, vIPI_Ant, vBase_IPI_Ant, vIPI_Devol_Ant, vDesconto_Ant, vOutras_Desp_Ant: Real;
    vCofins_Ant, vSeguro_Ant, vPis_Ant, vTaxa_Siscomex_Ant, vImportacao_Ant, vOutros_Valores_Ant: Real;
    vAduaneira_Ant, vVlrSiscomex_Ant: Real;
    vBase_ICMS_ST_Ant, vVlr_ICMS_ST_Ant: Real;
    vBase_ST_Ret_Ant , vVlr_ST_Ret_Ant, vBase_Efet_Ant, vVlr_ICMS_Efet_Ant : Real;
    vBase_Pis_Ant, vBase_Cofins_Ant : Real;

    vVlr_Tributos: Real;
    vVlr_Nota: Real;
    vVlr_ICMS_FCP, vVlr_ICMS_UF_Dest, vVlr_ICMS_UF_Remet: Real;
    vBase_ICMS_FCP : Real;
    vVlr_ICMSSimples, vBase_ICMSSimples : Real;
    vVlr_Duplicata_Ant: Real;
    vVlr_Outros_Ant : Real;
    vVlr_AFRMM : Real;
    vVlr_FCP_ST, vBase_FCP_ST : Real;
    vVlr_FCP_Dest, vBase_FCP_Dest : Real;

    function  fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
  end;

var
  frmCadNotaFiscal_Alt_Imp: TfrmCadNotaFiscal_Alt_Imp;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil, USel_EnqIPI;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Alt_Imp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    //fDMCadNotaFiscal.cdsNotaFiscal_Itens.CancelUpdates;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Alt_Imp.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  BitBtn1.Enabled := fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert];
  Panel2.Enabled  := fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert];
  Panel1.Enabled  := fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert];

  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;

  vBase_ICMS_Ant    := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat;
  vIcms_Ant         := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat;
  vFrete_Ant        := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat;
  vIPI_Ant          := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat;
  //21/11/2018
  vBase_IPI_Ant     := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_IPI.AsFloat;
  vIPI_Devol_Ant    := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI_DEVOL.AsFloat;
  vDesconto_Ant     := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat;
  vOutras_Desp_Ant  := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat - StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI_DEVOL.AsFloat));
  vCofins_Ant       := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat;
  vSeguro_Ant       := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat;
  vPis_Ant          := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat;

  //16/01/2020
  vBase_Cofins_Ant  := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_COFINS.AsFloat));
  vBase_Pis_Ant     := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_PIS.AsFloat));
  //*******************

  vImportacao_Ant   := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat;
  vAduaneira_Ant    := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
  vVlrSiscomex_Ant  := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat;
  vBase_ICMS_ST_Ant := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat;
  vVlr_ICMS_ST_Ant  := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
  vVlr_Tributos     := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat;
  vVlr_Nota         := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;
  vVlr_Duplicata_Ant := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat;
  vVlr_Outros_Ant    := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat;
  vVlr_AFRMM         := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat;

  vVlr_ICMS_FCP      := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat;
  vBase_ICMS_FCP     := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat;

  vVlr_ICMS_UF_Dest  := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat;
  vVlr_ICMS_UF_Remet := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat;

  vVlr_FCP_ST        := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FCP_ST.AsFloat;
  vBase_FCP_ST       := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_FCP_ST.AsFloat;

  vVlr_FCP_Dest      := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat;
  vBase_FCP_Dest     := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat;

  //21/11/2019
  vVlr_ICMSSimples   := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat;
  vBase_ICMSSimples  := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat;
  //*******************

  //26/02/2019
  vBase_ST_Ret_Ant   := fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_RET.AsFloat;
  vVlr_ST_Ret_Ant    := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_RET.AsFloat;
  vBase_Efet_Ant     := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_EFET.AsFloat;
  vVlr_ICMS_Efet_Ant := fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_EFET.AsFloat;
  //************
                                                       
  fDMCadNotaFiscal.prc_Abrir_Desoneracao(fDMCadNotaFiscal.cdsNotaFiscal_ItensCOD_CST.AsString);

  Label46.Visible  := (fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString = 'S');
  Label14.Visible  := (fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString = 'S');
  DBEdit28.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString = 'S');
  RxDBLookupCombo3.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_DESONERACAO.AsString = 'S');

  Label42.Visible  := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');
  DBEdit36.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_PEDIDO_FUT.AsString = 'S');

  Label15.Visible  := (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S');
  DBEdit29.Visible := (fDMCadNotaFiscal.cdsParametrosUSA_LOTE_CONTROLE.AsString = 'S');
end;

procedure TfrmCadNotaFiscal_Alt_Imp.BitBtn1Click(Sender: TObject);
var
  vOutrasDespesasAux: Real;
begin
  //vGravacao_Ok := False;
  //if fnc_Erro then
  //  exit;

  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat        := (fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat - vBase_ICMS_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat         := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat - vIcms_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat        := (fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat - vFrete_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FRETE.AsFloat;
  //21/11/2018
  fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsFloat         := (fDMCadNotaFiscal.cdsNotaFiscalBASE_IPI.AsFloat - vBase_IPI_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_IPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat          := (fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat - vIPI_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI_DEVOL.AsFloat    := (fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI_DEVOL.AsFloat - vIPI_Devol_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI_DEVOL.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat     := (fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat - vDesconto_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat   := (fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat - vOutras_Desp_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat       := (fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat - vCofins_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_COFINS.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat       := (fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat - vSeguro_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat          := (fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat - vPis_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_PIS.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalBASE_COFINS.AsFloat      := (fDMCadNotaFiscal.cdsNotaFiscalBASE_COFINS.AsFloat - vBase_Cofins_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_COFINS.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalBASE_PIS.AsFloat         := (fDMCadNotaFiscal.cdsNotaFiscalBASE_PIS.AsFloat - vBase_Pis_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_PIS.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat   := (fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat - vImportacao_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat    := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat - vAduaneira_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat := (fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat - vVlrSiscomex_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TAXACISCOMEX.AsFloat;
  
  fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat       := (fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat - vVlr_Outros_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_OUTROS.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat   := (fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST.AsFloat - vBase_ICMS_ST_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat    := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat - vVlr_ICMS_ST_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat     := (fDMCadNotaFiscal.cdsNotaFiscalVLR_TRIBUTOS.AsFloat - vVlr_Tributos) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TRIBUTOS.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat         := (fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat - vVlr_Nota) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat    := (fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat - vVlr_Duplicata_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_AFRMM.AsFloat        := (fDMCadNotaFiscal.cdsNotaFiscalVLR_AFRMM.AsFloat - vVlr_AFRMM) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_AFRMM.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat      := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP.AsFloat - vVlr_ICMS_FCP) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat     := (fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP.AsFloat - vBase_ICMS_FCP) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat  := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_DEST.AsFloat - vVlr_ICMS_UF_Dest) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_UF_REMET.AsFloat - vVlr_ICMS_UF_Remet) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_FCP_ST.AsFloat        := (fDMCadNotaFiscal.cdsNotaFiscalVLR_FCP_ST.AsFloat - vVlr_FCP_ST) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_FCP_ST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalBASE_FCP_ST.AsFloat       := (fDMCadNotaFiscal.cdsNotaFiscalBASE_FCP_ST.AsFloat - vBase_FCP_ST) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_FCP_ST.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat  := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat - vVlr_FCP_Dest) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat := (fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat - vBase_FCP_Dest) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat;

  //21/11/2019
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat  := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat - vVlr_ICMSSimples) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat := (fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat - vBase_ICMSSimples) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat;
  //***************

  vOutrasDespesasAux := fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat
                      + fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat;

  fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat := vOutrasDespesasAux;

  //26/02/2019
  fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_RET.AsFloat := (fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSUBST_RET.AsFloat - vBase_ST_Ret_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensBASE_ICMSSUBST_RET.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_RET.AsFloat := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST_RET.AsFloat - vVlr_ST_Ret_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMSSUBST_RET.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_EFET.AsFloat     := (fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_EFET.AsFloat - vBase_Efet_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_BASE_EFET.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_EFET.AsFloat     := (fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS_EFET.AsFloat - vVlr_ICMS_Efet_Ant) + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_EFET.AsFloat;
  //*************************

  try
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

    Close;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

end;

function TfrmCadNotaFiscal_Alt_Imp.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** CFOP não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') and (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') and (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger <= 0) or (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.IsNull) then
    vMsgErro := vMsgErro + #13 + '*** NCM não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensORIGEM_PROD.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Origem do produto não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger <= 0 then
  if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTICMS.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** CST ICMS não informada!';
  if (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CSTIPI.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** CST IPI não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadNotaFiscal_Alt_Imp.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_Alt_Imp.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender);
end;

procedure TfrmCadNotaFiscal_Alt_Imp.BitBtn3Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Imp.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_Imp.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpID.AsInteger       := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger := vItemAux;

  ffrmCadNotaFiscal_Itens_Imp := TfrmCadNotaFiscal_Itens_Imp.Create(self);
  ffrmCadNotaFiscal_Itens_Imp.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Itens_Imp.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Itens_Imp);
end;

procedure TfrmCadNotaFiscal_Alt_Imp.BitBtn5Click(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp.IsEmpty then
    exit;
     
  fDMCadNotaFiscal.cdsNotaFiscal_Imp.Edit;

  ffrmCadNotaFiscal_Itens_Imp := TfrmCadNotaFiscal_Itens_Imp.Create(self);
  ffrmCadNotaFiscal_Itens_Imp.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Itens_Imp.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Itens_Imp);
end;

procedure TfrmCadNotaFiscal_Alt_Imp.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir os dados da importação?',mtWarning,[mbOK,mbNO],0) = mrNO then
    exit;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Eof do
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Delete;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp.Delete;
end;

procedure TfrmCadNotaFiscal_Alt_Imp.DBEdit27KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    DBEdit27.ReadOnly := not(DBEdit27.ReadOnly);
end;

procedure TfrmCadNotaFiscal_Alt_Imp.RxDBLookupCombo2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo2.Text <> '' then
      viD_EnqIPI_Pos := RxDBLookupCombo2.KeyValue;
    frmSel_EnqIPI := TfrmSel_EnqIPI.Create(Self);
    frmSel_EnqIPI.ShowModal;
    if viD_EnqIPI_Pos > 0 then
      RxDBLookupCombo2.KeyValue := viD_EnqIPI_Pos
    else
      RxDBLookupCombo2.ClearValue;
  end;
end;

end.
