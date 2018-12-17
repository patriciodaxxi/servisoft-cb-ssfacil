unit UCadPedido_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, NxCollection, UDMCadPedido, Grids, DBGrids,
  SMDBGrid, Mask, ToolEdit, CurrEdit, uSel_Produto, DB, DBVGrids, ExtCtrls;

type
  TfrmCadPedido_Mat = class(TForm)
    NxPanel1: TNxPanel;
    NxLabel1: TNxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    NxLabel2: TNxLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    NxLabel3: TNxLabel;
    NxPanel2: TNxPanel;
    Label1: TLabel;
    NxLabel4: TNxLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label2: TLabel;
    Edit1: TEdit;
    VDBGrid1: TVDBGrid;
    NxPanel3: TNxPanel;
    Edit2: TEdit;
    VDBGrid2: TVDBGrid;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure VDBGrid1Exit(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VDBGrid2Exit(Sender: TObject);
    procedure VDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vItemMat: Integer;

    procedure prc_Limpa_Dados;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmCadPedido_Mat: TfrmCadPedido_Mat;

implementation

uses uUtilPadrao, rsDBUtils, UDMUtil;

{$R *.dfm}

procedure TfrmCadPedido_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (fDMCadPedido.cdsPedido_Etiqueta.State in [dsEdit, dsInsert]) and (trim(fDMCadPedido.cdsPedido_EtiquetaTAMANHO.AsString) <> '') then
    fDMCadPedido.cdsPedido_Etiqueta.Post
  else
  if (fDMCadPedido.cdsPedido_Etiqueta.State in [dsEdit, dsInsert]) and (trim(fDMCadPedido.cdsPedido_EtiquetaTAMANHO.AsString) <> '') then
    fDMCadPedido.cdsPedido_Etiqueta.CancelUpdates;
  Action := Cafree;
end;

procedure TfrmCadPedido_Mat.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (RxDBLookupCombo1.Text <> '') then
    CurrencyEdit1.SetFocus
  else
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmCadPedido_Mat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  fDMCadPedido.cdsMaterial.Close;
  fDMCadPedido.cdsMaterial.Open;
  vItemMat := 0;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger <> fDMCadPedido.cdsClienteCODIGO.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadPedido_Mat.RxDBLookupCombo1Exit(Sender: TObject);
var
  vPrecoAux: Real;
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    vPrecoAux := 0;
    fDMCadPedido.cdsMaterial.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
    if (btnAlterar.Tag <> 1) and (fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger > 0) then
      vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,RxDBLookupCombo1.KeyValue);
    if StrToFloat(FormatFloat('0.00000',vPrecoAux)) <= 0 then
      vPrecoAux := fDMCadPedido.cdsMaterialPRECO_VENDA.AsFloat;
    //CurrencyEdit2.Value := fDMCadPedido.cdsMaterialPRECO_VENDA.AsFloat;
    CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00000',vPrecoAux));
    Edit2.Text          := fDMCadPedido.cdsMaterialREFERENCIA.AsString;
    Label2.Visible      := (fDMCadPedido.cdsMaterialIMPRIMIR_ETIQUETA_NAV.AsString = 'S');
    Edit1.Visible       := (fDMCadPedido.cdsMaterialIMPRIMIR_ETIQUETA_NAV.AsString = 'S');
    VDBGrid2.Visible    := (fDMCadPedido.cdsMaterialIMPRIMIR_ETIQUETA_NAV.AsString = 'S');
  end;
end;

procedure TfrmCadPedido_Mat.btnConfirmarClick(Sender: TObject);
var
  vMsgAux: String;
  vItemAux: Integer;
begin
  vMsgAux := '';
  if RxDBLookupCombo1.Text = '' then
    vMsgAux := vMsgAux + #13 + '*** Material não informado!';
  if CurrencyEdit1.Value <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Consumo não informado!';
  if CurrencyEdit2.Value <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Valor não informado!';
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadPedido.cdsMaterial.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);

  if vItemMat > 0 then
  begin
    if fDMCadPedido.cdsPedido_Material.Locate('ITEM_MAT',vItemMat,[loCaseInsensitive]) then
      fDMCadPedido.cdsPedido_Material.Edit;
  end;
  if not(fDMCadPedido.cdsPedido_Material.State in [dsEdit]) then
  begin
    fDMCadPedido.cdsPedido_Material.Last;
    vItemAux := fDMCadPedido.cdsPedido_MaterialITEM_MAT.AsInteger;
    fDMCadPedido.cdsPedido_Material.Insert;
    fdmCadPedido.cdsPedido_MaterialID.AsInteger          := fDMCadPedido.cdsPedidoID.AsInteger;
    fdmCadPedido.cdsPedido_MaterialITEM.AsInteger        := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
    fdmCadPedido.cdsPedido_MaterialITEM_MAT.AsInteger    := vItemAux + 1;
  end;
  fdmCadPedido.cdsPedido_MaterialID_PRODUTO.AsInteger  := RxDBLookupCombo1.KeyValue;
  fdmCadPedido.cdsPedido_MaterialQTD_CONSUMO.AsFloat   := CurrencyEdit1.Value;
  fDMCadPedido.cdsPedido_MaterialQTD_PECA.AsFloat      := CurrencyEdit3.Value;
  fdmCadPedido.cdsPedido_MaterialVLR_UNITARIO.AsFloat  := CurrencyEdit2.Value;
  fdmCadPedido.cdsPedido_MaterialUNIDADE.AsString      := fDMCadPedido.cdsMaterialUNIDADE.AsString;
  fdmCadPedido.cdsPedido_MaterialNOME_PRODUTO.AsString := fDMCadPedido.cdsMaterialNOME.AsString;
  fdmCadPedido.cdsPedido_MaterialREFERENCIA.AsString   := fDMCadPedido.cdsMaterialREFERENCIA.AsString;
  fdmCadPedido.cdsPedido_MaterialVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',CurrencyEdit3.Value * CurrencyEdit2.Value * CurrencyEdit1.Value));

  fDMCadPedido.cdsPedido_MaterialQTD_CONSUMO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',fdmCadPedido.cdsPedido_MaterialQTD_CONSUMO.AsFloat * fDMCadPedido.cdsPedido_MaterialQTD_PECA.AsFloat));
  fDMCadPedido.cdsPedido_MaterialNOME_ETIQUETA.AsString    := Edit1.Text;
  fDMCadPedido.cdsPedido_Material.Post;

  fDMCadPedido.cdsPedido_Etiqueta.First;
  while not fDMCadPedido.cdsPedido_Etiqueta.Eof do
    fDMCadPedido.cdsPedido_Etiqueta.Delete;
  fDMCadPedido.mTamanho_Mat.First;
  while not fDMCadPedido.mTamanho_Mat.Eof do
  begin
    if trim(fDMCadPedido.mTamanho_MatTamanho.AsString) <> '' then
    begin
      fDMCadPedido.cdsPedido_Etiqueta.Insert;
      fDMCadPedido.cdsPedido_EtiquetaID.AsInteger       := fDMCadPedido.cdsPedido_MaterialID.AsInteger;
      fDMCadPedido.cdsPedido_EtiquetaITEM.AsInteger     := fDMCadPedido.cdsPedido_MaterialITEM.AsInteger;
      fDMCadPedido.cdsPedido_EtiquetaITEM_MAT.AsInteger := fDMCadPedido.cdsPedido_MaterialITEM_MAT.AsInteger;
      fDMCadPedido.cdsPedido_EtiquetaTAMANHO.AsString   := fDMCadPedido.mTamanho_MatTamanho.AsString;
      fDMCadPedido.cdsPedido_Etiqueta.Post;
    end;
    fDMCadPedido.mTamanho_Mat.Next;
  end;
  if (fDMCadPedido.cdsPedido_Material.State in [dsEdit,dsInsert]) then
    fDMCadPedido.cdsPedido_Material.Post;
  prc_Limpa_Dados;
  Edit2.SetFocus;
end;

procedure TfrmCadPedido_Mat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadPedido_Mat.prc_Limpa_Dados;
begin
  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  Edit1.Clear;
  Edit2.Clear;
  vItemMat := 0;
  btnAlterar.Tag := 0;
  fDMCadPedido.mTamanho_Mat.EmptyDataSet;
end;

procedure TfrmCadPedido_Mat.btnAlterarClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Material.IsEmpty then
    exit;
  vItemMat := fDMCadPedido.cdsPedido_MaterialITEM_MAT.AsInteger;
  Edit2.Text                := fDMCadPedido.cdsPedido_MaterialID_PRODUTO.AsString;
  RxDBLookupCombo1.KeyValue := fDMCadPedido.cdsPedido_MaterialID_PRODUTO.AsInteger;
  CurrencyEdit1.Value       := fDMCadPedido.cdsPedido_MaterialQTD_CONSUMO.AsFloat;
  CurrencyEdit2.Value       := fDMCadPedido.cdsPedido_MaterialVLR_UNITARIO.AsFloat;
  CurrencyEdit3.Value       := fDMCadPedido.cdsPedido_MaterialQTD_PECA.AsFloat;
  Edit1.Text                := fDMCadPedido.cdsPedido_MaterialNOME_ETIQUETA.AsString;
  btnAlterar.Tag            := 1;
  fDMCadPedido.cdsPedido_Etiqueta.First;
  while not fDMCadPedido.cdsPedido_Etiqueta.Eof do
  begin
    if trim(fDMCadPedido.cdsPedido_EtiquetaTAMANHO.AsString) <> '' then
    begin
      fDMCadPedido.mTamanho_Mat.Insert;
      fDMCadPedido.mTamanho_MatTamanho.AsString := fDMCadPedido.cdsPedido_EtiquetaTAMANHO.AsString;
      fDMCadPedido.mTamanho_Mat.Post;
    end;
    fDMCadPedido.cdsPedido_Etiqueta.Next;
  end;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadPedido_Mat.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Material.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMCadPedido.cdsPedido_Etiqueta.First;
  while not fDMCadPedido.cdsPedido_Etiqueta.Eof do
    fDMCadPedido.cdsPedido_Etiqueta.Delete;
  fDMCadPedido.cdsPedido_Material.Delete;
end;

procedure TfrmCadPedido_Mat.VDBGrid1Exit(Sender: TObject);
begin
  if fDMCadPedido.cdsPedido_Material.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Material.Post;
end;

procedure TfrmCadPedido_Mat.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    CurrencyEdit3.SetFocus;
end;

procedure TfrmCadPedido_Mat.CurrencyEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    CurrencyEdit2.SetFocus;
end;

procedure TfrmCadPedido_Mat.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if Edit1.Visible then
      Edit1.SetFocus
    else
      btnConfirmar.SetFocus;
  end;
end;

procedure TfrmCadPedido_Mat.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    VDBGrid2.SetFocus;
end;

procedure TfrmCadPedido_Mat.Edit2Exit(Sender: TObject);
begin
  if trim(Edit2.Text) <> '' then
  begin
    if not fDMCadPedido.cdsMaterial.Locate('REFERENCIA',Edit2.Text,[loCaseInsensitive]) then
    begin
      MessageDlg('*** Material não cadastrado ', mtError, [mbOk], 0);
      Edit2.Clear;
    end
    else
      RxDBLookupCombo1.KeyValue := fDMCadPedido.cdsMaterialID.AsInteger;
  end;
end;

procedure TfrmCadPedido_Mat.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (trim(Edit2.Text) <> '') then
  begin
    if not fDMCadPedido.cdsMaterial.Locate('REFERENCIA',Edit2.Text,[loCaseInsensitive]) then
      MessageDlg('*** Material não cadastrado ', mtError, [mbOk], 0)
    else
    begin
      RxDBLookupCombo1.KeyValue := fDMCadPedido.cdsMaterialID.AsInteger;
      RxDBLookupCombo1.SetFocus;
    end;
  end
  else
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    if (vCodProduto_Pos > 0) and (fDMCadPedido.cdsMaterial.Locate('ID',vCodProduto_Pos,[loCaseInsensitive])) then
      Edit2.Text := fDMCadPedido.cdsMaterialREFERENCIA.AsString;
    Edit2.SetFocus;
  end;
end;

procedure TfrmCadPedido_Mat.VDBGrid2Exit(Sender: TObject);
begin
  if fDMCadPedido.mTamanho_Mat.State in [dsEdit,dsInsert] then
    fDMCadPedido.mTamanho_Mat.Post;
end;

procedure TfrmCadPedido_Mat.VDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if (Key = Vk_Return) then
  begin
    Showmessage(VDBGrid2.Columns.Items[VDBGrid2.SelectedIndex].Field.Text);

    if (trim(fDMCadPedido.mTamanho_MatTamanho.AsString) = '') then
    begin
      btnConfirmar.SetFocus;
    end;

  end;}
end;

end.
