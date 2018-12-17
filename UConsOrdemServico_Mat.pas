unit UConsOrdemServico_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls, ToolEdit, 
  NxCollection, RxLookup, Mask, CurrEdit, StdCtrls, Grids, DBGrids, SMDBGrid, DB, Buttons, UConsOrdemServico_Nota, ComObj,
  RzTabs;

type
  TfrmConsOrdemServico_Mat = class(TForm)
    pnlPesquisa: TPanel;
    lblCliente: TLabel;
    lblNumNota: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    NxButton1: TNxButton;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    NxButton2: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure prc_CriaExcel(vDados: TDataSource);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    ffrmConsOrdemServico_Nota: TfrmConsOrdemServico_Nota;
    procedure prc_Consultar;
    procedure prc_Consultar_Extrato;
  public
    { Public declarations }
  end;

var
  frmConsOrdemServico_Mat: TfrmConsOrdemServico_Mat;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsOrdemServico_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsOrdemServico_Mat.FormShow(Sender: TObject);
begin
  fDMCadOrdemServico := TDMCadOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  RzPageControl1.ActivePageIndex := 0;
end;

procedure TfrmConsOrdemServico_Mat.btnConsultarClick(Sender: TObject);
begin
  case RzPageControl1.ActivePageIndex of
    0: prc_Consultar;
    1: prc_Consultar_Extrato;
  end;
end;

procedure TfrmConsOrdemServico_Mat.prc_Consultar;
var
  vComando: String;
begin
  fDMCadOrdemServico.cdsConsulta_Mat.Close;
  fDMCadOrdemServico.sdsConsulta_Mat.CommandText := fDMCadOrdemServico.ctConsulta_Mat;
  vComando := '';
  vComando := vComando + ' WHERE 0 = 0 ';
  if not(RxDBLookupCombo1.Text = '') then
    vComando := vComando + ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND OS.NUM_NOTA = ' + CurrencyEdit1.Text;
  if CurrencyEdit3.AsInteger > 0 then
    vComando := vComando + ' AND OS.NUM_OC = ' + CurrencyEdit1.Text;
  if Trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                         + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
  if DateEdit1.Date > 10 then
    vComando := vComando +' AND IT.DTCONCLUIDO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando +' AND IT.DTCONCLUIDO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit3.Date > 10 then
    vComando := vComando +' AND OS.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando +' AND OS.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  if DateEdit5.Date > 10 then
    vComando := vComando +' AND OS.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  if DateEdit6.Date > 10 then
    vComando := vComando +' AND OS.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  case RadioGroup1.ItemIndex of
    0: vComando := vComando + ' AND (MAT.QTD_RESTANTE > 0) AND (FATURAR = ' + QuotedStr('S') + ')';
    1: vComando := vComando + ' AND (MAT.QTD_FATURADO > 0) AND (FATURAR = ' + QuotedStr('S') + ')';
    2: vComando := vComando + ' AND (FATURAR = ' + QuotedStr('S') + ')';
    3: vComando := vComando + ' AND (FATURAR = ' + QuotedStr('N') + ')';
  end;
  vComando := vComando + ' AND (IT.TIPO_APROV = ' + QuotedStr('A') + ')';
  fDMCadOrdemServico.sdsConsulta_Mat.CommandText := fDMCadOrdemServico.sdsConsulta_Mat.CommandText + vComando;
  fDMCadOrdemServico.cdsConsulta_Mat.Open;
end;

procedure TfrmConsOrdemServico_Mat.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsConsulta_MatQTD_FATURADO_MAT.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsConsulta_MatQTD_RESTANTE_MAT.AsFloat)) > 0) then
    Background := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsConsulta_MatQTD_RESTANTE_MAT.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsConsulta_MatQTD_FATURADO_MAT.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsOrdemServico_Mat.BitBtn3Click(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsConsulta_Mat.Active) or (fDMCadOrdemServico.cdsConsulta_Mat.IsEmpty) then
    exit;

  fDMCadOrdemServico.cdsOS_Nota.Close;
  fDMCadOrdemServico.sdsOS_Nota.ParamByName('ID_OS').AsInteger       := fDMCadOrdemServico.cdsConsulta_MatID_OS.AsInteger;
  fDMCadOrdemServico.sdsOS_Nota.ParamByName('ITEM_OS').AsInteger     := fDMCadOrdemServico.cdsConsulta_MatITEM_OS.AsInteger;
  fDMCadOrdemServico.sdsOS_Nota.ParamByName('ITEM_OS_MAT').AsInteger := fDMCadOrdemServico.cdsConsulta_MatITEM_MAT.AsInteger;
  fDMCadOrdemServico.cdsOS_Nota.Open;

  ffrmConsOrdemServico_Nota := TfrmConsOrdemServico_Nota.Create(self);
  ffrmConsOrdemServico_Nota.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmConsOrdemServico_Nota.ShowModal;
  FreeAndNil(ffrmConsOrdemServico_Nota);
end;

procedure TfrmConsOrdemServico_Mat.NxButton1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmConsOrdemServico_Mat.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := True;

  prc_Preencher_Excel(planilha, vDados);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmConsOrdemServico_Mat.prc_Consultar_Extrato;
var
  vComando: String;
begin
  fDMCadOrdemServico.cdsConsultaMat2.Close;
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' WHERE OS.NUM_OS = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    vComando := vComando + ' WHERE 0 = 0 ';
    if not(RxDBLookupCombo1.Text = '') then
      vComando := vComando + ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if CurrencyEdit2.AsInteger > 0 then
      vComando := vComando + ' AND OS.NUM_NOTA = ' + CurrencyEdit1.Text;
    if CurrencyEdit3.AsInteger > 0 then
      vComando := vComando + ' AND OS.NUM_OC = ' + CurrencyEdit1.Text;
    if Trim(Edit2.Text) <> '' then
      vComando := vComando + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                           + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
    if DateEdit1.Date > 10 then
      vComando := vComando +' AND IT.DTCONCLUIDO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando +' AND IT.DTCONCLUIDO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if DateEdit3.Date > 10 then
      vComando := vComando +' AND OS.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      vComando := vComando +' AND OS.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando +' AND OS.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
    if DateEdit6.Date > 10 then
      vComando := vComando +' AND OS.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  end;

  fDMCadOrdemServico.sdsConsultaMat2.CommandText := fDMCadOrdemServico.ctConsulta_Mat21 + vComando;
  fDMCadOrdemServico.sdsConsultaMat2.CommandText := fDMCadOrdemServico.sdsConsultaMat2.CommandText + ' UNION ';
  fDMCadOrdemServico.sdsConsultaMat2.CommandText := fDMCadOrdemServico.sdsConsultaMat2.CommandText + fDMCadOrdemServico.ctConsulta_Mat22 + vComando;
  fDMCadOrdemServico.cdsConsultaMat2.Open;
end;

procedure TfrmConsOrdemServico_Mat.NxButton2Click(Sender: TObject);
var
  vArq: String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\OS_Pecas.fr3';
  if FileExists(vArq) then
    fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadOrdemServico.frxReport1.ShowReport;
end;

end.
