unit UConsMapaCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, NxCollection,
  Grids, DBGrids, SMDBGrid, StdCtrls, Mask, ToolEdit, DB, UCBase, UDMCadOP, dbXPress, UDMConsMapaCompra;

type
  TfrmConsMapaCompras = class(TForm)
    Panel1: TPanel;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    btnImprimir: TNxButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Shape1: TShape;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsMapaCompras: TDMConsMapaCompras;
    fDMCadOP: TDMCadOP;
    vNum_OP: Integer;
    vContador: Integer;

    procedure prc_Consultar;
    procedure prc_Monta_Cab;

  public
    { Public declarations }
  end;

var
  frmConsMapaCompras: TfrmConsMapaCompras;

implementation

uses rsDBUtils, UMenu, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmConsMapaCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMapaCompras.FormShow(Sender: TObject);
begin
  fDMConsMapaCompras := TDMConsMapaCompras.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsMapaCompras);
end;

procedure TfrmConsMapaCompras.btnConsultarClick(Sender: TObject);
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data de referência não informada!', mtInformation, [mbOK], 0);
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmConsMapaCompras.prc_Consultar;
var
  vComando: String;
begin
  SMDBGrid1.DisableScroll;
  fDMConsMapaCompras.cdsMapaCompras.Close;
  vComando := '';
  case ComboBox1.ItemIndex of
    0: vComando := ' WHERE AUX2.QTD_APRODUZIR > 0 ';
    1: vComando := ' WHERE AUX2.QTD_SALDO > 0 ';
  end;
  fDMConsMapaCompras.sdsMapaCompras.CommandText := fDMConsMapaCompras.ctMapa_Compras + vComando;
  fDMConsMapaCompras.sdsMapaCompras.ParamByName('DATA').AsDate := DateEdit1.Date;
  fDMConsMapaCompras.cdsMapaCompras.Open;
  fDMConsMapaCompras.cdsMapaCompras.IndexFieldNames := 'NOME_MARCA;REFERENCIA';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsMapaCompras.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMConsMapaCompras.cdsMapaCompras.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Monta_Cab;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\MapaCompras.fr3';
  if FileExists(vArq) then
    fDMConsMapaCompras.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsMapaCompras.frxReport1.variables['ImpOpcao'] := QuotedStr(fDMConsMapaCompras.vDescOpcao_Rel);
  fDMConsMapaCompras.frxReport1.ShowReport;
end;

procedure TfrmConsMapaCompras.prc_Monta_Cab;
begin
  fDMConsMapaCompras.vDescOpcao_Rel := '';
  if DateEdit1.Date > 10 then
    fDMConsMapaCompras.vDescOpcao_Rel := '(Data Ref.: ' + DateEdit1.Text + ')';
end;

procedure TfrmConsMapaCompras.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMConsMapaCompras.cdsMapaCompras.IsEmpty) then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMConsMapaCompras.cdsMapaComprasQTD_APRODUZIR.AsFloat)) > 0 then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TfrmConsMapaCompras.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsMapaCompras.cdsMapaCompras.IndexFieldNames := Column.FieldName;
  //Column.Title.Color := clBtnShadow;
  //for i := 0 to SMDBGrid1.Columns.Count - 1 do
  //  if not (SMDBGrid1.Columns.Items[I] = Column) then
  //    SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
