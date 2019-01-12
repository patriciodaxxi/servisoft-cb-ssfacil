unit UCadMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProduto, DB, UCBase,
  UCadUnidade, UCadNCM, StdCtrls, DBCtrls, RxDBComb, RxLookup, RXDBCtrl, ToolEdit, CurrEdit, ExtCtrls, RzTabs, dbXPress, ExtDlgs,
  UCadProduto_Forn, RzPanel, NxCollection, DBVGrids, DBGrids, UDMCopiarProduto, SqlExpr, DBAdvGrid, 
  AdvDBLookupComboBox, UCadProduto_UF, UCadProduto_Uni, ComCtrls, RzChkLst, RzLstBox, 
  UCadProduto_Cor, UCadProduto_Emb, UCadProduto_Atelier, Menus, Mask,
  Variants, UConsEstoque_Mov, NxEdit, UCadProduto_GradeNum, UCadProduto_GradeRefTam, UCadProduto_Consumo_Proc;

type
  TfrmCadMaterial = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    pnlCons_Produto: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtReferencia: TEdit;
    ceID: TCurrencyEdit;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    pnlCadastro: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label27: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label29: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label30: TLabel;
    rxdbGrupo: TRxDBLookupCombo;
    Label32: TLabel;
    rxdbMarca: TRxDBLookupCombo;
    UCControls1: TUCControls;
    Label33: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label34: TLabel;
    rxdbFornecedor: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label44: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Label68: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    RzPageControl3: TRzPageControl;
    TS_Grade: TRzTabSheet;
    TS_Fiscal: TRzTabSheet;
    VDBGrid1: TVDBGrid;
    NxPanel1: TNxPanel;
    Label70: TLabel;
    SpeedButton8: TSpeedButton;
    RxDBLookupCombo9: TRxDBLookupCombo;
    btnImportar_Tam: TNxButton;
    btnExcluir_Tam: TNxButton;
    TS_Opcoes: TRzTabSheet;
    pnlOpcoes: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    pnlFiscal: TPanel;
    Label20: TLabel;
    Label23: TLabel;
    Label35: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit10: TDBEdit;
    ckInativo: TCheckBox;
    Label26: TLabel;
    DBDateEdit1: TDBDateEdit;
    StaticText2: TStaticText;
    TS_Obs: TRzTabSheet;
    DBMemo1: TDBMemo;
    Label28: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label92: TLabel;
    DBEdit44: TDBEdit;
    gbxVendedor: TRzGroupBox;
    Label50: TLabel;
    DBEdit27: TDBEdit;
    DBEdit45: TDBEdit;
    Label93: TLabel;
    Label94: TLabel;
    DBEdit46: TDBEdit;
    Label71: TLabel;
    Label95: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label98: TLabel;
    DBEdit49: TDBEdit;
    Label99: TLabel;
    DBEdit50: TDBEdit;
    Label100: TLabel;
    DBEdit51: TDBEdit;
    SpeedButton3: TSpeedButton;
    ListBox1: TListBox;
    TabSheet4: TRzTabSheet;
    Panel6: TPanel;
    btnInserir_Uni: TNxButton;
    btnAlterar_Uni: TNxButton;
    btnExcluir_Uni: TNxButton;
    SMDBGrid7: TSMDBGrid;
    OpenPictureDialog1: TOpenPictureDialog;
    btnAlterar_Nome: TNxButton;
    TabSheet5: TRzTabSheet;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    Label108: TLabel;
    Label113: TLabel;
    Edit9: TEdit;
    DBCheckBox6: TDBCheckBox;
    Label114: TLabel;
    DBEdit57: TDBEdit;
    Label115: TLabel;
    DBEdit58: TDBEdit;
    edtNome_Orcamento: TEdit;
    RxDBComboBox7: TRxDBComboBox;
    Label25: TLabel;
    TabSheet2: TRzTabSheet;
    pnlCadastro_Forn: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    btnCor2: TNxButton;
    Label11: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label121: TLabel;
    edtCod_EnqIPI: TEdit;
    Label122: TLabel;
    Label123: TLabel;
    DBEdit60: TDBEdit;
    Label124: TLabel;
    Label127: TLabel;
    RxDBLookupCombo19: TRxDBLookupCombo;
    Label130: TLabel;
    DBEdit65: TDBEdit;
    Label131: TLabel;
    DBDateEdit4: TDBDateEdit;
    DBEdit92: TDBEdit;
    Label161: TLabel;
    RxDBLookupCombo20: TRxDBLookupCombo;
    DBCheckBox14: TDBCheckBox;
    btnGradeRef: TNxButton;
    Label169: TLabel;
    DBEdit96: TDBEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    lblDescLargura: TLabel;
    Label173: TLabel;
    DBEdit100: TDBEdit;
    Label174: TLabel;
    DBEdit101: TDBEdit;
    btnAjudaCod_Barra: TNxButton;
    Label175: TLabel;
    RxDBLookupCombo22: TRxDBLookupCombo;
    Label243: TLabel;
    RxDBLookupCombo25: TRxDBLookupCombo;
    Label244: TLabel;
    DBEdit158: TDBEdit;
    SpeedButton16: TSpeedButton;
    Label160: TLabel;
    DBCheckBox3: TDBCheckBox;
    ComboBox2: TComboBox;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBComboBox7Change(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edtCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure RxDBLookupCombo5CloseUp(Sender: TObject);
    procedure RxDBLookupCombo5DropDown(Sender: TObject);
    procedure rxdbGrupoDropDown(Sender: TObject);
    procedure RxDBComboBox7Exit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnInserir_UniClick(Sender: TObject);
    procedure btnAlterar_UniClick(Sender: TObject);
    procedure btnExcluir_UniClick(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SMDBGrid7DblClick(Sender: TObject);
    procedure btnAlterar_NomeClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure RxDBComboBox7Enter(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DBEdit58Exit(Sender: TObject);
    procedure DBEdit58KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCorClick(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure edtCod_EnqIPIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit60Exit(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit57Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure btnGradeRefClick(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure SMDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton16Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadProduto: TDMCadProduto;
    fDMCopiarProduto: TDMCopiarProduto;
    ffrmCadNCM: TfrmCadNCM;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadProduto_Forn: TfrmCadProduto_Forn;
    ffrmCadProduto_UF: TfrmCadProduto_UF;
    ffrmCadProduto_Uni: TfrmCadProduto_Uni;
    ffrmCadProduto_Cor: TfrmCadProduto_Cor;
    ffrmConsEstoque_Mov : TfrmConsEstoque_Mov;
    ffrmCadProduto_GradeNum : TfrmCadProduto_GradeNum;
    ffrmCadProduto_GradeRefTam : TfrmCadProduto_GradeRefTam;
    ffrmCadProduto_Consumo_Proc : TfrmCadProduto_Consumo_Proc;     

    vReferencia_Ant: String;
    vTipo_Reg_Ant: String;
    vID_Grupo_Ant: Integer;
    vOrigem_Ant: String;
    vPreco_Venda_Ant: Real;
    vUser_Exclui: Boolean;

    //*** 16/06/2016  usado para gravar a tabela Produto_Cad_Ant
    vNome_Cad_Ant, vReferencia_Cad_Ant: String;
    vAltera_Nome: Boolean;
    //*****************
    vItem2: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

    procedure prc_Posiciona_Produto;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Habilita;

    procedure prc_Abrir_qConta_Orcamento(ID: Integer);
    function fnc_Verificar_Tipo: Boolean;
    procedure prc_Abrir_EnqIPI(ID: Integer);
    procedure prc_Combinacao;

    procedure prc_Aplicar_Margem;
    function fnc_Duplicidade_Mat(ID_Prod : Integer): String;

    function fnc_Filial: Boolean;
    procedure prc_Atualiza_Percentual;
    procedure prc_Gravar_Produto_Cad_Ant;

  public
    { Public declarations }
    vID_Produto_Local: Integer;
  end;

var
  frmCadMaterial: TfrmCadMaterial;

implementation

uses rsDBUtils, uUtilPadrao, USel_Grupo, DmdDatabase, 
  USel_EnqIPI, USel_CodCest, VarUtils, USel_ContaOrc, USel_Produto, UAltProd, UCadGrade,
  uCopiar_Comb_Agrupado, URelProduto_Grupo, URelProduto, USenha,
  UCadProduto_Cad_Ant;

{$R *.dfm}

procedure TfrmCadMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vID_Produto_Local := 0;
  SMDBGrid1.ClearFilter;
  try
    fDMCadProduto.qParametros_Geral.Close;
    fDMCadProduto.qParametros_Geral.Open;
    prc_Grava_Grid(SMDBGrid1, Name, fDMCadProduto.qParametros_GeralENDGRIDS.AsString);
  finally
    Action := Cafree;
  end;
end;

procedure TfrmCadMaterial.btnExcluirClick(Sender: TObject);
var
  vExcluir: Boolean;
  vCont: Integer;
  vContTotal: Integer;
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) or
        (fDMCadProduto.cdsProduto_ConsultaID.AsInteger <= 0) then
    exit;

  if (trim(fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString) <> 'S') and (SMDBGrid1.SelectedRows.Count > 1) then
  begin
    MessageDlg('*** Existe mais de um produto selecionado para a exclusão, favor verificar!', mtError, [mbOk], 0);
    exit;
  end;
  vExcluir := False;

  if (SMDBGrid1.SelectedRows.Count > 1) then
    MessageDlg('*** Existe mais de um produto selecionado para a exclusão!', mtWarning, [mbOk], 0)
  else
  if (SMDBGrid1.SelectedRows.Count <= 0) then
  begin
    MessageDlg('*** Não existe produto selecionado para a exclusão!', mtInformation, [mbOk], 0);
    exit;
  end;

  if (fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString = 'S') then
  begin
    if (SMDBGrid1.SelectedRows.Count > 1) then
      if MessageDlg('Deseja excluir os produtos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        vExcluir := True;
    if not(vExcluir) and (SMDBGrid1.SelectedRows.Count = 1) then
      if MessageDlg('Deseja excluir o produtos selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        vExcluir := True;
  end
  else
  if (fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString <> 'S') and (SMDBGrid1.SelectedRows.Count = 1) then
  begin
    if MessageDlg('Deseja excluir o produtos selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      vExcluir := True;
  end;
  if not vExcluir then
    exit;

  vCont := SMDBGrid1.SelectedRows.Count;
  fDMCadProduto.cdsProduto_Consulta.First;
  while not fDMCadProduto.cdsProduto_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      vCont := vCont - 1;
      prc_Posiciona_Produto;
      if not fDMCadProduto.cdsProduto.IsEmpty then
        prc_Excluir_Registro;
    end;
    if vCont <= 0 then
      fDMCadProduto.cdsProduto_Consulta.Last;
    fDMCadProduto.cdsProduto_Consulta.Next;
  end;
  //if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
  //  exit;

 ///prc_Excluir_Registro;
  btnExcluir.Enabled := False;
  btnConsultarClick(Sender);
end;

procedure TfrmCadMaterial.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadProduto.cdsProdutoID.AsInteger;
    fDMCadProduto.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadProduto.cdsProduto.Locate('ID',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadMaterial.prc_Gravar_Registro;
var
  vIDAux: Integer;
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  ID: TTransactionDesc;
  vGerar_Ref: Boolean;
  vAux: Integer;
  vID_SemiAux: Integer;
  vMaterial : String;
  Flag : Boolean;
begin
  vIDAux := fDMCadProduto.cdsProdutoID.AsInteger;
  if trim(fDMCadProduto.cdsProdutoREFERENCIA.AsString) = '' then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := fDMCadProduto.cdsProdutoID.AsString;

  if fDMCadProduto.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadProduto.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  sds  := TSQLDataSet.Create(nil);
  if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    sds2 := TSQLDataSet.Create(nil);

  ID.TransactionID  := 3;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('PRODUTO');
      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
          begin
            Flag := False;
          end;
        end;
      end;
    except
      raise
    end;

    vGerar_Ref := False;
    if trim(fDMCadProduto.cdsProdutoREFERENCIA.AsString) = '' then
      vGerar_Ref := True
    else
    if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    begin
      sds2.SQLConnection := dmDatabase.scoDados;
      sds2.Close;
      sds2.NoMetadata    := True;
      sds2.GetMetadata   := False;
      sds2.CommandText   := 'SELECT ID FROM PRODUTO '
                          + ' WHERE TIPO_REG = ' + QuotedStr(fDMCadProduto.cdsProdutoTIPO_REG.AsString)
                          + '   AND REFERENCIA_SEQ = ' + IntToStr(fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
      sds2.Open;
      if (sds2.FieldByName('ID').AsInteger > 0) and (sds2.FieldByName('ID').AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
        vGerar_Ref := True;
    end;

    if vGerar_Ref then
    begin
      vAux := fDMCadProduto.fnc_Referencia_Proxima_Seq(fDMCadProduto.cdsProdutoTIPO_REG.AsString);
      fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
      fDMCadProduto.cdsProdutoREFERENCIA.AsString      := fDMCadProduto.cdsProdutoTIPO_REG.AsString +
                                                          FormatFloat('000000',fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
    end;

    fDMCadProduto.prc_Gravar;

    if (((fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M')) or
       ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P')) or
       ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))) then
      fDMCadProduto.cdsProduto_Cor.ApplyUpdates(0);

    if (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
      fDMCadProduto.cdsProduto_Comb.ApplyUpdates(0);

    if (fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') and (fDMCadProduto.cdsProduto_GradeNum.Active) then
    begin
      if fDMCadProduto.cdsProduto_GradeNum.State in [dsEdit,dsInsert] then
        fDMCadProduto.cdsProduto_GradeNum.Post;
      fDMCadProduto.cdsProduto_GradeNum.ApplyUpdates(0);
    end;

    vCodProduto_Pos := 0;
    vReferencia_Pos := '';

    dmDatabase.scoDados.Commit(ID);

    if fDMCadProduto.cdsProduto_Forn.RecordCount < 1 then
    begin
      vCodProduto_Pos := fDMCadProduto.cdsProdutoID.AsInteger;
      vReferencia_Pos := fDMCadProduto.cdsProdutoReferencia.AsString;
    end;
    prc_Habilita;
    if (vIDAux > 0) then
    begin
      if fDMCadProduto.cdsProduto_Consulta.IsEmpty then
        ceID.AsInteger := vIDAux;
      prc_Consultar;
      fDMCadProduto.cdsProduto_Consulta.Locate('ID',vIDAux,([Locaseinsensitive]));
      ceID.Clear;
    end;
    RzPageControl2.ActivePage := TabSheet1;
    RzPageControl1.ActivePage := TS_Consulta;

  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Produto: ' + #13 + e.Message);
      end;
  end;
  FreeAndNil(sds);
  if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    FreeAndNil(sds2);
  if (trim(fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString) <> 'S') or (fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.IsNull) then
  begin
    vMaterial := fnc_Duplicidade_Mat(vIDAux);
    if trim(vMaterial) <> '' then
      MessageDlg(vMaterial + #13 + #13 + ' Esta repetido na mesma posição, favor verificar!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmCadMaterial.prc_Inserir_Registro;
begin
  if not fnc_Filial then
    exit;

  fDMCadProduto.prc_Inserir;

  if fDMCadProduto.cdsProduto.State in [dsBrowse] then
    exit;

  vNome_Cad_Ant       := '';
  vReferencia_Cad_Ant := '';

  RzPageControl1.ActivePage := TS_Cadastro;
  DBEdit2.ReadOnly := False;
  DBEdit7.ReadOnly := False;
  btnAlterar_Nome.Enabled := False;

  prc_Habilita;
  RxDBComboBox7.Enabled := True;

  RxDBComboBox7.SetFocus;
  lblDescLargura.Caption := '';

  if (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'N')  then
    fDMCadProduto.prc_Abrir_Produto_Processo(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadMaterial.FormShow(Sender: TObject);
var
  i: Integer;
  vTipo_Consulta_Produto_Padrao: String;
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  fDMCadProduto.qParametros_Ped.Open;
  prc_le_Grid(SMDBGrid1, Name, fDMCadProduto.qParametros_GeralENDGRIDS.AsString);

  DBEdit3.Visible  := not(Label4.Enabled);
  DBEdit57.Visible := not(Label4.Enabled);
  DBEdit5.Visible  := not(Label12.Enabled);
  DBEdit11.Visible := not(Label24.Enabled);
  DBEdit57.Visible := not(Label4.Enabled);

  label4.Enabled   := not(label4.Enabled);
  label12.Enabled  := not(label12.Enabled);
  label24.Enabled  := not(label24.Enabled);
  Label114.Enabled := (Label4.Enabled);

  TS_Grade.TabVisible      := (fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'COD_BARRA') then
      SMDBGrid1.Columns[i].Visible := False
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO') then
      SMDBGrid1.Columns[i].Visible := label4.Enabled
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO_TOTAL') then
      SMDBGrid1.Columns[i].Visible := label4.Enabled
    else
    if (SMDBGrid1.Columns[i].FieldName = 'PRECO_VENDA') then
      SMDBGrid1.Columns[i].Visible := label12.Enabled
    else
    if (SMDBGrid1.Columns[i].FieldName = 'COD_ANT') then
      SMDBGrid1.Columns[i].Visible := fDMCadProduto.qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT.AsString = 'S'
    else
    if (SMDBGrid1.Columns[i].FieldName = 'SPED_TIPO_ITEM') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametrosUSA_SPED.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'OBS') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_OBS_CONSULTA.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'TAMANHO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdUSA_TAM_INDIVIDUAL.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'QTD_EMBALAGEM') then
        SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_PedPEDIDO_LOJA.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'QTD_PECA_EMB') then
        SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_PedPEDIDO_LOJA.AsString = 'S')
    else
    if (SMDBGrid1.Columns[i].FieldName = 'TAM_CALC') then
        SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_TAM_CALC.AsString = 'S');
  end;
  if fDMCadProduto.qParametrosUSA_EDI.AsString = 'S' then
    TabSheet2.Caption := 'Dados Fornecedor/Cliente'
  else
    TabSheet2.Caption := 'Dados Fornecedor';
  Label28.Visible       := (fDMCadProduto.qParametrosUSA_SPED.AsString = 'S');
  RxDBComboBox4.Visible := (fDMCadProduto.qParametrosUSA_SPED.AsString = 'S');

  vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO.AsString);
  if vTipo_Consulta_Produto_Padrao = '' then
    vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametrosTIPO_CONSULTA_PRODUTO_PADRAO.AsString);

  if vID_Produto_Local > 0 then
  begin
    ceID.AsInteger := vID_Produto_Local;
    prc_Consultar;
    SMDBGrid1DblClick(Sender);
  end;
  Label115.Visible := (fDMCadProduto.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  DBEdit58.Visible := (fDMCadProduto.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');
  edtNome_Orcamento.Visible := (fDMCadProduto.qParametrosUSA_CONTA_ORCAMENTO.AsString = 'S');

  Label29.Visible           := (fDMCadProduto.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');
  RxDBLookupCombo7.Visible  := (fDMCadProduto.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');
  SpeedButton4.Visible      := (fDMCadProduto.qParametrosMOSTRAR_MARCAR_PROD.AsString = 'S');

  StaticText1.Caption := 'Duplo clique para consultar     F3 Consultar Cadastro Anterior';

  vUser_Exclui       := btnExcluir.Enabled;
  btnExcluir.Enabled := False;
end;

procedure TfrmCadMaterial.prc_Consultar;
begin
  SMDBGrid1.DisableScroll;
  fDMCadProduto.cdsProduto_Consulta.Close;
  fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.ctConsulta;
  if ceID.AsInteger > 0 then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE PRO.ID =  ' + ceID.Text
  else
  begin
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE 0 = 0 ';
    if Trim(edtNome.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
    if Trim(edtReferencia.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+edtReferencia.Text+'%');
    if rxdbGrupo.Text <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.ID_GRUPO = ' + IntToStr(rxdbGrupo.KeyValue);
    if rxdbMarca.Text <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.ID_MARCA = ' + IntToStr(rxdbMarca.KeyValue);
    if rxdbFornecedor.Text <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.ID_FORNECEDOR = ' + IntToStr(rxdbFornecedor.KeyValue);

    case ComboBox2.ItemIndex of
      0: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('P');
      1: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('M');
      2: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('N');
      3: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('C');
      5: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('S');
    end;

    if Trim(Edit9.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.LOCALIZACAO LIKE ' + QuotedStr('%'+Edit9.Text+'%');

    if not ckInativo.Checked then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND PRO.INATIVO = ' + QuotedStr('N');
  end;
  fDMCadProduto.cdsProduto_Consulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadMaterial.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMaterial.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.State in [dsBrowse]) or not(fDMCadProduto.cdsProduto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto.CancelUpdates;
  if (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S') and (fDMCadProduto.cdsProduto_Veiculo.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Veiculo.CancelUpdates;
  if (fDMCadProduto.cdsProdutoUSA_NA_BALANCA.AsString = 'S') and (fDMCadProduto.cdsProduto_Balanca.State in [dsEdit,dsInsert]) then
    fDMCadProduto.cdsProduto_Balanca.CancelUpdates;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  RzPageControl2.ActivePage := TabSheet1;
end;

procedure TfrmCadMaterial.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMaterial.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.IsEmpty) or not(fDMCadProduto.cdsProduto.Active) or (fDMCadProduto.cdsProdutoID.AsInteger < 1) then
    exit;

  fDMCadProduto.cdsProduto.Edit;

  vNome_Cad_Ant       := fDMCadProduto.cdsProdutoNOME.AsString;
  vReferencia_Cad_Ant := fDMCadProduto.cdsProdutoREFERENCIA.AsString;
  vAltera_Nome        := False;

  DBEdit2.ReadOnly        := True;
  DBEdit7.ReadOnly        := True;
  btnAlterar_Nome.Enabled := True;

  RxDBComboBox7.Enabled := True;

  prc_Habilita;
end;

procedure TfrmCadMaterial.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
  if  (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S') and (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
  begin
    if MessageDlg('Deseja copiar as combinações do Produto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    frmCopiar_Comb_Agrupado := TfrmCopiar_Comb_Agrupado.Create(self);
    frmCopiar_Comb_Agrupado.vID_Produto := fDMCadProduto.cdsProdutoID.AsInteger;
    frmCopiar_Comb_Agrupado.fdmCadProduto := fdmCadProduto;
    frmCopiar_Comb_Agrupado.ShowModal;
    FreeAndNil(frmCopiar_Comb_Agrupado);
    fDMCadProduto.cdsProduto_Comb.Close;
  end;
end;

procedure TfrmCadMaterial.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProduto);
end;

procedure TfrmCadMaterial.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMaterial.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(ffrmCadNCM);

  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadMaterial.DBEdit11Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadMaterial.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(frmCadUnidade);
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadMaterial.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto);
end;

procedure TfrmCadMaterial.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMaterial.edtReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMaterial.ceIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMaterial.BitBtn1Click(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  fDMCadProduto.prc_Inserir_ProdForn;

  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Forn.ShowModal;

  FreeAndNil(ffrmCadProduto_Forn);
end;

procedure TfrmCadMaterial.BitBtn4Click(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto_FornITEM.AsInteger < 1) or not(fDMCadProduto.cdsProduto_Forn.Active) or
     (fDMCadProduto.cdsProduto_Forn.IsEmpty) then
    exit;

  fDMCadProduto.cdsProduto_Forn.Edit;

  ffrmCadProduto_Forn := TfrmCadProduto_Forn.Create(self);
  ffrmCadProduto_Forn.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Forn.ShowModal;

  FreeAndNil(ffrmCadProduto_Forn);
end;

procedure TfrmCadMaterial.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Forn.Delete;
end;

procedure TfrmCadMaterial.RxDBComboBox7Change(Sender: TObject);
begin
  btnGradeRef.Visible  := (RxDBComboBox7.ItemIndex = 1);

  if fDMCadProduto.qParametrosUSA_GRADE.AsString = 'S' then
    TS_Grade.TabVisible := ((RxDBComboBox7.ItemIndex < 2) or (RxDBComboBox7.ItemIndex = 5));
  Label108.Visible          := ((RxDBComboBox7.ItemIndex = 1) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'S'))
                              or ((RxDBComboBox7.ItemIndex = 0) and (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL_RZ.AsString = 'P'));

  if (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'N') or (RxDBComboBox7.ItemIndex = 2) or (RxDBComboBox7.ItemIndex = 4) then
  begin
    Label16.Visible  := False;
    DBEdit14.Visible := False;
  end
  else
  begin
    Label16.Visible  := (((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'A'));
    DBEdit14.Visible := (((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_LOCALIZACAO.AsString = 'A'));
  end;
  if (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'N') or (RxDBComboBox7.ItemIndex = 2) or (RxDBComboBox7.ItemIndex = 4) then
  begin
    Label33.Visible          := False;
    RxDBLookupCombo8.Visible := False;
  end
  else
  begin
    Label33.Visible  := (((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
                       or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                       or (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'A'));
    RxDBLookupCombo8.Visible := (((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'P') and ((RxDBComboBox7.ItemIndex = 0) or (RxDBComboBox7.ItemIndex = 5)))
                             or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and ((RxDBComboBox7.ItemIndex = 1) or (RxDBComboBox7.ItemIndex = 5)))
                             or ((fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'M') and (RxDBComboBox7.ItemIndex = 3))
                             or (fDMCadProduto.qParametrosUSA_PRODUTO_FORNECEDOR.AsString = 'A'))
  end;
end;

procedure TfrmCadMaterial.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadMaterial.RzPageControl1Change(Sender: TObject);
var
  i: Byte;
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if (fDMCadProduto.cdsProduto_Consulta.Active) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
      Label73.Caption := FormatFloat('###,###,##0.####',fDMCadProduto.cdsProduto_ConsultaQTD_ESTOQUE.AsFloat);
    RzPageControl2.ActivePage := TabSheet1;
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      RZPageControl3.ActivePage  := TS_Fiscal;
    end;
    DBEdit1Change(Sender);
    edtCod_EnqIPI.Clear;
    prc_Abrir_EnqIPI(fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger);
    edtCod_EnqIPI.Text := fDMCadProduto.qEnqIPICODIGO.AsString;
  end;
  if not(fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) or
            (fDMCadProduto.cdsProduto_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Produto;
      RZPageControl3.ActivePage := TS_Fiscal;
    end;
  end;
  btnGradeRef.Visible  := fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M';

  RxDBComboBox7Change(Sender);

end;

procedure TfrmCadMaterial.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadMaterial.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.IndexFieldNames := 'CODIGO';
  StaticText2.Visible := True;
  vID_Grupo_Ant       := fDMCadProduto.cdsProdutoID_GRUPO.AsInteger;
end;

procedure TfrmCadMaterial.RxDBLookupCombo7Enter(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.IndexFieldNames := 'NOME';
end;

procedure TfrmCadMaterial.prc_Posiciona_Produto;
begin
  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
  fDMCadProduto.cdsProduto_Forn.Close;
  fDMCadProduto.cdsProduto_Forn.Open;
  fDMCadProduto.cdsProduto_Consumo.Close;
  fDMCadProduto.cdsProduto_Consumo.Open;
  if (fDMCadProduto.qParametrosEMPRESA_VEICULO.AsString = 'S') then
    fDMCadProduto.prc_Abrir_Veiculo(fDMCadProduto.cdsProdutoID.AsInteger);

  if fDMCadProduto.qParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    fDMCadProduto.prc_Abrir_Matriz(fDMCadProduto.cdsProdutoID.AsInteger);
  if ((fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') and  ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S'))) or
     ((fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M')) then
    fDMCadProduto.prc_Abrir_Produto_Cor(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Comb(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosMOSTRAR_EMBALAGEM.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Emb(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
     (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Atelier(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametros_ProdUSA_MAQUINA.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Maq(fDMCadProduto.cdsProdutoID.AsInteger);
  if fDMCadProduto.qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S' then
    fDMCadProduto.prc_Abrir_Produto_MatTam(fDMCadProduto.cdsProdutoID.AsInteger);
  if fDMCadProduto.qParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
  begin
    fDMCadProduto.prc_Abrir_Comissao(fDMCadProduto.cdsProdutoID.AsInteger);
    fDMCadProduto.prc_Abrir_Comissao_Vend(fDMCadProduto.cdsProdutoID.AsInteger);
  end;
  if fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    fDMCadProduto.prc_Abrir_Produto_Lote(fDMCadProduto.cdsProdutoID.AsInteger);
  if (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S') and (fDMCadProduto.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') then
    fDMCadProduto.prc_Abrir_CBarra(fDMCadProduto.cdsProdutoID.AsInteger);

  prc_Abrir_qConta_Orcamento(fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger);
  if (fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S') and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
    fDMCadProduto.prc_Abrir_Produto_Carimbo(fDMCadProduto.cdsProdutoID.AsInteger);
  //27/02/2017
  if (fDMCadProduto.qParametros_LoteTIPO_PROCESSO.AsString <> 'N')  then
    fDMCadProduto.prc_Abrir_Produto_Processo(fDMCadProduto.cdsProdutoID.AsInteger);
end;

procedure TfrmCadMaterial.RxDBLookupCombo8Enter(Sender: TObject);
begin
  fDMCadProduto.cdsFornecedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadMaterial.SpeedButton6Click(Sender: TObject);
begin
  fDMCadProduto.cdsGrupo.Close;
  fDMCadProduto.cdsGrupo.Open;
  fDMCadProduto.qParametros_Prod.Close;
  fDMCadProduto.qParametros_Prod.Open;
end;

procedure TfrmCadMaterial.SpeedButton4Click(Sender: TObject);
begin
  fDMCadProduto.cdsMarca.Close;
  fDMCadProduto.cdsMarca.Open;
end;

procedure TfrmCadMaterial.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadMaterial.SpeedButton7Click(Sender: TObject);
begin
  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadMaterial.edtCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMaterial.btnPesquisarClick(Sender: TObject);
begin
  pnlCons_Produto.Visible := not(pnlCons_Produto.Visible);
  if pnlCons_Produto.Visible then
  begin
    edtNome.SetFocus;
  end
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadMaterial.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
  edtReferencia.Clear;
  ceID.Clear;
  rxdbGrupo.ClearValue;
  rxdbFornecedor.ClearValue;
end;

procedure TfrmCadMaterial.SpeedButton8Click(Sender: TObject);
begin
  fDMCadProduto.cdsGrade.Close;
  fDMCadProduto.cdsGrade.Open;
end;

procedure TfrmCadMaterial.DBCheckBox2Click(Sender: TObject);
begin
  Label72.Visible := ((DBCheckBox2.Checked));
  Label73.Visible := ((DBCheckBox2.Checked));
end;

procedure TfrmCadMaterial.prc_Habilita;
var
  i: Integer;
  vTexto: String;
begin
  TS_Consulta.TabEnabled      := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);
  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled         := not(pnlCadastro.Enabled);
  pnlCadastro_Forn.Enabled    := not(pnlCadastro_Forn.Enabled);
  btnInserir_Uni.Enabled      := not(btnInserir_Uni.Enabled);
  btnAlterar_Uni.Enabled      := not(btnAlterar_Uni.Enabled);
  btnExcluir_Uni.Enabled      := not(btnExcluir_Uni.Enabled);

  pnlFiscal.Enabled            := not(pnlFiscal.Enabled);
  pnlOpcoes.Enabled            := not(pnlOpcoes.Enabled);

  DBMemo1.ReadOnly           := not(DBMemo1.ReadOnly);
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    vTexto := SMDBGrid2.Columns[i].FieldName;
    if (vTexto = 'COD_MATERIAL_FORN') or (vTexto = 'TAMANHO_CLIENTE') or (vTexto = 'NOME_MATERIAL_FORN') then
      SMDBGrid2.Columns[i].ReadOnly := not(SMDBGrid2.Columns[i].ReadOnly);
  end;
  VDBGrid1.Columns[1].ReadOnly := not(VDBGrid1.Columns[1].ReadOnly);
  VDBGrid1.Columns[4].ReadOnly := not(VDBGrid1.Columns[4].ReadOnly);
  VDBGrid1.Columns[5].ReadOnly := not(VDBGrid1.Columns[5].ReadOnly);
end;

procedure TfrmCadMaterial.RxDBLookupCombo5CloseUp(Sender: TObject);
begin
  RxDBLookupCombo5.LookupDisplay := 'NOME';
end;

procedure TfrmCadMaterial.RxDBLookupCombo5DropDown(Sender: TObject);
begin
  RxDBLookupCombo5.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadMaterial.rxdbGrupoDropDown(Sender: TObject);
begin
  rxdbGrupo.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadMaterial.RxDBComboBox7Exit(Sender: TObject);
begin
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and (fDMCadProduto.cdsProduto.State in [dsInsert]) and
     (copy(fDMCadProduto.cdsProdutoREFERENCIA.AsString,2,1) = '.') then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := '';
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '04'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '06'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '01'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'C' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '07'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'I' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '08';
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') then
  begin
    if (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Cor(fDMCadProduto.cdsProdutoID.AsInteger);
  end
  else
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and ((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) then
  begin
    if fDMCadProduto.qParametrosEMPRESA_AMBIENTES.AsString = 'S' then
      fDMCadProduto.prc_Abrir_Matriz(fDMCadProduto.cdsProdutoID.AsInteger);
    if fDMCadProduto.qParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
    begin
      fDMCadProduto.prc_Abrir_Comissao(fDMCadProduto.cdsProdutoID.AsInteger);
      fDMCadProduto.prc_Abrir_Comissao_Vend(fDMCadProduto.cdsProdutoID.AsInteger);
    end;
    if fDMCadProduto.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
      fDMCadProduto.prc_Abrir_Produto_Lote(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosUSA_COD_BARRAS_PROPRIO.AsString = 'S') and (fDMCadProduto.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') then
      fDMCadProduto.prc_Abrir_CBarra(fDMCadProduto.cdsProdutoID.AsInteger);
    if fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'B' then
      fDMCadProduto.prc_Abrir_Produto_Comb(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosMOSTRAR_EMBALAGEM.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Emb(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametrosMOSTRAR_ATELIER_PROD.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Atelier(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametros_ProdUSA_MAQUINA.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_Maq(fDMCadProduto.cdsProdutoID.AsInteger);
    if (fDMCadProduto.qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S') then
      fDMCadProduto.prc_Abrir_Produto_MatTam(fDMCadProduto.cdsProdutoID.AsInteger);
    if fDMCadProduto.qParametrosUSA_CARIMBO.AsString = 'S' then
      fDMCadProduto.prc_Abrir_Produto_Carimbo(fDMCadProduto.cdsProdutoID.AsInteger);
  end;
  prc_Combinacao;
end;

procedure TfrmCadMaterial.RxDBLookupCombo1Change(Sender: TObject);
begin
  Label98.Visible  := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  DBEdit49.Visible := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  Label99.Visible  := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
  DBEdit50.Visible := (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> '0');
end;

procedure TfrmCadMaterial.SpeedButton3Click(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if ListBox1.Visible then
  begin
    ListBox1.Visible := False;
    exit;
  end;
  if RxDBLookupCombo3.Text <> '' then
    fDMCadProduto.cdsNCM.Locate('ID',RxDBLookupCombo3.KeyValue,([Locaseinsensitive]))
  else
    exit;
  ListBox1.Height := 65;
  ListBox1.Items.Clear;
  ListBox1.Items.Add('EX  -  Descrição');
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'SELECT * FROM TAB_IBPT ' +
                       'WHERE CODIGO = ' + QuotedStr(fDMCadProduto.cdsNCMNCM.AsString) +
                       ' AND EX <> ' + QuotedStr('');
  sds.Open;
  sds.First;
  while not sds.Eof do
  begin
    ListBox1.Items.Add(sds.FieldByName('EX').AsString + ' - ' + sds.FieldByName('NOME').AsString);
    sds.Next;
  end;
  FreeAndNil(sds);

  ListBox1.Visible := True;
  ListBox1.SetFocus;
end;

procedure TfrmCadMaterial.ListBox1DblClick(Sender: TObject);
var
  vTexto: String;
begin
  if ListBox1.ItemIndex = 0 then
    exit;
  vTexto := ListBox1.Items[ListBox1.ItemIndex];
  fDMCadProduto.cdsProdutoNCM_EX.AsString := copy(vTexto,1,2);
  DBEdit51.SetFocus;
  ListBox1.Visible := False;
end;

procedure TfrmCadMaterial.ListBox1Exit(Sender: TObject);
begin
  ListBox1.Visible := False;
end;

procedure TfrmCadMaterial.DBEdit51Exit(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if trim(DBEdit51.Text) = '' then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'SELECT * FROM TAB_IBPT '
                     + 'WHERE CODIGO = ' + QuotedStr(fDMCadProduto.cdsNCMNCM.AsString)
                     + ' AND EX = ' + QuotedStr(DBEdit51.Text);
  sds.Open;
  if sds.IsEmpty then
  begin
    MessageDlg('*** Excessão não encontrada na NCM, favor verificar!', mtError, [mbOk], 0);
    DBEdit51.SetFocus;
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadMaterial.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    ListBox1DblClick(Sender);
end;

procedure TfrmCadMaterial.SpeedButton11Click(Sender: TObject);
begin
  fDMCadProduto.cdsSitTribCf.Close;
  fDMCadProduto.cdsSitTribCf.Open;
end;

procedure TfrmCadMaterial.DBEdit7Exit(Sender: TObject);
var
  vAux: Integer;
begin
  if (trim(DBEdit7.Text) = '') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString <> '') then
  begin
    vAux := fDMCadProduto.fnc_Referencia_Proxima_Seq(fDMCadProduto.cdsProdutoTIPO_REG.AsString);
    fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
    fDMCadProduto.cdsProdutoREFERENCIA.AsString      := fDMCadProduto.cdsProdutoTIPO_REG.AsString + '.' +FormatFloat('000000',fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
  end;
  if ((trim(DBEdit7.Text) <> '') and ((trim(fDMCadProduto.cdsProdutoREFERENCIA_PADRAO.AsString) = '')) or (fDMCadProduto.cdsProduto.State in [dsInsert])
     or (DBEdit7.Text <> vReferencia_Ant)) then
    fDMCadProduto.cdsProdutoREFERENCIA_PADRAO.AsString := DBEdit7.Text;
  if (trim(DBEdit7.Text) <> '') and (Copy(DBEdit7.Text,1,2) <> fDMCadProduto.cdsProdutoTIPO_REG.AsString + '.') then
    fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := 0;
end;

procedure TfrmCadMaterial.btnInserir_UniClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;
  if trim(fDMCadProduto.cdsProdutoUNIDADE.AsString) = '' then
  begin
    MessageDlg('*** Unidade de medida não foi informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadProduto.prc_Inserir_ProdUNI;

  ffrmCadProduto_UNI := TfrmCadProduto_UNI.Create(self);
  ffrmCadProduto_UNI.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_UNI.ShowModal;

  FreeAndNil(ffrmCadProduto_UNI);
end;

procedure TfrmCadMaterial.btnAlterar_UniClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto_UniItem.AsInteger < 1) or not(fDMCadProduto.cdsProduto_Uni.Active) or
     (fDMCadProduto.cdsProduto_Uni.IsEmpty) then
    exit;

  fDMCadProduto.cdsProduto_Uni.Edit;

  ffrmCadProduto_Uni := TfrmCadProduto_Uni.Create(self);
  ffrmCadProduto_Uni.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Uni.ShowModal;

  FreeAndNil(ffrmCadProduto_Uni);
end;

procedure TfrmCadMaterial.btnExcluir_UniClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Uni.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Uni.Delete;
end;

procedure TfrmCadMaterial.RxDBLookupCombo2Enter(Sender: TObject);
begin
  RxDBLookupCombo2.ReadOnly := not(fDMCadProduto.cdsProduto_Uni.IsEmpty);
end;

procedure TfrmCadMaterial.SMDBGrid7DblClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Uni.IsEmpty then
    exit;
  ffrmCadProduto_Uni := TfrmCadProduto_Uni.Create(self);
  ffrmCadProduto_Uni.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Uni.RxDBLookupCombo2.ReadOnly := True;
  ffrmCadProduto_Uni.BitBtn1.Enabled           := False;
  ffrmCadProduto_Uni.ShowModal;
  FreeAndNil(ffrmCadProduto_Uni);
end;

procedure TfrmCadMaterial.btnAlterar_NomeClick(Sender: TObject);
var
  sds: TSQLDataSet;
  vFlag: Boolean;
  ffrmSenha: TfrmSenha;
  vMsgSenha: String;
begin
  vAltera_Nome := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(M.ID_PRODUTO) CONTADOR, '
                     + ' (SELECT COUNT(E.ID_PRODUTO) FROM ESTOQUE_MOV E  '
                     + '  WHERE E.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger)
                     + '    AND (e.tipo_mov = ' + QuotedStr('NTS')
                     + '     OR E.tipo_mov = ' + QuotedStr('NTE')
                     + '     OR E.tipo_mov = ' + QuotedStr('CFI')
                     + '     OR E.tipo_mov = ' + QuotedStr('NFC')
                     + ' )) CONTADOR2 '
                     + ', (SELECT COUNT(PI.ID_PRODUTO) FROM PEDIDO_ITEM PI '
                     + ' WHERE PI.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger)
                     + '   AND PI.qtd_restante > 0 ) CONTADOR3 '
                     + ' FROM MOVIMENTO M '
                     + ' WHERE M.ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProdutoID.AsInteger);
    sds.Open;
    vMsgSenha := '';
    if (sds.FieldByName('CONTADOR').AsInteger > 0) then
      vMsgSenha := '*** Esse produto possui pedido em aberto, '
    else
    if (sds.FieldByName('CONTADOR2').AsInteger > 0) or (sds.FieldByName('CONTADOR3').AsInteger > 0)then
      vMsgSenha := '*** Esse produto já teve movimentação, ';

    if (sds.FieldByName('CONTADOR').AsInteger > 0) or (sds.FieldByName('CONTADOR2').AsInteger > 0) or (sds.FieldByName('CONTADOR3').AsInteger > 0)  then
    begin
      vFlag := False;
      if (trim(fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.AsString) = '') or (fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.IsNull) then
      begin
        MessageDlg(vMsgSenha + 'para alterar nome/referência precisa informar a senha!' + #13 +
                   '*** Senha não cadastrada para alterar o Nome/Referência!', mtInformation, [mbOk], 0);
        vFlag := True;
      end
      else
      begin
        ffrmSenha := TfrmSenha.Create(self);
        if (sds.FieldByName('CONTADOR3').AsInteger > 0) then
          ffrmSenha.Label2.Caption := 'Produto com pedido em aberto!'
        else
          ffrmSenha.Label2.Caption := 'Produto com movimentação!';
        ffrmSenha.Label3.Caption := 'Informe a senha para alterar';
        ffrmSenha.Label4.Caption := ' Nome/Referência: ';
        ffrmSenha.vControlaSenha := True;
        ffrmSenha.vSenha_Param := fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.AsString;
        ffrmSenha.ShowModal;
        FreeAndNil(ffrmSenha);
        if vSenha <>  fDMCadProduto.qParametros_ProdSENHA_ALT_PROD_MOV.AsString then
          vFlag := True;
      end;
      DBEdit2.ReadOnly := vFlag;
      DBEdit7.ReadOnly := vFlag;
      if not vFlag then
      begin
        vAltera_Nome := True;
        DBEdit2.SetFocus;
      end;
    end
    else
    begin
      DBEdit2.ReadOnly := False;
      DBEdit7.ReadOnly := False;
      DBEdit2.SetFocus;
    end;
    sds.Close;

  except
    on e: Exception do
      begin
        raise Exception.Create(e.Message);
      end;
  end;
  FreeAndNil(sds);
end;

procedure TfrmCadMaterial.DBEdit1Change(Sender: TObject);
var
  vAux: Real;
begin
  vAux := 0;
  if trim(DBEdit1.Text) <> '' then
    vAux := StrToFloat(DBEdit1.Text);
end;

procedure TfrmCadMaterial.DBEdit7Enter(Sender: TObject);
begin
  vReferencia_Ant  := fDMCadProduto.cdsProdutoREFERENCIA.AsString;
  if fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S' then
    DBEdit7.SelStart := Length(DBEdit7.Text) + 1;
end;

procedure TfrmCadMaterial.RxDBComboBox7Enter(Sender: TObject);
begin
  vTipo_Reg_Ant := fDMCadProduto.cdsProdutoTIPO_REG.AsString;
  if not fnc_Verificar_Tipo then
    DBEdit7.SetFocus;
end;

procedure TfrmCadMaterial.prc_Combinacao;
begin
  btnCor2.Visible        := ((((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'C'))  and
                           (fDMCadProduto.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S')) or (((fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or
                           (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S')) and (fDMCadProduto.qParametrosINFORMAR_COR_PROD.AsString = 'C')));
end;

procedure TfrmCadMaterial.SpeedButton12Click(Sender: TObject);
begin
  fDMCadProduto.cdsLinha.Close;
  fDMCadProduto.cdsLinha.Open;
end;

procedure TfrmCadMaterial.DBEdit58Exit(Sender: TObject);
var
  vIDAux: String;
begin
  StaticText2.Visible := False;
  if (trim(DBEdit58.Text) = '') or (trim(DBEdit58.Text) = '0') then
    prc_Abrir_qConta_Orcamento(0)
  else
  begin
    prc_Abrir_qConta_Orcamento(StrToInt(DBEdit58.Text));
    if fDMCadProduto.qConta_Orcamento.IsEmpty then
    begin
      MessageDlg('*** ID Conta de orçamento não cadastrada', mtError, [mbOk], 0);
      DBEdit58.SetFocus;
    end;
  end;
end;

procedure TfrmCadMaterial.prc_Abrir_qConta_Orcamento(ID: Integer);
begin
  edtNome_Orcamento.Clear;
  if ID <= 0 then
    exit;
  fDMCadProduto.qConta_Orcamento.Close;
  fDMCadProduto.qConta_Orcamento.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.qConta_Orcamento.Open;
  edtNome_Orcamento.Text := fDMCadProduto.qConta_OrcamentoDESCRICAO.AsString;
end;

procedure TfrmCadMaterial.DBEdit58KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ComboBox2.ItemIndex := 2;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.Clear;
    prc_Abrir_qConta_Orcamento(fDMCadProduto.cdsProdutoID_CONTA_ORCAMENTO.AsInteger);
  end;
end;

function TfrmCadMaterial.fnc_Verificar_Tipo: Boolean;
begin
  Result := True;
  if fDMCadProduto.qParametros_ProdCONT_TIPO_PROD.AsString = 'S' then
  begin
    if (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') then
    begin
      if (fDMCadProduto.cdsProduto_Cor.Active) and not(fDMCadProduto.cdsProduto_Cor.IsEmpty) then
        Result := False;
    end
    else
    if (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P') or (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S') then
    begin
      if (fDMCadProduto.cdsProduto_Comb.Active) and not(fDMCadProduto.cdsProduto_Comb.IsEmpty) then
        Result := False
      else
      if fDMCadProduto.cdsProdutoID_LINHA.AsInteger > 0 then
        Result := False;
    end;
  end;
end;

procedure TfrmCadMaterial.btnCorClick(Sender: TObject);
var
  vPreco : Real;
begin
  fDMCadProduto.prc_Abrir_Cor_Combinacao('C');
  ffrmCadProduto_Cor := TfrmCadProduto_Cor.Create(self);
  ffrmCadProduto_Cor.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Cor.ShowModal;
  FreeAndNil(ffrmCadProduto_Cor);
  if (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) and (fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M') and (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
  begin
    vPreco := 0;
    fDMCadProduto.cdsProduto_Cor.First;
    while not fDMCadProduto.cdsProduto_Cor.Eof do
    begin
      if StrToFloat(FormatFloat('0.000000',fDMCadProduto.cdsProduto_CorPRECO_CUSTO.AsFloat)) > StrToFloat(FormatFloat('0.000000',vPreco)) then
        vPreco := StrToFloat(FormatFloat('0.000000',fDMCadProduto.cdsProduto_CorPRECO_CUSTO.AsFloat));
      fDMCadProduto.cdsProduto_Cor.Next;
    end;
    if StrToFloat(FormatFloat('0.000000',vPreco)) > 0 then
      fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat := StrToFloat(FormatFloat('0.000000',vPreco));
  end;
end;

procedure TfrmCadMaterial.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsumoclTIPO_REG.AsString = 'S' then
    AFont.Color := clBlue
  else
  if fDMCadProduto.cdsProduto_ConsumoESPECIFICO.AsString = 'S' then
    AFont.Color := clGreen;
end;

procedure TfrmCadMaterial.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString <> vOrigem_Ant) or (fDMCadProduto.cdsProduto.State in [dsInsert]) then
  begin
    if (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '1') or (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '2') or
       (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '3') or (fDMCadProduto.cdsProdutoORIGEM_PROD.AsString = '8') then
      fDMCadProduto.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'S'
    else
      fDMCadProduto.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'N';
  end;
end;

procedure TfrmCadMaterial.RxDBLookupCombo1Enter(Sender: TObject);
begin
  vOrigem_Ant := fDMCadProduto.cdsProdutoORIGEM_PROD.AsString;
end;

procedure TfrmCadMaterial.edtCod_EnqIPIKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 27) then
  begin
   fDMCadProduto.cdsProdutoID_ENQIPI.Clear;
   edtCod_EnqIPI.Clear;
  end
  else
  if (Key = Vk_F2) then
  begin
    viD_EnqIPI_Pos := fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger;
    frmSel_EnqIPI := TfrmSel_EnqIPI.Create(Self);
    frmSel_EnqIPI.ShowModal;
    if viD_EnqIPI_Pos > 0 then
      fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger := viD_EnqIPI_Pos
    else
      fDMCadProduto.cdsProdutoID_ENQIPI.Clear;
    edtCod_EnqIPI.Clear;
    prc_Abrir_EnqIPI(fDMCadProduto.cdsProdutoID_ENQIPI.AsInteger);
    edtCod_EnqIPI.Text := fDMCadProduto.qEnqIPICODIGO.AsString;
  end;
end;

procedure TfrmCadMaterial.prc_Abrir_EnqIPI(ID: Integer);
begin
  fDMCadProduto.qEnqIPI.Close;
  fDMCadProduto.qEnqIPI.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.qEnqIPI.Open;
end;

procedure TfrmCadMaterial.DBEdit60KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmSel_CodCest: TfrmSel_CodCest;
begin
  if (Key = Vk_F2) then
  begin
    vCodCest_Pos := fDMCadProduto.cdsProdutoCOD_CEST.AsString;
    ffrmSel_CodCest := TfrmSel_CodCest.Create(Self);
    ffrmSel_CodCest.ShowModal;
    if vCodCest_Pos <> '' then
      fDMCadProduto.cdsProdutoCOD_CEST.AsString := vCodCest_Pos
    else
      fDMCadProduto.cdsProdutoCOD_CEST.Clear;
  end;
end;

procedure TfrmCadMaterial.DBEdit60Exit(Sender: TObject);
begin
  if trim(fDMCadProduto.cdsProdutoCOD_CEST.AsString) <> '' then
  begin
    fDMCadProduto.qCest.Close;
    fDMCadProduto.qCest.ParamByName('COD_CEST').AsString := fDMCadProduto.cdsProdutoCOD_CEST.AsString;
    fDMCadProduto.qCest.Open;
    if fDMCadProduto.qCest.IsEmpty then
    begin
      MessageDlg('*** Código do CEST não encontrado na tabela! ', mtError, [mbOk], 0);
      DBEdit60.SetFocus;
      exit;
    end;
  end;
end;

function TfrmCadMaterial.fnc_Filial: Boolean;
begin
  Result := True;
  if fDMCadProduto.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
  begin
    fDMCadProduto.cdsFilial.First;
    if fDMCadProduto.cdsFilial.RecordCount = 1 then
      vFilial := fDMCadProduto.cdsFilialID.AsInteger
    else
      prc_Escolhe_Filial;
    if vFilial <= 0 then
      Result := False
    else
    if not fDMCadProduto.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then

    begin
      Result := False;
      ShowMessage('Filial não encontrada!');
    end;
  end;
end;

procedure TfrmCadMaterial.prc_Gravar_Produto_Cad_Ant;
var
  vItemAux: Integer;
begin
  fDMCadProduto.cdsProduto_Cad_Ant.Last;
  vItemAux := fDMCadProduto.cdsProduto_Cad_AntITEM.AsInteger;

  fDMCadProduto.cdsProduto_Cad_Ant.Insert;
  fDMCadProduto.cdsProduto_Cad_AntID.AsInteger        := fDMCadProduto.cdsProdutoID.AsInteger;
  fDMCadProduto.cdsProduto_Cad_AntITEM.AsInteger      := vItemAux + 1;
  fDMCadProduto.cdsProduto_Cad_AntDATA.AsDateTime     := Date;
  fDMCadProduto.cdsProduto_Cad_AntHora.AsDateTime     := Now;
  fDMCadProduto.cdsProduto_Cad_AntNOME.AsString       := vNome_Cad_Ant;
  fDMCadProduto.cdsProduto_Cad_AntREFERENCIA.AsString := vReferencia_Cad_Ant;
  fDMCadProduto.cdsProduto_Cad_AntUSUARIO.AsString    := vUsuario;
  fDMCadProduto.cdsProduto_Cad_Ant.Post;
  fDMCadProduto.cdsProduto_Cad_Ant.ApplyUpdates(0);
end;

procedure TfrmCadMaterial.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmCadProduto_Cad_Ant: TfrmCadProduto_Cad_Ant;
  vId: Integer;
  vTipoReg, vIndexName: String;
begin
  if (Key = Vk_F3) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    ffrmCadProduto_Cad_Ant := TfrmCadProduto_Cad_Ant.Create(self);
    ffrmCadProduto_Cad_Ant.fDMCadProduto := fDMCadProduto;
    fDMCadProduto.prc_Abrir_Produto_Cad_Ant(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
    ffrmCadProduto_Cad_Ant.ShowModal;
    FreeAndNil(ffrmCadProduto_Cad_Ant);
  end
  else
  if (Key = Vk_F6) and not(fDMCadProduto.cdsProduto_Consulta.IsEmpty) then
  begin
    case ComboBox2.ItemIndex of
      0: vTipoReg := 'P';
      1: vTipoReg := 'M';
      3: vTipoReg := 'C';
      5: vTipoReg := 'S';
    end;
    vIndexName := fDMCadProduto.cdsProduto_Consulta.IndexFieldNames;
    vId := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
    ceID.AsInteger := vId;
    ffrmConsEstoque_Mov := TfrmConsEstoque_Mov.Create(self);
    vControleExterno    := True;
    ffrmConsEstoque_Mov.ceIDProduto.AsInteger := ceID.AsInteger;
    ffrmConsEstoque_Mov.edtRef.Text := edtReferencia.Text;
    ffrmConsEstoque_Mov.WindowState := wsMaximized;
    ffrmConsEstoque_Mov.ShowModal;
    FreeAndNil(frmConsEstoque_Mov);
    ceID.Clear;
  end;
end;

procedure TfrmCadMaterial.prc_Aplicar_Margem;
var
  vAux: Real;
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) <= 0) then
    exit;
  vPreco_Venda_Ant := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat));
  if (fDMCadProduto.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString = 'C') then
  begin
    if StrToFloat(formatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat)) <= 0 then
      exit;
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat *
                                                              fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100) +
                                                              fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat));
  end
  else
  begin
    if StrToFloat(formatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat)) <= 0 then
      exit;
    fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.00000',(fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat *
                                                              fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100) +
                                                              fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat));
  end;
end;

procedure TfrmCadMaterial.DBEdit3Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadMaterial.DBEdit57Exit(Sender: TObject);
begin
  prc_Aplicar_Margem;
end;

procedure TfrmCadMaterial.DBEdit2Exit(Sender: TObject);
begin
  if copy(fdmCadProduto.cdsProdutoNOME.AsString,1,1) = ' ' then
    fdmCadProduto.cdsProdutoNOME.AsString := TrimLeft(fdmCadProduto.cdsProdutoNOME.AsString);
end;

procedure TfrmCadMaterial.DBEdit10Exit(Sender: TObject);
begin
  Label161.Visible          := (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0);
  RxDBLookupCombo20.Visible := (StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0);
  if StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPERC_REDUCAOICMS.AsFloat)) <= 0 then
    fDMCadProduto.cdsProdutoID_CSTICMS_BRED.Clear;
end;

procedure TfrmCadMaterial.btnGradeRefClick(Sender: TObject);
var
  ffrmCadProduto_GradeNum: TfrmCadProduto_GradeNum;
  ffrmCadProduto_GradeRefTam : TfrmCadProduto_GradeRefTam;
begin
  if (fDMCadProduto.cdsProdutoID.AsInteger < 1) or not(fDMCadProduto.cdsProduto.Active) then
    exit;

  if fDMCadProduto.qParametros_ProdUSA_TAM_REFER_GRADE.AsString = 'S' then
  begin
    ffrmCadProduto_GradeRefTam := TfrmCadProduto_GradeRefTam.Create(self);
    ffrmCadProduto_GradeRefTam.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_GradeRefTam.ShowModal;
    FreeAndNil(ffrmCadProduto_GradeRefTam);
  end
  else
  begin
    ffrmCadProduto_GradeNum := TfrmCadProduto_GradeNum.Create(self);
    ffrmCadProduto_GradeNum.fDMCadProduto := fDMCadProduto;
    ffrmCadProduto_GradeNum.ShowModal;
    FreeAndNil(ffrmCadProduto_GradeNum);
  end;
end;

procedure TfrmCadMaterial.DBEdit5Enter(Sender: TObject);
begin
  vPreco_Venda_Ant := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat));
end;

procedure TfrmCadMaterial.prc_Atualiza_Percentual;
var
  vPercentual, vValorCusto, vValorVenda: Real;
begin
   if (fDMCadProduto.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString = 'C') then
     vValorCusto := fDMCadProduto.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat
   else
     vValorCusto := fDMCadProduto.cdsProdutoPRECO_CUSTO.AsFloat;
   vValorVenda := fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat;
   if (vValorCusto <= 0) or (vValorVenda <= 0) then
    exit;
   vPercentual := (vValorVenda - vValorCusto) / vValorCusto * 100;
   fDMCadProduto.cdsProdutoPERC_MARGEMLUCRO.AsFloat := StrToFloat(FormatFloat('0.00',vPercentual));
end;

procedure TfrmCadMaterial.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  if vUser_Exclui then
    begin
    if fDMCadProduto.qParametros_ProdEXCLUI_PROD_SEL.AsString = 'S' then
      btnExcluir.Enabled := (SMDBGrid1.SelectedRows.Count > 0)
    else
      btnExcluir.Enabled := (SMDBGrid1.SelectedRows.Count = 1);
  end;
end;

function TfrmCadMaterial.fnc_Duplicidade_Mat(ID_Prod : Integer): String;
var
  sds: TSQLDataSet;
begin
  Result := '';

  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT AUX.* '
                       + ' FROM ( SELECT COUNT(1) CONTADOR , P.id_material, P.id_posicao, MAT.NOME NOME_MATERIAL, '
                       + '        PS.NOME NOME_POSICAO '
                       + '         FROM PRODUTO_CONSUMO P '
                       + '         INNER JOIN PRODUTO MAT '
                       + '         ON P.id_material = MAT.ID '
                       + '         INNER JOIN POSICAO PS '
                       + '         ON P.id_posicao = PS.ID '
                       + '         WHERE P.ID = :ID '
                       + '         GROUP BY P.id_material, P.id_posicao, MAT.NOME, PS.NOME ) AUX '
                       + ' WHERE CONTADOR > 1 ';
    sds.ParamByName('ID').AsInteger := ID_Prod;
    sds.Open;
    if not sds.IsEmpty then
      Result := 'Material: ' + sds.FieldByName('NOME_MATERIAL').AsString + ' - Posição: ' + sds.FieldByName('NOME_POSICAO').AsString;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadMaterial.SMDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmCadProduto_Consumo_Proc : TfrmCadProduto_Consumo_Proc;
begin
  if (Key = Vk_F3) then
  begin
    if (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]) and (fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger > 0) then
    begin
      fDMCadProduto.prc_Inserir_Produto_Consumo_Proc;
      ffrmCadProduto_Consumo_Proc := TfrmCadProduto_Consumo_Proc.Create(self);
      ffrmCadProduto_Consumo_Proc.fDMCadProduto := fDMCadProduto;
      ffrmCadProduto_Consumo_Proc.ShowModal;
      FreeAndNil(ffrmCadProduto_Consumo_Proc);
    end;
  end;
end;

procedure TfrmCadMaterial.SpeedButton16Click(Sender: TObject);
var
  ffrmCadGrade: TfrmCadGrade;
begin
  ffrmCadGrade := TfrmCadGrade.Create(self);
  ffrmCadGrade.ShowModal;
  FreeAndNil(ffrmCadGrade);
  fDMCadProduto.cdsGrade.Close;
  fDMCadProduto.cdsGrade.Open;
end;

end.

