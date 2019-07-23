unit UConsEstRed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, ExtCtrls, Mask, ToolEdit, CurrEdit,
  Grids, DBGrids, SMDBGrid, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TfrmConsEstRed = class(TForm)
    Panel1: TPanel;
    RadioGroup2: TRadioGroup;
    btnConsultar: TNxButton;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    SMDBGrid1: TSMDBGrid;
    sdsConsEst: TSQLDataSet;
    dspConsEst: TDataSetProvider;
    cdsConsEst: TClientDataSet;
    cdsConsEstID_PRODUTO: TIntegerField;
    cdsConsEstID_COR: TIntegerField;
    cdsConsEstTAMANHO: TStringField;
    cdsConsEstNOME_PRODUTO: TStringField;
    cdsConsEstREFERENCIA: TStringField;
    cdsConsEstNOME_COMBINACAO: TStringField;
    dsConsEst: TDataSource;
    cdsConsEstQTD: TFloatField;
    cdsConsEstDESC_TIPO: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoREFERENCIA: TStringField;
    qProdutoNOME: TStringField;
    cdsConsEstQTD_LOCALIZACAO: TFloatField;
    dspConsLocal: TDataSetProvider;
    cdsConsLocal: TClientDataSet;
    dsConsLocal: TDataSource;
    sdsConsLocal: TSQLDataSet;
    cdsConsLocalLOCALIZACAO: TStringField;
    cdsConsLocalQTD: TFloatField;
    Panel2: TPanel;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    ctConsEst : String;
    procedure prc_Consultar;
    procedure prc_scroll(DataSet: TDataSet);
    
  public
    { Public declarations }
  end;

var
  frmConsEstRed: TfrmConsEstRed;

implementation

uses DmdDatabase, StrUtils, UAltEstLocal;

{$R *.dfm}

procedure TfrmConsEstRed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstRed.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00000',cdsConsEstQTD.AsFloat)) < 0 then
    AFont.Color := clRed;
end;

procedure TfrmConsEstRed.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
  cdsConsEst.Last;
end;

procedure TfrmConsEstRed.prc_Consultar;
var
  vComando : String;
  vComandoAux, vComandoAux2: String;
  i : Integer;
begin
  i := PosEx('GROUP', UpperCase(ctConsEst),0);
  vComandoAux  := copy(ctConsEst,i,Length(ctConsEst) - i + 1);
  vComandoAux2 := copy(ctConsEst,1,i-1);

  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := ' WHERE E.ID_PRODUTO = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    vComando := vComando + ' WHERE P.INATIVO = ' + QuotedStr('N');
    if Trim(Edit2.Text) <> '' then
      vComando := vComando + ' and P.REFERENCIA LIKE ' + QuotedStr('%'+Edit2.Text+'%');
    if Trim(Edit1.Text) <> '' then
      vComando := vComando + ' and P.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    case RadioGroup2.ItemIndex of
      0 : vComando := vComando + ' and P.TIPO_REG = ' + QuotedStr('P');
      1 : vComando := vComando + ' and P.TIPO_REG = ' + QuotedStr('M');
      2 : vComando := vComando + ' and P.TIPO_REG = ' + QuotedStr('C');
      3 : vComando := vComando + ' and P.TIPO_REG = ' + QuotedStr('S');
    end;
  end;
  if Trim(Edit3.Text) <> '' then
    vComando := vComando + ' and C.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  cdsConsEst.Close;
  sdsConsEst.CommandText := vComandoAux2 + vComando + vComandoAux;
  cdsConsEst.Open;  
end;

procedure TfrmConsEstRed.FormShow(Sender: TObject);
begin
  ctConsEst := sdsConsEst.CommandText;
  cdsConsEst.AFTERSCROLL := prc_scroll;
end;

procedure TfrmConsEstRed.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if CurrencyEdit1.AsInteger > 0 then
      Edit3.SetFocus
    else
      Edit1.SetFocus;
  end;
end;

procedure TfrmConsEstRed.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
  begin
    qProduto.Close;
    qProduto.ParamByName('ID').AsInteger := CurrencyEdit1.AsInteger;
    qProduto.Open;
    if qProdutoID.AsInteger > 0 then
    begin
      Edit1.Text := qProdutoNOME.AsString;
      Edit2.Text := qProdutoREFERENCIA.AsString;
    end
    else
    begin
      MessageDlg('*** Código do produto não encontrado!', mtError, [mbOk], 0);
      Edit1.Clear;
      Edit2.Clear;
      CurrencyEdit1.SetFocus;
      CurrencyEdit1.SelectAll;
    end;
  end;
end;

procedure TfrmConsEstRed.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Edit2.SetFocus;
end;

procedure TfrmConsEstRed.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Edit3.SetFocus;
end;

procedure TfrmConsEstRed.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsEstRed.prc_scroll(DataSet: TDataSet);
begin
  cdsConsLocal.Close;
  sdsConsLocal.ParamByName('ID_PRODUTO').AsInteger := cdsConsEstID_PRODUTO.AsInteger;
  sdsConsLocal.ParamByName('ID_COR').AsInteger     := cdsConsEstID_COR.AsInteger;
  cdsConsLocal.Open;
end;

procedure TfrmConsEstRed.NxButton1Click(Sender: TObject);
var
  vIDProdAux : Integer;
  vIDCorAux : Integer;
begin
  if not(cdsConsEst.Active) or (cdsConsLocal.IsEmpty) then
    exit;
  if cdsConsEstID_PRODUTO.AsInteger <= 0 then
    exit;

  vIDProdAux := cdsConsEstID_PRODUTO.AsInteger;
  vIDCorAux  := cdsConsEstID_COR.AsInteger;

  frmAltEstLocal := TfrmAltEstLocal.Create(self);
  frmAltEstLocal.vID_Produto  := cdsConsEstID_PRODUTO.AsInteger;
  frmAltEstLocal.vID_Cor      := cdsConsEstID_COR.AsInteger;
  frmAltEstLocal.vLocalizacao := cdsConsLocalLOCALIZACAO.AsString;
  frmAltEstLocal.vQtd         := StrToFloat(FormatFloat('0.0000',cdsConsLocalQTD.AsFloat));
  frmAltEstLocal.CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',cdsConsLocalQTD.AsFloat));
  frmAltEstLocal.ShowModal;
  FreeAndNil(frmAltEstLocal);
  cdsConsEst.Close;
  cdsConsEst.Open;
  cdsConsEst.Locate('ID_PRODUTO;ID_COR',VarArrayOf([vIDProdAux,vIDCorAux]),[locaseinsensitive]);
  //cdsConsLocal.Close;
  //cdsConsLocal.Open;
end;

end.
