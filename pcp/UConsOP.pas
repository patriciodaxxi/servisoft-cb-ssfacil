unit UConsOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, Grids, DBGrids, SMDBGrid,
  StdCtrls, Mask, ToolEdit, DB, UCBase, UDMCadOP, dbXPress, CurrEdit, UBaixaOP,
  RzTabs, UIniciarOP;

type
  TfrmConsOP = class(TForm)
    UCControls1: TUCControls;
    RzPageControl3: TRzPageControl;
    TS_OP: TRzTabSheet;
    TS_Baixa: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape2: TShape;
    Label8: TLabel;
    Shape3: TShape;
    Label9: TLabel;
    btnConsultar: TNxButton;
    DateEdit1: TDateEdit;
    btnImprimir: TNxButton;
    ComboBox1: TComboBox;
    DateEdit2: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    Edit1: TEdit;
    Panel2: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btnConsultar_Baixa: TNxButton;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    CurrencyEdit2: TCurrencyEdit;
    Edit2: TEdit;
    SMDBGrid2: TSMDBGrid;
    btnExcluir_Baixa: TNxButton;
    Panel3: TPanel;
    btnBaixar: TNxButton;
    btnExcluir: TNxButton;
    btnExcluir_Item: TNxButton;
    btnIniciarOP: TNxButton;
    Shape4: TShape;
    Label11: TLabel;
    StaticText1: TStaticText;
    Shape5: TShape;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure btnConsultar_BaixaClick(Sender: TObject);
    procedure btnExcluir_BaixaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnExcluir_ItemClick(Sender: TObject);
    procedure btnIniciarOPClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMCadOP: TDMCadOP;
    vNum_OP: Integer;
    vContador: Integer;
    vUser_Excluir: Boolean;

    procedure prc_Consultar;
    procedure prc_Consultar_Baixa;
    procedure prc_Monta_Cab;

  public
    { Public declarations }
  end;

var
  frmConsOP: TfrmConsOP;

implementation

uses rsDBUtils, UMenu, uUtilPadrao, DmdDatabase, USel_Produto,
  UConsOP_Baixa_Mat;

{$R *.dfm}

procedure TfrmConsOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfrmConsOP.FormShow(Sender: TObject);
begin
  if Tag <> 1 then
    fDMCadOP := TDMCadOP.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOP);
  vUser_Excluir := btnExcluir.Enabled;
end;

procedure TfrmConsOP.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsOP.prc_Consultar;
var
  vComando: String;
begin
  SMDBGrid1.DisableScroll;
  fDMCadOP.cdsConsulta_OP.Close;
  if CurrencyEdit1.AsInteger > 0 then
    vComando := ' WHERE OP.NUM_OP = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    vComando := ' WHERE 0 = 0 ';
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND OP.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND OP.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if trim(Edit1.Text) <> '' then
      vComando := vComando + ' AND PRO.REFERENCIA = ' + QuotedStr(Edit1.Text);
    case ComboBox1.ItemIndex of
      0: vComando := vComando + ' AND IT.DTBAIXA is NULL ';
      1: vComando := vComando + ' AND IT.DTBAIXA is not NULL ';
    end;
  end;
  fDMCadOP.sdsConsulta_OP.CommandText := fDMCadOP.ctConsulta_OP + vComando;
  fDMCadOP.cdsConsulta_OP.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsOP.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadOP.cdsConsulta_OP.Active) then
  begin
    MessageDlg('*** Deve ser feita a consulta primeiro!', mtInformation, [mbOk], 0);
    exit;
  end;
  if SMDBGrid1.SelectedRows.Count > 0 then
  begin
    MessageDlg('*** Para a impressão o sistema não usa a opção de selecionados,' + #13
              + 'a impressão será feita de todas as OP(s) que estão na consulta!' , mtInformation, [mbOk], 0);
    SMDBGrid1.UnSelectAllClick(Sender);
  end;

  prc_Monta_Cab;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Ciex_OP.fr3';
  if FileExists(vArq) then
    fDMCadOP.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadOP.frxReport1.variables['ImpOpcao'] := QuotedStr(fDMCadOP.vDescOpcao_Rel);
  fDMCadOP.frxReport1.ShowReport;
end;

procedure TfrmConsOP.prc_Monta_Cab;
begin
  fDMCadOP.vDescOpcao_Rel := '';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fDMCadOP.vDescOpcao_Rel := fDMCadOP.vDescOpcao_Rel + '(Emissão: ' + DateEdit1.Text +  ' a ' + DateEdit2.Text + ')'
  else
  if DateEdit1.Date > 10 then
    fDMCadOP.vDescOpcao_Rel := fDMCadOP.vDescOpcao_Rel + '(Emissão Ini: ' + DateEdit1.Text + ')'
  else
  if DateEdit2.Date > 10 then
    fDMCadOP.vDescOpcao_Rel := fDMCadOP.vDescOpcao_Rel + '(Emissão Final: ' + DateEdit2.Text + ')';
  if CurrencyEdit1.AsInteger > 0 then
    fDMCadOP.vDescOpcao_Rel := fDMCadOP.vDescOpcao_Rel + '(Nº OP: ' + CurrencyEdit1.Text + ')';
  if trim(Edit1.Text) <> '' then
    fDMCadOP.vDescOpcao_Rel := fDMCadOP.vDescOpcao_Rel + '(Referência: ' + Edit1.Text + ')';
  case ComboBox1.ItemIndex of
    0: fDMCadOP.vDescOpcao_Rel := fDMCadOP.vDescOpcao_Rel + '(A Produzir)';
    1: fDMCadOP.vDescOpcao_Rel := fDMCadOP.vDescOpcao_Rel + '(Produzido)';
  end;
end;

procedure TfrmConsOP.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadOP.cdsConsulta_OPDTBAIXA.IsNull) then
  begin
    Background  := $0082FF82;
    AFont.Color := clBlack;
  end
  else
  if StrToFloat(FormatFloat('0.000',fDMCadOP.cdsConsulta_OPQTD_PRODUZIDO.AsFloat)) > 0 then
  begin
    Background  := $00FFFFDF;
    AFont.Color := clBlack;
  end
  else
  if fDMCadOP.cdsConsulta_OPDTINICIAL.IsNull then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsOP.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOP.cdsConsulta_OP.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsOP.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := 0;
    vReferencia_Pos := '';
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vReferencia_Pos <> '' then
      Edit1.Text := vReferencia_Pos;
  end;
end;

procedure TfrmConsOP.Edit1Exit(Sender: TObject);
begin
  fDMCadOP.prc_Abrir_qProduto(Edit2.Text,0);
  Label16.Caption := fDMCadOP.qProdutoNOME.AsString;
end;

procedure TfrmConsOP.btnBaixarClick(Sender: TObject);
var
  ffrmBaixaOP: TfrmBaixaOP;
begin
  ffrmBaixaOP := TfrmBaixaOP.Create(self);
  ffrmBaixaOP.fDMCadOP := fDMCadOP;
  ffrmBaixaOP.ShowModal;
  FreeAndNil(ffrmBaixaOP);
  if (fDMCadOP.cdsConsulta_OP.Active) and not(fDMCadOP.cdsConsulta_OP.IsEmpty) then
    btnConsultarClick(Sender);
end;

procedure TfrmConsOP.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOP.cdsConsulta_Baixa.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsOP.btnConsultar_BaixaClick(Sender: TObject);
begin
  prc_Consultar_Baixa;
end;

procedure TfrmConsOP.prc_Consultar_Baixa;
var
  vComando: String;
begin
  SMDBGrid2.DisableScroll;
  fDMCadOP.cdsConsulta_Baixa.Close;
  if CurrencyEdit2.AsInteger > 0 then
    vComando := ' WHERE OP.NUM_OP = ' + IntToStr(CurrencyEdit2.AsInteger)
  else
  begin
    vComando := ' WHERE 0 = 0 ';
    if DateEdit3.Date > 10 then
      vComando := vComando + ' AND B.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND B.DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if trim(Edit2.Text) <> '' then
      vComando := vComando + ' AND PRO.REFERENCIA = ' + QuotedStr(Edit2.Text);
  end;
  fDMCadOP.sdsConsulta_Baixa.CommandText := fDMCadOP.ctConsulta_Baixa + vComando;
  fDMCadOP.cdsConsulta_Baixa.Open;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmConsOP.btnExcluir_BaixaClick(Sender: TObject);
begin
  if not(fDMCadOP.cdsConsulta_Baixa.Active) or (fDMCadOP.cdsConsulta_Baixa.IsEmpty) then
    exit;
  if MessageDlg('Deseja excluir a baixa da OP ' + fDMCadOP.cdsConsulta_BaixaNUM_OP.AsString + ', Item: ' + fDMCadOP.cdsConsulta_BaixaITEM.AsString + ', It.Baixa: ' +
     fDMCadOP.cdsConsulta_BaixaITEM_BAIXA.AsString + ' ?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadOP.prc_Abrir_OP_Itens_Baixa(fDMCadOP.cdsConsulta_BaixaID.AsInteger,fDMCadOP.cdsConsulta_BaixaITEM.AsInteger,fDMCadOP.cdsConsulta_BaixaITEM_BAIXA.AsInteger);

  if fDMCadOP.cdsOP_Itens_Baixa.IsEmpty then
  begin
    MessageDlg('*** Baixa não encontrada!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadOP.prc_Abrir_OP_Itens_Baixa_MAT(fDMCadOP.cdsConsulta_BaixaID.AsInteger,fDMCadOP.cdsConsulta_BaixaITEM.AsInteger,fDMCadOP.cdsConsulta_BaixaITEM_BAIXA.AsInteger);
  fDMCadOP.cdsOP_Itens_Baixa_Mat.First;
  if not fDMCadOP.cdsOP_Itens_Baixa_Mat.IsEmpty then
  begin
    while not fDMCadOP.cdsOP_Itens_Baixa_Mat.Eof do
      fDMCadOP.cdsOP_Itens_Baixa_Mat.Delete;
    fDMCadOP.cdsOP_Itens_Baixa_Mat.ApplyUpdates(0);
  end;
  fDMCadOP.cdsOP_Itens_Baixa.Delete;
  fDMCadOP.cdsOP_Itens_Baixa.ApplyUpdates(0);
  btnConsultar_BaixaClick(Sender);
end;

procedure TfrmConsOP.btnExcluirClick(Sender: TObject);
var
  vTexto: String;
  ID: TTransactionDesc;
  vExcluida: Boolean;
begin
  vTexto := InputBox('Excluir OP','Informe o Nº da OP para Excluir:', '');
  vTexto := Monta_Numero(vTexto,0);
  if trim(vTexto) = '' then
  begin
    MessageDlg('*** Nº da OP não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Nesta opção vai excluir todos os itens da OP' +#13 +#13 +
                'Deseja excluir a OP ' + fDMCadOP.cdsConsulta_OPNUM_OP.AsString + '?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadOP.qExcluir_OP.Close;
  fDMCadOP.qExcluir_OP.ParamByName('NUM_OP').AsInteger := StrToInt(vTexto);
  fDMCadOP.qExcluir_OP.Open;
  if fDMCadOP.qExcluir_OPCONTADOR.AsInteger > 0 then
  begin
    MessageDlg('*** Já existe Item da OP produzida, Exclusão não será realizada!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadOP.cdsOP.Close;
  fDMCadOP.sdsOP.CommandText := fDMCadOP.ctCommand
                              + ' WHERE NUM_OP = ' + vTexto;
  fDMCadOP.cdsOP.Open;
  if fDMCadOP.cdsOP.IsEmpty then
  begin
    MessageDlg('*** OP nº ' + vTexto + ', não encontrada!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadOP.cdsOP_Itens.Close;
  fDMCadOP.cdsOP_Itens.Open;

  vExcluida := False;
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadOP.cdsOP_Itens.First;
    while not fDMCadOP.cdsOP_Itens.Eof do
      fDMCadOP.cdsOP_Itens.Delete;

    fDMCadOP.cdsOP_Itens.ApplyUpdates(0);
    fDMCadOP.cdsOP.Delete;
    fDMCadOP.cdsOP.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
    vExcluida := True;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

  if vExcluida then
    MessageDlg('*** OP ' + vTexto + ' Excluida ', mtConfirmation, [mbOk], 0)
  else
    MessageDlg('*** OP ' + vTexto + ' não foi Excluida ', mtInformation, [mbOk], 0);
  prc_Consultar;
end;

procedure TfrmConsOP.btnExcluir_ItemClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vExcluida: Boolean;
begin
  if not(fDMCadOP.cdsConsulta_OP.Active) or (fDMCadOP.cdsConsulta_OP.IsEmpty) then
    exit;
  if MessageDlg('Deseja excluir o OP/Item ' + fDMCadOP.cdsConsulta_OPNUM_OP.AsString + '/' + fDMCadOP.cdsConsulta_OPITEM.AsString + '?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadOP.prc_Localizar(fDMCadOP.cdsConsulta_OPID.AsInteger);
  if fDMCadOP.cdsOP.IsEmpty then
  begin
    MessageDlg('*** OP não encontrada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if not fDMCadOP.cdsOP_Itens.Locate('ID;Item',VarArrayOf([fDMCadOP.cdsConsulta_OPID.AsInteger,fDMCadOP.cdsConsulta_OPITEM.AsInteger ]),[locaseinsensitive]) then
  begin
    MessageDlg('*** Item da OP não encontrada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0',fDMCadOP.cdsOP_ItensQTD_PRODUZIDO.AsInteger)) > 0 then
  begin
    MessageDlg('*** Item já foi produzido, exclusão não será realizada!', mtInformation, [mbOk], 0);
    exit;
  end;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadOP.cdsOP_Itens.Delete;
    fDMCadOP.cdsOP_Itens.ApplyUpdates(0);
    if fDMCadOP.cdsOP_Itens.RecordCount <= 0 then
      fDMCadOP.cdsOP.Delete;
    fDMCadOP.cdsOP.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
    vExcluida := True;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  if vExcluida then
    MessageDlg('*** Item da OP Excluida!', mtConfirmation, [mbOk], 0)
  else
    MessageDlg('*** Item da OP não foi Excluida!', mtInformation, [mbOk], 0);
  prc_Consultar;
end;

procedure TfrmConsOP.btnIniciarOPClick(Sender: TObject);
var
  ffrmIniciarOP: TfrmIniciarOP;
begin
  ffrmIniciarOP := TfrmIniciarOP.Create(self);
  ffrmIniciarOP.fDMCadOP := fDMCadOP;
  ffrmIniciarOP.ShowModal;
  FreeAndNil(ffrmIniciarOP);
  if (fDMCadOP.cdsConsulta_OP.Active) and not(fDMCadOP.cdsConsulta_OP.IsEmpty) then
    btnConsultarClick(Sender);
end;

procedure TfrmConsOP.SMDBGrid2DblClick(Sender: TObject);
var
  ffrmConsOP_Baixa_Mat: TfrmConsOP_Baixa_Mat;
begin
  if (fDMCadOP.cdsConsulta_Baixa.IsEmpty) or (fDMCadOP.cdsConsulta_BaixaID.AsInteger <= 0) then
    exit;

  fDMCadOP.cdsConsulta_Baixa_Mat.Close;
  fDMCadOP.sdsConsulta_Baixa_Mat.ParamByName('ID').AsInteger         := fDMCadOP.cdsConsulta_BaixaID.AsInteger;
  fDMCadOP.sdsConsulta_Baixa_Mat.ParamByName('ITEM').AsInteger       := fDMCadOP.cdsConsulta_BaixaITEM.AsInteger;
  fDMCadOP.sdsConsulta_Baixa_Mat.ParamByName('ITEM_BAIXA').AsInteger := fDMCadOP.cdsConsulta_BaixaITEM_BAIXA.AsInteger;
  fDMCadOP.cdsConsulta_Baixa_Mat.Open;
  
  ffrmConsOP_Baixa_Mat := TfrmConsOP_Baixa_Mat.Create(self);
  ffrmConsOP_Baixa_Mat.fDMCadOP := fDMCadOP;
  ffrmConsOP_Baixa_Mat.ShowModal;
  FreeAndNil(ffrmConsOP_Baixa_Mat);
end;

procedure TfrmConsOP.SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadOP.cdsConsulta_Baixa.Active) and (fDMCadOP.cdsConsulta_BaixaBAIXOU_ESTOQUE_MAT.AsString = 'S') then
    Background := $00FFEAD5;
end;

end.
