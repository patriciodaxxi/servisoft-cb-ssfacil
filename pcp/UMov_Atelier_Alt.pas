unit UMov_Atelier_Alt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMMov_Atelier, RxLookup, StdCtrls, NxCollection;

type
  TfrmMov_Atelier_Alt = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMMov_Atelier : TDMMov_Atelier;

  end;

var
  frmMov_Atelier_Alt: TfrmMov_Atelier_Alt;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmMov_Atelier_Alt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmMov_Atelier_Alt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMMov_Atelier);
end;

procedure TfrmMov_Atelier_Alt.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMov_Atelier_Alt.btnConfirmarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Atelier não foi informado!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Confirma a troca de atelier?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMMov_Atelier.cdsTalao_Aux.Close;
  fDMMov_Atelier.sdsTalao_Aux.ParamByName('ID').AsInteger   := fDMMov_Atelier.cdsConsulta_Talao_AuxID_TALAO.AsInteger;
  fDMMov_Atelier.sdsTalao_Aux.ParamByName('ITEM').AsInteger := fDMMov_Atelier.cdsConsulta_Talao_AuxITEM.AsInteger;
  fDMMov_Atelier.cdsTalao_Aux.Open;
  if fDMMov_Atelier.cdsTalao_Aux.IsEmpty then
    MessageDlg('*** Talão auxiliar não encontrado!', mtError, [mbOk], 0)
  else
  begin
    fDMMov_Atelier.cdsTalao_Aux.Edit;
    fDMMov_Atelier.cdsTalao_AuxID_ATELIER.AsInteger := RxDBLookupCombo1.KeyValue;
    fDMMov_Atelier.cdsTalao_Aux.Post;
    fDMMov_Atelier.cdsTalao_Aux.ApplyUpdates(0);
    fDMMov_Atelier.vID_Atelier_Ant := RxDBLookupCombo1.KeyValue;
    Close;
  end;
end;

end.
