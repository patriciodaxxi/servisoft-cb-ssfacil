unit UConsPedido_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsPedido, CurrEdit, StdCtrls, ExtCtrls, Mask, ToolEdit,
  RxLookup, NxEdit, NxCollection, Grids, DBGrids, SMDBGrid, RzTabs;

type
  TfrmConsPedido_Proc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox2: TComboBox;
    CurrencyEdit1: TCurrencyEdit;
    NxComboBox2: TNxComboBox;
    btnConsultar: TNxButton;
    RzPageControl1: TRzPageControl;
    TS_Resumido: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsPedido_Proc: TfrmConsPedido_Proc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsPedido_Proc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMConsPedido);
  Action := Cafree;
end;

procedure TfrmConsPedido_Proc.FormShow(Sender: TObject);
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
end;

procedure TfrmConsPedido_Proc.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsPedido_Proc.prc_Consultar;
begin
  fDMConsPedido.cdsConsPedido_Proc.Close;
  fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.ctConsPedido_Proc + ' WHERE TIPO_REG = ' + QuotedStr('P')
                                                + ' AND PED.TIPO_STATUS IS NOT NULL ';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PED.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if trim(Edit1.Text) <> '' then
    fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(Edit1.Text);
  if DateEdit1.Date > 10 then
    fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if NxComboBox2.ItemIndex = 0 then
  begin
    case ComboBox2.ItemIndex of
      //1 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('') + ' AND PED.FATURADO = ' + QuotedStr('N');
      2 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('C');
      3 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('E');
      4 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('F');
    end;
  end
  else
  if NxComboBox2.ItemIndex = 1 then
  begin
    case ComboBox2.ItemIndex of
      1 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('C');
      2 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('E');
      3 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('F');
      4 : fDMConsPedido.sdsConsPedido_Proc.CommandText := fDMConsPedido.sdsConsPedido_Proc.CommandText + ' AND PP.TIPO_STATUS = ' + QuotedStr('T');
    end;
  end;
  fDMConsPedido.cdsConsPedido_Proc.Open;
end;

procedure TfrmConsPedido_Proc.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsConsPedido_Proc.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
