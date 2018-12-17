unit UCadPlano_DRE_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, uDMCadPlano_DRE;

type
  TfrmCadPlano_DRE_Itens = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    edtNome: TEdit;
    lblF2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure prc_Abrir_qContaOrc(ID:Integer);

  private
    { Private declarations }
    function  fnc_Erro: Boolean;
  public
    { Public declarations }
    fDMCadPlano_DRE: TDMCadPlano_DRE;

  end;

var
  frmCadPlano_DRE_Itens: TfrmCadPlano_DRE_Itens;

implementation

uses rsDBUtils, uUtilPadrao, USel_Pessoa, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadPlano_DRE_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPlano_DRE.cdsPlano_DRE_Itens.State in [dsEdit,dsInsert] then
    fDMCadPlano_DRE.cdsPlano_DRE_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadPlano_DRE_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPlano_DRE);
  DBEdit2.SetFocus;
  if fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger > 0 then
    prc_Abrir_qContaOrc(fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger);
end;

procedure TfrmCadPlano_DRE_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
begin
  if fnc_Erro then
    exit;
  //if StrToFloat(FormatFloat('0.00',fDMCadProduto.cdsProduto_ComissaoPERC_COMISSAO.AsFloat)) <= 0 then
  //begin
  //  if MessageDlg('Confirma cliente sem comissão para este produto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
  //    exit;
  //end;



  vFlagErro := False;
  try
    fDMCadPlano_DRE.cdsPlano_DRE_Itens.Post;
  except
    on E: exception do
    begin
      vFlagErro := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  if not vFlagErro then
    Close;
end;

function TfrmCadPlano_DRE_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Centro de Custo não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadPlano_DRE_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadPlano_DRE_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadPlano_DRE_Itens.DBEdit2Exit(Sender: TObject);
begin
  if (trim(DBEdit2.Text) = '') or (trim(DBEdit2.Text) = '0') then
    prc_Abrir_qContaOrc(0)
  else
  begin
    prc_Abrir_qContaOrc(StrToInt(DBEdit2.Text));
    if fDMCadPlano_DRE.qContaOrc.IsEmpty then
    begin
      MessageDlg('*** Conta de Orçamento não cadastrada', mtError, [mbOk], 0);
      DBEdit2.SetFocus;
    end
    else
    if fDMCadPlano_DRE.qContaOrcTIPO.AsString <> 'A' then
    begin
      MessageDlg('*** Conta não é Analítica', mtError, [mbOk], 0);
      DBEdit2.SetFocus;
    end;
  end;
end;

procedure TfrmCadPlano_DRE_Itens.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.Clear;
    prc_Abrir_qContaOrc(fDMCadPlano_DRE.cdsPlano_DRE_ItensID_CONTA_ORCAMENTO.AsInteger);
  end;

end;

procedure TfrmCadPlano_DRE_Itens.prc_Abrir_qContaOrc(ID: Integer);
begin
  edtNome.Clear;
  if ID <= 0 then
    exit;
  fDMCadPlano_DRE.qContaOrc.Close;
  fDMCadPlano_DRE.qContaOrc.ParamByName('ID').AsInteger := ID;
  fDMCadPlano_DRE.qContaOrc.Open;
  edtNome.Text := fDMCadPlano_DRE.qContaOrcDESCRICAO.AsString;
end;

end.
