unit uCupomFiscalImposto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, Buttons, Mask,
  DB, DBTables, RxDBComb, DBCtrls, ExtCtrls, UDMCupomFiscal, rsDBUtils, uDmMovimento, uDmParametros, ACBrBase, DBGrids,
  Grids, SMDBGrid, RzTabs, NxCollection, dbXPress, ToolEdit, CurrEdit;

type
  TfCupomFiscalImposto = class(TForm)
    Panel1: TPanel;
    btConfirmar: TNxButton;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label33: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    Label15: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    brCancelar: TNxButton;
    Label4: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    CurrencyEdit8: TCurrencyEdit;
    Label7: TLabel;
    CurrencyEdit9: TCurrencyEdit;
    Label8: TLabel;
    CurrencyEdit10: TCurrencyEdit;
    Label9: TLabel;
    CurrencyEdit11: TCurrencyEdit;
    Label10: TLabel;
    CurrencyEdit12: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure brCancelarClick(Sender: TObject);
  private
    { Private declarations }
    vID_CFOPAnt, vID_VariacaoAnt: Integer;
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
    vTeste: Boolean;
  end;

var
  fCupomFiscalImposto: TfCupomFiscalImposto;

implementation

//---------------TROCAR IMPRESSORA
uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfCupomFiscalImposto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCupomFiscalImposto.FormShow(Sender: TObject);
begin
  //oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  if fDmCupomFiscal.vID_CFOP > 0 then
    RxDBLookupCombo2.KeyValue := fDmCupomFiscal.vID_CFOP;
  if fDmCupomFiscal.vID_Variacao > 0 then
    RxDBLookupCombo6.KeyValue := fDmCupomFiscal.vID_Variacao;

  if fDmCupomFiscal.vID_Pis > 0 then
    RxDBLookupCombo8.KeyValue := fDmCupomFiscal.vID_Pis;
  if fDmCupomFiscal.vID_Cofins > 0 then
    RxDBLookupCombo9.KeyValue := fDmCupomFiscal.vID_Cofins;
  if fDmCupomFiscal.vID_CSTICMS > 0 then
    RxDBLookupCombo11.KeyValue := fDmCupomFiscal.vID_CSTICMS;
  if fDmCupomFiscal.vID_CSTIPI > 0 then
    RxDBLookupCombo12.KeyValue := fDmCupomFiscal.vID_CSTIPI;
  if fDmCupomFiscal.vTipo_Pis = 'P' then
    ComboBox1.ItemIndex := 0
  else
  if fDmCupomFiscal.vTipo_Pis = 'V' then
    ComboBox1.ItemIndex := 1;
  if fDmCupomFiscal.vTipo_Cofins = 'P' then
    ComboBox2.ItemIndex := 0
  else
  if fDmCupomFiscal.vTipo_Cofins = 'V' then
    ComboBox2.ItemIndex := 1;
  CurrencyEdit3.Value := fDmCupomFiscal.vPerc_Pis;
  CurrencyEdit4.Value := fDmCupomFiscal.vPerc_Cofins;
  CurrencyEdit5.Value := fDmCupomFiscal.vPerc_TribICMS;
  CurrencyEdit1.Value := fDmCupomFiscal.vPerc_ICMS;
  CurrencyEdit2.Value := fDmCupomFiscal.vPerc_IPI;
  CurrencyEdit6.Value := fDmCupomFiscal.vBase_ICMS;
  CurrencyEdit7.Value := fDmCupomFiscal.vVlr_ICMS;
  CurrencyEdit8.Value := fDmCupomFiscal.vBase_ICMS_Ret;
  CurrencyEdit9.Value := fDmCupomFiscal.vVlr_ICMS_Ret;
  CurrencyEdit10.Value := fDmCupomFiscal.vVlr_ICMS_Efet;
  CurrencyEdit11.Value := fDmCupomFiscal.vPerc_ICMS_Efet;
  CurrencyEdit12.Value := fDmCupomFiscal.vBase_ICMS_Efet;

  fDmCupomFiscal.vVlr_ICMS      := fDmCupomFiscal.cdsCupom_ItensVLR_ICMS.AsFloat;
  fDmCupomFiscal.vBase_ICMS     := fDmCupomFiscal.cdsCupom_ItensBASE_ICMS.AsFloat;
  fDmCupomFiscal.vVlr_ICMS_Ret  := fDmCupomFiscal.cdsCupom_ItensVLR_ICMSSUBST_RET.AsFloat;
  fDmCupomFiscal.vBase_ICMS_Ret := fDmCupomFiscal.cdsCupom_ItensBASE_ICMSSUBST_RET.AsFloat;
  fDmCupomFiscal.vVlr_ICMS_Efet := fDmCupomFiscal.cdsCupom_ItensVLR_ICMS_EFE.AsFloat;

  btConfirmar.Enabled := (fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.AsString = '') or
                         (fDmCupomFiscal.cdsCupomFiscalNFECHAVEACESSO.IsNull)  
end;

procedure TfCupomFiscalImposto.Panel2Enter(Sender: TObject);
begin
  vID_CFOPAnt     := fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger;
  vID_VariacaoAnt := fDmCupomFiscal.cdsCupom_ItensID_VARIACAO.AsInteger;
end;

procedure TfCupomFiscalImposto.Panel2Exit(Sender: TObject);
begin
  if (vID_CFOPAnt <> fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger) or (vID_VariacaoAnt <> fDmCupomFiscal.cdsCupom_ItensID_VARIACAO.AsInteger) then
    fDmCupomFiscal.prc_Mover_CST;
end;

procedure TfCupomFiscalImposto.RxDBLookupCombo2Exit(Sender: TObject);
var
  vIDAux: Integer;
begin
  if vID_CFOPAnt <> fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger then
  begin
    vIDAux := fDmCupomFiscal.fnc_Buscar_Regra_CFOP(fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger);
    if vIDAux > 0 then
      RxDBLookupCombo6.KeyValue := vIDAux
    else
      RxDBLookupCombo6.ClearValue;
  end;
end;

procedure TfCupomFiscalImposto.RxDBLookupCombo2Enter(Sender: TObject);
begin
  vID_CFOPAnt := fDmCupomFiscal.cdsCupom_ItensID_CFOP.AsInteger;
end;

procedure TfCupomFiscalImposto.btConfirmarClick(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
    fDmCupomFiscal.vID_Pis := RxDBLookupCombo8.KeyValue
  else
    fDmCupomFiscal.vID_Pis := 0;
  if RxDBLookupCombo9.Text <> '' then
    fDmCupomFiscal.vID_Cofins := RxDBLookupCombo9.KeyValue
  else
    fDmCupomFiscal.vID_Cofins := 0;
  if RxDBLookupCombo11.Text <> '' then
    fDmCupomFiscal.vID_CSTICMS := RxDBLookupCombo11.KeyValue
  else
    fDmCupomFiscal.vID_CSTICMS := 0;
  if RxDBLookupCombo12.Text <> '' then
    fDmCupomFiscal.vID_CSTIPI := RxDBLookupCombo12.KeyValue
  else
    fDmCupomFiscal.vID_CSTIPI := 0;
  case ComboBox1.ItemIndex of
    0: fDmCupomFiscal.vTipo_Pis := 'P';
    1: fDmCupomFiscal.vTipo_Pis := 'V';
  end;
  case ComboBox2.ItemIndex of
    0: fDmCupomFiscal.vTipo_Cofins := 'P';
    1: fDmCupomFiscal.vTipo_Cofins := 'V';
  end;

  fDmCupomFiscal.vPerc_Pis      := CurrencyEdit3.Value;
  fDmCupomFiscal.vPerc_Cofins   := CurrencyEdit4.Value;
  fDmCupomFiscal.vPerc_TribICMS := CurrencyEdit5.Value;
  fDmCupomFiscal.vPerc_ICMS     := CurrencyEdit1.Value;
  fDmCupomFiscal.vPerc_IPI      := CurrencyEdit2.Value;
  Close;
end;

procedure TfCupomFiscalImposto.brCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
