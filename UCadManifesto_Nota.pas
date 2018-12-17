unit UCadManifesto_Nota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask,
  ToolEdit, CurrEdit, RxLookup, NxCollection, Grids, DBGrids, SMDBGrid, DB, UDMCadManifesto,
  DBClient;

type
  TfrmCadManifesto_Nota = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label13: TLabel;
    Edit1: TEdit;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;
  public
    { Public declarations }
    fDMCadManifesto: TDMCadManifesto;

  end;

var
  frmCadManifesto_Nota: TfrmCadManifesto_Nota;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadManifesto_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadManifesto_Nota.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadManifesto_Nota.prc_Consultar;
var
  vComando: String;
  vOpcao : String;
begin
  fDMCadManifesto.cdsNotas.Filtered := False;
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND N.NUMNOTA >= ' + IntToStr(CurrencyEdit1.AsInteger);
  if CurrencyEdit2.AsInteger > 0 then
    vComando := vComando + ' AND N.NUMNOTA <= ' + IntToStr(CurrencyEdit2.AsInteger);
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND N.SERIE = ' + QuotedStr(Edit1.Text);
  if trim(RxDBLookupCombo3.Text) <> '' then
    vComando := vComando + ' AND N.FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND N.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND N.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadManifesto.cdsNotas.Close;
  fDMCadManifesto.sdsNotas.CommandText := fDMCadManifesto.ctNota + vComando;
  fDMCadManifesto.cdsNotas.Open;
  fDMCadManifesto.cdsNotas.IndexFieldNames := 'NUMNOTA';
end;

procedure TfrmCadManifesto_Nota.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadManifesto);
  DateEdit1.Date := Date;
  btnConsultarClick(Sender);
end;

procedure TfrmCadManifesto_Nota.NxButton1Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if MessageDlg('Copiar as notas selecionadas para o Manifesto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadManifesto.cdsManifesto_Nota.Last;
  vItemAux := fDMCadManifesto.cdsManifesto_NotaITEM.AsInteger;
  fDMCadManifesto.cdsNotas.First;
  while not fDMCadManifesto.cdsNotas.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      vItemAux := vItemAux + 1;
      fDMCadManifesto.cdsManifesto_Nota.Insert;
      fDMCadManifesto.cdsManifesto_NotaID.AsInteger   := fDMCadManifesto.cdsManifestoID.AsInteger;
      fDMCadManifesto.cdsManifesto_NotaITEM.AsInteger := vItemAux + 1;
      fDMCadManifesto.cdsManifesto_NotaID_NOTA.AsInteger := fDMCadManifesto.cdsNotasID.AsInteger;
      fDMCadManifesto.cdsManifesto_NotaPESO_LIQUIDO.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMCadManifesto.cdsNotasPESOLIQUIDO.AsFloat));
      fDMCadManifesto.cdsManifesto_NotaPESO_BRUTO.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadManifesto.cdsNotasPESOBRUTO.AsFloat));
      fDMCadManifesto.cdsManifesto_NotaVLR_NOTA.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsNotasVLR_NOTA.AsFloat));
      fDMCadManifesto.cdsManifesto_NotaVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsNotasVLR_DUPLICATA.AsFloat));
      fDMCadManifesto.cdsManifesto_NotaSERIE.AsString        := fDMCadManifesto.cdsNotasSERIE.AsString;
      fDMCadManifesto.cdsManifesto_NotaNUM_NOTA.AsInteger    := fDMCadManifesto.cdsNotasNUMNOTA.AsInteger;
      fDMCadManifesto.cdsManifesto_Nota.Post;

      fDMCadManifesto.cdsManifestoVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsManifestoVLR_DUPLICATA.AsFloat + fDMCadManifesto.cdsManifesto_NotaVLR_DUPLICATA.AsFloat));
      fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat + fDMCadManifesto.cdsManifesto_NotaVLR_NOTA.AsFloat));
      fDMCadManifesto.cdsManifestoPESO_BRUTO.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadManifesto.cdsManifestoPESO_BRUTO.AsFloat + fDMCadManifesto.cdsManifesto_NotaPESO_BRUTO.AsFloat));
      fDMCadManifesto.cdsManifestoPESO_LIQUIDO.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMCadManifesto.cdsManifestoPESO_LIQUIDO.AsFloat + fDMCadManifesto.cdsManifesto_NotaPESO_LIQUIDO.AsFloat));
    end;
    fDMCadManifesto.cdsNotas.Next;
  end;
  Close;
end;

end.
