unit UCadNotaEntrada_Itens_Ajuste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal,
  StdCtrls, Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, UCadUnidade, 
  NxCollection, SqlExpr;

type
  TfrmCadNotaEntrada_Itens_Ajuste = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadUnidade: TfrmCadUnidade;

    function fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

    vGravacao_Ok: Boolean;
    vPedidoSelecionado: Boolean;

  end;

var
  frmCadNotaEntrada_Itens_Ajuste: TfrmCadNotaEntrada_Itens_Ajuste;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, uCalculo_NotaFiscal, USel_Unidade,
  DmdDatabase;

{$R *.dfm}

procedure TfrmCadNotaEntrada_Itens_Ajuste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  //if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
  if fDMCadNotaFiscal.vState_Item = 'I' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'S';

  //if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInsert] then
  if (fDMCadNotaFiscal.vState_Item = 'I') and (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount < 1) then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;

  //***************
  Label19.Visible  := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
  DBEdit10.Visible := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  //if fnc_Erro then
  //  exit;

  vFlagErro    := False;
  vGravacao_Ok := False;

  try
    if fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]) then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString := fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString;
    fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    //fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString    := fDMCadNotaFiscal.cdsProdutoNOME.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString      := fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString;
    if fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger > 0 then
    begin
      fDMCadNotaFiscal.cdsTab_NCM.Locate('ID',fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger,[loCaseInsensitive]);
      fDMCadNotaFiscal.cdsNotaFiscal_ItensNCM.AsString := fDMCadNotaFiscal.cdsTab_NCMNCM.AsString;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vFlagErro    := True;
      vGravacao_Ok := False;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if not vFlagErro then
    Close;
end;

function TfrmCadNotaEntrada_Itens_Ajuste.fnc_Erro: Boolean;
var
  vMsgErro: String;
  sds: TSQLDataSet;
  vQtdAux : Real;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  vMsgErro := '';
  if (fDMCadNotaFiscal.qParametros_OCPERMITIR_ENT_MAIOR.AsString <> 'S') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0)
    and (fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger > 0) then
  begin
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT I.qtd_restante, I.qtd_liberada, '
                         + ' (select ni.qtd from notafiscal_itens ni '
                         + '   where ni.id_pedido = :ID  and ni.item_pedido = :ITEM   and ni.id = :ID_NOTA and ni.item = :item_nota ) qtd_nota '
                         + ' FROM PEDIDO_ITEM I '
                         + ' WHERE I.ID = :ID '
                         + ' AND I.ITEM = :ITEM ';
      sds.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
      sds.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger;
      sds.ParamByName('ID_NOTA').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
      sds.ParamByName('ITEM_NOTA').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
      sds.Open;
      if fDMCadNotaFiscal.cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
        vQtdAux := StrToFloat(FormatFloat('0.0000',sds.FieldByName('qtd_liberada').AsFloat))
      else
        vQtdAux := StrToFloat(FormatFloat('0.0000',sds.FieldByName('qtd_restante').AsFloat));
      vQtdAux := vQtdAux + StrToFloat(FormatFloat('0.0000',sds.FieldByName('qtd_Nota').AsFloat));
      if StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) > StrToFloat(FormatFloat('0.0000',vQtdAux)) then
        vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a quantidade da OC!';
    finally
      FreeAndNil(sds);
    end;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** CFOP não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** NCM (Classificação Fiscal) não informada!';
  if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if StrToFloat(FormatFloat('0.000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  //28/11/2017
  if (fDMCadNotaFiscal.qParametros_NTEMOSTRAR_FINALIDADE.AsString = 'S') and ((fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'C') and
     (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'R') and (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'I') and
     (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> 'O')) then
    vMsgErro := vMsgErro + #13 + '*** Finalidade da compra não foi informada!';
  //Aqui tamanho
  if (fDMCadNotaFiscal.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString) = '') and (fDMCadNotaFiscal.cdsProdutoUSA_GRADE.AsString = 'S') and
     (fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit])then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.BitBtn4Click(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  fDMCadNotaFiscal.vState_Item := '';
  Close;
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := fDMCadNotaFiscal.cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD.AsString;
    frmSel_Produto.ShowModal;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger > 0 then
      RxDBLookupCombo4.SetFocus;
  end;
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'NOME';                    
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.FormCreate(Sender: TObject);
begin
  vGravacao_Ok       := False;
  vPedidoSelecionado := False;
end;

procedure TfrmCadNotaEntrada_Itens_Ajuste.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger <= 0 then
      ShowMessage('Não foi escolhido nenhum produto!')
    else
    begin
      fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
      vUnidade_Pos := fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString;
      vQtd_Pacote_Pos := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat));
      frmSel_Unidade := TfrmSel_Unidade.Create(Self);
      frmSel_Unidade.vID_Produto_Uni := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
      frmSel_Unidade.vUnidade_Ori    := fDMCadNotaFiscal.cdsProdutoUNIDADE.AsString;
      frmSel_Unidade.ShowModal;
      if trim(vUnidade_Pos) <> '' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString   := vUnidade_Pos;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat := StrToFloat(FormatFloat('0.0000',vQtd_Pacote_Pos));
      end;
      Label19.Visible  := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
      DBEdit10.Visible := (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0);
    end;
  end;
end;

end.
