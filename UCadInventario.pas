unit UCadInventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadInventario,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection,
  RXDBCtrl, UEscolhe_Filial, UCadInventario_Prod, SqlExpr, dbXPress, UDMEstoque, Variants;

type
  TfrmCadInventario = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label21: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel4: TPanel;
    SMDBGrid2: TSMDBGrid;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Label23: TLabel;
    DateEdit2: TDateEdit;
    ComboBox1: TComboBox;
    Label26: TLabel;
    Label27: TLabel;
    ComboBox2: TComboBox;
    DBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBCheckBox1: TDBCheckBox;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    btnImp_Produto: TNxButton;
    btnExcluir_Prod: TNxButton;
    UCControls1: TUCControls;
    Label4: TLabel;
    rxdbLocalEstoque: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnLiberaGrid: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure edtCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImp_ProdutoClick(Sender: TObject);
    procedure btnExcluir_ProdClick(Sender: TObject);
    procedure RxDBComboBox6Enter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure rxdbLocalEstoqueEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLiberaGridClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadInventario: TDMCadInventario;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadInventario_Prod: TfrmCadInventario_Prod;
    fDMEstoque: TDMEstoque;
    vItemCFOP: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);
    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Posiciona_Registro;
    procedure prc_Abrir_Produto(Tipo_Reg: String);
    procedure prc_Le_CFOP_Orig;
    procedure prc_Abrir_Estoque_Atual;
    procedure prc_Le_Itens;

    procedure prc_Habilita;
  public
    { Public declarations }
  end;

var
  frmCadInventario: TfrmCadInventario;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, URelInventario;

{$R *.dfm}

procedure TfrmCadInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadInventario.btnExcluirClick(Sender: TObject);
begin
  if fDMCadInventario.cdsInventario_Consulta.IsEmpty then
    exit;

  prc_Posiciona_Registro;

  if fDMCadInventario.cdsInventarioGERADO_ESTOQUE.AsString = 'S' then
  begin
    if MessageDlg('*** ATENÇÃO ' +#13 + '*** Inventário já finalizado, tem certeza da exclusão?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  prc_Consultar(0);
end;

procedure TfrmCadInventario.prc_Excluir_Registro;
begin
  fDMCadInventario.prc_Excluir;
end;

procedure TfrmCadInventario.prc_Gravar_Registro;
var
  vIDAux: Integer;
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vQtdAux: Real;
begin
  if fDMCadInventario.cdsInventario_Itens.State in [dsEdit,dsInsert] then
    fDMCadInventario.cdsInventario_Itens.Post;
    
  if fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S' then
    fDMCadInventario.cdsInventarioID_LOCAL_ESTOQUE.AsInteger := 1;
  if fDMCadInventario.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadInventario.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    vIDAux := fDMCadInventario.cdsInventarioID.AsInteger;
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('ESTOQUE_MOV');
    sds.ExecSQL();

    fDMCadInventario.prc_Gravar;

    if fDMCadInventario.cdsInventarioGERADO_ESTOQUE.AsString = 'S' then
      prc_Le_Itens;

    if fDMCadInventario.cdsInventario.State in [dsEdit,dsInsert] then
    begin
      fDMCadInventario.cdsInventario.Post;
      fDMCadInventario.cdsInventario.ApplyUpdates(0);
    end;

    dmDatabase.scoDados.Commit(ID);

    prc_Habilita;
    RzPageControl1.ActivePage := TS_Consulta;
    prc_Consultar(vIDAux);
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Produto: ' + #13 + e.Message);
      end;
  end;
  FreeAndNil(sds);

end;

procedure TfrmCadInventario.prc_Inserir_Registro;
begin
  if fDMCadInventario.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadInventario.cdsFilial.Last;
    vFilial      := fDMCadInventario.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadInventario.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;
  fDMCadInventario.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadInventario.prc_Inserir;
  if fDMCadInventario.cdsInventario.State in [dsBrowse] then
    exit;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S' then
    fDMCadInventario.cdsInventarioID_LOCAL_ESTOQUE.AsInteger := 1;

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilita;
end;

procedure TfrmCadInventario.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadInventario := TDMCadInventario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadInventario);

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO') then
      SMDBGrid2.Columns[i].Visible := ((fDMCadInventario.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadInventario.qParametrosINFORMAR_COR_PROD.AsString = 'C'));
  end;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'COD_LOCAL') or (SMDBGrid1.Columns[i].FieldName = 'NOME_LOCAL') then
      SMDBGrid1.Columns[i].Visible := (fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  end;

  Label4.Visible           := (fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  rxdbLocalEstoque.Visible := (fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  SpeedButton4.Visible     := (fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  Label9.Visible           := (fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  RxDBLookupCombo2.Visible := (fDMCadInventario.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
end;

procedure TfrmCadInventario.prc_Consultar(ID: Integer);
begin
  fDMCadInventario.cdsInventario_Consulta.Close;
  if ID > 0 then
    fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.ctConsulta + ' WHERE I.ID = ' + IntToStr(ID)
  else
  begin
    fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.ctConsulta + ' WHERE 0 = 0';
    if RxDBLookupCombo1.Text <> '' then
      fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.ctConsulta + ' AND I.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if DateEdit1.Date > 10 then
      fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText +
                                                     ' AND I.DATA >= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 10 then
      fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText +
                                                     ' AND I.DATA <= ' +
                                                     QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    case ComboBox1.ItemIndex of
      0: fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText + ' AND I.TIPO_REG = ' + QuotedStr('P');
      1: fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText + ' AND I.TIPO_REG = ' + QuotedStr('M');
      2: fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText + ' AND I.TIPO_REG = ' + QuotedStr('C');
    end;
    case ComboBox2.ItemIndex of
      0: fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText + ' AND I.GERADO_ESTOQUE = ' + QuotedStr('N');
      1: fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText + ' AND I.GERADO_ESTOQUE = ' + QuotedStr('S');
    end;
    if RxDBLookupCombo2.Text <> '' then
      fDMCadInventario.sdsInventario_Consulta.CommandText := fDMCadInventario.sdsInventario_Consulta.CommandText + ' AND I.ID_LOCAL_ESTOQUE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  end;
  fDMCadInventario.cdsInventario_Consulta.Open;
end;

procedure TfrmCadInventario.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadInventario.btnCancelarClick(Sender: TObject);
var
  i: Integer;
begin
  if (fDMCadInventario.cdsInventario.State in [dsBrowse]) or not(fDMCadInventario.cdsInventario.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadInventario.cdsInventario.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  Panel4.Enabled            := False;
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'QTD_INVENTARIO') or (SMDBGrid2.Columns[i].FieldName = 'VLR_UNITARIO')  then
      SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].ReadOnly);
  end;
end;

procedure TfrmCadInventario.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadInventario.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadInventario.cdsInventario.IsEmpty) or not(fDMCadInventario.cdsInventario.Active) or (fDMCadInventario.cdsInventarioID.AsInteger < 1) then
    exit;

  if fDMCadInventario.cdsInventarioGERADO_ESTOQUE.AsString = 'S' then
  begin
    MessageDlg('*** Inventário já finalizado!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadInventario.cdsInventario.Edit;
  prc_Habilita;
end;

procedure TfrmCadInventario.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadInventario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadInventario);
end;

procedure TfrmCadInventario.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadInventario.edtCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadInventario.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadInventario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadInventario.cdsInventario);
end;

procedure TfrmCadInventario.prc_Le_CFOP_Orig;
begin
end;

procedure TfrmCadInventario.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadInventario.cdsInventario.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadInventario.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadInventario.cdsInventario.State in [dsEdit, dsInsert]) then
  begin
    if (RzPageControl1.ActivePage = TS_Cadastro) then
    begin
      if not (fDMCadInventario.cdsInventario_Consulta.Active) or (fDMCadInventario.cdsInventario_Consulta.IsEmpty) or
             (fDMCadInventario.cdsInventario_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Registro;
      if not(fDMCadInventario.cdsInventario_Consulta.Active) or (fDMCadInventario.cdsInventario_Consulta.IsEmpty) or
            (fDMCadInventario.cdsInventario_ConsultaID.AsInteger <= 0) then
        exit;
      fDMCadInventario.cdsInventario_Itens.Close;
      fDMCadInventario.cdsInventario_Itens.Open;
      prc_Abrir_Produto(fDMCadInventario.cdsInventarioTipo_Reg.AsString);
    end;
  end;
end;

procedure TfrmCadInventario.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadInventario.prc_Limpar_Edit_Consulta;
begin
end;

procedure TfrmCadInventario.prc_Posiciona_Registro;
begin
  fDMCadInventario.prc_Localizar(fDMCadInventario.cdsInventario_ConsultaID.AsInteger);
  fDMCadInventario.cdsInventario_Itens.Close;
  fDMCadInventario.cdsInventario_Itens.Open;
  vFilial      := fDMCadInventario.cdsInventarioFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadInventario.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadInventario.cdsFilialNOME.AsString;
end;

procedure TfrmCadInventario.btnImp_ProdutoClick(Sender: TObject);
begin
  if trim(fDMCadInventario.cdsInventarioTIPO_REG.AsString) = '' then
  begin
    MessageDlg('Tipo do registro não foi informado!', mtError, [mbOk], 0);
    exit;
    RxDBComboBox6.SetFocus;
  end;
  prc_Abrir_Produto(fDMCadInventario.cdsInventarioTIPO_REG.AsString);
  prc_Abrir_Estoque_Atual;

  ffrmCadInventario_Prod := TfrmCadInventario_Prod.Create(self);
  ffrmCadInventario_Prod.fDMCadInventario := fDMCadInventario;
  ffrmCadInventario_Prod.ShowModal;
  FreeAndNil(ffrmCadInventario_Prod);
end;

procedure TfrmCadInventario.prc_Abrir_Produto(Tipo_Reg: String);
begin
  fDMCadInventario.cdsProduto.Close;
  fDMCadInventario.cdsProduto.IndexFieldNames := 'NOME;TAMANHO;NOME_COR';
  fDMCadInventario.sdsProduto.CommandText := fDMCadInventario.ctProduto
                                           + ' AND PRO.TIPO_REG = ' + QuotedStr(Tipo_Reg);
  fDMCadInventario.cdsProduto.Open;
end;

procedure TfrmCadInventario.prc_Abrir_Estoque_Atual;
begin
  fDMCadInventario.cdsEstoque_Atual.Close;
  fDMCadInventario.sdsEstoque_Atual.ParamByName('FILIAL').AsInteger           := fDMCadInventario.cdsInventarioFILIAL.AsInteger;
  fDMCadInventario.sdsEstoque_Atual.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := fDMCadInventario.cdsInventarioID_LOCAL_ESTOQUE.AsInteger;
  fDMCadInventario.cdsEstoque_Atual.Open;
end;

procedure TfrmCadInventario.prc_Le_Itens;
var
  vQtd: Real;
  vTipo_ES: String;
  vID_Estoque: Integer;
  vGerar_Custo: String;
begin
  fDMEstoque := TDMEstoque.Create(Self);

  fDMCadInventario.cdsInventario_Itens.First;
  while not fDMCadInventario.cdsInventario_Itens.Eof do
  begin
    if StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsInventario_ItensQTD_ESTOQUE.AsFloat)) <> StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat)) then
    begin
      if StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsInventario_ItensQTD_ESTOQUE.AsFloat)) > StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat)) then
      begin
        vQtd     := StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsInventario_ItensQTD_ESTOQUE.AsFloat - fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat));
        vTipo_ES := 'S';
      end
      else
      begin
        vQtd     := StrToFloat(FormatFloat('0.00000',fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsFloat - fDMCadInventario.cdsInventario_ItensQTD_ESTOQUE.AsFloat));
        vTipo_ES := 'E';
      end;
      if vTipo_ES = 'E' then
        vGerar_Custo := 'S'
      else
        vGerar_Custo := 'N';

      vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(fDMCadInventario.cdsInventario_ItensID_MOVESTOQUE.AsInteger,
                                                   fDMCadInventario.cdsInventarioFILIAL.AsInteger,
                                                   fDMCadInventario.cdsInventarioID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                                   fDMCadInventario.cdsInventario_ItensID_PRODUTO.AsInteger,
                                                   fDMCadInventario.cdsInventarioNUM_INVENTARIO.AsInteger,
                                                   0,0,0,0,vTipo_ES,'INV',
                                                   fDMCadInventario.cdsInventario_ItensUNIDADE.AsString,
                                                   fDMCadInventario.cdsInventario_ItensUNIDADE.AsString,
                                                   '',
                                                   fDMCadInventario.cdsInventario_ItensTAMANHO.AsString,
                                                   fDMCadInventario.cdsInventarioDATA.AsDateTime,
                                                   fDMCadInventario.cdsInventario_ItensVLR_UNITARIO.AsFloat,
                                                   vQtd,0,
                                                   fDMCadInventario.cdsInventario_ItensPERC_IPI.AsFloat,
                                                   0,0,0,vQtd,
                                                   fDMCadInventario.cdsInventario_ItensVLR_UNITARIO.AsFloat,
                                                   0,0,'',fDMCadInventario.cdsInventario_ItensID_COR.AsInteger,'',
                                                   vGerar_Custo,
                                                   fDMCadInventario.cdsInventario_ItensVLR_UNITARIO.AsFloat); //ver aqui sobre Lote Controle  04/11/2015
      fDMCadInventario.cdsInventario_Itens.Edit;
      fDMCadInventario.cdsInventario_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
      fDMCadInventario.cdsInventario_ItensQTD_AJUSTE.AsFloat      := vQtd;
      fDMCadInventario.cdsInventario_ItensTIPO_AJUSTE.AsString    := vTipo_ES;
      fDMCadInventario.cdsInventario_Itens.Post;
    end;
    fDMCadInventario.cdsInventario_Itens.Next;
  end;
  FreeAndNil(fDMEstoque);
end;

procedure TfrmCadInventario.btnExcluir_ProdClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir os itens selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadInventario.mExcluir.EmptyDataSet;
  fDMCadInventario.cdsInventario_Itens.First;
  while not fDMCadInventario.cdsInventario_Itens.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) and (fDMCadInventario.cdsInventario_ItensID_MOVESTOQUE.AsInteger <= 0) then
    begin
      fDMCadInventario.mExcluir.Insert;
      fDMCadInventario.mExcluirItem.AsInteger := fDMCadInventario.cdsInventario_ItensITEM.AsInteger;
      fDMCadInventario.mExcluir.Post;
    end;
    fDMCadInventario.cdsInventario_Itens.Next;
  end;
  
  fDMCadInventario.mExcluir.First;
  while not fDMCadInventario.mExcluir.Eof do
  begin
    if fDMCadInventario.cdsInventario_Itens.Locate('ID;ITEM',VarArrayOf([fDMCadInventario.cdsInventarioID.AsInteger,fDMCadInventario.mExcluirItem.AsInteger]),[locaseinsensitive]) then
      fDMCadInventario.cdsInventario_Itens.Delete;
    fDMCadInventario.mExcluir.Next;
  end;
  SMDBGrid2.UnSelectAllClick(frmCadInventario);
end;

procedure TfrmCadInventario.RxDBComboBox6Enter(Sender: TObject);
begin
  RxDBComboBox6.ReadOnly := not(fDMCadInventario.cdsInventario_Itens.IsEmpty);
end;

procedure TfrmCadInventario.prc_Habilita;
var
  i: Integer;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
  Panel4.Enabled         := not(Panel4.Enabled);
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'QTD_INVENTARIO') or (SMDBGrid2.Columns[i].FieldName = 'VLR_UNITARIO')  then
      SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].ReadOnly);
  end;
end;

procedure TfrmCadInventario.SpeedButton4Click(Sender: TObject);
begin
  fDMCadInventario.cdsLocal_Estoque.Close;
  fDMCadInventario.cdsLocal_Estoque.Open;
end;

procedure TfrmCadInventario.rxdbLocalEstoqueEnter(Sender: TObject);
begin
  rxdbLocalEstoque.ReadOnly := (fDMCadInventario.cdsInventario_Itens.RecordCount >= 1);
end;

procedure TfrmCadInventario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
    btnLiberaGrid.Visible := not(btnLiberaGrid.Visible);
end;

procedure TfrmCadInventario.btnLiberaGridClick(Sender: TObject);
var
  i : Integer;
begin
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'TAMANHO') or (SMDBGrid2.Columns[i].FieldName = 'ID_COR')
      or (SMDBGrid2.Columns[i].FieldName = 'NOME_COR_COMBINACAO')
      or (SMDBGrid2.Columns[i].FieldName = 'QTD_ESTOQUE')
      or (SMDBGrid2.Columns[i].FieldName = 'QTD_INVENTARIO')
      or (SMDBGrid2.Columns[i].FieldName = 'VLR_UNITARIO') then
      SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].ReadOnly);
  end;
end;

end.
