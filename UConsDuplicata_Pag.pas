unit UConsDuplicata_Pag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadDuplicata, ComObj,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, RXDBCtrl, RzPanel,
  UEscolhe_Filial, URelDuplicata, UCadDuplicata_Pag, Variants, UCadDuplicata_Pag_Sel,  NxCollection, UCadDuplicata_Gerar, UDMCadCheque;

type
  TfrmConsDuplicata_Pag = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    Label15: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    Label18: TLabel;
    DateEdit1: TDateEdit;
    Label26: TLabel;
    DateEdit2: TDateEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel4: TPanel;
    Label38: TLabel;
    lblPago: TLabel;
    btnRecalcular: TBitBtn;
    Shape4: TShape;
    Label47: TLabel;
    Label50: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label51: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    lblJurosPagos: TLabel;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label4: TLabel;
    lblMulta: TLabel;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnRecalcularClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadDuplicata          : TDMCadDuplicata;

    procedure prc_Consultar;
    procedure prc_Le_cdsPagto;
    procedure prc_Gerar_Lista_Excel(planilha: Variant);
  public
    { Public declarations }
    procedure prc_Posiciona_Duplicata;
  end;

var
  frmConsDuplicata_Pag: TfrmConsDuplicata_Pag;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, uRelPagarReceber, uRelPagarReceber_Pag, StrUtils, URelCheque_Copia, UCadDuplicata,
  USel_ContaOrc;

{$R *.dfm}

procedure TfrmConsDuplicata_Pag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsDuplicata_Pag.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadDuplicata := TDMCadDuplicata.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (fDMCadDuplicata.qParametros_FinMOSTRAR_VLR_MULTA_DUP.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'VLR_MULTA') then
      SMDBGrid1.Columns[i].Visible := False;
    if (SMDBGrid1.Columns[i].FieldName = 'PERC_COMISSAO') OR (SMDBGrid1.Columns[i].FieldName = 'NOME_VENDEDOR') then
    begin
      if fdmCadDuplicata.qParametrosUSA_VENDEDOR.AsString = 'N' then
        SMDBGrid1.Columns[i].Visible := False;
    end;
  end;
  Label4.Visible   := fDMCadDuplicata.qParametros_FinMOSTRAR_VLR_MULTA_DUP.AsString = 'S';
  lblMulta.Visible := fDMCadDuplicata.qParametros_FinMOSTRAR_VLR_MULTA_DUP.AsString = 'S';
end;

procedure TfrmConsDuplicata_Pag.prc_Consultar;
begin
  fDMCadDuplicata.cdsPagto.Close;
  fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.ctPagto + ' WHERE ((HIST.TIPO_HISTORICO = ' + QuotedStr('PAG') + ') OR (HIST.TIPO_HISTORICO = ' + QuotedStr('DEV') + '))';
  if RxDBLookupCombo1.Text <> '' then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
                                                       + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo7.Text <> '' then
    //10/11/2016    foi tirado a conta boleto e deixado somente a conta de pagamento
    //fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
    //                                                   + ' AND ((DUP.ID_CONTA_BOLETO = ' + IntToStr(RxDBLookupCombo7.KeyValue) + ')'
    //                                                   + '  OR (DUP.ID_CONTA = ' + IntToStr(RxDBLookupCombo7.KeyValue) + '))';
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText + ' AND (DUP.ID_CONTA = ' + IntToStr(RxDBLookupCombo7.KeyValue) + ')';
  if RxDBLookupCombo8.Text <> '' then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
                                                       + ' AND DUP.ID_TIPOCOBRANCA = ' + IntToStr(RxDBLookupCombo8.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
                                                       + ' AND DUP.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
                                                       + ' AND DUP.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if RxDBLookupCombo4.Text <> '' then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
                                                       + ' AND DUP.ID_CONTA_ORCAMENTO = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if DateEdit1.Date > 10 then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
                        + ' AND HIST.DTLANCAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText
                        + ' AND HIST.DTLANCAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case RadioGroup2.ItemIndex of
    0: fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText + ' AND DUP.TIPO_ES = ' + QuotedStr('E');
    1: fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText + ' AND DUP.TIPO_ES = ' + QuotedStr('S');
  end;
  fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText + ' AND DUP.TIPO_MOV <> ' + QuotedStr('H');
  if not CheckBox1.Checked then
    fDMCadDuplicata.sdsPagto.CommandText := fDMCadDuplicata.sdsPagto.CommandText + ' AND DUP.TRANSFERENCIA_ICMS = ' + QuotedStr('N');
  fDMCadDuplicata.cdsPagto.IndexFieldNames := 'DTLANCAMENTO';
  fDMCadDuplicata.cdsPagto.Open;
end;

procedure TfrmConsDuplicata_Pag.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsDuplicata_Pag.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadDuplicata);
end;

procedure TfrmConsDuplicata_Pag.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsDuplicata_Pag.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadDuplicata.cdsDuplicata);
end;

procedure TfrmConsDuplicata_Pag.prc_Posiciona_Duplicata;
begin
  fDMCadDuplicata.prc_Localizar(fDMCadDuplicata.cdsPagtoID.AsInteger);
  fDMCadDuplicata.cdsDuplicata_Hist.Close;
  fDMCadDuplicata.cdsDuplicata_Hist.Open;
  vFilial      := fDMCadDuplicata.cdsDuplicataFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadDuplicata.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadDuplicata.cdsFilialNOME_INTERNO.AsString;
end;

procedure TfrmConsDuplicata_Pag.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadDuplicata.cdsPagtoTRANSFERENCIA_ICMS.AsString = 'S' then
    Background  := clSilver;
end;

procedure TfrmConsDuplicata_Pag.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadDuplicata.cdsPagto.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsDuplicata_Pag.prc_Le_cdsPagto;
var
  VPago, vDevolucao, vJurosPagos, vVlrMulta : Real;
begin
  VPago       := 0;
  vDevolucao  := 0;
  vJurosPagos := 0;
  vVlrMulta   := 0;
  SMDBGrid1.DisableScroll;
  fDMCadDuplicata.cdsPagto.First;
  while not fDMCadDuplicata.cdsPagto.Eof do
  begin
    if fDMCadDuplicata.cdsPagtoTIPO_HISTORICO.AsString = 'DEV' then
      vDevolucao := vDevolucao + fDMCadDuplicata.cdsPagtoVLR_DEVOLUCAO.AsFloat
    else
      VPago := VPago + fDMCadDuplicata.cdsPagtoVLR_PAGAMENTO.AsFloat;
    vJurosPagos := vJurosPagos + fDMCadDuplicata.cdsPagtoVLR_JUROSPAGOS.AsFloat;
    vVlrMulta   := vVlrMulta + fDMCadDuplicata.cdsPagtoVLR_MULTA.AsFloat;
    fDMCadDuplicata.cdsPagto.Next;
  end;
  lblPago.Caption       := FormatFloat('###,###,###,##0.00',vPago);
  lblJurosPagos.Caption := FormatFloat('###,###,###,##0.00',vJurosPagos);
  lblMulta.Caption      := FormatFloat('###,###,###,##0.00',vVlrMulta);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsDuplicata_Pag.btnRecalcularClick(Sender: TObject);
begin
  if not fDMCadDuplicata.cdsPagto.Active then
    exit;
  prc_Le_cdsPagto;
end;

procedure TfrmConsDuplicata_Pag.btnImprimirClick(Sender: TObject);
begin
  fDMCadDuplicata.cdsPagto.IndexFieldNames := 'DTLANCAMENTO;TIPO_HISTORICO';
  vTipo_Config_Email := 3;

  SMDBGrid1.DisableScroll;
  
  fRelPagarReceber_Pag := TfRelPagarReceber_Pag.Create(Self);
  case RadioGroup2.ItemIndex of
    0 : fRelPagarReceber_Pag.vTipo_ES := 'E';
    1 : fRelPagarReceber_Pag.vTipo_ES := 'S';
  end;
  fRelPagarReceber_Pag.vOpcaoImp  := '';
  fRelPagarReceber_Pag.vOpcaoImp2 := '';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelPagarReceber_Pag.vOpcaoImp := fRelPagarReceber_Pag.vOpcaoImp + '(Pagamento: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    fRelPagarReceber_Pag.vOpcaoImp := fRelPagarReceber_Pag.vOpcaoImp + '(Apartir do Pagamento: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    fRelPagarReceber_Pag.vOpcaoImp := fRelPagarReceber_Pag.vOpcaoImp + '(Até o Pagamento: ' + DateEdit2.Text + ')';
  if trim(RxDBLookupCombo1.Text) <> '' then
    fRelPagarReceber_Pag.vOpcaoImp := fRelPagarReceber_Pag.vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  fRelPagarReceber_Pag.fDMCadDuplicata := fDMCadDuplicata;
  fRelPagarReceber_Pag.RlReport1.PreviewModal;
  fRelPagarReceber_Pag.RlReport1.Free;
  FreeAndNil(fRelPagarReceber_Pag);
  SMDBGrid1.EnableScroll;
end;           

procedure TfrmConsDuplicata_Pag.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      RxDBLookupCombo4.KeyValue := vID_ContaOrcamento_Pos;
  end;
end;

procedure TfrmConsDuplicata_Pag.NxButton1Click(Sender: TObject);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  DMCadDuplicata.cdsPagto.First;

  planilha := CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  prc_Gerar_Lista_Excel(planilha);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  Planilha.ActiveWorkBook.SaveAs(vTexto + 'Pagamentos.XLS');
  Screen.Cursor := crDefault;
end;

procedure TfrmConsDuplicata_Pag.prc_Gerar_Lista_Excel(planilha: Variant);
var
  linha, coluna: integer;
  valorCampo: string;
  vNome_Grupo: string;
  vFlag: Boolean;
  ColunaP: Integer;
  i2: Integer;
  ano, mes, dia: Word;
  vTexto: string;
begin
  linha := 2;
  ColunaP := 0;
  i2 := 0;
//  arrumar aqui

  for coluna := 1 to DMCadDuplicata.cdsPagto.FieldCount do
  begin
    if (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'NUMDUPLICATA') or
       (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'PARCELA') or
       (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'DTVENCIMENTO') or
       (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'DTEMISSAO') or
       (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'VLR_PARCELA') or
       (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'clDias_Atraso') or
       (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'NOME_PESSOA') then
    begin
      ColunaP := ColunaP + 1;
      valorcampo := DMCadDuplicata.cdsPagto.Fields[coluna - 1].DisplayLabel;
      planilha.cells[Linha, colunaP] := valorCampo;
      planilha.cells[Linha, colunaP].font.bold := True; // Negrito
      planilha.cells[Linha, colunaP].Interior.Color := clRed;
      planilha.cells[Linha, colunaP].font.size := 11; // Tamanho da Fonte
      planilha.cells[Linha, colunaP].font.Color := clWhite;
    end;
  end;

  DMCadDuplicata.cdsPagto.First;
  while not DMCadDuplicata.cdsPagto.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 1 to DMCadDuplicata.cdsPagto.FieldCount do
    begin
      if (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'NUMDUPLICATA') or
      (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'PARCELA') or
      (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'DTVENCIMENTO') or
      (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'DTEMISSAO') or
      (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'VLR_PARCELA') or
      (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'clDias_Atraso') or
      (DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName = 'NOME_PESSOA') then
      begin
        ColunaP := ColunaP + 1;
        vTexto := DMCadDuplicata.cdsPagto.Fields[coluna - 1].AsString;
        if trim(vTexto) <> '' then
          valorcampo := DMCadDuplicata.cdsPagto.Fields[coluna - 1].Value
        else
          valorcampo := '';
        vTexto := DMCadDuplicata.cdsPagto.Fields[coluna - 1].FieldName;
        if (copy(vTexto, 1, 4) = 'VLR_') then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        begin
          //if (copy(vTexto,1,2) = 'DT') then
          //  planilha.Range['C1'].VerticalAlignmen := 3;
          vTexto := DMCadDuplicata.cdsPagto.Fields[coluna - 1].AsString;
          if trim(vTexto) <> '' then
            planilha.cells[linha, colunaP] := DMCadDuplicata.cdsPagto.Fields[coluna - 1].Value
          else
            planilha.cells[linha, colunaP] := '';
        end;
        planilha.cells[linha, colunaP].font.size := 11; // Tamanho da Fonte
      end;
    end;
    DMCadDuplicata.cdsPagto.Next;
  end;
end;

end.
