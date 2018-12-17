unit UCadProduto_Serie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, UDMCadProduto, NxCollection, ExtCtrls;

type
  TfrmCadProduto_Serie = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel3: TPanel;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Label2: TLabel;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vInativo_Serie : String;
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
  end;

var
  frmCadProduto_Serie: TfrmCadProduto_Serie;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfrmCadProduto_Serie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Serie.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Serie.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_Serie.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadProduto_Serie.btnConfirmarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_SerieNUM_SERIE.AsInteger <= 0 then
  begin
    MessageDlg('Número de Série não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadProduto.cdsProduto_Serie.Post;
  Close;
end;

procedure TfrmCadProduto_Serie.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  vInativo_Serie := fDMCadProduto.cdsProduto_SerieINATIVO.AsString;
end;

end.
