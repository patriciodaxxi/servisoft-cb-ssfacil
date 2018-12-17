unit UCadDocEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadDocEstoque, Math, 
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  RzEdit, RzDBEdit, RzButton, UCadDocEstoque_Itens, UDMEstoque, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection,
  DateUtils, DB, Menus, uEtiq_Individual, uDmConsPedido, UDMCadProduto_Lote;

type
  TfrmCadDocEstoque = class(TForm)
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
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel11: TPanel;
    UCControls1: TUCControls;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    ComboBox1: TComboBox;
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
    pnlObs: TPanel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    pnlTransferencia: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    Label9: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    pnlDocumento: TPanel;
    lblTipo_Nota: TLabel;
    Label18: TLabel;
    Label80: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    SpeedButton3: TSpeedButton;
    rxcbTipo_ES: TRxDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBEdit52: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    pnlTipo: TPanel;
    Label3: TLabel;
    rxcbTipo_Reg: TRxDBComboBox;
    pnlNota: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBEdit8: TDBEdit;
    btnImp_Nota: TNxButton;
    PopupMenu2: TPopupMenu;
    Nota1: TMenuItem;
    Etiquetas1: TMenuItem;
    EtiquetaEstoque1: TMenuItem;
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
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rxcbTipo_ESExit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure rxcbTipo_RegChange(Sender: TObject);
    procedure rxcbTipo_RegExit(Sender: TObject);
    procedure Nota1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure EtiquetaEstoque1Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }
    vTipo_Reg: String;
    vTipo_ES: String;

    fDMCadDocEstoque: TDMCadDocEstoque;
    fDMEstoque: TDMEstoque;
    frmEtiq_Individual: TfrmEtiq_Individual;
    fDMCadProduto_Lote: TDMCadProduto_Lote;

    ffrmCadDocEstoque_Itens: TfrmCadDocEstoque_Itens;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_DocEstoque;

    procedure prc_Habilitar_CamposNota;

    procedure Atualiza_Preco;

    procedure prc_Abrir_Pessoa(Tipo: String); //E=Fornecedor  S=Cliente

    procedure prc_Calcular_Total;
    function fnc_Gravar_Estoque(ID_Local_Estoque, ID_Mov_Estoque: Integer ; Tipo_ES: String): Integer;

    procedure prc_Opcao_Tela;

  public
    { Public declarations }
  end;

var
  frmCadDocEstoque: TfrmCadDocEstoque;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, URelDocEstoque;

{$R *.dfm}

procedure TfrmCadDocEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadDocEstoque.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_DocEstoque;

  if fDMCadDocEstoque.cdsDocEstoque.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadDocEstoque.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadDocEstoque.prc_Excluir_Registro;
begin
  fDMCadDocEstoque.prc_Excluir;
end;

procedure TfrmCadDocEstoque.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Estoque: Integer;
  ID: TTransactionDesc;
  vID_LocalAux: Integer;
begin
  if (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) and (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
  begin
    vID_LocalAux := fnc_Verificar_Local(fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString);
    if vID_LocalAux <= 0 then
      vID_LocalAux := 1;
    fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;
  end;

  prc_Calcular_Total;

  if (fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'T') then
    fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString := 'S';

  fDMCadDocEstoque.prc_Gravar;
  vIDAux := fDMCadDocEstoque.cdsDocEstoqueID.AsInteger;
  if fDMCadDocEstoque.cdsDocEstoque.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadDocEstoque.vMSGErro, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadProduto_Lote := TDMCadProduto_Lote.Create(Self);

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadDocEstoque.cdsDocEstoque_Itens.First;
    while not fDMCadDocEstoque.cdsDocEstoque_Itens.Eof do
    begin
      fDMCadDocEstoque.cdsDocEstoque_Itens.Edit;
      vID_Estoque := fnc_Gravar_Estoque(fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger,fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE.AsInteger,fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString);
      fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
      if fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'T' then
      begin
        vID_Estoque := fnc_Gravar_Estoque(fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_DESTINO.AsInteger,fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE_DESTINO.AsInteger,'E');
        fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE_DESTINO.AsInteger := vID_Estoque;
      end;
      fDMCadDocEstoque.cdsDocEstoque_Itens.Post;

      if (fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString = 'E') and (fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'D') then
        Atualiza_Preco;

      fDMCadDocEstoque.cdsDocEstoque_Itens.Next;
    end;

    fDMCadDocEstoque.cdsDocEstoque.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o estoque: ' + #13 + e.Message);
    end;
  end;

  //TS_Consulta.TabEnabled := True;
  FreeAndNil(fDMCadProduto_Lote);
  prc_Habilitar_CamposNota;
  pnlTipo.Enabled := False;
  pnlObs.Visible  := False;

  prc_Consultar(vIDAux);
  prc_Posiciona_DocEstoque;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadDocEstoque.prc_Inserir_Registro;
begin
  if fDMCadDocEstoque.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadDocEstoque.cdsFilial.Last;
    vFilial      := fDMCadDocEstoque.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadDocEstoque.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadDocEstoque.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadDocEstoque.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadDocEstoque.cdsDocEstoque.State in [dsBrowse] then
    exit;

  fDMCadDocEstoque.cdsDocEstoqueFILIAL.AsInteger  := vFilial;
  if fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S' then
  begin
    vTipo_Reg := '';
    vTipo_ES  := 'S';
  end
  else
  begin
    vTipo_Reg := 'D';
    vTipo_ES  := '';
    fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString := vTipo_Reg;
  end;

  prc_Habilitar_CamposNota;
  pnlTipo.Enabled := True;

  RzPageControl1.ActivePage := TS_Cadastro;

  if fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S' then
    rxcbTipo_Reg.SetFocus
  else
    rxcbTipo_ES.SetFocus;
end;

procedure TfrmCadDocEstoque.FormShow(Sender: TObject);
var
  vData: TDateTime;
  i: Integer;
begin
  fDMCadDocEstoque := TDMCadDocEstoque.Create(Self);
  fDMEstoque       := TDMEstoque.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadDocEstoque);

  vData          := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit1.Date := vData;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'TAMANHO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadDocEstoque.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadDocEstoque.qParametrosINFORMAR_COR_PROD.AsString = 'C'));
    if (fDMCadDocEstoque.qParametrosUSA_LOTE_CONTROLE.AsString <> 'S') and (SMDBGrid2.Columns[i].FieldName = 'NUM_LOTE_CONTROLE') then
      SMDBGrid2.Columns[i].Visible := False;
  end;

  pnlTipo.Visible := (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  Label10.Visible := (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  RxDBLookupCombo5.Visible := (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  SpeedButton3.Visible     := (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  if fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'N' then
    pnlDocumento.Visible := True
  else
    pnlTransferencia.Visible := True;
  pnlObs.Visible := True;
end;

procedure TfrmCadDocEstoque.prc_Consultar(ID: Integer);
begin
  fDMCadDocEstoque.cdsDocEstoque_Consulta.Close;
  fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.ctConsulta;
  fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText +
                                                         ' WHERE (TIPO_REG = ' + QuotedStr('D') + ' OR TIPO_REG = ' + QuotedStr('T') + ' OR TIPO_REG = ' + QuotedStr('P') + ')';
  if ID > 0 then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText +
                                                           ' AND DC.ID = ' + IntToStr(ID);
  if not(RxDBLookupCombo1.Text = '') then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText +
                                                           ' AND DC.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  case ComboBox1.ItemIndex of
    0: fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText + ' AND DC.TIPO_ES = ' + QuotedStr('E');
    1: fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText + ' AND DC.TIPO_ES = ' + QuotedStr('S');
  end;

  if DateEdit1.Date > 10 then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText
                        + ' AND DC.DTMOVIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText
                        + ' AND DC.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadDocEstoque.cdsDocEstoque_Consulta.Open;
end;

procedure TfrmCadDocEstoque.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadDocEstoque.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoque.State in [dsBrowse]) or not(fDMCadDocEstoque.cdsDocEstoque.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadDocEstoque.cdsDocEstoque.CancelUpdates;

  prc_Habilitar_CamposNota;
  pnlTipo.Enabled := False;
  pnlObs.Visible  := False;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadDocEstoque.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadDocEstoque.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoque.IsEmpty) or not(fDMCadDocEstoque.cdsDocEstoque.Active) or (fDMCadDocEstoque.cdsDocEstoqueID.AsInteger < 1) then
    exit;

  fDMCadDocEstoque.cdsDocEstoque.Edit;
  //TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;
  pnlTipo.Enabled := False;
end;

procedure TfrmCadDocEstoque.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadDocEstoque.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadDocEstoque);
end;

procedure TfrmCadDocEstoque.prc_Posiciona_DocEstoque;
begin
  fDMCadDocEstoque.prc_Localizar(fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger);
  fDMCadDocEstoque.cdsDocEstoque_Itens.Close;
  fDMCadDocEstoque.cdsDocEstoque_Itens.Open;
  vFilial      := fDMCadDocEstoque.cdsDocEstoqueFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadDocEstoque.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadDocEstoque.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadDocEstoque.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadDocEstoque.cdsDocEstoque_Itens.Active) and (fDMCadDocEstoque.cdsDocEstoque_Itens.IsEmpty) or (fDMCadDocEstoque.cdsDocEstoque_ItensITEM.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadDocEstoque.prc_Excluir_Item;
end;

procedure TfrmCadDocEstoque.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadDocEstoque.prc_Inserir_Itens;

  ffrmCadDocEstoque_Itens := TfrmCadDocEstoque_Itens.Create(self);
  ffrmCadDocEstoque_Itens.fDMCadDocEstoque := fDMCadDocEstoque;
  ffrmCadDocEstoque_Itens.fDMEstoque       := fDMEstoque;
  ffrmCadDocEstoque_Itens.ShowModal;

  FreeAndNil(ffrmCadDocEstoque_Itens);
end;

procedure TfrmCadDocEstoque.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadDocEstoque.cdsDocEstoque.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadDocEstoque.cdsDocEstoque_Consulta.Active) or (fDMCadDocEstoque.cdsDocEstoque_Consulta.IsEmpty) or (fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_DocEstoque;
      prc_Opcao_Tela;
      prc_Abrir_Pessoa(fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString);
    end;
  end;
end;

procedure TfrmCadDocEstoque.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoque_Itens.IsEmpty) or (fDMCadDocEstoque.cdsDocEstoque_ItensITEM.AsInteger <= 0) then
    exit;

  fDMCadDocEstoque.cdsDocEstoque_Itens.Edit;

  ffrmCadDocEstoque_Itens := TfrmCadDocEstoque_Itens.Create(self);
  ffrmCadDocEstoque_Itens.fDMCadDocEstoque := fDMCadDocEstoque;
  ffrmCadDocEstoque_Itens.fDMEstoque       := fDMEstoque;
  ffrmCadDocEstoque_Itens.ShowModal;

  FreeAndNil(ffrmCadDocEstoque_Itens);
end;

procedure TfrmCadDocEstoque.prc_Habilitar_CamposNota;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);

  pnlItem.Enabled            := not(pnlItem.Enabled);

  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);

  //pnlCadastro.Enabled         := not(pnlCadastro.Enabled);
  pnlNota.Enabled          := not(pnlNota.Enabled);
  pnlDocumento.Enabled     := not(pnlDocumento.Enabled);
  pnlTransferencia.Enabled := not(pnlTransferencia.Enabled);
  pnlObs.Enabled           := not(pnlObs.Enabled);
end;

procedure TfrmCadDocEstoque.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadDocEstoque.cdsDocEstoque);
end;

procedure TfrmCadDocEstoque.SpeedButton1Click(Sender: TObject);
begin
  prc_Abrir_Pessoa(fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString);
end;

procedure TfrmCadDocEstoque.Atualiza_Preco;
var
  vVlrAux: Real;
  vUnidadeAux: String;
begin
  if (fDMCadDocEstoque.qParametrosATUALIZAR_PRECO_DOC.AsString <> 'S') or (fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString = 'S') then
    exit;

  if not fDMCadDocEstoque.cdsProduto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,([LocaseInsensitive])) then
    exit;

  vUnidadeAux := fDMCadDocEstoque.cdsProdutoUNIDADE.AsString;

  if fDMCadDocEstoque.cdsDocEstoqueDTMOVIMENTO.AsDateTime >= fDMCadDocEstoque.cdsProdutoDT_ALTPRECO.AsDateTime then
  begin
    fDMCadDocEstoque.cdsProduto.Edit;
    fDMCadDocEstoque.cdsProdutoPRECO_CUSTO.AsFloat    := fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat;
    fDMCadDocEstoque.cdsProdutoDT_ALTPRECO.AsDateTime := fDMCadDocEstoque.cdsDocEstoqueDTMOVIMENTO.AsDateTime;
    if (fDMCadDocEstoque.qParametros_GeralATUALIZAR_PRECOVENDA_DOC.AsString = 'S') and (StrToFloat(FormatFloat('0.000',fDMCadDocEstoque.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) then
      fDMCadDocEstoque.cdsProdutoPRECO_VENDA.AsFloat := fDMCadDocEstoque.cdsProdutoPRECO_CUSTO.AsFloat +
                                                       StrToFloat(FormatFloat('0.00',(fDMCadDocEstoque.cdsProdutoPRECO_CUSTO.AsFloat * fDMCadDocEstoque.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100)));
    fDMCadDocEstoque.cdsProduto.Post;

    //28/10/2017
    if (fDMCadDocEstoque.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString) <> '') then
    begin
      fDMCadProduto_Lote.prc_Gravar(fDMCadDocEstoque.cdsProdutoID.AsInteger,fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString,
                                    fDMCadDocEstoque.cdsProdutoPRECO_CUSTO.AsFloat,fDMCadDocEstoque.cdsProdutoPRECO_VENDA.AsFloat,
                                    fDMCadDocEstoque.cdsProdutoPERC_MARGEMLUCRO.AsFloat);
    end;
    //***************

    fDMCadDocEstoque.cdsProduto.ApplyUpdates(0);
  end;
end;

procedure TfrmCadDocEstoque.prc_Abrir_Pessoa(Tipo: String);
begin
  fDMCadDocEstoque.cdsPessoa.Close;
  fDMCadDocEstoque.sdsPessoa.CommandText := fDMCadDocEstoque.ctPessoa;
  if (fDMCadDocEstoque.qParametros_EstCONTROLA_DOC_CLIFORN.AsString = 'S') or (fDMCadDocEstoque.qParametros_EstCONTROLA_DOC_CLIFORN.IsNull) then
  begin
    if Tipo = 'S' then
      fDMCadDocEstoque.sdsPessoa.CommandText := fDMCadDocEstoque.sdsPessoa.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S')
    else
      fDMCadDocEstoque.sdsPessoa.CommandText := fDMCadDocEstoque.sdsPessoa.CommandText + ' AND TP_FORNECEDOR = ' + QuotedStr('S');
  end;
  fDMCadDocEstoque.cdsPessoa.Open;
end;

procedure TfrmCadDocEstoque.rxcbTipo_ESExit(Sender: TObject);
begin
  prc_Abrir_Pessoa(fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString);
end;

procedure TfrmCadDocEstoque.prc_Calcular_Total;
var
  vVlrTotal: Real;
begin
  vVlrTotal := 0;
  fDMCadDocEstoque.cdsDocEstoque_Itens.First;
  while not fDMCadDocEstoque.cdsDocEstoque_Itens.Eof do
  begin
    vVlrTotal := vVlrTotal + fDMCadDocEstoque.cdsDocEstoque_ItensVLR_TOTAL.AsFloat;
    fDMCadDocEstoque.cdsDocEstoque_Itens.Next;
  end;

  fDMCadDocEstoque.cdsDocEstoqueVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vVlrTotal));
end;

procedure TfrmCadDocEstoque.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
     DateEdit1.SetFocus;
end;

procedure TfrmCadDocEstoque.SpeedButton2Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsLocal_Estoque.Close;
  fDMCadDocEstoque.cdsLocal_Estoque.Open;
end;

procedure TfrmCadDocEstoque.prc_Opcao_Tela;
begin
  pnlDocumento.Visible     := fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'D';
  pnlTransferencia.Visible := fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'T';
  pnlObs.Visible           := True;
end;

procedure TfrmCadDocEstoque.rxcbTipo_RegChange(Sender: TObject);
begin
  pnlObs.Visible           := False;
  pnlDocumento.Visible     := (rxcbTipo_Reg.ItemIndex = 0) or (rxcbTipo_Reg.ItemIndex = 2);
  pnlTransferencia.Visible := (rxcbTipo_Reg.ItemIndex = 1);
  pnlObs.Visible           := True;
  Label1.Visible           := (rxcbTipo_Reg.ItemIndex = 0);
  RxDBLookupCombo2.Visible := (rxcbTipo_Reg.ItemIndex = 0);
end;

function TfrmCadDocEstoque.fnc_Gravar_Estoque(ID_Local_Estoque, ID_Mov_Estoque: Integer ; Tipo_ES: String): Integer;
var
  vTipoAux: String;
begin
  if fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'D' then
    vTipoAux := 'DOC'
  else
  if fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'T' then
    vTipoAux := 'TRA'
  else
    vTipoAux := 'DPR';
  Result := fDMEstoque.fnc_Gravar_Estoque(ID_Mov_Estoque,
                                          fDMCadDocEstoque.cdsDocEstoqueFILIAL.AsInteger,
                                          ID_Local_Estoque,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,
                                          fDMCadDocEstoque.cdsDocEstoqueID.AsInteger,fDMCadDocEstoque.cdsDocEstoqueID_PESSOA.AsInteger,0,
                                          fDMCadDocEstoque.cdsDocEstoqueID.AsInteger,fDMCadDocEstoque.cdsDocEstoque_ItensID_CENTROCUSTO.AsInteger,
                                          Tipo_ES,vTipoAux,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString,'',
                                          fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString,
                                          fDMCadDocEstoque.cdsDocEstoqueDTMOVIMENTO.AsDateTime,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat,0,0,0,0,0,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat,0,0,'',
                                          fDMCadDocEstoque.cdsDocEstoque_ItensID_COR.AsInteger,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensGERAR_CUSTO.AsString,
                                          fDMCadDocEstoque.cdsDocEstoque_ItensPRECO_CUSTO_TOTAL.AsFloat); //ver aqui sobre Lote Controle  04/11/2015
end;

procedure TfrmCadDocEstoque.rxcbTipo_RegExit(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoque.State in [dsInsert,dsEdit]) and (fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'T') then
    fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString := 'S'; 
end;

procedure TfrmCadDocEstoque.Nota1Click(Sender: TObject);
begin
  if not(fDMCadDocEstoque.cdsDocEstoque_Consulta.Active) or (fDMCadDocEstoque.cdsDocEstoque_Consulta.IsEmpty) or (fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger <= 0) then
    exit;
  vTipo_Config_Email := 4;

  fDMCadDocEstoque.cdsFilial.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadDocEstoque.cdsDocEstoque_Imp.Close;
  fDMCadDocEstoque.sdsDocEstoque_Imp.ParamByName('ID').AsInteger := fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger;
  fDMCadDocEstoque.cdsDocEstoque_Imp.Open;

  fDMCadDocEstoque.cdsDocEstoque_Imp_Itens.Close;
  fDMCadDocEstoque.sdsDocEstoque_Imp_Itens.ParamByName('ID').AsInteger := fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger;
  fDMCadDocEstoque.cdsDocEstoque_Imp_Itens.Open;

  fRelDocEstoque := TfRelDocEstoque.Create(Self);
  fRelDocEstoque.fDMCadDocEstoque := fDMCadDocEstoque;
  fRelDocEstoque.RLReport1.PreviewModal;
  fRelDocEstoque.RLReport1.Free;
  FreeAndNil(fRelDocEstoque);
end;

procedure TfrmCadDocEstoque.Etiquetas1Click(Sender: TObject);
var
  i: Word;
begin
  prc_Posiciona_DocEstoque;

  vTipo_Pedido := '';
  frmEtiq_Individual := TfrmEtiq_Individual.Create(self);
  frmEtiq_Individual.fDMConsPedido := TDMConsPedido.Create(Self);
  frmEtiq_Individual.RzPageControl1.ActivePageIndex := 1;

  if not fDMCadDocEstoque.cdsProduto.Active then
    fDMCadDocEstoque.cdsProduto.Open;
  fDMCadDocEstoque.cdsProduto.IndexFieldNames := 'ID';

  fDMCadDocEstoque.cdsDocEstoque_Itens.First;
  while not fDMCadDocEstoque.cdsDocEstoque_Itens.Eof do
  begin
    for i := 1 to fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsInteger do
    begin
      frmEtiq_Individual.fDMConsPedido.mEtiq_Individual.Insert;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualID_Produto.AsInteger   := fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualReferencia.AsString    := fDMCadDocEstoque.cdsDocEstoque_ItensREFERENCIA.AsString;
      fDMCadDocEstoque.cdsProduto.FindKey([fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger]);
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualNome_Produto.AsString  := fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualPreco_Produto.AsString := FormatFloat('0.00',fDMCadDocEstoque.cdsProdutoPRECO_VENDA.AsCurrency);
      if (fDMCadDocEstoque.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S') and (trim(fDMCadDocEstoque.cdsProdutoTAMANHO.AsString) <> '') then
        frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualTamanho.AsString := fDMCadDocEstoque.cdsProdutoTAMANHO.AsString;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualItem_Pedido.AsInteger  := 0;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualID_Pedido.AsInteger    := 0;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualNum_Pedido.AsInteger   := 0;
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualCodBarra.AsString      := fDMCadDocEstoque.cdsProdutoCOD_BARRA.AsString;
      if not fDMCadDocEstoque.cdsProdutoID_MARCA.IsNull then
      begin
        frmEtiq_Individual.fDMConsPedido.cdsMarca.Open;
        frmEtiq_Individual.fDMConsPedido.cdsMarca.IndexFieldNames := 'ID';
        frmEtiq_Individual.fDMConsPedido.cdsMarca.FindKey([fDMCadDocEstoque.cdsProdutoID_MARCA.AsInteger]);
        frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualMarca.AsString := frmEtiq_Individual.fdmconsPedido.cdsMarcaNOME.AsString;
      end;
      //////abaixo, etiqueta Hypnotize - valor da parcela
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualParcela2X.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadDocEstoque.cdsProdutoPRECO_VENDA.AsCurrency /
                                                                               ((1 - power((1 + 2.99 /100), (-1 * 2)))/(2.99 / 100))));
      frmEtiq_Individual.fDMConsPedido.mEtiq_IndividualParcela3X.AsCurrency := StrToFloat(FormatFloat('0.00',fDMCadDocEstoque.cdsProdutoPRECO_VENDA.AsCurrency /
                                                                               ((1 - power((1 + 2.99 /100), (-1 * 3)))/(2.99 / 100))));
      //////
      frmEtiq_Individual.fDMConsPedido.mEtiq_Individual.Post;
    end;
    fDMCadDocEstoque.cdsDocEstoque_Itens.Next;
  end;

  frmEtiq_Individual.ShowModal;
  FreeAndNil(frmEtiq_Individual);
end;

procedure TfrmCadDocEstoque.EtiquetaEstoque1Click(Sender: TObject);
var
  vArq: String;
  vId: Integer;
begin
  if fDMCadDocEstoque.cdsDocEstoque_Consulta.IsEmpty then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\SLTextil_Etiq_Doc.fr3';
  if FileExists(vArq) then
    fDMCadDocEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;

  fDMCadDocEstoque.cdsEtiqEstoque.Close;
  fDMCadDocEstoque.sdsEtiqEstoque.ParamByName('ID').AsInteger := fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger;
  fDMCadDocEstoque.cdsEtiqEstoque.Open;

  fDMCadDocEstoque.frxReport1.ShowReport;
end;

procedure TfrmCadDocEstoque.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadDocEstoque.cdsDocEstoque.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadDocEstoque.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadDocEstoque.cdsDocEstoque_Itens.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
