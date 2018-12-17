unit UHistServico_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadOrdemServico, RxLookup,
  StdCtrls, Grids, DBGrids, SMDBGrid, NxCollection, DB, ComObj;

type
  TfrmHistServico_Prod = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_HistProduto;
    procedure prc_CriaExcel(vDados: TDataSource); 
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmHistServico_Prod: TfrmHistServico_Prod;

implementation

uses rsDBUtils, uUtilPadrao, USel_Produto, USel_Pessoa;

{$R *.dfm}

procedure TfrmHistServico_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmHistServico_Prod.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  if trim(Edit1.Text) <> '' then
    btnConsultarClick(Sender);
end;

procedure TfrmHistServico_Prod.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar_HistProduto;
end;

procedure TfrmHistServico_Prod.prc_Consultar_HistProduto;
begin
  fDMCadOrdemServico.cdsHistProduto.Close;
  fDMCadOrdemServico.sdsHistProduto.CommandText := fDMCadOrdemServico.ctHistProduto + ' WHERE 0 = 0 '; 
  if RxDBLookupCombo1.Text <> '' then
    fDMCadOrdemServico.sdsHistProduto.CommandText := fDMCadOrdemServico.sdsHistProduto.CommandText
                                                 + ' AND ORD.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if trim(Edit2.Text) <> '' then
    fDMCadOrdemServico.sdsHistProduto.CommandText := fDMCadOrdemServico.sdsHistProduto.CommandText
                                                 + ' AND (NOME_PRODUTO LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')';
  if trim(Edit1.Text) <> '' then
    fDMCadOrdemServico.sdsHistProduto.CommandText := fDMCadOrdemServico.sdsHistProduto.CommandText
                                                 + ' AND ((NUM_SERIE = ' + QuotedStr(Edit1.Text) + ')'
                                                 + '  OR ((NUM_SERIE_TROCA = ' + QuotedStr(Edit1.Text) + ')))';
  fDMCadOrdemServico.cdsHistProduto.Open;
  fDMCadOrdemServico.cdsHistProduto.IndexFieldNames := 'NUM_OS';
end;

procedure TfrmHistServico_Prod.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := 0;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
    begin
      fDMCadOrdemServico.cdsProduto.Locate('ID',vCodProduto_Pos,[loCaseInsensitive]);
      Edit2.Text := fDMCadOrdemServico.cdsProdutoNOME.AsString;
    end;
  end;
end;

procedure TfrmHistServico_Prod.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (trim(Edit1.Text) <> '') then
    btnConsultarClick(Sender);
end;

procedure TfrmHistServico_Prod.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := 0;
    if trim(RxDBLookupCombo1.Text) <> '' then
      vCodPessoa_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodPessoa_Pos;
    RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmHistServico_Prod.NxButton1Click(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource);
end;

procedure TfrmHistServico_Prod.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := True;

  prc_Preencher_Excel(planilha, vDados);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

end.
