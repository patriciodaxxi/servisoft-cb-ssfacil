unit UConsEstoque_Bal_Vei;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Mask, 
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, NxCollection, ToolEdit, DBFilter;

type
  TfrmConsEstoque_Bal_Vei = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    btnImprimir_Est: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimir_EstClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsEstoque_Bal_Vei: TfrmConsEstoque_Bal_Vei;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmConsEstoque_Bal_Vei.prc_Consultar;
begin
  fDMConsEstoque.cdsBalanco_Vei.Close;
  fDMConsEstoque.sdsBalanco_Vei.ParamByName('FILIAL').AsInteger   := RxDBLookupCombo1.KeyValue;
  fDMConsEstoque.sdsBalanco_Vei.ParamByName('DTMOVIMENTO').AsDate := DateEdit1.Date;
  fDMConsEstoque.sdsBalanco_Vei.ParamByName('TIPO_REG').AsString  := 'P';
  fDMConsEstoque.cdsBalanco_Vei.Open;
end;

procedure TfrmConsEstoque_Bal_Vei.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoque_Bal_Vei.FormShow(Sender: TObject);
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;
end;

procedure TfrmConsEstoque_Bal_Vei.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsBalanco_Vei.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Bal_Vei.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsEstoque_Bal_Vei.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data Referência não informada!', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmConsEstoque_Bal_Vei.btnImprimir_EstClick(Sender: TObject);
var
  vArq : String;
begin
  SMDBGrid1.DisableScroll;
  vTipo_Config_Email := 4;
  fDMConsEstoque.cdsFilial.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
  fDMConsEstoque.cdsBalanco_Vei.IndexFieldNames := 'REFERENCIA';

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Balanco_Vei.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsEstoque.frxReport1.variables['ImpOpcao'] := QuotedStr(DateEdit1.Text);
  fDMConsEstoque.frxReport1.ShowReport;
  SMDBGrid1.EnableScroll;
end;

end.
