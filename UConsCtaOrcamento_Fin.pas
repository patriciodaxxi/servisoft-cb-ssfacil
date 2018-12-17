unit UConsCtaOrcamento_Fin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, NxEdit, StdCtrls, Mask, ToolEdit, RxLookup,
  NxCollection, UDMConsFinanceiro, StrUtils, Grids, DBGrids, SMDBGrid, DB,  RzTabs, ComCtrls, RzListVw, RzTreeVw, RzLstBox;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
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

  public
    { Public declarations }

  end;

var
  frmConsCtaOrcamento_Fin: TfrmConsCtaOrcamento_Fin;

implementation

uses rsDBUtils, URelCtaOrcamento_Fin, uUtilPadrao, UConsCtaOrcamento_Det;

{$R *.dfm}

procedure TfrmConsCtaOrcamento_Fin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsCtaOrcamento_Fin.btnConsultarClick(Sender: TObject);
var
  vAux : Real;
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
  fDMConsFinanceiro.vTotal_Desp := 0;
  fDMConsFinanceiro.vTotal_Rec  := 0;
  prc_Consultar;
  prc_Le_Consulta;
  //prc_Le_Pedido_Pend;
  prc_Le_Pedido_Cli;
  fDMConsFinanceiro.mConta_Orc.IndexFieldNames := 'TIPO_ES;CODIGO';
  Label6.Caption := FormatFloat('###,###,###,###,##0.00',fDMConsFinanceiro.vTotal_Rec);
  Label8.Caption := FormatFloat('###,###,###,###,##0.00',fDMConsFinanceiro.vTotal_Desp);
  vAux := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.vTotal_Rec - fDMConsFinanceiro.vTotal_Desp));
  Label10.Caption := FormatFloat('###,###,###,###,##0.00',vAux);
  if StrToFloat(FormatFloat('0.00',vAux)) < 0 then
    Label10.Font.Color := clRed
  else
    Label10.Font.Color := clNavy;
  Label9.Font.Color := Label10.Font.Color;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Consultar;
var
  vComando: String;
  vComandoAux, vComandoAux2: String;
  i: Integer;
begin
  fDMConsFinanceiro.cdsConsulta_Conta_Orc.Close;
  i := PosEx('GROUP',fDMConsFinanceiro.ctConsulta_Conta_Orc,0);
  vComandoAux  := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc,i,Length(fDMConsFinanceiro.ctConsulta_Conta_Orc) - i + 1);
  vComandoAux2 := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc,1,i-1);

  //vComando := ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if NxComboBox2.ItemIndex = 0 then
    vComando := vComando + ' AND DUP.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date))
              + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date))
  else
  if NxComboBox2.ItemIndex = 1 then
    vComando := vComando + ' AND DUP.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date))
              + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date));

  case ComboBox1.ItemIndex of
    0: vComando := vComando + ' AND DUP.VLR_PAGO > 0 ';
    1: vComando := vComando + ' AND DUP.VLR_RESTANTE > 0 ';
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
    else
    if (vID_Conta_Orc = 777800) then
      prc_Gravar_mConta_Orc_Sint(fDMConsFinanceiro.qParametros_Cta_OrcID_CONTA_ORC_DESPESA.AsInteger)
    else
    if trim(fDMConsFinanceiro.cdsConsulta_Conta_OrcSUPERIOR.AsString) <> '' then
      prc_Gravar_mConta_Orc_Sint(fDMConsFinanceiro.cdsConsulta_Conta_OrcSUPERIOR.AsInteger);
    fDMConsFinanceiro.cdsConsulta_Conta_Orc.Next;
  end;
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Gravar_mConta_Orc;
var
  vTexto: String;
  i, i2: Integer;
begin
  i := fDMConsFinanceiro.cdsConsulta_Conta_OrcID_CONTA_ORCAMENTO.AsInteger;
  if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_OrcTIPO_ES.AsString = 'E') then
    i := 777700
  else
  if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_OrcTIPO_ES.AsString = 'S') then
    i := 777800;
  vID_Conta_Orc := i;
  if fDMConsFinanceiro.mConta_Orc.FindKey([i]) then
    fDMConsFinanceiro.mConta_Orc.Edit
  else
  begin
    fDMConsFinanceiro.mConta_Orc.Insert;
    fDMConsFinanceiro.mConta_OrcID.AsInteger      := i;
    if trim(fDMConsFinanceiro.cdsConsulta_Conta_OrcCOD_CONTA_ORCAMENTO.AsString) = '' then
      fDMConsFinanceiro.mConta_OrcCodigo.AsString := IntToStr(i)
    else
      fDMConsFinanceiro.mConta_OrcCodigo.AsString := fDMConsFinanceiro.cdsConsulta_Conta_OrcCOD_CONTA_ORCAMENTO.AsString;
    i2 := (fDMConsFinanceiro.cdsConsulta_Conta_OrcNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mConta_OrcNome.AsString    := vTexto + fDMConsFinanceiro.cdsConsulta_Conta_OrcNOME_CONTA_ORCAMENTO.AsString;
    if trim(fDMConsFinanceiro.mConta_OrcNome.AsString) = '' then
    begin
      if fDMConsFinanceiro.mConta_OrcID.AsInteger = 777700 then
        fDMConsFinanceiro.mConta_OrcNome.AsString := vTexto + '  RECEITAS DIVERSAS'
      else
      if fDMConsFinanceiro.mConta_OrcID.AsInteger = 777800 then
        fDMConsFinanceiro.mConta_OrcNome.AsString := vTexto + '  DESPESAS DIVERSAS';
    end;
    fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := fDMConsFinanceiro.cdsConsulta_Conta_OrcTIPO_ES.AsString;
  end;
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat
                                                 + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat
                                                 - fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat
                                                + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat
                                                    + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_RESTANTE.AsFloat));
  fDMConsFinanceiro.mConta_Orc.Post;

  if fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'E' then
    fDMConsFinanceiro.vTotal_Rec := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.vTotal_Rec + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat))
  else
    fDMConsFinanceiro.vTotal_Desp := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.vTotal_Desp + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat));
end;

procedure TfrmConsCtaOrcamento_Fin.prc_Gravar_mConta_Orc_Sint(Conta_Superior: Integer);
var
  vTexto: String;
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
    fDMConsFinanceiro.mConta_OrcID.AsInteger     := fDMConsFinanceiro.qConta_OrcamentoID.AsInteger;
    fDMConsFinanceiro.mConta_OrcCodigo.AsString  := fDMConsFinanceiro.qConta_OrcamentoCODIGO.AsString;
    i2 := (fDMConsFinanceiro.qConta_OrcamentoNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mConta_OrcNome.AsString    := vTexto + fDMConsFinanceiro.qConta_OrcamentoDESCRICAO.AsString;
    if fDMConsFinanceiro.qConta_OrcamentoTIPO_RD.AsString = 'R' then
      fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'E'
    else
    fDMConsFinanceiro.mConta_OrcTipo_ES.AsString    := 'S';
    fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString := fDMConsFinanceiro.qConta_OrcamentoTIPO.AsString;
  end;
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat
                                                 + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PARCELA.AsFloat
                                                 - fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat
                                                + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat
                                                    + fDMConsFinanceiro.cdsConsulta_Conta_OrcVLR_RESTANTE.AsFloat));
  fDMConsFinanceiro.mConta_Orc.Post;

  if trim(fDMConsFinanceiro.qConta_OrcamentoSUPERIOR.AsString) <> '' then
    prc_Gravar_mConta_Orc_Sint(fDMConsFinanceiro.qConta_OrcamentoSUPERIOR.AsInteger);
end;

procedure TfrmConsCtaOrcamento_Fin.btnImprimirClick(Sender: TObject);
begin
  fDMConsFinanceiro.mConta_Orc.IndexFieldNames := 'TIPO_ES;CODIGO';
  fDMConsFinanceiro.vDtInicial := DateEdit1.Date;
  fDMConsFinanceiro.vDtFinal   := DateEdit2.Date;
  case NxComboBox2.ItemIndex of
    0: fDMConsFinanceiro.vTipo_Data := 'E';
    1: fDMConsFinanceiro.vTipo_Data := 'V';
  end;
  vTipo_Config_Email := 3;
  SMDBGrid1.DisableScroll;
  try
    Screen.Cursor := crSQLWait;
    fRelCtaOrcamento_Fin := TfRelCtaOrcamento_Fin.Create(Self);
    fRelCtaOrcamento_Fin.fDMConsFinanceiro := fDMConsFinanceiro;
    fRelCtaOrcamento_Fin.vImp_Titulos  := CheckBox1.Checked;
    fRelCtaOrcamento_Fin.vImp_Carteira := CheckBox2.Checked;
    fRelCtaOrcamento_Fin.vImp_OC       := CheckBox3.Checked;
    case ComboBox2.ItemIndex of
      0: fRelCtaOrcamento_Fin.vImprimir_Tipo := 'S';
      1: fRelCtaOrcamento_Fin.vImprimir_Tipo := 'A';
    end;
    fRelCtaOrcamento_Fin.vImprimir_SConta := True;
    fRelCtaOrcamento_Fin.vOpcaoImp      := '';
    if RxDBLookupCombo1.Text <> '' then
      fRelCtaOrcamento_Fin.vOpcaoImp := fRelCtaOrcamento_Fin.vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
    if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
      fRelCtaOrcamento_Fin.vOpcaoImp := fRelCtaOrcamento_Fin.vOpcaoImp + '(' + NxComboBox2.Text + ':' +DateEdit1.Text + ' a ' + DateEdit2.Text +  ')';
    fRelCtaOrcamento_Fin.RLReport1.PreviewModal;
    fRelCtaOrcamento_Fin.RLReport1.Free;
  finally
    begin
      FreeAndNil(fRelCtaOrcamento_Fin);
      SMDBGrid1.EnableScroll;
      Screen.Cursor := crDefault;
    end;
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
      vCod  := 888100;
      vNome := '  CARTEIRA DE PEDIDOS';
      if not(fDMConsFinanceiro.cdsPedido_CliDTENTREGA.IsNull) and (fDMConsFinanceiro.cdsPedido_CliDTENTREGA.AsDateTime < Date) then
      begin
        vCod := 888099;
        vNome := vNome + '  (ATRASADOS)';
      end;
    end
    else
    if fDMConsFinanceiro.cdsPedido_CliTIPO_REG.AsString = 'C' then
    begin
      vCod  := 889100;
      vNome := '  OC FORNECEDORES';
      if not(fDMConsFinanceiro.cdsPedido_CliDTENTREGA.IsNull) and (fDMConsFinanceiro.cdsPedido_CliDTENTREGA.AsDateTime < Date) then
      begin
        vCod  := 889099;
        vNome := vNome + '  (ATRASADOS)';
      end;
    end;
    if fDMConsFinanceiro.mConta_Orc.FindKey([vCod]) then
      fDMConsFinanceiro.mConta_Orc.Edit
    else
    begin
      fDMConsFinanceiro.mConta_Orc.Insert;
      fDMConsFinanceiro.mConta_OrcID.AsInteger    := vCod;
      fDMConsFinanceiro.mConta_OrcCodigo.AsString := IntToStr(vCod);
      fDMConsFinanceiro.mConta_OrcNome.AsString   := vNome;
      if fDMConsFinanceiro.cdsPedido_CliTIPO_REG.AsString = 'P' then
        fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'V'
      else
        fDMConsFinanceiro.mConta_OrcTipo_ES.AsString := 'X';
    end;
    fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat
                                                   + fDMConsFinanceiro.cdsPedido_CliVLR_RESTANTE.AsFloat));
    fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat := StrToFloat(FormatFloat('0.00',0));
    fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat
                                                      + fDMConsFinanceiro.cdsPedido_CliVLR_RESTANTE.AsFloat));
    fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat
                                                      + fDMConsFinanceiro.cdsPedido_CliQTD_RESTANTE.AsFloat));
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
  fDMConsFinanceiro.mConta_OrcID.AsInteger         := 888000;
  fDMConsFinanceiro.mConta_OrcCodigo.AsString      := '888000';
  fDMConsFinanceiro.mConta_OrcNome.AsString        := 'CARTEIRA DE PEDIDOS';
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat    := StrToFloat(FormatFloat('0.00',vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00',vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.0000',vQtd_Restante));
  fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString  := 'S';
  fDMConsFinanceiro.mConta_OrcTipo_ES.AsString     := 'V';
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
  fDMConsFinanceiro.mConta_OrcID.AsInteger         := 889000;
  fDMConsFinanceiro.mConta_OrcCodigo.AsString      := '889000';
  fDMConsFinanceiro.mConta_OrcNome.AsString        := 'OC FORNECEDORES';
  fDMConsFinanceiro.mConta_OrcVlr_Total.AsFloat    := StrToFloat(FormatFloat('0.00',vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcVlr_Pago.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  fDMConsFinanceiro.mConta_OrcVlr_Restante.AsFloat := StrToFloat(FormatFloat('0.00',vVlr_Restante));
  fDMConsFinanceiro.mConta_OrcQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.0000',vQtd_Restante));
  fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString  := 'S';
  fDMConsFinanceiro.mConta_OrcTipo_ES.AsString     := 'X';
  fDMConsFinanceiro.mConta_Orc.Post;
end;

procedure TfrmConsCtaOrcamento_Fin.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmConsCtaOrcamento_Det: TfrmConsCtaOrcamento_Det;
begin
  ffrmConsCtaOrcamento_Det := TfrmConsCtaOrcamento_Det.Create(self);
  ffrmConsCtaOrcamento_Det.fDMConsFinanceiro  := fDMConsFinanceiro;
  fDMConsFinanceiro.vDtInicial := DateEdit1.Date;
  fDMConsFinanceiro.vDtFinal   := DateEdit2.Date;
  case NxComboBox2.ItemIndex of
    0: fDMConsFinanceiro.vTipo_Data := 'E';
    1: fDMConsFinanceiro.vTipo_Data := 'V';
  end;
  if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'E') or (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'S') then
  begin
    fDMConsFinanceiro.prc_Abrir_Duplicata_Det;
    ffrmConsCtaOrcamento_Det.RzPageControl1.ActivePage := ffrmConsCtaOrcamento_Det.TS_Titulos;
    ffrmConsCtaOrcamento_Det.TS_Carteira.TabVisible := False;
    ffrmConsCtaOrcamento_Det.TS_OC.TabVisible       := False;
  end
  else
  if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'V') and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'A') then
  begin
    fDMConsFinanceiro.prc_Abrir_Pedido_Pend;
    ffrmConsCtaOrcamento_Det.RzPageControl1.ActivePage := ffrmConsCtaOrcamento_Det.TS_Carteira;
    ffrmConsCtaOrcamento_Det.TS_Titulos.TabVisible := False;
    ffrmConsCtaOrcamento_Det.TS_OC.TabVisible      := False;
  end
  else
  if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'X') and (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'A') then
  begin
    fDMConsFinanceiro.prc_Abrir_Pedido_Pend;
    ffrmConsCtaOrcamento_Det.RzPageControl1.ActivePage := ffrmConsCtaOrcamento_Det.TS_OC;
    ffrmConsCtaOrcamento_Det.TS_Titulos.TabVisible  := False;
    ffrmConsCtaOrcamento_Det.TS_Carteira.TabVisible := False;
  end;
  ffrmConsCtaOrcamento_Det.ShowModal;
  FreeAndNil(ffrmConsCtaOrcamento_Det);
  fDMConsFinanceiro.cdsPedido_Pend.Filtered := False;
end;

procedure TfrmConsCtaOrcamento_Fin.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  //if (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'V') or (fDMConsFinanceiro.mConta_OrcTipo_ES.AsString = 'X') or
   //  (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'S') then
  if (fDMConsFinanceiro.mConta_OrcTipo_Conta.AsString = 'S') then
    Background := $00CECECE;
end;

end.
