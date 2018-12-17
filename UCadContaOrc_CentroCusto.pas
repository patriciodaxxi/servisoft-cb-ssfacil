unit UCadContaOrc_CentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, uDmCadContaOrc;

type
  TfrmCadContaOrc_CentroCusto = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edtNomeCentroCusto: TEdit;
    lblF2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure prc_Abrir_qCentroCusto(ID:Integer);

  private
    { Private declarations }
    function  fnc_Erro: Boolean;
  public
    { Public declarations }
    fdmCadContaOrc: TdmCadContaOrc;

  end;

var
  frmCadContaOrc_CentroCusto: TfrmCadContaOrc_CentroCusto;

implementation

uses rsDBUtils, uUtilPadrao, USel_Pessoa, USel_ContaOrc, USel_CentroCusto;

{$R *.dfm}

procedure TfrmCadContaOrc_CentroCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fdmCadContaOrc.cdsContaOrc_CCusto.State in [dsEdit,dsInsert] then
    fdmCadContaOrc.cdsContaOrc_CCusto.Cancel;
  Action := Cafree;
end;

procedure TfrmCadContaOrc_CentroCusto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fdmCadContaOrc);
  DBEdit2.SetFocus;
end;

procedure TfrmCadContaOrc_CentroCusto.BitBtn1Click(Sender: TObject);
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
    fdmCadContaOrc.cdsContaOrc_CCusto.Post;
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

function TfrmCadContaOrc_CentroCusto.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fdmCadContaOrc.cdsContaOrc_CCustoID_CENTROCUSTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Centro de Custo não informado!';
  if StrToFloat(FormatFloat('0.00',fdmCadContaOrc.cdsContaOrc_CCustoPERCENTUAL.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** % de Custo não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadContaOrc_CentroCusto.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadContaOrc_CentroCusto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadContaOrc_CentroCusto.DBEdit2Enter(Sender: TObject);
begin
  lblF2.Visible := True;
end;

procedure TfrmCadContaOrc_CentroCusto.DBEdit2Exit(Sender: TObject);
begin
  lblF2.Visible := False;
  if (trim(DBEdit2.Text) = '') or (trim(DBEdit2.Text) = '0') then
    prc_Abrir_qCentroCusto(0)
  else
  begin
    prc_Abrir_qCentroCusto(StrToInt(DBEdit2.Text));
    if fdmCadContaOrc.qCentroCusto.IsEmpty then
    begin
      MessageDlg('*** ID Centro de Custo não cadastrado', mtError, [mbOk], 0);
      DBEdit2.SetFocus;
    end;
  end;

end;

procedure TfrmCadContaOrc_CentroCusto.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_Centro_Custo := fdmCadContaOrc.cdsContaOrc_CCustoID_CENTROCUSTO.AsInteger;
    frmSel_CentroCusto := TfrmSel_CentroCusto.Create(Self);
//    frmSel_CentroCusto.ComboBox2.ItemIndex := 2;
    frmSel_CentroCusto.ShowModal;
    if vID_Centro_Custo > 0 then
      fdmCadContaOrc.cdsContaOrc_CCustoID_CENTROCUSTO.AsInteger := vID_Centro_Custo
    else
      fdmCadContaOrc.cdsContaOrc_CCustoID_CENTROCUSTO.Clear;
    prc_Abrir_qCentroCusto(fdmCadContaOrc.cdsContaOrc_CCustoID_CENTROCUSTO.AsInteger);
  end;

end;

procedure TfrmCadContaOrc_CentroCusto.prc_Abrir_qCentroCusto(ID: Integer);
begin
  edtNomeCentroCusto.Clear;
  if ID <= 0 then
    exit;
  fdmCadContaOrc.qCentroCusto.Close;
  fdmCadContaOrc.qCentroCusto.ParamByName('ID').AsInteger := ID;
  fdmCadContaOrc.qCentroCusto.Open;
  edtNomeCentroCusto.Text := fdmCadContaOrc.qCentroCustoDESCRICAO.AsString;
end;

end.
