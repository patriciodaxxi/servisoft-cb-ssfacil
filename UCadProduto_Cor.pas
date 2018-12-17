unit UCadProduto_Cor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, UCadCor, Grids, DBGrids, SMDBGrid, NxCollection,
  CurrEdit, sqlExpr;

type
  TfrmCadProduto_Cor = class(TForm)
    Panel3: TPanel;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    pnlDados: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadCor: TfrmCadCor;

    function  fnc_Erro: Boolean;

    procedure prc_Habilita;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Cor: TfrmCadProduto_Cor;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, USel_Cor, DmdDatabase;

{$R *.dfm}

procedure TfrmCadProduto_Cor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Cor.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Cor.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Cor.FormShow(Sender: TObject);
var
  i : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);

  if (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString <> 'S') then
  begin
    for i := 1 to SMDBGrid1.ColCount - 2 do
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'PRECO_CUSTO') or (SMDBGrid1.Columns[i].FieldName = 'PRECO_VENDA')  then
        SMDBGrid1.Columns[i].Visible := False;
    end;
  end;
  Label1.Visible  := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
  CurrencyEdit1.Visible := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
  CurrencyEdit2.Visible  := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
  Label5.Visible := (fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S');
end;

function TfrmCadProduto_Cor.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if RxDBLookupCombo1.KeyValue <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Cor não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;

end;

procedure TfrmCadProduto_Cor.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close
  else
  if (Key = Vk_F2) and (not(fDMCadProduto.cdsProduto_Cor.State in [dsInsert,dsEdit]))  then
  begin
    frmSel_Cor := TfrmSel_Cor.Create(Self);
    frmSel_Cor.fDMCadProduto := fDMCadProduto;
    frmSel_Cor.ShowModal;
    FreeAndNil(frmSel_Cor);
  end;
end;

procedure TfrmCadProduto_Cor.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
  begin
  if (fDMCadProduto.cdsProduto_CorID.AsInteger > 0) and (fDMCadProduto.cdsProduto_CorINATIVO.AsString = 'S') then
    AFont.Color := clRed;
end;

procedure TfrmCadProduto_Cor.btnConfirmarClick(Sender: TObject);
  var
    vItem : Integer;
begin
  if fnc_Erro then
    exit;
  if not (fDMCadProduto.cdsProduto_Cor.State in [dsEdit]) then
  begin
    if not fDMCadProduto.cdsProduto_Cor.Locate('ID_COR_COMBINACAO', RxDBLookupCombo1.KeyValue,([loCaseInsensitive])) then
      fDMCadProduto.prc_Inserir_ProdCor
    else
    begin
      MessageDlg('Cor já informado no item ' + IntToStr(fDMCadProduto.cdsProduto_CorITEM.AsInteger),mtError,[mbOK],0);
      exit;
    end;
  end
  else
  begin
    vItem := fDMCadProduto.cdsProduto_CorITEM.AsInteger;
    if fDMCadProduto.cdsProduto_Cor.Locate('ID_COR_COMBINACAO', RxDBLookupCombo1.KeyValue,([loCaseInsensitive])) then
    begin
      if fDMCadProduto.cdsProduto_CorITEM.AsInteger <> vItem then
      begin
        MessageDlg('Cor já informada no item ' + IntToStr(fDMCadProduto.cdsProduto_CorITEM.AsInteger),mtError,[mbOK],0);
        fDMCadProduto.cdsProduto_Cor.Locate('ITEM',vItem,([loCaseInsensitive]));
        fDMCadProduto.cdsProduto_Cor.Edit;
        exit;
      end
      else
      begin
        fDMCadProduto.cdsProduto_Cor.Locate('ITEM',vItem,([loCaseInsensitive]));
        fDMCadProduto.cdsProduto_Cor.Edit;
      end;
    end
    else
    begin
      fDMCadProduto.cdsProduto_Cor.Locate('ITEM',vItem,([loCaseInsensitive]));
      fDMCadProduto.cdsProduto_Cor.Edit;
    end;
  end;

  try
    fdmCadProduto.cdsProduto_CorID_COR_COMBINACAO.AsInteger := RxDBLookupCombo1.KeyValue;
    fDMCadProduto.cdsProduto_CorPRECO_CUSTO.AsFloat := CurrencyEdit1.Value;
    fDMCadProduto.cdsProduto_CorPRECO_VENDA.AsFloat := CurrencyEdit2.Value;
    if fDMCadProduto.cdsCor.Locate('ID',fDMCadProduto.cdsProduto_CorID_COR_COMBINACAO.AsInteger,([Locaseinsensitive])) then
      fDMCadProduto.cdsProduto_CorNOME.AsString := fDMCadProduto.cdsCorNOME.AsString;
    fDMCadProduto.cdsProduto_Cor.Post;
    RxDBLookupCombo1.ClearValue;
    prc_Habilita;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_Cor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Cor);
end;

procedure TfrmCadProduto_Cor.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Cor.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if fDMCadProduto.cdsProduto_Cor.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Cor.Cancel;
  prc_Habilita;
  SMDBGrid1.SetFocus;
end;

procedure TfrmCadProduto_Cor.btnInserirClick(Sender: TObject);
begin
  prc_Habilita;
  RxDBLookupCombo1.ClearValue;
//  fDMCadProduto.prc_Inserir_ProdCor;
//  if fDMCadProduto.cdsProdutoUSA_PRECO_COR.AsString = 'S' then
//    fDMCadProduto.cdsProduto_CorPRECO_VENDA.AsFloat := fDMCadProduto.cdsProdutoPRECO_VENDA.AsFloat;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProduto_Cor.prc_Habilita;
begin
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  pnlDados.Enabled     := not(pnlDados.Enabled);
  SMDBGrid1.Enabled    := not(SMDBGrid1.Enabled);
end;

procedure TfrmCadProduto_Cor.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Cor.IsEmpty then
    exit;
  fDMCadProduto.cdsProduto_Cor.Edit;
  RxDBLookupCombo1.KeyValue := fDMCadProduto.cdsProduto_CorID_COR_COMBINACAO.AsInteger;
  CurrencyEdit1.Value := fDMCadProduto.cdsProduto_CorPRECO_CUSTO.AsFloat;
  CurrencyEdit2.Value := fDMCadProduto.cdsProduto_CorPRECO_VENDA.AsFloat;
  prc_Habilita;
  DBEdit2.SetFocus;
end;

procedure TfrmCadProduto_Cor.btnExcluirClick(Sender: TObject);
var
  sds : TSQLDataSet;
begin
  if fDMCadProduto.cdsProduto_Cor.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a Cor?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.Close;
    sds.CommandText := 'SELECT * FROM PRODUTO_COMB_MAT WHERE ID_MATERIAL = ' + IntToStr(fDMCadProduto.cdsProduto_CorID.asInteger);
    sds.CommandText := sds.CommandText + ' AND ID_COR = ' + IntToStr(fDMCadProduto.cdsProduto_CorID_COR_COMBINACAO.asInteger);
    sds.Open;
    if not sds.IsEmpty then
    begin
      MessageDlg('Cor não pode ser excluída, possui movimentação!',mtInformation,[mbOK],0);
      Exit;
    end;
  finally
    FreeAndNil(sds);
  end;

  try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.Close;
    sds.CommandText := 'SELECT * FROM ESTOQUE_MOV WHERE ID_PRODUTO = ' + IntToStr(fDMCadProduto.cdsProduto_CorID.asInteger);
    sds.CommandText := sds.CommandText + ' AND ID_COR = ' + IntToStr(fDMCadProduto.cdsProduto_CorID_COR_COMBINACAO.asInteger);
    sds.Open;
    if not sds.IsEmpty then
    begin
      MessageDlg('Cor não pode ser excluída, possui movimento de estoque!',mtInformation,[mbOK],0);
      Exit;
    end;
  finally
    FreeAndNil(sds);
  end;


  fDMCadProduto.cdsProduto_Cor.Delete;
end;

procedure TfrmCadProduto_Cor.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadCor := TfrmCadCor.Create(self);
  ffrmCadCor.ShowModal;
  FreeAndNil(ffrmCadCor);

  SpeedButton5Click(sender);
end;

procedure TfrmCadProduto_Cor.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsCor.Close;
  fDMCadProduto.cdsCor.Open;
end;

end.
