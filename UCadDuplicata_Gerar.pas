unit UCadDuplicata_Gerar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils, Dialogs, UDMCadDuplicata, Mask,
  db, RxLookup, StdCtrls, ToolEdit, CurrEdit, NxCollection, ExtCtrls, RXDBCtrl, Buttons, UCadCondPgto, dbXpress,
  Grids, DBGrids, SMDBGrid;

type
  TfrmCadDuplicata_Gerar = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label3: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label17: TLabel;
    DateEdit1: TDateEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    btnGerar: TNxButton;
    btnExcluir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    ffrmCadCondPgto: TfrmCadCondPgto;

    vTipo_ES: String;
    vFilial: Integer;
    vNumDuplicata: String;
    vNumNota: Integer;
    vSerie: String;
    vDtVencimentoIni, vData, vDtEmissao: TDateTime;
    vVlrParcela: Real;
    vPerc_Comissao: Real;
    vID_Vendedor, vID_Cliente: Integer;
    vID_Conta, vID_Conta_Boleto: Integer;
    vID_TipoCobranca: Integer;
    vID_ContaOrcamento: Integer;
    vObs: String;
    vParcela: Integer;
    vQtdDupl: Real;

    procedure prc_mGerarDup;
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  frmCadDuplicata_Gerar: TfrmCadDuplicata_Gerar;

implementation

uses rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmCadDuplicata_Gerar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Gerar.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  CurrencyEdit1.AsInteger := fDMCadDuplicata.cdsDuplicataPARCELA.AsInteger;

  fDMCadDuplicata.cdsCondPgto.Open;
  fDMCadDuplicata.cdsCondPgto_Dia.Close;
  fDMCadDuplicata.cdsCondPgto_Dia.Open;

  if fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime > 0 then
    DateEdit1.Date := fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime;
end;

procedure TfrmCadDuplicata_Gerar.ComboBox1Click(Sender: TObject);
begin
  CurrencyEdit3.Enabled    := ((ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 2));
  CurrencyEdit2.Enabled    := (ComboBox1.ItemIndex = 0);
  CurrencyEdit4.Enabled    := (ComboBox1.ItemIndex = 2);
  RxDBLookupCombo1.Enabled := (ComboBox1.ItemIndex = 1);
  DateEdit1.Enabled        := (ComboBox1.ItemIndex = 0);

  if CurrencyEdit3.Enabled then
    CurrencyEdit3.Color := clWindow
  else
    CurrencyEdit3.Color := clSilver;
  if CurrencyEdit2.Enabled then
    CurrencyEdit2.Color := clWindow
  else
    CurrencyEdit2.Color := clSilver;
  if CurrencyEdit4.Enabled then
    CurrencyEdit4.Color := clWindow
  else
    CurrencyEdit4.Color := clSilver;
  if RxDBLookupCombo1.Enabled then
    RxDBLookupCombo1.Color := clWindow
  else
    RxDBLookupCombo1.Color := clSilver;
  if DateEdit1.Enabled then
    DateEdit1.Color := clWindow
  else
    DateEdit1.Color := clSilver;
  if CurrencyEdit2.Enabled then
    CurrencyEdit2.AsInteger := DayOf(fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime);
end;

procedure TfrmCadDuplicata_Gerar.DateEdit1Exit(Sender: TObject);
begin
  if (DateEdit1.Date > 10) and (ComboBox1.ItemIndex = 0) then
    CurrencyEdit2.AsInteger := DayOf(DateEdit1.Date);
end;

procedure TfrmCadDuplicata_Gerar.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadDuplicata.cdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadDuplicata_Gerar.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadCondPgto := TfrmCadCondPgto.Create(self);
  ffrmCadCondPgto.ShowModal;

  FreeAndNil(frmCadCondPgto);
  SpeedButton7Click(Sender);
end;

procedure TfrmCadDuplicata_Gerar.SpeedButton7Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsCondPgto.Close;
  fDMCadDuplicata.cdsCondPgto.Open;
end;

procedure TfrmCadDuplicata_Gerar.prc_mGerarDup;
var
  vAux: Integer;
begin
  fDMCadDuplicata.mGerarDup.Insert;
  fDMCadDuplicata.mGerarDupParcela.AsInteger       := vParcela;
  fDMCadDuplicata.mGerarDupDtVencimento.AsDateTime := vData;
  fDMCadDuplicata.mGerarDupVlrParcela.AsFloat      := StrToFloat(FormatFloat('0.00',vVlrParcela));
  fDMCadDuplicata.mGerarDup.Post;
end;

procedure TfrmCadDuplicata_Gerar.btnGerarClick(Sender: TObject);
var
  i: Integer;
  vDtAux: TDateTime;
  vDiasIn: Integer;
  vDiasAux2: Integer;
  vDiaIni: Integer;
  vDataOrig: TDateTime;
begin
  fDMCadDuplicata.mGerarDup.EmptyDataSet;

  try
    if DateEdit1.Date > 10 then
      vDtVencimentoIni := DateEdit1.Date
    else
      vDtVencimentoIni := fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime;
    vVlrParcela := fDMCadDuplicata.cdsDuplicataVLR_PARCELA.AsFloat;
    if fDMCadDuplicata.cdsDuplicataPARCELA.AsInteger <= 0 then
    begin
      vParcela := 1;
      fDMCadDuplicata.cdsDuplicataPARCELA.AsInteger := vParcela;
    end
    else
      vParcela := fDMCadDuplicata.cdsDuplicataPARCELA.AsInteger;

    if fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime > 10 then
    begin
      //vData     := fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime;
      //vDataOrig := fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime;
      vData     := vDtVencimentoIni;
      vDataOrig := vDtVencimentoIni;
      vDiaIni   := DayOf(vData);
    end
    else
    if ComboBox1.ItemIndex > 0 then
    begin
      vData     := fDMCadDuplicata.cdsDuplicataDTEMISSAO.AsDateTime;
      vDataOrig := vData;
      if ComboBox1.ItemIndex = 1 then
      begin
        vDataOrig := vData;
        fDMCadDuplicata.cdsCondPgto_Dia.First;
        vData := vData + fDMCadDuplicata.cdsCondPgto_DiaQTDDIAS.AsInteger;
        fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime := vData;
      end
      else
      begin
        vData := vData + CurrencyEdit4.AsInteger;
        fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime := vData;
      end;
    end
    else
    begin
      vDiaIni := DayOf(vDtVencimentoIni);
      vData   := vDtVencimentoIni;
    end;
    if CurrencyEdit2.AsInteger > 0 then
      vDiaIni := CurrencyEdit2.AsInteger;
    i := 0;
    if ComboBox1.ItemIndex = 1 then
    begin
      //fDMCadDuplicata.cdsCondPgto_Dia.First;
      while not fDMCadDuplicata.cdsCondPgto_Dia.Eof do
      begin
        //if i > 0 then
        begin
          vData    := vDataOrig + fDMCadDuplicata.cdsCondPgto_DiaQTDDIAS.AsInteger;
          prc_mGerarDup;
          vParcela := vParcela + 1;
        end;
        i := i + 1;
        fDMCadDuplicata.cdsCondPgto_Dia.Next;
      end;
    end
    else
    begin
      while i < CurrencyEdit3.AsInteger do
      begin
       //if i > 0 then
        begin
          prc_mGerarDup;
          vParcela := vParcela + 1;
          if ComboBox1.ItemIndex = 0 then
          begin
            vData := IncMonth(vData);
            if vDiaIni <> DayOf(vData) then
            begin
              if DaysInMonth(vData) > DayOf(vData) then
                vData := EncodeDate(YearOf(vData),MonthOf(vData),vDiaIni);
            end;
          end
          else
            vData := vData + CurrencyEdit4.AsInteger;
        end;
        i := i + 1;
      end;
    end;
  except
    raise;
  end;
end;

procedure TfrmCadDuplicata_Gerar.btnExcluirClick(Sender: TObject);
begin
  if fDMCadDuplicata.mGerarDup.IsEmpty then
    exit;
  fDMCadDuplicata.mGerarDup.First;
  while not fDMCadDuplicata.mGerarDup.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
      fDMCadDuplicata.mGerarDup.Delete
    else
      fDMCadDuplicata.mGerarDup.Next;
  end;
end;

end.
