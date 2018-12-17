unit UCadTabPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadTab_Preco, DB,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  UCadTabPreco_Itens, UCBase, RzPanel, UCadTabPreco_Sel_Produto, NxCollection, ULeExcel,UCadTabPreco_Copia;

type
  TfrmCadTabPreco = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    lblCliente: TLabel;
    StaticText1: TStaticText;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Panel11: TPanel;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    edtNome: TEdit;
    TabSheet1: TRzTabSheet;
    DBMemo1: TDBMemo;
    btnBuscarProduto: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    btnAplicar: TBitBtn;
    UCControls1: TUCControls;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnExportar: TNxButton;
    pnlCliente: TPanel;
    Label18: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText2: TStaticText;
    DBCheckBox1: TDBCheckBox;
    gbxVigencia: TRzGroupBox;
    Label2: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label3: TLabel;
    DBDateEdit3: TDBDateEdit;
    edtID: TEdit;
    lblID: TLabel;
    btnCopiarLista: TNxButton;
    DBCheckBox2: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscarProdutoClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnAplicarClick(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure btnCopiarListaClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadTab_Preco: TDMCadTab_Preco;

    ffrmCadTabPreco_Itens: TfrmCadTabPreco_Itens;
    ffrmCadTabPreco_Sel_Produto: TfrmCadTabPreco_Sel_Produto;
    ffrmCadTabPreco_Copia: TfrmCadTabPreco_Copia;
    ffrmLeExcel: TfrmLeExcel;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Habilitar_CamposNota;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Gravar_Preco;
  public
    { Public declarations }
    vID_TabPreco: Integer;
  end;

var
  frmCadTabPreco: TfrmCadTabPreco;

implementation

uses DateUtils, rsDBUtils, uUtilPadrao, UCadTabPreco_Inf;

{$R *.dfm}

procedure TfrmCadTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vID_TabPreco := 0;
  Action       := Cafree;
end;

procedure TfrmCadTabPreco.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTab_Preco.cdsTab_Preco.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTabPreco.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTabPreco.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadTab_Preco.cdsTab_PrecoID.AsInteger;
    fDMCadTab_Preco.prc_Excluir;
  except
    on e: Exception do
    begin
      btnConsultarClick(frmCadTabPreco);
      if vCodAux > 0 then
         fDMCadTab_Preco.cdsTab_Preco.Locate('ID',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadTabPreco.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Estoque: Integer;
begin
  if fDMCadTab_Preco.cdsTab_PrecoTABPROMOCIONAL.AsString <> 'S' then
  begin
    fDMCadTab_Preco.cdsTab_PrecoDTINICIAL.Clear;
    fDMCadTab_Preco.cdsTab_PrecoDTFINAL.Clear;
  end;
  fDMCadTab_Preco.prc_Gravar;
  vIDAux := fDMCadTab_Preco.cdsTab_PrecoID.AsInteger;
  if fDMCadTab_Preco.cdsTab_Preco.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTab_Preco.vMSGErro, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadTab_Preco.cdsTab_Preco.ApplyUpdates(0);

  prc_Habilitar_CamposNota;

  prc_Consultar(vIDAux);
end;

procedure TfrmCadTabPreco.prc_Inserir_Registro;
begin
  fDMCadTab_Preco.prc_Inserir;

  if fDMCadTab_Preco.cdsTab_Preco.State in [dsBrowse] then
    exit;

  prc_Habilitar_CamposNota;

  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTabPreco.FormShow(Sender: TObject);
var
  vData: TDateTime;
  i : Integer;
begin
  fDMCadTab_Preco := TDMCadTab_Preco.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadTab_Preco);

  if vID_TabPreco > 0 then
  begin
    prc_Consultar(vID_TabPreco);
    if not(fDMCadTab_Preco.cdsTab_Preco.IsEmpty) then
      RzPageControl1.ActivePage := TS_Cadastro;
  end;
  DBCheckBox1.Visible := (fDMCadTab_Preco.qParametros_FinUSA_TABPRECO_PROM.AsString = 'S');
  gbxVigencia.Visible := (fDMCadTab_Preco.cdsTab_PrecoTABPROMOCIONAL.AsString = 'S');
  DBCheckBox2.Visible := (fDMCadTab_Preco.qParametros_FinUSA_NGR.AsString = 'S');

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'NGR' then
      SMDBGrid1.Columns[i].Visible := (fDMCadTab_Preco.qParametros_FinUSA_NGR.AsString = 'S');
  end;
end;

procedure TfrmCadTabPreco.prc_Consultar(ID: Integer);
begin
  fDMCadTab_Preco.cdsTab_Preco.Close;
  fDMCadTab_Preco.sdsTab_Preco.CommandText := fDMCadTab_Preco.ctCommand;
  if ID > 0 then
    fDMCadTab_Preco.sdsTab_Preco.CommandText := fDMCadTab_Preco.sdsTab_Preco.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
    fDMCadTab_Preco.sdsTab_Preco.CommandText := fDMCadTab_Preco.sdsTab_Preco.CommandText + ' WHERE 0 = 0 ';

  if Trim(edtNome.Text) <> '' then
    fDMCadTab_Preco.sdsTab_Preco.CommandText := fDMCadTab_Preco.sdsTab_Preco.CommandText +
                                                ' AND NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  if Trim(edtID.Text) <> '' then
    fDMCadTab_Preco.sdsTab_Preco.CommandText := fDMCadTab_Preco.sdsTab_Preco.CommandText +
                                                ' AND ID = ' + edtID.Text;

  if DateEdit1.Date > 10 then
    fDMCadTab_Preco.sdsTab_Preco.CommandText := fDMCadTab_Preco.sdsTab_Preco.CommandText +
                                                ' AND DTCADASTRO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadTab_Preco.sdsTab_Preco.CommandText := fDMCadTab_Preco.sdsTab_Preco.CommandText +
                                                ' AND DTCADASTRO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadTab_Preco.cdsTab_Preco.Open;
end;

procedure TfrmCadTabPreco.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadTabPreco.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTab_Preco.cdsTab_Preco.State in [dsBrowse]) or not(fDMCadTab_Preco.cdsTab_Preco.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTab_Preco.cdsTab_Preco.CancelUpdates;

  prc_Habilitar_CamposNota;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadTabPreco.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTabPreco.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTab_Preco.cdsTab_Preco.IsEmpty) or not(fDMCadTab_Preco.cdsTab_Preco.Active) or (fDMCadTab_Preco.cdsTab_PrecoID.AsInteger < 1) then
    exit;

  fDMCadTab_Preco.cdsTab_Preco.Edit;
  prc_Habilitar_CamposNota;
end;

procedure TfrmCadTabPreco.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTabPreco.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTab_Preco);
end;

procedure TfrmCadTabPreco.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadTab_Preco.cdsTab_Preco_Itens.Active) and (fDMCadTab_Preco.cdsTab_Preco_Itens.IsEmpty) or (fDMCadTab_Preco.cdsTab_Preco_ItensITEM.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTab_Preco.prc_Excluir_Item;
end;

procedure TfrmCadTabPreco.btnInserir_ItensClick(Sender: TObject);
begin
  ffrmCadTabPreco_Itens := TfrmCadTabPreco_Itens.Create(self);
  ffrmCadTabPreco_Itens.fDMCadTab_Preco := fDMCadTab_Preco;
  ffrmCadTabPreco_Itens.vStatus := 'I';
  ffrmCadTabPreco_Itens.ShowModal;

  FreeAndNil(ffrmCadTabPreco_Itens);
end;

procedure TfrmCadTabPreco.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadTab_Preco.cdsTab_Preco_Itens.IsEmpty) or (fDMCadTab_Preco.cdsTab_Preco_ItensITEM.AsInteger <= 0) then
    exit;

  fDMCadTab_Preco.cdsTab_Preco_Itens.Edit;

  ffrmCadTabPreco_Itens := TfrmCadTabPreco_Itens.Create(self);
  ffrmCadTabPreco_Itens.fDMCadTab_Preco := fDMCadTab_Preco;
  ffrmCadTabPreco_Itens.vStatus := 'A';
  ffrmCadTabPreco_Itens.RxDBLookupCombo2.KeyValue := fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger;
  ffrmCadTabPreco_Itens.RxDBLookupCombo4.KeyValue := fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger;
  ffrmCadTabPreco_Itens.CurrencyEdit1.Value       := fDMCadTab_Preco.cdsTab_Preco_ItensPRECO_CUSTO.AsFloat;
  ffrmCadTabPreco_Itens.CurrencyEdit2.Value       := fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat;
  ffrmCadTabPreco_Itens.ShowModal;

  FreeAndNil(ffrmCadTabPreco_Itens);
end;

procedure TfrmCadTabPreco.prc_Habilitar_CamposNota;
var
  i: Integer;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);

  pnlItem.Enabled        := not(pnlItem.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  pnlCliente.Enabled     := not(pnlCliente.Enabled);
  DBMemo1.ReadOnly       := not(DBMemo1.ReadOnly);

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if SMDBGrid2.Columns[i].FieldName = 'VLR_VENDA' then
      SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].ReadOnly);
    if SMDBGrid2.Columns[i].FieldName = 'NOME_COR' then
      SMDBGrid2.Columns[i].Visible := (fDMCadTab_Preco.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S');
  end;
end;

procedure TfrmCadTabPreco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadTab_Preco.cdsTab_Preco);
end;

procedure TfrmCadTabPreco.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTabPreco.btnBuscarProdutoClick(Sender: TObject);
begin
  ffrmCadTabPreco_Sel_Produto := TfrmCadTabPreco_Sel_Produto.Create(self);
  ffrmCadTabPreco_Sel_Produto.fDMCadTab_Preco := fDMCadTab_Preco;
  ffrmCadTabPreco_Sel_Produto.ShowModal;
end;

procedure TfrmCadTabPreco.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Field = fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA) then
  begin
    Background  := clYellow;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfrmCadTabPreco.btnAplicarClick(Sender: TObject);
var
  vAux: Real;
  vPreco: Real;
  vContadorAux: Integer;
  vID_Produto: Integer;
begin
  if StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value)) <= 0 then
  begin
    MessageDlg('*** Percentual não foi informado"', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Confirmar o reajuste do preço?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;        

  SMDBGrid2.DisableScroll;
  vContadorAux := 0;
  vID_Produto  := fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger;
  fDMCadTab_Preco.cdsTab_Preco_Itens.First;
  while not fDMCadTab_Preco.cdsTab_Preco_Itens.Eof do
  begin
    if SMDBGrid2.SelectedRows.CurrentRowSelected then
    begin
      vAux := 0;
      case ComboBox1.ItemIndex of
        0: vPreco := fDMCadTab_Preco.cdsTab_Preco_ItensPRECO_CUSTO.AsFloat;
        1: vPreco := fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat;
      end;
      if StrToFloat(FormatFloat('0.000',vPreco)) > 0 then
      begin
        vAux := StrToFloat(FormatFloat('0.000',vPreco * CurrencyEdit1.Value / 100));
        if ComboBox2.ItemIndex = 1 then
          vAux := StrToFloat(FormatFloat('0.00',vAux * -1));
        fDMCadTab_Preco.cdsTab_Preco_Itens.Edit;
        case ComboBox1.ItemIndex of
          0: fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadTab_Preco.cdsTab_Preco_ItensPRECO_CUSTO.AsFloat + vAux));
          1: fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat + vAux));
        end;
        fDMCadTab_Preco.cdsTab_Preco_Itens.Post;
        vContadorAux := vContadorAux + 1; 
      end;
    end;
    fDMCadTab_Preco.cdsTab_Preco_Itens.Next;
  end;
  SMDBGrid2.EnableScroll;

  fDMCadTab_Preco.cdsTab_Preco_Itens.Locate('ID_Produto',vID_Produto,([Locaseinsensitive]));

  MessageDlg('Reajustado...(Quantidade de produtos: ' + IntToStr(vContadorAux) + ')...' , mtInformation, [mbOk], 0);
  CurrencyEdit1.Value := 0;
end;

procedure TfrmCadTabPreco.ComboBox2Click(Sender: TObject);
begin
  if ComboBox2.ItemIndex = 0 then
    btnAplicar.Caption := 'Aplicar'
  else
    btnAplicar.Caption := 'Diminuir';
end;

procedure TfrmCadTabPreco.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadTabPreco.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfrmCadTabPreco.btnExportarClick(Sender: TObject);
begin
  if fDMCadTab_Preco.cdsTab_Preco.IsEmpty then
  begin
    MessageDlg('*** Tabela de preço não foi selecionada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Exportar a tabela: ' + fDMCadTab_Preco.cdsTab_PrecoNOME.AsString + ' ?', mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vTipo_Pedido := '';
  ffrmLeExcel  := TfrmLeExcel.Create(self);
  ffrmLeExcel.vID_TabPreco    := fDMCadTab_Preco.cdsTab_PrecoID.AsInteger;
  ffrmLeExcel.vNome_Tab_Preco := fDMCadTab_Preco.cdsTab_PrecoNOME.AsString;
  ffrmLeExcel.Tag := 0;
  ffrmLeExcel.RadioGroup1.ItemIndex := 1;
  ffrmLeExcel.ShowModal;
  FreeAndNil(ffrmLeExcel);
end;

procedure TfrmCadTabPreco.SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmCadTabPreco_Inf : TfrmCadTabPreco_Inf;
  i : Integer;
begin
  if (Key = Vk_F3) then
  begin
    i := fDMCadTab_Preco.cdsTab_Preco_ItensITEM.AsInteger;
    fDMCadTab_Preco.vPreco_Sel := 0;
    ffrmCadTabPreco_Inf := TfrmCadTabPreco_Inf.Create(self);
    ffrmCadTabPreco_Inf.fDMCadTab_Preco := fDMCadTab_Preco;
    ffrmCadTabPreco_Inf.ShowModal;
    FreeAndNil(ffrmCadTabPreco_Inf);
    if StrToFloat(FormatFloat('0.000###',fDMCadTab_Preco.vPreco_Sel)) >= 0 then
    begin
      prc_Gravar_Preco;
      fDMCadTab_Preco.cdsTab_Preco_Itens.Locate('ITEM',i,([Locaseinsensitive]));
    end;
  end;
end;

procedure TfrmCadTabPreco.prc_Gravar_Preco;
begin
  SMDBGrid2.DisableScroll;
  fDMCadTab_Preco.cdsTab_Preco_Itens.First;
  while not fDMCadTab_Preco.cdsTab_Preco_Itens.Eof do
  begin
    if SMDBGrid2.SelectedRows.CurrentRowSelected then
    begin
      fDMCadTab_Preco.cdsTab_Preco_Itens.Edit;
      fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat := StrToFloat(FormatFloat('0.00####',fDMCadTab_Preco.vPreco_Sel));
      fDMCadTab_Preco.cdsTab_Preco_Itens.Post;
    end;
    fDMCadTab_Preco.cdsTab_Preco_Itens.Next;
  end;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadTabPreco.DBCheckBox1Click(Sender: TObject);
begin
  gbxVigencia.Visible := (DBCheckBox1.Checked);
end;

procedure TfrmCadTabPreco.btnCopiarListaClick(Sender: TObject);
begin
  if not(fDMCadTab_Preco.cdsTab_Preco.Active) or (fDMCadTab_Preco.cdsTab_PrecoID.AsInteger <= 0) then
    exit;
  ffrmCadTabPreco_Copia := TfrmCadTabPreco_Copia.Create(self);
  ffrmCadTabPreco_Copia.fDMCadTab_Preco  := fDMCadTab_Preco;
  ffrmCadTabPreco_Copia.vNum_Lista_Preco := fDMCadTab_Preco.cdsTab_PrecoID.AsInteger;
  ffrmCadTabPreco_Copia.vData_Inicial    := fDMCadTab_Preco.cdsTab_PrecoDTINICIAL.AsDateTime;
  ffrmCadTabPreco_Copia.vData_Final    := fDMCadTab_Preco.cdsTab_PrecoDTFINAL.AsDateTime;
  ffrmCadTabPreco_Copia.ShowModal;
  FreeAndNil(frmCadTabPreco_Copia);

  if (fDMCadTab_Preco.Tag = 1) then
  begin
    if (fDMCadTab_Preco.cdsTab_Preco.State in [dsEdit,dsInsert]) then
      fDMCadTab_Preco.cdsTab_Preco.Post;
    fDMCadTab_Preco.cdsTab_Preco.Edit;
    RzPageControl1.ActivePage := TS_Cadastro;
    btnAlterarClick(Sender);
  end;
  fDMCadTab_Preco.Tag := 0;
end;

end.
