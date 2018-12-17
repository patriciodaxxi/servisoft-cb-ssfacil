unit UMov_Atelier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,DB, dbXPress, SqlExpr, RzTabs,
  CurrEdit, Mask, ToolEdit, RxLookup, Menus, UCBase, ExtCtrls, NxCollection, NxEdit, RzPanel, Grids, DBGrids, SMDBGrid,
  ComCtrls, UDMMov_Atelier;

type
  TfrmMov_Atelier = class(TForm)
    RzPageControl2: TRzPageControl;
    TS_Auxiliar: TRzTabSheet;
    Panel3: TPanel;
    NxLabel1: TNxLabel;
    NxLabel8: TNxLabel;
    NxLabel9: TNxLabel;
    NxLabel10: TNxLabel;
    NxLabel11: TNxLabel;
    Shape1: TShape;
    Label3: TLabel;
    NxLabel12: TNxLabel;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    cbOpcaoTalaoAux: TNxComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    NxComboBox2: TNxComboBox;
    btnConsultar_Talao_Aux: TNxButton;
    CurrencyEdit6: TCurrencyEdit;
    NxLabel13: TNxLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    NxLabel14: TNxLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Shape3: TShape;
    Label4: TLabel;
    btnImpTalao_Aux: TNxButton;
    SMDBGrid3: TSMDBGrid;
    ckMostrarValor: TCheckBox;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultar_Talao_AuxClick(Sender: TObject);
    procedure cbOpcaoTalaoAuxChange(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImpTalao_AuxClick(Sender: TObject);
    procedure ckMostrarValorClick(Sender: TObject);
  private
    { Private declarations }
    fDMMov_Atelier: TDMMov_Atelier;

    procedure prc_Consultar_Talao_Aux;

  public
    { Public declarations }
  end;

var
  frmMov_Atelier: TfrmMov_Atelier;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao, USel_Produto, UMenu, StrUtils;


{$R *.dfm}

procedure TfrmMov_Atelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmMov_Atelier.FormShow(Sender: TObject);
begin
  fDMMov_Atelier := TDMMov_Atelier.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMMov_Atelier);
  ckMostrarValorClick(Sender);
end;

procedure TfrmMov_Atelier.btnConsultar_Talao_AuxClick(Sender: TObject);
begin
  prc_Consultar_Talao_Aux;
end;

procedure TfrmMov_Atelier.prc_Consultar_Talao_Aux;
var
  vComando: String;
begin
  fDMMov_Atelier.cdsConsulta_Talao_Aux.Close;
  vComando := fDMMov_Atelier.ctConsulta_Talao_Aux;
  {case cbOpcaoTalaoAux.ItemIndex of
    0: vComando := vComando + ' WHERE (T.dtretorno is null) and (T.dtsaida is Null) ';
    1: vComando := vComando + ' WHERE (T.dtsaida is not null) and (T.dtretorno is null) ';
    2: vComando := vComando + ' WHERE (T.dtRetorno is not null) ';
  end;
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND T.ID_Atelier = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo4.Text <> '' then
    vComando := vComando + ' AND T.ID_Setor = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND T.ID_Produto = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if CurrencyEdit6.AsInteger > 0 then
    vComando := vComando + ' AND LOTE.NUM_ORDEM = ' + IntToStr(CurrencyEdit6.AsInteger);
  if CurrencyEdit4.AsInteger > 0 then
    vComando := vComando + ' AND LOTE.NUM_LOTE >= ' + IntToStr(CurrencyEdit4.AsInteger);
  if CurrencyEdit5.AsInteger > 0 then
    vComando := vComando + ' AND LOTE.NUM_LOTE <= ' + IntToStr(CurrencyEdit5.AsInteger);
  if NxComboBox2.ItemIndex = 0 then
  begin
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND T.DTSAIDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND T.DTSAIDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  end
  else
  begin
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND T.DTRETORNO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND T.DTRETORNO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  end;}

  case cbOpcaoTalaoAux.ItemIndex of
    0: vComando := vComando + ' WHERE (dtretorno is null) and (dtsaida is Null) ';
    1: vComando := vComando + ' WHERE (dtsaida is not null) and (dtretorno is null) ';
    2: vComando := vComando + ' WHERE (dtRetorno is not null) ';
    3: vComando := vComando + ' WHERE (0 =  0) ';
  end;
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND ID_Atelier = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo4.Text <> '' then
    vComando := vComando + ' AND ID_Setor = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND ID_Produto = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if CurrencyEdit6.AsInteger > 0 then
    vComando := vComando + ' AND NUM_ORDEM = ' + IntToStr(CurrencyEdit6.AsInteger);
  if CurrencyEdit4.AsInteger > 0 then
    vComando := vComando + ' AND NUM_LOTE >= ' + IntToStr(CurrencyEdit4.AsInteger);
  if CurrencyEdit5.AsInteger > 0 then
    vComando := vComando + ' AND NUM_LOTE <= ' + IntToStr(CurrencyEdit5.AsInteger);
  if NxComboBox2.ItemIndex = 0 then
  begin
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND DTSAIDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND DTSAIDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  end
  else
  begin
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND DTRETORNO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 10 then
      vComando := vComando + ' AND DTRETORNO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  end;

  fDMMov_Atelier.sdsConsulta_Talao_Aux.CommandText := vComando;
  fDMMov_Atelier.cdsConsulta_Talao_Aux.Open;
end;

procedure TfrmMov_Atelier.cbOpcaoTalaoAuxChange(Sender: TObject);
begin
  case cbOpcaoTalaoAux.ItemIndex of
    0 ,1: NxComboBox2.ItemIndex := 0;
    2: NxComboBox2.ItemIndex    := 1;
  end;
end;

procedure TfrmMov_Atelier.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMMov_Atelier.cdsConsulta_Talao_AuxDTRETORNO.IsNull) and (fDMMov_Atelier.cdsConsulta_Talao_AuxDTSAIDA.AsDateTime > 10) then
    Background := clYellow
  else
  if fDMMov_Atelier.cdsConsulta_Talao_AuxDTRETORNO.AsDateTime > 10 then
    Background := clMoneyGreen;
end;

procedure TfrmMov_Atelier.btnImpTalao_AuxClick(Sender: TObject);
var
  vArq: String;
begin
  fDMMov_Atelier.vTipo_Rel := 1;
  fDMMov_Atelier.cdsConsulta_Talao_Aux.IndexFieldNames := 'NOME_ATELIER;NUM_ORDEM;NUM_LOTE;ITEM';
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Mov_Atelier.fr3';
  if FileExists(vArq) then
    fDMMov_Atelier.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  if ckMostrarValor.Checked then
    fDMMov_Atelier.frxReport1.variables['ImpValor'] := QuotedStr('S')
  else
    fDMMov_Atelier.frxReport1.variables['ImpValor'] := QuotedStr('N');
  fDMMov_Atelier.frxReport1.ShowReport;
end;

procedure TfrmMov_Atelier.ckMostrarValorClick(Sender: TObject);
var
  i: Integer;
  vTexto: String;
begin
  for i := 1 to SMDBGrid3.ColCount - 2 do
  begin
    vTexto := SMDBGrid3.Columns[i].FieldName;
    if copy(vTexto,1,4) = 'VLR_' then
      SMDBGrid3.Columns[i].Visible := ckMostrarValor.Checked;
  end;
end;

end.
