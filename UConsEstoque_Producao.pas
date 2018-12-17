unit UConsEstoque_Producao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMConsEstoque, NxCollection,
  Grids, DBGrids, SMDBGrid, StdCtrls, Mask, ToolEdit, DB, UCBase, UDMCadOP, dbXPress;

type
  TfrmConsEstoque_Producao = class(TForm)
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
    UCControls1: TUCControls;
    btGerar: TNxButton;
    btnMateriais: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btGerarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    fDMCadOP: TDMCadOP;
    vNum_OP: Integer;
    vContador: Integer;

    procedure prc_Consultar;
    procedure prc_Monta_Cab;
    procedure prc_Gerar_OP;

  public
    { Public declarations }
  end;

var
  frmConsEstoque_Producao: TfrmConsEstoque_Producao;

implementation

uses rsDBUtils, UMenu, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmConsEstoque_Producao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoque_Producao.FormShow(Sender: TObject);
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
end;

procedure TfrmConsEstoque_Producao.btnConsultarClick(Sender: TObject);
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data de referência não informada!', mtInformation, [mbOK], 0);
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmConsEstoque_Producao.prc_Consultar;
var
  vComando: String;
begin
  SMDBGrid1.DisableScroll;
  fDMConsEstoque.cdsEstoque_Producao.Close;
  vComando := '';
  case ComboBox1.ItemIndex of
    0: vComando := ' WHERE AUX2.QTD_APRODUZIR > 0 ';
    1: vComando := ' WHERE AUX2.QTD_SALDO > 0 ';
  end;
  fDMConsEstoque.sdsEstoque_Producao.CommandText := fDMConsEstoque.ctEstoque_Producao + vComando;
  fDMConsEstoque.sdsEstoque_Producao.ParamByName('DATA').AsDate := DateEdit1.Date;
  fDMConsEstoque.cdsEstoque_Producao.Open;
  fDMConsEstoque.cdsEstoque_Producao.IndexFieldNames := 'NOME_MARCA;REFERENCIA';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsEstoque_Producao.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMConsEstoque.cdsEstoque_Producao.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Monta_Cab;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Estoque_Producao.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsEstoque.frxReport1.variables['ImpOpcao'] := QuotedStr(fDMConsEstoque.vDescOpcao_Rel);
  fDMConsEstoque.frxReport1.ShowReport;
end;

procedure TfrmConsEstoque_Producao.prc_Monta_Cab;
begin
  fDMConsEstoque.vDescOpcao_Rel := '';
  if DateEdit1.Date > 10 then
    fDMConsEstoque.vDescOpcao_Rel := '(Data Ref.: ' + DateEdit1.Text + ')';
end;

procedure TfrmConsEstoque_Producao.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMConsEstoque.cdsEstoque_Producao.IsEmpty) then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMConsEstoque.cdsEstoque_ProducaoQTD_APRODUZIR.AsFloat)) > 0 then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TfrmConsEstoque_Producao.btGerarClick(Sender: TObject);
var
  ID: TTransactionDesc;
begin
  if MessageDlg('Deseja gerar Ordem de Produção, dos produtos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  vContador := 0;
  fDMCadOP  := TDMCadOP.Create(Self);
  vNum_OP := 0;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMConsEstoque.cdsEstoque_Producao.First;
    while not fDMConsEstoque.cdsEstoque_Producao.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.000',fDMConsEstoque.cdsEstoque_ProducaoQTD_APRODUZIR.AsFloat)) > 0) then
        prc_Gerar_OP;
      fDMConsEstoque.cdsEstoque_Producao.Next;
    end;
    if fDMCadOP.cdsOP.State in [dsEdit,dsInsert] then
      fDMCadOP.cdsOP.Post;
    fDMCadOP.cdsOP.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      vContador := 0;
      dmDatabase.scoDados.Rollback(ID);
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a OP: ' + #13 + e.Message);
    end;
  end;
  FreeAndNil(fDMCadOP);
  MessageDlg('*** Produtos incluidos na Ordem de Produção Nº ' + IntToStr(vNum_OP) + '. Total: ' + IntToStr(vContador), mtInformation, [mbOK], 0);
  btnConsultarClick(Sender);
end;

procedure TfrmConsEstoque_Producao.prc_Gerar_OP;
begin
  if vNum_OP <= 0 then
  begin
    vNum_OP := fDMCadOP.fnc_Proxima_OP;
    vNum_OP := vNum_OP + 1;
    fDMCadOP.prc_Inserir;
    fDMCadOP.cdsOPDTEMISSAO.AsDateTime := Date;
    fDMCadOP.cdsOPNUM_OP.AsInteger     := vNum_OP;
    fDMCadOP.cdsOPFILIAL.AsInteger     := fDMConsEstoque.cdsFilialID.AsInteger;
  end;

  fDMCadOP.prc_Inserir_Itens;
  fDMCadOP.cdsOP_ItensID_PRODUTO.AsInteger    := fDMConsEstoque.cdsEstoque_ProducaoID_PRODUTO.AsInteger;
  fDMCadOP.cdsOP_ItensQTD_APRODUZIR.AsFloat   := StrToFloat(FormatFloat('0.000',fDMConsEstoque.cdsEstoque_ProducaoQTD_APRODUZIR.AsFloat));
  fDMCadOP.cdsOP_ItensQTD_PRODUZIDO.AsFloat   := 0;
  //fDMCadOP.cdsOP_ItensDTINICIAL.AsDateTime    := Date;
  fDMCadOP.cdsOP_ItensDTINICIAL.Clear;
  fDMCadOP.cdsOP_ItensDTBAIXA.Clear;
  fDMCadOP.cdsOP_Itens.Post;

  vContador := vContador + 1;
end;

procedure TfrmConsEstoque_Producao.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsEstoque_Producao.IndexFieldNames := Column.FieldName;
  //Column.Title.Color := clBtnShadow;
  //for i := 0 to SMDBGrid1.Columns.Count - 1 do
  //  if not (SMDBGrid1.Columns.Items[I] = Column) then
  //    SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
