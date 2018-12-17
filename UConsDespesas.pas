unit UConsDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsFinanceiro, RxLookup, UCBase, Mask, ToolEdit,
  RzPanel, RzTabs, CurrEdit, NxEdit, NxCollection, ComObj;

type
  TfrmConsDespesas = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    ckOC: TCheckBox;
    ckCheque: TCheckBox;
    FilenameEdit1: TFilenameEdit;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label7: TLabel;
    Shape2: TShape;
    Label8: TLabel;
    Shape3: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsFinanceiro: TDMConsFinanceiro;
    //ColunaOrdenada: String;

    procedure prc_Consultar;
    procedure prc_Le_Despesa;
    procedure prc_Consultar_OC;
    procedure prc_Le_OC;
    procedure prc_Excel;

  public
    { Public declarations }
  end;

var
  frmConsDespesas: TfrmConsDespesas;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelNotas_ES,
  StrUtils;

{$R *.dfm}

procedure TfrmConsDespesas.prc_Consultar;
var
  vComando: String;
begin
  vComando := fDMConsFinanceiro.ctDespesa;
  fDMConsFinanceiro.cdsDespesa.Close;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND DUP.ID_PESSOA = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND DUP.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND DUP.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if not ckCheque.Checked then
    vComando := vComando + ' AND DUP.TIPO_MOV <> ' + QuotedStr('H');
  fDMConsFinanceiro.sdsDespesa.CommandText := vComando;
  fDMConsFinanceiro.cdsDespesa.Open;
end;

procedure TfrmConsDespesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsDespesas.FormShow(Sender: TObject);
var
  vPasta : String;
begin
  fDMConsFinanceiro := TDMConsFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFinanceiro);
  fDMConsFinanceiro.cdsFilial.Open;
  fDMConsFinanceiro.cdsFornecedor.Open;
  fDMConsFinanceiro.cdsFilial.First;
  if (fDMConsFinanceiro.cdsFilial.RecordCount < 2) and (fDMConsFinanceiro.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsFinanceiro.cdsFilialID.AsInteger;
  vPasta := ExtractFilePath(Application.ExeName) + 'Despesas.XLS';
  FilenameEdit1.Text := vPasta;
end;

procedure TfrmConsDespesas.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
  prc_Le_Despesa;
  if ckOC.Checked then
  begin
    prc_Consultar_OC;
    prc_Le_OC;
  end;
  fDMConsFinanceiro.mDespesa.IndexFieldNames := 'Tipo;DtEmissao';
end;

procedure TfrmConsDespesas.btnImprimirClick(Sender: TObject);
begin
  if not fDMConsFinanceiro.mDespesa.Active then
    exit;
  prc_Excel;
end;

procedure TfrmConsDespesas.prc_Le_Despesa;
var
  vID_Nota_Ant : Integer;
  vVlrIpi, vVlrIcms : Real;
  vVlrAux : Real;
  vVlrNota : Real;
begin
  fDMConsFinanceiro.cdsDespesa.IndexFieldNames := 'ID_NOTA';
  fDMConsFinanceiro.mDespesa.EmptyDataSet;
  vID_Nota_Ant := 0;
  vVlrIcms     := 0;
  vVlrIpi      := 0;
  vVlrNota     := 0;
  fDMConsFinanceiro.cdsDespesa.First;
  while not fDMConsFinanceiro.cdsDespesa.Eof do
  begin
    if (vID_Nota_Ant <> fDMConsFinanceiro.cdsDespesaID_NOTA.AsInteger) and (fDMConsFinanceiro.cdsDespesaID_NOTA.AsInteger > 0) then
    begin
      if (vID_Nota_Ant > 0) and (StrToFloat(FormatFloat('0.00',vVlrIpi)) > 0) then
      begin
        fDMConsFinanceiro.mDespesa.Edit;
        fDMConsFinanceiro.mDespesaVlrIpi.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mDespesaVlrIpi.AsFloat + vVlrIpi));
        fDMConsFinanceiro.mDespesa.Post;
      end;
      if (vID_Nota_Ant > 0) and (StrToFloat(FormatFloat('0.00',vVlrIcms)) > 0) then
      begin
        fDMConsFinanceiro.mDespesa.Edit;
        fDMConsFinanceiro.mDespesaVlrIcms.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mDespesaVlrIcms.AsFloat + vVlrIcms));
        fDMConsFinanceiro.mDespesa.Post;
      end;
      fDMConsFinanceiro.qNota_Entrada.Close;
      fDMConsFinanceiro.qNota_Entrada.ParamByName('ID').AsInteger := fDMConsFinanceiro.cdsDespesaID_NOTA.AsInteger;
      fDMConsFinanceiro.qNota_Entrada.Open;
      vVlrIcms := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.qNota_EntradaVLR_ICMS.AsFloat));
      vVlrIpi  := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.qNota_EntradaVLR_IPI.AsFloat));
      vVlrNota := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.qNota_EntradaVLR_NOTA.AsFloat));
    end;

    fDMConsFinanceiro.mDespesa.Insert;
    fDMConsFinanceiro.mDespesaDtEmissao.AsDateTime         := fDMConsFinanceiro.cdsDespesaDTEMISSAO.AsDateTime;
    fDMConsFinanceiro.mDespesaID_ContasOrcamento.AsInteger := fDMConsFinanceiro.cdsDespesaID_CONTA_ORCAMENTO.AsInteger;
    fDMConsFinanceiro.mDespesaID_Pessoa.AsInteger          := fDMConsFinanceiro.cdsDespesaID_PESSOA.AsInteger;
    fDMConsFinanceiro.mDespesaDtVencimento.AsDateTime      := fDMConsFinanceiro.cdsDespesaDTVENCIMENTO.AsDateTime;
    fDMConsFinanceiro.mDespesaNumNota.AsInteger            := fDMConsFinanceiro.cdsDespesaNUMNOTA.AsInteger;
    fDMConsFinanceiro.mDespesaNumDuplicata.AsString        := fDMConsFinanceiro.cdsDespesaNUMDUPLICATA.AsString;
    fDMConsFinanceiro.mDespesaVlrTotal.AsFloat             := fDMConsFinanceiro.cdsDespesaVLR_PARCELA.AsFloat;
    fDMConsFinanceiro.mDespesaNome_ContaOrcamento.AsString := fDMConsFinanceiro.cdsDespesaNOME_CONTA_ORCAMENTO.AsString;
    fDMConsFinanceiro.mDespesaNome_Pessoa.AsString         := fDMConsFinanceiro.cdsDespesaNOME_PESSOA.AsString;
    if fDMConsFinanceiro.cdsDespesaTIPO_MOV.AsString = 'H' then
      fDMConsFinanceiro.mDespesaTipo.AsString              := '3'
    else
      fDMConsFinanceiro.mDespesaTipo.AsString              := '1';
    if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.cdsDespesaVLR_RESTANTE.AsFloat)) > 0 then
      fDMConsFinanceiro.mDespesaSituacao.AsString := 'A PAGAR'
    else
      fDMConsFinanceiro.mDespesaSituacao.AsString := 'PAGO';
    if fDMConsFinanceiro.cdsDespesaID_NOTA.AsInteger > 0 then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.00',(fDMConsFinanceiro.cdsDespesaVLR_PARCELA.AsFloat / vVlrNota) * 100));
      if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.qNota_EntradaVLR_IPI.AsFloat)) > 0 then
      begin
        fDMConsFinanceiro.mDespesaVlrIpi.AsFloat := StrToFloat(FormatFloat('0.00',(fDMConsFinanceiro.qNota_EntradaVLR_IPI.AsFloat * vVlrAux) / 100));
        if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mDespesaVlrIpi.AsFloat)) > StrToFloat(FormatFloat('0.00',vVlrIpi)) then
          fDMConsFinanceiro.mDespesaVlrIpi.AsFloat := StrToFloat(FormatFloat('0.00',vVlrIpi));
        vVlrIpi := StrToFloat(FormatFloat('0.00',vVlrIpi - fDMConsFinanceiro.mDespesaVlrIpi.AsFloat));
      end;
      if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.qNota_EntradaVLR_ICMS.AsFloat)) > 0 then
      begin
        fDMConsFinanceiro.mDespesaVlrIcms.AsFloat := StrToFloat(FormatFloat('0.00',(fDMConsFinanceiro.qNota_EntradaVLR_ICMS.AsFloat * vVlrAux) / 100));
        if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mDespesaVlrIcms.AsFloat)) > StrToFloat(FormatFloat('0.00',vVlrIcms)) then
          fDMConsFinanceiro.mDespesaVlrIcms.AsFloat := StrToFloat(FormatFloat('0.00',vVlrIcms));
        vVlrIcms := StrToFloat(FormatFloat('0.00',vVlrIcms - fDMConsFinanceiro.mDespesaVlrIcms.AsFloat));
      end;
    end;
    fDMConsFinanceiro.mDespesa.Post;
    vID_Nota_Ant := fDMConsFinanceiro.cdsDespesaID_NOTA.AsInteger;
    fDMConsFinanceiro.cdsDespesa.Next;
  end;
end;

procedure TfrmConsDespesas.prc_Consultar_OC;
var
  vComando : String;
begin
  fDMConsFinanceiro.cdsOC_Pendente.Close;
  vComando := fDMConsFinanceiro.ctOC_Pendente;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND P.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND P.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  fDMConsFinanceiro.sdsOC_Pendente.CommandText := vComando;
  fDMConsFinanceiro.cdsOC_Pendente.Open;
end;

procedure TfrmConsDespesas.prc_Le_OC;
var
  vNum_OC_Ant : Integer;
  vVlrAux : Real;
begin
  vNum_OC_Ant := 0;
  fDMConsFinanceiro.cdsOC_Pendente.First;
  while not fDMConsFinanceiro.cdsOC_Pendente.Eof do
  begin
    if vNum_OC_Ant <> fDMConsFinanceiro.cdsOC_PendenteNUM_PEDIDO.AsInteger then
      fDMConsFinanceiro.mDespesa.Insert
    else
    if fDMConsFinanceiro.mDespesa.Locate('NumOC',fDMConsFinanceiro.cdsOC_PendenteNUM_PEDIDO.AsInteger,[loCaseInsensitive]) then
      fDMConsFinanceiro.mDespesa.Edit
    else
      fDMConsFinanceiro.mDespesa.Insert;
    if fDMConsFinanceiro.mDespesa.State in [dsInsert] then
    begin
      fDMConsFinanceiro.mDespesaNumOC.AsInteger       := fDMConsFinanceiro.cdsOC_PendenteNUM_PEDIDO.AsInteger;
      fDMConsFinanceiro.mDespesaNumDuplicata.AsString := fDMConsFinanceiro.cdsOC_PendenteNUM_PEDIDO.AsString;
      fDMConsFinanceiro.mDespesaNumNota.AsInteger     := 0;
      fDMConsFinanceiro.mDespesaDtEmissao.AsDateTime  := fDMConsFinanceiro.cdsOC_PendenteDTEMISSAO.AsDateTime;
      fDMConsFinanceiro.mDespesaID_ContasOrcamento.AsInteger := fDMConsFinanceiro.cdsOC_PendenteID_CONTA_ORCAMENTO.AsInteger;
      fDMConsFinanceiro.mDespesaID_Pessoa.AsInteger          := fDMConsFinanceiro.cdsOC_PendenteID_CLIENTE.AsInteger;
      fDMConsFinanceiro.mDespesaNome_ContaOrcamento.AsString := fDMConsFinanceiro.cdsOC_PendenteNOME_CONTA_ORCAMENTO.AsString;
      fDMConsFinanceiro.mDespesaNome_Pessoa.AsString         := fDMConsFinanceiro.cdsOC_PendenteNOME_FORNECEDOR.AsString;
      fDMConsFinanceiro.mDespesaPrazo_OC.AsString            := fDMConsFinanceiro.cdsOC_PendenteNOME_CONDICAO.AsString;
      fDMConsFinanceiro.mDespesaDtVencimento.Clear;
      fDMConsFinanceiro.mDespesaTipo.AsString     := '2';
      fDMConsFinanceiro.mDespesaSituacao.AsString := 'A PAGAR';
      fDMConsFinanceiro.mDespesaVlrTotal.AsFloat  := 0;
      fDMConsFinanceiro.mDespesaVlrIpi.AsFloat    := 0;
      fDMConsFinanceiro.mDespesaVlrIcms.AsFloat   := 0;
    end;
    vVlrAux := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.cdsOC_PendenteVLR_UNITARIO.AsFloat * fDMConsFinanceiro.cdsOC_PendenteQTD_RESTANTE.AsFloat));
    fDMConsFinanceiro.mDespesaVlrTotal.AsFloat  := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mDespesaVlrTotal.AsFloat + vVlrAux));
    if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.cdsOC_PendentePERC_IPI.AsFloat)) > 0 then
      fDMConsFinanceiro.mDespesaVlrIpi.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mDespesaVlrIpi.AsFloat + ((vVlrAux * fDMConsFinanceiro.cdsOC_PendentePERC_IPI.AsFloat) / 100)));
    if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.cdsOC_PendentePERC_ICMS.AsFloat)) > 0 then
      fDMConsFinanceiro.mDespesaVlrIcms.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mDespesaVlrIcms.AsFloat + ((vVlrAux * fDMConsFinanceiro.cdsOC_PendentePERC_ICMS.AsFloat) / 100)));
    fDMConsFinanceiro.mDespesa.Post;

    vNum_OC_Ant := fDMConsFinanceiro.cdsOC_PendenteNUM_PEDIDO.AsInteger;

    fDMConsFinanceiro.cdsOC_Pendente.Next;
  end;

end;

procedure TfrmConsDespesas.prc_Excel;
  var linha, coluna : integer;
  var planilha : variant;
  var valorcampo : string;
  vNome_Grupo : String;
  vTipo : String;
  Coluna2 : Integer;
begin
  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Lançamento de Despesas Variáveis';
  planilha.visible := true;

  //Condiçoes de venda
  planilha.Workbooks[1].WorkSheets[1].Name := 'Despesas';
  Coluna := 1;
  Linha  := 1;
  planilha.cells[linha,coluna] := 'Lançamento de Despesas Variáveis';
  planilha.Range['A1:D1'].Mergecells := True;
  planilha.Range['A1'].font.bold := true; // Negrito
  planilha.Range['A1'].Interior.Color := clYellow;
  planilha.Range['A1'].font.size := 15; // Tamanho da Fonte
  linha := linha + 2;
  //planilha.cells[linha,1] := fDMExcel.qParametrosOBS_EXPORTACAO_EXCEL.Value;
  planilha.columns.Autofit;
  ///********

  //planilha.Workbooks[1].Sheets.Add;
  //planilha.Workbooks[1].WorkSheets[1].Name := 'Despesas';

  //Cliente
  {Coluna := 1;
  Linha  := 1;
  planilha.cells[linha,2] := 'Dados do Cliente';
  planilha.Range['B1','B1'].font.size := 15; // Tamanho da Fonte
  linha := linha + 1;
  planilha.cells[linha,coluna] := 'CNPJ:';
  planilha.Range['A1','B3'].font.bold := true; // Negrito
  planilha.Range['A1','B3'].Interior.Color := clYellow;
  planilha.Range['A2','B3'].font.size := 13; // Tamanho da Fonte
  Linha := Linha + 1;
  planilha.cells[linha,coluna] := 'Razão Social:';

  //Cliente
  Linha  := Linha + 2;
  planilha.cells[linha,2] := 'Representante:';
  planilha.Range['B5','B5'].font.size := 15; // Tamanho da Fonte
  Linha  := Linha + 1;
  planilha.cells[linha,coluna] := 'Código:';
  Linha  := Linha + 1;
  planilha.cells[linha,coluna] := 'Nome:';
  planilha.Range['A5','B7'].font.bold := true; // Negrito
  planilha.Range['A5','B7'].Interior.Color := clMoneyGreen;
  planilha.Range['A6','B7'].font.size := 13; // Tamanho da Fonte
  Linha := Linha + 1;}

  //linha := Linha + 2;
  Coluna2 := 0;
  for coluna := 1 to fDMConsFinanceiro.mDespesa.FieldCount do
  begin
    if (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName <> 'ID_ContasOrcamento') and (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName <> 'ID_Pessoa') and
       (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName <> 'Tipo') then
    begin
      Coluna2 := Coluna2 + 1;
      valorcampo := fDMConsFinanceiro.mDespesa.Fields[coluna - 1].DisplayLabel;
      planilha.cells[Linha,coluna2] := valorcampo;
      //planilha.cells[Linha,coluna2].font.bold := true; // Negrito
      //planilha.cells[Linha,coluna2].Interior.Color := clRed;
      planilha.cells[Linha,coluna2].Interior.Color := $00FFFFB7;
      planilha.cells[Linha,coluna2].font.size := 14; // Tamanho da Fonte
      //planilha.cells[Linha,coluna2].font.Color := clWhite;
      planilha.cells[Linha,coluna2].font.Color := clBlack;
      //planilha.cells[Linha,coluna2].VerticalAlignment := 2;
      planilha.cells[Linha,coluna2].HorizontalAlignment := 3;
    end;
  end;

  vNome_Grupo := '-Z';
  vTipo := '';
  fDMConsFinanceiro.mDespesa.First;
  //while linha <= fDMExcel.cdsProduto.RecordCount - 1 do
  while not fDMConsFinanceiro.mDespesa.Eof do
  begin
    linha := Linha + 1;
    if vTipo <> fDMConsFinanceiro.mDespesaTipo.AsString then
    begin
      if fDMConsFinanceiro.mDespesaTipo.AsString = '1' then
        planilha.cells[linha,1] := 'Nota'
      else
      if fDMConsFinanceiro.mDespesaTipo.AsString = '2' then
        planilha.cells[linha,1] := 'OC'
      else
      if fDMConsFinanceiro.mDespesaTipo.AsString = '3' then
        planilha.cells[linha,1] := 'Cheque';
      planilha.cells[linha,1].font.size := 12; // Tamanho da Fonte
      planilha.cells[linha,1].font.Color := clBlack;
      planilha.cells[linha,1].font.bold := true; // Negrito
      planilha.cells[linha,1].Interior.Color := clGray;
      planilha.cells[linha,2].Interior.Color := clGray;
      planilha.cells[linha,3].Interior.Color := clGray;
      planilha.cells[linha,4].Interior.Color := clGray;
      planilha.cells[linha,5].Interior.Color := clGray;
      Linha := Linha + 1;
    end;

    Coluna2 := 0;
    for coluna := 1 to fDMConsFinanceiro.mDespesa.FieldCount do
    begin
      if (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName <> 'ID_ContasOrcamento') and (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName <> 'ID_Pessoa') and
         (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName <> 'Tipo') then
      begin
        Coluna2 := Coluna2 + 1;
        valorcampo := fDMConsFinanceiro.mDespesa.Fields[coluna - 1].AsString;
        if (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName = 'VlrTotal') or (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName = 'VlrIpi') or
           (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName = 'VlrIcms') then
        begin
          planilha.Cells[linha,coluna2].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
          planilha.cells[linha,coluna2] := StrToFloat(valorCampo);
        end
        else
        if (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName = 'DtEmissao') or (fDMConsFinanceiro.mDespesa.Fields[coluna - 1].FieldName = 'DtVencimento') then
        begin
          planilha.Cells[linha,coluna2].NumberFormat := 'dd/mm/aaaa';
          planilha.cells[linha,coluna2] := valorCampo;
          planilha.cells[Linha,coluna2].HorizontalAlignment := 3;
        end
        else
          planilha.cells[linha,coluna2] := valorCampo;
        planilha.cells[linha,coluna2].font.size := 11; // Tamanho da Fonte
      end;
    end;

    vTipo := fDMConsFinanceiro.mDespesaTipo.AsString;

    fDMConsFinanceiro.mDespesa.Next;
  end;                         
  planilha.columns.Autofit;
  //if trim(FilenameEdit1.Text) <> '' then
    //planilha.SaveAs(FilenameEdit1.Text);
    //planilha.SaveToFile(FilenameEdit1.Text+'.XLS' );
   //Planilha.ActiveWorkBook.SaveAs(FilenameEdit1.Text+ '_'+ vNome_Tab_Preco +'.XLS' );
  //Planilha.ActiveWorkBook.SaveAs('C:\A\Teste_Hidrosul.XLS');
  Planilha.ActiveWorkBook.SaveAs(FilenameEdit1.Text+ 'Despesa.XLS' );
  Screen.Cursor := crDefault;
end;

procedure TfrmConsDespesas.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsFinanceiro.mDespesaTipo.AsString = '1' then
    Background := $00FFFFDD
  else
  if fDMConsFinanceiro.mDespesaTipo.AsString = '2' then
    Background := $00E1E1E1
  else
  if fDMConsFinanceiro.mDespesaTipo.AsString = '3' then
    Background := $00C1FFFF;
end;

end.
