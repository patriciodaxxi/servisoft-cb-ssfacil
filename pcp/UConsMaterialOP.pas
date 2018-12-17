unit UConsMaterialOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMBaixaMaterialOP,
  StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, RxLookup, SMDBGrid,
  NxCollection, Mask, ToolEdit, DB, CurrEdit, RzTabs;

type
  TfrmConsMaterialOP = class(TForm)
    Panel1: TPanel;
    btnPesquisa: TBitBtn;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    RzPageControl1: TRzPageControl;
    TS_Material: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtOrdemProducaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPesquisaClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMBaixaMaterial: TDMBaixaMaterial;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsMaterialOP: TfrmConsMaterialOP;

implementation

uses
  uUtilPadrao, rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmConsMaterialOP.FormShow(Sender: TObject);
begin
  fDMBaixaMaterial := TDMBaixaMaterial.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaMaterial);
  fDMBaixaMaterial.prc_Abrir_Filial;
  uUtilPadrao.fnc_Busca_Nome_Filial;
  fDMBaixaMaterial.cdsMaterial.Open;
end;

procedure TfrmConsMaterialOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConsMaterialOP.edtOrdemProducaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnPesquisaClick(Sender);
end;

procedure TfrmConsMaterialOP.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsConsMaterialOPSALDO.AsFloat)) <= 0 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsConsMaterialOPSALDO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsConsMaterialOPQTD_EST_BAIXADO.AsFloat)) > 0) then
  begin
    Background  := clAqua;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsMaterialOP.btnPesquisaClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsMaterialOP.prc_Consultar;
var
  vComando : String;
begin
  vComando := '';
  fDMBaixaMaterial.cdsConsMaterialOP.Close;
  vComando := fDMBaixaMaterial.ctConsMaterialOP + ' WHERE 0 = 0 ';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND LOT.NUM_ORDEM >= ' + IntToStr(CurrencyEdit1.AsInteger);
  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND LOT.NUM_ORDEM <= ' + IntToStr(CurrencyEdit2.AsInteger);
  if trim(RxDBLookupCombo1.Text) <> '' then
    vComando := vComando + ' AND LOT.ID_MATERIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  case RadioGroup1.ItemIndex of
    1 : vComando := vComando + ' AND cast(lot.qtd_consumo - coalesce(lot.qtd_est_baixado,0) as Numeric(15,5)) > 0 ';
    2 : vComando := vComando + ' AND cast(lot.qtd_consumo - coalesce(lot.qtd_est_baixado,0) as Numeric(15,5)) <= 0 ';
  end;
  fDMBaixaMaterial.sdsConsMaterialOP.CommandText := vComando;
  fDMBaixaMaterial.cdsConsMaterialOP.Open;
  fDMBaixaMaterial.cdsConsMaterialOP.IndexFieldNames := 'NUM_ORDEM;NOME;NOME_COR';
end;

procedure TfrmConsMaterialOP.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMBaixaMaterial.cdsConsMaterialOP.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.

