unit UIniciarOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadOP, StdCtrls, RxLookup, Mask, ToolEdit, CurrEdit,
  NxCollection, SqlExpr, dbXPress, DB;

type
  TfrmIniciarOP = class(TForm)
    Label6: TLabel;
    edtReferencia: TEdit;
    edtNome_Produto: TEdit;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label8: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtReferenciaExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Limpa_Campos;
  public
    { Public declarations }
    fDMCadOP: TDMCadOP;
  end;

var
  frmIniciarOP: TfrmIniciarOP;

implementation

uses USel_OP, USel_Produto, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmIniciarOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmIniciarOP.edtReferenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := 0;
    vReferencia_Pos := '';
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vReferencia_Pos <> '' then
       edtReferencia.Text := vReferencia_Pos;
  end
  else
  if (key = VK_RETURN) and (trim(edtReferencia.Text) <> '') then
    DateEdit1.SetFocus;
end;

procedure TfrmIniciarOP.edtReferenciaExit(Sender: TObject);
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  fDMCadOP.prc_Abrir_qProduto(edtReferencia.Text,0);
  edtNome_Produto.Text := fDMCadOP.qProdutoNOME.AsString;
  if (trim(edtReferencia.Text) <> '') and (fDMCadOP.qProduto.IsEmpty) then
  begin
    MessageDlg('*** Referência não encontrada!', mtError, [mbOk], 0);
    edtReferencia.SetFocus;
  end
  else
  begin
    fDMCadOP.vNum_OP  := 0;
    fDMCadOP.vItem_OP := 0;
    fDMCadOP.vQtd_OP  := 0;
    fDMCadOP.vID_OP   := 0;
    fDMCadOP.vQtd_OP_Prod := 0;
    fDMCadOP.cdsSel_OP.Close;
    fDMCadOP.sdsSel_OP.CommandText := fDMCadOP.ctSel_OP
                                   + ' and IT.dtinicial IS NULL ';
    fDMCadOP.sdsSel_OP.ParamByName('ID_PRODUTO').AsInteger := fDMCadOP.qProdutoID.AsInteger;
    fDMCadOP.cdsSel_OP.Open;
    if fDMCadOP.cdsSel_OP.RecordCount > 1 then
    begin
      frmSel_OP := TfrmSel_OP.Create(self);
      frmSel_OP.vID_Produto_OP := fDMCadOP.qProdutoID.AsInteger;
      frmSel_OP.ShowModal;
    end
    else
    if not fDMCadOP.cdsSel_OP.IsEmpty then
    begin
      fDMCadOP.vNum_OP  := fDMCadOP.cdsSel_OPNUM_OP.AsInteger;
      fDMCadOP.vItem_OP := fDMCadOP.cdsSel_OPITEM.AsInteger;
      fDMCadOP.vQtd_OP  := fDMCadOP.cdsSel_OPQTD_APRODUZIR.AsInteger;
      fDMCadOP.vID_OP   := fDMCadOP.cdsSel_OPID.AsInteger;
    end;
    CurrencyEdit1.AsInteger := fDMCadOP.vNum_OP;
    CurrencyEdit2.AsInteger := fDMCadOP.vItem_OP;
    CurrencyEdit4.AsInteger := fDMCadOP.vQtd_OP;
  end;
end;

procedure TfrmIniciarOP.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmIniciarOP.btnConfirmarClick(Sender: TObject);
var
  vMsgAux: String;
  ID: TTransactionDesc;
  vID_Estoque: Integer;
  vItemAux: Integer;
begin
  vMsgAux := '';
  if trim(edtReferencia.Text) = '' then
    vMsgAux := vMsgAux + #13 + '*** Referência não informada!';
  if CurrencyEdit4.AsInteger <= 0 then
    vMsgAux := vMsgAux + #13 + '*** Quantidade não informada!';
  if DateEdit1.Date <= 10 then
    vMsgAux := vMsgAux + #13 + '*** Data de início não informada!';
  fDMCadOP.prc_Localizar(fDMCadOP.vID_OP);
  if fDMCadOP.cdsOP.IsEmpty then
    vMsgAux := vMsgAux + #13 + '*** OP não encontrada!';
  if not fDMCadOP.cdsOP_Itens.Locate('ID;ITEM',VarArrayOf([fDMCadOP.cdsOPID.AsInteger,fDMCadOP.vItem_OP]),[locaseinsensitive]) then
    vMsgAux := vMsgAux + #13 + '*** Item da OP não encontrado!';
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadOP.prc_Abrir_qProduto('',fDMCadOP.cdsOP_ItensID_PRODUTO.AsInteger);

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadOP.cdsOP_Itens.Edit;
    fDMCadOP.cdsOP_ItensDTINICIAL.AsDateTime := DateEdit1.Date;
    fDMCadOP.cdsOP_Itens.Post;

    fDMCadOP.cdsOP_Itens.ApplyUpdates(0);
    
    prc_Limpa_Campos;

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  edtReferencia.SetFocus;
end;

procedure TfrmIniciarOP.prc_Limpa_Campos;
begin
  edtReferencia.Clear;
  edtNome_Produto.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit4.Clear;
end;

procedure TfrmIniciarOP.FormShow(Sender: TObject);
begin
  DateEdit1.Date := Date;
end;

end.
