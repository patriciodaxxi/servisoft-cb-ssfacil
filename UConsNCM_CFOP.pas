unit UConsNCM_CFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, NxEdit, StdCtrls, Mask, ToolEdit, RxLookup, rsDBUtils,
  ExtCtrls, Grids, DBGrids, SMDBGrid, RzTabs, Menus, DB, DBClient, UDMConsNCM_CFOP;

type
  TEnumTipoRel = (tpNCM, tpCFOP);
  TEnumTipoMov = (tpEntrada, tpSaida);
type
  TfrmConsNCM_CFOP = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    comboFilial: TRxDBLookupCombo;
    dataInicial: TDateEdit;
    dataFinal: TDateEdit;
    NxComboBox2: TNxComboBox;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    RzPageControl1: TRzPageControl;
    ts_Consulta: TRzTabSheet;
    gridNCM: TSMDBGrid;
    Label1: TLabel;
    comboTipo: TNxComboBox;
    Label3: TLabel;
    comboNCMCFOP: TNxComboBox;
    dsPadrao: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure comboNCMCFOPChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Montar_NCM;
    procedure prc_Impressao_NCM;
    procedure prc_Montar_CFOP;
    procedure prc_Impressao_CFOP;

  public
    { Public declarations }
    fDMConsNCM_CFOP : TDMConsNCM_CFOP;
  end;

var
  frmConsNCM_CFOP: TfrmConsNCM_CFOP;

implementation

uses Math;

{$R *.dfm}

procedure TfrmConsNCM_CFOP.FormShow(Sender: TObject);
begin
  fDMConsNCM_CFOP := TDMConsNCM_CFOP.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNCM_CFOP);
  ts_Consulta.Caption := comboNCMCFOP.Items.Strings[comboNCMCFOP.ItemIndex];
  if fDMConsNCM_CFOP.cdsFilial.RecordCount = 1 then
    comboFilial.KeyValue := fDMConsNCM_CFOP.cdsFilialID.AsInteger;
end;

procedure TfrmConsNCM_CFOP.comboNCMCFOPChange(Sender: TObject);
begin
  ts_Consulta.Caption := comboNCMCFOP.Items.Strings[comboNCMCFOP.ItemIndex];
end;

procedure TfrmConsNCM_CFOP.btnConsultarClick(Sender: TObject);
begin
  case TEnumTipoRel(comboNCMCFOP.ItemIndex) of
    tpNCM:
      begin
        dsPadrao.DataSet := fDMConsNCM_CFOP.cdsFaturamentoNCM;
        prc_Montar_NCM;
      end;
    tpCFOP:
      begin
        dsPadrao.DataSet := fDMConsNCM_CFOP.cdsFaturamentoCFOP;
        prc_Montar_CFOP;
      end;
  end;

end;

procedure TfrmConsNCM_CFOP.prc_Montar_CFOP;
var
  vSql : String;
begin
  fDMConsNCM_CFOP.cdsFaturamentoCFOP.Close;
  vSql := 'select CFOP.codcfop, CFOP.NOME, sum(MOV.VLR_TOTAL) VLR_TOTAL ';
  vSql := vSql + 'from MOVIMENTO MOV ';
  vSql := vSql + 'inner join TAB_CFOP CFOP on CFOP.ID = MOV.ID_CFOP ';
  vSql := vSql + 'where MOV.CANCELADO = ' + QuotedStr('N') + ' and ';
  vSql := vSql + 'MOV.DENEGADA = ' + QuotedStr('N') + ' and ';
  if (comboFilial.KeyValue > 0) and (comboFilial.KeyValue <> null) then
    vSql := vSql + 'MOV.FILIAL = ' + IntToStr(comboFilial.KeyValue) + ' and ';
  if dataInicial.Date > 10 then
    vSql := vSql + 'MOV.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dataInicial.date)) + ' AND ';
  if dataFinal.Date > 10 then
    vSql := vSql + 'MOV.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dataFinal.date)) + ' AND ';
  case TEnumTipoMov(comboTipo.ItemIndex) of
    tpSaida   : vSql := vSql + '(MOV.TIPO_REG = ' + QuotedStr('NTS') + ' or MOV.TIPO_REG = ' + QuotedStr('CFI') + ') ';
    tpEntrada : vSql := vSql + '(MOV.TIPO_REG = ' + QuotedStr('NTE') + ') ';
  end;
  vSql := vSql + 'group by CFOP.CODCFOP, CFOP.NOME ';
  vSql := vSql + 'order by VLR_TOTAL desc';
  fDMConsNCM_CFOP.sdsFaturamentoCFOP.CommandText := vSql;
  fDMConsNCM_CFOP.cdsFaturamentoCFOP.Open;
end;

procedure TfrmConsNCM_CFOP.prc_Montar_NCM;
var
  vSql : String;
begin
  fDMConsNCM_CFOP.cdsFaturamentoNCM.Close;
  vSql := 'select N.NCM, sum(MOV.VLR_TOTAL) VLR_TOTAL ';
  vSql := vSql + 'from MOVIMENTO MOV ';
  vSql := vSql + 'inner join PRODUTO PROD on MOV.ID_PRODUTO = PROD.ID ';
  vSql := vSql + 'inner join TAB_NCM N on N.ID = PROD.ID_NCM ';
  vSql := vSql + 'where MOV.CANCELADO = ' +  QuotedStr('N') + ' and ';
  vSql := vSql + 'MOV.DENEGADA = ' + QuotedStr('N') + ' and ';
  if (comboFilial.KeyValue > 0) and (comboFilial.KeyValue <> null) then
    vSql := vSql + 'MOV.FILIAL = ' + IntToStr(comboFilial.KeyValue) + ' and ';
  if dataInicial.Date > 10 then
    vSql := vSql + 'MOV.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dataInicial.date)) + ' AND ';
  if dataFinal.Date > 10 then
    vSql := vSql + 'MOV.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dataFinal.date)) + ' AND ';
  case TEnumTipoMov(comboTipo.ItemIndex) of
    tpSaida   : vSql := vSql + '(MOV.TIPO_REG = ' + QuotedStr('NTS') + ' or MOV.TIPO_REG = ' + QuotedStr('CFI') + ') ';
    tpEntrada : vSql := vSql + '(MOV.TIPO_REG = ' + QuotedStr('NTE') + ') ';
  end;  
  vSql := vSql + 'group by N.NCM ';
  vSql := vSql + 'order by VLR_TOTAL desc';
  fDMConsNCM_CFOP.sdsFaturamentoNCM.CommandText := vSql;
  fDMConsNCM_CFOP.cdsFaturamentoNCM.Open;
end;

procedure TfrmConsNCM_CFOP.btnImprimirClick(Sender: TObject);
begin
  case TEnumTipoRel(comboNCMCFOP.ItemIndex) of
    tpNCM:
      begin
        prc_Impressao_NCM;
      end;
    tpCFOP:
      begin
        prc_Impressao_CFOP;
      end;
  end;
end;

procedure TfrmConsNCM_CFOP.prc_Impressao_CFOP;
var
  vArq : String;
begin
  if fDMConsNCM_CFOP.cdsFaturamentoCFOP.IsEmpty then
  begin
    MessageDlg('Nenhuma informação encontrada para impressão',mtInformation,[mbOK],0);
    exit;
  end;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Movimento_CFOP.fr3';
  if FileExists(vArq) then
    fDMConsNCM_CFOP.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsNCM_CFOP.cdsFaturamentoCFOP.DisableControls;
  try
    fDMConsNCM_CFOP.frxReport1.variables['Opcao_Imp'] := QuotedStr(comboTipo.Text);
    fDMConsNCM_CFOP.frxReport1.ShowReport;
  finally
    fDMConsNCM_CFOP.cdsFaturamentoCFOP.EnableControls;
  end;

end;

procedure TfrmConsNCM_CFOP.prc_Impressao_NCM;
var
  vArq : String;
begin
  if fDMConsNCM_CFOP.cdsFaturamentoNCM.IsEmpty then
  begin
    MessageDlg('Nenhuma informação encontrada para impressão',mtInformation,[mbOK],0);
    exit;
  end;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Movimento_NCM.fr3';
  if FileExists(vArq) then
    fDMConsNCM_CFOP.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsNCM_CFOP.cdsFaturamentoNCM.DisableControls;
  try
    fDMConsNCM_CFOP.frxReport1.variables['Opcao_Imp'] := QuotedStr(comboTipo.Text);
    fDMConsNCM_CFOP.frxReport1.ShowReport;
  finally
    fDMConsNCM_CFOP.cdsFaturamentoNCM.EnableControls;
  end;
end;

end.
