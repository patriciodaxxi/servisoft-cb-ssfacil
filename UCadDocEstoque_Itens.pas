unit UCadDocEstoque_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadDocEstoque, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, UCadProduto, UCadUnidade, RzTabs, UDMEstoque, UCadCentroCusto, NxCollection,
  UDMInformar_Tam, UInformar_Tam, USenha;

type
  TfrmCadDocEstoque_Itens = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Shape1: TShape;
    Label30: TLabel;
    lblEstoque: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    btnGrade: TNxButton;
    dblcTamanho: TRxDBLookupCombo;
    lblTamanho: TLabel;
    pnlCor: TPanel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    lblIDProduto: TLabel;
    edtIDProduto: TDBEdit;
    Label5: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBEdit4: TDBEdit;
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
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure edtIDProdutoExit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure edtIDProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadCentroCusto: TfrmCadCentroCusto;
    ffrmInformar_Tam: TfrmInformar_Tam;
    fDMInformar_Tam: TDMInformar_Tam;

    vCodProdutoAnt: Integer;
    vState: String;

    procedure prc_Calcular_VlrItens;

    function  fnc_Erro: Boolean;

    procedure prc_Gravar_mItens;
    procedure prc_Gravar_Tam;
    procedure prc_Mostrar_Cor(ID: Integer);
    function fnc_Estoque_OK(ID_Produto, ID_Cor: Integer; Tamanho: String; Qtd: Real): Boolean;
    function fnc_Verifica_Lote(ID_Produto : Integer) : Boolean;

  public
    { Public declarations }
    fDMCadDocEstoque: TDMCadDocEstoque;
    fDMEstoque: TDMEstoque;

    procedure prc_Move_Dados_Itens;

  end;

var
  frmCadDocEstoque_Itens: TfrmCadDocEstoque_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, USel_Produto_Lote;

{$R *.dfm}

procedure TfrmCadDocEstoque_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit,dsInsert] then
    fDMCadDocEstoque.cdsDocEstoque_Itens.Cancel;
  //Tamanhos
  if fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S' then
    FreeAndNil(fDMInformar_Tam);
  Action := Cafree;
end;

procedure TfrmCadDocEstoque_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDocEstoque);
  fDMCadDocEstoque.qParametros_Prod.Open;
  vCodProdutoAnt  := fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger;
  DBCheckBox1.Visible := ((fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString = 'E') and (fDMCadDocEstoque.cdsDocEstoqueTIPO_REG.AsString = 'D'));
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
  pnlCor.Visible := ((fDMCadDocEstoque.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadDocEstoque.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadDocEstoque.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
  Label6.Visible  := (fDMCadDocEstoque.qParametrosUSA_LOTE_CONTROLE.AsString = 'S');
  DBEdit3.Visible := (fDMCadDocEstoque.qParametrosUSA_LOTE_CONTROLE.AsString = 'S');

  if fDMCadDocEstoque.qParametros_ProdUSA_ID_MATERIAL_CONS.AsString = 'S' then
  begin
    edtIDProduto.Visible := (fDMCadDocEstoque.qParametros_ProdUSA_ID_MATERIAL_CONS.AsString = 'S');
    lblIDProduto.Visible := (fDMCadDocEstoque.qParametros_ProdUSA_ID_MATERIAL_CONS.AsString = 'S');
    if edtIDProduto.Visible then
      edtIDProduto.SetFocus;
  end;

  Label9.Visible  := fDMCadDocEstoque.qParametros_EstUSA_LOCALIZACAO_LOTE.AsString = 'S';
  DBEdit4.Visible := fDMCadDocEstoque.qParametros_EstUSA_LOCALIZACAO_LOTE.AsString = 'S';
end;

procedure TfrmCadDocEstoque_Itens.prc_Move_Dados_Itens;
begin
  if fDMCadDocEstoque.cdsProdutoID.AsInteger <> fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger then
    if not fDMCadDocEstoque.cdsProduto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      exit;

  fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat := fDMCadDocEstoque.cdsProdutoPRECO_CUSTO.AsFloat;

  fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString     := fDMCadDocEstoque.cdsProdutoUNIDADE.AsString;

  fDMCadDocEstoque.cdsDocEstoque_ItensPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadDocEstoque.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat));

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

procedure TfrmCadDocEstoque_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadDocEstoque_Itens.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat > 0) and (fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat * fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat));
  fDMCadDocEstoque.cdsDocEstoque_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  //if (fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat > 0) and (fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString = 'E') then
  //  fDMCadDocEstoque.cdsDocEstoque_ItensGERAR_CUSTO.AsString := 'S';
end;

procedure TfrmCadDocEstoque_Itens.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadDocEstoque_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  vGravacao_Ok: Boolean;
  vQtdAux: Real;
begin
  fDMCadDocEstoque.cdsProduto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

  if fnc_Erro then
    exit;

  if fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;

  //Controle do estoque  14/06/2016
  if (fDMCadDocEstoque.qParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S') and (fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString = 'S') then
  begin
    if (fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString <> 'S') then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat));
      if not fnc_Estoque_OK(fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,fDMCadDocEstoque.cdsDocEstoque_ItensID_COR.AsInteger,
                            fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString,StrToFloat(FormatFloat('0.0000',vQtdAux))) then
        exit;
    end
    else
    begin
      vFlagErro := False;
      fDMInformar_Tam.mTamanho.First;
      while not fDMInformar_Tam.mTamanho.eof do
      begin
        if StrToFloat(FormatFloat('0.0000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0 then
        begin
          if not fnc_Estoque_OK(fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,fDMCadDocEstoque.cdsDocEstoque_ItensID_COR.AsInteger,
                                fDMInformar_Tam.mTamanhoTamanho.AsString,fDMInformar_Tam.mTamanhoQtd.AsFloat) then
          begin
            fDMInformar_Tam.mTamanho.Last;
            vFlagErro := True;
          end
          else
            fDMInformar_Tam.mTamanho.Next
        end
        else
          fDMInformar_Tam.mTamanho.Next;
      end;
      if vFlagErro then
        exit;
      if fDMInformar_Tam.mTamanho.IsEmpty then
        exit;
    end;
  end;
  //**************  14/06/2016

  try
    fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString    := fDMCadDocEstoque.cdsProdutoNOME.AsString;
    fDMCadDocEstoque.cdsDocEstoque_ItensREFERENCIA.AsString      := fDMCadDocEstoque.cdsProdutoREFERENCIA.AsString;
    if RxDBLookupCombo5.Text <> '' then
      fDMCadDocEstoque.cdsDocEstoque_ItensNOME_COR_COMBINACAO.AsString := RxDBLookupCombo5.Text;

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
    //Tamanho aqui
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
      if edtIDProduto.Visible then
        edtIDProduto.SetFocus
      else
        RxDBLookupCombo4.SetFocus;
    end;
  end;

end;

function TfrmCadDocEstoque_Itens.fnc_Erro: Boolean;
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

  if (StrToFloat(FormatFloat('0.0000',fDMCadDocEstoque.cdsDocEstoque_ItensVLR_UNITARIO.AsFloat)) <= 0) and (fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString = 'E') then
    vMsgErro := vMsgErro + #13 + '*** Valor não informado!';
  //Aqui tamanho
  if (fDMCadDocEstoque.qParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString) = '') and (fDMCadDocEstoque.cdsProdutoUSA_GRADE.AsString = 'S') and
     //(fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsEdit]) then
     (vState = 'E') then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';

  if (fDMCadDocEstoque.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString) = '') then
  begin
    if fnc_Existe_Prod_Lote(fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger) then
      vMsgErro := vMsgErro + #13 + '*** Campo Nº Lote não pode ser em branco, pois no produto esta cadastrado Lote!';
  end;

  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadDocEstoque_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadDocEstoque_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadDocEstoque_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsProduto.Close;
  fDMCadDocEstoque.cdsProduto.Open;
end;

procedure TfrmCadDocEstoque_Itens.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton6Click(Sender);
end;

procedure TfrmCadDocEstoque_Itens.SpeedButton6Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsUnidade.Close;
  fDMCadDocEstoque.cdsUnidade.Open;
end;

procedure TfrmCadDocEstoque_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  {if (Key = Vk_F2) then
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
//    RxDBLookupCombo4Change(Sender);
  end
  else}
  if (Key = Vk_F7) then
    BitBtn1Click(Sender);
end;

procedure TfrmCadDocEstoque_Itens.Panel1Exit(Sender: TObject);
var
  vIDAux: Integer;
  vQtdAux: Real;
  vidLocal : Integer;
begin
  if (fDMCadDocEstoque.cdsDocEstoque_Itens.State in [dsInsert]) or (fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) then
    prc_Move_Dados_Itens;
  if (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) or (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.IsNull) then
    vidLocal := 0
  else
    vidLocal := fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger;
  vQtdAux := 0;
  if trim(RxDBLookupCombo4.Text) <> '' then
    vQtdAux := fDMEstoque.fnc_Buscar_Estoque(RxDBLookupCombo4.KeyValue,vidLocal,0);
  lblEstoque.Caption := FormatFloat('0.####',vQtdAux);
  vIDAux := 0;
  if RxDBLookupCombo4.Text <> '' then
    vIDAux := RxDBLookupCombo4.KeyValue;
  prc_Mostrar_Cor(vIDAux);
end;

procedure TfrmCadDocEstoque_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadDocEstoque.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadDocEstoque_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadDocEstoque.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadDocEstoque_Itens.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadCentroCusto := TfrmCadCentroCusto.Create(self);
  ffrmCadCentroCusto.ShowModal;

  FreeAndNil(ffrmCadCentroCusto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadDocEstoque_Itens.SpeedButton5Click(Sender: TObject);
begin
  fDMCadDocEstoque.cdsCentroCusto.Close;
  fDMCadDocEstoque.cdsCentroCusto.Open;
end;

procedure TfrmCadDocEstoque_Itens.prc_Gravar_Tam;
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
             (fDMInformar_Tam.mItensDoc.Fields[x].FieldName <> 'Nome_Produto_Original') and (fDMInformar_Tam.mItensDoc.Fields[x].FieldName <> 'ID_MOVESTOQUE') and
             (fDMInformar_Tam.mItensDoc.Fields[x].FieldName <> 'Perc_ICMS_Inter') then
            fDMCadDocEstoque.cdsDocEstoque_Itens.FieldByName(fDMInformar_Tam.mItensDoc.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mItensDoc.Fields[x].Value;
        except
        end;
      end;
      //fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString := fDMInformar_Tam.mItensDocNome_Produto_Original.AsString + ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString := fDMInformar_Tam.mItensDocNome_Produto_Original.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensNOME_COR_COMBINACAO.AsString := fDMInformar_Tam.mItensDocNOME_COR_COMBINACAO.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensTAMANHO.AsString      := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadDocEstoque.cdsDocEstoque_ItensQTD.AsFloat           := fDMInformar_Tam.mTamanhoQtd.AsFloat;

      fDMCadDocEstoque.cdsDocEstoque_Itens.Post;
    end;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

procedure TfrmCadDocEstoque_Itens.prc_Gravar_mItens;
var
  x: Integer;
begin
  fDMInformar_Tam.mItensDoc.EmptyDataSet;

  fDMInformar_Tam.mItensDoc.Insert;
  for x := 0 to (fDMCadDocEstoque.cdsDocEstoque_Itens.FieldCount - 1) do
  begin
    if fDMCadDocEstoque.cdsDocEstoque_Itens.Fields[x].FieldName <> 'ID_MOVESTOQUE_DESTINO' then
      fDMInformar_Tam.mItensDoc.FieldByName(fDMCadDocEstoque.cdsDocEstoque_Itens.Fields[x].FieldName).AsVariant := fDMCadDocEstoque.cdsDocEstoque_Itens.Fields[x].Value;
  end;
  fDMInformar_Tam.mItensDocNome_Produto_Original.AsString := fDMCadDocEstoque.cdsDocEstoque_ItensNOME_PRODUTO.AsString;
  fDMInformar_Tam.mItensDoc.Post;
end;

procedure TfrmCadDocEstoque_Itens.btnGradeClick(Sender: TObject);
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

procedure TfrmCadDocEstoque_Itens.prc_Mostrar_Cor(ID: Integer);
begin
  pnlCor.Visible := (fDMCadDocEstoque.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadDocEstoque.qParametrosINFORMAR_COR_PROD.AsString = 'C');
  if not pnlCor.Visible then
    exit;
  fDMCadDocEstoque.cdsCombinacao.Close;
  fDMCadDocEstoque.sdsCombinacao.ParamByName('ID').AsInteger := ID;
  fDMCadDocEstoque.cdsCombinacao.Open;
end;

function TfrmCadDocEstoque_Itens.fnc_Estoque_OK(ID_Produto,
  ID_Cor: Integer; Tamanho: String; Qtd: Real): Boolean;
var
  vQtdAux: Real;
  vID_LocalAux: Integer;
  ffrmSenha: TfrmSenha;
begin
  Result := True;
  if fDMCadDocEstoque.qParametrosCONTROLAR_ESTOQUE_SAIDA.AsString <> 'S' then
    exit;
  vID_LocalAux := fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger;
  if (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S') and (fDMCadDocEstoque.cdsDocEstoqueID_LOCAL_ESTOQUE.AsInteger <= 0) then
    vID_LocalAux := fnc_Verificar_Local(fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString)
  else
  if (fDMCadDocEstoque.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
    vID_LocalAux := 0;
  vQtdAux := fnc_Busca_Estoque2(fDMCadDocEstoque.cdsDocEstoqueFILIAL.AsInteger,ID_Produto,ID_Cor,Tamanho,vID_LocalAux,fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE.AsInteger);

  if StrToFloat(FormatFloat('0.0000',vQtdAux)) < StrToFloat(FormatFloat('0.0000',Qtd)) then
  begin
    if trim(fDMCadDocEstoque.qParametrosSENHA_LIBERA_ESTOQUE.AsString) = '' then
      Result := (MessageDlg('Produto com quantidade menor no estoque, confirma inclusão do produto ?',mtConfirmation,[mbYes,mbNo],0) = mrYes)
    else
    begin
      ffrmSenha := TfrmSenha.Create(self);
      ffrmSenha.Label2.Caption := 'Produto: ' + fDMCadDocEstoque.cdsProdutoREFERENCIA.AsString + ',  com estoque negativo ';
      ffrmSenha.Label3.Caption := 'Informe a senha para liberar ';
      if Tamanho <> '' then
        ffrmSenha.Label4.Caption := 'Tamanho = ' + Tamanho
      else
        ffrmSenha.Label4.Caption := '';
      ffrmSenha.Label4.Caption := ffrmSenha.Label4.Caption + '   Qtd Est. ' + FormatFloat('0.####',vQtdAux);
      if StrToFloat(FormatFloat('0.0000',vQtdAux)) <= 0 then
        ffrmSenha.Label4.Font.Color := clRed
      else
        ffrmSenha.Label4.Font.Color := clBlue;
      ffrmSenha.vControlaSenha := True;
      ffrmSenha.vSenha_Param := fDMCadDocEstoque.qParametrosSENHA_LIBERA_ESTOQUE.AsString;
      ffrmSenha.ShowModal;
      FreeAndNil(ffrmSenha);
      if vSenha <> fDMCadDocEstoque.qParametrosSENHA_LIBERA_ESTOQUE.AsString then
        Result := False;
    end;
  end;
end;

procedure TfrmCadDocEstoque_Itens.RxDBLookupCombo5Exit(Sender: TObject);
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

procedure TfrmCadDocEstoque_Itens.edtIDProdutoExit(Sender: TObject);
begin
  if fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger > 0 then
  begin
    if not fDMCadDocEstoque.cdsProduto.Locate('ID',fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger,([Locaseinsensitive])) then
    begin
      MessageDlg('Produto/Material não encontrado!', mtError,[mbOK],0);
      edtIDProduto.SetFocus;
      Exit;
    end;
    fDMCadDocEstoque.cdsDocEstoque_ItensUNIDADE.AsString := fDMCadDocEstoque.cdsProdutoUNIDADE.AsString;
  end;
end;

procedure TfrmCadDocEstoque_Itens.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) and (fDMCadDocEstoque.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') then
  begin
    vNum_Lote_Pos := fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString;
    frmSel_Produto_Lote := TfrmSel_Produto_Lote.Create(Self);
    frmSel_Produto_Lote.Tag := 0;
    frmSel_Produto_Lote.vID_Produto_Loc := fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger;
    frmSel_Produto_Lote.ShowModal;
    FreeAndNil(frmSel_Produto_Lote);
    fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString := vNum_Lote_Pos;
  end
end;

function TfrmCadDocEstoque_Itens.fnc_Verifica_Lote(
  ID_Produto: Integer): Boolean;
begin
  Result := True;
  if trim(fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString) = '' then
    exit;
  if fDMCadDocEstoque.qParametros_ProdUSA_LOTE_PROD.AsString <> 'S' then
    exit;
  fDMCadDocEstoque.qProduto_Lote.Close;
  fDMCadDocEstoque.qProduto_Lote.ParamByName('ID').AsInteger := ID_Produto;
  fDMCadDocEstoque.qProduto_Lote.ParamByName('NUM_LOTE_CONTROLE').AsString := fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString;
  fDMCadDocEstoque.qProduto_Lote.Open;
  if fDMCadDocEstoque.qProduto_Lote.IsEmpty then
    Result := False;
end;

procedure TfrmCadDocEstoque_Itens.DBEdit3Exit(Sender: TObject);
begin
  if (fDMCadDocEstoque.cdsDocEstoqueTIPO_ES.AsString <> 'S') or (trim(fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString) = '') then
    exit;
  if not fnc_Verifica_Lote(fDMCadDocEstoque.cdsDocEstoque_ItensID_PRODUTO.AsInteger) then
  begin
    MessageDlg('*** Lote ' + fDMCadDocEstoque.cdsDocEstoque_ItensNUM_LOTE_CONTROLE.AsString + ', não encontrado no produto!',mtError, [mbOk], 0);
    DBEdit3.SetFocus;
    exit;
  end;
end;

procedure TfrmCadDocEstoque_Itens.edtIDProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vCod : String;  
begin
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
  end
  else
  if key = VK_RETURN then
  begin
    vCod := Monta_Numero(edtIDProduto.Text,0);
    if (trim(vCod) <> '') and (pnlCor.Visible) then
      RxDBLookupCombo5.SetFocus;
  end;
end;

end.
