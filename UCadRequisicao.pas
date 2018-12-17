unit UCadRequisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadDocEstoque, DB,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  UCadRequisicao_Itens, UDMEstoque, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection;

type
  TfrmCadRequisicao = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    StaticText1: TStaticText;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    pnlCliente: TPanel;
    Panel11: TPanel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    pnlItem: TPanel;
    Label80: TLabel;
    DBEdit52: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnImprimir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    UCControls1: TUCControls;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    pnlLocalEstoque: TPanel;
    Label94: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }

    fDMCadDocEstoque: TDMCadDocEstoque;
    fDMEstoque: TDMEstoque;

    ffrmCadRequisicao_Itens: TfrmCadRequisicao_Itens;
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

  public
    { Public declarations }
  end;

var
  frmCadRequisicao: TfrmCadRequisicao;

implementation

uses DateUtils, rsDBUtils, uUtilPadrao, URelRequisicao, DmdDatabase;

{$R *.dfm}

procedure TfrmCadRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadRequisicao.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_DocEstoque;

  if fDMCadDocEstoque.cdsDocEstoque.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadRequisicao.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRequisicao.prc_Excluir_Registro;
begin
  fDMCadDocEstoque.prc_Excluir;
end;

procedure TfrmCadRequisicao.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Estoque: Integer;
  ID: TTransactionDesc;
begin
  prc_Calcular_Total;
  if fDMCadDocEstoque.cdsDocEstoqueNUM_REQUISICAO.AsInteger <= 0 then
    fDMCadDocEstoque.cdsDocEstoqueNUM_REQUISICAO.AsInteger := (fnc_Max_Codigo('DOCESTOQUE','NUM_REQUISICAO') + 1);

  fDMCadDocEstoque.prc_Gravar;
  vIDAux := fDMCadDocEstoque.cdsDocEstoqueID.AsInteger;
  if fDMCadDocEstoque.cdsDocEstoque.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadDocEstoque.vMSGErro, mtError, [mbOk], 0);
    exit;
  end;

  if fDMCadDocEstoque.qParametrosBAIXAR_REQ_AUTOMATICO.AsString = 'S' then
  begin
    ID.TransactionID  := 1;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);
    try
      fDMCadDocEstoque.cdsDocEstoque_Itens.First;
      while not fDMCadDocEstoque.cdsDocEstoque_Itens.Eof do
      begin
        vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE.AsInteger,
                                                     fDMCadDocEstoque.cdsDocEstoqueFILIAL.AsInteger,
                                                     fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,
                                                     fDMCadDocEstoque.cdsDocEstoqueID.AsInteger,fDMCadDocEstoque.cdsDocEstoqueID_PESSOA.AsInteger,0,
                                                     fDMCadDocEstoque.cdsDocEstoqueID.AsInteger,fDMCadDocEstoque.cdsDocEstoque_ItensID_CENTROCUSTO.AsInteger,
                                                     fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString,'REQ',
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString,
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString,'',
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString,
                                                     fDMCadDocEstoque.cdsDocEstoqueDTMOVIMENTO.AsDateTime,
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat,
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat,0,0,0,0,0,
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat,
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat,
                                                     0,0,'',
                                                     fDMCadDocEstoque.cdsDocEstoque_ItensID_COR.AsInteger,
                                                     '','N',0); //ver aqui sobre Lote Controle  04/11/2015
        fDMCadDocEstoque.cdsDocEstoque_Itens.Edit;
        fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
        fDMCadDocEstoque.cdsDocEstoque_Itens.Post;

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
  end;

  prc_Habilitar_CamposNota;

  prc_Consultar(vIDAux);
  prc_Posiciona_DocEstoque;
end;

procedure TfrmCadRequisicao.prc_Inserir_Registro;
var
  vID_LocalAux: Integer;
begin
  vID_LocalAux := fnc_Verificar_Local(fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString);
  if vID_LocalAux <= 0 then
    exit;

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
  fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString := 'R';
  fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString  := 'S';
  fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger := vID_LocalAux;

  prc_Habilitar_CamposNota;

  RzPageControl1.ActivePage := TS_Cadastro;

  DBDateEdit1.SetFocus;
end;

procedure TfrmCadRequisicao.FormShow(Sender: TObject);
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
    if fDMCadDocEstoque.qParametrosUSA_GRADE.AsString <> 'S' then
    begin
      if (SMDBGrid2.Columns[i].FieldName = 'TAMANHO') then
        SMDBGrid2.Columns[i].Visible := False;
    end;
  end;
  pnlLocalEstoque.Visible := (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  prc_Abrir_Pessoa('S');
end;

procedure TfrmCadRequisicao.prc_Consultar(ID: Integer);
begin
  fDMCadDocEstoque.cdsDocEstoque_Consulta.Close;
  fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.ctConsulta;
  fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText +
                                                           ' WHERE DC.TIPO_REG = ' + QuotedStr('R');
  if ID > 0 then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText +
                                                           ' AND DC.ID = ' + IntToStr(ID);
  if not(RxDBLookupCombo1.Text = '') then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText +
                                                           ' AND DC.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText + ' AND DC.TIPO_ES = ' + QuotedStr('S');

  if DateEdit1.Date > 10 then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText
                        + ' AND DC.DTMOVIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText := fDMCadDocEstoque.sdsDocEstoque_Consulta.CommandText
                        + ' AND DC.DTMOVIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadDocEstoque.cdsDocEstoque_Consulta.Open;
end;

procedure TfrmCadRequisicao.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadRequisicao.btnCancelarClick(Sender: TObject);
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

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadRequisicao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRequisicao.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoque.IsEmpty) or not(fDMCadDocEstoque.cdsDocEstoque.Active) or (fDMCadDocEstoque.cdsDocEstoqueID.AsInteger < 1) then
    exit;

  fDMCadDocEstoque.cdsDocEstoque.Edit;
  //TS_Consulta.TabEnabled := False;
  prc_Habilitar_CamposNota;
end;

procedure TfrmCadRequisicao.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadRequisicao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadDocEstoque);
end;

procedure TfrmCadRequisicao.prc_Posiciona_DocEstoque;
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

procedure TfrmCadRequisicao.btnExcluir_ItensClick(Sender: TObject);
begin
  if not(fDMCadDocEstoque.cdsDocEstoque_Itens.Active) and (fDMCadDocEstoque.cdsDocEstoque_Itens.IsEmpty) or (fDMCadDocEstoque.cdsDocEstoque_ItensITEM.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadDocEstoque.prc_Excluir_Item;
end;

procedure TfrmCadRequisicao.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadDocEstoque.prc_Inserir_Itens;

  ffrmCadRequisicao_Itens := TfrmCadRequisicao_Itens.Create(self);
  ffrmCadRequisicao_Itens.fDMCadDocEstoque := fDMCadDocEstoque;
  ffrmCadRequisicao_Itens.fDMEstoque       := fDMEstoque;
  ffrmCadRequisicao_Itens.ShowModal;

  FreeAndNil(ffrmCadRequisicao_Itens);
end;

procedure TfrmCadRequisicao.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadDocEstoque.cdsDocEstoque.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadDocEstoque.cdsDocEstoque_Consulta.Active) or (fDMCadDocEstoque.cdsDocEstoque_Consulta.IsEmpty) or (fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_DocEstoque;
      prc_Abrir_Pessoa(fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString);
    end;
  end;
end;

procedure TfrmCadRequisicao.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoque_Itens.IsEmpty) or (fDMCadDocEstoque.cdsDocEstoque_ItensITEM.AsInteger <= 0) then
    exit;

  fDMCadDocEstoque.cdsDocEstoque_Itens.Edit;

  ffrmCadRequisicao_Itens := TfrmCadRequisicao_Itens.Create(self);
  ffrmCadRequisicao_Itens.fDMCadDocEstoque := fDMCadDocEstoque;
  ffrmCadRequisicao_Itens.fDMEstoque       := fDMEstoque;
  ffrmCadRequisicao_Itens.ShowModal;

  FreeAndNil(ffrmCadRequisicao_Itens);
end;

procedure TfrmCadRequisicao.prc_Habilitar_CamposNota;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);

  pnlItem.Enabled            := not(pnlItem.Enabled);

  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);

  pnlCadastro.Enabled         := not(pnlCadastro.Enabled);
end;

procedure TfrmCadRequisicao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadDocEstoque.cdsDocEstoque);
end;

procedure TfrmCadRequisicao.btnImprimirClick(Sender: TObject);
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

  vEmail_Fortes         := fDMCadDocEstoque.cdsDocEstoque_ImpEMAIL_COMPRAS.AsString;
  vEmail_Assunto_Fortes := 'Requisição N° ' + fDMCadDocEstoque.cdsDocEstoque_ImpID.AsString;
  vEmail_Fortes_Corpo   := 'Em anexo ' + vEmail_Assunto_Fortes;

  vFilial := fDMCadDocEstoque.cdsDocEstoque_ImpFILIAL.AsInteger;

  fRelRequisicao := TfRelRequisicao.Create(Self);
  fRelRequisicao.fDMCadDocEstoque := fDMCadDocEstoque;
  fRelRequisicao.RLReport1.PreviewModal;
  fRelRequisicao.RLReport1.Free;
  FreeAndNil(fRelRequisicao);
end;

procedure TfrmCadRequisicao.Atualiza_Preco;
var
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
    fDMCadDocEstoque.cdsProduto.Post;
    fDMCadDocEstoque.cdsProduto.ApplyUpdates(0);
  end;
end;

procedure TfrmCadRequisicao.prc_Abrir_Pessoa(Tipo: String);
begin
  fDMCadDocEstoque.cdsPessoa.Close;
  fDMCadDocEstoque.sdsPessoa.CommandText := fDMCadDocEstoque.ctPessoa;
  if Tipo = 'S' then
    fDMCadDocEstoque.sdsPessoa.CommandText := fDMCadDocEstoque.sdsPessoa.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S')
  else
    fDMCadDocEstoque.sdsPessoa.CommandText := fDMCadDocEstoque.sdsPessoa.CommandText + ' AND TP_FORNECEDOR = ' + QuotedStr('S');
  fDMCadDocEstoque.cdsPessoa.Open;
end;

procedure TfrmCadRequisicao.prc_Calcular_Total;
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

procedure TfrmCadRequisicao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
     DateEdit1.SetFocus;
end;

procedure TfrmCadRequisicao.SpeedButton2Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsFuncionario.Close;
  fDMCadDocEstoque.cdsFuncionario.Open;
end;

end.
