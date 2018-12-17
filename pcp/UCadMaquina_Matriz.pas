unit UCadMaquina_Matriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadMaquina, StdCtrls,
  Buttons, DBCtrls, DB, Mask, ToolEdit, RXDBCtrl, UCadTipo_Matriz, RxLookup;

type
  TfrmCadMaquina_Matriz = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadTipo_Matriz: TfrmCadTipo_Matriz;

    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadMaquina: TDMCadMaquina;
  end;

var
  frmCadMaquina_Matriz: TfrmCadMaquina_Matriz;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadMaquina_Matriz.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadMaquina.cdsMaquina_Matriz.State in [dsEdit,dsInsert] then
    fDMCadMaquina.cdsMaquina_Matriz.Cancel;
  Action := Cafree;
end;

procedure TfrmCadMaquina_Matriz.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadMaquina);
end;

procedure TfrmCadMaquina_Matriz.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vQtd: Real;
begin
  if not(fDMCadMaquina.cdsMaquina_Matriz.State in [dsEdit,dsInsert]) then
    fDMCadMaquina.cdsMaquina_Matriz.Edit;

  if fnc_Erro then
    exit;
  vFlagErro := False;
  try
    fDMCadMaquina.cdsTipo_Matriz.Locate('ID',RxDBLookupCombo2.KeyValue,([Locaseinsensitive]));
    fDMCadMaquina.cdsMaquina_MatrizMATRIZ.AsString := fDMCadMaquina.cdsTipo_MatrizNOME.AsString;
    fDMCadMaquina.cdsMaquina_Matriz.Post;
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

function TfrmCadMaquina_Matriz.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadMaquina.cdsMaquina_MatrizID_TIPO_MATRIZ.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** Tipo matriz não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadMaquina_Matriz.BitBtn4Click(Sender: TObject);
begin
  if fDMCadMaquina.cdsMaquina_Matriz.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  Close;
end;

procedure TfrmCadMaquina_Matriz.SpeedButton4Click(Sender: TObject);
begin
  fDMCadMaquina.cdsTipo_Matriz.Close;
  fDMCadMaquina.cdsTipo_Matriz.Open;
end;

procedure TfrmCadMaquina_Matriz.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadMaquina_Matriz.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadTipo_Matriz := TfrmCadTipo_Matriz.Create(self);
  ffrmCadTipo_Matriz.ShowModal;
  FreeAndNil(ffrmCadTipo_Matriz);

  SpeedButton4Click(sender);
end;

end.
