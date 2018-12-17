unit UConsNotas_ES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsNotas_ES, RxLookup, UCBase, Mask, ToolEdit,
  RzPanel, RzTabs, CurrEdit, NxEdit, NxCollection;

type
  TfrmConsNotas_ES = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    RadioGroup1: TRadioGroup;
    Shape2: TShape;
    Label10: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    NxComboBox2: TNxComboBox;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    btnSelecionarCli: TNxButton;
    ComboBox1: TComboBox;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure btnSelecionarCliClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsNotas_ES: TDMConsNotas_ES;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsNotas_ES: TfrmConsNotas_ES;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelNotas_ES,
  StrUtils, UConsNotas_ES_SelCli, URelNotas_ES_Cli;

{$R *.dfm}

procedure TfrmConsNotas_ES.prc_Consultar;
var
  vComando: String;
  vComandoAux: String;
  i: Integer;
  vDescDataNTE: String;
  vPessoa_Sel : String;
begin
  vPessoa_Sel := '';
  //if ComboBox1.ItemIndex = 1 then
  //begin
    fDMConsNotas_ES.mCliente_Sel.First;
    while not fDMConsNotas_ES.mCliente_Sel.Eof do
    begin
      if trim(vPessoa_Sel) = '' then
        vPessoa_Sel := fDMConsNotas_ES.mCliente_SelID.AsString
      else
        vPessoa_Sel := vPessoa_Sel + ',' + fDMConsNotas_ES.mCliente_SelID.AsString;
      fDMConsNotas_ES.mCliente_Sel.Next;
    end;
  //end;

  fDMConsNotas_ES.cdsConsulta.Close;
  //PosEx('GROUP',fDMConsNotas_ES.ctConsulta,0);
   i := PosEx('GROUP',fDMConsNotas_ES.ctConsulta,0);
  vComandoAux := copy(fDMConsNotas_ES.ctConsulta,i,Length(fDMConsNotas_ES.ctConsulta) - i + 1);
  vComando    := copy(fDMConsNotas_ES.ctConsulta,1,i-1);

  vComando := vComando + ' WHERE 0 = 0 ';

  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND NT.FILIAL =  ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    vComando := vComando + ' AND NT.ID_CLIENTE =  ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    vComando := vComando + ' AND NT.ID_VENDEDOR =  ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if DateEdit1.Date > 10 then
  begin
    vComando := vComando + ' AND (((NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ')';
    vComando := vComando + '  AND (NT.TIPO_REG = ' + QuotedStr('NTS') + '))';
    if NxComboBox2.ItemIndex = 1 then
      vComando := vComando + '   OR ((NT.DTSAIDAENTRADA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ')'
    else
      vComando := vComando + '   OR ((NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ')';
    vComando := vComando + '  AND (NT.TIPO_REG = ' + QuotedStr('NTE') + ')))';
  end;
  if DateEdit2.Date > 10 then
  begin
    vComando := vComando + ' AND (((NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ')';
    vComando := vComando + '  AND (NT.TIPO_REG = ' + QuotedStr('NTS') + '))';
    if NxComboBox2.ItemIndex = 1 then
      vComando := vComando + '   OR ((NT.DTSAIDAENTRADA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ')'
    else
      vComando := vComando + '   OR ((NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ')';
    vComando := vComando + '  AND (NT.TIPO_REG = ' + QuotedStr('NTE') + ')))';
  end;

  if CheckBox2.Checked then
    vComando := vComando + '  AND (coalesce(NI.vlr_desconto,0) + coalesce(NI.vlr_descontorateio,0)) > 0 ';

  case RadioGroup1.ItemIndex of
    0: vComando := vComando + ' AND NT.TIPO_NOTA = ' + QuotedStr('S');
    1: vComando := vComando + ' AND NT.TIPO_NOTA = ' + QuotedStr('E');
    3: vComando := vComando + ' AND NT.CANCELADA = ' + QuotedStr('S');
    4: vComando := vComando + ' AND NT.NFEDENEGADA = ' + QuotedStr('S');
    5: vComando := vComando + ' AND ((NT.CANCELADA = ' + QuotedStr('S') + ') OR (NT.NFEDENEGADA = ' + QuotedStr('S') + '))';
  end;
                                           
  //if (ComboBox1.ItemIndex = 1) and (trim(vPessoa_Sel) <> '') then
  if (trim(vPessoa_Sel) <> '') then
    vComando := vComando + ' AND ID_CLIENTE IN ('+vPessoa_Sel+')';
  fDMConsNotas_ES.sdsConsulta.CommandText := vComando + ' ' + vComandoAux;
  fDMConsNotas_ES.cdsConsulta.Open;


end;

procedure TfrmConsNotas_ES.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotas_ES.FormShow(Sender: TObject);
begin
  fDMConsNotas_ES := TDMConsNotas_ES.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotas_ES);
  fDMConsNotas_ES.cdsFilial.First;
  if (fDMConsNotas_ES.cdsFilial.RecordCount < 2) and (fDMConsNotas_ES.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsNotas_ES.cdsFilialID.AsInteger;
end;

procedure TfrmConsNotas_ES.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsNotas_ES.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsNotas_ES.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsNotas_ES.cdsConsultaCANCELADA.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if fDMConsNotas_ES.cdsConsultaNFEDENEGADA.AsString = 'S' then
  begin
    Background  := $000080FF;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsNotas_ES.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsNotas_ES.btnImprimirClick(Sender: TObject);
var
  vOpcaoAux : String;
begin
  if not fDMConsNotas_ES.cdsConsulta.Active then
    exit;

  vOpcaoAux      := '';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Período: ' + DateEdit1.Text + ' a ' + DateEdit2.Text +  ')'
  else
  if (DateEdit1.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Período Inicial: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Período Fin: ' + DateEdit2.Text + ')';

  vTipo_Config_Email := 3;
  if ComboBox1.ItemIndex = 1 then
  begin
    fDMConsNotas_ES.cdsConsulta.IndexFieldNames := 'FILIAL;SERIE;NUMNOTA;VLR_DUPLICATA';
    fRelNotas_ES_Cli := TfRelNotas_ES_Cli.Create(Self);
    fRelNotas_ES_Cli.fDMConsNotas_ES := fDMConsNotas_ES;
    fRelNotas_ES_Cli.vOpcaoImp       := vOpcaoAux;
    fRelNotas_ES_Cli.RLReport1.PreviewModal;
    fRelNotas_ES_Cli.RLReport1.Free;
    FreeAndNil(fRelNotas_ES_Cli);
  end
  else
  begin
    if CheckBox1.Checked then
      fDMConsNotas_ES.cdsConsulta.IndexFieldNames := 'FILIAL;CODCFOP;DTSAIDAENTRADA;DTEMISSAO;SERIE;NUMNOTA'
    else
      fDMConsNotas_ES.cdsConsulta.IndexFieldNames := 'FILIAL;TIPO_NOTA;DTSAIDAENTRADA;DTEMISSAO;SERIE;NUMNOTA';
    fRelNotas_ES := TfRelNotas_ES.Create(Self);
    fRelNotas_ES.vOpcaoImp       := vOpcaoAux;
    fRelNotas_ES.fDMConsNotas_ES := fDMConsNotas_ES;
    fRelNotas_ES.vImp_Por_CFOP   := CheckBox1.Checked;
    fRelNotas_ES.RLReport1.PreviewModal;
    fRelNotas_ES.RLReport1.Free;
    FreeAndNil(fRelNotas_ES);
  end;
end;

procedure TfrmConsNotas_ES.ComboBox1Click(Sender: TObject);
begin
  CheckBox1.Visible := (ComboBox1.ItemIndex = 0);
end;

procedure TfrmConsNotas_ES.btnSelecionarCliClick(Sender: TObject);
begin
  frmConsNotas_ES_SelCli := TfrmConsNotas_ES_SelCli.Create(self);
  frmConsNotas_ES_SelCli.fDMConsNotas_ES := fDMConsNotas_ES;
  frmConsNotas_ES_SelCli.ShowModal;
  FreeAndNil(frmConsNotas_ES_SelCli);
end;

procedure TfrmConsNotas_ES.RadioGroup1Click(Sender: TObject);
begin
  Label4.Visible    := (RadioGroup1.ItemIndex <= 2);
  ComboBox1.Visible := (RadioGroup1.ItemIndex <= 2);
end;

end.
