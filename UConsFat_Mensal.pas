unit UConsFat_Mensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit,
  ExtCtrls, NxCollection, RxLookup, UDMConsFat_Mensal, Grids, DBGrids, SMDBGrid, DB;

type
  TfrmConsFat_Mensal = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnConsultar: TNxButton;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure ComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMConsFat_Mensal: TDMConsFat_Mensal;

    procedure prc_Consultar;

  public
    { Public declarations }
    vID_Cliente: Integer;
  end;

var
  frmConsFat_Mensal: TfrmConsFat_Mensal;

implementation

uses rsDBUtils, DateUtils;

{$R *.dfm}

procedure TfrmConsFat_Mensal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsFat_Mensal.FormShow(Sender: TObject);
begin
  fDMConsFat_Mensal := TDMConsFat_Mensal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFat_Mensal);
  if fDMConsFat_Mensal.cdsFilial.RecordCount <= 1 then
    RxDBLookupCombo2.KeyValue := fDMConsFat_Mensal.cdsFilialID.AsInteger;
  ComboBox2.ItemIndex     := (MonthOf(Date) - 1);
  CurrencyEdit1.AsInteger := YearOf(Date);
  if vID_Cliente > 0 then
    RxDBLookupCombo1.KeyValue := vID_Cliente;
  if RxDBLookupCombo1.Text <> '' then
    btnConsultarClick(Sender);
end;

procedure TfrmConsFat_Mensal.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo2.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmConsFat_Mensal.prc_Consultar;
var
  vCNPJ_CPF: String;
  vVlrTotal: Real;
begin
  vCNPJ_CPF := '';
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMConsFat_Mensal.cdsCliente.Locate('CODIGO',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
    if fDMConsFat_Mensal.cdsClientePESSOA.AsString = 'J' then
      vCNPJ_CPF := copy(fDMConsFat_Mensal.cdsClienteCNPJ_CPF.AsString,1,10)
    else
      vCNPJ_CPF := fDMConsFat_Mensal.cdsClienteCNPJ_CPF.AsString;
  end;
  fDMConsFat_Mensal.cdsConsulta_Fat.Close;
  fDMConsFat_Mensal.sdsConsulta_Fat.CommandText := fDMConsFat_Mensal.ctConsulta_Fat + ' AND NS.FILIAL = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo1.Text <> '' then
    fDMConsFat_Mensal.sdsConsulta_Fat.CommandText := fDMConsFat_Mensal.sdsConsulta_Fat.CommandText + ' AND CLI.CNPJ_CPF LIKE ' + QuotedStr(vCNPJ_CPF+'%');
  if ComboBox2.ItemIndex >= 0 then
    fDMConsFat_Mensal.sdsConsulta_Fat.CommandText := fDMConsFat_Mensal.sdsConsulta_Fat.CommandText + ' AND EXTRACT(MONTH FROM NS.DTEMISSAO_CAD) = ' + IntToStr(ComboBox2.ItemIndex + 1);

  if CurrencyEdit1.AsInteger > 0 then
    fDMConsFat_Mensal.sdsConsulta_Fat.CommandText := fDMConsFat_Mensal.sdsConsulta_Fat.CommandText + ' AND EXTRACT(YEAR FROM NS.DTEMISSAO_CAD) = ' + IntToStr(CurrencyEdit1.AsInteger);
  fDMConsFat_Mensal.cdsConsulta_Fat.Open;

  SMDBGrid1.DisableScroll;
  vVlrTotal := 0;
  fDMConsFat_Mensal.cdsConsulta_Fat.First;
  while not fDMConsFat_Mensal.cdsConsulta_Fat.Eof do
  begin
    vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + fDMConsFat_Mensal.cdsConsulta_FatVLR_TOTAL.AsFloat));
    fDMConsFat_Mensal.cdsConsulta_Fat.Next;
  end;
  SMDBGrid1.EnableScroll;
  Label6.Caption := FormatFloat('###,###,##0.00',vVlrTotal);
end;

procedure TfrmConsFat_Mensal.ComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 27 then
    ComboBox2.ItemIndex := -1;
end;

end.
