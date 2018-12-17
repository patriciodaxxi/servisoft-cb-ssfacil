unit UConsCtaOrcamento_Fin_Dt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxEdit, StdCtrls, Mask, ToolEdit, RxLookup,
  NxCollection, UDMConsFinanceiro, StrUtils, Grids, DBGrids, SMDBGrid,
  CurrEdit, DB;

type
  TfrmConsCtaOrcamento_Fin_Dt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    ComboBox2: TComboBox;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    btnImprimir: TNxButton;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    cbxMes: TComboBox;
    Label2: TLabel;
    ceAno: TCurrencyEdit;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    fDMConsFinanceiro : TDMConsFinanceiro;

    procedure prc_Consultar;
    procedure prc_Le_Consulta;
    procedure prc_Le_mConta_Orc_Dt;
    procedure prc_Gravar_mConta_Orc_Dt;
    procedure prc_Gravar_mConta_Orc_Dt_Sint(Conta_Superior : Integer);
    procedure prc_Gravar_mConta_Orc_Total(Indice : Integer ; Cod_Conta : Integer);
    procedure prc_Gravar_Eficiencia(Cod_Conta : Integer);
  public
    { Public declarations }
  end;

var
  frmConsCtaOrcamento_Fin_Dt: TfrmConsCtaOrcamento_Fin_Dt;

implementation

uses rsDBUtils, URelCtaOrcamento_Fin_Dt, DateUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsCtaOrcamento_Fin_Dt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.btnConsultarClick(Sender: TObject);
begin
  if (cbxMes.ItemIndex < 0) or (ceAno.AsInteger < 2000) then
  begin
    MessageDlg('*** É obrigatório informar mês e ano!', mtInformation, [mbOk], 0);
    exit;
  end;
  
  prc_Consultar;
  prc_Le_Consulta;
  prc_Le_mConta_Orc_Dt;
  prc_Gravar_Eficiencia(999991);
  prc_Gravar_Eficiencia(999996);

  fDMConsFinanceiro.mConta_Orc_Dt.IndexFieldNames := 'TIPO_ES;COD_CONTA_ORC;TIPO_REG';
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.prc_Consultar;
var
  vComando : String;
  vComandoAux, vComandoAux2 : String;
  i : Integer;
  vDtIni, vDtFin : TDateTime;
begin
  vDtIni := EncodeDate(ceAno.AsInteger,cbxMes.ItemIndex + 1,01);
  vDtFin := EncodeDate(ceAno.AsInteger,cbxMes.ItemIndex + 1,DaysInAMonth(ceAno.AsInteger,cbxMes.ItemIndex + 1));

  fDMConsFinanceiro.cdsConsulta_Conta_Orc_Dt.Close;
  i := PosEx('GROUP',fDMConsFinanceiro.ctConsulta_Conta_Orc_Dt,0);
  vComandoAux  := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc_Dt,i,Length(fDMConsFinanceiro.ctConsulta_Conta_Orc_Dt) - i + 1);
  vComandoAux2 := copy(fDMConsFinanceiro.ctConsulta_Conta_Orc_Dt,1,i-1);

  //vComando := ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  vComando := vComando + ' AND DUP.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtIni))
            + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtFin));
  fDMConsFinanceiro.sdsConsulta_Conta_Orc_Dt.CommandText := vComandoAux2 + vComando + vComandoAux;
  fDMConsFinanceiro.cdsConsulta_Conta_Orc_Dt.Open;
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.FormShow(Sender: TObject);
begin
  fDMConsFinanceiro := TDMConsFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFinanceiro);
  if fDMConsFinanceiro.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMConsFinanceiro.cdsFilialID.AsInteger;
  ceAno.AsInteger := YearOf(Date);
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.prc_Le_Consulta;
var
  vVlrAux : Real;
  vSemana : Integer;
begin
  fDMConsFinanceiro.mConta_Orc_Dt.EmptyDataSet;
  fDMConsFinanceiro.mConta_Orc_Dt.IndexFieldNames := 'ID_Conta_Orc;ANO;MES;TIPO_REG';
  fDMConsFinanceiro.cdsConsulta_Conta_Orc_Dt.First;
  while not fDMConsFinanceiro.cdsConsulta_Conta_Orc_Dt.Eof do
  begin
    prc_Gravar_mConta_Orc_Dt;
    if trim(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtSUPERIOR.AsString) <> '' then
      prc_Gravar_mConta_Orc_Dt_Sint(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtSUPERIOR.AsInteger);
    fDMConsFinanceiro.cdsConsulta_Conta_Orc_Dt.Next;
  end;
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.prc_Gravar_mConta_Orc_Dt;
var
  vTexto : String;
  i, i2 : Integer;
  vIndice_Vlr : Integer;
begin
  vIndice_Vlr := fnc_Retornar_Semana_Mes(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
  i := fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtID_CONTA_ORCAMENTO.AsInteger;
  if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_ES.AsString = 'E') then
    i := 999990
  else
  if (i <= 0) and (fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_ES.AsString = 'S') then
    i := 999995 ;
  if fDMConsFinanceiro.mConta_Orc_Dt.FindKey([i,YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),'C']) then
    fDMConsFinanceiro.mConta_Orc_Dt.Edit
  else
  begin
    fDMConsFinanceiro.mConta_Orc_Dt.Insert;
    fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger := i;
    fDMConsFinanceiro.mConta_Orc_DtAno.AsInteger          := YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
    fDMConsFinanceiro.mConta_Orc_DtMes.AsInteger       := MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
    fDMConsFinanceiro.mConta_Orc_DtTipo_Reg.AsString   := 'C';
    fDMConsFinanceiro.mConta_Orc_DtDesc_Mes.AsString   := cbxMes.Text;
    fDMConsFinanceiro.mConta_Orc_DtTipo_Conta.AsString := fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_CONTA.AsString;
    if trim(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtCOD_CONTA_ORCAMENTO.AsString) = '' then
      fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString  := IntToStr(i)
    else
      fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString  := fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtCOD_CONTA_ORCAMENTO.AsString;
    i2 := (fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString := vTexto + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtNOME_CONTA_ORCAMENTO.AsString;
    fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString        := fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_ES.AsString;
  end;
  fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Previsto'+IntToStr(vIndice_Vlr)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Previsto'+IntToStr(vIndice_Vlr)).AsFloat
                                                                                             + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PARCELA.AsFloat
                                                                                             + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Realizado'+IntToStr(vIndice_Vlr)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Realizado'+IntToStr(vIndice_Vlr)).AsFloat
                                                                                              + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mConta_Orc_Dt.Post;

  if (fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_ES.AsString = 'E') then
    i := 999991
  else
  if (fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_ES.AsString = 'S') then
    i := 999996;
  prc_Gravar_mConta_Orc_Total(vIndice_Vlr,i);
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.prc_Gravar_mConta_Orc_Dt_Sint(Conta_Superior : Integer);
var
  vTexto : String;
  i, i2 : Integer;
  vIndice_Vlr : Integer;
begin
  vIndice_Vlr := fnc_Retornar_Semana_Mes(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
  fDMConsFinanceiro.qConta_Orcamento.Close;
  fDMConsFinanceiro.qConta_Orcamento.ParamByName('ID').AsInteger := Conta_Superior;
  fDMConsFinanceiro.qConta_Orcamento.Open;
  if fDMConsFinanceiro.qConta_Orcamento.IsEmpty then
    exit;

  //if fDMConsFinanceiro.mConta_Orc_Dt.FindKey([Conta_Superior]) then
  if fDMConsFinanceiro.mConta_Orc_Dt.FindKey([Conta_Superior,YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),'A']) then
    fDMConsFinanceiro.mConta_Orc_Dt.Edit
  else
  begin
    fDMConsFinanceiro.mConta_Orc_Dt.Insert;
    fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger := fDMConsFinanceiro.qConta_OrcamentoID.AsInteger;
    fDMConsFinanceiro.mConta_Orc_DtAno.AsInteger          := YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
    fDMConsFinanceiro.mConta_Orc_DtMes.AsInteger          := MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
    fDMConsFinanceiro.mConta_Orc_DtDesc_Mes.AsString      := cbxMes.Text;
    fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString := fDMConsFinanceiro.qConta_OrcamentoCODIGO.AsString;
    fDMConsFinanceiro.mConta_Orc_DtTipo_Conta.AsString    := fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_CONTA.AsString;
    fDMConsFinanceiro.mConta_Orc_DtTipo_Reg.AsString      := 'A';
    i2 := (fDMConsFinanceiro.qConta_OrcamentoNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString    := vTexto + fDMConsFinanceiro.qConta_OrcamentoDESCRICAO.AsString;
    if fDMConsFinanceiro.qConta_OrcamentoTIPO_RD.AsString = 'R' then
      fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString := 'E'
    else
    fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString    := 'S';
    //fDMConsFinanceiro.mConta_Orc_DtTipo_Conta.AsString := fDMConsFinanceiro.qConta_OrcamentoTIPO.AsString;
  end;
  fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Previsto'+IntToStr(vIndice_Vlr)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Previsto'+IntToStr(vIndice_Vlr)).AsFloat
                                                                                              + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PARCELA.AsFloat
                                                                                              + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_DEVOLUCAO.AsFloat));
  fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Realizado'+IntToStr(vIndice_Vlr)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(vIndice_Vlr)+'.Vlr_Realizado'+IntToStr(vIndice_Vlr)).AsFloat
                                                                                              + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PAGO.AsFloat));
  fDMConsFinanceiro.mConta_Orc_Dt.Post;

  if trim(fDMConsFinanceiro.qConta_OrcamentoSUPERIOR.AsString) <> '' then
    prc_Gravar_mConta_Orc_Dt_Sint(fDMConsFinanceiro.qConta_OrcamentoSUPERIOR.AsInteger);
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.btnImprimirClick(Sender: TObject);
begin
  fDMConsFinanceiro.mConta_Orc_Dt.IndexFieldNames := 'TIPO_ES;COD_CONTA_ORC';
  vTipo_Config_Email := 3;

  SMDBGrid1.DisableScroll;
  fRelCtaOrcamento_Fin_Dt := TfRelCtaOrcamento_Fin_Dt.Create(Self);
  fRelCtaOrcamento_Fin_Dt.fDMConsFinanceiro := fDMConsFinanceiro;
  case ComboBox2.ItemIndex of
    0 : fRelCtaOrcamento_Fin_Dt.vImprimir_Tipo := 'S';
    1 : fRelCtaOrcamento_Fin_Dt.vImprimir_Tipo := 'A';
  end;
  fRelCtaOrcamento_Fin_Dt.vImprimir_SConta := CheckBox1.Checked;
  fRelCtaOrcamento_Fin_Dt.vOpcaoImp      := '';
  if RxDBLookupCombo1.Text <> '' then
    fRelCtaOrcamento_Fin_Dt.vOpcaoImp := fRelCtaOrcamento_Fin_Dt.vOpcaoImp + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  fRelCtaOrcamento_Fin_Dt.vOpcaoImp := fRelCtaOrcamento_Fin_Dt.vOpcaoImp + '(Mês/Ano: ' +cbxMes.Text + '/' + ceAno.Text + ')';
  fRelCtaOrcamento_Fin_Dt.RLReport1.PreviewModal;
  fRelCtaOrcamento_Fin_Dt.RLReport1.Free;
  FreeAndNil(fRelCtaOrcamento_Fin_Dt);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.prc_Gravar_mConta_Orc_Total(Indice,
  Cod_Conta: Integer);
var
  i : Integer;  
begin
  if fDMConsFinanceiro.mConta_Orc_Dt.FindKey([Cod_Conta,YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),'T']) then
    fDMConsFinanceiro.mConta_Orc_Dt.Edit
  else
  begin
    fDMConsFinanceiro.mConta_Orc_Dt.Insert;
    fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger := Cod_Conta;
    fDMConsFinanceiro.mConta_Orc_DtAno.AsInteger          := YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
    fDMConsFinanceiro.mConta_Orc_DtMes.AsInteger          := MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime);
    fDMConsFinanceiro.mConta_Orc_DtTipo_Reg.AsString      := 'T';
    fDMConsFinanceiro.mConta_Orc_DtDesc_Mes.AsString      := cbxMes.Text;
    fDMConsFinanceiro.mConta_Orc_DtTipo_Conta.AsString    := fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_CONTA.AsString;
    fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString := IntToStr(Cod_Conta) + '.T';
    if (Cod_Conta = 999997) or (Cod_Conta = 999998) or (Cod_Conta = 999999)  then
    begin
      if Cod_Conta = 999997 then
        fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString := '...SALDO DA SEMANA...'
      else
      if Cod_Conta = 999998 then
        fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString := '...SALDO ANTERIOR...'
      else
        fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString := '...SALDO FINAL...';
      fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString        := 'T';
    end
    else
    begin
      fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString := '...TOTAL...';
      fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString        := fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_ES.AsString;
    end;
  end;
  if (Cod_Conta = 999997) or (Cod_Conta = 999998) or (Cod_Conta = 999999) then
  begin
    if fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtTIPO_ES.AsString = 'E' then
    begin
      fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Previsto'+IntToStr(Indice)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Previsto'+IntToStr(Indice)).AsFloat
                                                                                            + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PARCELA.AsFloat
                                                                                            + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_DEVOLUCAO.AsFloat));
      fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Realizado'+IntToStr(Indice)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Realizado'+IntToStr(Indice)).AsFloat
                                                                                             + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PAGO.AsFloat));
    end
    else
    begin
      fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Previsto'+IntToStr(Indice)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Previsto'+IntToStr(Indice)).AsFloat
                                                                                            - (fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PARCELA.AsFloat
                                                                                            + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_DEVOLUCAO.AsFloat)));
      fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Realizado'+IntToStr(Indice)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Realizado'+IntToStr(Indice)).AsFloat
                                                                                             - fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PAGO.AsFloat));
    end
  end
  else
  begin
    fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Previsto'+IntToStr(Indice)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Previsto'+IntToStr(Indice)).AsFloat
                                                                                          + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PARCELA.AsFloat
                                                                                          + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_DEVOLUCAO.AsFloat));
    fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Realizado'+IntToStr(Indice)).AsFloat := StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(Indice)+'.Vlr_Realizado'+IntToStr(Indice)).AsFloat
                                                                                           + fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtVLR_PAGO.AsFloat));
  end;
  fDMConsFinanceiro.mConta_Orc_Dt.Post;

  if (Cod_Conta < 999997) then
    prc_Gravar_mConta_Orc_Total(Indice,999997) //Saldo da semana
  else
  if (Cod_Conta < 999998) then
    prc_Gravar_mConta_Orc_Total(Indice,999998) //Saldo Anterior
  else
  if Cod_Conta < 999999 then
    prc_Gravar_mConta_Orc_Total(Indice,999999); //Saldo Final
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.prc_Le_mConta_Orc_Dt;
var
  vAux_Pre, vAux_Real : array[1..5] of Real;
  i, i2 : Integer;
begin
  for i := 1 to 5 do
  begin
    vAux_Pre[i]  := 0;
    vAux_Real[i] := 0;
  end;

  if fDMConsFinanceiro.mConta_Orc_Dt.FindKey([999999,YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),'T']) then
  begin
    fDMConsFinanceiro.mConta_Orc_Dt.Edit;
    i2 := 1;
    for i := 1 to 5 do
    begin
      if i > 1 then
      begin
        fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat  := fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat + fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i-1)+'.Vlr_Previsto'+IntToStr(i-1)).AsFloat;
        fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Realizado'+IntToStr(i)).AsFloat := fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Realizado'+IntToStr(i)).AsFloat + fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i-1)+'.Vlr_Realizado'+IntToStr(i-1)).AsFloat;
      end;
      i2 := i2 + 1;
      if i2 <= 5 then
      begin
        vAux_Pre[i2]  := fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat;
        vAux_Real[i2] := fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Realizado'+IntToStr(i)).AsFloat;
      end;

    end;
    fDMConsFinanceiro.mConta_Orc_Dt.Post;
  end;
  if fDMConsFinanceiro.mConta_Orc_Dt.FindKey([999998,YearOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),MonthOf(fDMConsFinanceiro.cdsConsulta_Conta_Orc_DtDTVENCIMENTO.AsDateTime),'T']) then
  begin
    fDMConsFinanceiro.mConta_Orc_Dt.Edit;
    for i := 1 to 5 do
    begin
      fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat  := vAux_Pre[i];
      fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Realizado'+IntToStr(i)).AsFloat := vAux_Real[i];
    end;
   fDMConsFinanceiro.mConta_Orc_Dt.Post;
  end;
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.prc_Gravar_Eficiencia(Cod_Conta: Integer);
var
  i : Integer;
  vAux : array[1..5] of Real;
begin
  for i := 1 to 5 do
    vAux[i] := 0;
  if fDMConsFinanceiro.mConta_Orc_Dt.FindKey([Cod_Conta,ceAno.AsInteger,cbxMes.ItemIndex + 1,'T']) then
  begin
    for i := 1 to 5 do
    begin
      if StrToFloat(FormatFloat('0.00',fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat)) > 0 then
        vAux[i] := StrToFloat(FormatFloat('0.00',(fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Realizado'+IntToStr(i)).AsFloat - fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat)
                 / fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat * 100));
    end;
    if Cod_Conta = 999991 then
      i := 999998
    else
      i := 999999;
    fDMConsFinanceiro.mConta_Orc_Dt.Insert;
    fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger := i;
    fDMConsFinanceiro.mConta_Orc_DtAno.AsInteger          := ceAno.AsInteger;
    fDMConsFinanceiro.mConta_Orc_DtMes.AsInteger          := cbxMes.ItemIndex + 1;
    fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString := IntToStr(i);
    fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString       := 'Z';
    if i = 999998 then
      fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString := 'Entradas - em %'
    else
      fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString := 'Saidas - em %';
    for i := 1 to 5 do
      fDMConsFinanceiro.mConta_Orc_Dt.FieldByName('Desc_Valor'+IntToStr(i)+'.Vlr_Previsto'+IntToStr(i)).AsFloat := vAux[i];
    fDMConsFinanceiro.mConta_Orc_Dt.Post;
  end;
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.SMDBGrid1GetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if (fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString = '999991.T') or (fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString = '999996.T') then
    Background := $00CACACA
  else
  if fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString = 'T' then
  begin
    Background  := $00B3FFFF;
    AFont.Color := clBlack;
  end
  else
  if fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString = 'Z' then
  begin
    Background  := $00D5FFD5;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsCtaOrcamento_Fin_Dt.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString = '999991.T') or (fDMConsFinanceiro.mConta_Orc_DtCod_Conta_Orc.AsString = '999996.T') then
    //Dbgrid1.Canvas.Font.Color:= $00CACACA
    Dbgrid1.Canvas.Brush.Color:= $00CACACA
  else
  if fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString = 'T' then
  begin
    //Dbgrid1.Canvas.Font.Color:= $00B3FFFF;
    Dbgrid1.Canvas.Brush.Color:= $00B3FFFF;
  end
  else
  if fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString = 'Z' then
  begin
    //Dbgrid1.Canvas.Font.Color:= $00D5FFD5;
    Dbgrid1.Canvas.Brush.Color:= $00D5FFD5;
  end;
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

end.
