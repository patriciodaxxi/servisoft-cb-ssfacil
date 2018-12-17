unit USel_Maquina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient,
  Provider, SqlExpr, NxCollection, StdCtrls, UDMCadProduto, RxLookup;

type
  TfrmSel_Maquina = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    sdsMaquina: TSQLDataSet;
    dspMaquina: TDataSetProvider;
    cdsMaquina: TClientDataSet;
    dsMaquina: TDataSource;
    btnConfirmar: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    btnConsultar: TNxButton;
    btnCancelar: TNxButton;
    cdsMaquinaID: TIntegerField;
    cdsMaquinaNOME: TStringField;
    cdsMaquinaQTD_BOCA: TIntegerField;
    cdsMaquinaQTD_FUSO: TIntegerField;
    cdsMaquinaBORRACHA: TStringField;
    cdsMaquinaFIO_AUXILIAR: TStringField;
    cdsMaquinaNOME_TIPO: TStringField;
    cdsMaquinaTIPO: TStringField;
    cdsMaquinaESPESSURA: TFloatField;
    sdsTipo_Maquina: TSQLDataSet;
    dspTipo_Maquina: TDataSetProvider;
    cdsTipo_Maquina: TClientDataSet;
    dsTipo_Maquina: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cdsTipo_MaquinaID: TIntegerField;
    cdsTipo_MaquinaNOME: TStringField;
    cdsTipo_MaquinaTIPO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    ctMaquina : String;
    procedure prc_Consultar;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmSel_Maquina: TfrmSel_Maquina;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmSel_Maquina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Maquina.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Maquina.btnConfirmarClick(Sender: TObject);
begin
  cdsMaquina.First;
  while not cdsMaquina.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if not fDMCadProduto.cdsProduto_Maq.Locate('ID_MAQUINA',cdsMaquinaID.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadProduto.prc_Inserir_ProdMaq;
        fDMCadProduto.cdsProduto_MaqID_MAQUINA.AsInteger := cdsMaquinaID.AsInteger;
        fDMCadProduto.cdsProduto_Maq.Post;
      end;
    end;
    cdsMaquina.Next;
  end;
  Close;
end;

procedure TfrmSel_Maquina.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Maquina.prc_Consultar;
begin
  cdsMaquina.Close;
  sdsMaquina.CommandText := ctMaquina;
  if trim(RxDBLookupCombo1.Text) <> '' then
    sdsMaquina.CommandText := sdsMaquina.CommandText + ' WHERE ID_TIPO_MAQUINA = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  cdsMaquina.Open;
end;

procedure TfrmSel_Maquina.FormShow(Sender: TObject);
begin
  ctMaquina := sdsMaquina.CommandText;
  cdsTipo_Maquina.Close;
  cdsTipo_Maquina.Open;
  if fDMCadProduto.cdsProdutoTIPO_PRODUCAO.AsString = 'T' then
  begin
    if cdsTipo_Maquina.Locate('TIPO','2',[loCaseInsensitive]) then
      RxDBLookupCombo1.KeyValue := cdsTipo_MaquinaID.AsInteger;
  end
  else
  if fDMCadProduto.cdsProdutoTIPO_PRODUCAO.AsString = 'E' then
  begin
    if cdsTipo_Maquina.Locate('TIPO','1',[loCaseInsensitive]) then
      RxDBLookupCombo1.KeyValue := cdsTipo_MaquinaID.AsInteger;
  end;
  if trim(RxDBLookupCombo1.Text) <> '' then
    btnConsultarClick(Sender);
end;

procedure TfrmSel_Maquina.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    prc_Consultar;
end;

procedure TfrmSel_Maquina.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsMaquina.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
