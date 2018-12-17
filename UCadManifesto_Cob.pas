unit UCadManifesto_Cob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadManifesto, ExtCtrls,
  StdCtrls, RxLookup, Mask, DBCtrls, Buttons, DB, RzCmboBx, RzDBCmbo;

type
  TfrmCadManifesto_Cob = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vID_Servico_Ant: Integer;    
  public
    { Public declarations }
    fDMCadManifesto : TDMCadManifesto;
    vVlr_Ant : Real;

  end;

var
  frmCadManifesto_Cob: TfrmCadManifesto_Cob;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadManifesto_Cob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadManifesto.cdsManifesto_Cob.State in [dsEdit,dsInsert] then
    fDMCadManifesto.cdsManifesto_Cob.Cancel;
  Action := Cafree;
end;

procedure TfrmCadManifesto_Cob.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadManifesto);
  DBEdit1.SetFocus;
end;

procedure TfrmCadManifesto_Cob.BitBtn1Click(Sender: TObject);
begin
  fDMCadManifesto.vMsgManifesto := '';
  if trim(fDMCadManifesto.cdsManifesto_CobDESCRICAO.AsString) = '' then
    fDMCadManifesto.vMSGManifesto := fDMCadManifesto.vMSGManifesto + #13 + '*** Descrição não informada!';
  if trim(fDMCadManifesto.vMSGManifesto) <> '' then
  begin
    MessageDlg(fDMCadManifesto.vMSGManifesto, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadManifesto.cdsManifesto_Cob.Post;
  fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',(fDMCadManifesto.cdsManifestoVLR_NOTA.AsFloat - vVlr_Ant)
                                                                               + fDMCadManifesto.cdsManifesto_CobVALOR.AsFloat));
  Close;
end;

procedure TfrmCadManifesto_Cob.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
