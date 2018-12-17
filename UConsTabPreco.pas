unit UConsTabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMCadTab_Preco, RxLookup, UCBase,
  Menus, NxCollection, Mask, ToolEdit, CurrEdit;

type
  TfrmConsTabPreco = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label8: TLabel;
    ComboBox1: TComboBox;
    btnImprimir: TNxButton;
    PopupMenu1: TPopupMenu;
    abeladePreo1: TMenuItem;
    Consulta1: TMenuItem;
    N1: TMenuItem;
    Personalizado1: TMenuItem;
    btnConsultar: TNxButton;
    CurrencyEdit1: TCurrencyEdit;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure abeladePreo1Click(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure Personalizado1Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMCadTab_Preco: TDMCadTab_Preco;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsTabPreco: TfrmConsTabPreco;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, URelTabPreco;

{$R *.dfm}

procedure TfrmConsTabPreco.prc_Consultar;
var
  vQtdAux: Integer;
begin
  vQtdAux := 0;
  fDMCadTab_Preco.cdsTab_Preco_Consulta.Close;
  fDMCadTab_Preco.cdsTab_Preco_Consulta.IndexFieldNames := 'NOME;REFERENCIA';
  if CurrencyEdit1.AsInteger > 0 then
    fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText := fDMCadTab_Preco.ctTabPreco_Consulta + ' WHERE TAB.ID = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText := fDMCadTab_Preco.ctTabPreco_Consulta + ' WHERE (0 = 0) ';
    if trim(Edit3.Text) <> '' then
      fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText := fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText
                                             + ' AND TAB.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
    if trim(Edit2.Text) <> '' then
      fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText := fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText
                                             + ' AND PRO.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%');
    if trim(Edit1.Text) <> '' then
      fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText := fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText
                                             + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    if RxDBLookupCombo2.Text <> '' then
      fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText := fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText
                                                         + ' AND GRUPO.ID = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if RxDBLookupCombo4.Text <> '' then
      fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText := fDMCadTab_Preco.sdsTab_Preco_Consulta.CommandText
                                                         + ' AND MARCA.ID = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  end;
  fDMCadTab_Preco.cdsTab_Preco_Consulta.Open;
end;

procedure TfrmConsTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadTab_Preco.cdsTab_Preco_Pesquisa.Close;
  Action := Cafree;
end;

procedure TfrmConsTabPreco.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadTab_Preco := TDMCadTab_Preco.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTab_Preco);
  //fDMCadTab_Preco.cdsTab_Preco_Pesquisa.Open;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'NOME_COR' then
      SMDBGrid1.Columns[i].Visible := (fDMCadTab_Preco.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S');
  end;

end;

procedure TfrmConsTabPreco.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadTab_Preco.cdsTab_Preco_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsTabPreco.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsTabPreco.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsTabPreco.abeladePreo1Click(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    ShowMessage('Para a impressão é necessário escolher uma tabela!');
    exit;
  end;
  vTipo_Config_Email := 3;
  fDMCadTab_Preco.cdsFilial.Open;
  fDMCadTab_Preco.cdsFilial.First;

  case ComboBox1.ItemIndex of
    0: fDMCadTab_Preco.cdsTab_Preco_Consulta.IndexFieldNames := 'FANTASIA;NOMEPRODUTO';
    1: fDMCadTab_Preco.cdsTab_Preco_Consulta.IndexFieldNames := 'NOMEGRUPO;NOMEPRODUTO';
    2: fDMCadTab_Preco.cdsTab_Preco_Consulta.IndexFieldNames := 'NOMEMARCA;NOMEPRODUTO';
  end;

  fRelTabPreco  := TfRelTabPreco.Create(Self);
  case ComboBox1.ItemIndex of
    0: fRelTabPreco.vOrdenar := 'F';
    1: fRelTabPreco.vOrdenar := 'G';
    2: fRelTabPreco.vOrdenar := 'M';
  end;
  fRelTabPreco.vOpcaoImp       := 'ID.Tab Preço: ' + IntToStr(CurrencyEdit1.AsInteger);
  fRelTabPreco.fDMCadTab_Preco := fDMCadTab_Preco;
  fRelTabPreco.RLReport1.PreviewModal;
  fRelTabPreco.RLReport1.Free;
  FreeAndNil(fRelTabPreco);
end;

procedure TfrmConsTabPreco.Consulta1Click(Sender: TObject);
begin
  vTipo_Config_Email := 3;
  fDMCadTab_Preco.cdsFilial.Open;
  fDMCadTab_Preco.cdsFilial.First;

  fRelTabPreco  := TfRelTabPreco.Create(Self);
  fRelTabPreco.fDMCadTab_Preco := fDMCadTab_Preco;
  fRelTabPreco.RLReport2.PreviewModal;
  fRelTabPreco.RLReport2.Free;
  FreeAndNil(fRelTabPreco);
end;

procedure TfrmConsTabPreco.btnConsultarClick(Sender: TObject);
var
  i: Integer;
begin
  if (CurrencyEdit1.AsInteger <= 0) and (trim(RxDBLookupCombo2.Text) = '') and (trim(RxDBLookupCombo4.Text) = '')
    and (trim(Edit1.Text) = '') and (trim(Edit2.Text) = '') then
  begin
    ShowMessage('É óbrigatório escolher uma opção de filtro!');
    Exit;
  end;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
  prc_Consultar;
end;

procedure TfrmConsTabPreco.Personalizado1Click(Sender: TObject);
var
  vArq: String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Vinco_TabPreco.fr3';
  if FileExists(vArq) then
    fDMCadTab_Preco.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadTab_Preco.frxReport1.ShowReport;
end;

procedure TfrmConsTabPreco.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (CurrencyEdit1.AsInteger > 0) then
    prc_Consultar;
end;

end.
