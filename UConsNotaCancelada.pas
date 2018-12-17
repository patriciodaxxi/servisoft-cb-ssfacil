unit UConsNotaCancelada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsCancelada, RxLookup, UCBase, Mask, ToolEdit,
  RzPanel, RzTabs, CurrEdit;

type
  TfrmConsNotaCancelada = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Shape2: TShape;
    Label10: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsCancelada: TDMConsCancelada;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsNotaCancelada: TfrmConsNotaCancelada;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelNotaCancelada;

{$R *.dfm}

procedure TfrmConsNotaCancelada.BitBtn1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;

  prc_Consultar;
end;

procedure TfrmConsNotaCancelada.prc_Consultar;
var
  vComando : String;
  vOpcaoDtEntrega : String;
begin
  vComando := '';
  fDMConsCancelada.cdsConsulta.Close;
  fDMConsCancelada.sdsConsulta.CommandText := fDMConsCancelada.ctConsulta;
  vComando := vComando + ' AND NT.FILIAL =  ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case RadioGroup1.ItemIndex of
    0 : vComando := vComando + ' AND NT.CANCELADA = ' + QuotedStr('S');
    1 : vComando := vComando + ' AND NT.NFEDENEGADA = ' + QuotedStr('S');
    2 : vComando := vComando + ' AND ((NT.CANCELADA = ' + QuotedStr('S') + ') OR (NT.NFEDENEGADA = ' + QuotedStr('S') + '))';
  end;
  fDMConsCancelada.sdsConsulta.CommandText := fDMConsCancelada.sdsConsulta.CommandText + vComando;
  fDMConsCancelada.cdsConsulta.Open;
end;

procedure TfrmConsNotaCancelada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotaCancelada.FormShow(Sender: TObject);
begin
  fDMConsCancelada := TDMConsCancelada.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsCancelada);
  fDMConsCancelada.cdsFilial.First;
  if (fDMConsCancelada.cdsFilial.RecordCount < 2) and (fDMConsCancelada.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsCancelada.cdsFilialID.AsInteger;
end;

procedure TfrmConsNotaCancelada.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsCancelada.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNotaCancelada.BitBtn2Click(Sender: TObject);
begin
  if not fDMConsCancelada.cdsConsulta.Active then
    exit;
  vTipo_Config_Email := 3;
  fRelNotaCancelada := TfRelNotaCancelada.Create(Self);
  fRelNotaCancelada.fDMConsCancelada  := fDMConsCancelada;
  fRelNotaCancelada.vDescricao_Filial := RxDBLookupCombo1.Text;

  fRelNotaCancelada.vOpcaoImp      := '';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelNotaCancelada.vOpcaoImp := fRelNotaCancelada.vOpcaoImp + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +  ')'
  else
  if (DateEdit1.Date > 10) then
    fRelNotaCancelada.vOpcaoImp := fRelNotaCancelada.vOpcaoImp + '(Dt.Emissão Ini: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fRelNotaCancelada.vOpcaoImp := fRelNotaCancelada.vOpcaoImp + '(Dt.Emissão Fin: ' + DateEdit2.Text + ')';
  fRelNotaCancelada.RLReport1.PreviewModal;
  fRelNotaCancelada.RLReport1.Free;
  FreeAndNil(fRelNotaCancelada);
end;

procedure TfrmConsNotaCancelada.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsCancelada.cdsConsultaCANCELADA.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMConsCancelada.cdsConsultaNFEDENEGADA.AsString = 'S' then
  begin
    Background  := $000080FF;
    AFont.Color := clWhite;
  end;
end;

end.
