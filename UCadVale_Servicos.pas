unit UCadVale_Servicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadVale, Buttons, RxLookup,
  DBCtrls, DB, RxDBComb, RzTabs, StdCtrls, Mask;

type
  TfrmCadVale_Servicos = class(TForm)
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
    procedure prc_Calcular_VlrItens;

    function fnc_Erro: Boolean;

    function fnc_Verificar_Servico: Boolean;
  public
    { Public declarations }
    fDMCadVale: TDMCadVale;
    vGravacao_Ok: Boolean;
    procedure prc_Move_Dados_Itens;
  end;

var
  frmCadVale_Servicos: TfrmCadVale_Servicos;

implementation

uses rsDBUtils, uCadServico_Int, uUtilPadrao, UDMUtil;

{$R *.dfm}

procedure TfrmCadVale_Servicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmCadVale.cdsValeServico.State in [dsEdit,dsInsert] then
    fDmCadVale.cdsValeServico.Cancel;
  Action := Cafree;
end;

procedure TfrmCadVale_Servicos.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDmCadVale);

  vCodServicoAnt := fDmCadVale.cdsValeServicoID_SERVICO_INT.AsInteger;

  Label13.Visible := (fDmCadVale.qParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit1.Visible := (fDmCadVale.qParametrosUSA_ID_PRODUTO.AsString = 'S');
end;

procedure TfrmCadVale_Servicos.prc_Move_Dados_Itens;
var
  vPrecoAux: Real;
  vDescExp: String;
begin
  if not fDmCadVale.cdsServico_Int.Locate('ID',fDmCadVale.cdsValeServicoID_SERVICO_INT.AsInteger,[loCaseInsensitive]) then
    exit;
  fDmCadVale.cdsPessoa.Locate('CODIGO',fDmCadVale.cdsValeID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDmCadVale.cdsUF.Locate('UF',fDmCadVale.cdsPessoaUF.AsString,[loCaseInsensitive]);

  if fDmCadVale.cdsValeFILIAL.AsInteger <> fDmCadVale.cdsFilialID.AsInteger then
    fDmCadVale.cdsFilial.Locate('ID',fDmCadVale.cdsValeFILIAL.AsInteger,[loCaseInsensitive]);

  fDmCadVale.cdsValeServicoVLR_UNITARIO.AsFloat := fDmCadVale.cdsServico_IntVLR_UNITARIO.AsFloat;
end;

procedure TfrmCadVale_Servicos.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadVale_Servicos.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDmCadVale.cdsValeServicoQTD.AsFloat > 0) and (fDmCadVale.cdsValeServicoVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDmCadVale.cdsValeServicoQTD.AsFloat * fDmCadVale.cdsValeServicoVLR_UNITARIO.AsFloat));
  fDmCadVale.cdsValeServicoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadVale_Servicos.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadVale_Servicos.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
begin
  vGravacao_Ok := False;
  if fnc_Erro then
    exit;

  if fDmCadVale.cdsValeServico.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;
  vFlagErro := False;
  fDmCadVale.cdsValeServicoNOME_SERVICO_INT.AsString := RxDBLookupCombo2.Text;
  try
    //*****
    fDmCadVale.cdsValeServico.Post;
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
      fDmCadVale.prc_Inserir_Servicos;
      if DBEdit1.Visible then
        DBEdit1.SetFocus
      else
        RxDBLookupCombo2.SetFocus;
    end;
  end;
end;

function TfrmCadVale_Servicos.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  //Verificação de erros para não deixar gravar o item
  Result := True;
  vMsgErro := '';
  if fDmCadVale.cdsServico_IntID.AsInteger <> fDmCadVale.cdsValeServicoID_SERVICO_INT.AsInteger then
    fDmCadVale.cdsServico_Int.Locate('ID',fDmCadVale.cdsValeServicoID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
  if fDmCadVale.cdsValeServicoID_SERVICO_INT.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Serviço não informado!';
  if fDmCadVale.cdsValeServicoUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDmCadVale.cdsValeServicoQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (StrToFloat(FormatFloat('0.000000',fDmCadVale.cdsValeServicoVLR_UNITARIO.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadVale_Servicos.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadVale_Servicos.SpeedButton1Click(Sender: TObject);
begin
  frmCadServico_Int := TfrmCadServico_Int.Create(self);
  frmCadServico_Int.ShowModal;

  FreeAndNil(frmCadServico_Int);

  SpeedButton2Click(sender);
end;

procedure TfrmCadVale_Servicos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender);
end;

procedure TfrmCadVale_Servicos.Panel5Exit(Sender: TObject);
begin
  if not fDmCadVale.cdsServico_Int.Locate('ID',fDmCadVale.cdsValeServicoID_SERVICO_INT.AsInteger,[loCaseInsensitive]) then
    Exit;
end;

procedure TfrmCadVale_Servicos.Panel1Exit(Sender: TObject);
begin
  if (fDmCadVale.cdsValeServico.State in [dsInsert]) or
     (fDmCadVale.cdsValeServicoID_SERVICO_INT.AsInteger <> vCodServicoAnt) then
    prc_Move_Dados_Itens;
end;

procedure TfrmCadVale_Servicos.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmCadVale.cdsServico_Int.IndexFieldNames := 'NOME';
end;

procedure TfrmCadVale_Servicos.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit1.Text) <> '') then
  begin
    if not fnc_Verificar_Servico then
      MessageDlg('*** Código do serviço não encontrado!', mtError, [mbOk], 0)
  end;
end;

function TfrmCadVale_Servicos.fnc_Verificar_Servico: Boolean;
begin
  Result := False;
  if fDmCadVale.cdsServico_Int.Locate('ID',DBEdit1.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadVale_Servicos.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadVale_Servicos.SpeedButton2Click(Sender: TObject);
begin
  fDMCadVale.cdsServico_Int.Close;
  fDMCadVale.cdsServico_Int.Open;
end;

end.
