unit UCadPedido_TipoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxCollection, UDMCadPedido, Grids, Mask,
  DBCtrls, RzTabs,  ToolEdit, DB, ExtCtrls, Buttons, RxLookup, RzPanel;

type
  TfrmCadPedido_TipoItem = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Chapas: TRzTabSheet;
    TS_Redondos: TRzTabSheet;
    TS_Tubos: TRzTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    TS_Porta: TRzTabSheet;
    TS_Vidro: TRzTabSheet;
    Label28: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label29: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label30: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label31: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label35: TLabel;
    DBEdit31: TDBEdit;
    Label36: TLabel;
    DBEdit32: TDBEdit;
    Label37: TLabel;
    DBEdit33: TDBEdit;
    Label38: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label39: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label40: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label43: TLabel;
    DBEdit36: TDBEdit;
    Label44: TLabel;
    DBEdit37: TDBEdit;
    Label45: TLabel;
    DBEdit38: TDBEdit;
    Label46: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    Label47: TLabel;
    BitBtn4: TBitBtn;
    Label48: TLabel;
    DBEdit41: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label49: TLabel;
    DBEdit42: TDBEdit;
    Label50: TLabel;
    DBEdit43: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label41: TLabel;
    DBEdit34: TDBEdit;
    Label42: TLabel;
    DBEdit35: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo7Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit40KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit40Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
  private
    { Private declarations }
    vItemMat: Integer;
    vVlr_Acabamento: Real;
    vVlr_RedondoMod: Real;
    vVlr_CMoeda: Real;
    vVlr_Furos: Real;
    vVlr_QtdFuros: Real;
    vVlr_Perfil: Real;
    vVlr_Vidro: Real;
    vVlr_Furacao: Real;
    vVlr_Calculado: Real;
    vID_Chapa_Ant : Integer;

    procedure prc_Calcular_Peso_PC_Chapa;
    procedure prc_Calcular_Peso_PC_Redondo;
    procedure prc_Calcular_Peso_PC_Tubo;
    procedure prc_Calcular_Parede;

    procedure prc_Calcular_Vlr;
    procedure prc_Gravar_Chapa(Tipo : String); //P=Preco  I=Inserir

    procedure prc_Calcular_Vlr_Porta;
    function fnc_Preco_Matriz(ID_Produto, ID_Matriz: Integer ; Tipo_Preco: String ; Valor: Real): Real;
    procedure prc_Calcular_Medida_Corte;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vVlr_Produto: Real;

  end;

var
  frmCadPedido_TipoItem: TfrmCadPedido_TipoItem;

implementation

uses uUtilPadrao, rsDBUtils, UDMUtil, UConsHist_Chapa,
  UDMCadMatriz_Preco;

{$R *.dfm}

procedure TfrmCadPedido_TipoItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_TipoItem.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  Tag := 1;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    if ((TS_Vidro.Visible) or (TS_Porta.Visible)) and (fDMCadPedido.cdsPedido_Item_Tipo.State in [dsInsert]) then
      fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := vVlr_Produto;
  end;
  Label48.Visible  := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'S2');
  DBEdit41.Visible := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'S2');
  DBEdit6.ReadOnly := ((fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString <> 'S2') or (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.IsNull));
end;

procedure TfrmCadPedido_TipoItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadPedido_TipoItem.prc_Calcular_Peso_PC_Chapa;
var
  vAux: Real;
begin
  if not(TS_Chapas.TabVisible) and (Tag <> 1) then
    exit;
  //Alterada a fórmula de cálculo conforme Adriano no dia 28/10/2014  
  //vAux := fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat
  //      * fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat * 8;
  vAux := (fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat + 10) * (fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat + 10)
        * fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat * 8;
  if StrToFloat(FormatFloat('0.0000000',vAux)) > 0 then
    vAux := StrToFloat(FormatFloat('0.0000000',vAux / 1000000));
  fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat := StrToFloat(FormatFloat('0.0000000',vAux));
  if (StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_Item_TipoFATOR_CALCULO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)) > 0) then
    fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat := StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat +((fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoFATOR_CALCULO.AsFloat) / 100)));
  if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)) > 0 then
    fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
end;

procedure TfrmCadPedido_TipoItem.prc_Calcular_Vlr;
begin
  if Tag <> 1 then
    exit;
  if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)) > 0 then
    fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_DOBRA.AsFloat + (fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat)));

  //fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat + fDMCadPedido.cdsPedido_Item_TipoVLR_DOBRA.AsFloat));
  fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat));
end;

procedure TfrmCadPedido_TipoItem.prc_Calcular_Peso_PC_Redondo;
var
  vAux: Real;
begin
  if not (TS_Redondos.TabVisible) and (Tag <> 1) then
    exit;
  vAux := fDMCadPedido.cdsPedido_Item_TipoDIAMETRO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoDIAMETRO.AsFloat * StrToFloat(FormatFloat('0.000000',0.006165));
  if StrToFloat(FormatFloat('0.0000000',vAux)) > 0 then
    vAux := StrToFloat(FormatFloat('0.0000000',vAux / 1000 * (fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat + 10)));
  fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat := StrToFloat(FormatFloat('0.0000000',vAux));
  if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)) > 0 then
    fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
end;

procedure TfrmCadPedido_TipoItem.prc_Calcular_Parede;
var
  vAux: Real;
begin
 if (Tag <> 1) then
   exit;

  vAux := fDMCadPedido.cdsPedido_Item_TipoDIAMETRO_EXT.AsFloat - fDMCadPedido.cdsPedido_Item_TipoDIAMETRO_INT.AsFloat;
  if StrToFloat(FormatFloat('0.0000000',vAux)) > 0 then
    vAux := StrToFloat(FormatFloat('0.00',vAux / 2));
  fDMCadPedido.cdsPedido_Item_TipoPAREDE.AsFloat := StrToFloat(FormatFloat('0.00',vAux)); 
end;

procedure TfrmCadPedido_TipoItem.prc_Calcular_Peso_PC_Tubo;
var
  vAux: Real;
begin
  if (not TS_Tubos.TabVisible) and (Tag <> 1) then
    exit;
  vAux := (fDMCadPedido.cdsPedido_Item_TipoDIAMETRO_EXT.AsFloat - fDMCadPedido.cdsPedido_Item_TipoPAREDE.AsFloat)
        * fDMCadPedido.cdsPedido_Item_TipoPAREDE.AsFloat * StrToFloat(FormatFloat('0.00000',0.02466));
  if StrToFloat(FormatFloat('0.0000000',vAux)) > 0 then
    vAux := StrToFloat(FormatFloat('0.0000000',vAux / 1000 * (fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsFloat + 10)));
  fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat := StrToFloat(FormatFloat('0.0000000',vAux));
  if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)) > 0 then
    fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
end;

procedure TfrmCadPedido_TipoItem.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedido_TipoItem.BitBtn1Click(Sender: TObject);
var
  vMsgAux: String;
begin
  vMsgAux := '';
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat)) <= 0 then
    vMsgAux := '*** Quantidade não foi informada!';
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString <> 'S' then
  begin
    if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)) <= 0 then
      vMsgAux := '*** Peso não foi informado!';
    if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat)) <= 0 then
      vMsgAux := '*** Preço do KG não foi informado!';
  end;
  if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat)) <= 0 then
    vMsgAux := '*** Valor unitário não foi informado!';
  if StrToFloat(FormatFloat('0.0000000',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat)) <= 0 then
    vMsgAux := '*** Valor total não calculado!';
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;
  if TS_Chapas.TabVisible then
    fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString := 'C'
  else
  if TS_Redondos.TabVisible then
    fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString := 'R'
  else
  if TS_Tubos.TabVisible then
    fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString := 'T'
  else
  if TS_Porta.TabVisible then
    fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString := 'P'
  else
  if TS_Vidro.TabVisible then
    fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString := 'V';
  fDMCadPedido.cdsPedido_ItensTIPO_ORCAMENTO.AsString := fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString;
  if (fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'C') and (fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger > 0) then
  begin
    if (fDMCadPedido.cdsChapa.Locate('NOME',fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString,[loCaseInsensitive])) and
       (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsChapaVLR_UNITARIO.AsFloat)) <= 0) then
      prc_Gravar_Chapa('P');
  end;
  fDMCadPedido.cdsPedido_Item_Tipo.Post;
  Close;
end;

procedure TfrmCadPedido_TipoItem.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_Peso_PC_Chapa;
end;

procedure TfrmCadPedido_TipoItem.DBEdit12Exit(Sender: TObject);
begin
  prc_Calcular_Peso_PC_Redondo;
end;

procedure TfrmCadPedido_TipoItem.DBEdit11Exit(Sender: TObject);
begin
  prc_Calcular_Peso_PC_Redondo;
end;

procedure TfrmCadPedido_TipoItem.DBEdit14Exit(Sender: TObject);
begin
  prc_Calcular_Peso_PC_Redondo;
end;

procedure TfrmCadPedido_TipoItem.DBEdit20Exit(Sender: TObject);
begin
  prc_Calcular_Parede;
end;

procedure TfrmCadPedido_TipoItem.DBEdit19Exit(Sender: TObject);
begin
  prc_Calcular_Parede;
end;

procedure TfrmCadPedido_TipoItem.DBEdit27Exit(Sender: TObject);
begin
  prc_Calcular_Peso_PC_Tubo;
end;

procedure TfrmCadPedido_TipoItem.DBEdit21Exit(Sender: TObject);
begin
  prc_Calcular_Peso_PC_Tubo;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo1Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.prc_Calcular_Vlr_Porta;
var
  vAux: Real;
  vCalcula_2_Lados: String;
  vVlr_Calculado_Aux: Real;
begin
  vVlr_Calculado  := vVlr_Produto;
  vVlr_Acabamento := 0;
  if trim(RxDBLookupCombo1.Text) <> '' then
  begin
    if (RxDBLookupCombo1.KeyValue <> fDMCadPedido.cdsAcabamentoID.AsInteger) then
      fDMCadPedido.cdsAcabamento.Locate('ID',fDMCadPedido.cdsPedido_Item_TipoID_ACABAMENTO.AsInteger,[loCaseInsensitive]);
    vVlr_Acabamento := fnc_Preco_Matriz(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger, fDMCadPedido.cdsAcabamentoID.AsInteger,fDMCadPedido.cdsAcabamentoTIPO_PRECO.AsString,fDMCadPedido.cdsAcabamentoVLR_UNITARIO.AsFloat);
    if fDMCadPedido.cdsAcabamentoTIPO_VP.AsString <> 'P' then
    begin
      vVlr_Calculado  := vVlr_Calculado + vVlr_Acabamento;
      vVlr_Acabamento := 0;
    end;
  end;
  vVlr_RedondoMod := 0;
  if trim(RxDBLookupCombo2.Text) <> '' then
  begin
    if (RxDBLookupCombo2.KeyValue <> fDMCadPedido.cdsRedondoModID.AsInteger) then
      fDMCadPedido.cdsRedondoMod.Locate('ID',fDMCadPedido.cdsPedido_Item_TipoID_REDONDO_MOD.AsInteger,[loCaseInsensitive]);
    vVlr_RedondoMod := fnc_Preco_Matriz(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger, fDMCadPedido.cdsRedondoModID.AsInteger,fDMCadPedido.cdsRedondoModTIPO_PRECO.AsString,fDMCadPedido.cdsRedondoModVLR_UNITARIO.AsFloat);
    if fDMCadPedido.cdsRedondoModTIPO_VP.AsString <> 'P' then
    begin
      vVlr_Calculado  := vVlr_Calculado + vVlr_RedondoMod;
      vVlr_RedondoMod := 0;
    end;
  end;
  vVlr_CMoeda := 0;
  if trim(RxDBLookupCombo3.Text) <> '' then
  begin
    if (RxDBLookupCombo3.KeyValue <> fDMCadPedido.cdsCMoedaID.AsInteger) then
      fDMCadPedido.cdsCMoeda.Locate('ID',fDMCadPedido.cdsPedido_Item_TipoID_CMOEDA.AsInteger,[loCaseInsensitive]);
    vVlr_CMoeda := fnc_Preco_Matriz(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger, fDMCadPedido.cdsCMoedaID.AsInteger,fDMCadPedido.cdsCMoedaTIPO_PRECO.AsString,fDMCadPedido.cdsCMoedaVLR_UNITARIO.AsFloat);
    if fDMCadPedido.cdsCMoedaTIPO_VP.AsString <> 'P' then
    begin
      //Valor da moeda é aplicado somente no valor final  11/02/2015
      //vVlr_Calculado := vVlr_Calculado + vVlr_CMoeda;
      //vVlr_CMoeda    := 0;
    end;
  end;
  vVlr_Furos := 0;
  if trim(RxDBLookupCombo4.Text) <> '' then
  begin
    if (RxDBLookupCombo4.KeyValue <> fDMCadPedido.cdsFurosID.AsInteger) then
      fDMCadPedido.cdsFuros.Locate('ID',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]);
    vVlr_Furos := fnc_Preco_Matriz(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger, fDMCadPedido.cdsFurosID.AsInteger,fDMCadPedido.cdsFurosTIPO_PRECO.AsString,fDMCadPedido.cdsFurosVLR_UNITARIO.AsFloat);
    //Valor dos furos é aplicado somente no valor fina  11/02/2015
    //if fDMCadPedido.cdsPedido_Item_TipoQTD_FUROS.AsInteger > 0 then
    //  vVlr_Furos := vVlr_Furos * fDMCadPedido.cdsPedido_Item_TipoQTD_FUROS.AsInteger;
    //vVlr_Calculado := vVlr_Calculado + vVlr_Furos;
    //vVlr_Furos     := 0;
  end;

  vVlr_Perfil      := 0;
  vCalcula_2_Lados := 'N';
  if trim(RxDBLookupCombo5.Text) <> '' then
  begin
    if (RxDBLookupCombo5.KeyValue <> fDMCadPedido.cdsPerfilID.AsInteger) then
      fDMCadPedido.cdsPerfil.Locate('ID',RxDBLookupCombo5.KeyValue,[loCaseInsensitive]);
    vVlr_Perfil := fDMCadPedido.cdsPerfilPRECO_VENDA.AsFloat;
    vCalcula_2_Lados := fDMCadPedido.cdsPerfilCALCULAR_2_LADOS.AsString;
    vVlr_Calculado   := vVlr_Calculado + vVlr_Perfil;
  end;
  vVlr_Vidro := 0;
  if trim(RxDBLookupCombo6.Text) <> '' then
  begin
    if (RxDBLookupCombo6.KeyValue <> fDMCadPedido.cdsVidroID.AsInteger) then
      fDMCadPedido.cdsVidro.Locate('ID',RxDBLookupCombo6.KeyValue,[loCaseInsensitive]);
    vVlr_Vidro := fDMCadPedido.cdsVidroPRECO_VENDA.AsFloat;
    if (RzPageControl1.ActivePage = TS_Porta) and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsVidroPERC_VIDRO.AsFloat)) > 0) then
      vVlr_Vidro := StrToFloat(FormatFloat('0.00',vVlr_Vidro + (vVlr_Vidro * fDMCadPedido.cdsVidroPERC_VIDRO.AsFloat / 100)));
    vVlr_Calculado := vVlr_Calculado + vVlr_Vidro;
  end;
  vVlr_Furacao := 0;
  if trim(RxDBLookupCombo7.Text) <> '' then
  begin
    if (RxDBLookupCombo7.KeyValue <> fDMCadPedido.cdsFuracaoID.AsInteger) then
      fDMCadPedido.cdsFuracao.Locate('ID',RxDBLookupCombo7.KeyValue,[loCaseInsensitive]);
    vVlr_Furacao := fnc_Preco_Matriz(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger, fDMCadPedido.cdsFuracaoID.AsInteger,fDMCadPedido.cdsFuracaoTIPO_PRECO.AsString,fDMCadPedido.cdsFuracaoVLR_UNITARIO.AsFloat);
    if fDMCadPedido.cdsFuracaoTIPO_VP.AsString <> 'P' then
    begin 
      vVlr_Calculado := vVlr_Calculado + vVlr_Furacao;
      vVlr_Furacao   := 0;
    end;
  end;

  //vVlr_Calculado := vVlr_Calculado + vVlr_Acabamento + vVlr_RedondoMod + vVlr_CMoeda + vVlr_Furos + vVlr_Perfil
  //                + vVlr_Vidro + vVlr_Furacao;

  vVlr_Calculado_Aux := vVlr_Calculado;
  if vVlr_Acabamento > 0 then
    vVlr_Calculado := vVlr_Calculado + ((vVlr_Calculado_Aux * vVlr_Acabamento) / 100);
  if vVlr_RedondoMod > 0 then
    vVlr_Calculado := vVlr_Calculado + ((vVlr_Calculado_Aux * vVlr_RedondoMod) / 100);
  //Foi colocado este calculo direto no final  11/02/2015
  //if vVlr_CMoeda > 0 then
  //  vVlr_Calculado := vVlr_Calculado + ((vVlr_Calculado_Aux * vVlr_CMoeda) / 100);
  //if vVlr_Furos > 0 then
  //  vVlr_Calculado := vVlr_Calculado + ((vVlr_Calculado_Aux * vVlr_Furos) / 100);
  if vVlr_Furacao > 0 then
    vVlr_Calculado := vVlr_Calculado + ((vVlr_Calculado_Aux * vVlr_Furacao) / 100);

  //vVlr_Calculado := vVlr_Calculado + vVlr_CMoeda;

  fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := vVlr_Calculado;
  if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat)) > 0) then
  begin
    if RzPageControl1.ActivePage = TS_Porta then
    begin
      vAux := fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat;
      if vCalcula_2_Lados = 'S' then
        vAux := vAux + fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat;
      vAux := (vAux + (fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat * 2)) / 1000;

      if StrToFloat(FormatFloat('0.0000',vVlr_Perfil)) > 0 then
        vVlr_Perfil    := vVlr_Perfil * vAux;
      if StrToFloat(FormatFloat('0.00',vVlr_Vidro)) > 0 then
        vAux := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat / 1000) * (fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat / 1000)));
      vVlr_Vidro := StrToFloat(FormatFloat('0.00',vVlr_Vidro * vAux));
      vVlr_Calculado := vVlr_Perfil + vVlr_Vidro + vVlr_Furacao;
    end
    else
    begin
      vAux := (fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat / 1000) * (fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat / 1000);
      vVlr_Calculado := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat * vAux));
      //vVlr_Calculado := vVlr_Calculado + (vVlr_Calculado_Aux * vAux
    end;
    //colocado no dia 11/02/2015
    //vVlr_Calculado := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat * vAux));
    {vVlr_Calculado := vVlr_Calculado + vVlr_CMoeda;
    if (StrToFloat(FormatFloat('0.00',vVlr_Furos)) > 0) and (fDMCadPedido.cdsPedido_Item_TipoQTD_FUROS.AsInteger > 0) then
      vVlr_Furos := StrToFloat(FormatFloat('0.00',vVlr_Furos * fDMCadPedido.cdsPedido_Item_TipoQTD_FUROS.AsInteger));
    vVlr_Calculado := StrToFloat(FormatFloat('0.00',vVlr_Calculado + vVlr_Furos));
    fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := vVlr_Calculado;
    vVlr_Calculado := StrToFloat(FormatFloat('0.00',vVlr_Calculado * fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat));
    fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vVlr_Calculado));}
  end
  else
  begin
    fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := 0;
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat  := 0;
  end;

  //colocado no dia 11/02/2015
  vVlr_Calculado := vVlr_Calculado + vVlr_CMoeda;
  if (StrToFloat(FormatFloat('0.00',vVlr_Furos)) > 0) and (fDMCadPedido.cdsPedido_Item_TipoQTD_FUROS.AsInteger > 0) then
    vVlr_Furos := StrToFloat(FormatFloat('0.00',vVlr_Furos * fDMCadPedido.cdsPedido_Item_TipoQTD_FUROS.AsInteger));
  vVlr_Calculado := StrToFloat(FormatFloat('0.00',vVlr_Calculado + vVlr_Furos));
  fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat := vVlr_Calculado;
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat)) > 0 then
    vVlr_Calculado := StrToFloat(FormatFloat('0.00',vVlr_Calculado * fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat));
  fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vVlr_Calculado));

  fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat;
  fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat;
  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo2Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo3Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo4Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo8Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo5Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo6Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.RxDBLookupCombo7Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.DBEdit29Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
  prc_Calcular_Medida_Corte;
end;

procedure TfrmCadPedido_TipoItem.DBEdit30Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
  prc_Calcular_Medida_Corte;
end;

procedure TfrmCadPedido_TipoItem.DBEdit31Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

procedure TfrmCadPedido_TipoItem.DBEdit34Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
  prc_Calcular_Medida_Corte;
end;

procedure TfrmCadPedido_TipoItem.DBEdit35Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
  prc_Calcular_Medida_Corte;  
end;

procedure TfrmCadPedido_TipoItem.DBEdit36Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Porta;
end;

function TfrmCadPedido_TipoItem.fnc_Preco_Matriz(ID_Produto,
  ID_Matriz: Integer; Tipo_Preco: String; Valor: Real): Real;
begin
  if Tipo_Preco = 'D' then
    Result := Valor
  else
  begin
    fDMCadPedido.qProduto_Matriz.Close;
    fDMCadPedido.qProduto_Matriz.ParamByName('ID').AsInteger              := ID_Produto;
    fDMCadPedido.qProduto_Matriz.ParamByName('ID_MATRIZ_PRECO').AsInteger := ID_Matriz;
    fDMCadPedido.qProduto_Matriz.Open;
    Result := fDMCadPedido.qProduto_MatrizVLR_UNITARIO.AsFloat;
  end;
end;

procedure TfrmCadPedido_TipoItem.DBEdit9Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.DBEdit39Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.DBEdit7Exit(Sender: TObject);
begin
  fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat)));
end;

procedure TfrmCadPedido_TipoItem.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.DBEdit18Exit(Sender: TObject);
begin
  fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_DOBRA.AsFloat + (fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat)));
end;

procedure TfrmCadPedido_TipoItem.DBEdit17Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.DBEdit24Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.DBEdit25Exit(Sender: TObject);
begin
  fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_DOBRA.AsFloat + (fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat)));
end;

procedure TfrmCadPedido_TipoItem.DBEdit40Exit(Sender: TObject);
begin
  {if fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger > 0 then
  begin
    if not fDMCadPedido.cdsChapa.Locate('ID',fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger,[loCaseInsensitive]) then
    begin
      MessageDlg('*** Código não encontrado!', mtError, [mbOk], 0);
      DBEdit40.SetFocus;
      Exit;
    end
    else
    begin
      fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString := fDMCadPedido.cdsChapaNOME.AsString;
      if vID_Chapa_Ant <> fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger then
        fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat            := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsChapaVLR_UNITARIO.AsFloat));
    end;
  end;}
end;

procedure TfrmCadPedido_TipoItem.DBEdit1Enter(Sender: TObject);
begin
  DBEdit1.ReadOnly := (fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger > 0);
end;

procedure TfrmCadPedido_TipoItem.DBEdit40KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  {if (Key = Vk_F2) then
  begin
    vID_Chapa_Pos := fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger;
    frmSel_Chapa := TfrmSel_Chapa.Create(Self);
    frmSel_Chapa.ShowModal;
    FreeAndNil(frmSel_Chapa);
    fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger := vID_Chapa_Pos;
    if vID_Chapa_Pos > 0 then
    begin
      if not fDMCadPedido.cdsChapa.Locate('ID',fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger,[loCaseInsensitive]) then
        fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString := ''
      else
        fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString := fDMCadPedido.cdsChapaNOME.AsString;
    end;
  end
  else}
  if (Key = Vk_F5) then
  begin
    vNome_Pos := fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString;
    vVlr_Pos  := fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat;
    frmConsHist_Chapa := TfrmConsHist_Chapa.Create(Self);
    frmConsHist_Chapa.btnCopiar.Enabled := False;
    frmConsHist_Chapa.vID_Cliente := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    frmConsHist_Chapa.ShowModal;
    FreeAndNil(frmConsHist_Chapa);
    fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString := vNome_Pos;
    fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat := StrToFloat(FormatFloat('0.000000',vVlr_Pos));
  end;
end;

procedure TfrmCadPedido_TipoItem.DBEdit1Exit(Sender: TObject);
begin
  {if not(DBEdit1.ReadOnly) and (trim(fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString) <> '') then
  begin
    if not fDMCadPedido.cdsChapa.Locate('NOME',fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString,[loCaseInsensitive]) then
    begin
      fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger := 0;
      if MessageDlg('Chapa não cadastrada, deseja cadastrar?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        prc_Gravar_Chapa('I');
    end
    else
    begin
      fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger := fDMCadPedido.cdsChapaID.AsInteger;
      fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat     := StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsChapaVLR_UNITARIO.AsFloat));
    end;
  end;}
end;

procedure TfrmCadPedido_TipoItem.prc_Gravar_Chapa(Tipo : String); //P=Preco  I=Inserir
var
  fDMCadMatriz_Preco: TDMCadMatriz_Preco;
  vValor : String;
begin
  fDMCadMatriz_Preco := TDMCadMatriz_Preco.Create(Self);
  try
    if Tipo = 'P' then
      vValor := InputBox('','Informe o valor do KG: ', fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsString)
    else
      vValor := InputBox('','Informe o valor do KG: ', '');
    vValor := trim(vvalor);
    vValor := Replace(vValor,'.','');
    if trim(vValor) = '' then
      vValor := '0';
    if Tipo = 'P' then
    begin
      fDMCadMatriz_Preco.prc_Localizar(fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger);
      fDMCadMatriz_Preco.cdsMatriz_Preco.Edit;
    end
    else
    begin
      fDMCadMatriz_Preco.prc_Inserir;
      fDMCadMatriz_Preco.cdsMatriz_PrecoTIPO_REG.AsString    := 'CHP';
      fDMCadMatriz_Preco.cdsMatriz_PrecoTIPO_PRECO.AsString  := 'D';
      fDMCadMatriz_Preco.cdsMatriz_PrecoTIPO_VP.AsString     := 'V';
      fDMCadMatriz_Preco.cdsMatriz_PrecoNOME.AsString        := fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString;
      fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger     := fDMCadMatriz_Preco.cdsMatriz_PrecoID.AsInteger;
    end;
    try
      fDMCadMatriz_Preco.cdsMatriz_PrecoVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.000',StrToFloat(vValor)));
    except
      fDMCadMatriz_Preco.cdsMatriz_PrecoVLR_UNITARIO.AsFloat := 0;
    end;
    if Tipo <> 'P' then
      fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat := StrToFloat(FormatFloat('0.000',fDMCadMatriz_Preco.cdsMatriz_PrecoVLR_UNITARIO.AsFloat));
    fDMCadMatriz_Preco.prc_Gravar;
    fDMCadPedido.cdsChapa.Close;
    fDMCadPedido.cdsChapa.Open;
  finally
    FreeAndNil(fDMCadMatriz_Preco);
  end;
end;

procedure TfrmCadPedido_TipoItem.DBEdit40Enter(Sender: TObject);
begin
  //vID_Chapa_Ant := fDMCadPedido.cdsPedido_Item_TipoID_CHAPA.AsInteger;
end;

procedure TfrmCadPedido_TipoItem.DBEdit6Exit(Sender: TObject);
begin
  if not DBEdit6.ReadOnly then
    prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.DBEdit15Exit(Sender: TObject);
begin
  if not DBEdit15.ReadOnly then
    prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.DBEdit22Exit(Sender: TObject);
begin
  if not DBEdit22.ReadOnly then
    prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_TipoItem.prc_Calcular_Medida_Corte;
begin
  if (RzPageControl1.ActivePage = TS_Porta) or (RzPageControl1.ActivePage = TS_Vidro) then
  begin
    if fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat > 0 then
      fDMCadPedido.cdsPedido_Item_TipoLARGURA_CORTE.AsFloat := (fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsFloat + 2);
    if fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat > 0 then
      fDMCadPedido.cdsPedido_Item_TipoALTURA_CORTE.AsFloat := (fDMCadPedido.cdsPedido_Item_TipoALTURA.AsFloat + 2);
  end;
end;

end.
