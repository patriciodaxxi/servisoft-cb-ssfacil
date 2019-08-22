unit UConsProdutoNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, UDMConsProduto, NxEdit, Mask, ToolEdit, NxCollection, RzPanel, DB, ComObj;

type
  TfrmConsProdutoNCM = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnConsultar: TNxButton;
    Label68: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    NxButton1: TNxButton;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsProduto: TDMConsProduto;

    procedure prc_Consultar;
    procedure prc_CriaExcel(vDados: TDataSource; Grid : TSMDBGrid);

  public
    { Public declarations }
  end;

var
  frmConsProdutoNCM: TfrmConsProdutoNCM;

implementation

uses rsDBUtils, DateUtils, uUtilPadrao, UAltCFOPProd;

{$R *.dfm}

procedure TfrmConsProdutoNCM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsProdutoNCM.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsProduto := TDMConsProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsProduto);
end;

procedure TfrmConsProdutoNCM.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsProduto.cdsProdNCM.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;                        

procedure TfrmConsProdutoNCM.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsProdutoNCM.prc_Consultar;
var
  vComando : String;
begin
  vComando := ' WHERE 0 = 0 ';
  case ComboBox1.ItemIndex of
    0 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('P');
    1 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('M');
    2 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('O');
    3 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('C');
    4 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('I');
    5 : vComando := vComando + ' AND PRO.TIPO_REG = ' + QuotedStr('S');
  end;
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PRO.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND G.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND NCM.NCM LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  fDMConsProduto.cdsProdNCM.Close;
  fDMConsProduto.sdsProdNCM.CommandText := fDMConsProduto.ctProdNCM + vComando;
  fDMConsProduto.cdsProdNCM.Open;
end;

procedure TfrmConsProdutoNCM.NxButton1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  prc_CriaExcel(SMDBGrid1.DataSource, SMDBGrid1);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsProdutoNCM.prc_CriaExcel(vDados: TDataSource;
  Grid: TSMDBGrid);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel2(planilha, vDados, Grid);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_ProdutoNCM_' + Grid.Name + '_' +  Monta_Numero(DateToStr(Date), 0);
  try
    planilha.ActiveWorkBook.SaveAs(vTexto);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmConsProdutoNCM.SMDBGrid1DblClick(Sender: TObject);
var
  vID_Aux : Integer;
begin
  if not(fDMConsProduto.cdsProdNCM.Active) or (fDMConsProduto.cdsProdNCM.IsEmpty) then
    exit;
  vID_Aux := fDMConsProduto.cdsProdNCMID.AsInteger;
  fDMConsProduto.vAltProd := False;
  frmAltCFOPProd := TfrmAltCFOPProd.Create(self);
  frmAltCFOPProd.vID_Produto_Loc := fDMConsProduto.cdsProdNCMID.AsInteger;
  frmAltCFOPProd.fDMConsProduto := fDMConsProduto;
  frmAltCFOPProd.ShowModal;
  FreeAndNil(frmAltCFOPProd);
  if fDMConsProduto.vAltProd then
  begin
    btnConsultarClick(Sender);
    fDMConsProduto.cdsProdNCM.Locate('ID',vID_Aux,([Locaseinsensitive]));
  end;
end;

end.
