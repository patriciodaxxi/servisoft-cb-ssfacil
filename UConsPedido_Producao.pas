unit UConsPedido_Producao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsPedido, CurrEdit, StdCtrls, ExtCtrls, Mask, ToolEdit,
  RxLookup, NxEdit, NxCollection, Grids, DBGrids, SMDBGrid, RzTabs, DB;

type
  TfrmConsPedido_Producao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox2: TComboBox;
    CurrencyEdit1: TCurrencyEdit;
    btnConsultar: TNxButton;
    RzPageControl1: TRzPageControl;
    TS_Item: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Label4: TLabel;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Shape1: TShape;
    Label8: TLabel;
    Shape2: TShape;
    Label9: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsPedido_Producao: TfrmConsPedido_Producao;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsPedido_Producao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMConsPedido);
  Action := Cafree;
end;

procedure TfrmConsPedido_Producao.FormShow(Sender: TObject);
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
end;

procedure TfrmConsPedido_Producao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsPedido_Producao.prc_Consultar;
var
  vComando : String;
begin
  fDMConsPedido.cdsConsPedido_Item_Proc.Close;
  vComando := '';
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND P.PEDIDO_CLIENTE = ' + QuotedStr(Edit1.Text);
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND P.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger);
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND (CLI.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%')
                         + ' OR P.NOME_CONSUMIDOR LIKE ' + QuotedStr('%'+Edit3.Text+'%') +')';
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND P.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND P.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND I.ID_PRODUTO = ' + IntToStr(CurrencyEdit2.AsInteger);
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND i.NOMEPRODUTO LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  case ComboBox2.ItemIndex of
    1 : vComando := vComando + '  and coalesce(i.id_processo,0) <> (select id_processo_final from parametros_ped where id = 1) ';
    2 : vComando := vComando + '  and i.id_processo = (select id_processo_final from parametros_ped where id = 1) ';
  end;
  fDMConsPedido.sdsConsPedido_Item_Proc.CommandText := fDMConsPedido.ctConsPedido_Item_Proc + vComando;
  fDMConsPedido.cdsConsPedido_Item_Proc.Open;
  fDMConsPedido.cdsConsPedido_Item_Proc.IndexFieldNames := 'NUM_PEDIDO;ITEM';
end;

procedure TfrmConsPedido_Producao.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsConsPedido_Item_Proc.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsPedido_Producao.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsPedido.cdsConsPedido_Item_ProcPRODUCAO_CONCLUIDA.AsString = 'S' then
    Background := clMoneyGreen
  else
  if fDMConsPedido.cdsConsPedido_Item_ProcPRODUCAO_CONCLUIDA.AsString = 'I' then
    Background := clAqua;
end;

end.
