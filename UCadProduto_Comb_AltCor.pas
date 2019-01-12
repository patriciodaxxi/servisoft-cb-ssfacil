unit UCadProduto_Comb_AltCor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, Mask, RxDBComb, ToolEdit, RXDBCtrl, DB;

type
  TfrmCadProduto_Comb_AltCor = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label2: TLabel;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }

    function  fnc_Erro: Boolean;
    procedure prc_Abrir_Material_Cor;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_Comb_AltCor: TfrmCadProduto_Comb_AltCor;


implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadProduto_Comb_AltCor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Comb_Mat.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Comb_AltCor.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);

  prc_Abrir_Material_Cor;
end;

procedure TfrmCadProduto_Comb_AltCor.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vQtd: Real;
  vAux: String;
begin
  if fnc_Erro then
    exit;

  vFlagErro := False;

  try
    if trim(RxDBLookupCombo3.Text) <> '' then
      fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString := RxDBLookupCombo3.Text
    else
    begin
      fDMCadProduto.cdsProduto_Comb_MatNOME_COR_COMBINACAO.AsString := '';
      fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger             := 0;
    end;
    fDMCadProduto.cdsProduto_Comb_Mat.Post;

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

function TfrmCadProduto_Comb_AltCor.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  if not(fDMCadProduto.cdsMaterial_Cor.IsEmpty) and (fDMCadProduto.cdsProduto_Comb_MatID_COR.AsInteger <= 0) then
  begin
    if fDMCadProduto.qParametros_LoteLOTE_TEXTIL.AsString <> 'S' then
      vMsgErro := vMsgErro + #13 + '*** Cor não informada!';
  end;
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_Comb_AltCor.BitBtn4Click(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  Close;
end;

procedure TfrmCadProduto_Comb_AltCor.prc_Abrir_Material_Cor;
begin
  fDMCadProduto.cdsMaterial_Cor.Close;
  fDMCadProduto.sdsMaterial_Cor.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_Comb_MatID_MATERIAL.AsInteger;
  fDMCadProduto.cdsMaterial_Cor.Open;
end;

end.
