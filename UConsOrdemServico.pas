unit UConsOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls, RxLookup,
  NxCollection, Mask, ToolEdit, CurrEdit, StdCtrls, Grids, DBGrids, SMDBGrid, DB, ComObj;

type
  TfrmConsOrdemServico = class(TForm)
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
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadOrdemServico : TDMCadOrdemServico;
    procedure prc_Consultar;    
    procedure prc_CriaExcel(vDados: TDataSource);
  public
    { Public declarations }
  end;

var
  frmConsOrdemServico: TfrmConsOrdemServico;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsOrdemServico.FormShow(Sender: TObject);
begin
  fDMCadOrdemServico := TDMCadOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
end;

procedure TfrmConsOrdemServico.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsOrdemServico.prc_Consultar;
var
  vComando: String;
begin
  fDMCadOrdemServico.cdsConsulta_Itens.Close;
  fDMCadOrdemServico.sdsConsulta_Itens.CommandText := fDMCadOrdemServico.ctConsulta_Itens;
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
      vComando := vComando + ' AND IT.DTCONCLUIDO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND IT.DTCONCLUIDO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if DateEdit3.Date > 10 then
      vComando := vComando + ' AND OS.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND OS.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND OS.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
    if DateEdit6.Date > 10 then
      vComando := vComando + ' AND OS.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  end;
  case RadioGroup1.ItemIndex of
    0: vComando := vComando + ' AND (IT.DTCONCLUIDO IS NULL) ';
    1: vComando := vComando + ' AND ((IT.DTCONCLUIDO IS NOT NULL) AND (OS.DTENTREGA IS NULL)) ';
    2: vComando := vComando + ' AND (OS.DTENTREGA IS NOT NULL) ';
  end;
  fDMCadOrdemServico.sdsConsulta_Itens.CommandText := fDMCadOrdemServico.sdsConsulta_Itens.CommandText + vComando;
  fDMCadOrdemServico.cdsConsulta_Itens.Open;
end;

procedure TfrmConsOrdemServico.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsConsulta_ItensTIPO_APROV.AsString = 'Reprovado' then
    AFont.Color := clRed;
end;

procedure TfrmConsOrdemServico.prc_CriaExcel(vDados: TDataSource);
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

procedure TfrmConsOrdemServico.NxButton1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

end.
