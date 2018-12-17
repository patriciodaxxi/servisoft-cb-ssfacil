unit UConsEstoque_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsEstoque, RxLookup, UCBase, Mask, ToolEdit, RzTabs, RzPanel,
  NxCollection, StrUtils, CurrEdit;

type
  TfrmConsEstoque_Cli = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    RzPageControl1: TRzPageControl;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    CheckBox1: TCheckBox;
    TS_Cliente: TRzTabSheet;
    RadioGroup1: TRadioGroup;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    edtRef: TEdit;
    ceIDProduto: TCurrencyEdit;
    Label14: TLabel;
    Label7: TLabel;
    ceIDPessoa: TCurrencyEdit;
    Label16: TLabel;
    edtNome_Pessoa: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure edtRefExit(Sender: TObject);
    procedure edtRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceIDProdutoExit(Sender: TObject);
    procedure ceIDProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceIDPessoaExit(Sender: TObject);
    procedure ceIDPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNome_PessoaExit(Sender: TObject);
    procedure edtNome_PessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;
    vComando: String;

    procedure prc_Consultar_Cli;
    procedure prc_Condicao;
    procedure prc_Monta_Cab;

    procedure prc_Chamar_Sel_Pessoa(Tipo : String);
    procedure prc_Chamar_Sel_Produto(Tipo : String);

  public
    { Public declarations }
  end;

var
  frmConsEstoque_Cli: TfrmConsEstoque_Cli;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelEstoqueMov_Cli, USel_Produto, USel_Pessoa, Math;

{$R *.dfm}

procedure TfrmConsEstoque_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMConsEstoque.cdsProduto.Filtered := False;
  Action := Cafree;
end;

procedure TfrmConsEstoque_Cli.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  fDMConsEstoque.cdsFilial.First;
  if (fDMConsEstoque.cdsFilial.RecordCount < 2) and (fDMConsEstoque.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsEstoque.cdsFilialID.AsInteger;
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if fDMConsEstoque.qParametrosUSA_GRADE.AsString <> 'S' then
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'TAMANHO') then
        SMDBGrid1.Columns[i].Visible := False;
    end;
  end;
end;

procedure TfrmConsEstoque_Cli.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque_Cli.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsEstoque_Cli.btnConsultarClick(Sender: TObject);
begin
  prc_Condicao;
  prc_Consultar_Cli;
  fDMConsEstoque.cdsEstoque_Cli.IndexFieldNames := 'NOME_PESSOA;NOMEPRODUTO';
end;

procedure TfrmConsEstoque_Cli.prc_Condicao;
begin
  vComando := '';
  if ceIDProduto.AsInteger > 0 then
    vComando := vComando + ' AND EM.ID_PRODUTO = ' + IntToStr(ceIDProduto.AsInteger)
  else
  if trim(edtRef.Text) <> '' then
    vComando := vComando + ' AND PRO.REFERENCIA = ' + QuotedStr(edtRef.Text);
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND EM.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if ceIDPessoa.AsInteger > 0 then
    vComando := vComando + ' AND EM.ID_PESSOA = ' + IntToStr(ceIDPessoa.AsInteger);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND EM.DTMOVIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND EM.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if not CheckBox1.Checked then
    vComando := vComando + ' AND PRO.INATIVO = ' + QuotedStr('N');
  case RadioGroup1.ItemIndex of
    0: vComando := vComando + ' AND EM.TIPO_ES = ' + QuotedStr('E');
    1: vComando := vComando + ' AND EM.TIPO_ES = ' + QuotedStr('S');
  end;
end;

procedure TfrmConsEstoque_Cli.prc_Monta_Cab;
begin
  fDMConsEstoque.vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if trim(edtNome_Pessoa.Text) <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Cli/Forn: ' + edtNome_Pessoa.Text + ')';
  if trim(edtRef.Text) <> '' then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Ref: ' + edtRef.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Dt.Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fDMConsEstoque.vDescOpcao_Rel := fDMConsEstoque.vDescOpcao_Rel + '(Dt.Final: ' + DateEdit2.Text + ')';
end;

procedure TfrmConsEstoque_Cli.btnImprimirClick(Sender: TObject);
begin
  vTipo_Config_Email := 3;
  prc_Monta_Cab;

  if not(fDMConsEstoque.cdsEstoque_Cli.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  fDMConsEstoque.cdsEstoque_Cli.IndexFieldNames := 'NOME_PESSOA;NOMEPRODUTO';
  SMDBGrid1.DisableScroll;
  fRelEstoqueMov_Cli                := TfRelEstoqueMov_Cli.Create(Self);
  fRelEstoqueMov_Cli.fDMConsEstoque := fDMConsEstoque;
  case RadioGroup1.ItemIndex of
    0: fRelEstoqueMov_Cli.vTipo_ES := 'E';
    1: fRelEstoqueMov_Cli.vTipo_ES := 'S';
    2: fRelEstoqueMov_Cli.vTipo_ES := 'A';
  end;
  fRelEstoqueMov_Cli.RLReport1.PreviewModal;
  fRelEstoqueMov_Cli.RLReport1.Free;
  FreeAndNil(fRelEstoqueMov_Cli);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsEstoque_Cli.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    fDMConsEstoque.prc_Abrir_Produto('S')
  else
    fDMConsEstoque.prc_Abrir_Produto('N');
end;

procedure TfrmConsEstoque_Cli.prc_Consultar_Cli;
var
  vComandoAux, vComandoAux2: String;
  i: Integer;
begin
  fDMConsEstoque.cdsEstoque_Cli.Close;
  i := PosEx('GROUP',fDMConsEstoque.ctEstoque_Cli,0);
  vComandoAux  := copy(fDMConsEstoque.ctEstoque_Cli,i,Length(fDMConsEstoque.ctEstoque_Cli) - i + 1);
  vComandoAux2 := copy(fDMConsEstoque.ctEstoque_Cli,1,i-1);
  fDMConsEstoque.sdsEstoque_Cli.CommandText := vComandoAux2 + vComando + vComandoAux;
  fDMConsEstoque.cdsEstoque_Cli.Open;
end;

procedure TfrmConsEstoque_Cli.edtRefExit(Sender: TObject);
begin
  if trim(edtRef.Text) <> '' then
  begin
    fDMConsEstoque.prc_Posiciona_Produto(0,edtRef.Text);
    if (fDMConsEstoque.qProduto.Active) then
      ceIDProduto.AsInteger := fDMConsEstoque.qProdutoID.AsInteger;
  end;
end;

procedure TfrmConsEstoque_Cli.edtRefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('R');
end;

procedure TfrmConsEstoque_Cli.ceIDProdutoExit(Sender: TObject);
begin
  if ceIDProduto.AsInteger > 0 then
  begin
    fDMConsEstoque.prc_Posiciona_Produto(ceIDProduto.AsInteger,'');
    if (fDMConsEstoque.qProduto.Active) then
      edtRef.Text := fDMConsEstoque.qProdutoREFERENCIA.AsString;
  end;
end;

procedure TfrmConsEstoque_Cli.ceIDProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Produto('P');
end;

procedure TfrmConsEstoque_Cli.ceIDPessoaExit(Sender: TObject);
begin
  if ceIDPessoa.AsInteger > 0 then
  begin
    fDMConsEstoque.prc_Posiciona_Pesssoa(ceIDPessoa.AsInteger);
    edtNome_Pessoa.Text := fDMConsEstoque.qPessoaNOME.AsString;
    if fDMConsEstoque.qPessoa.IsEmpty then
    begin
      ShowMessage('Código não encontrado!');
      ceIDPessoa.SetFocus;
      exit;
    end;
  end;
end;

procedure TfrmConsEstoque_Cli.ceIDPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Pessoa('C');
end;

procedure TfrmConsEstoque_Cli.edtNome_PessoaExit(Sender: TObject);
begin
  if ceIDPessoa.AsInteger <= 0 then
    edtNome_Pessoa.Clear;
end;

procedure TfrmConsEstoque_Cli.edtNome_PessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chamar_Sel_Pessoa('N');
end;

procedure TfrmConsEstoque_Cli.prc_Chamar_Sel_Pessoa(Tipo: String);
begin
  frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
  if Tipo = 'N' then
    frmSel_Pessoa.Edit1.Text := edtNome_Pessoa.Text;
  frmSel_Pessoa.ShowModal;
  FreeAndNil(frmSel_Pessoa);
  if vCodPessoa_Pos > 0 then
  begin
    ceIDPessoa.AsInteger := vCodPessoa_Pos;
    ceIDPessoa.SetFocus;
    fDMConsEstoque.prc_Posiciona_Pesssoa(ceIDPessoa.AsInteger);
    edtNome_Pessoa.Text := fDMConsEstoque.qPessoaNOME.AsString;
  end;
end;

procedure TfrmConsEstoque_Cli.prc_Chamar_Sel_Produto(Tipo: String);
begin
  vCodProduto_Pos := 0;
  frmSel_Produto := TfrmSel_Produto.Create(Self);
  frmSel_Produto.ShowModal;
  FreeAndNil(frmSel_Produto);
  if vCodProduto_Pos > 0 then
  begin
    edtRef.Text := vReferencia_Pos;
    ceIDProduto.AsInteger := vCodProduto_Pos;
    if Tipo = 'R' then
      edtRef.SetFocus
    else
      ceIDProduto.SetFocus;
  end;
end;

end.
