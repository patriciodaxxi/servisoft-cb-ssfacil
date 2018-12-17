unit UCadContaOrc_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadContaOrc, StdCtrls, Mask, DBCtrls, NxCollection, ExtCtrls, DB;

type
  TfrmCadContaOrc_Itens = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadContaOrc: TDMCadContaOrc;
  end;

var
  frmCadContaOrc_Itens: TfrmCadContaOrc_Itens;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadContaOrc_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadContaOrc);
end;

procedure TfrmCadContaOrc_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadContaOrc.cdsContaOrc_Itens.State in [dsEdit,dsInsert] then
    fDMCadContaOrc.cdsContaOrc_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadContaOrc_Itens.btnConfirmarClick(Sender: TObject);
var
  vMSGAux : String;
begin
  vMSGAux := '';
  if fDMCadContaOrc.cdsContaOrc_ItensANO.AsInteger <= 2015 then
    vMSGAux := vMSGAux + #13 + '*** Ano inválido!';
  if StrToFloat(FormatFloat('0.00',fDMCadContaOrc.cdsContaOrc_ItensVALOR.AsInteger)) <= 0  then
    vMSGAux := vMSGAux + #13 + '*** Valor não informado!';
  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadContaOrc.cdsContaOrc_ItensTIPO_REG.AsString := fDMCadContaOrc.cdsContaOrcTIPO_CALCULO.AsString;
  fDMCadContaOrc.cdsContaOrc_Itens.Post;
  Close;
end;

procedure TfrmCadContaOrc_Itens.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
