unit UConsNotas_SER;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsNotas_SER, RxLookup, UCBase, Mask, ToolEdit,
  RzPanel, RzTabs, CurrEdit;

  //
 //
 // , RzTabs, ;


type
  TfrmConsNotas_SER = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Shape2: TShape;
    Label10: TLabel;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsNotas_SER: TDMConsNotas_SER;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsNotas_SER: TfrmConsNotas_SER;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelNotas_SER,
  StrUtils;

{$R *.dfm}

procedure TfrmConsNotas_SER.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsNotas_SER.prc_Consultar;
var
  vComando : String;
  vComandoAux : String;
  i : Integer;
begin
  fDMConsNotas_SER.cdsConsulta.Close;
  vComando := fDMConsNotas_SER.ctConsulta + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND NS.FILIAL =  ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND NS.ID_CLIENTE =  ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND (NS.DTEMISSAO_CAD >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ')';
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND (NS.DTEMISSAO_CAD <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ')';
  if not CheckBox1.Checked then
    vComando := vComando + ' AND (NS.STATUS_RPS = ' + QuotedStr('1') + ')';
  fDMConsNotas_SER.sdsConsulta.CommandText := vComando + ' ' + vComandoAux;
  fDMConsNotas_SER.cdsConsulta.Open;
end;

procedure TfrmConsNotas_SER.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotas_SER.FormShow(Sender: TObject);
begin
  fDMConsNotas_SER := TDMConsNotas_SER.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotas_SER);
  fDMConsNotas_SER.cdsFilial.First;
  if (fDMConsNotas_SER.cdsFilial.RecordCount < 2) and (fDMConsNotas_SER.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsNotas_SER.cdsFilialID.AsInteger;
end;

procedure TfrmConsNotas_SER.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsNotas_SER.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNotas_SER.BitBtn2Click(Sender: TObject);
begin
  if not fDMConsNotas_SER.cdsConsulta.Active then
    exit;
  vTipo_Config_Email := 3;
  fDMConsNotas_SER.cdsConsulta.IndexFieldNames := 'FILIAL;SERIE;NUMNOTA';

  fRelNotas_SER := TfRelNotas_SER.Create(Self);
  fRelNotas_SER.fDMConsNotas_SER := fDMConsNotas_SER;

  fRelNotas_SER.vOpcaoImp      := '';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelNotas_SER.vOpcaoImp := fRelNotas_SER.vOpcaoImp + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +  ')'
  else
  if (DateEdit1.Date > 10) then
    fRelNotas_SER.vOpcaoImp := fRelNotas_SER.vOpcaoImp + '(Período Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fRelNotas_SER.vOpcaoImp := fRelNotas_SER.vOpcaoImp + '(Período Fin: ' + DateEdit2.Text + ')';
  fRelNotas_SER.RLReport1.PreviewModal;
  fRelNotas_SER.RLReport1.Free;
  FreeAndNil(fRelNotas_SER);
end;

procedure TfrmConsNotas_SER.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsNotas_SER.cdsConsultaSTATUS_RPS.AsString = '2' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

end.
