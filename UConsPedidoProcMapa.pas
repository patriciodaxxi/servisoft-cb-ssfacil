unit UConsPedidoProcMapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMBaixaPedidoProc, DBVGrids, Grids, DBGrids, SMDBGrid, StdCtrls,
  NxCollection, RxLookup, NxEdit, CurrEdit, Mask, ToolEdit, ExtCtrls,
  RzTabs, DB, Menus;

type
  TfrmConsPedidoProcMapa = class(TForm)
    Panel1: TPanel;
    NxLabel9: TNxLabel;
    NxLabel10: TNxLabel;
    btnConsTalao: TNxButton;
    Edit1: TEdit;
    CurrencyEdit5: TCurrencyEdit;
    Edit2: TEdit;
    btnImprimir: TNxButton;
    NxLabel13: TNxLabel;
    DateEdit5: TDateEdit;
    NxLabel14: TNxLabel;
    DateEdit6: TDateEdit;
    NxLabel1: TNxLabel;
    Edit3: TEdit;
    NxLabel2: TNxLabel;
    NxLabel3: TNxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RzPageControl1: TRzPageControl;
    TS_Mapa: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TS_ConsProcesso: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsTalaoClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure CurrencyEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMBaixaPedidoProc: TDMBaixaPedidoProc;
    vOpcaoImp : String;
    vNomeAnt : String;

    function fnc_Busca_Cliente(ID : Integer) : String;

    procedure prc_Monta_Opcao;
    procedure prc_Consulta_PedidoItens;
    procedure prc_Consulta_Baixa_Acum;

  public
    { Public declarations }
  end;

var
  frmConsPedidoProcMapa: TfrmConsPedidoProcMapa;

implementation

uses rsDBUtils, USel_Pessoa, uUtilPadrao, USel_Produto, StrUtils;

{$R *.dfm}

procedure TfrmConsPedidoProcMapa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPedidoProcMapa.FormShow(Sender: TObject);
begin
  fDMBaixaPedidoProc:= TDMBaixaPedidoProc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaPedidoProc);
  fDMBaixaPedidoProc.cdsProcesso.Open;
end;

procedure TfrmConsPedidoProcMapa.btnConsTalaoClick(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Mapa then
    prc_Consulta_PedidoItens
  else
    prc_Consulta_Baixa_Acum;
end;

procedure TfrmConsPedidoProcMapa.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
  vCor : TColor;
begin
  ColunaOrdenada := Column.FieldName;
  fDMBaixaPedidoProc.cdsPedido_Itens.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := $00B7FFB7;
end;

procedure TfrmConsPedidoProcMapa.CurrencyEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if CurrencyEdit5.AsInteger > 0 then
      vCodPessoa_Pos := CurrencyEdit5.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
    begin
      CurrencyEdit5.AsInteger := vCodPessoa_Pos;
      CurrencyEdit5.SetFocus;
      Edit3.Text := '';
      if CurrencyEdit5.AsInteger > 0 then
        Edit3.Text := fnc_Busca_Cliente(CurrencyEdit5.AsInteger);
    end;
  end;
end;

function TfrmConsPedidoProcMapa.fnc_Busca_Cliente(ID: Integer): String;
begin
  Result := '';
  fDMBaixaPedidoProc.qCliente.Close;
  fDMBaixaPedidoProc.qCliente.ParamByName('CODIGO').AsInteger := ID;
  fDMBaixaPedidoProc.qCliente.Open;
  Result := fDMBaixaPedidoProc.qClienteNOME.AsString;
end;

procedure TfrmConsPedidoProcMapa.CurrencyEdit5Exit(Sender: TObject);
begin
  if CurrencyEdit5.AsInteger > 0 then
    Edit3.Text := fnc_Busca_Cliente(CurrencyEdit5.AsInteger)
  else
    Edit3.Text := '';
end;

procedure TfrmConsPedidoProcMapa.prc_Monta_Opcao;
begin
  vOpcaoImp := '';
  {if CurrencyEdit3.AsInteger > 0 then
    vOpcaoImp := vOpcaoImp + '(Nº O.P.: ' + CurrencyEdit3.Text + ')';
  if (CurrencyEdit1.AsInteger > 0) and (CurrencyEdit2.AsInteger > 0) then
    vOpcaoImp := vOpcaoImp + '(Lote: ' + CurrencyEdit1.Text + ' a ' + CurrencyEdit2.Text + ')'
  else
  if (CurrencyEdit1.AsInteger > 0) then
    vOpcaoImp := vOpcaoImp + '(Lote Inicial: ' + CurrencyEdit1.Text + ')'
  else
  if (CurrencyEdit2.AsInteger > 0) then
    vOpcaoImp := vOpcaoImp + '(Lote Final: ' + CurrencyEdit2.Text + ')';
  if trim(RxDBLookupCombo1.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Processo: ' + RxDBLookupCombo1.Text + ')';
  if CurrencyEdit5.AsInteger > 0 then
    vOpcaoImp := vOpcaoImp + '(Processo: ' + Edit3.Text + ')';
  if trim(Edit2.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Nº Pedido: ' + Edit2.Text + ')';
  if trim(Edit1.Text) <> '' then
    vOpcaoImp := vOpcaoImp + '(Referência: ' + Edit1.Text + ')';
  case cbxOpcao.ItemIndex of
    1 : vOpcaoImp := vOpcaoImp + '(Pendente de encerramento) ';
    3 : vOpcaoImp := vOpcaoImp + '(Não entrou em produção)';
  end;}
end;

procedure TfrmConsPedidoProcMapa.btnImprimirClick(Sender: TObject);
var
  vArq : String;
  vDetalhada : String;
begin
  fDMBaixaPedidoProc.cdsProcesso.Close;
  fDMBaixaPedidoProc.cdsProcesso.Open;
  vDetalhada := '';
  prc_Monta_Opcao;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\PedidoProcMapa.fr3';
  if FileExists(vArq) then
    fDMBaixaPedidoProc.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    MessageDlg('*** Relatório ' + vArq + ', não encontrado!' , mtInformation, [mbOk], 0);
    exit;
  end;
 { fDMBaixaPedidoProc.frxReport1.variables['ImpOpcao']    := QuotedStr(vOpcaoImp);
  fDMBaixaPedidoProc.frxReport1.variables['OpcaoTitulo'] := QuotedStr('Produção ' + vDetalhada + ' - ' + DateToStr(fDMBaixaPedidoProc.vDtProducaoIni) + ' a ' + DateToStr(fDMBaixaPedidoProc.vDtProducaoFin));
  fDMBaixaPedidoProc.frxReport1.variables['Processo']    := QuotedStr(RxDBLookupCombo1.Text);}
  fDMBaixaPedidoProc.frxReport1.ShowReport;
end;

procedure TfrmConsPedidoProcMapa.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if trim(Edit1.Text) <> '' then
      vReferencia_Pos := Edit1.Text;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      Edit1.Text := vReferencia_Pos;
  end;
end;

procedure TfrmConsPedidoProcMapa.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if CurrencyEdit5.AsInteger > 0 then
      vCodPessoa_Pos := CurrencyEdit5.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
    begin
      CurrencyEdit5.AsInteger := vCodPessoa_Pos;
      CurrencyEdit5.SetFocus;
      Edit3.Text := '';
      if CurrencyEdit5.AsInteger > 0 then
        Edit3.Text := fnc_Busca_Cliente(CurrencyEdit5.AsInteger);
    end;
  end;
end;

procedure TfrmConsPedidoProcMapa.Edit3Enter(Sender: TObject);
begin
  vNomeAnt := Edit3.Text;
end;

procedure TfrmConsPedidoProcMapa.Edit3Exit(Sender: TObject);
begin
  if (vNomeAnt <> Edit3.Text) and (trim(Edit3.Text) <> '') then
    CurrencyEdit5.Clear;
end;

procedure TfrmConsPedidoProcMapa.prc_Consulta_PedidoItens;
var
  vComando : String;
begin
  fDMBaixaPedidoProc.cdsPedido_Itens.Close;
  fDMBaixaPedidoProc.sdsPedido_Itens.CommandText := fDMBaixaPedidoProc.ctPedido_Itens;
  vComando := '';
  if CurrencyEdit5.AsInteger > 0 then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(CurrencyEdit5.AsInteger);
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA  >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA  <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit5.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO  >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  if DateEdit6.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO  <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(Edit2.Text);
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND IT.REFERENCIA = ' + QuotedStr(Edit1.Text);
  fDMBaixaPedidoProc.sdsPedido_Itens.CommandText := fDMBaixaPedidoProc.sdsPedido_Itens.CommandText + vComando;
  fDMBaixaPedidoProc.cdsPedido_Itens.Open;
  fDMBaixaPedidoProc.cdsPedido_Itens.IndexFieldNames := 'PEDIDO_CLIENTE;REFERENCIA';
end;

procedure TfrmConsPedidoProcMapa.prc_Consulta_Baixa_Acum;
var
  vComando: String;
  vComando2: String;
  i: Integer;
begin
  fDMBaixaPedidoProc.cdsConsBaixa_Acum.Close;
  i := PosEx('GROUP',fDMBaixaPedidoProc.ctConsBaixa_Acum,0);
  vComando2  := copy(fDMBaixaPedidoProc.ctConsBaixa_Acum,i,Length(fDMBaixaPedidoProc.ctConsBaixa_Acum) - i + 1);
  vComando   := copy(fDMBaixaPedidoProc.ctConsBaixa_Acum,1,i-1) + ' WHERE 0 = 0 ';
  if CurrencyEdit5.AsInteger > 0 then
    vComando := vComando + ' AND PED.ID_CLIENTE = ' + IntToStr(CurrencyEdit5.AsInteger);
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA  >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA  <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit5.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO  >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  if DateEdit6.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO  <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(Edit2.Text);
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND IT.REFERENCIA = ' + QuotedStr(Edit1.Text);
  fDMBaixaPedidoProc.sdsConsBaixa_Acum.CommandText := vComando + vComando2;
  fDMBaixaPedidoProc.cdsConsBaixa_Acum.Open;
end;

procedure TfrmConsPedidoProcMapa.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMBaixaPedidoProc.cdsConsBaixa_AcumID_PEDIDO.AsInteger > 0) and (StrToFloat(FormatFloat('0.0000',fDMBaixaPedidoProc.cdsConsBaixa_AcumclQtd_Pendente.AsFloat)) <= 0) then
    Background := clMoneyGreen;
end;

end.
