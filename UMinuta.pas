unit UMinuta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMConsNotas_ES, ExtCtrls, StdCtrls, Mask,
  ToolEdit, CurrEdit, RxLookup, NxCollection, Grids, DBGrids, SMDBGrid, DB,
  DBClient;

type
  TfrmMinuta = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    btnEtiqueta: TNxButton;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    GroupBox1: TGroupBox;
    SMDBGrid2: TSMDBGrid;
    Label13: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;
  public
    { Public declarations }
    fDMConsNotas_ES: TDMConsNotas_ES;

  end;

var
  frmMinuta: TfrmMinuta;

implementation

uses rsDBUtils, USel_Pessoa, uUtilPadrao;

{$R *.dfm}

procedure TfrmMinuta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmMinuta.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmMinuta.prc_Consultar;
var
  vComando: String;
  vOpcao : String;
begin
  fDMConsNotas_ES.cdsMinuta.Filtered := False;
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND N.NUMNOTA >= ' + IntToStr(CurrencyEdit1.AsInteger);
  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND N.NUMNOTA <= ' + IntToStr(CurrencyEdit2.AsInteger);
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND N.SERIE = ' + QuotedStr(Edit1.Text);
  if trim(RxDBLookupCombo3.Text) <> '' then
    vComando := vComando + ' AND N.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if trim(RxDBLookupCombo2.Text) <> '' then
    vComando := vComando + ' AND N.ID_CLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND N.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND N.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  vOpcao := '';
  fDMConsNotas_ES.mNotaSel.First;
  while not fDMConsNotas_ES.mNotaSel.Eof do
  begin
    if fDMConsNotas_ES.mNotaSelNumNota.AsInteger > 0 then
    begin
      if Trim(vOpcao) <> '' then
        vOpcao := vOpcao + ',';
      vOpcao := vOpcao + fDMConsNotas_ES.mNotaSelNumNota.AsString;
    end;
    fDMConsNotas_ES.mNotaSel.Next;
  end;
  if trim(vOpcao) <> '' then
    vComando := vComando + ' AND N.NUMNOTA IN ('+vOpcao+')';
  fDMConsNotas_ES.cdsMinuta.Close;
  fDMConsNotas_ES.sdsMinuta.CommandText := fDMConsNotas_ES.ctMinuta + vComando;
  fDMConsNotas_ES.cdsMinuta.Open;
  fDMConsNotas_ES.cdsMinuta.IndexFieldNames := 'ID_Transportadora';
end;

procedure TfrmMinuta.FormShow(Sender: TObject);
begin
  fDMConsNotas_ES := TDMConsNotas_ES.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotas_ES);
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    if fDMConsNotas_ES.cdsFilial.RecordCount = 1 then
      RxDBLookupCombo3.KeyValue := fDMConsNotas_ES.cdsFilialID.AsInteger;
  end;
  Edit1.Text := fDMConsNotas_ES.qParametrosSERIENORMAL.AsString;
end;

procedure TfrmMinuta.btnEtiquetaClick(Sender: TObject);
var
  vArq: String;
begin
  fDMConsNotas_ES.cdsMinuta.Filtered := False;
  fDMConsNotas_ES.cdsMinuta.Filter   := 'Selecionado = ' + QuotedStr('S');
  fDMConsNotas_ES.cdsMinuta.Filtered := True;
  fDMConsNotas_ES.cdsMinuta.IndexFieldNames := 'ID_Transportadora';

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Minuta.fr3';
  if FileExists(vArq) then
    fDMConsNotas_ES.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsNotas_ES.frxReport1.ShowReport;
end;

procedure TfrmMinuta.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  fDMConsNotas_ES.cdsMinuta.Edit;
  if SMDBGrid1.SelectedRows.CurrentRowSelected then
    fDMConsNotas_ES.cdsMinutaSELECIONADO.AsString := 'S'
  else
    fDMConsNotas_ES.cdsMinutaSELECIONADO.AsString := 'N';
  fDMConsNotas_ES.cdsMinuta.Post;
end;

end.
