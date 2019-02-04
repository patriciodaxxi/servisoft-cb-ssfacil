unit UAjuste_OperacaoNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadNotaFiscal, NxEdit, NxCollection, StdCtrls, Buttons,
  RxLookup, Mask, ToolEdit, CurrEdit, ExtCtrls, Grids, DBGrids, SMDBGrid, UDMEstoque, dbXPress, SqlExpr;


type
  TfrmAjuste_OperacaoNota = class(TForm)
    pnlPesquisa: TPanel;
    lblCliente: TLabel;
    lblSerie: TLabel;
    lblNumNota: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    edtSerie: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    NxButton1: TNxButton;
    SMDBGrid1: TSMDBGrid;
    RadioGroup1: TRadioGroup;
    ckMostrarOperacao: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMEstoque: TDMEstoque;

    procedure prc_Gravar_Nota;

  public
    { Public declarations }
  end;

var
  frmAjuste_OperacaoNota: TfrmAjuste_OperacaoNota;

implementation

uses rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmAjuste_OperacaoNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadNotaFiscal);
  FreeAndNil(fDMEstoque);
  Action := Cafree;
end;

procedure TfrmAjuste_OperacaoNota.FormShow(Sender: TObject);
begin
  fDMCadNotaFiscal := TDMCadNotaFiscal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  fDMEstoque := TDMEstoque.Create(Self);
end;

procedure TfrmAjuste_OperacaoNota.btnConsultarClick(Sender: TObject);
var
  vComando : String;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Close;
  vComando := '';

  case RadioGroup1.ItemIndex of
    0 : vComando := vComando + ' WHERE TIPO_REG = ' + QuotedStr('NTS');
    1 : vComando := vComando + ' WHERE TIPO_REG = ' + QuotedStr('NTE');
    2 : vComando := vComando + ' WHERE 0 = 0 ';
  end;
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND NT.NUMNOTA = ' + CurrencyEdit1.Text;

  if not(RxDBLookupCombo1.Text = '') then
    vComando := vComando + ' AND NT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if Trim(edtSerie.Text) <> '' then
    vComando := vComando +' AND SERIE = ' + QuotedStr(edtSerie.Text);
  if NxDatePicker1.Text <> '' then
    vComando := vComando + ' AND NT.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
  if NxDatePicker2.Text <> '' then
    vComando := vComando + ' AND NT.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
  if Trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')' +
                             ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
  if ckMostrarOperacao.Checked then
    vComando := vComando + ' AND (COALESCE(NT.ID_OPERACAO_NOTA,0) <= 0) ';
  fDMCadNotaFiscal.sdsNotaFiscal_Consulta.CommandText := fDMCadNotaFiscal.ctConsulta + vComando;
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Open;
end;

procedure TfrmAjuste_OperacaoNota.NxButton1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo2.Text) = '' then
    if MessageDlg('Apagar a Operação das Notas selecionadas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if trim(RxDBLookupCombo2.Text) <> '' then
    if MessageDlg('Gravar a Operação: ' + RxDBLookupCombo2.Text + ' nas Notas selecionadas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  fDMCadNotaFiscal.cdsNotaFiscal_Consulta.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if ((RxDBLookupCombo2.Text = '') and (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_OPERACAO_NOTA.AsInteger > 0))
        or ((RxDBLookupCombo2.Text <> '') and (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_OPERACAO_NOTA.AsInteger <> RxDBLookupCombo2.KeyValue)) then
      begin
        fDMCadNotaFiscal.prc_Localizar(fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger);
        if not fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
          prc_Gravar_Nota;
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Consulta.Next;
  end;
  MessageDlg('*** Gravação concluída!' , mtInformation, [mbOk], 0);
  btnConsultarClick(Sender);
end;

procedure TfrmAjuste_OperacaoNota.prc_Gravar_Nota;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin

  ID.TransactionID  := 111;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadNotaFiscal.cdsNotaFiscal.Edit;
    if trim(RxDBLookupCombo2.Text) <> '' then
      fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger := RxDBLookupCombo2.KeyValue
    else
      fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.Clear;
    fDMCadNotaFiscal.cdsNotaFiscal.Post;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      if ((RxDBLookupCombo2.Text = '') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger > 0))
        or ((RxDBLookupCombo2.Text <> '') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger <> RxDBLookupCombo2.KeyValue)) then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
        if trim(RxDBLookupCombo2.Text) <> '' then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger := RxDBLookupCombo2.KeyValue
        else
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.Clear;
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);

        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger > 0 then
        begin
          fDMEstoque.prc_Localizar(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger);
          if not fDMEstoque.cdsEstoque_Mov.IsEmpty then
          begin
            fDMEstoque.cdsEstoque_Mov.Edit;
            if trim(RxDBLookupCombo2.Text) <> '' then
              fDMEstoque.cdsEstoque_MovID_OPERACAO.AsInteger := RxDBLookupCombo2.KeyValue
            else
              fDMEstoque.cdsEstoque_MovID_OPERACAO.Clear;
            fDMEstoque.cdsEstoque_Mov.Post;
            fDMEstoque.cdsEstoque_Mov.ApplyUpdates(0);
          end;
        end;
      end;
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;

    fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Operação: ' + #13 + e.Message);
      end;
  end;
end;

end.
