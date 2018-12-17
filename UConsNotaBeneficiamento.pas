unit UConsNotaBeneficiamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  Buttons, Grids, DBGrids, SMDBGrid, DB, UDMConsNotaBeneficiamento, RzPanel,
  UCBase, RzTabs, UConsNotaBeneficiamento_Nota, NxCollection, SqlExpr;

type
  TfrmConsNotaBeneficiamento = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Shape4: TShape;
    Label13: TLabel;
    CheckBox1: TCheckBox;
    Shape1: TShape;
    Label6: TLabel;
    btnAtualizar: TBitBtn;
    UCControls1: TUCControls;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    Panel3: TPanel;
    btnMostrar_Notas: TBitBtn;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnAtualizarClick(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnMostrar_NotasClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsNotaBeneficiamento : TDMConsNotaBeneficiamento;
    ffrmConsNotaBeneficiamento_Nota : TfrmConsNotaBeneficiamento_Nota;

    procedure prc_Consultar_NotaEntrada;
    procedure Le_cdsNotaEntrada;
    procedure prc_Gravar_Atualizacao(Qtd_Restante, Qtd_Devolvida : Real ; ID, Item : Integer);
    function Replace(Str, Ant, Novo: string): string;

  public
    { Public declarations }

  end;

var
  frmConsNotaBeneficiamento: TfrmConsNotaBeneficiamento;

implementation

uses rsDBUtils, URelNotaBeneficiamento, UMenu, uUtilPadrao, USel_Produto,
  USel_Pessoa, DmdDatabase;

{$R *.dfm}

procedure TfrmConsNotaBeneficiamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotaBeneficiamento.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotaBeneficiamento);
end;

procedure TfrmConsNotaBeneficiamento.prc_Consultar_NotaEntrada;
begin
  fDMConsNotaBeneficiamento.cdsNotaEntrada.Close;
  fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText := fDMConsNotaBeneficiamento.ctNotaEntrada;
  if ComboBox1.ItemIndex = 0 then
    fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText := fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText + ' AND CFOP.BENEFICIAMENTO = ' + QuotedStr('S');
  if RxDBLookupCombo3.Text <> '' then
    fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText := fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText
                                               + ' AND NF.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText := fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText
                                               + ' AND ((NF.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue) + ')'
                                               + '  OR (NF.ID_CLIENTETRIANG = ' + IntToStr(RxDBLookupCombo2.KeyValue) + '))';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText := fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText
                                               + ' AND NI.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  case ComboBox2.ItemIndex of
    0 : fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText := fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText + ' AND NI.QTDRESTANTE > 0 ';
    1 : fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText := fDMConsNotaBeneficiamento.sdsNotaEntrada.CommandText + ' AND NI.QTDRESTANTE <= 0 ';
  end;
  fDMConsNotaBeneficiamento.cdsNotaEntrada.Open;
end;

procedure TfrmConsNotaBeneficiamento.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00000',fDMConsNotaBeneficiamento.cdsNotaEntradaQTDRESTANTE.AsFloat)) <= 0 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if StrToFloat(FormatFloat('0.00000',fDMConsNotaBeneficiamento.cdsNotaEntradaQTDDEVOLVIDA.AsFloat)) > 0 then
  begin
    Background  := clAqua;
    AFont.Color := clBlack;
  end;
  if (Field = fDMConsNotaBeneficiamento.cdsNotaEntradaQTDDEVOLVIDA) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMConsNotaBeneficiamento.cdsNotaEntradaQTDRESTANTE) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsNotaBeneficiamento.FormCreate(Sender: TObject);
begin
  fDMConsNotaBeneficiamento := TDMConsNotaBeneficiamento.Create(Self);
end;

procedure TfrmConsNotaBeneficiamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMConsNotaBeneficiamento);
end;

procedure TfrmConsNotaBeneficiamento.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsNotaBeneficiamento.cdsNotaEntrada.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNotaBeneficiamento.btnAtualizarClick(Sender: TObject);
var
  vQtdDevolvida : Real;
  vQtdAux : Real;
begin
  //Não usar este botão
  fDMConsNotaBeneficiamento.cdsNotaEntrada.First;
  while not fDMConsNotaBeneficiamento.cdsNotaEntrada.Eof do
  begin
    vQtdDevolvida := 0;
    fDMConsNotaBeneficiamento.cdsNotaDevolvida.Close;
    fDMConsNotaBeneficiamento.sdsNotaDevolvida.ParamByName('ID_NTE').AsInteger   := fDMConsNotaBeneficiamento.cdsNotaEntradaID_NTE.AsInteger;
    fDMConsNotaBeneficiamento.sdsNotaDevolvida.ParamByName('ITEM_NTE').AsInteger := fDMConsNotaBeneficiamento.cdsNotaEntradaITEM_NTE.AsInteger;
    fDMConsNotaBeneficiamento.cdsNotaDevolvida.Open;
    fDMConsNotaBeneficiamento.cdsNotaDevolvida.First;
    while not fDMConsNotaBeneficiamento.cdsNotaDevolvida.Eof do
    begin
      if fDMConsNotaBeneficiamento.cdsNotaDevolvidaTIPO_NOTA.AsString = 'E' then
        vQtdDevolvida := StrToFloat(FormatFloat('0.00000',vQtdDevolvida - fDMConsNotaBeneficiamento.cdsNotaDevolvidaQTD.AsFloat))
      else
        vQtdDevolvida := StrToFloat(FormatFloat('0.00000',vQtdDevolvida + fDMConsNotaBeneficiamento.cdsNotaDevolvidaQTD.AsFloat));
      fDMConsNotaBeneficiamento.cdsNotaDevolvida.Next;
    end;
    if StrToFloat(FormatFloat('0.00000',vQtdDevolvida)) >= 0 then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.00000',fDMConsNotaBeneficiamento.cdsNotaEntradaQTD.AsFloat - vQtdDevolvida));
      prc_Gravar_Atualizacao(vQtdAux, vQtdDevolvida,fDMConsNotaBeneficiamento.cdsNotaEntradaID_NTE.AsInteger,fDMConsNotaBeneficiamento.cdsNotaEntradaITEM_NTE.AsInteger);

      {fDMConsNotaBeneficiamento.cdsAtualiza.Close;
      fDMConsNotaBeneficiamento.sdsAtualiza.ParamByName('ID').AsInteger   := fDMConsNotaBeneficiamento.cdsNotaEntradaID_NTE.AsInteger;
      fDMConsNotaBeneficiamento.sdsAtualiza.ParamByName('ITEM').AsInteger := fDMConsNotaBeneficiamento.cdsNotaEntradaITEM_NTE.AsInteger;
      fDMConsNotaBeneficiamento.cdsAtualiza.Open;

      fDMConsNotaBeneficiamento.cdsAtualiza.Edit;
      fDMConsNotaBeneficiamento.cdsAtualizaQTDDEVOLVIDA.AsFloat := StrToFloat(FormatFloat('0.00000',vQtdDevolvida));
      fDMConsNotaBeneficiamento.cdsAtualizaQTDRESTANTE.AsFloat  := StrToFloat(FormatFloat('0.00000',fDMConsNotaBeneficiamento.cdsAtualizaQTD.AsFloat - fDMConsNotaBeneficiamento.cdsAtualizaQTDDEVOLVIDA.AsFloat));
      if fDMConsNotaBeneficiamento.cdsAtualizaQTDRESTANTE.AsFloat <= StrToFloat(FormatFloat('0.00000',0)) then
        fDMConsNotaBeneficiamento.cdsAtualizaQTDRESTANTE.AsInteger := 0;
      fDMConsNotaBeneficiamento.cdsAtualiza.Post;
      fDMConsNotaBeneficiamento.cdsAtualiza.ApplyUpdates(0);}
    end;

    fDMConsNotaBeneficiamento.cdsNotaEntrada.Next;
  end;
end;

procedure TfrmConsNotaBeneficiamento.Le_cdsNotaEntrada;
var
  vAux : Real;
begin
  fDMConsNotaBeneficiamento.mMaterial.EmptyDataSet;
  SMDBGrid1.DisableScroll;
  fDMConsNotaBeneficiamento.mMaterial.IndexFieldNames := 'Nome';
  fDMConsNotaBeneficiamento.cdsNotaEntrada.First;
  while not fDMConsNotaBeneficiamento.cdsNotaEntrada.Eof do
  begin
    if fDMConsNotaBeneficiamento.mMaterial.FindKey([fDMConsNotaBeneficiamento.cdsNotaEntradaNOMEPRODUTO.AsString]) then
      fDMConsNotaBeneficiamento.mMaterial.Edit
    else
    begin
      fDMConsNotaBeneficiamento.mMaterial.Insert;
      fDMConsNotaBeneficiamento.mMaterialCodigo.AsInteger    := fDMConsNotaBeneficiamento.cdsNotaEntradaID_PRODUTO.AsInteger;
      fDMConsNotaBeneficiamento.mMaterialNome.AsString       := fDMConsNotaBeneficiamento.cdsNotaEntradaNOMEPRODUTO.AsString;
      fDMConsNotaBeneficiamento.mMaterialReferencia.AsString := fDMConsNotaBeneficiamento.cdsNotaEntradaREFERENCIA.AsString; 
    end;
    fDMConsNotaBeneficiamento.mMaterialQtd.AsFloat          := fDMConsNotaBeneficiamento.mMaterialQtd.AsFloat + fDMConsNotaBeneficiamento.cdsNotaEntradaQTD.AsFloat;
    fDMConsNotaBeneficiamento.mMaterialQtdRestante.AsFloat  := fDMConsNotaBeneficiamento.mMaterialQtdRestante.AsFloat + fDMConsNotaBeneficiamento.cdsNotaEntradaQTDRESTANTE.AsFloat;
    fDMConsNotaBeneficiamento.mMaterialQtdDevolvida.AsFloat := fDMConsNotaBeneficiamento.mMaterialQtdDevolvida.AsFloat + fDMConsNotaBeneficiamento.cdsNotaEntradaQTDDEVOLVIDA.AsFloat;
    vAux := StrToFloat(FormatFloat('0.00',fDMConsNotaBeneficiamento.cdsNotaEntradaVLR_UNITARIO.AsFloat * fDMConsNotaBeneficiamento.cdsNotaEntradaQTD.AsFloat));
    fDMConsNotaBeneficiamento.mMaterialVlrTotal.AsFloat     := StrToFloat(FormatFloat('0.00',fDMConsNotaBeneficiamento.mMaterialVlrTotal.AsFloat + vAux));
    vAux := StrToFloat(FormatFloat('0.00',fDMConsNotaBeneficiamento.cdsNotaEntradaVLR_UNITARIO.AsFloat * fDMConsNotaBeneficiamento.cdsNotaEntradaQTDRESTANTE.AsFloat));
    fDMConsNotaBeneficiamento.mMaterialVlrRestante.AsFloat  := StrToFloat(FormatFloat('0.00',fDMConsNotaBeneficiamento.mMaterialVlrRestante.AsFloat + vAux));
    vAux := StrToFloat(FormatFloat('0.00',fDMConsNotaBeneficiamento.cdsNotaEntradaVLR_UNITARIO.AsFloat * fDMConsNotaBeneficiamento.cdsNotaEntradaQTDDEVOLVIDA.AsFloat));
    fDMConsNotaBeneficiamento.mMaterialVlrDevolvida.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsNotaBeneficiamento.mMaterialVlrDevolvida.AsFloat + vAux));
    fDMConsNotaBeneficiamento.mMaterial.Post;
    fDMConsNotaBeneficiamento.cdsNotaEntrada.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsNotaBeneficiamento.SMDBGrid3GetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00000',fDMConsNotaBeneficiamento.mMaterialQtdRestante.AsFloat)) <= 0 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if StrToFloat(FormatFloat('0.00000',fDMConsNotaBeneficiamento.mMaterialQtdDevolvida.AsFloat)) > 0 then
  begin
    Background  := clAqua;
    AFont.Color := clBlack;
  end;
  if (Field = fDMConsNotaBeneficiamento.mMaterialQtdDevolvida) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if (Field = fDMConsNotaBeneficiamento.mMaterialQtdRestante) then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsNotaBeneficiamento.SMDBGrid3TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsNotaBeneficiamento.mMaterial.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNotaBeneficiamento.RxDBLookupCombo2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo2.Text <> '' then
      vCodPessoa_Pos := RxDBLookupCombo2.KeyValue;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'F';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo2.KeyValue := vCodPessoa_Pos;
    RxDBLookupCombo2.SetFocus;
  end;
end;

procedure TfrmConsNotaBeneficiamento.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmConsNotaBeneficiamento.btnMostrar_NotasClick(Sender: TObject);
begin
  if not(fDMConsNotaBeneficiamento.cdsNotaEntrada.Active) or (fDMConsNotaBeneficiamento.cdsNotaEntrada.IsEmpty) then
    exit;

  fDMConsNotaBeneficiamento.cdsNotaDevolvida.Close;
  fDMConsNotaBeneficiamento.sdsNotaDevolvida.ParamByName('ID_NTE').AsInteger   := fDMConsNotaBeneficiamento.cdsNotaEntradaID_NTE.AsInteger;
  fDMConsNotaBeneficiamento.sdsNotaDevolvida.ParamByName('ITEM_NTE').AsInteger := fDMConsNotaBeneficiamento.cdsNotaEntradaITEM_NTE.AsInteger;
  fDMConsNotaBeneficiamento.cdsNotaDevolvida.Open;

  ffrmConsNotaBeneficiamento_Nota := TfrmConsNotaBeneficiamento_Nota.Create(self);
  ffrmConsNotaBeneficiamento_Nota.fDMConsNotaBeneficiamento := fDMConsNotaBeneficiamento;
  ffrmConsNotaBeneficiamento_Nota.ShowModal;
  FreeAndNil(ffrmConsNotaBeneficiamento_Nota);

  fDMConsNotaBeneficiamento.cdsNotaDevolvida.Close;
end;

procedure TfrmConsNotaBeneficiamento.SMDBGrid1DblClick(Sender: TObject);
begin
  btnMostrar_NotasClick(Sender);
end;

procedure TfrmConsNotaBeneficiamento.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar_NotaEntrada;
  Le_cdsNotaEntrada;
end;

procedure TfrmConsNotaBeneficiamento.btnImprimirClick(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  vTipo_Config_Email := 3;
  fRelNotaBeneficiamento                := TfRelNotaBeneficiamento.Create(Self);
  fRelNotaBeneficiamento.fDMConsNotaBeneficiamento := fDMConsNotaBeneficiamento;
  fRelNotaBeneficiamento.vImpNota   := CheckBox1.Checked;
  fRelNotaBeneficiamento.vOpcaoImp  := '';
  fRelNotaBeneficiamento.vOpcaoForn := '';
  case ComboBox1.ItemIndex of
    0 : fRelNotaBeneficiamento.vOpcaoImp := fRelNotaBeneficiamento.vOpcaoImp + '(Notas Beneficiamento)';
    1 : fRelNotaBeneficiamento.vOpcaoImp := fRelNotaBeneficiamento.vOpcaoImp + '(Todas Notas)';
  end;
  case ComboBox2.ItemIndex of
    0 : fRelNotaBeneficiamento.vOpcaoImp := fRelNotaBeneficiamento.vOpcaoImp + '(Pendente)';
    1 : fRelNotaBeneficiamento.vOpcaoImp := fRelNotaBeneficiamento.vOpcaoImp + '(Devolvida)';
  end;
  if RxDBLookupCombo3.Text <> '' then
    fRelNotaBeneficiamento.vOpcaoImp := fRelNotaBeneficiamento.vOpcaoImp + '(Empresa: ' + RxDBLookupCombo3.Text + ')';
  if RxDBLookupCombo1.Text <> '' then
    fRelNotaBeneficiamento.vOpcaoImp := fRelNotaBeneficiamento.vOpcaoImp + '(Material: ' + RxDBLookupCombo1.Text + ')';
  if RxDBLookupCombo2.Text <> '' then
    fRelNotaBeneficiamento.vOpcaoForn := fRelNotaBeneficiamento.vOpcaoForn + 'Fornecedor: ' + RxDBLookupCombo2.Text;

  if RzPageControl1.ActivePage = TabSheet1 then
  begin
    fRelNotaBeneficiamento.RLReport1.PreviewModal;
    fRelNotaBeneficiamento.RLReport1.Free;
    FreeAndNil(fRelNotaBeneficiamento);
  end
  else
  begin
    fRelNotaBeneficiamento.RLReport2.PreviewModal;
    fRelNotaBeneficiamento.RLReport2.Free;
    FreeAndNil(fRelNotaBeneficiamento);
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsNotaBeneficiamento.prc_Gravar_Atualizacao(Qtd_Restante, Qtd_Devolvida : Real ; ID, Item : Integer);
var
  sds: TSQLDataSet;
  vRest, vDevol : String;
begin
  vRest  := Replace(FormatFloat('0.00000',Qtd_Restante),',','.');
  vDevol := Replace(FormatFloat('0.00000',Qtd_Devolvida),',','.');

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'UPDATE NOTAFISCAL_ITENS SET QTDRESTANTE  = ' + vRest
                     + ' , QTDDEVOLVIDA = ' +  vDevol
                     + ' WHERE ID = ' + IntToStr(ID)
                     + '    AND ITEM = ' + IntToStr(Item);
  sds.ExecSQL;
  FreeAndNil(sds);
end;

function TfrmConsNotaBeneficiamento.Replace(Str, Ant,
  Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

end.
