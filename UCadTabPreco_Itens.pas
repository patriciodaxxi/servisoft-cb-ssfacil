unit UCadTabPreco_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadTab_Preco, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, UCadProduto, RzTabs,
  ToolEdit, CurrEdit;

type
  TfrmCadTabPreco_Itens = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    Label12: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Panel2: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label31: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    edtRef2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Exit(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure edtRef2Exit(Sender: TObject);
    procedure edtRef2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRef2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    vCodProdutoAnt: Integer;
    vID_Cor_Ant  : Integer;

    procedure prc_Limpar;
    procedure prc_Abrir_Combinacao;

    function fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadTab_Preco: TDMCadTab_Preco;
    vStatus : String; //I=Inserir  A=Alterar

    procedure prc_Move_Dados_Itens;

  end;

var
  frmCadTabPreco_Itens: TfrmCadTabPreco_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadTabPreco_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadTab_Preco.cdsTab_Preco_Itens.State in [dsEdit,dsInsert] then
    fDMCadTab_Preco.cdsTab_Preco_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadTabPreco_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadTab_Preco);
  vCodProdutoAnt  := 0;
  Panel1.Enabled := (vStatus <> 'A');
  Panel2.Visible := (fDMCadTab_Preco.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S');
  if vStatus = 'A' then
  begin
    RxDBLookupCombo2.KeyValue := fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger;
    RxDBLookupCombo4.KeyValue := fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger;
    if fDMCadTab_Preco.cdsTab_Preco_ItensID_COR.AsInteger > 0 then
    begin
      prc_Abrir_Combinacao;
      RxDBLookupCombo3.KeyValue := fDMCadTab_Preco.cdsTab_Preco_ItensID_COR.AsInteger;
    end
    else
      RxDBLookupCombo3.ClearValue;
    if trim(RxDBLookupCombo4.Text) <> '' then
      vCodProdutoAnt  := RxDBLookupCombo4.KeyValue;
    if fDMCadTab_Preco.cdsProduto.Locate('ID', fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00###',fDMCadTab_Preco.cdsProdutoPRECO_CUSTO.AsFloat));
    CurrencyEdit2.SetFocus;
  end;
  edtRef2.Visible := (fDMCadTab_Preco.qParametros_ProdUSA_REF2.AsString = 'S');
end;

procedure TfrmCadTabPreco_Itens.prc_Move_Dados_Itens;
begin
  if RxDBLookupCombo4.Text = '' then
    exit;

  if not fDMCadTab_Preco.cdsProduto.Locate('ID',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]) then
    exit;

  if (fDMCadTab_Preco.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S')  then
  begin
    Panel2.Visible := (fDMCadTab_Preco.cdsProdutoUSA_PRECO_COR.AsString = 'S');
    if fDMCadTab_Preco.cdsProdutoUSA_PRECO_COR.AsString = 'S' then
      prc_Abrir_Combinacao;
  end;

  CurrencyEdit1.Value := fDMCadTab_Preco.cdsProdutoPRECO_CUSTO.AsFloat;
  CurrencyEdit2.Value := fDMCadTab_Preco.cdsProdutoPRECO_VENDA.AsFloat;

end;

procedure TfrmCadTabPreco_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  //vGravacao_Ok: Boolean;
begin
  if fnc_Erro then
    exit;

  if vStatus = 'A' then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;

  if fDMCadTab_Preco.cdsProdutoID.AsInteger <> RxDBLookupCombo4.KeyValue then
    fDMCadTab_Preco.cdsProduto.Locate('ID', RxDBLookupCombo4.KeyValue,[loCaseInsensitive]);

  try
    if vStatus = 'A' then
      fDMCadTab_Preco.cdsTab_Preco_Itens.Edit
    else
    begin
      fDMCadTab_Preco.prc_Inserir_Itens;
    end;
    fDMCadTab_Preco.cdsTab_Preco_ItensID_PRODUTO.AsInteger := RxDBLookupCombo4.KeyValue;
    fDMCadTab_Preco.cdsTab_Preco_ItensNOMEPRODUTO.AsString := fDMCadTab_Preco.cdsProdutoNOME.AsString;
    fDMCadTab_Preco.cdsTab_Preco_ItensREFERENCIA.AsString  := fDMCadTab_Preco.cdsProdutoREFERENCIA.AsString;
    fDMCadTab_Preco.cdsTab_Preco_ItensPRECO_CUSTO.AsFloat  := CurrencyEdit1.Value;
    fDMCadTab_Preco.cdsTab_Preco_ItensVLR_VENDA.AsFloat    := CurrencyEdit2.Value;
    if (trim(RxDBLookupCombo3.Text) <> '') and (fDMCadTab_Preco.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
      fDMCadTab_Preco.cdsTab_Preco_ItensID_COR.AsFloat := RxDBLookupCombo3.KeyValue
    else
      fDMCadTab_Preco.cdsTab_Preco_ItensID_COR.AsFloat := 0;
    fDMCadTab_Preco.cdsTab_Preco_Itens.Post;
    //vGravacao_Ok := True;
  except
    on E: exception do
    begin
      //vGravacao_Ok := False;
      vFlagErro    := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      prc_Limpar;
      RxDBLookupCombo4.SetFocus;
    end;
  end;

end;

function TfrmCadTabPreco_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if Trim(RxDBLookupCombo4.Text) = '' then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if CurrencyEdit2.Value <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Preço não informado!';

  if (trim(RxDBLookupCombo4.Text) <> '') and (vStatus <> 'A')  then
  begin
    if fDMCadTab_Preco.cdsTab_Preco_Itens.Locate('ID_PRODUTO',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]) then
      vMsgErro := vMsgErro + #13 + '*** Produto já esta cadastrado no item ' + fDMCadTab_Preco.cdsTab_Preco_ItensITEM.AsString;
  end;
                                                                                                             
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadTabPreco_Itens.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadTabPreco_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadTabPreco_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadTab_Preco.prc_Consultar_Produto('');
end;

procedure TfrmCadTabPreco_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo4.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo4.KeyValue;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    RxDBLookupCombo4.KeyValue := 0;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo4.KeyValue := vCodProduto_Pos;
  end;
end;

procedure TfrmCadTabPreco_Itens.Panel1Exit(Sender: TObject);
begin
  if (trim(RxDBLookupCombo4.Text) <> '') and (RxDBLookupCombo4.KeyValue <> vCodProdutoAnt) then
    prc_Move_Dados_Itens;
end;

procedure TfrmCadTabPreco_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadTab_Preco.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadTabPreco_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadTab_Preco.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadTabPreco_Itens.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo2.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfrmCadTabPreco_Itens.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo2.KeyValue;
end;

procedure TfrmCadTabPreco_Itens.prc_Limpar;
begin
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo4.ClearValue;
  CurrencyEdit1.Value := 0;
  CurrencyEdit2.Value := 0;
end;

procedure TfrmCadTabPreco_Itens.prc_Abrir_Combinacao;
begin
  fDMCadTab_Preco.cdsCombinacao.Close;
  fDMCadTab_Preco.sdsCombinacao.ParamByName('ID').AsInteger := RxDBLookupCombo4.KeyValue;
  fDMCadTab_Preco.cdsCombinacao.Open;
end;

procedure TfrmCadTabPreco_Itens.RxDBLookupCombo3Enter(Sender: TObject);
begin
  if trim(RxDBLookupCombo3.Text) <> '' then
    vID_Cor_Ant := RxDBLookupCombo3.KeyValue
  else
    vID_Cor_Ant := 0;
end;

procedure TfrmCadTabPreco_Itens.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if (RxDBLookupCombo3.Text <> '') then
  begin
    if (RxDBLookupCombo3.KeyValue <> vID_Cor_Ant) and (fDMCadTab_Preco.cdsCombinacao.Locate('ID_COR_COMBINACAO',RxDBLookupCombo3.KeyValue,[loCaseInsensitive])) then
    begin
      CurrencyEdit1.Value := fDMCadTab_Preco.cdsCombinacaoPRECO_CUSTO.AsFloat;
      CurrencyEdit2.Value := fDMCadTab_Preco.cdsCombinacaoPRECO_VENDA.AsFloat;
    end;
  end;
end;

procedure TfrmCadTabPreco_Itens.edtRef2Exit(Sender: TObject);
var
  vAux : String;
begin
  if Trim(edtRef2.Text) <> '' then
  begin
    vAux := Monta_Numero(edtRef2.Text,0);
    if not fDMCadTab_Preco.cdsProduto.Locate('REF2',vAux,[loCaseInsensitive]) then
    begin
      MessageDlg('*** Produto não encontrado!', mtInformation, [mbOk], 0);
      edtRef2.SetFocus;
      edtRef2.SelectAll;
      exit;
    end;
    edtRef2.Text := fDMCadTab_Preco.cdsProdutoREFERENCIA.AsString;
    RxDBLookupCombo4.KeyValue := fDMCadTab_Preco.cdsProdutoID.AsInteger;
    RxDBLookupCombo2.KeyValue := fDMCadTab_Preco.cdsProdutoID.AsInteger;
    RxDBLookupCombo4.TabStop  := False;
    RxDBLookupCombo2.TabStop  := False;
    CurrencyEdit2.SetFocus;
  end;
end;

procedure TfrmCadTabPreco_Itens.edtRef2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    vReferencia_Pos := '';
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vID_TabPreco := 0;
    frmSel_Produto.vTipo_Prod := 'P';
    frmSel_Produto.Edit2.Text := Monta_Numero(edtRef2.Text,0);
    frmSel_Produto.ShowModal;
    FreeAndNil(frmSel_Produto);
    edtRef2.Text := Monta_Numero(vReferencia_Pos,0);
  end;
end;

procedure TfrmCadTabPreco_Itens.edtRef2Enter(Sender: TObject);
begin
  RxDBLookupCombo4.TabStop := True;
  RxDBLookupCombo2.TabStop := True;
end;

procedure TfrmCadTabPreco_Itens.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    edtRef2.Text := RxDBLookupCombo4.Text;
end;

end.
