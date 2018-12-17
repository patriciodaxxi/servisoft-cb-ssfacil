unit UCadNotaFiscal_OutrosDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Grids, DBGrids, SMDBGrid, RzTabs, UCadNotaFiscal_Reboque, UCadNotaFiscal_Lacre,
  RxDBComb, Mask, ToolEdit, RXDBCtrl;
type
  TfrmCadNotaFiscal_OutrosDados = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Label2: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit45: TDBEdit;
    RxDBComboBox7: TRxDBComboBox;
    DBEdit46: TDBEdit;
    btnReboque: TBitBtn;
    btnLacre: TBitBtn;
    pnlDuplicata: TPanel;
    Label71: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBEdit43: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    rxdbTipoCobranca: TRxDBLookupCombo;
    rxdbBanco: TRxDBLookupCombo;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    btnParcelas: TBitBtn;
    BitBtn2: TBitBtn;
    btnExcluir_Parcela: TBitBtn;
    SMDBGrid_Dupl2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnReboqueClick(Sender: TObject);
    procedure btnLacreClick(Sender: TObject);
    procedure btnExcluir_ParcelaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadNotaFiscal_Reboque    : TfrmCadNotaFiscal_Reboque;
    ffrmCadNotaFiscal_Lacre      : TfrmCadNotaFiscal_Lacre;


  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

  end;

var
  frmCadNotaFiscal_OutrosDados: TfrmCadNotaFiscal_OutrosDados;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_OutrosDados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_OutrosDados.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_OutrosDados.btnReboqueClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Reboque := TfrmCadNotaFiscal_Reboque.Create(self);
  ffrmCadNotaFiscal_Reboque.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Reboque.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Reboque);
end;

procedure TfrmCadNotaFiscal_OutrosDados.btnLacreClick(Sender: TObject);
begin
  ffrmCadNotaFiscal_Lacre := TfrmCadNotaFiscal_Lacre.Create(self);
  ffrmCadNotaFiscal_Lacre.fDMCadNotaFiscal := fDMCadNotaFiscal;
  ffrmCadNotaFiscal_Lacre.ShowModal;

  FreeAndNil(ffrmCadNotaFiscal_Lacre);
end;

procedure TfrmCadNotaFiscal_OutrosDados.btnExcluir_ParcelaClick(
  Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_Parc.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Parc.Delete;
end;

procedure TfrmCadNotaFiscal_OutrosDados.BitBtn2Click(Sender: TObject);
var
  vVlrAux: Real;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalPERC_TRANSF.AsFloat <= 0 then
  begin
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat + fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat;
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat    := 0;
  end
  else
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat)) > 0 then
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',(fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMS.AsFloat * fDMCadNotaFiscal.cdsNotaFiscalPERC_TRANSF.AsFloat) / 100));
    if StrToFloat(FormatFloat('0.00',vVlrAux)) >  StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat)) then
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrAux));
    fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat -
                                                           fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat));
  end;
end;

procedure TfrmCadNotaFiscal_OutrosDados.SpeedButton7Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsTipoCobranca.Close;
  fDMCadNotaFiscal.cdsTipoCobranca.Open;
end;

procedure TfrmCadNotaFiscal_OutrosDados.SpeedButton8Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsContas.Close;
  fDMCadNotaFiscal.cdsContas.Open;
end;

procedure TfrmCadNotaFiscal_OutrosDados.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
