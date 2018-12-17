unit UConsPrazoMedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsFinanceiro, NxCollection, NxEdit, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, RzPanel, SqlExpr, Grids, DBGrids, SMDBGrid;

type
  TfrmConsPrazoMedio = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    NxComboBox2: TNxComboBox;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    gbxVendedor: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsFinanceiro: TDMConsFinanceiro;
    vQtdDia, vQtdTitulo : Integer;
    vVlrTitulo : Real;
    procedure prc_Calcular_MediaDias(Item : Integer);
    procedure prc_Monta_PrazoMedio_Det;

  public
    { Public declarations }
  end;

var
  frmConsPrazoMedio: TfrmConsPrazoMedio;

implementation

uses DmdDatabase, rsDBUtils, DB;

{$R *.dfm}

procedure TfrmConsPrazoMedio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPrazoMedio.FormShow(Sender: TObject);
begin
  fDMConsFinanceiro := TDMConsFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFinanceiro);
  fDMConsFinanceiro.cdsFilial.Open;
  fDMConsFinanceiro.cdsCliente.Open;
end;

procedure TfrmConsPrazoMedio.btnConsultarClick(Sender: TObject);
var
  i : Integer;
begin
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) then
  begin
    MessageDlg('*** Data inicial ou final não informada!', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    Exit;
  end;
  fDMConsFinanceiro.mPrazo.EmptyDataSet;

  for i := 1 to 3 do
  begin
    fDMConsFinanceiro.mPrazo.Insert;
    fDMConsFinanceiro.mPrazoItem.AsInteger := i;
    prc_Calcular_MediaDias(i);
    case i of
      1 : fDMConsFinanceiro.mPrazoDescricao.AsString := 'Média Prazo Com A Vista';
      2 : fDMConsFinanceiro.mPrazoDescricao.AsString := 'Média Prazo Sem A Vista';
      3 : fDMConsFinanceiro.mPrazoDescricao.AsString := 'Média A Vista';
    end;
    fDMConsFinanceiro.mPrazoQtdDias.AsInteger := vQtdDia;
    fDMConsFinanceiro.mPrazoQtdDup.AsInteger  := vQtdTitulo;
    fDMConsFinanceiro.mPrazoVlrDup.AsFloat    := vVlrTitulo;
    fDMConsFinanceiro.mPrazo.Post;
  end;
  prc_Monta_PrazoMedio_Det;
end;

procedure TfrmConsPrazoMedio.prc_Calcular_MediaDias(Item : Integer);
var
  sds: TSQLDataSet;
begin
  vQtdDia    := 0;
  vQtdTitulo := 0;
  vVlrTitulo := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT avg(D.dtvencimento - D.dtemissao)  QtdDias, count(1) QtdTitulos, Sum(Vlr_Parcela) Vlr_Parcela FROM duplicata D '
                       + ' WHERE d.tipo_es = ' + QuotedStr('E')
                       + ' AND d.ID_NOTA > 0 ';
    if Item = 1 then
      sds.CommandText := sds.CommandText + ' AND d.DTEMISSAO <= D.DtVencimento '
    else
    if Item = 2 then
      sds.CommandText := sds.CommandText + ' AND d.DTEMISSAO < D.DtVencimento '
    else
    if Item = 3 then
      sds.CommandText := sds.CommandText + ' AND d.DTEMISSAO = D.DtVencimento ';

    if NxComboBox2.ItemIndex = 0 then
      sds.CommandText := sds.CommandText + ' AND D.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ' and '
                       + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date))
    else
      sds.CommandText := sds.CommandText + ' AND D.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ' and '
                       + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if RxDBLookupCombo1.Text <> '' then
      sds.CommandText := sds.CommandText + ' AND D.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      sds.CommandText := sds.CommandText + ' AND D.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    sds.Open;
    vQtdDia    := sds.FieldByName('QtdDias').AsInteger;
    vQtdTitulo := sds.FieldByName('QtdTitulos').AsInteger;
    vVlrTitulo := sds.FieldByName('Vlr_Parcela').AsFloat;
  except
  end;
  FreeAndNil(sds);
end;

procedure TfrmConsPrazoMedio.prc_Monta_PrazoMedio_Det;
var
  vComando : String;
begin
  vComando := '';
  if NxComboBox2.ItemIndex = 0 then
    vComando := vComando + ' AND D.DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ' and '
                     + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date))
  else
    vComando := vComando + ' AND D.DTVENCIMENTO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ' and '
                     + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND D.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND D.ID_PESSOA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  fDMConsFinanceiro.cdsPrazoMedio.Close;
  fDMConsFinanceiro.sdsPrazoMedio.CommandText := 'select sum(vlr_parcela) Vlr_Parcela, SUM(QtdDup) QtdDup , QtdDias from ( '
                                               + fDMConsFinanceiro.ctPrazoMedio + vComando
                                               + ') Aux  group by QtdDias ';
  fDMConsFinanceiro.cdsPrazoMedio.Open;
end;

end.
