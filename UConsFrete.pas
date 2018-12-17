unit UConsFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsFrete, NxCollection, NxEdit, StdCtrls, Mask, ToolEdit,
  RxLookup, ExtCtrls, Menus, Grids, DBGrids, SMDBGrid, DB, ComObj;

type
  TfrmConsFrete = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Excel1: TMenuItem;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ckTipoFrete: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsFrete: TDMConsFrete;

    procedure prc_Consultar;
    procedure prc_Monta_Cab;
    procedure prc_Le_Frete;
    procedure prc_CriaExcel(vDados: TDataSource);

  public
    { Public declarations }
  end;

var
  frmConsFrete: TfrmConsFrete;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsFrete.FormShow(Sender: TObject);
begin
  fDMConsFrete := TDMConsFrete.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFrete);

  if fDMConsFrete.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMConsFrete.cdsFilialID.AsInteger;
end;

procedure TfrmConsFrete.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) then
  begin
    MessageDlg('*** É obrigatório informar a data inicial e final!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar;
  fDMConsFrete.cdsFrete.IndexFieldNames := 'DTEMISSAO;NUMNOTA';
  prc_Le_Frete;
end;

procedure TfrmConsFrete.prc_Consultar;
var
  vComando : String;
begin
  fDMConsFrete.cdsFrete.Close;
  vComando := ' AND N.DTEMISSAO ' + ' BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
            + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if trim(RxDBLookupCombo1.Text) <> '' then
    vComando := vComando + ' AND N.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if trim(RxDBLookupCombo2.Text) <> '' then
    vComando := vComando + ' AND N.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if ckTipoFrete.Checked then
    vComando := vComando + ' AND N.TIPO_FRETE = ' + QuotedStr('1');
  fDMConsFrete.sdsFrete.CommandText := fDMConsFrete.ctFrete + vComando;
  fDMConsFrete.cdsFrete.Open;
end;

procedure TfrmConsFrete.Imprimir1Click(Sender: TObject);
var
  vArq : String;
begin
  prc_Monta_Cab;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Cons_Frete.fr3';
  if FileExists(vArq) then
    fDMConsFrete.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  if RxDBLookupCombo1.Text <> '' then
    fDMConsFrete.frxReport1.variables['NomeEmpresa'] := QuotedStr(RxDBLookupCombo1.Text)
  else
  begin
    fDMConsFrete.cdsFilial.First;
    fDMConsFrete.frxReport1.variables['NomeEmpresa'] := QuotedStr(fDMConsFrete.cdsFilialNOME.AsString);
  end;
  fDMConsFrete.frxReport1.variables['Cabecalho'] := QuotedStr(fDMConsFrete.vCabecalho);
  fDMConsFrete.frxReport1.variables['ImpOpcao']  := QuotedStr(fDMConsFrete.vDescOpcao_Rel);
  fDMConsFrete.frxReport1.variables['Perc']      := QuotedStr(Label10.Caption);
  if ckTipoFrete.Checked then
    fDMConsFrete.frxReport1.variables['ImpFOB']  := QuotedStr('N')
  else
    fDMConsFrete.frxReport1.variables['ImpFOB']  := QuotedStr('S');
  SMDBGrid1.DisableScroll;
  fDMConsFrete.frxReport1.ShowReport;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsFrete.prc_Monta_Cab;
begin
  fDMConsFrete.vDescOpcao_Rel := '';
  if RxDBLookupCombo1.Text <> '' then
    fDMConsFrete.vDescOpcao_Rel := fDMConsFrete.vDescOpcao_Rel + '(Filial: ' + RxDBLookupCombo1.Text + ')';
  if RxDBLookupCombo2.Text <> '' then
    fDMConsFrete.vDescOpcao_Rel := fDMConsFrete.vDescOpcao_Rel + '(Cli: ' + RxDBLookupCombo2.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fDMConsFrete.vDescOpcao_Rel := fDMConsFrete.vDescOpcao_Rel + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')';
  if ckTipoFrete.Checked then
    fDMConsFrete.vCabecalho := 'Relatório de Frete CIF'
  else
    fDMConsFrete.vCabecalho := 'Relatório de Frete CIF/FOB';
end;

procedure TfrmConsFrete.prc_Le_Frete;
var
  vVlrProduto, vVlrFreteCIF, vPerc : Real;
  vQtdNota : Integer;
begin
  SMDBGrid1.DisableScroll;
  vVlrProduto  := 0;
  vVlrFreteCIF := 0;
  vPerc        := 0;
  vQtdNota     := 0;
  fDMConsFrete.cdsFrete.First;
  while not fDMConsFrete.cdsFrete.Eof do
  begin
    vQtdNota     := vQtdNota + 1;
    vVlrFreteCIF := vVlrFreteCIF + fDMConsFrete.cdsFreteVLR_FRETE_CUSTO.AsFloat;
    vVlrProduto  := vVlrProduto + fDMConsFrete.cdsFreteVLR_ITENS.AsFloat;
    fDMConsFrete.cdsFrete.Next;
  end;
  SMDBGrid1.EnableScroll;
  Label5.Caption  := FormatFloat('###,###,##0.00',vVlrProduto);
  Label8.Caption  := FormatFloat('###,###,##0.00',vVlrFreteCIF);
  Label12.Caption := IntToStr(vQtdNota);
  if (StrToFloat(FormatFloat('0.00',vVlrFreteCIF)) > 0) and (StrToFloat(FormatFloat('0.00',vVlrProduto)) > 0) then
    vPerc := StrToFloat(FormatFloat('0.00000',vVlrFreteCIF / vVlrProduto));
  Label10.Caption  := FormatFloat('##0.000##',vPerc);
end;

procedure TfrmConsFrete.prc_CriaExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
  vAux: String;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  vTexto := ExtractFilePath(Application.ExeName) + 'Excel\';
  vTexto := vTexto + 'ConsFrete_' + FormatDateTime('yyyy-mm-dd',DateEdit1.Date) + '_' + FormatDateTime('yyyy-mm-dd',DateEdit2.Date);
  vAux := Monta_Numero(FormatDateTime('hh:mm:ss',now),0);
  vTexto := vTexto + '_' + vAux;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  //prc_Preencher_Excel(planilha, vDados);

  prc_Preencher_Excel2(planilha, vDados, SMDBGrid1);

  planilha.columns.Autofit;

  vAux :=  ExtractFilePath(vTexto);
  if not DirectoryExists(vAux) then
  begin
    MessageDlg('*** Pasta   ' + vAux + '   não existe!', mtInformation, [mbOk], 0);
    CreateDir(vAux);
  end;

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfrmConsFrete.Excel1Click(Sender: TObject);
begin
  if not fDMConsFrete.cdsFrete.IsEmpty then
    prc_CriaExcel(SMDBGrid1.DataSource);
end;

end.
