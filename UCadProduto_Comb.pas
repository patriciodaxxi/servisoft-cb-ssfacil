unit UCadProduto_Comb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls, UCadCor, 
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, Grids, DBGrids, SMDBGrid, NxCollection, RzDBBnEd, ExtDlgs, 
  UCadProduto_Comb_Mat, UCadCombinacao, RzDBSpin, RzEdit, RzDBEdit, SqlExpr;

type
  TfrmCadProduto_Comb = class(TForm)
    Panel3: TPanel;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    btnCopiarComb_Ref: TNxButton;
    pnlDados: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    pnlItem: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnCopiarCombinacao: TNxButton;
    SMDBGrid2: TSMDBGrid;
    btnImprimir: TNxButton;
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    DBEdi4: TDBEdit;
    BitBtn20: TBitBtn;
    Label107: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    btnCopiarPrincipal: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCopiarCombinacaoClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnCopiarComb_RefClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure btnCopiarPrincipalClick(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto_Comb_Mat: TfrmCadProduto_Comb_Mat;
    ffrmCadCor: TfrmCadCor;
    ffrmCadCombinacao: TfrmCadCombinacao;
    vInserir: Boolean;
    vNome_Comb_Ant: String;

    function  fnc_Erro: Boolean;
    procedure prc_Habilita;
    procedure prc_Chama_SelCombinacao(Nome: String = '');
    procedure prc_Verifica_Combinacao(Consultar: Boolean = True);
    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_Duplica_Produto_Comb;
    function fnc_Verifica_Duplicidade_Prod_Comb(ID : Integer; Item : Integer) : Boolean;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;     
  end;

var
  frmCadProduto_Comb: TfrmCadProduto_Comb;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, USel_Combinacao, StdConvs, DmdDatabase, Math, StrUtils, UCopiar_Comb,
  UAltProd;

{$R *.dfm}

procedure TfrmCadProduto_Comb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Comb.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Comb.Cancel;
  fDMCadProduto.cdsProduto_Comb.AfterScroll := nil;
  Action := Cafree;
end;

procedure TfrmCadProduto_Comb.FormShow(Sender: TObject);
var
  i: Integer;
  vTexto: String;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnCopiarComb_Ref.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);

  fDMCadProduto.cdsProduto_Comb.AfterScroll := prc_scroll;

  try
    Image1.Picture := Nil;
    if fDMCadProduto.cdsProduto_CombFOTO.AsString <> '' then
      Image1.Picture.LoadFromFile(fDMCadProduto.cdsProduto_CombFOTO.AsString);
  except
  end;

  Label5.Visible  := ((fDMCadProduto.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S') and (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S'));
  DBEdit1.Visible := ((fDMCadProduto.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S') and (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S'));
  if DBEdit1.Visible then
    pnlDados.Height := 82
  else
    pnlDados.Height := 66;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    vTexto := SMDBGrid2.Columns[i].FieldName;
    if (vTexto = 'QTD_CONSUMO') or (vTexto = 'UNIDADE') or (vTexto = 'IMP_TALAO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S');
    if (fDMCadProduto.qParametrosUSA_POSICAO_CONSUMO.AsString <> 'S') and (SMDBGrid2.Columns[i].FieldName = 'clNome_Posicao') then
      SMDBGrid2.Columns[i].Visible := False;
    if (fDMCadProduto.qParametrosUSA_SETOR_CONSUMO.AsString <> 'S') and (SMDBGrid2.Columns[i].FieldName = 'clSetor') then
      SMDBGrid2.Columns[i].Visible := False;
  end;
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    vTexto := SMDBGrid1.Columns[i].FieldName;
    if (vTexto = 'PRECO_VENDA') then
      SMDBGrid1.Columns[i].Visible := ((fDMCadProduto.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S') and (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S'));
  end;
  DBEdit3.Visible          := (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S');
  //DBEdit3.Visible          := (fDMCadProduto.qParametros_LoteUSA_COR_COMB.AsString <> 'S');
  RxDBLookupCombo1.Visible := ((fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (fDMCadProduto.qParametros_LoteUSA_COR_COMB.AsString = 'S'));
end;

function TfrmCadProduto_Comb.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if trim(fDMCadProduto.cdsProduto_CombNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome da combinação não informada!';
  if Trim(vMsgErro) = '' then
  begin
    if fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
      if MessageDlg('Material não informado, deseja confirmar assim mesmo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        vMsgErro := vMsgErro + #13 + '*** Material não informado!';
  end;
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Comb.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadProduto_Comb.btnConfirmarClick(Sender: TObject);
var
  vObsMaterial : String;
begin
  if fnc_Erro then
    exit;
  try
   vObsMaterial := '';
    if fDMCadProduto.qParametros_ProdGRAVAR_PRIMEIRO_MAT.AsString = 'S' then
    begin
      fDMCadProduto.mAux.EmptyDataSet;
      SMDBGrid2.DisableScroll;
      fDMCadProduto.cdsProduto_Comb_Mat.First;
      while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      begin
        if fDMCadProduto.cdsProduto_Comb_MatclPrimeiro_Mat.AsString = 'S' then
        begin
          fDMCadProduto.mAux.Insert;
          fDMCadProduto.mAuxNomePosicao.AsString  := fDMCadProduto.cdsProduto_Comb_MatclNome_Posicao.AsString;
          fDMCadProduto.mAuxNomeMaterial.AsString := fDMCadProduto.cdsProduto_Comb_MatclNome_Material.AsString;
          fDMCadProduto.mAuxNomeCor.AsString      := fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString;
          fDMCadProduto.mAux.Post;
        end;
        fDMCadProduto.cdsProduto_Comb_Mat.Next;
      end;
      SMDBGrid2.EnableScroll;

      fDMCadProduto.mAux.IndexFieldNames := 'NomePosicao';
      fDMCadProduto.mAux.First;
      while not fDMCadProduto.mAux.Eof do
      begin
        if trim(vObsMaterial) <> '' then
          vObsMaterial := vObsMaterial + ' / ';
        vObsMaterial := vObsMaterial + fDMCadProduto.mAuxNomeMaterial.AsString + ' ' + fDMCadProduto.mAuxNomeCor.AsString;
        fDMCadProduto.mAux.Next;
      end;
    end;
    if not(fDMCadProduto.cdsProduto_Comb.State in [dsEdit,dsInsert]) then
      fDMCadProduto.cdsProduto_Comb.Edit;
    if trim(fDMCadProduto.cdsProduto_CombFOTO.AsString) = '' then
      fDMCadProduto.cdsProduto_CombNOME_FOTO.AsString := ''
    else
      fDMCadProduto.cdsProduto_CombNOME_FOTO.AsString := ExtractFileName(fDMCadProduto.cdsProduto_CombFOTO.AsString);
    fDMCadProduto.cdsProduto_CombOBSMATERIAL.AsString := vObsMaterial;
    fDMCadProduto.cdsProduto_Comb.Post;

    prc_Habilita;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_Comb.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Comb);
end;

procedure TfrmCadProduto_Comb.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if vInserir then
  begin
    fDMCadProduto.cdsProduto_Comb_Mat.First;
    while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      fDMCadProduto.cdsProduto_Comb_Mat.Delete;
    fDMCadProduto.cdsProduto_Comb.Delete;
  end
  else
    fDMCadProduto.cdsProduto_Comb.Cancel;

  prc_Habilita;
  SMDBGrid1.SetFocus;
end;

procedure TfrmCadProduto_Comb.btnInserir_ItensClick(Sender: TObject);
begin
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;

  fDMCadProduto.prc_Inserir_ProdCombMat;
  ffrmCadProduto_Comb_Mat := TfrmCadProduto_Comb_Mat.Create(self);
  ffrmCadProduto_Comb_Mat.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Comb_Mat.ShowModal;
  FreeAndNil(ffrmCadProduto_Comb_Mat);
end;

procedure TfrmCadProduto_Comb.btnAlterar_ItensClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
    exit;
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;
  fDMCadProduto.cdsProduto_Comb_Mat.Edit;
  ffrmCadProduto_Comb_Mat := TfrmCadProduto_Comb_Mat.Create(self);
  ffrmCadProduto_Comb_Mat.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Comb_Mat.ShowModal;
  FreeAndNil(ffrmCadProduto_Comb_Mat);
end;

procedure TfrmCadProduto_Comb.btnExcluir_ItensClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
    exit;
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;
  if MessageDlg('Deseja excluir o material selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Comb_Mat.Delete;
end;

procedure TfrmCadProduto_Comb.btnInserirClick(Sender: TObject);
begin
  vInserir := True;
  prc_Habilita;
  prc_Duplica_Produto_Comb;
  fDMCadProduto.prc_Inserir_ProdComb;
  if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (fDMCadProduto.qParametros_LoteUSA_COR_COMB.AsString = 'S') then
    RxDBLookupCombo1.SetFocus
  else
    DBEdit3.SetFocus;
end;

procedure TfrmCadProduto_Comb.prc_Habilita;
begin
  btnInserir.Enabled          := not(btnInserir.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);
  btnExcluir.Enabled          := not(btnExcluir.Enabled);
  btnCopiarComb_Ref.Enabled := not(btnCopiarComb_Ref.Enabled);

  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnCancelar.Enabled         := not(btnCancelar.Enabled);
  pnlDados.Enabled            := not(pnlDados.Enabled);
  btnInserir_Itens.Enabled    := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled    := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled    := not(btnExcluir_Itens.Enabled);
  btnCopiarCombinacao.Enabled := not(btnCopiarCombinacao.Enabled);
  btnCopiarPrincipal.Enabled  := not(btnCopiarPrincipal.Enabled);
  SMDBGrid1.Enabled           := not(SMDBGrid1.Enabled);
end;

procedure TfrmCadProduto_Comb.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb.IsEmpty then
    exit;
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;
  vInserir := False;
  prc_Duplica_Produto_Comb;
  fDMCadProduto.cdsProduto_Comb.Edit;
  prc_Habilita;
  if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') or (fDMCadProduto.qParametros_LoteUSA_COR_COMB.AsString = 'S') then
    RxDBLookupCombo1.SetFocus
  else
    DBEdit3.SetFocus;
end;

procedure TfrmCadProduto_Comb.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a combinação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  if uAltProd.fnc_Custo(fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto) then
    exit;
  fDMCadProduto.cdsProduto_Comb_Mat.First;
  while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
    fDMCadProduto.cdsProduto_Comb_Mat.Delete;
  fDMCadProduto.cdsProduto_Comb.Delete;
end;

procedure TfrmCadProduto_Comb.btnCopiarCombinacaoClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if not fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
  begin
    MessageDlg('*** Já existe material informado na combinação!', mtInformation, [mbOk], 0);
    exit;
  end;
  vItemAux := 0;
  fDMCadProduto.mCombinacaoAux.First;
  while not fDMCadProduto.mCombinacaoAux.Eof do
  begin
    vItemAux := vItemAux + 1;
    fDMCadProduto.prc_Inserir_ProdCombMat;
    fDMCadProduto.cdsProduto_Comb_MatITEM_MAT.AsInteger    := fDMCadProduto.mCombinacaoAuxItem_Mat.AsInteger;
    fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := fDMCadProduto.mCombinacaoAuxID_Material.AsInteger;
    if fDMCadProduto.mCombinacaoAuxID_Cor.AsInteger > 0 then
      fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger := fDMCadProduto.mCombinacaoAuxID_Cor.AsInteger;
    if fDMCadProduto.mCombinacaoAuxID_Posicao.AsInteger > 0 then
      fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger := fDMCadProduto.mCombinacaoAuxID_Posicao.AsInteger;
    if fDMCadProduto.mCombinacaoAuxID_Setor.AsInteger > 0 then
      fDMCadProduto.cdsProduto_Comb_MatID_SETOR.AsInteger := fDMCadProduto.mCombinacaoAuxID_Setor.AsInteger;
    fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString := fDMCadProduto.mCombinacaoAuxNome_Cor.AsString;
    if fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S' then
    begin
      fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.mCombinacaoAuxQtd_Consumo.AsFloat;
      fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.mCombinacaoAuxQtd_Unidade.AsFloat;
      fDMCadProduto.cdsProduto_Comb_MatUNIDADE.AsString    := fDMCadProduto.mCombinacaoAuxUnidade.AsString;
      fDMCadProduto.cdsProduto_Comb_MatIMP_TALAO.AsString  := fDMCadProduto.mCombinacaoAuxImp_Talao.AsString;
      fDMCadProduto.cdsProduto_Comb_MatTINGIMENTO.AsString := fDMCadProduto.mCombinacaoAuxTingimento.AsString;
    end;
    fDMCadProduto.cdsProduto_Comb_Mat.Post;
    fDMCadProduto.mCombinacaoAux.Next;
  end;
end;

procedure TfrmCadProduto_Comb.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_SelCombinacao
  else
  if (Key = Vk_Return) then
    prc_Verifica_Combinacao;
end;

procedure TfrmCadProduto_Comb.prc_Chama_SelCombinacao(Nome: String = '');
begin
  vCodCombinacao_Pos := fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger;
  vNome_Pos          := fDMCadProduto.cdsProduto_CombNOME.AsString;
  frmSel_Combinacao := TfrmSel_Combinacao.Create(Self);
  frmSel_Combinacao.Edit1.Text := Nome;
  frmSel_Combinacao.ShowModal;
  fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger := vCodCombinacao_Pos;
  fDMCadProduto.cdsProduto_CombNOME.AsString               := vNome_Pos;
  //if vCodCombinacao_Pos > 0 then
    //DBEdit1.SetFocus;
end;

procedure TfrmCadProduto_Comb.prc_Verifica_Combinacao(Consultar: Boolean = True);
//var
  //sds: TSQLDataSet;
  //vContadorAux: Integer;
begin
  {sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.CommandText := ' SELECT C.id, C.nome FROM COMBINACAO C WHERE C.TIPO_REG = :TIPO_REG '
                     + ' AND NOME LIKE ' + QuotedStr(DBEdit3.Text+'%');
    sds.ParamByName('TIPO_REG').AsString := 'B';
    sds.Open;
    vContadorAux := 0;
    while not sds.Eof do
    begin
      vContadorAux := vContadorAux + 1;
      sds.Next;
    end;
    if vContadorAux = 1 then
    begin
      sds.First;
      fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger := sds.FieldByName('ID').AsInteger;
      fDMCadProduto.cdsProduto_CombNOME.AsString               := sds.FieldByName('NOME').AsString;
    end
    else
    if Consultar then
    begin
      if vContadorAux = 0 then
        fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger := 0
      else
      begin
        vCodCombinacao_Pos := 0;
        prc_Chama_SelCombinacao(DBEdit3.Text);
        fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger := vCodCombinacao_Pos;
        DBEdit1Exit(DBEdit1);
      end;
    end
    else
      fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger := 0;
    sds.Close;

  finally
    FreeAndNil(sds);
  end;}
end;

procedure TfrmCadProduto_Comb.DBEdit3Enter(Sender: TObject);
begin
  vNome_Comb_Ant := DBEdit3.Text;
end;

procedure TfrmCadProduto_Comb.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if fnc_Verifica_Duplicidade_Prod_Comb(fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger,fDMCadProduto.cdsProduto_CombITEM.asInteger) then
  begin
    MessageDlg('***** Combinação já existe no item ' + IntToStr(fDMCadProduto.cdsCloneProdCombITEM.AsInteger),mtError,[mbOK],0);
    RxDBLookupCombo1.Value := '';
    RxDBLookupCombo1.SetFocus;
  end;
  fDMCadProduto.cdsProduto_CombNOME.AsString := RxDBLookupCombo1.Text;
end;

procedure TfrmCadProduto_Comb.SpeedButton2Click(Sender: TObject);
begin
  //09/04/2018 foi colocado o IF para mostrar a cor ou a combinação  (até 27/03/2018 abria só a cor)
  if (fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S') then
  begin
    ffrmCadCor := TfrmCadCor.Create(self);
    ffrmCadCor.ShowModal;
    FreeAndNil(ffrmCadCor);
  end
  else
  begin
    ffrmCadCombinacao := TfrmCadCombinacao.Create(self);
    ffrmCadCombinacao.ShowModal;
    FreeAndNil(ffrmCadCombinacao);
  end;
  SpeedButton5Click(sender);
end;

procedure TfrmCadProduto_Comb.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsCor.Close;
  fDMCadProduto.cdsCor.Open;
end;

procedure TfrmCadProduto_Comb.btnCopiarComb_RefClick(Sender: TObject);
var
  ffrmCopiar_Comb: TfrmCopiar_Comb;
  vIDAux: Integer;
  vQtdAux: Real;
begin
  ffrmCopiar_Comb := TfrmCopiar_Comb.Create(self);
  vIDAux  := 0;
  vQtdAux := 0;
  if fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString = 'S' then
  begin
    fDMCadProduto.cdsProduto_Consumo.First;
    while not fDMCadProduto.cdsProduto_Consumo.Eof do
    begin
      fDMCadProduto.qProd.Close;
      fDMCadProduto.qProd.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
      fDMCadProduto.qProd.Open;
      if fDMCadProduto.qProdTIPO_REG.AsString = 'S' then
      begin
        vIDAux  := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
        vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat));
        fDMCadProduto.cdsProduto_Consumo.Last;
      end;
      fDMCadProduto.cdsProduto_Consumo.Next;
    end;
  end;
  ffrmCopiar_Comb.fDMCadProduto   := fDMCadProduto;
  ffrmCopiar_Comb.vID_Produto_Loc := vIDAux;
  ffrmCopiar_Comb.vQtd_Semi_Loc   := vQtdAux;
  ffrmCopiar_Comb.ShowModal;
  FreeAndNil(ffrmCopiar_Comb);
end;

procedure TfrmCadProduto_Comb.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if (fDMCadProduto.cdsProduto_Comb.IsEmpty) then
  begin
    MessageDlg('*** Não há produto selecionado para a impressão!', mtInformation, [mbOk], 0);
    exit;
  end;
//  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);

  fDMCadProduto.cdsFichaTecnica.Close;
  fDMCadProduto.sdsFichaTecnica.CommandText := fDMCadProduto.ctFicha_Tecnica;
  //if fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S' then
  //  fDMCadProduto.sdsFichaTecnica.CommandText := StringReplace(fDMCadProduto.sdsFichaTecnica.CommandText,'VFICHA_TECNICA','VFICHA_TECNICA_COMB',[rfReplaceAll, rfIgnoreCase]);
  fDMCadProduto.sdsFichaTecnica.ParamByName('ID').AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
  fDMCadProduto.sdsFichaTecnica.ParamByName('ITEM').AsInteger := fDMCadProduto.cdsProduto_CombITEM.AsInteger;
  fDMCadProduto.cdsFichaTecnica.Open;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Ficha_Tecnica.fr3';
  if FileExists(vArq) then
    fDMCadProduto.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadProduto.frxReport1.ShowReport;
end;

procedure TfrmCadProduto_Comb.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  fDMCadProduto.cdsProduto_CombFOTO.AsString := OpenPictureDialog1.FileName;
  try
    Image1.Picture.LoadFromFile(fDMCadProduto.cdsProduto_CombFOTO.AsString)
  except
    Image1.Picture := nil;
  end;
end;

procedure TfrmCadProduto_Comb.prc_scroll(DataSet: TDataSet);
begin
  Image1.Picture := Nil;
  try
    if fDMCadProduto.cdsProduto_CombFOTO.AsString <> '' then
      Image1.Picture.LoadFromFile(fDMCadProduto.cdsProduto_CombFOTO.AsString)
  except
  end;

end;

procedure TfrmCadProduto_Comb.prc_Duplica_Produto_Comb;
var
  vItem : Integer;
begin
  vItem := fDMCadProduto.cdsProduto_CombITEM.AsInteger;
  if not fDMCadProduto.cdsCloneProdComb.Active then
  begin
    fDMCadProduto.cdsCloneProdComb.CreateDataSet;
    fDMCadProduto.cdsCloneProdComb.Open;
  end;
  fDMCadProduto.cdsCloneProdComb.EmptyDataSet;
  fDMCadProduto.cdsProduto_Comb.First;
  SMDBGrid1.DisableScroll;
  while not fDMCadProduto.cdsProduto_Comb.Eof do
  begin
    fDMCadProduto.cdsCloneProdComb.Insert;
    fDMCadProduto.cdsCloneProdCombID.AsInteger := fDMCadProduto.cdsProduto_CombID.AsInteger;
    fDMCadProduto.cdsCloneProdCombITEM.AsInteger := fDMCadProduto.cdsProduto_CombITEM.AsInteger;
    fDMCadProduto.cdsCloneProdCombID_COR.AsInteger := fDMCadProduto.cdsProduto_CombID_COR.AsInteger;
    fDMCadProduto.cdsCloneProdCombID_COR_COMBINACAO.AsInteger := fDMCadProduto.cdsProduto_CombID_COR_COMBINACAO.AsInteger;
    fDMCadProduto.cdsCloneProdComb.Post;
    fDMCadProduto.cdsProduto_Comb.Next;
  end;
  if fDMCadProduto.cdsProduto_Comb.State in [dsBrowse] then
    fDMCadProduto.cdsProduto_Comb.Locate('ITEM',vItem,([loCaseInsensitive]));
  SMDBGrid1.EnableScroll;
end;

function TfrmCadProduto_Comb.fnc_Verifica_Duplicidade_Prod_Comb(
  ID: Integer; Item : Integer): Boolean;
begin
  Result := False;
  if (fDMCadProduto.cdsCloneProdComb.Locate('ID_COR_COMBINACAO',ID ,([Locaseinsensitive]))) and (fDMCadProduto.cdsCloneProdCombITEM.AsInteger <> Item) then
    Result := True;
end;

procedure TfrmCadProduto_Comb.btnCopiarPrincipalClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if not fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
  begin
    MessageDlg('*** Já existe material informado na combinação!', mtInformation, [mbOk], 0);
    exit;
  end;
  vItemAux := 0;
  fDMCadProduto.cdsProduto_Consumo.First;
  while not fDMCadProduto.cdsProduto_Consumo.Eof do
  begin
    vItemAux := vItemAux + 1;
    fDMCadProduto.prc_Inserir_ProdCombMat;
    fDMCadProduto.cdsProduto_Comb_MatITEM_MAT.AsInteger    := fDMCadProduto.cdsProduto_ConsumoITEM.AsInteger;
    fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_MATERIAL.AsInteger;
    fDMCadProduto.cdsProduto_Comb_MatID_COR.Clear;
    if fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger > 0 then
      fDMCadProduto.cdsProduto_Comb_MatID_POSICAO.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_POSICAO.AsInteger;
    if fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger > 0 then
      fDMCadProduto.cdsProduto_Comb_MatID_SETOR.AsInteger := fDMCadProduto.cdsProduto_ConsumoID_SETOR.AsInteger;
    //fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString := fDMCadProduto.cdsProduto_ mCombinacaoAuxNome_Cor.AsString;
    if fDMCadProduto.qParametros_ProdUSA_CONSUMO_COMB.AsString = 'S' then
    begin
      fDMCadProduto.cdsProduto_Comb_MatQTD_CONSUMO.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_CONSUMO.AsFloat;
      fDMCadProduto.cdsProduto_Comb_MatQTD_UNIDADE.AsFloat := fDMCadProduto.cdsProduto_ConsumoQTD_UNIDADE.AsFloat;
      fDMCadProduto.cdsProduto_Comb_MatUNIDADE.AsString    := fDMCadProduto.cdsProduto_ConsumoUNIDADE.AsString;
      fDMCadProduto.cdsProduto_Comb_MatIMP_TALAO.AsString  := fDMCadProduto.cdsProduto_ConsumoIMP_TALAO.AsString;
      fDMCadProduto.cdsProduto_Comb_MatTINGIMENTO.AsString := fDMCadProduto.cdsProduto_ConsumoTINGIMENTO.AsString;
    end;
    fDMCadProduto.cdsProduto_Comb_Mat.Post;
    fDMCadProduto.cdsProduto_Consumo.Next;
  end;
end;

end.
