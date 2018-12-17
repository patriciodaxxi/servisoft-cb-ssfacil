unit UCadOrdemServico_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls, StdCtrls,
  RxLookup, Mask, DBCtrls, Buttons, DB, RzCmboBx, RzDBCmbo, RxDBComb, RzTabs, NxCollection, UHistServico_Prod, ToolEdit, RXDBCtrl;

type
  TfrmCadOrdemServico_Itens = class(TForm)
    Label1: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    Label24: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RzPageControl1: TRzPageControl;
    TS_Defeito: TRzTabSheet;
    DBMemo2: TDBMemo;
    TS_OBS: TRzTabSheet;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    TS_Acessorios: TRzTabSheet;
    DBMemo3: TDBMemo;
    pnlCod_Barras: TPanel;
    Label20: TLabel;
    Edit1: TEdit;
    btnConsultar: TNxButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label11: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label12: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultarClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
  private
    { Private declarations }
    ffrmHistServico_Prod: TfrmHistServico_Prod;
    vNum_Serie_Ant: String;
    function fnc_Verificar_Cod_Barras: Boolean;
    procedure prc_Verifica_Serie;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmCadOrdemServico_Itens: TfrmCadOrdemServico_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, SqlExpr;

{$R *.dfm}

procedure TfrmCadOrdemServico_Itens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOrdemServico_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  Label10.Visible     := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  DBDateEdit1.Visible := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  Label11.Visible     := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  DBDateEdit2.Visible := not(fDMCadOrdemServico.qParametros_SerUSA_OS_REDUZIDA.AsString = 'S');
  Label9.Visible      := (fDMCadOrdemServico.qParametros_SerMOSTRAR_SERIE_TROCA.AsString = 'S');
  DBEdit6.Visible     := (fDMCadOrdemServico.qParametros_SerMOSTRAR_SERIE_TROCA.AsString = 'S');
  TS_Acessorios.TabVisible := ((not(fDMCadOrdemServico.qParametros_Ser.IsEmpty)) and (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_ACESSORIOS.AsString = 'S'));
  TS_Defeito.TabVisible    := ((not(fDMCadOrdemServico.qParametros_Ser.IsEmpty)) and (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_DEFEITO_ALEG.AsString = 'S'));
  if not TS_Defeito.TabVisible then
    RzPageControl1.ActivePage := TS_OBS;
end;

procedure TfrmCadOrdemServico_Itens.BitBtn1Click(Sender: TObject);
begin
  fDMCadOrdemServico.vMsgOS := '';
  if fDMCadOrdemServico.qParametrosNUMERO_SERIE_INTERNO.AsString = 'S' then
  begin
    if trim(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString) <> '' then
      if not fDMCadOrdemServico.fnc_Existe_Serie(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString) then
        fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Número da Série não existe!';
  end;
  if (trim(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString) <> '') and
     (trim(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE_TROCA.AsString) <> '') and
     (fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString = fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE_TROCA.AsString) then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Número da Série da troca não pode ser a mesma!';
  if trim(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE_TROCA.AsString) <> '' then
    if not fDMCadOrdemServico.fnc_Existe_Serie(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE_TROCA.AsString) then
      fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Número da Série da Troca não existe!';

  if TRIM(fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString) = '' then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Produto não informado!';
  if (fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_GARANTIA.AsString <> 'N') and (fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_GARANTIA.AsString <> 'T') and
     (fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_GARANTIA.AsString <> 'C') then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Tipo da garantia não informada!';

  if not fDMCadOrdemServico.qParametros_Ser.IsEmpty then
  begin
    if (trim(fDMCadOrdemServico.cdsOrdemServico_ItensDEFEITO_ALEGADO.AsString) = '') and (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_DEFEITO_ALEG.AsString = 'S') then
       fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Defeito alegado não informado!';
  end;

  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;
  try
    if (trim(fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString) = '') and (fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger > 0)
       and (fDMCadOrdemServico.qParametrosNUMERO_SERIE_INTERNO.AsString = 'S') then
      fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString := fDMCadOrdemServico.fnc_Gravar_Produto_Serie;
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadOrdemServico_Itens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOrdemServico_Itens.FormKeyDown(Sender: TObject;
 var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadOrdemServico.cdsOrdemServico_itensID_PRODUTO.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    fDMCadOrdemServico.cdsOrdemServico_itensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger > 0 then
      DBEdit1.SetFocus;
  end
  else
  if (Key = Vk_F6) then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico_Itens.DBEdit5Enter(Sender: TObject);
begin
  DBEdit5.ReadOnly := (fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger > 0);
end;

procedure TfrmCadOrdemServico_Itens.DBEdit1Exit(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger > 0) then
  begin
    if (fDMCadOrdemServico.cdsProduto.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger,[loCaseInsensitive])) then
      fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := fDMCadOrdemServico.cdsProdutoNOME.AsString
    else
    begin
      fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.Clear;
      DBEdit1.SetFocus;
    end;
  end;
end;

procedure TfrmCadOrdemServico_Itens.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit1.Text) <> '') then
  begin
    if not fnc_Verificar_Cod_Barras then
      MessageDlg('*** Código de Barras não encontrado!', mtInformation, [mbOk], 0)
    else
    begin
      fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger  := fDMCadOrdemServico.cdsProdutoID.AsInteger;
      fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := fDMCadOrdemServico.cdsProdutoNOME.AsString;
      DBEdit2.SetFocus;
    end;
  end;
end;

function TfrmCadOrdemServico_Itens.fnc_Verificar_Cod_Barras: Boolean;
begin
  Result := False;
  if (trim(Edit1.Text) <> '') and (fDMCadOrdemServico.cdsProduto.Locate('COD_BARRA',Edit1.Text,[loCaseInsensitive])) then
    Result := True;
end;

procedure TfrmCadOrdemServico_Itens.btnConsultarClick(Sender: TObject);
begin
  ffrmHistServico_Prod := TfrmHistServico_Prod.Create(self);
  if fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger > 0 then
    ffrmHistServico_Prod.RxDBLookupCombo1.KeyValue := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
  if DBEdit4.Text <> '' then
    ffrmHistServico_Prod.Edit1.Text       := DBEdit4.Text;
  ffrmHistServico_Prod.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmHistServico_Prod.ShowModal;
  FreeAndNil(ffrmHistServico_Prod);
end;

procedure TfrmCadOrdemServico_Itens.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit4.Text) <> '') then
    DBEdit1.SetFocus;
end;

procedure TfrmCadOrdemServico_Itens.prc_Verifica_Serie;
var
  vAux: String;
  vAux2: Integer;
  vInativo: String;
begin
  Label7.Visible := False;
  Label8.Visible := False;
  vAux := Monta_Numero(DBEdit4.Text,0);
  if trim(vAux) <> '' then
  begin
    vInativo := 'N';
    fDMCadOrdemServico.qPesquisaOS.Close;
    fDMCadOrdemServico.qPesquisaOS.ParamByName('NUM_SERIE').AsString := vAux;
    fDMCadOrdemServico.qPesquisaOS.Open;
    if not fDMCadOrdemServico.qPesquisaOS.IsEmpty then
    begin
      if fDMCadOrdemServico.qPesquisaOSID_PRODUTO.AsInteger > 0 then
        fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger := fDMCadOrdemServico.qPesquisaOSID_PRODUTO.AsInteger;
      fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := fDMCadOrdemServico.qPesquisaOSNOME_PRODUTO.AsString;
      fDMCadOrdemServico.cdsOrdemServico_ItensMARCA.AsString  := fDMCadOrdemServico.qPesquisaOSNOME_MARCA.AsString;
      fDMCadOrdemServico.cdsOrdemServico_ItensMODELO.AsString := fDMCadOrdemServico.qPesquisaOSMODELO.AsString;
    end;
    vAux2 := 0;
    while not fDMCadOrdemServico.qPesquisaOS.Eof do
    begin
      if fDMCadOrdemServico.qPesquisaOSTIPO.AsString = 'O' then
        vAux2 := vAux2 + 1;
      if (trim(fDMCadOrdemServico.cdsOrdemServico_ItensMARCA.AsString) = '') and (trim(fDMCadOrdemServico.qPesquisaOSNOME_MARCA.AsString) <> '') then
        fDMCadOrdemServico.cdsOrdemServico_ItensMARCA.AsString := fDMCadOrdemServico.qPesquisaOSNOME_MARCA.AsString;
      if (trim(fDMCadOrdemServico.cdsOrdemServico_ItensMODELO.AsString) = '') and (trim(fDMCadOrdemServico.qPesquisaOSMODELO.AsString) <> '') then
        fDMCadOrdemServico.cdsOrdemServico_ItensMODELO.AsString := fDMCadOrdemServico.qPesquisaOSMODELO.AsString;
      if fDMCadOrdemServico.qPesquisaOSINATIVO.AsString = 'S' then
        vInativo := 'S';
      fDMCadOrdemServico.qPesquisaOS.Next;
    end;
    if vInativo = 'S' then
    begin
      fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.Clear;
      fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.Clear;
      fDMCadOrdemServico.cdsOrdemServico_ItensMARCA.Clear;
      fDMCadOrdemServico.cdsOrdemServico_ItensMODELO.Clear;
      fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.Clear;
      MessageDlg('*** Série Inativa', mtInformation, [mbOk], 0);
      DBEdit4.SetFocus;
    end
    else
    begin
      Label7.Visible := (vAux2 > 0);
      Label8.Visible := (vAux2 > 0);
      if vAux2 > 0 then
      begin
        Label8.Caption := 'Qtd: ' + IntToStr(vAux2);
      end;
    end;
  end;
end;

procedure TfrmCadOrdemServico_Itens.DBEdit4Exit(Sender: TObject);
begin
  if fDMCadOrdemServico.qParametrosNUMERO_SERIE_INTERNO.AsString = 'S' then
    if vNum_Serie_Ant <> fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString then
      prc_Verifica_Serie;
end;

procedure TfrmCadOrdemServico_Itens.DBEdit4Enter(Sender: TObject);
begin
  vNum_Serie_Ant := fDMCadOrdemServico.cdsOrdemServico_ItensNUM_SERIE.AsString;
end;

end.
