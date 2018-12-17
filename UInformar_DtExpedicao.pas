unit UInformar_DtExpedicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, NxCollection, CurrEdit, UDMCadPedido, SqlExpr,
  RxLookup;

type
  TfrmInformar_DtExpedicao = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vID_Pedido : Integer;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
  end;

var
  frmInformar_DtExpedicao: TfrmInformar_DtExpedicao;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfrmInformar_DtExpedicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Tag = 1 then
  begin
    FreeAndNil(fDMCadPedido);
    Tag := 0;
  end;
  Action := Cafree;
end;

procedure TfrmInformar_DtExpedicao.btnConfirmarClick(Sender: TObject);
var
  vGravou : Boolean;
begin
  if vID_Pedido <= 0 then
    exit;
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data expedição não informada!', mtInformation, [mbOk], 0);
    Exit;
  end;
  vGravou := False;
  fDMCadPedido.prc_Localizar(vID_Pedido);
  if fDMCadPedido.cdsPedido.IsEmpty then
    exit;
  fDMCadPedido.cdsPedido_Itens.First;
  while not fDMCadPedido.cdsPedido_Itens.Eof do
  begin
    if (fDMCadPedido.cdsPedido_ItensDTEXPEDICAO.IsNull) and (StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensQTD_FATURADO.AsFloat)) > 0) then
    begin
      fDMCadPedido.cdsPedido_Itens.Edit;
      fDMCadPedido.cdsPedido_ItensDTEXPEDICAO.AsDateTime := DateEdit1.Date;
      fDMCadPedido.cdsPedido_Itens.Post;
      vGravou := True;
    end;
    fDMCadPedido.cdsPedido_Itens.Next;
  end;
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadPedido.cdsPedido.Edit;
    fDMCadPedido.cdsPedidoID_TRANSPORTADORA.AsInteger := RxDBLookupCombo1.KeyValue;
    fDMCadPedido.cdsPedido.Post;
  end;
  fDMCadPedido.cdsPedido.ApplyUpdates(0);
  if not vGravou then
    MessageDlg('*** Data de expedição não gravada, pedido não faturado!', mtInformation, [mbOk], 0);
  Close;
end;

procedure TfrmInformar_DtExpedicao.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInformar_DtExpedicao.CurrencyEdit1Exit(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  label3.Caption := '';
  label4.Caption := '';
  RxDBLookupCombo1.ClearValue;
  vID_Pedido := 0;
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    MessageDlg('*** Nº Pedido não informado!', mtInformation, [mbOk], 0);
    Exit;
  end;

  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT DISTINCT P.ID, P.ID_CLIENTE, P.DTEMISSAO, P.PEDIDO_CLIENTE, CLI.NOME NOME_CLIENTE, N.id_transportadora, P.ID_TRANSPORTADORA ID_TRANSPORTADORA_PED'
                       + ' FROM PEDIDO P'
                       + ' INNER JOIN PESSOA CLI'
                       + ' ON P.ID_CLIENTE = CLI.CODIGO'
                       + ' LEFT JOIN notafiscal_itens NP'
                       + ' on P.ID = NP.id_pedido'
                       + ' LEFT JOIN NOTAFISCAL N'
                       + ' ON NP.ID = N.ID'
                       + ' WHERE P.NUM_PEDIDO = ' + IntToStr(CurrencyEdit1.AsInteger);
    sds.Open;
    if sds.IsEmpty then
    begin
      MessageDlg('*** Pedido não encontrado !', mtInformation, [mbOk], 0);
      Exit;
    end;
    label3.Caption := 'Cliente: ' + sds.FieldByName('NOME_CLIENTE').AsString;
    label4.Caption := 'Ped.Cliente OC: ' + sds.FieldByName('PEDIDO_CLIENTE').AsString;
    vID_Pedido     := sds.FieldByName('ID').AsInteger;
    if sds.FieldByName('ID_TRANSPORTADORA').AsInteger > 0 then
      RxDBLookupCombo1.KeyValue := sds.FieldByName('ID_TRANSPORTADORA').AsInteger
    else
    if sds.FieldByName('ID_TRANSPORTADORA_PED').AsInteger > 0 then
      RxDBLookupCombo1.KeyValue := sds.FieldByName('ID_TRANSPORTADORA_PED').AsInteger;
  except
  end;
  FreeAndNil(sds);
end;

procedure TfrmInformar_DtExpedicao.FormShow(Sender: TObject);
begin
  if Tag = 1 then
    fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

end.
