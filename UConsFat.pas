unit UConsFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, NxCollection,
  StdCtrls, NxEdit, RxLookup, RzLstBox, RzChkLst, Grids, DBGrids, SMDBGrid, UDMConsFat, ExtCtrls,
  ComObj, DB, DateUtils, RzTabs;

type
  TfrmConsFat = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    NxDatePicker1: TNxDatePicker;
    Label2: TLabel;
    NxDatePicker2: TNxDatePicker;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RzCheckList1: TRzCheckList;
    btnConsultar: TNxButton;
    btnCancelar: TNxButton;
    Panel1: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    btImprimir: TNxButton;
    btExcel: TNxButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel2: TPanel;
    RzPageControl1: TRzPageControl;
    ts_Geral: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    ts_Cliente: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    ts_Data: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsFat: TDMConsFat;
    procedure prc_Consultar;
    procedure prc_CriaExcel(vDados: TDataSource);
  public
    { Public declarations }
  end;

var
  frmConsFat: TfrmConsFat;

implementation

uses
  rsDBUtils, StrUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsFat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fDMConsFat);
  Action := Cafree;
end;

procedure TfrmConsFat.FormShow(Sender: TObject);
begin
  fDMConsFat := TDMConsFat.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFat);
  if (fDMConsFat.cdsFilial.RecordCount = 1) and (fDMConsFat.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsFat.cdsFilialID.AsInteger;

  NxDatePicker1.Date := incMonth(EncodeDate(YearOf(Date), MonthOf(Date), 01), -1);
  NxDatePicker2.Date := EncodeDate(YearOf(Date), MonthOf(Date), 01) - 1;
  RzPageControl1.ActivePage := ts_Geral;
end;

procedure TfrmConsFat.btnConsultarClick(Sender: TObject);
begin
  if (NxDatePicker1.Date <= 10) or (NxDatePicker2.Date <= 10) then
  begin
    MessageDlg('*** Data não informada!', mtInformation, [mbOk], 0);
    Exit;
  end;
  if NxDatePicker1.Date > NxDatePicker2.Date then
  begin
    MessageDlg('*** Data inicial não pode ser maior que a final!', mtInformation, [mbOk], 0);
    Exit;
  end;
  prc_Consultar;
end;

procedure TfrmConsFat.prc_Consultar;
var
  vComando: string;
  vComandoAux: string;
  i: Integer;
  vTexto: array[1..8] of string;
  vTexto2: string;
  vVlr_Total, vVlr_Total_Bru, vVlr_Total_Liq, vVlr_IPI, vVlr_ST, vVlr_ICMS, vVlr_PIS, vVlr_COFINS, vVlr_Desconto: Real;
  vVlr_Frete: Real;
  vVlr_Devolucao: Real;
  vVlr_ICMS_UF_Dest: Real;
  vVlr_IR, vVlr_CSLL: Real;
  vAux: Real;
  vVlr_Custo: Real;
begin
  vVlr_Total := 0;
  vVlr_Total_Bru := 0;
  vVlr_Total_Liq := 0;
  vVlr_IPI := 0;
  vVlr_ST := 0;
  vVlr_ICMS := 0;
  vVlr_PIS := 0;
  vVlr_COFINS := 0;
  vVlr_Desconto := 0;
  vVlr_Frete := 0;
  vVlr_Devolucao := 0;
  vVlr_ICMS_UF_Dest := 0;
  vVlr_IR := 0;
  vVlr_CSLL := 0;
  vVlr_Custo := 0;

  if RzPageControl1.ActivePage = ts_Geral then
  begin
    vComando := 'SELECT V.*, (V.VLR_TOTAL + V.VLR_IPI + V.VLR_FRETE) VLR_TOTAL_BRU ';
    vComandoAux := ' FROM VFAT_ACUM V ';
    for i := 1 to 8 do
      vTexto[i] := '';
    if not RzCheckList1.ItemChecked[1] then
      vTexto[1] := 'V.VLR_TOTAL + V.VLR_IPI'
    else
      vTexto[1] := 'V.VLR_TOTAL';
    if not RzCheckList1.ItemChecked[6] then
      vTexto[1] := vTexto[1] + ' + V.VLR_FRETE';
    if RzCheckList1.ItemChecked[2] then
      vTexto[2] := ' - V.VLR_ICMSSUBST';
    if RzCheckList1.ItemChecked[3] then
      vTexto[3] := ' - V.VLR_ICMS';
    if RzCheckList1.ItemChecked[4] then
      vTexto[4] := ' - V.VLR_PIS';
    if RzCheckList1.ItemChecked[5] then
      vTexto[5] := ' - V.VLR_COFINS';
    if RzCheckList1.ItemChecked[7] then
      vTexto[6] := ' - V.VLR_ICMS_UF_DEST';
    if RzCheckList1.ItemChecked[8] then
      vTexto[7] := ' - V.VLR_IR_VENDA';
    if RzCheckList1.ItemChecked[9] then
      vTexto[8] := ' - V.VLR_CSLL_VENDA';

  //if RzCheckList1.ItemChecked[6] then
  //  vTexto[6] := ' - V.VLR_FRETE';
    vTexto2 := '';
    for i := 1 to 8 do
      vTexto2 := vTexto2 + vTexto[i];
    if trim(vTexto2) <> '' then
      vComando := vComando + ', (' + vTexto2 + ') VLR_TOTAL_LIQ ';
    vComando := vComando + vComandoAux;
    fDMConsFat.cdsFatAcum.Close;
    fDMConsFat.sdsFatAcum.CommandText := vComando + ' WHERE 0 = 0 ';
    if RxDBLookupCombo1.Text <> '' then
      fDMConsFat.sdsFatAcum.CommandText := fDMConsFat.sdsFatAcum.CommandText + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if NxDatePicker1.Date > 10 then
      fDMConsFat.sdsFatAcum.CommandText := fDMConsFat.sdsFatAcum.CommandText + ' AND V.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker1.date));
    if NxDatePicker2.Date > 10 then
      fDMConsFat.sdsFatAcum.CommandText := fDMConsFat.sdsFatAcum.CommandText + ' AND V.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker2.date));
    if RxDBLookupCombo2.KeyValue > 0 then
      fDMConsFat.sdsFatAcum.CommandText := fDMConsFat.sdsFatAcum.CommandText + ' AND V.TERMINAL = ' + RxDBLookupCombo2.Value;
    fDMConsFat.cdsFatAcum.IndexFieldNames := 'NUM_NOTA;CODCFOP';
    fDMConsFat.cdsFatAcum.Open;
    SMDBGrid1.DisableScroll;
    fDMConsFat.cdsFatAcum.First;
    while not fDMConsFat.cdsFatAcum.Eof do
    begin
      if fDMConsFat.cdsFatAcumDEVOLUCAO.AsString = 'S' then
        vVlr_Devolucao := vVlr_Devolucao + fDMConsFat.cdsFatAcumVLR_TOTAL_LIQ.AsFloat
      else
      begin
        vVlr_Total := vVlr_Total + fDMConsFat.cdsFatAcumVLR_TOTAL.AsFloat;
        vVlr_Total_Bru := vVlr_Total_Bru + fDMConsFat.cdsFatAcumVLR_TOTAL_BRU.AsFloat;
        vVlr_Total_Liq := vVlr_Total_Liq + fDMConsFat.cdsFatAcumVLR_TOTAL_LIQ.AsFloat;
        vVlr_IPI := vVlr_IPI + fDMConsFat.cdsFatAcumVLR_IPI.AsFloat;
        vVlr_ST := vVlr_ST + fDMConsFat.cdsFatAcumVLR_ICMSSUBST.AsFloat;
        vVlr_ICMS := vVlr_ICMS + fDMConsFat.cdsFatAcumVLR_ICMS.AsFloat;
        vVlr_PIS := vVlr_PIS + fDMConsFat.cdsFatAcumVLR_PIS.AsFloat;
        vVlr_COFINS := vVlr_COFINS + fDMConsFat.cdsFatAcumVLR_COFINS.AsFloat;
        vVlr_Desconto := vVlr_Desconto + fDMConsFat.cdsFatAcumVLR_DESCONTO.AsFloat;
        vVlr_ICMS_UF_Dest := vVlr_ICMS_UF_Dest + fDMConsFat.cdsFatAcumVLR_ICMS_UF_DEST.AsFloat;
        vVlr_CSLL := vVlr_CSLL + fDMConsFat.cdsFatAcumVLR_CSLL_VENDA.AsFloat;
        vVlr_IR := vVlr_IR + fDMConsFat.cdsFatAcumVLR_IR_VENDA.AsFloat;
        vVlr_Custo := vVlr_Custo + fDMConsFat.cdsFatAcumVLR_CUSTO.AsFloat;
        vVlr_Frete := vVlr_Frete + fDMConsFat.cdsFatAcumVLR_FRETE.AsFloat;
      end;
      fDMConsFat.cdsFatAcum.Next;
    end;
    SMDBGrid1.EnableScroll;
  end;

  if RzPageControl1.ActivePage = ts_Cliente then
  begin
    vComando := 'SELECT ID_PESSOA, NOME_CLIFORN, SUM(VLR_DUPLICATA) VLR_DUPLICATA, SUM(VLR_ICMS) VLR_ICMS,';
    vComando := vComando + ' SUM(VLR_TOTAL) VLR_TOTAL, SUM(VLR_ICMSSUBST) VLR_ICMSSUBST, SUM(VLR_IPI) VLR_IPI,';
    vComando := vComando + ' SUM(VLR_FRETE) VLR_FRETE, SUM(VLR_ICMS_UF_REMET) VLR_ICMS_UF_REMET, SUM(VLR_ICMS_UF_DEST) VLR_ICMS_UF_DEST,';
    vComando := vComando + ' SUM(VLR_DESCONTO) VLR_DESCONTO, SUM(VLR_COFINS) VLR_COFINS, SUM(VLR_PIS) VLR_PIS,';
    vComando := vComando + ' SUM(VLR_CUSTO) VLR_CUSTO, SUM(VLR_IR_VENDA) VLR_IR_VENDA, SUM(VLR_CSLL_VENDA) VLR_CSLL_VENDA,';
    vcomando := vcomando + '(SUM(V.VLR_TOTAL) + SUM(V.VLR_IPI) + SUM(V.VLR_FRETE)) VLR_TOTAL_BRU';
    vComandoAux := ' FROM VFAT_ACUM V ';
    for i := 1 to 8 do
      vTexto[i] := '';
    if not RzCheckList1.ItemChecked[1] then
      vTexto[1] := 'SUM(V.VLR_TOTAL) + SUM(V.VLR_IPI)'
    else
      vTexto[1] := 'SUM(V.VLR_TOTAL)';
    if not RzCheckList1.ItemChecked[6] then
      vTexto[1] := vTexto[1] + ' + SUM(V.VLR_FRETE)';
    if RzCheckList1.ItemChecked[2] then
      vTexto[2] := ' - SUM(V.VLR_ICMSSUBST)';
    if RzCheckList1.ItemChecked[3] then
      vTexto[3] := ' - SUM(V.VLR_ICMS)';
    if RzCheckList1.ItemChecked[4] then
      vTexto[4] := ' - SUM(V.VLR_PIS)';
    if RzCheckList1.ItemChecked[5] then
      vTexto[5] := ' - SUM(V.VLR_COFINS)';
    if RzCheckList1.ItemChecked[7] then
      vTexto[6] := ' - SUM(V.VLR_ICMS_UF_DEST)';
    if RzCheckList1.ItemChecked[8] then
      vTexto[7] := ' - SUM(V.VLR_IR_VENDA)';
    if RzCheckList1.ItemChecked[9] then
      vTexto[8] := ' - SUM(V.VLR_CSLL_VENDA)';

  //if RzCheckList1.ItemChecked[6] then
  //  vTexto[6] := ' - V.VLR_FRETE';
    vTexto2 := '';
    for i := 1 to 8 do
      vTexto2 := vTexto2 + vTexto[i];
    if trim(vTexto2) <> '' then
      vComando := vComando + ', (' + vTexto2 + ') VLR_TOTAL_LIQ ';
    vComando := vComando + vComandoAux;
    fDMConsFat.cdsConsCliente.Close;
    fDMConsFat.sdsConsCliente.CommandText := vComando + ' WHERE 0 = 0 ';
    if RxDBLookupCombo1.Text <> '' then
      fDMConsFat.sdsConsCliente.CommandText := fDMConsFat.sdsConsCliente.CommandText + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if NxDatePicker1.Date > 10 then
      fDMConsFat.sdsConsCliente.CommandText := fDMConsFat.sdsConsCliente.CommandText + ' AND V.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker1.date));
    if NxDatePicker2.Date > 10 then
      fDMConsFat.sdsConsCliente.CommandText := fDMConsFat.sdsConsCliente.CommandText + ' AND V.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker2.date));
    if RxDBLookupCombo2.KeyValue > 0 then
      fDMConsFat.sdsConsCliente.CommandText := fDMConsFat.sdsConsCliente.CommandText + ' AND V.TERMINAL = ' + RxDBLookupCombo2.Value;
    fDMConsFat.sdsConsCliente.CommandText := fDMConsFat.sdsConsCliente.CommandText + ' GROUP BY ID_PESSOA, NOME_CLIFORN';
    fDMConsFat.cdsConsCliente.Open;
    SMDBGrid2.DisableScroll;
    fDMConsFat.cdsConsCliente.First;
    while not fDMConsFat.cdsConsCliente.Eof do
    begin
      begin
        vVlr_Total := vVlr_Total + fDMConsFat.cdsConsClienteVLR_TOTAL.AsFloat;
        vVlr_Total_Bru := vVlr_Total_Bru + fDMConsFat.cdsConsClienteVLR_TOTAL_BRU.AsFloat;
        vVlr_Total_Liq := vVlr_Total_Liq + fDMConsFat.cdsConsClienteVLR_TOTAL_LIQ.AsFloat;
        vVlr_IPI := vVlr_IPI + fDMConsFat.cdsConsClienteVLR_IPI.AsFloat;
        vVlr_ST := vVlr_ST + fDMConsFat.cdsConsClienteVLR_ICMSSUBST.AsFloat;
        vVlr_ICMS := vVlr_ICMS + fDMConsFat.cdsConsClienteVLR_ICMS.AsFloat;
        vVlr_PIS := vVlr_PIS + fDMConsFat.cdsConsClienteVLR_PIS.AsFloat;
        vVlr_COFINS := vVlr_COFINS + fDMConsFat.cdsConsClienteVLR_COFINS.AsFloat;
        vVlr_Desconto := vVlr_Desconto + fDMConsFat.cdsConsClienteVLR_DESCONTO.AsFloat;
        vVlr_ICMS_UF_Dest := vVlr_ICMS_UF_Dest + fDMConsFat.cdsConsClienteVLR_ICMS_UF_DEST.AsFloat;
        vVlr_CSLL := vVlr_CSLL + fDMConsFat.cdsConsClienteVLR_CSLL_VENDA.AsFloat;
        vVlr_IR := vVlr_IR + fDMConsFat.cdsConsClienteVLR_IR_VENDA.AsFloat;
        vVlr_Custo := vVlr_Custo + fDMConsFat.cdsConsClienteVLR_CUSTO.AsFloat;
        vVlr_Frete := vVlr_Frete + fDMConsFat.cdsConsClienteVLR_FRETE.AsFloat;
      end;
      fDMConsFat.cdsConsCliente.Next;
    end;
    SMDBGrid2.EnableScroll;
  end;

  if RzPageControl1.ActivePage = ts_Data then
  begin
    vComando := 'SELECT DTEMISSAO, SUM(VLR_DUPLICATA) VLR_DUPLICATA, SUM(VLR_ICMS) VLR_ICMS,';
    vComando := vComando + ' SUM(VLR_TOTAL) VLR_TOTAL, SUM(VLR_ICMSSUBST) VLR_ICMSSUBST, SUM(VLR_IPI) VLR_IPI,';
    vComando := vComando + ' SUM(VLR_FRETE) VLR_FRETE, SUM(VLR_ICMS_UF_REMET) VLR_ICMS_UF_REMET, SUM(VLR_ICMS_UF_DEST) VLR_ICMS_UF_DEST,';
    vComando := vComando + ' SUM(VLR_DESCONTO) VLR_DESCONTO, SUM(VLR_COFINS) VLR_COFINS, SUM(VLR_PIS) VLR_PIS,';
    vComando := vComando + ' SUM(VLR_CUSTO) VLR_CUSTO, SUM(VLR_IR_VENDA) VLR_IR_VENDA, SUM(VLR_CSLL_VENDA) VLR_CSLL_VENDA,';
    vcomando := vcomando + '(SUM(V.VLR_TOTAL) + SUM(V.VLR_IPI) + SUM(V.VLR_FRETE)) VLR_TOTAL_BRU';
    vComandoAux := ' FROM VFAT_ACUM V ';
    for i := 1 to 8 do
      vTexto[i] := '';
    if not RzCheckList1.ItemChecked[1] then
      vTexto[1] := 'SUM(V.VLR_TOTAL) + SUM(V.VLR_IPI)'
    else
      vTexto[1] := 'SUM(V.VLR_TOTAL)';
    if not RzCheckList1.ItemChecked[6] then
      vTexto[1] := vTexto[1] + ' + SUM(V.VLR_FRETE)';
    if RzCheckList1.ItemChecked[2] then
      vTexto[2] := ' - SUM(V.VLR_ICMSSUBST)';
    if RzCheckList1.ItemChecked[3] then
      vTexto[3] := ' - SUM(V.VLR_ICMS)';
    if RzCheckList1.ItemChecked[4] then
      vTexto[4] := ' - SUM(V.VLR_PIS)';
    if RzCheckList1.ItemChecked[5] then
      vTexto[5] := ' - SUM(V.VLR_COFINS)';
    if RzCheckList1.ItemChecked[7] then
      vTexto[6] := ' - SUM(V.VLR_ICMS_UF_DEST)';
    if RzCheckList1.ItemChecked[8] then
      vTexto[7] := ' - SUM(V.VLR_IR_VENDA)';
    if RzCheckList1.ItemChecked[9] then
      vTexto[8] := ' - SUM(V.VLR_CSLL_VENDA)';

  //if RzCheckList1.ItemChecked[6] then
  //  vTexto[6] := ' - V.VLR_FRETE';
    vTexto2 := '';
    for i := 1 to 8 do
      vTexto2 := vTexto2 + vTexto[i];
    if trim(vTexto2) <> '' then
      vComando := vComando + ', (' + vTexto2 + ') VLR_TOTAL_LIQ ';
    vComando := vComando + vComandoAux;
    fDMConsFat.cdsConsData.Close;
    fDMConsFat.sdsConsData.CommandText := vComando + ' WHERE 0 = 0 ';
    if RxDBLookupCombo1.Text <> '' then
      fDMConsFat.sdsConsData.CommandText := fDMConsFat.sdsConsData.CommandText + ' AND V.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if NxDatePicker1.Date > 10 then
      fDMConsFat.sdsConsData.CommandText := fDMConsFat.sdsConsData.CommandText + ' AND V.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker1.date));
    if NxDatePicker2.Date > 10 then
      fDMConsFat.sdsConsData.CommandText := fDMConsFat.sdsConsData.CommandText + ' AND V.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker2.date));
    if RxDBLookupCombo2.KeyValue > 0 then
      fDMConsFat.sdsConsData.CommandText := fDMConsFat.sdsConsData.CommandText + ' AND V.TERMINAL = ' + RxDBLookupCombo2.Value;
    fDMConsFat.sdsConsData.CommandText := fDMConsFat.sdsConsData.CommandText + ' GROUP BY DTEMISSAO';
    fDMConsFat.cdsConsData.Open;
    SMDBGrid3.DisableScroll;
    fDMConsFat.cdsConsData.First;
    while not fDMConsFat.cdsConsData.Eof do
    begin
      begin
        vVlr_Total := vVlr_Total + fDMConsFat.cdsConsDataVLR_TOTAL.AsFloat;
        vVlr_Total_Bru := vVlr_Total_Bru + fDMConsFat.cdsConsDataVLR_TOTAL_BRU.AsFloat;
        vVlr_Total_Liq := vVlr_Total_Liq + fDMConsFat.cdsConsDataVLR_TOTAL_LIQ.AsFloat;
        vVlr_IPI := vVlr_IPI + fDMConsFat.cdsConsDataVLR_IPI.AsFloat;
        vVlr_ST := vVlr_ST + fDMConsFat.cdsConsDataVLR_ICMSSUBST.AsFloat;
        vVlr_ICMS := vVlr_ICMS + fDMConsFat.cdsConsDataVLR_ICMS.AsFloat;
        vVlr_PIS := vVlr_PIS + fDMConsFat.cdsConsDataVLR_PIS.AsFloat;
        vVlr_COFINS := vVlr_COFINS + fDMConsFat.cdsConsDataVLR_COFINS.AsFloat;
        vVlr_Desconto := vVlr_Desconto + fDMConsFat.cdsConsDataVLR_DESCONTO.AsFloat;
        vVlr_ICMS_UF_Dest := vVlr_ICMS_UF_Dest + fDMConsFat.cdsConsDataVLR_ICMS_UF_DEST.AsFloat;
        vVlr_CSLL := vVlr_CSLL + fDMConsFat.cdsConsDataVLR_CSLL_VENDA.AsFloat;
        vVlr_IR := vVlr_IR + fDMConsFat.cdsConsDataVLR_IR_VENDA.AsFloat;
        vVlr_Custo := vVlr_Custo + fDMConsFat.cdsConsDataVLR_CUSTO.AsFloat;
        vVlr_Frete := vVlr_Frete + fDMConsFat.cdsConsDataVLR_FRETE.AsFloat;
      end;
      fDMConsFat.cdsConsData.Next;
    end;
    SMDBGrid3.EnableScroll;
  end;

  Label24.Caption := FormatFloat('###,###,##0.00', vVlr_Total);
  Label26.Caption := FormatFloat('###,###,##0.00', vVlr_Total_Bru);
  Label28.Caption := FormatFloat('###,###,##0.00', vVlr_Total_Liq);

  Label32.Caption := FormatFloat('###,###,##0.00', vVlr_IPI);
  Label31.Caption := FormatFloat('###,###,##0.00', vVlr_ST);
  Label33.Caption := FormatFloat('###,###,##0.00', vVlr_ICMS);
  Label10.Caption := FormatFloat('###,###,##0.00', vVlr_ICMS_UF_Dest);

  Label36.Caption := FormatFloat('###,###,##0.00', vVlr_PIS);
  Label38.Caption := FormatFloat('###,###,##0.00', vVlr_COFINS);
  Label40.Caption := FormatFloat('###,###,##0.00', vVlr_Desconto);
  Label42.Caption := FormatFloat('###,###,##0.00', vVlr_Frete);

  Label14.Caption := FormatFloat('###,###,##0.00', vVlr_IR);
  Label13.Caption := FormatFloat('###,###,##0.00', vVlr_CSLL);

  Label16.Caption := FormatFloat('###,###,##0.00', vVlr_Custo);

  vAux := StrToFloat(FormatFloat('0.00', vVlr_Total_Liq - vVlr_Devolucao));
  Label8.Caption := FormatFloat('###,###,##0.00', vAux);
end;

procedure TfrmConsFat.btImprimirClick(Sender: TObject);
var
  vArq: string;
begin
  if RzPageControl1.ActivePage = ts_Geral then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento.fr3';
  if RzPageControl1.ActivePage = ts_Cliente then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Cliente.fr3';
  if RzPageControl1.ActivePage = ts_Data then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Faturamento_Data.fr3';
  if FileExists(vArq) then
    fDMConsFat.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMConsFat.vDataIni := FormatDateTime('DD/MM/YYYY', NxDatePicker1.Date);
  fDMConsFat.vDataFim := FormatDateTime('DD/MM/YYYY', NxDatePicker2.Date);
  fDMConsFat.frxReport1.ShowReport;
end;

procedure TfrmConsFat.btExcelClick(Sender: TObject);
begin
  if not fDMConsFat.cdsFatAcum.IsEmpty then
    prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmConsFat.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
  vAux: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  vTexto := ExtractFilePath(Application.ExeName) + 'Excel\';
  vTexto := vTexto + 'Fat_' + FormatDateTime('yyyy-mm-dd', NxDatePicker1.Date) + '_' + FormatDateTime('yyyy-mm-dd', NxDatePicker2.Date);
  vAux := Monta_Numero(FormatDateTime('hh:mm:ss', now), 0);
  vTexto := vTexto + '_' + vAux;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  //prc_Preencher_Excel(planilha, vDados);

  prc_Preencher_Excel2(planilha, vDados, SMDBGrid1);

  planilha.columns.Autofit;

  vAux := ExtractFilePath(vTexto);
  if not DirectoryExists(vAux) then
  begin
    MessageDlg('*** Pasta   ' + vAux + '   não existe!', mtInformation, [mbOk], 0);
    CreateDir(vAux);
  end;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmConsFat.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsFat.cdsFatAcum.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.

