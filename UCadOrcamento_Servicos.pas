unit UCadOrcamento_Servicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, Buttons,
  RxLookup, DBCtrls, DB, Mask, RxDBComb, RzTabs, StdCtrls;

type
  TfrmCadOrcamento_Servicos = class(TForm)
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label13: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel5Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    vCodServicoAnt: Integer;
    vValorAnt: Currency;

    procedure prc_Calcular_VlrItens;
    procedure prc_Calcular_Tot_Orc;

    function fnc_Erro: Boolean;
    function fnc_Verificar_Servico: Boolean;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vGravacao_Ok: Boolean;
    procedure prc_Move_Dados_Itens;
  end;

var
  frmCadOrcamento_Servicos: TfrmCadOrcamento_Servicos;

implementation

uses rsDBUtils, uCadServico_Int, uUtilPadrao, UDMUtil;

{$R *.dfm}

procedure TfrmCadOrcamento_Servicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadPedido.cdsServico_Int.Close;
  if fDmCadPedido.cdsPedidoServico.State in [dsEdit,dsInsert] then
    fDmCadPedido.cdsPedidoServico.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOrcamento_Servicos.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadPedido);

  vValorAnt := fDMCadPedido.cdsPedidoServicoVLR_TOTAL.AsCurrency;

  fDMCadPedido.cdsServico_Int.Open;

  vCodServicoAnt := fDmCadPedido.cdsPedidoServicoID_SERVICO_INT.AsInteger;

  Label13.Visible := (fDmCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit1.Visible := (fDmCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
end;

procedure TfrmCadOrcamento_Servicos.prc_Move_Dados_Itens;
var
  vPrecoAux: Real;
  vDescExp: String;
begin
  if not fDmCadPedido.cdsServico_Int.Locate('ID',fDmCadPedido.cdsPedidoServicoID_SERVICO_INT.AsInteger,[loCaseInsensitive]) then
    exit;
  fDmCadPedido.cdsCliente.Locate('CODIGO',fDmCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDmCadPedido.cdsUF.Locate('UF',fDmCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);

  if fDmCadPedido.cdsPedidoFILIAL.AsInteger <> fDmCadPedido.cdsFilialID.AsInteger then
    fDmCadPedido.cdsFilial.Locate('ID',fDmCadPedido.cdsPedidoFILIAL.AsInteger,[loCaseInsensitive]);

  fDmCadPedido.cdsPedidoServicoVLR_UNITARIO.AsFloat := fDmCadPedido.cdsServico_IntVLR_UNITARIO.AsFloat;
end;

procedure TfrmCadOrcamento_Servicos.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOrcamento_Servicos.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDmCadPedido.cdsPedidoServicoQTD.AsFloat > 0) and (fDmCadPedido.cdsPedidoServicoVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDmCadPedido.cdsPedidoServicoQTD.AsFloat * fDmCadPedido.cdsPedidoServicoVLR_UNITARIO.AsFloat));
  fDmCadPedido.cdsPedidoServicoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadOrcamento_Servicos.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOrcamento_Servicos.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
begin
  vGravacao_Ok := False;
  if fnc_Erro then
    exit;

  if fDmCadPedido.cdsPedidoServico.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;
  vFlagErro := False;
  fDmCadPedido.cdsPedidoServicoNOME_SERVICO_INT.AsString := RxDBLookupCombo2.Text;
  prc_Calcular_Tot_Orc;
  try
    //*****
    fDmCadPedido.cdsPedidoServico.Post;
    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vGravacao_Ok := False;
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
      fDmCadPedido.prc_Inserir_Servicos;
      if DBEdit1.Visible then
        DBEdit1.SetFocus
      else
        RxDBLookupCombo2.SetFocus;
    end;
  end;
end;

function TfrmCadOrcamento_Servicos.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if fDmCadPedido.cdsServico_IntID.AsInteger <> fDmCadPedido.cdsPedidoServicoID_SERVICO_INT.AsInteger then
    fDmCadPedido.cdsServico_Int.Locate('ID',fDmCadPedido.cdsPedidoServicoID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
  if fDmCadPedido.cdsPedidoServicoID_SERVICO_INT.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Serviço não informado!';
  if fDmCadPedido.cdsPedidoServicoUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDmCadPedido.cdsPedidoServicoQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (StrToFloat(FormatFloat('0.000000',fDmCadPedido.cdsPedidoServicoVLR_UNITARIO.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadOrcamento_Servicos.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadOrcamento_Servicos.SpeedButton1Click(Sender: TObject);
begin
  frmCadServico_Int := TfrmCadServico_Int.Create(self);
  frmCadServico_Int.ShowModal;

  FreeAndNil(frmCadServico_Int);

  SpeedButton2Click(sender);
end;

procedure TfrmCadOrcamento_Servicos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender);
end;

procedure TfrmCadOrcamento_Servicos.Panel5Exit(Sender: TObject);
begin
  if not fDmCadPedido.cdsServico_Int.Locate('ID',fDmCadPedido.cdsPedidoServicoID_SERVICO_INT.AsInteger,[loCaseInsensitive]) then
    Exit;
end;

procedure TfrmCadOrcamento_Servicos.Panel1Exit(Sender: TObject);
begin
  if (fDmCadPedido.cdsPedidoServico.State in [dsInsert]) or
     (fDmCadPedido.cdsPedidoServicoID_SERVICO_INT.AsInteger <> vCodServicoAnt) then
    prc_Move_Dados_Itens;
end;

procedure TfrmCadOrcamento_Servicos.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmCadPedido.cdsServico_Int.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOrcamento_Servicos.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit1.Text) <> '') then
  begin
    if not fnc_Verificar_Servico then
      MessageDlg('*** Código do serviço não encontrado!', mtError, [mbOk], 0)
  end;
end;

function TfrmCadOrcamento_Servicos.fnc_Verificar_Servico: Boolean;
begin
  Result := False;
  if fDmCadPedido.cdsServico_Int.Locate('ID',DBEdit1.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadOrcamento_Servicos.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadOrcamento_Servicos.SpeedButton2Click(Sender: TObject);
begin
  fDmCadPedido.cdsServico_Int.Close;
  fDmCadPedido.cdsServico_Int.Open;
end;

procedure TfrmCadOrcamento_Servicos.prc_Calcular_Tot_Orc;
begin
  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat +
                                             fDMCadPedido.cdsPedidoServicoVLR_TOTAL.AsFloat -
                                             vValorAnt;
  fDMCadPedido.cdsPedidoVLR_SERVICO.AsFloat := fDMCadPedido.cdsPedidoVLR_SERVICO.AsFloat +
                                               fDMCadPedido.cdsPedidoServicoVLR_TOTAL.AsFloat -
                                               vValorAnt;
end;

end.
