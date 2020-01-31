unit UConsPessoa_Produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, UDMConsPessoa,
  NxEdit, Mask, ToolEdit, NxCollection, RzPanel, RxLookup, uUtilPadrao, USel_Produto;

type
  TfrmConsPessoa_Produto = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnConsultar: TNxButton;
    comboMarca: TRxDBLookupCombo;
    lblMarca: TLabel;
    edtCodProduto: TEdit;
    edtNomeProduto: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMConsPessoa: TDMConsPessoa;
    ffrmSel_Produto : TfrmSel_Produto;

  public
    { Public declarations }
    vID_Pessoa_Cons : Integer;
    vTipo_Pessoa : String; //C= Cliente   F= Fornecedor   A= Ambos   

  end;

var
  frmConsPessoa_Produto: TfrmConsPessoa_Produto;

implementation

uses rsDBUtils, DateUtils, DB;

{$R *.dfm}

procedure TfrmConsPessoa_Produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPessoa_Produto.FormShow(Sender: TObject);
begin
  fDMConsPessoa := TDMConsPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPessoa);
  DateEdit1.Date := Date;
//  DateEdit1.Date :=  EncodeDate(YearOf(Date),MonthOf(IncMonth(Date, -3)),01);
end;

procedure TfrmConsPessoa_Produto.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsProduto_Mov.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;                        

procedure TfrmConsPessoa_Produto.btnConsultarClick(Sender: TObject);
var
  vID_Marca : Integer;
  vID_Produto : Integer;
begin
  if comboMarca.Text <> EmptyStr then
    vID_Marca := comboMarca.KeyValue
  else
    vID_Marca := 0;
  if edtCodProduto.Text <> EmptyStr then
    vID_Produto := StrToInt(edtCodProduto.Text)
  else
    vID_Produto := 0;
  fDMConsPessoa.prc_Cons_Cliente_Produto(vID_Marca, vID_Produto, DateEdit1.Date, DateEdit2.Date);
end;

procedure TfrmConsPessoa_Produto.SMDBGrid2TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsServico_Mov.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := $00D2D2D2;
end;

procedure TfrmConsPessoa_Produto.SMDBGrid1DblClick(Sender: TObject);
begin
  if not (fDMConsPessoa.cdsConsPessoaProduto.IsEmpty) then
  begin
    vID_Pessoa_Cons := fDMConsPessoa.cdsConsPessoaProdutoCODIGO.AsInteger;
    Close;
  end;
end;

procedure TfrmConsPessoa_Produto.edtCodProdutoExit(Sender: TObject);
begin
  if edtCodProduto.Text = EmptyStr then
  begin
    edtNomeProduto.Clear;
    exit;
  end;
  if not(fnc_Verifica_Numero(edtCodProduto.Text)) then
  begin
    MessageDlg('Informe somente números no campo código produto',mtError,[mbOK],0);
    edtCodProduto.Clear;
    edtCodProduto.SetFocus;
    Exit;
  end;
  fDMConsPessoa.prc_Consultar_Produto(StrToInt(edtCodProduto.Text));
  if fDMConsPessoa.qProduto.IsEmpty then
  begin
    MessageDlg('Codigo produto inexistente',mtError,[mbOK],0);
    edtCodProduto.SelectAll;
    edtCodProduto.SetFocus;
    Exit;
  end;
  edtNomeProduto.Text := fDMConsPessoa.qProdutoNOME.AsString;
end;

procedure TfrmConsPessoa_Produto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    ffrmSel_Produto := TfrmSel_Produto.Create(nil);
    try
      vCodProduto_Pos := 0;
      ffrmSel_Produto.ShowModal;
      if vCodProduto_Pos > 0 then
        edtCodProduto.Text := IntToStr(vCodProduto_Pos);
    finally
      FreeAndNil(ffrmSel_Produto);
    end;
  end;

end;

end.
