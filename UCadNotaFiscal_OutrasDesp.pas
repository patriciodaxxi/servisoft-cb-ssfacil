unit UCadNotaFiscal_OutrasDesp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask, DBCtrls,
  CurrEdit, ExtCtrls, DB, UDMCadNotaFiscal, RzTabs;

type
  TfrmCadNotaFiscal_OutrasDesp = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TS_NotaFiscal: TRzTabSheet;
    TS_NotaEntrada: TRzTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label22: TLabel;
    Label7: TLabel;
    Bevel4: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit5: TDBEdit;
    CheckBox5: TCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Panel3: TPanel;
    Label13: TLabel;
    Bevel3: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    Bevel5: TBevel;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit21: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Bevel6: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit16Exit(Sender: TObject);
  private
    { Private declarations }
    vVlrPis, vVlrCofins, vVlrTaxaCiscomex, vVlrOutros, vVlrOutrasDespesas, vVlrImpImportacao: Real;
    vVlrSeguro, vVlrFrete, vVlrAFRMM: Real;
    //NFe 2.00
    vBaseIcmsOutros, vVlrIcmsOutros, vVlrDuplicataOutros: Real;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    
  end;

var
  frmCadNotaFiscal_OutrasDesp: TfrmCadNotaFiscal_OutrasDesp;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_OutrasDesp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_OutrasDesp.FormShow(Sender: TObject);
var
  vAliqAux : Real;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);

  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

  vVlrPis             := fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat;
  vVlrCofins          := fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat;
  vVlrTaxaCiscomex    := fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat;
  vVlrOutros          := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat;
  vVlrOutrasDespesas  := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat;
  vVlrFrete           := fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
  vVlrAFRMM           := fDMCadNotaFiscal.cdsNotaFiscalVLR_AFRMM.AsFloat;
  vVlrSeguro          := fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat;
  vBaseIcmsOutros     := fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSOUTROS.AsFloat;
  vVlrIcmsOutros      := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSOUTROS.AsFloat;
  vVlrDuplicataOutros := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATAOUTROS.AsFloat;

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_OUTROSVALORES.AsFloat)) <= StrToFloat(FormatFloat('0.00',0)) then
  begin
    if fDMCadNotaFiscal.vAliqICMS > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_OUTROSVALORES.AsFloat := fDMCadNotaFiscal.vAliqICMS
    else
      fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_OUTROSVALORES.AsFloat := 18;
  end;
  CheckBox5.Checked := (fDMCadNotaFiscal.cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP.AsString = 'S');

  Panel1.Enabled := (fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert]);

  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat)) <= 0) and (fDMCadNotaFiscal.qParametros_ImpSOMAR_FRETE_ICMS.AsString = 'S') and
     (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3') then
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_ICMS.AsFloat));
  end;

  //24/11/2016
  if (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3') then
  begin
    if fDMCadNotaFiscal.vAliqICMS > 0 then
      vAliqAux := fDMCadNotaFiscal.vAliqICMS
    else
      vAliqAux := 18;
    if fDMCadNotaFiscal.qParametros_NFeSOMAR_FRETE_ICMS_NAC.AsString = 'S' then
    begin
      if (fDMCadNotaFiscal.qParametros_NFeSOMAR_FRETE_NO_ICMS_TC.AsString = '1') and (fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 1) then
        fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := vAliqAux
      else
      if (fDMCadNotaFiscal.qParametros_NFeSOMAR_IPI_NO_ICM_TC.AsString = '2') and ((fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 2) or (fDMCadNotaFiscal.cdsClienteTIPO_CONTRIBUINTE.AsInteger = 9)) then
        fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := vAliqAux
      else
      if (fDMCadNotaFiscal.qParametros_NFeSOMAR_IPI_NO_ICM_TC.AsString = '9') then
        fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := vAliqAux
      else
        fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := 0;
    end
    else
      fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := 0;
  end;
  if (fDMCadNotaFiscal.qParametros_NFeSOMAR_FRETE_ICMS_NAC.AsString = 'S') then
    fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat := fDMCadNotaFiscal.vAliqICMS;

  //***************************
end;

procedure TfrmCadNotaFiscal_OutrasDesp.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_OutrasDesp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  vVlrAux, vVlrIcmsAux: Real;
  vOutrasDespesasAux: Real;
  vBaseIcmsOutrosAux, vVlrIcmsOutrosAux, vVlrDuplicataAux: Real;
begin
  if fDMCadNotaFiscal.cdsNotaFiscal.State in [dsEdit,dsInsert] then
  begin
    //NFe 2.00
    vOutrasDespesasAux := 0;
    vVlrDuplicataAux   := 0;
    vBaseIcmsOutrosAux := 0;
    vVlrIcmsOutrosAux  := 0;
    //Pis Cofins
    if copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '3' then
      fDMCadNotaFiscal.cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP.AsString := 'N'
    else
    if CheckBox5.Checked then
      fDMCadNotaFiscal.cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP.AsString := 'S'
    else
      fDMCadNotaFiscal.cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP.AsString := 'N';
    if fDMCadNotaFiscal.cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP.AsString = 'S' then
      vOutrasDespesasAux := vOutrasDespesasAux + fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat;

    if (fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_PISCOFINS.AsFloat > 0) and (fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat > 0) and (fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat > 0) then
    begin
      vVlrAux            := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat) * fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_PISCOFINS.AsFloat / 100));
      vVlrIcmsOutrosAux  := vVlrIcmsOutrosAux + vVlrAux;
      vBaseIcmsOutrosAux := vBaseIcmsOutrosAux + fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat;
    end;

    vVlrAux            := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat));
    if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString = 'S' then
      vVlrDuplicataAux := vVlrDuplicataAux + StrToFloat(FormatFloat('0.00',vVlrAux));
    vOutrasDespesasAux := vOutrasDespesasAux + StrToFloat(FormatFloat('0.00',vVlrAux));
    if (StrToFloat(FormatFloat('0.00',vVlrAux)) > 0) AND (copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) <> '3') then
    begin
      if fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_OUTROSVALORES.AsFloat > 0 then
      begin
        vVlrIcmsAux        := StrToFloat(FormatFloat('0.00',vVlrAux * fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_OUTROSVALORES.AsFloat / 100));
        vVlrIcmsOutrosAux  := vVlrIcmsOutrosAux + vVlrIcmsAux;
        vBaseIcmsOutrosAux := vBaseIcmsOutrosAux + vVlrAux;
      end;
    end;

    if fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat > 0 then
    begin
      if fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat > 0 then
      begin
        vVlrIcmsAux        := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat *  fDMCadNotaFiscal.cdsNotaFiscalPERC_ICMS_FRETE.AsFloat) / 100));
        vVlrIcmsOutrosAux  := vVlrIcmsOutrosAux + vVlrIcmsAux;
        vBaseIcmsOutrosAux := vBaseIcmsOutrosAux + fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
      end;
      if fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString = 'S' then
        vVlrDuplicataAux := vVlrDuplicataAux + fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat;
    end;

    if (fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat > 0) and (fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_SEGURO.AsString = 'S') then
      vVlrDuplicataAux := vVlrDuplicataAux + fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat;

    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATAOUTROS.AsFloat := vVlrDuplicataAux;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATAOUTROS.AsFloat - vVlrDuplicataOutros;

    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSOUTROS.AsFloat     := vBaseIcmsOutrosAux;
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat           := fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSOUTROS.AsFloat;

    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSOUTROS.AsFloat      := vVlrIcmsOutrosAux;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat            := fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSOUTROS.AsFloat;

    fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat      := fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat + vOutrasDespesasAux
                                                               - vVlrOutrasDespesas + fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat;
  end;
end;

procedure TfrmCadNotaFiscal_OutrasDesp.DBEdit16Exit(Sender: TObject);
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat)) > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalGERARDUPL_FRETE.AsString := 'S';
end;

end.
