unit UCadRequisicao_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadDocEstoque, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, UCadProduto, UCadUnidade,  UDMEstoque, UCadCentroCusto, NxCollection, UDMInformar_Tam,
  UInformar_Tam, Mask;

type
  TfrmCadRequisicao_Itens = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    Label12: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Shape1: TShape;
    Label30: TLabel;
    lblEstoque: TLabel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    btnGrade: TNxButton;
    dblcTamanho: TRxDBLookupCombo;
    lblTamanho: TLabel;
    pnlCor: TPanel;
    Label5: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Exit(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadCentroCusto: TfrmCadCentroCusto;
    ffrmInformar_Tam: TfrmInformar_Tam;
    fDMInformar_Tam: TDMInformar_Tam;

    vCodProdutoAnt : Integer;
    vState: String;

    procedure prc_Calcular_VlrItens;
    procedure prc_Mostrar_Cor(ID: Integer);

    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadDocEstoque: TDMCadDocEstoque;
    fDMEstoque: TDMEstoque;

    procedure prc_Move_Dados_Itens;
    procedure prc_Gravar_mItens;
    procedure prc_Gravar_Tam;
  end;

var
  frmCadRequisicao_Itens: TfrmCadRequisicao_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadRequisicao_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit,dsInsert] then
    fDMCadDocEstoque.cdsDocEstoque_Itens.Cancel;
  //Tamanhos
  if fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S' then
    FreeAndNil(fDMInformar_Tam);
  Action := Cafree;
end;

procedure TfrmCadRequisicao_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDocEstoque);
  vCodProdutoAnt  := fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger;

  //Tamanhos
  if fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S' then
  begin
    fDMInformar_Tam := TDMInformar_Tam.Create(Self);
    if (fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit]) and (trim(fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString) <> '') then
    begin
      fDMInformar_Tam.prc_Abrir_Produto_Tam(fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger);
      lblTamanho.Visible       := True;
      oDBUtils.SetDataSourceProperties(dblcTamanho, fDMInformar_Tam);
      dblcTamanho.Visible := True;
    end;
  end;

  //Tamanho
  if (fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit]) and (fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S') then
  begin
    fDMCadDocEstoque.cdsProduto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    btnGrade.Visible := ((fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    DBEdit2.ReadOnly := ((fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    if (fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible) then
      DBEdit2.Color := clSilver
    else
      DBEdit2.Color := clWindow;
  end;
  //***************
  if fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit] then
    vState := 'E'
  else
  if fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsInsert] then
    vState := 'I';
end;

procedure TfrmCadRequisicao_Itens.prc_Move_Dados_Itens;
begin
  if not fDMCadDocEstoque.cdsProduto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
    
  fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat := fDMCadDocEstoque.cdsProdutoPRECO_CUSTO.AsFloat;
    
  fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString     := fDMCadDocEstoque.cdsProdutoUNIDADE.AsString;

  btnGrade.Visible    := ((fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'I'));
  lblTamanho.Visible  := ((fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  dblcTamanho.Visible := ((fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  DBEdit2.ReadOnly := ((fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S') and (fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S')) ;
  if (fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S') and (fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
  //************
end;

procedure TfrmCadRequisicao_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadRequisicao_Itens.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat > 0) and (fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat * fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat));
  fDMCadDocEstoque.cdsDocEstoque_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadRequisicao_Itens.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadRequisicao_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  vGravacao_Ok: Boolean;
begin
  fDMCadDocEstoque.cdsProduto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

  if fnc_Erro then
    exit;

  if fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;  

  try
    fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString := fDMCadDocEstoque.cdsProdutoNOME.AsString;
    fDMCadDocEstoque.cdsDocEstoque_ItensREFERENCIA.AsString   := fDMCadDocEstoque.cdsProdutoREFERENCIA.AsString;
    if (fDMCadDocEstoque.cdsDocEstoque_ItensID_CENTROCUSTO.AsInteger > 0) and (fDMCadDocEstoque.cdsCentroCusto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_CENTROCUSTO.AsInteger,[loCaseInsensitive])) then
    begin
      fDMCadDocEstoque.cdsDocEstoque_ItensNOME_CENTROCUSTO.AsString := fDMCadDocEstoque.cdsCentroCustoDESCRICAO.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensCOD_CENTROCUSTO.AsString  := fDMCadDocEstoque.cdsCentroCustoCODIGO.AsString;
    end;
    //Tamanho aqui
    if fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S' then
    begin
      if vState <> 'E' then
      begin
        prc_Gravar_mItens;
        fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString      := fDMInformar_Tam.vTamanho_Ini;
        fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat           := fDMInformar_Tam.vQtd_Ini;
        vEditar := True;
      end;
    end;
    //*****
    fDMCadDocEstoque.cdsDocEstoque_Itens.Post;
    if (fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S') then
      prc_Gravar_Tam;
    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vGravacao_Ok := False;
      vFlagErro    := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  lblEstoque.Caption := '0';

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      fDMCadDocEstoque.prc_Inserir_Itens;
      RxDBLookupCombo4.SetFocus;
    end;
  end;

end;

function TfrmCadRequisicao_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString) = '') and (fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and
     //(fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit]) then
     (vState = 'E') then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadRequisicao_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadRequisicao_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadRequisicao_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsProduto.Close;
  fDMCadDocEstoque.cdsProduto.Open;
end;

procedure TfrmCadRequisicao_Itens.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton6Click(Sender);
end;

procedure TfrmCadRequisicao_Itens.SpeedButton6Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsUnidade.Close;
  fDMCadDocEstoque.cdsUnidade.Open;
end;

procedure TfrmCadRequisicao_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    RxDBLookupCombo4.KeyValue := 0;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo4.KeyValue := vCodProduto_Pos;
    fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger > 0 then
      RxDBLookupCombo4.SetFocus;
    RxDBLookupCombo4Change(Sender);
  end;
end;

procedure TfrmCadRequisicao_Itens.Panel1Exit(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsInsert]) or (fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) then
    prc_Move_Dados_Itens;
end;

procedure TfrmCadRequisicao_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadDocEstoque.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadRequisicao_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadDocEstoque.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadRequisicao_Itens.RxDBLookupCombo4Change(Sender: TObject);
var
  vQtdAux: Real;
  vIDAux: Integer;
  vIDLocal : Integer;
begin
  vQtdAux := 0;
  if (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) or (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.IsNull) then
    vidLocal := 0
  else
    vidLocal := fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger;

  if trim(RxDBLookupCombo4.Text) <> '' then
    vQtdAux := fDMEstoque.fnc_Buscar_Estoque(RxDBLookupCombo4.KeyValue,vIDLocal,0);

  lblEstoque.Caption := FormatFloat('0.####',vQtdAux);
  vIDAux := 0;
  if RxDBLookupCombo4.Text <> '' then
    vIDAux := RxDBLookupCombo4.KeyValue;
  prc_Mostrar_Cor(vIDAux);
end;

procedure TfrmCadRequisicao_Itens.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadCentroCusto := TfrmCadCentroCusto.Create(self);
  ffrmCadCentroCusto.ShowModal;

  FreeAndNil(ffrmCadCentroCusto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadRequisicao_Itens.SpeedButton5Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsCentroCusto.Close;
  fDMCadDocEstoque.cdsCentroCusto.Open;
end;

procedure TfrmCadRequisicao_Itens.prc_Gravar_mItens;
var
  x: Integer;
begin
  fDMInformar_Tam.mItensDoc.EmptyDataSet;

  fDMInformar_Tam.mItensDoc.Insert;
  for x := 0 to (fDMCadDocEstoque.cdsDocEstoque_Itens.FieldCount - 1) do
  begin
    if (fDMCadDocEstoque.cdsDocEstoque_Itens.Fields[x].FieldName <> 'NOME_COR_COMBINACAO') then
      fDMInformar_Tam.mItensDoc.FieldByName(fDMCadDocEstoque.cdsDocEstoque_Itens.Fields[x].FieldName).AsVariant := fDMCadDocEstoque.cdsDocEstoque_Itens.Fields[x].Value;
  end;
  fDMInformar_Tam.mItensDocNome_Produto_Original.AsString := fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString;
  fDMInformar_Tam.mItensDoc.Post;
end;

procedure TfrmCadRequisicao_Itens.prc_Gravar_Tam;
var
  x: Integer;
  vItemAux: Integer;
begin
  fDMInformar_Tam.mItensDoc.First;
  fDMInformar_Tam.mTamanho.First;
  while not fDMInformar_Tam.mTamanho.Eof do
  begin
    if (fDMInformar_Tam.mTamanhoTamanho.AsString <> fDMInformar_Tam.vTamanho_Ini) and (StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0) then
    begin
      fDMCadDocEstoque.prc_Inserir_Itens;
      for x := 0 to (fDMInformar_Tam.mItensDoc.FieldCount - 1) do
      begin
        try
          if (fDMInformar_Tam.mItensDoc.Fields[x].FieldName <> 'ID') and (fDMInformar_Tam.mItensDoc.Fields[x].FieldName <> 'Item') and
             (fDMInformar_Tam.mItensDoc.Fields[x].FieldName <> 'Nome_Produto_Original') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_MOVESTOQUE') then
            fDMCadDocEstoque.cdsDocEstoque_Itens.FieldByName(fDMInformar_Tam.mItensDoc.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mItensDoc.Fields[x].Value;
        except
        end;
      end;
      //fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString := fDMInformar_Tam.mItensDocNome_Produto_Original.AsString + ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString := fDMInformar_Tam.mItensDocNome_Produto_Original.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString      := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat           := fDMInformar_Tam.mTamanhoQtd.AsFloat;

      fDMCadDocEstoque.cdsDocEstoque_Itens.Post;
    end;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

procedure TfrmCadRequisicao_Itens.btnGradeClick(Sender: TObject);
begin
  BitBtn1.Enabled := False;
  BitBtn4.Enabled := False;
  try
    ffrmInformar_Tam := TfrmInformar_Tam.Create(self);
    ffrmInformar_Tam.fDMInformar_Tam := fDMInformar_Tam;
    ffrmInformar_Tam.fDMInformar_Tam.prc_Le_Produto_Tam(fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger);
    ffrmInformar_Tam.ShowModal;
    if fDMInformar_Tam.vGravar = 'S' then
      fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat := fDMInformar_Tam.vQtd_Grade;
  finally
    BitBtn1.Enabled := True;
    BitBtn4.Enabled := True;
  end;
end;

procedure TfrmCadRequisicao_Itens.prc_Mostrar_Cor(ID: Integer);
begin
  pnlCor.Visible := (fDMCadDocEstoque.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadDocEstoque.qParametrosINFORMAR_COR_PROD.AsString = 'C');
  if not pnlCor.Visible then
    exit;
  fDMCadDocEstoque.cdsCombinacao.Close;
  fDMCadDocEstoque.sdsCombinacao.ParamByName('ID').AsInteger := ID;
  fDMCadDocEstoque.cdsCombinacao.Open;
end;

procedure TfrmCadRequisicao_Itens.RxDBLookupCombo5Exit(Sender: TObject);
var
  vIDLocal : Integer;
  vQtdAux : Real;
begin
  if trim(RxDBLookupCombo5.Text) = '' then
    exit;

  if (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) or (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.IsNull) then
    vidLocal := 0
  else
    vidLocal := fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger;

  if trim(RxDBLookupCombo5.Text) <> '' then
    vQtdAux := fDMEstoque.fnc_Buscar_Estoque(RxDBLookupCombo4.KeyValue,vidLocal,RxDBLookupCombo5.KeyValue);
  lblEstoque.Caption := FormatFloat('0.####',vQtdAux);
end;

end.
