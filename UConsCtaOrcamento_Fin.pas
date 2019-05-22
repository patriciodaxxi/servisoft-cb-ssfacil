unit UConsCtaOrcamento_Fin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxEdit, StdCtrls, Mask, ToolEdit, RxLookup, NxCollection,
  UDMConsFinanceiro, StrUtils, Grids, DBGrids, SMDBGrid, DB, RzTabs, ComCtrls,
  RzListVw, RzTreeVw, RzLstBox;

type EnumDataRelatorio = (tpDataEmissao,tpDataVencimento,tpDataPagamento);

type
  TfrmConsCtaOrcamento_Fin = class(TForm)
    Panel1: TPanel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    NxComboBox2: TNxComboBox;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox1: TComboBox;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    StaticText1: TStaticText;
    RzPageControl1: TRzPageControl;
    TS_Resumido: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ts_CentroCusto: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    ts_Centro_Orcamento: TRzTabSheet;
    Panel3: TPanel;
    SMDBGrid3: TSMDBGrid;
    Label11: TLabel;
    comboCentroCusto: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    fDMConsFinanceiro: TDMConsFinanceiro;
    vID_Conta_Orc: Integer;
    vVlr_Restante, vQtd_Restante: Real;
    procedure prc_Consultar;
    procedure prc_Le_Consulta;
    //procedure prc_Le_Pedido_Pend;
    procedure prc_Le_Pedido_Cli;
    procedure prc_Gravar_mConta_Orc;
    procedure prc_Gravar_mConta_Orc_Sint(Conta_Superior: Integer);
    procedure prc_Gravar_mConta_Ccusto(Conta_Superior: Integer);
    procedure prc_Le_Consulta_CCusto;
    procedure prc_Consultar_CCusto;
    procedure prc_Gravar_mConta_Orc_CCusto;
    procedure prc_Consultar_CCusto_Orcamento;
    procedure prc_Consultar_Resumo_CCusto;
    procedure prc_Carrega_Combo;
  public
    { Public declarations }

  end;

var
  frmConsCtaOrcamento_Fin: TfrmConsCtaOrcamento_Fin;

implementation

uses
  rsDBUtils, URelCtaOrcamento_Fin, uUtilPadrao, UConsCtaOrcamento_Det;

{$R *.dfm}

procedure TfrmConsCtaOrcamento_Fin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsCtaOrcamento_Fin.btnConsultarClick(Sender: TObject);
var
  vAux: Real;
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** É obrigatório informar a data inicial e final!', mtInformation, [mbOk], 0);
    exit;
  end;
  if DateEdit1.Date > DateEdit2.Date then
  begin
    MessageDlg('*** Data inicial não pode ser maior que a final!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMConsFinanceiro.qParametros_Cta_OrcID_CONTA_ORC_DESPESA.AsInteger <= 0 then
  begin
    MessageDlg('*** Conta de orçamento de Despesa não informada nos parametros (Contas de Orçamento)!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMConsFinanceiro.qParametros_Cta_OrcID_CONTA_ORC_RECEITA.AsInteger <= 0 then
  begin
    MessageDlg('*** Conta de orçamento de Receita não informada nos parametros (Contas de Orçamento)!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (RzPageControl1.ActivePage = ts_Centro_Orcamento) then
  begin
//    if (comboCentroCusto.KeyValue = 0) or (comboCentroCusto.KeyValue = null) then
//    begin
//      MessageDlg('*** Informe o centro de custo!', mtInformation, [mbOk], 0);
//      comboCentroCusto.SetFocus;
//      exit;
//    end;
    if (RxDBLookupCombo1.KeyValue = 0) or (RxDBLookupCombo1.KeyValue = null) then
    begin
      MessageDlg('*** Informe a filial!', mtInformation, [mbOk], 0);
      RxDBLookupCombo1.SetFocus;
      exit;
    end;
  end;

  fDMConsFinanceiro.vTotal_Desp := 0;
  fDMConsFinanceiro.vTotal_Rec := 0;
  if RzPageControl1.ActivePage = TS_Resumido then
  begin
    fDMConsFinanceiro.mConta_Orc.EmptyDataSet;
    prc_Consultar;
    prc_Le_Consulta;
    //prc_Le_Pedido_Pend;
    prc_Le_Pedido_Cli;
    fDMConsFinanceiro.mConta_Orc.IndexFieldNames := 'TIPO_ES;CODIGO';
  end
  else
  //if RzPageControl1.ActivePage = TS_Resumido then
  if RzPageControl1.ActivePage = ts_CentroCusto then
  begin
    fDMConsFinanceiro.mContas_Orc_CCusto.EmptyDataSet;
    prc_Consultar_CCusto;
    prc_Le_Consulta_CCusto;
    fDMConsFinanceiro.mContas_Orc_CCusto.IndexFieldNames := 'TIPO_ES;CODIGO';
  end
  else
  begin
    prc_Consultar_CCusto_Orcamento;
    prc_Consultar_Resumo_CCusto;
  end;
  Label6.Caption := FormatFloat('###,###,###,###,##0.00', fDMConsFinanceiro.vTotal_Rec);
  Label8.Caption := FormatFloat('###,###,###,###,##0.00', fDMConsFinanceiro.vTotal_Desp);
  vAux := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.vTotal_Rec - fDMConsFinanceiro.vTotal_Desp));
  Label10.Caption := FormatFloat('###,###,###,###,##0.00', vAux);
  if StrToFloat(FormatFloat('0.00', vAux)) < 0 then
    Label10.Font.Color := clRed
  else
    Label10.Font.Color := clNavy;
  Label9.Font.Color := Label10.Font.Color;

end;

procedure TfrmConsCtaOrcamento_Fin.prc_Consultar;
var
  vComando: string;
  vComandoAux, vComandoAux2: string;
  i: Integer;
begin
  fDMConsFinanceiro.cdsConsulta_Conta_Orc.Close;
  i := PosEx('GROUP', fDMConsFinanceiro.ctConsulta_Conta_Orc, 0);
  vComandoAux := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc, i, Length(fDMConsFinanceiro.ctConsulta_Conta_Orc) - i + 1);
  vComandoAux2 := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc, 1, i - 1);

  //vComando := ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if NxComboBox2.ItemIndex = 0 then
    vComando := vComando + ' AND DUP.DTULTPAGAMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.Date))
  else if NxComboBox2.ItemIndex = 1 then
    vComando := vComando + ' AND DUP.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.Date));

  case ComboBox1.ItemIndex of
    0:
      vComando := vComando + ' AND DUP.VLR_PAGO > 0 ';
    1:
      vComando := vComando + ' AND DUP.VLR_RESTANTE > 0 ';
  end;
  fDMConsFinanceiro.sdsConsulta_Conta_Orc.CommandText := vComandoAux2 + vComando + vComandoAux;
  fDMConsFinanceiro.cdsConsulta_Conta_Orc.Open;
end;

procedure TfrmConsCtaOrcamento_Fin.FormShow(Sender: TObject);
begin
  fDMConsFinanceiro := TDMConsFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFinanceiro);
  if fDMConsFinanceiro.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMConsFinanceiro.cdsFilialID.AsInteger;
  DateEdit1.SetFocus;
  fDMConsFinanceiro.qParametros_Cta_Orc.Open;
  fDMConsFinanceiro.cdsCentroCusto.Close;
  fDMConsFinanceiro.cdsCentroCusto.Open;
  prc_Carrega_Combo;  
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Le_Consulta;
begin
  fDMConsFinanceiro.mConta_Orc.EmptyDataSet;
  fDMConsFinanceiro.mConta_Orc.IndexFieldNames := 'ID';
  fDMConsFinanceiro.cdsConsulta_Conta_Orc.First;
  while not fDMConsFinanceiro.cdsConsulta_Conta_Orc.Eof do
  begin
    prc_Gravar_mConta_Orc;
    if (vID_Conta_Orc = 777700) then
      prc_Gravar_mConta_Orc_Sint(fDMConsFinanceiro.qParametros_Cta_OrcID_CONTA_ORC_RECEITA.AsInteger)
    else if (vID_Conta_Orc = 777800) then
      prc_Gravar_mConta_Orc_Sint(fDMConsFinanceiro.qParametros_Cta_OrcID_CONTA_ORC_DESPESA.AsInteger)
    else if trim(fDMConsFinanceiro.cdsConsulta_Conta_OrcSUPERIOR.AsString) <> '' then
      prc_Gravar_mConta_Orc_Sint(fDMConsFinanceiro.cdsConsulta_Conta_OrcSUPERIOR.AsInteger);
    fDMConsFinanceiro.cdsConsulta_Conta_Orc.Next;
  end;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Gravar_mConta_Orc;
var
  vTexto: string;
  i, i2: Integer;
begin
  i := fDMConsFinanceiro.cdsConsulta_Conta_OrcID_CONTA_ORCAMENTO.AsInteger;
  if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_OrcTIPO_ES.AsString = 'E') then
    i := 777700
  else if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_OrcTIPO_ES.AsString = 'S') then
    i := 777800;
  vID_Conta_Orc := i;
  if fDMConsFinanceiro.mConta_Orc.FindKey([i]) then
    fDMConsFinanceiro.mConta_Orc.Edit
  else
  begin
    fDMConsFinanceiro.mConta_Orc.Insert;
    fDMConsFinanceiro.mConta_OrcID.AsInteger := i;
    if trim(fDMConsFinanceiro.cdsConsulta_Conta_OrcCOD_CONTA_ORCAMENTO.AsString) = '' then
      fDMConsFinanceiro.mConta_OrcCodigo.AsString := IntToStr(i)
    else
      fDMConsFinanceiro.mConta_OrcCodigo.AsString := fDMConsFinanceiro.cdsConsulta_Conta_OrcCOD_CONTA_ORCAMENTO.AsString;
    i2 := (fDMConsFinanceiro.cdsConsulta_Conta_OrcNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mConta_OrcNome.AsString := vTexto + fDMConsFinanceiro.cdsConsulta_Conta_OrcNOME_CONTA_ORCAMENTO.AsString;
    if trim(fDMConsFinanceiro.mConta_OrcNome.AsString) = '' then
    begin
      if fDMConsFinanceiro.mConta_OrcID.AsInteger = 777700 then
        fDMConsFinanceiro.mConta_OrcNome.AsString := vTexto + '  RECEITAS DIVERSAS'
      else if fDMConsFinanceiro.mConta_OrcID.AsInteger = 777800 then
        fDMConsFinanceiro.mConta_OrcNome.AsString := vTexto + '  DESPESAS DIVERSAS';
    end;
    fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := fDMConsFinanceiro.cdsConsulta_Conta_OrcTIPO_ES.AsString;
  end;
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat - fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_RESTANTE.AsFloat));
  fDMConsFinanceiro.mConta_Orc.Post;

  if fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'E' then
    fDMConsFinanceiro.vTotal_Rec := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.vTotal_Rec + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat))
  else
    fDMConsFinanceiro.vTotal_Desp := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.vTotal_Desp + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat));
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Gravar_mConta_Orc_Sint(Conta_Superior: Integer);
var
  vTexto: string;
  i, i2: Integer;
begin
  fDMConsFinanceiro.qConta_Orcamento.Close;
  fDMConsFinanceiro.qConta_Orcamento.ParamByName('ID').AsInteger := Conta_Superior;
  fDMConsFinanceiro.qConta_Orcamento.Open;
  if fDMConsFinanceiro.qConta_Orcamento.IsEmpty then
    exit;

  if fDMConsFinanceiro.mConta_Orc.FindKey([Conta_Superior]) then
    fDMConsFinanceiro.mConta_Orc.Edit
  else
  begin
    fDMConsFinanceiro.mConta_Orc.Insert;
    fDMConsFinanceiro.mConta_OrcID.AsInteger := fDMConsFinanceiro.qConta_OrcamentoID.AsInteger;
    fDMConsFinanceiro.mConta_OrcCodigo.AsString := fDMConsFinanceiro.qConta_OrcamentoCODIGO.AsString;
    i2 := (fDMConsFinanceiro.qConta_OrcamentoNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mConta_OrcNome.AsString := vTexto + fDMConsFinanceiro.qConta_OrcamentoDESCRICAO.AsString;
    if fDMConsFinanceiro.qConta_OrcamentoTIPO_RD.AsString = 'R' then
      fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'E'
    else
      fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'S';
    fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString := fDMConsFinanceiro.qConta_OrcamentoTIPO.AsString;
  end;
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat - fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_RESTANTE.AsFloat));
  fDMConsFinanceiro.mConta_Orc.Post;

  if trim(fDMConsFinanceiro.qConta_OrcamentoSUPERIOR.AsString) <> '' then
    prc_Gravar_mConta_Orc_Sint(fDMConsFinanceiro.qConta_OrcamentoSUPERIOR.AsInteger);
end;

procedure TfrmConsCtaOrcamento_Fin.btnImprimirClick(Sender: TObject);
var
  vArq: string;
begin
  if RzPageControl1.ActivePage = TS_Resumido then
  begin
    fDMConsFinanceiro.mConta_Orc.IndexFieldNames := 'TIPO_ES;CODIGO';
    fDMConsFinanceiro.vDtInicial := DateEdit1.Date;
    fDMConsFinanceiro.vDtFinal := DateEdit2.Date;
    case NxComboBox2.ItemIndex of
      0:
        fDMConsFinanceiro.vTipo_Data := 'E';
      1:
        fDMConsFinanceiro.vTipo_Data := 'V';
    end;
    vTipo_Config_Email := 3;
    SMDBGrid1.DisableScroll;
    try
      Screen.Cursor := crSQLWait;
      fRelCtaOrcamento_Fin := TfRelCtaOrcamento_Fin.Create(Self);
      fRelCtaOrcamento_Fin.fDMConsFinanceiro := fDMConsFinanceiro;
      fRelCtaOrcamento_Fin.vImp_Titulos := CheckBox1.Checked;
      fRelCtaOrcamento_Fin.vImp_Carteira := CheckBox2.Checked;
      fRelCtaOrcamento_Fin.vImp_OC := CheckBox3.Checked;
      case ComboBox2.ItemIndex of
        0:
          fRelCtaOrcamento_Fin.vImprimir_Tipo := 'S';
        1:
          fRelCtaOrcamento_Fin.vImprimir_Tipo := 'A';
      end;
      fRelCtaOrcamento_Fin.vImprimir_SConta := True;
      fRelCtaOrcamento_Fin.vOpcaoImp := '';
      if RxDBLookupCombo1.Text <> '' then
        fRelCtaOrcamento_Fin.vOpcaoImp := fRelCtaOrcamento_Fin.vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
      if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
        fRelCtaOrcamento_Fin.vOpcaoImp := fRelCtaOrcamento_Fin.vOpcaoImp + '(' + NxComboBox2.Text + ':' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')';
      fRelCtaOrcamento_Fin.RLReport1.PreviewModal;
      fRelCtaOrcamento_Fin.RLReport1.Free;
    finally
      begin
        FreeAndNil(fRelCtaOrcamento_Fin);
        SMDBGrid1.EnableScroll;
        Screen.Cursor := crDefault;
      end;
    end;
  end
  else if RzPageControl1.ActivePage = ts_CentroCusto then
  begin
    if fDMConsFinanceiro.mContas_Orc_CCusto.IsEmpty then
    begin
      ShowMessage('Sem dados para imprimir, refaça a consulta!');
      Exit;
    end;
    SMDBGrid2.DisableScroll;
    fDMConsFinanceiro.mContas_Orc_CCusto.First;
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Orcamento_CentroCusto.fr3';
    if FileExists(vArq) then
      fDMConsFinanceiro.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    fDMConsFinanceiro.vDataIni := FormatDateTime('DD/MM/YYYY',DateEdit1.Date);
    fDMConsFinanceiro.vDataFim := FormatDateTime('DD/MM/YYYY',DateEdit2.Date);
    fDMConsFinanceiro.frxReport1.ShowReport;
    SMDBGrid2.EnableScroll;
  end
  else if RzPageControl1.ActivePage = ts_Centro_Orcamento then
  begin
    if fDMConsFinanceiro.cdsCCustoOrcamento.IsEmpty then
    begin
      ShowMessage('Sem dados para imprimir, refaça a consulta!');
      Exit;
    end;
    SMDBGrid3.DisableScroll;
    fDMConsFinanceiro.cdsCCustoOrcamento.First;
    if SQLLocate('PARAMETROS_FIN','ID','CONTROLA_CONTRATO_CCUSTO','1') = 'S' then
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Orcamento_CentroCusto2.fr3'
    else
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Orcamento_CentroCusto2_bellbraz.fr3';
    if FileExists(vArq) then
      fDMConsFinanceiro.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatório não localizado! ' + vArq);
      Exit;
    end;
    fDMConsFinanceiro.vDataIni := FormatDateTime('DD/MM/YYYY',DateEdit1.Date);
    fDMConsFinanceiro.vDataFim := FormatDateTime('DD/MM/YYYY',DateEdit2.Date);
    fDMConsFinanceiro.frxReport1.variables['DataInicial'] := QuotedStr(FormatDateTime('DD/MM/YYYY',(DateEdit1.Date - 1)));

    fDMConsFinanceiro.frxReport1.ShowReport;
    SMDBGrid3.EnableScroll;
  end;

end;

procedure TfrmConsCtaOrcamento_Fin.prc_Le_Pedido_Cli;
var
  vCod: Integer;
  vNome: string;
begin
  fDMConsFinanceiro.mConta_Orc.IndexFieldNames := 'ID';
  fDMConsFinanceiro.cdsPedido_Cli.Close;
  fDMConsFinanceiro.cdsPedido_Cli.Open;
  fDMConsFinanceiro.cdsPedido_Cli.First;
  while not fDMConsFinanceiro.cdsPedido_Cli.Eof do
  begin
    if fDMConsFinanceiro.cdsPedido_CliTIPO_REG.AsString = 'P' then
    begin
      vCod := 888100;
      vNome := '  CARTEIRA DE PEDIDOS';
      if not (fDMConsFinanceiro.cdsPedido_CliDTENTREGA.IsNull) and (fDMConsFinanceiro.cdsPedido_CliDTENTREGA.AsDateTime < Date) then
      begin
        vCod := 888099;
        vNome := vNome + '  (ATRASADOS)';
      end;
    end
    else if fDMConsFinanceiro.cdsPedido_CliTIPO_REG.AsString = 'C' then
    begin
      vCod := 889100;
      vNome := '  OC FORNECEDORES';
      if not (fDMConsFinanceiro.cdsPedido_CliDTENTREGA.IsNull) and (fDMConsFinanceiro.cdsPedido_CliDTENTREGA.AsDateTime < Date) then
      begin
        vCod := 889099;
        vNome := vNome + '  (ATRASADOS)';
      end;
    end;
    if fDMConsFinanceiro.mConta_Orc.FindKey([vCod]) then
      fDMConsFinanceiro.mConta_Orc.Edit
    else
    begin
      fDMConsFinanceiro.mConta_Orc.Insert;
      fDMConsFinanceiro.mConta_OrcID.AsInteger := vCod;
      fDMConsFinanceiro.mConta_OrcCodigo.AsString := IntToStr(vCod);
      fDMConsFinanceiro.mConta_OrcNome.AsString := vNome;
      if fDMConsFinanceiro.cdsPedido_CliTIPO_REG.AsString = 'P' then
        fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'V'
      else
        fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'X';
    end;
    fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat + fDMConsFinanceiro.cdsPedido_CliVLR_RESTANTE.AsFloat));
    fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00', 0));
    fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat + fDMConsFinanceiro.cdsPedido_CliVLR_RESTANTE.AsFloat));
    fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat + fDMConsFinanceiro.cdsPedido_CliQTD_RESTANTE.AsFloat));
    fDMConsFinanceiro.mConta_Orc.Post;
    fDMConsFinanceiro.cdsPedido_Cli.Next;
  end;
  //gravando o pedido
  vVlr_Restante := 0;
  vQtd_Restante := 0;
  vCod := 888099;
  if fDMConsFinanceiro.mConta_Orc.FindKey([vCod]) then
  begin
    vVlr_Restante := vVlr_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
    vQtd_Restante := vQtd_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
  end;
  vCod := 888100;
  if fDMConsFinanceiro.mConta_Orc.FindKey([vCod]) then
  begin
    vVlr_Restante := vVlr_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
    vQtd_Restante := vQtd_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
  end;
  fDMConsFinanceiro.mConta_Orc.Insert;
  fDMConsFinanceiro.mConta_OrcID.AsInteger := 888000;
  fDMConsFinanceiro.mConta_OrcCodigo.AsString := '888000';
  fDMConsFinanceiro.mConta_OrcNome.AsString := 'CARTEIRA DE PEDIDOS';
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00', vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.0000', vQtd_Restante));
  fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString := 'S';
  fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'V';
  fDMConsFinanceiro.mConta_Orc.Post;

  //gravando a OC
  vVlr_Restante := 0;
  vQtd_Restante := 0;
  vCod := 889099;
  if fDMConsFinanceiro.mConta_Orc.FindKey([vCod]) then
  begin
    vVlr_Restante := vVlr_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
    vQtd_Restante := vQtd_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
  end;
  vCod := 889100;
  if fDMConsFinanceiro.mConta_Orc.FindKey([vCod]) then
  begin
    vVlr_Restante := vVlr_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
    vQtd_Restante := vQtd_Restante + fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat;
  end;
  fDMConsFinanceiro.mConta_Orc.Insert;
  fDMConsFinanceiro.mConta_OrcID.AsInteger := 889000;
  fDMConsFinanceiro.mConta_OrcCodigo.AsString := '889000';
  fDMConsFinanceiro.mConta_OrcNome.AsString := 'OC FORNECEDORES';
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00', 0));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00', vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.0000', vQtd_Restante));
  fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString := 'S';
  fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'X';
  fDMConsFinanceiro.mConta_Orc.Post;
end;

procedure TfrmConsCtaOrcamento_Fin.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmConsCtaOrcamento_Det: TfrmConsCtaOrcamento_Det;
begin
  ffrmConsCtaOrcamento_Det := TfrmConsCtaOrcamento_Det.Create(self);
  ffrmConsCtaOrcamento_Det.fDMConsFinanceiro := fDMConsFinanceiro;
  fDMConsFinanceiro.vDtInicial := DateEdit1.Date;
  fDMConsFinanceiro.vDtFinal := DateEdit2.Date;
  case NxComboBox2.ItemIndex of
    0:
      fDMConsFinanceiro.vTipo_Data := 'E';
    1:
      fDMConsFinanceiro.vTipo_Data := 'V';
  end;
  if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'E') or (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'S') then
  begin
    fDMConsFinanceiro.prc_Abrir_Duplicata_Det;
    ffrmConsCtaOrcamento_Det.RzPageControl1.ActivePage := ffrmConsCtaOrcamento_Det.TS_Titulos;
    ffrmConsCtaOrcamento_Det.TS_Carteira.TabVisible := False;
    ffrmConsCtaOrcamento_Det.TS_OC.TabVisible := False;
  end
  else if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'V') and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'A') then
  begin
    fDMConsFinanceiro.prc_Abrir_Pedido_Pend;
    ffrmConsCtaOrcamento_Det.RzPageControl1.ActivePage := ffrmConsCtaOrcamento_Det.TS_Carteira;
    ffrmConsCtaOrcamento_Det.TS_Titulos.TabVisible := False;
    ffrmConsCtaOrcamento_Det.TS_OC.TabVisible := False;
  end
  else if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'X') and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'A') then
  begin
    fDMConsFinanceiro.prc_Abrir_Pedido_Pend;
    ffrmConsCtaOrcamento_Det.RzPageControl1.ActivePage := ffrmConsCtaOrcamento_Det.TS_OC;
    ffrmConsCtaOrcamento_Det.TS_Titulos.TabVisible := False;
    ffrmConsCtaOrcamento_Det.TS_Carteira.TabVisible := False;
  end;
  ffrmConsCtaOrcamento_Det.ShowModal;
  FreeAndNil(ffrmConsCtaOrcamento_Det);
  fDMConsFinanceiro.cdsPedido_Pend.Filtered := False;
end;

procedure TfrmConsCtaOrcamento_Fin.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  //if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'V') or (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'X') or
   //  (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'S') then
  if (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'S') then
    Background := $00CECECE;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Gravar_mConta_Ccusto(Conta_Superior: Integer);
var
  i, i2: integer;
  vTexto: string;
begin
  fDMConsFinanceiro.qConta_Orcamento_Ccusto.Close;
  fDMConsFinanceiro.qConta_Orcamento_Ccusto.ParamByName('ID').AsInteger := Conta_Superior;
  fDMConsFinanceiro.qConta_Orcamento_Ccusto.Open;
  if fDMConsFinanceiro.qConta_Orcamento_Ccusto.IsEmpty then
    exit;

  if fDMConsFinanceiro.mContas_Orc_CCusto.Locate('ID;ID_CCUSTO', VarArrayOf([Conta_Superior, fDMConsFinanceiro.qConta_Orcamento_CcustoID_CCUSTO.AsInteger]), [loCaseInsensitive]) then
//  if fDMConsFinanceiro.mContas_Orc_CCusto.FindKey([i]) then
    fDMConsFinanceiro.mContas_Orc_CCusto.Edit
  else
  begin
    fDMConsFinanceiro.mContas_Orc_CCusto.Insert;
    fDMConsFinanceiro.mContas_Orc_CCustoID.AsInteger := fDMConsFinanceiro.qConta_Orcamento_CcustoID.AsInteger;
    fDMConsFinanceiro.mContas_Orc_CCustoCodigo.AsString := fDMConsFinanceiro.qConta_Orcamento_CcustoCODIGO.AsString;
    i2 := (fDMConsFinanceiro.qConta_Orcamento_CcustoNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mContas_Orc_CCustoNome.AsString := vTexto + fDMConsFinanceiro.qConta_Orcamento_CcustoDESCRICAO.AsString;

    i2 := (fDMConsFinanceiro.qConta_Orcamento_CcustoNIVEL_CCUSTO.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mContas_Orc_CCustoNome_CCusto.AsString := vTexto + fDMConsFinanceiro.qConta_Orcamento_CcustoNOME_CCUSTO.AsString;

    fDMConsFinanceiro.mContas_Orc_CCustoCodigo_CCusto.AsString := fDMConsFinanceiro.qConta_Orcamento_CcustoCODIGO_CCUSTO.AsString;
    fDMConsFinanceiro.mContas_Orc_CCustoID_CCusto.AsInteger := fDMConsFinanceiro.qConta_Orcamento_CcustoID_CCUSTO.AsInteger;
    if fDMConsFinanceiro.qConta_Orcamento_CcustoTIPO_RD.AsString = 'R' then
      fDMConsFinanceiro.mContas_Orc_CCustoTipo_ES.AsString := 'E'
    else
      fDMConsFinanceiro.mContas_Orc_CCustoTipo_ES.AsString := 'S';
    fDMConsFinanceiro.mContas_Orc_CCustoTipo_Conta.AsString := fDMConsFinanceiro.qConta_Orcamento_CcustoTIPO.AsString;
  end;
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_Total.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_PARCELA.AsFloat - fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_Pago.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_Restante.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_RESTANTE.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_CentroCusto.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_CentroCusto.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_CCUS.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCusto.Post;

  if trim(fDMConsFinanceiro.qConta_Orcamento_CcustoSUPERIOR.AsString) <> '' then
    prc_Gravar_mConta_Ccusto(fDMConsFinanceiro.qConta_Orcamento_CcustoSUPERIOR.AsInteger);

end;

procedure TfrmConsCtaOrcamento_Fin.prc_Le_Consulta_CCusto;
begin
  fDMConsFinanceiro.mContas_Orc_CCusto.EmptyDataSet;
  fDMConsFinanceiro.mContas_Orc_CCusto.IndexFieldNames := 'ID;ID_CCUSTO';
  fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCus.First;
  while not fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCus.Eof do
  begin
    prc_Gravar_mConta_Orc_CCusto;
    if (vID_Conta_Orc = 777700) then
      prc_Gravar_mConta_Ccusto(fDMConsFinanceiro.qParametros_Cta_OrcID_CONTA_ORC_RECEITA.AsInteger)
    else if (vID_Conta_Orc = 777800) then
      prc_Gravar_mConta_Ccusto(fDMConsFinanceiro.qParametros_Cta_OrcID_CONTA_ORC_DESPESA.AsInteger)
    else if trim(fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusSUPERIOR.AsString) <> '' then
      prc_Gravar_mConta_Ccusto(fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusSUPERIOR.AsInteger);
    fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCus.Next;
  end;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Consultar_CCusto;
var
  vComando: string;
  vComandoAux, vComandoAux2, Ordem: string;
  i: Integer;
begin
  fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCus.Close;
  i := PosEx('GROUP', fDMConsFinanceiro.ctConsulta_Conta_Orc_CCus, 0);
  vComandoAux := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc_CCus, i, Length(fDMConsFinanceiro.ctConsulta_Conta_Orc_CCus) - i + 1);
  vComandoAux2 := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc_CCus, 1, i - 1);

  //vComando := ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if NxComboBox2.ItemIndex = 0 then
    vComando := vComando + ' AND DUP.DTULTPAGAMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.Date))
  else if NxComboBox2.ItemIndex = 1 then
    vComando := vComando + ' AND DUP.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.Date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.Date));

  case ComboBox1.ItemIndex of
    0:
      vComando := vComando + ' AND DUP.VLR_PAGO > 0 ';
    1:
      vComando := vComando + ' AND DUP.VLR_RESTANTE > 0 ';
  end;
  Ordem := ' ORDER BY ORC.CODIGO, CC.CODIGO';
  fDMConsFinanceiro.sdsConsulta_Conta_Orc_CCus.CommandText := vComandoAux2 + vComando + vComandoAux + Ordem;
  fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCus.Open;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Gravar_mConta_Orc_CCusto;
var
  i, i2: integer;
  vTexto: string;
begin
  i := fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusID_CONTA_ORCAMENTO.AsInteger;

  if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusTIPO_ES.AsString = 'E') then
    i := 777700
  else if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusTIPO_ES.AsString = 'S') then
    i := 777800;
  vID_Conta_Orc := i;
  if fDMConsFinanceiro.mContas_Orc_CCusto.Locate('ID;ID_CCUSTO', VarArrayOf([i, fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusID_CENTROCUSTO.AsInteger]), [loCaseInsensitive]) then
//  if fDMConsFinanceiro.mContas_Orc_CCusto.FindKey([i]) then
    fDMConsFinanceiro.mContas_Orc_CCusto.Edit
  else
  begin
    fDMConsFinanceiro.mContas_Orc_CCusto.Insert;
    fDMConsFinanceiro.mContas_Orc_CCustoID.AsInteger := i;
    if trim(fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusCOD_CONTA_ORCAMENTO.AsString) = '' then
      fDMConsFinanceiro.mContas_Orc_CCustoCodigo.AsString := IntToStr(i)
    else
      fDMConsFinanceiro.mContas_Orc_CCustoCodigo.AsString := fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusCOD_CONTA_ORCAMENTO.AsString;
    i2 := (fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mContas_Orc_CCustoNome.AsString := vTexto + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusNOME_CONTA_ORCAMENTO.AsString;

    i2 := (fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusNIVEL_CCUSTO.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mContas_Orc_CCustoNome_CCusto.AsString := vTexto + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusNOME_CCUSTO.AsString;

    fDMConsFinanceiro.mContas_Orc_CCustoCodigo_CCusto.AsString := fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusCODIGO_CCUSTO.AsString;
    fDMConsFinanceiro.mContas_Orc_CCustoID_CCusto.AsInteger := fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusID_CENTROCUSTO.AsInteger;

    if trim(fDMConsFinanceiro.mContas_Orc_CCustoNome.AsString) = '' then
    begin
      if fDMConsFinanceiro.mContas_Orc_CCustoID.AsInteger = 777700 then
        fDMConsFinanceiro.mContas_Orc_CCustoNome.AsString := vTexto + '  RECEITAS DIVERSAS'
      else if fDMConsFinanceiro.mContas_Orc_CCustoID.AsInteger = 777800 then
        fDMConsFinanceiro.mContas_Orc_CCustoNome.AsString := vTexto + '  DESPESAS DIVERSAS';
    end;
    fDMConsFinanceiro.mContas_Orc_CCustoTipo_ES.AsString := fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusTIPO_ES.AsString;
  end;
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_Total.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_PARCELA.AsFloat - fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_Pago.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_Restante.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_RESTANTE.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCustoVlr_CentroCusto.AsFloat := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.mContas_Orc_CCustoVlr_CentroCusto.AsFloat + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_CCUS.AsFloat));
  fDMConsFinanceiro.mContas_Orc_CCusto.Post;

  if fDMConsFinanceiro.mContas_Orc_CCustoTipo_ES.AsString = 'E' then
    fDMConsFinanceiro.vTotal_Rec := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.vTotal_Rec + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_PARCELA.AsFloat))
  else
    fDMConsFinanceiro.vTotal_Desp := StrToFloat(FormatFloat('0.00', fDMConsFinanceiro.vTotal_Desp + fDMConsFinanceiro.cdsConsulta_Conta_Orc_CCusVLR_PARCELA.AsFloat));
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Consultar_CCusto_Orcamento;
var
  vComandoAux, vComandoAux2, vComando, vdata : String;
  i : Integer;
begin
  fDMConsFinanceiro.cdsCCustoOrcamento.Close;
  i := PosEx('GROUP', UpperCase( fDMConsFinanceiro.ctCCustoOrcamento), 0);
  vComandoAux := copy(fDMConsFinanceiro.ctCCustoOrcamento, i, Length(fDMConsFinanceiro.ctCCustoOrcamento) - i + 1);
  vComandoAux2 := copy(fDMConsFinanceiro.ctCCustoOrcamento, 1, i - 1);
  vComando := '';
  case EnumDataRelatorio(NxComboBox2.ItemIndex) of
    tpDataEmissao    : vComandoAux2 := StringReplace(vComandoAux2,'DTVENCIMENTO','DTEMISSAO',[rfReplaceAll]);
    tpDataPagamento : vComandoAux2 := StringReplace(vComandoAux2,'DTVENCIMENTO','DTULTPAGAMENTO',[rfReplaceAll]);
  end;
  case ComboBox1.ItemIndex of
    0: vComando := vComando + ' AND DD.VLR_PAGO > 0 ';
    1: vComando := vComando + ' AND DD.VLR_RESTANTE > 0 ';
  end;
  fDMConsFinanceiro.sdsCCustoOrcamento.CommandText := vComandoAux2 + vComando + vComandoAux;
  fDMConsFinanceiro.sdsCCustoOrcamento.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMConsFinanceiro.sdsCCustoOrcamento.ParamByName('DTFINAL').AsDate := DateEdit2.Date;
  if (comboCentroCusto.KeyValue > 0) or (comboCentroCusto.KeyValue <> null) then
    fDMConsFinanceiro.sdsCCustoOrcamento.ParamByName('ID_CENTROCUSTO').AsInteger := comboCentroCusto.KeyValue
  else
    fDMConsFinanceiro.sdsCCustoOrcamento.ParamByName('ID_CENTROCUSTO').AsInteger := 0;
  fDMConsFinanceiro.sdsCCustoOrcamento.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMConsFinanceiro.cdsCCustoOrcamento.open;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Consultar_Resumo_CCusto;
begin
  fDMConsFinanceiro.qResumoCentro_Custo.Close;
  fDMConsFinanceiro.qResumoCentro_Custo.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  if comboCentroCusto.KeyValue <> null then
    fDMConsFinanceiro.qResumoCentro_Custo.ParamByName('ID_CENTROCUSTO').AsInteger := comboCentroCusto.KeyValue;
  fDMConsFinanceiro.qResumoCentro_Custo.open;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Carrega_Combo;
begin
//  NxComboBox2.Items.Clear;
//  if SQLLocate('PARAMETROS_FIN','ID','CONTROLA_CONTRATO_CCUSTO','1') = 'S' then
//    NxComboBox2.Items.Add('Data Pagamento')
//  else
//    NxComboBox2.Items.Add('Data Emissão');
//  NxComboBox2.Items.Add('Data Vencimento');
//  NxComboBox2.Text := 'Data Vencimento';
//  NxComboBox2.ItemIndex := 1;
end;

procedure TfrmConsCtaOrcamento_Fin.RzPageControl1Change(Sender: TObject);
begin
//  prc_Carrega_Combo;
end;

end.

