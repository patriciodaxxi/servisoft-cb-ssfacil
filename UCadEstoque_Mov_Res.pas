unit UCadEstoque_Mov_Res;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, StdCtrls, UDMEstoque_Res, Mask,
  ExtCtrls, ToolEdit, CurrEdit, NxCollection, DBCtrls, RXDBCtrl, RxDBComb, DB;

type
  TfrmCadEstoque_Mov_Res = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel1: TPanel;
    Label10: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label12: TLabel;
    Label2: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBDateEdit1: TDBDateEdit;
    Panel3: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fDMEstoque_Res: TDMEstoque_Res;
    vID_Produto_Ant: Integer;
    procedure prc_Chama_Form_Produto(Tipo_Ref_Nome: String);
    procedure prc_Abrir_Tabelas;

    { Private declarations }
  public
    { Public declarations }
    vID_MovEstoque_Res: Integer;
    vStatus: String;
    procedure prc_Excluir(ID: Integer);    
  end;

var
  frmCadEstoque_Mov_Res: TfrmCadEstoque_Mov_Res;

implementation

uses uUtilPadrao, rsDBUtils, USel_Produto;

{$R *.dfm}

procedure TfrmCadEstoque_Mov_Res.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMEstoque_Res.cdsEstoque_Mov_Res.State in [dsEdit,dsInsert] then
    fDMEstoque_Res.cdsEstoque_Mov_Res.Cancel;
  Action := Cafree;
end;

procedure TfrmCadEstoque_Mov_Res.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto('N');
end;

procedure TfrmCadEstoque_Mov_Res.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto('R');
end;

procedure TfrmCadEstoque_Mov_Res.prc_Chama_Form_Produto(Tipo_Ref_Nome: String);
begin
  vCodProduto_Pos := 0;
  if (Tipo_Ref_Nome = 'R') and (RxDBLookupCombo4.Text <> '') then
    vCodProduto_Pos := RxDBLookupCombo4.KeyValue
  else
  if (Tipo_Ref_Nome = 'N') and (RxDBLookupCombo2.Text <> '') then
    vCodProduto_Pos := RxDBLookupCombo2.KeyValue;
  frmSel_Produto := TfrmSel_Produto.Create(Self);
  frmSel_Produto.ShowModal;
  FreeAndNil(frmSel_Produto);
  if (Tipo_Ref_Nome = 'R') and (vCodProduto_Pos > 0) then
  begin
    RxDBLookupCombo4.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo4.SetFocus;
  end
  else
  if (Tipo_Ref_Nome = 'N') and (vCodProduto_Pos > 0) then
  begin
    RxDBLookupCombo2.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo2.SetFocus;
  end;
end;


procedure TfrmCadEstoque_Mov_Res.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
  begin
    if fDMEstoque_Res.cdsProduto.Locate('ID',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]) then
      RxDBLookupCombo2.KeyValue := fDMEstoque_Res.cdsProdutoID.AsInteger;
  end;
end;

procedure TfrmCadEstoque_Mov_Res.FormShow(Sender: TObject);
begin
  fDMEstoque_Res.cdsProduto.Open;
  fDMEstoque_Res.cdsFilial.Open;
  if vStatus = 'I' then
  begin
    fDMEstoque_Res.prc_Inserir;
    fDMEstoque_Res.cdsEstoque_Mov_ResDATA.AsDateTime  := Date;
    fDMEstoque_Res.cdsEstoque_Mov_ResFILIAL.AsInteger := fDMEstoque_Res.cdsFilialID.AsInteger;
  end
  else
  begin
    fDMEstoque_Res.prc_Localizar(vID_MovEstoque_Res);
    prc_Abrir_Tabelas;
    fDMEstoque_Res.cdsEstoque_Mov_Res.Edit;
  end;
end;

procedure TfrmCadEstoque_Mov_Res.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    if fDMEstoque_Res.cdsProduto.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]) then
      RxDBLookupCombo4.KeyValue := fDMEstoque_Res.cdsProdutoID.AsInteger;
  end;
end;

procedure TfrmCadEstoque_Mov_Res.Panel1Exit(Sender: TObject);
begin
  if vID_Produto_Ant <> fDMEstoque_Res.cdsEstoque_Mov_ResID_PRODUTO.AsInteger then
    prc_Abrir_Tabelas;
end;

procedure TfrmCadEstoque_Mov_Res.btnConfirmarClick(Sender: TObject);
var
  vMSGErro: String;
begin
  if MessageDlg('Deseja confirmar o cadastro do estoque reserva?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vMSGErro := '';
  if trim(RxDBLookupCombo4.Text) = '' then
    vMSGErro := vMSGErro + #13 + '*** Produto não informado!';
  if (trim(RxDBLookupCombo1.Text) = '') and (fDMEstoque_Res.cdsCombinacao.RecordCount > 0) then
    vMSGErro := vMSGErro + #13 + '*** Cor/Combinação não informada!';
  if (trim(RxDBLookupCombo3.Text) = '') and (fDMEstoque_Res.cdsProduto_Tam.RecordCount > 0) then
    vMSGErro := vMSGErro + #13 + '*** Tamanho não informado!';
  if fDMEstoque_Res.cdsEstoque_Mov_ResNUM_ORDEM.AsInteger <= 0 then
    vMSGErro := vMSGErro + #13 + '*** Nº da Ordem de Produção não informado!';
  if StrToFloat(FormatFloat('0.0000',fDMEstoque_Res.cdsEstoque_Mov_ResQTD.AsFloat)) <= 0 then
    vMSGErro := vMSGErro + #13 + '*** Quantidade não informada!';
  if (fDMEstoque_Res.cdsEstoque_Mov_ResTIPO_ES.AsString <> 'E') and (fDMEstoque_Res.cdsEstoque_Mov_ResTIPO_ES.AsString <> 'S') then
    vMSGErro := vMSGErro + #13 + '*** Tipo não informado!';
  if fDMEstoque_Res.cdsEstoque_Mov_ResDATA.AsDateTime <= 10 then
    vMSGErro := vMSGErro + #13 + '*** Data não informada!';
  if trim(RxDBLookupCombo5.Text) = '' then
    vMSGErro := vMSGErro + #13 + '*** Filial não informada!';
  if trim(vMSGErro) <> '' then
  begin
    MessageDlg(vMSGErro, mtInformation, [mbOk], 0);
    exit;
  end;
  fDMEstoque_Res.prc_Gravar;
  Close;
end;

procedure TfrmCadEstoque_Mov_Res.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadEstoque_Mov_Res.Panel1Enter(Sender: TObject);
begin
  vID_Produto_Ant := fDMEstoque_Res.cdsEstoque_Mov_ResID_PRODUTO.AsInteger;
end;

procedure TfrmCadEstoque_Mov_Res.prc_Abrir_Tabelas;
begin
  fDMEstoque_Res.cdsCombinacao.Close;
  fDMEstoque_Res.cdsProduto_Tam.Close;
  if fDMEstoque_Res.cdsEstoque_Mov_ResID_PRODUTO.AsInteger > 0 then
  begin
    fDMEstoque_Res.sdsCombinacao.ParamByName('ID').AsInteger := fDMEstoque_Res.cdsEstoque_Mov_ResID_PRODUTO.AsInteger;
    fDMEstoque_Res.cdsCombinacao.Open;
    fDMEstoque_Res.sdsProduto_Tam.ParamByName('ID').AsInteger := fDMEstoque_Res.cdsEstoque_Mov_ResID_PRODUTO.AsInteger;
    fDMEstoque_Res.cdsProduto_Tam.Open;
  end;
end;

procedure TfrmCadEstoque_Mov_Res.prc_Excluir(ID: Integer);
begin
  fDMEstoque_Res.prc_Localizar(ID);
  if (fDMEstoque_Res.cdsEstoque_Mov_ResTIPO_MOV.AsString = 'NTS') or (fDMEstoque_Res.cdsEstoque_Mov_ResTIPO_MOV.AsString = 'OC') then
  begin
    MessageDlg('*** Registro não pode ser excluido por este procedimento!', mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja excluir o registro do estoque de reserva ' + fDMEstoque_Res.cdsEstoque_Mov_ResID.AsString + '?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMEstoque_Res.prc_Excluir;
end;

procedure TfrmCadEstoque_Mov_Res.FormCreate(Sender: TObject);
begin
  fDMEstoque_Res := TDMEstoque_Res.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMEstoque_Res);
end;

end.
