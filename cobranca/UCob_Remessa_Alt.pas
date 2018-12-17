unit UCob_Remessa_Alt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls,
  StdCtrls, Mask, DBCtrls, RxLookup, ToolEdit, RXDBCtrl, UDMCob_Eletronica, RxDBComb, Buttons, DB,
  RzTabs, DateUtils, ACBrBase, ACBrBoleto, ACBrBoletoFCFortesFr, ACBrMail, ACBrUtil, UDMRel, NxEdit;

type
  TfrmCobRemessa_Alt = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblFilial: TLabel;
    lblSerie: TLabel;
    lblTitulo: TLabel;
    lblDataVencimento: TLabel;
    lblDataEmissao: TLabel;
    lblValor: TLabel;
    Label1: TLabel;
    edtSerie: TDBEdit;
    edtTitulo: TDBEdit;
    edtDataVencimento: TDBDateEdit;
    edtDataEmissao: TDBDateEdit;
    edtValor: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RzPageControl1: TRzPageControl;
    ts_Dados: TRzTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CheckBox2: TCheckBox;
    edtTaxaBancaria: TDBEdit;
    CheckBox1: TCheckBox;
    ts_Reimprimir: TRzTabSheet;
    Panel3: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    Panel4: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    edtDiasJuros: TEdit;
    Label5: TLabel;
    edtValorAtualizado: TEdit;
    Label8: TLabel;
    edtValorTotJuros: TEdit;
    Label7: TLabel;
    edtValorMulta: TEdit;
    Label9: TLabel;
    edtValorJuroDia: TEdit;
    NxDatePicker1: TNxDatePicker;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure t(Sender: TObject);
    procedure NxDatePicker1Exit(Sender: TObject);
  private
    fDMRel: TDMRel;
    vCorpo_Email: TStringList;
    vDadosCorpoEmail: WideString;
    { Private declarations }
  public
    fDMCob_Eletronica: TDMCob_Eletronica;
    procedure prc_Calcula_Valor_Corrigido(data_Prorrogacao: TDateTime);
    { Public declarations }
  end;

var
  frmCobRemessa_Alt: TfrmCobRemessa_Alt;

implementation

uses
  rsDBUtils, uUtilPadrao, uCobRemessa;

{$R *.dfm}

procedure TfrmCobRemessa_Alt.btnConfirmarClick(Sender: TObject);
var
  vMsgAux: string;
  vContadorAux: Integer;
begin

  if (ts_Reimprimir.Enabled) then
    if (fDMCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime > NxDatePicker1.AsDateTime) then
    begin
      MessageDlg('Data da 2ª via, deve ser maior que a data do vencimento', mtError, [mbOK], 0);
      NxDatePicker1.SetFocus;
      exit;
    end;

  fDMCob_Eletronica.vID_Duplicata := fDMCob_Eletronica.cdsDuplicataID.AsInteger;
  fDMCob_Eletronica.vID_Carteira := fDMCob_Eletronica.cdsDuplicataID_CARTEIRA.AsInteger;
  if (fDMCob_Eletronica.cdsDuplicata.State in [dsEdit]) then
  begin
    fDMCob_Eletronica.cdsDuplicata.Post;
    fDMCob_Eletronica.cdsDuplicata.ApplyUpdates(0);
  end;
  Close;
end;

procedure TfrmCobRemessa_Alt.btnCancelarClick(Sender: TObject);
begin
  fDMCob_Eletronica.vID_Duplicata := 0;
  Close;
end;

procedure TfrmCobRemessa_Alt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCob_Eletronica);
  if not (fDMCob_Eletronica.cdsDuplicata.State in [dsEdit]) then
    fDMCob_Eletronica.cdsDuplicata.Edit;

  if (fDMCob_Eletronica.cdsDuplicataTAXA_BANCO.AsString = 'S') or (fDMCob_Eletronica.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat > 0) then
    CheckBox2.Checked := True
  else
    CheckBox2.Checked := False;

  if uCobRemessa.vTipo = 1 then
  begin
    ts_Dados.Enabled := True;
    ts_Reimprimir.Enabled := False;
    RzPageControl1.ActivePage := ts_Dados;
  end
  else
  begin
    ts_Reimprimir.Enabled := True;
    ts_Dados.Enabled := False;
    RzPageControl1.ActivePage := ts_Reimprimir;
    frmCobRemessa_Alt.Caption := 'Reimpressão do Boleto';
    btnConfirmar.Caption := 'Impressão';
    if NxDatePicker1.AsDateTime > 0 then
      prc_Calcula_Valor_Corrigido(NxDatePicker1.AsDateTime);
  end;

end;

procedure TfrmCobRemessa_Alt.CheckBox2Click(Sender: TObject);
begin
  if fDMCob_Eletronica.cdsContasVLR_TAXA.AsFloat <= 0 then
  begin
    MessageDlg('Valor da taxa bancária no cadastro de Contas não informado!', mtWarning, [mbOk], 0);
    Exit;
  end;

  if CheckBox2.Checked then
  begin
    fDMCob_Eletronica.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00', fDMCob_Eletronica.cdsContasVLR_TAXA.AsFloat));
    fDMCob_Eletronica.cdsDuplicataTAXA_BANCO.AsString := 'S';
  end
  else
  begin
    fDMCob_Eletronica.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := 0;
    fDMCob_Eletronica.cdsDuplicataTAXA_BANCO.AsString := 'N';
  end;
end;

procedure TfrmCobRemessa_Alt.RzPageControl1Change(Sender: TObject);
begin
  if vTipo = 1 then
  begin
    if RzPageControl1.ActivePage = ts_Reimprimir then
      RzPageControl1.ActivePage := ts_Dados;
  end
  else
  begin
    if RzPageControl1.ActivePage = ts_Dados then
      RzPageControl1.ActivePage := ts_Reimprimir;
  end;
end;

procedure TfrmCobRemessa_Alt.prc_Calcula_Valor_Corrigido(data_Prorrogacao: TDateTime);
var
  vAuxData: TDateTime;
  vValorJurosDias: Real;
  vTotalValorJuros: Real;
  vValorMulta: Real;
  vQtdeDiasJuros: Integer;
  vTotalValorDuplicata: Real;
begin
  with fDMCob_Eletronica do
  begin
    if NxDatePicker1.Date > 0 then
    begin
      if (cdsDuplicataDTVENCIMENTO.AsDateTime > NxDatePicker1.AsDateTime) then
      begin
        ShowMessage('Data da Emissão da 2ª via deve ser maior que a data do vencimento!');
        Exit;
      end;
      vAuxData := uUtilPadrao.fnc_Data_Vencimento(NxDatePicker1.AsDateTime);
      if vAuxData <> NxDatePicker1.Date then
      begin
        if MessageDlg('Data da Emissão da 2ª via não é um dia útil, prorrogar para o próximo dia útil>', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          NxDatePicker1.Date := vAuxData;
        end;
      end;
    end;
    vValor_Com_Juros := 0;
    vValor_Multa_Juros := 0;
    vQtdeDiasJuros := DaysBetween(NxDatePicker1.Date, cdsDuplicataDTVENCIMENTO.AsDateTime);
    vValorMulta := StrToFloat(FormatFloat('0.00', (cdsContasPERC_MULTA.AsFloat * cdsDuplicataVLR_PARCELA.AsFloat) / 100));
    vValorJurosDias := StrToFloat(FormatFloat('0.00', (cdsContasPERC_JUROS.AsFloat * cdsDuplicataVLR_PARCELA.AsFloat) / 100));
    vTotalValorJuros := vValorJurosDias * vQtdeDiasJuros;
    vTotalValorDuplicata := vValorMulta + vTotalValorJuros + StrToFloat(FormatFloat('0.00', cdsDuplicataVLR_PARCELA.AsFloat));

    edtValorMulta.Text := FormatFloat('0.00', vValorMulta);
    edtDiasJuros.Text := IntToStr(vQtdeDiasJuros);
    edtValorJuroDia.Text := FormatFloat('0.00', vValorJurosDias);
    edtValorAtualizado.Text := FormatFloat('#0.00', (vTotalValorDuplicata));
    edtValorTotJuros.Text := FormatFloat('#0.00', (vTotalValorJuros));
    vValor_Com_Juros := vTotalValorDuplicata;
    vValor_Multa_Juros := vTotalValorJuros + vValorMulta;
    vData2Via := vAuxData;
  end;
end;

procedure TfrmCobRemessa_Alt.t(Sender: TObject);
begin
  SysLocale.MiddleEast := true;
  edtValorMulta.BiDiMode := bdRightToLeft;
  edtValorJuroDia.BiDiMode := bdRightToLeft;
  edtValorTotJuros.BiDiMode := bdRightToLeft;
  edtDiasJuros.BiDiMode := bdRightToLeft;
  edtValorAtualizado.BiDiMode := bdRightToLeft;
  NxDatePicker1.date := Date;
end;

procedure TfrmCobRemessa_Alt.NxDatePicker1Exit(Sender: TObject);
begin
  prc_Calcula_Valor_Corrigido(NxDatePicker1.Date);

end;

end.

