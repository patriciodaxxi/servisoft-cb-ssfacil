unit UProgramacaoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBXpress, DB, SqlExpr, FMTBcd, Provider, Contnrs,
  DBClient, Mask, RzEdit, RzSpnEdt, RzPanel, RzLabel, NxCollection,
  ExtCtrls, RzTabs, DBGrids, JvDlg, TeEngine, Series, TeeProcs, Chart,
  DbChart, ToolEdit, CurrEdit;

type
  TfrmProgamacaoPedidos = class(TForm)
    sdsProjecaoSemana: TSQLDataSet;
    cdsProjecaoSemana: TClientDataSet;
    dsProjecaoSemana: TDataSource;
    dspProjecaoSemana: TDataSetProvider;
    sdsProjecaoSemanaID: TIntegerField;
    sdsProjecaoSemanaANO: TIntegerField;
    sdsProjecaoSemanaMES: TIntegerField;
    sdsProjecaoSemanaSEMANA: TIntegerField;
    sdsProjecaoSemanaDATA_INICIO: TDateField;
    sdsProjecaoSemanaDATA_FIM: TDateField;
    sdsProjecaoSemanaDATA_EMBARQUE: TDateField;
    sdsProjecaoSemanaPREVISAO: TIntegerField;
    cdsProjecaoSemanaID: TIntegerField;
    cdsProjecaoSemanaANO: TIntegerField;
    cdsProjecaoSemanaMES: TIntegerField;
    cdsProjecaoSemanaSEMANA: TIntegerField;
    cdsProjecaoSemanaDATA_INICIO: TDateField;
    cdsProjecaoSemanaDATA_FIM: TDateField;
    cdsProjecaoSemanaDATA_EMBARQUE: TDateField;
    cdsProjecaoSemanaPREVISAO: TIntegerField;
    pagProgramacao: TRzPageControl;
    tabProgramacao: TRzTabSheet;
    tabGrafico: TRzTabSheet;
    ScrollBox1: TScrollBox;
    pnlProgramacao: TPanel;
    Panel3: TPanel;
    Bevel2: TBevel;
    Panel2: TPanel;
    NxPanel10: TNxPanel;
    NxPanel11: TNxPanel;
    NxPanel12: TNxPanel;
    NxPanel13: TNxPanel;
    NxPanel14: TNxPanel;
    NxPanel15: TNxPanel;
    NxPanel16: TNxPanel;
    NxPanel17: TNxPanel;
    Panel4: TPanel;
    NxPanel2: TNxPanel;
    NxPanel3: TNxPanel;
    NxPanel4: TNxPanel;
    NxPanel5: TNxPanel;
    NxPanel6: TNxPanel;
    NxPanel7: TNxPanel;
    NxPanel8: TNxPanel;
    NxPanel9: TNxPanel;
    RzPanel1: TRzPanel;
    lblAno: TLabel;
    edtAno: TRzSpinEdit;
    sdsProjecaoSemanaPROJETADO: TFloatField;
    sdsProjecaoSemanaREALIZADO: TFloatField;
    cdsProjecaoSemanaPROJETADO: TFloatField;
    cdsProjecaoSemanaREALIZADO: TFloatField;
    sdsProjecaoSemanaSALDO: TFloatField;
    cdsProjecaoSemanaSALDO: TFloatField;
    cdsTotais: TClientDataSet;
    cdsTotaisMes: TIntegerField;
    cdsTotaisMes_Desc: TStringField;
    cdsTotaisPrevisao: TIntegerField;
    cdsTotaisProjetado: TIntegerField;
    cdsTotaisRealizado: TIntegerField;
    dsTotais: TDataSource;
    JvProgressForm1: TJvProgressForm;
    btnCarregar: TButton;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    btnEditarSalvar: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label3: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    Label4: TLabel;
    qTotalPrevisao: TSQLQuery;
    qTotalPrevisaoPREVISAO: TFMTBCDField;
    SQLQuery1: TSQLQuery;
    FMTBCDField1: TFMTBCDField;
    Label5: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure JvProgressForm1Show(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure btnEditarSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FPanel: TPanel;
    FEditors: TObjectList;
    function getConnection: TSQLConnection;
    procedure AbrirProjecao(AAno: Integer);
    function AdicionarColuna(AParent: TWinControl; ASize: Integer; AAlign: TAlign;
      APanelBorders: TPanelBorders = []; ACaption: String = ''; AAngle: Integer = 0;
      ABackgroundStyle: TNxPanelBackgroundStyle = pbSolid; ATextAlignment: TAlignment = taCenter;
      ATextColor: TColor = clBlack; ATextHint: String = ''; ATextFontStyle: TFontStyles = []): TNxPanel;
    procedure AdicionarParametro(AParams: TParams; AName: String; ADataType: TFieldType; AValue: Variant);
    procedure CriarPainelMes(AMes: Integer);
    procedure CriarTotalizadorSemestre(ASemestre: Integer);
    procedure CriarProjecao(AAno: Integer);
    procedure LimparPaineis;

    procedure prc_Calcular;
    
  public
    { Public declarations }
  end;

var
  frmProgamacaoPedidos: TfrmProgamacaoPedidos;

implementation

uses
  DateUtils, Math, DmdDatabase;

{$R *.dfm}

procedure TfrmProgamacaoPedidos.AbrirProjecao(AAno: Integer);
begin
  cdsProjecaoSemana.Close;
  cdsProjecaoSemana.Params.ParamByName('ANO').AsInteger := AAno;
  cdsProjecaoSemana.Open;

  if cdsProjecaoSemana.IsEmpty then
  begin
    cdsProjecaoSemana.Close;
    CriarProjecao(AAno);
    cdsProjecaoSemana.Open;
  end;

  LockWindowUpdate(ScrollBox1.Handle);
  try
    JvProgressForm1.Execute;;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmProgamacaoPedidos.CriarProjecao(AAno: Integer);
const
  c_projecao_semana = 'INSERT INTO PROJECAO_SEMANA (ANO, MES, SEMANA, DATA_INICIO, DATA_FIM, DATA_EMBARQUE) ' +
                      'VALUES (:ANO, :MES, :SEMANA, :DATA_INICIO, :DATA_FIM, :DATA_EMBARQUE)';

var
  i,w: integer;
  m, d, df: TDate;
  p: TParams;
  t : TTransactionDesc;
begin
  p := TParams.Create(TParam);
  try
    t.TransactionID := 1;
    t.IsolationLevel := xilREADCOMMITTED;
    getConnection.StartTransaction(t);
    try
      w := WeeksInYear(AAno);
      d := EncodeDate(AAno,1,1);
      m := 0;
      for i := 1 to w do
      begin
        if i = w then
          df := EncodeDate(AAno, 12, 31)
        else
          df := EncodeDateWeek(AAno, i, 5);

        if MonthOf(df) > m then
        begin
          m := MonthOf(df);
        end;

        AdicionarParametro(p, 'ANO', ftInteger, AAno);
        AdicionarParametro(p, 'MES', ftInteger, m);
        AdicionarParametro(p, 'SEMANA', ftInteger, i);
        AdicionarParametro(p, 'DATA_INICIO', ftDate, d);
        AdicionarParametro(p, 'DATA_FIM', ftDate, df);
        AdicionarParametro(p, 'DATA_EMBARQUE', ftDate, df);
        getConnection.Execute(c_projecao_semana, p);

        d := EncodeDateWeek(AAno, i, 5) + 1;
      end;
      getConnection.Commit(t);
    except
      getConnection.Rollback(t);
    end;
  finally
    FreeAndNil(p);
  end;
end;

function TfrmProgamacaoPedidos.getConnection: TSQLConnection;
begin
  Result := dmDatabase.scoDados;
end;

procedure TfrmProgamacaoPedidos.FormShow(Sender: TObject);
begin
  pagProgramacao.ActivePageIndex := 0;
  edtAno.IntValue := YearOf(Date);
  btnCarregar.Click;
end;

procedure TfrmProgamacaoPedidos.CriarPainelMes(AMes: Integer);
var
  cds: TClientDataSet;
  I: Integer;
  pnlLinha, pnlMes, pnlLanc: TPanel;
  pnlTotal, pnlColMes, pnlColPrev, pnlColLanc, pnlLinLanc, pnlLancPrev: TNxPanel;
  sepMes, sepCol, sepLan: TBevel;
  vPrev, vProj, vReal, vSald: Integer;
  cSald: TColor;
  edtPrev: TRzNumericEdit;
begin
  cds := TClientDataSet.Create(nil);
  try
    cds.CloneCursor(cdsProjecaoSemana, True);
    cds.Filter := 'MES = ' + IntToStr(AMes);
    cds.Filtered := True;

    // copia os displayformats
    for I := 0 to cdsProjecaoSemana.FieldCount - 1 do
    begin
      if (cds.Fields[I] is TNumericField) then
        (cds.Fields[I] as TNumericField).DisplayFormat := (cdsProjecaoSemana.Fields[I] as TNumericField).DisplayFormat
      else if (cds.Fields[I] is TDateField) then
        (cds.Fields[I] as TDateField).DisplayFormat := (cdsProjecaoSemana.Fields[I] as TDateField).DisplayFormat;
    end;

    // panel da linha
    if (AMes < 7) then
    begin
      pnlLinha := TPanel.Create(Self);
      pnlLinha.Name := 'linha_' + IntToStr(AMes);
      pnlLinha.Caption := '';
      pnlLinha.BevelOuter := bvNone;
      pnlLinha.Parent := FPanel;
      pnlLinha.Align := alTop;
      pnlLinha.Top := 1 * AMes;
    end
    else
    begin
      pnlLinha := TPanel(FPanel.FindChildControl('linha_' + IntToStr(AMes - 6)));
    end;

    // panel do mês
    pnlMes := TPanel.Create(pnlLinha);
    pnlMes.Name := 'mes_' + IntToStr(AMes);
    pnlMes.Caption := '';
    pnlMes.Tag := AMes;
    pnlMes.BevelOuter := bvNone;
    pnlMes.Parent := pnlLinha;
    pnlMes.Align := alLeft;
    pnlMes.Width := 460;
    pnlMes.Left := 1 * AMes;

    // separador da coluna do mês
    if (AMes < 7) then
    begin
      sepCol := TBevel.Create(pnlLinha);
      sepCol.Parent := pnlLinha;
      sepCol.Align := alLeft;
      sepCol.Shape := bsSpacer;
      sepCol.Width := 10;
      sepCol.Left := 2 * AMes;

      // separador da linha dos mês
      sepMes := TBevel.Create(pnlLinha);
      sepMes.Parent := FPanel;
      sepMes.Align := alTop;
      sepMes.Shape := bsSpacer;
      sepMes.Height := 10;
      sepMes.Top := 1 * AMes;
    end;

    // panel lançamentos
    pnlLanc := TPanel.Create(pnlMes);
    pnlLanc.Parent := pnlMes;
    pnlLanc.Align := alClient;
    pnlLanc.BevelOuter := bvNone;

    // cria dados da coluna mês
    pnlColMes := AdicionarColuna(pnlLanc, 30, alLeft, [boBottom, boLeft, boTop], UpperCase(LongMonthNames[AMes]), 90);
    pnlColLanc := AdicionarColuna(pnlLanc, 0, alClient, [boBottom, boRight, boTop]);

    // cria os valores dos lançamentos
    vPrev := 0;
    vProj := 0;
    vReal := 0;
    vSald := 0;
    while not cds.Eof do
    begin
      pnlLinLanc := AdicionarColuna(pnlColLanc, 25, alTop, [], '', 0, pbTransparent);
      AdicionarColuna(pnllinLanc, 50, alLeft, [], cds.FieldByName('SEMANA').AsString, 0, pbTransparent, taCenter, clBlack, cds.FieldByName('DATA_INICIO').DisplayText + ' - ' + cds.FieldByName('DATA_FIM').DisplayText);
      AdicionarColuna(pnllinLanc, 70, alLeft, [], cds.FieldByName('DATA_EMBARQUE').DisplayText, 0, pbTransparent);

      pnlLancPrev := AdicionarColuna(pnllinLanc, 70, alLeft, [], cds.FieldByName('PREVISAO').DisplayText, 0, pbTransparent);

      edtPrev := TRzNumericEdit.Create(pnlLancPrev);
      edtPrev.Name := 'edtPrevSem_' + cds.FieldByName('SEMANA').AsString;
      edtPrev.Tag := cds.FieldByName('SEMANA').AsInteger;
      edtPrev.Parent := pnlLancPrev;
      edtPrev.Visible := False;
      edtPrev.Font.Name := 'Calibri';
      edtPrev.Value := cds.FieldByName('PREVISAO').AsInteger;
      edtPrev.Top := 2;
      edtPrev.Left := 2;
      edtPrev.Height := pnlLancPrev.Height - 4;
      edtPrev.Width := pnlLancPrev.Width - 4;
      FEditors.Add(edtPrev);

      pnlLancPrev.Tag := cds.FieldByName('SEMANA').AsInteger;

      AdicionarColuna(pnllinLanc, 70, alLeft, [], cds.FieldByName('PROJETADO').DisplayText, 0, pbTransparent);
      AdicionarColuna(pnllinLanc, 70, alLeft, [], cds.FieldByName('REALIZADO').DisplayText, 0, pbTransparent);

      if (cds.FieldByName('SALDO').AsInteger < 0) then
        cSald := clRed
      else
        cSald := clBlue;
        
      AdicionarColuna(pnllinLanc, 70, alLeft, [], cds.FieldByName('SALDO').DisplayText, 0, pbTransparent, taCenter, cSald);

      vPrev := vPrev + cds.FieldByName('PREVISAO').AsInteger;
      vProj := vProj + cds.FieldByName('PROJETADO').AsInteger;
      vReal := vReal + cds.FieldByName('REALIZADO').AsInteger;
      vSald := vSald + cds.FieldByName('SALDO').AsInteger;

      cds.Next;
    end;

    if (AMes <= MonthOf(Date)) then
      if (vSald < 0) then
        pnlColMes.Color := clRed
      else if (vSald > 0) then
        pnlColMes.Color := $0050D092
      else
        pnlColMes.Color := clYellow;

    pnlColMes.Left := 1;    
    pnlColPrev := AdicionarColuna(pnlLanc, 30, alLeft, [boBottom, boTop], IntToStr(vPrev), 90);
    pnlColPrev.Left := 40;
    
    // separador dos lançamentos
    sepLan := TBevel.Create(pnlMes);
    sepLan.Parent := pnlMes;
    sepLan.Align := alBottom;
    sepLan.Shape := bsSpacer;
    sepLan.Height := 10;
    sepLan.Top := 1000;

    // panel totalização
    pnlTotal := AdicionarColuna(pnlMes, 25, alBottom, [boBottom,boLeft,boRight,boTop], '');
    AdicionarColuna(pnlTotal, 0, alClient, [], '     FECHAMENTO', 0, pbTransparent, taLeftJustify );
    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vPrev), 0, pbTransparent);
    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vProj), 0, pbTransparent);
    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vReal), 0, pbTransparent);

    if (vSald < 0) then
      cSald := clRed
    else
      cSald := clBlue;

    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vSald), 0, pbTransparent, taCenter, cSald);

    cdsTotais.Append;
    cdsTotaisMes.AsInteger := AMes;
    cdsTotaisMes_Desc.AsString := UpperCase(LongMonthNames[AMes]);
    cdsTotaisPrevisao.AsInteger := vPrev;
    cdsTotaisProjetado.AsInteger := vProj;
    cdsTotaisRealizado.AsInteger := vReal;
    cdsTotais.Post;

    // calcula a altura da linha
    pnlLinha.Height := Max(pnlLinha.Height, pnlTotal.Height + sepLan.Height + (cds.RecordCount * 25));

  finally
    FreeAndNil(cds);
    JvProgressForm1.ProgressStepIt;
  end;
end;

procedure TfrmProgamacaoPedidos.LimparPaineis;
begin
  FEditors.Clear;
  FreeAndNil(FPanel);

  cdsTotais.Close;
  cdsTotais.CreateDataSet;
end;

procedure TfrmProgamacaoPedidos.JvProgressForm1Show(Sender: TObject);
begin
  JvProgressForm1.ProgressMin := 0;
  JvProgressForm1.ProgressMax := 12;
  JvProgressForm1.ProgressPosition := 0;
  LimparPaineis;

  FPanel := TPanel.Create(nil);

  CriarPainelMes(1);
  CriarPainelMes(2);
  CriarPainelMes(3);
  CriarPainelMes(4);
  CriarPainelMes(5);
  CriarPainelMes(6);
  CriarPainelMes(7);
  CriarPainelMes(8);
  CriarPainelMes(9);
  CriarPainelMes(10);
  CriarPainelMes(11);
  CriarPainelMes(12);

  CriarTotalizadorSemestre(1);
  CriarTotalizadorSemestre(2);

  FPanel.Parent := ScrollBox1;
  FPanel.AutoSize := True;
  FPanel.Align := alTop;
  FPanel.BevelOuter := bvNone;

  pnlProgramacao.Top := 0;
  FPanel.Top := 40;
end;

procedure TfrmProgamacaoPedidos.CriarTotalizadorSemestre(ASemestre: Integer);
var
  pnlLinha, pnlMes: TPanel;
  sepMes, sepCol: TBevel;
  pnlTotal: TNxPanel;
  cds: TClientDataSet;
  I: Integer;
  vPrev, vProj, vReal, vSald: Integer;
begin
  cds := TClientDataSet.Create(nil);
  try
    cds.CloneCursor(cdsProjecaoSemana, True);

    // copia os displayformats
    for I := 0 to cdsProjecaoSemana.FieldCount - 1 do
    begin
      if (cds.Fields[I] is TNumericField) then
        (cds.Fields[I] as TNumericField).DisplayFormat := (cdsProjecaoSemana.Fields[I] as TNumericField).DisplayFormat
      else if (cds.Fields[I] is TDateField) then
        (cds.Fields[I] as TDateField).DisplayFormat := (cdsProjecaoSemana.Fields[I] as TDateField).DisplayFormat;
    end;

    if (ASemestre = 1) then
    begin
      pnlLinha := TPanel.Create(Self);
      pnlLinha.Name := 'linha_7';
      pnlLinha.Caption := '';
      pnlLinha.BevelOuter := bvNone;
      pnlLinha.Parent := FPanel;
      pnlLinha.Align := alTop;
      pnlLinha.Top := 20 * ASemestre;
      pnlLinha.Height := 25;

      // separador da linha dos mês
      sepMes := TBevel.Create(pnlLinha);
      sepMes.Parent := FPanel;
      sepMes.Align := alTop;
      sepMes.Shape := bsSpacer;
      sepMes.Height := 10;
      sepMes.Top := 20 * ASemestre;
    end
    else
    begin
      pnlLinha := TPanel(FPanel.FindChildControl('linha_7'));

      sepCol := TBevel.Create(pnlLinha);
      sepCol.Parent := pnlLinha;
      sepCol.Align := alLeft;
      sepCol.Shape := bsSpacer;
      sepCol.Width := 10;
      sepCol.Left := 2 * ASemestre;
    end;

    // panel do mês
    pnlMes := TPanel.Create(pnlLinha);
    pnlMes.Caption := '';
    pnlMes.BevelOuter := bvNone;
    pnlMes.Parent := pnlLinha;
    pnlMes.Align := alLeft;
    pnlMes.Width := 460;
    pnlMes.Left := 3 * ASemestre;

    if (ASemestre = 1) then
      cds.Filter := 'MES < 7'
    else
      cds.Filter := 'MES > 6';
    cds.Filtered := True;

    vPrev := 0;
    vProj := 0;
    vReal := 0;
    vSald := 0;
    while not cds.Eof do
    begin
      vPrev := vPrev + cds.FieldByName('PREVISAO').AsInteger;
      vProj := vProj + cds.FieldByName('PROJETADO').AsInteger;
      vReal := vReal + cds.FieldByName('REALIZADO').AsInteger;
      vSald := vSald + cds.FieldByName('SALDO').AsInteger;

      cds.Next
    end;

    // panel totalização
    pnlTotal := AdicionarColuna(pnlMes, 25, alBottom, [boBottom,boLeft,boRight,boTop], '');
    pnlTotal.Color := clYellow;

    AdicionarColuna(pnlTotal, 0, alClient, [], '     FECHAMENTO ' + IntToStr(ASemestre) + 'º SEMESTRE', 0, pbTransparent, taLeftJustify, clBlack, '', [fsBold] );
    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vPrev), 0, pbTransparent, taCenter, clBlack, '', [fsBold]);
    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vProj), 0, pbTransparent, taCenter, clBlack, '', [fsBold]);
    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vReal), 0, pbTransparent, taCenter, clBlack, '', [fsBold]);
    AdicionarColuna(pnlTotal, 70, alRight, [], FormatFloat('#,0', vSald), 0, pbTransparent, taCenter, clBlack, '', [fsBold]);
  finally
    FreeAndNil(cds);
  end;
end;

function TfrmProgamacaoPedidos.AdicionarColuna(AParent: TWinControl;
  ASize: Integer; AAlign: TAlign; APanelBorders: TPanelBorders;
  ACaption: String; AAngle: Integer;
  ABackgroundStyle: TNxPanelBackgroundStyle; ATextAlignment: TAlignment;
  ATextColor: TColor; ATextHint: String; ATextFontStyle: TFontStyles): TNxPanel;
var
  pnlCol: TNxPanel;
  labCol: TRzLabel;
begin
  pnlCol := TNxPanel.Create(AParent);
  pnlCol.Parent := AParent;
  pnlCol.Align := AAlign;
  pnlCol.PanelBorders := APanelBorders;
  pnlCol.AdaptiveColors := False;
  pnlCol.Color := clWhite;
  pnlCol.BackgroundStyle := ABackgroundStyle;

  case AAlign of
    alTop, alBottom:
      begin
        pnlCol.Top := 1000;
        pnlCol.Height := ASize;
      end;
    alLeft, alRight:
      begin
        pnlCol.Left := 1000;
        pnlCol.Width := ASize;
      end;
  end;

  labCol := TRzLabel.Create(pnlCol);
  labCol.Parent := pnlCol;
  labCol.Align := alClient;
  labCol.Alignment := ATextAlignment;
  labCol.AutoSize := False;
  labCol.Caption := ACaption;
  labCol.Transparent := True;
  labCol.Layout := tlCenter;
  labCol.Angle := AAngle;
  labCol.Rotation := roFlat;
  labCol.Font.Color := ATextColor;
  labCol.Hint := ATextHint;
  labCol.ShowHint := ATextHint <> '';

  if (AAngle > 0) then
    labCol.Font.Style := [fsBold]
  else
  begin
    labCol.Font.Name := 'Calibri';
    labCol.Font.Style := ATextFontStyle;
  end;

  Result := pnlCol;
end;

procedure TfrmProgamacaoPedidos.btnCarregarClick(Sender: TObject);
begin
  if edtAno.IntValue > 0 then
  begin
    AbrirProjecao(edtAno.IntValue);
    prc_Calcular;
  end;
end;

procedure TfrmProgamacaoPedidos.btnEditarSalvarClick(Sender: TObject);
var
  edt: TRzNumericEdit;
  I: Integer;
  t : TTransactionDesc;
begin
  if (btnEditarSalvar.Tag = 0) then
  begin
    LockWindowUpdate(ScrollBox1.Handle);
    try
      for I := 0 to FEditors.Count - 1 do
      begin
        edt := TRzNumericEdit(FEditors[I]);
        edt.Visible := True;
        if (I = 0) then
          edt.SetFocus;
      end;
    finally
      LockWindowUpdate(0);
      ScrollBox1.Refresh;
    end;

    lblAno.Enabled := False;
    edtAno.Enabled := False;
    btnCarregar.Enabled := False;
    btnEditarSalvar.Tag := 1;
    btnEditarSalvar.Caption := 'Salvar';
    tabGrafico.TabEnabled := False;
  end
  else
  begin
    t.TransactionID := 1;
    t.IsolationLevel := xilREADCOMMITTED;
    getConnection.StartTransaction(t);
    try
      for I := 0 to FEditors.Count - 1 do
      begin
        edt := TRzNumericEdit(FEditors[I]);

        if edt.Modified then
          getConnection.ExecuteDirect('UPDATE PROJECAO_SEMANA SET PREVISAO = ' + IntToStr(edt.IntValue) + ' WHERE ANO = ' + edtAno.Text + ' AND SEMANA = ' + IntToStr(edt.Tag));

        edt.Visible := False;
      end;
      getConnection.Commit(t);

      lblAno.Enabled := True;
      edtAno.Enabled := True;
      btnCarregar.Enabled := True;
      btnEditarSalvar.Tag := 0;
      btnEditarSalvar.Caption := 'Editar';
      tabGrafico.TabEnabled := True;
      btnCarregar.Click;
    except
      getConnection.Rollback(t);
    end;
  end;
end;

procedure TfrmProgamacaoPedidos.FormCreate(Sender: TObject);
begin
  FEditors := TObjectList.Create(True);

  sdsProjecaoSemana.SQLConnection := getConnection;
end;

procedure TfrmProgamacaoPedidos.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FEditors);
end;

procedure TfrmProgamacaoPedidos.AdicionarParametro(AParams: TParams;
  AName: String; ADataType: TFieldType; AValue: Variant);
var
  p: TParam;
begin
  p := AParams.FindParam(AName);
  if not Assigned(p) then
    p := AParams.Add as TParam;

  p.Name := AName;
  p.DataType := ADataType;
  p.Value := AValue;
end;

procedure TfrmProgamacaoPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmProgamacaoPedidos.prc_Calcular;
var
  vProjecao : Real;
  vRealizado : Real;
begin
  qTotalPrevisao.Close;
  qTotalPrevisao.ParamByName('ANO').AsInteger := edtAno.IntValue;
  qTotalPrevisao.Open;
  CurrencyEdit2.AsInteger := qTotalPrevisaoPREVISAO.AsInteger;
  if CurrencyEdit2.AsInteger > 0 then
    CurrencyEdit1.Value := StrToFloat(FormatFloat('0',CurrencyEdit2.Value / 12))
  else
    CurrencyEdit1.Value := 0;

  vProjecao  := 0;
  vRealizado := 0;
  cdsProjecaoSemana.First;
  while not cdsProjecaoSemana.Eof do
  begin
    vProjecao  := StrToFloat(FormatFloat('0',vProjecao + cdsProjecaoSemanaPROJETADO.AsFloat));
    vRealizado := StrToFloat(FormatFloat('0',vRealizado + cdsProjecaoSemanaREALIZADO.AsFloat));
    cdsProjecaoSemana.Next;
  end;
  CurrencyEdit3.Value := vProjecao;
  CurrencyEdit4.Value := vRealizado;
  CurrencyEdit5.Value := CurrencyEdit4.Value - CurrencyEdit2.Value;
end;

end.
