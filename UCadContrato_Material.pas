unit UCadContrato_Material;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOS, ExtCtrls, StdCtrls,
  RxLookup, Mask, DBCtrls, Buttons, DB;

type
  TfrmCadContratoMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOS: TDMCadOS;
  end;

var
  frmCadContratoMaterial: TfrmCadContratoMaterial;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadContratoMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fDMCadOS.cdsProduto.Close;
  if fDMCadOS.cdsOS_Material.State in [dsEdit,dsInsert] then
    fDMCadOS.cdsOS_Material.Cancel;
  Action := Cafree;
end;

procedure TfrmCadContratoMaterial.BitBtn1Click(Sender: TObject);
begin
  fDMCadOS.vMsgOS := '';
  if fDMCadOS.cdsOS_MaterialID_PRODUTO.AsInteger <= 0 then
    fDMCadOS.vMsgOS := fDMCadOS.vMsgOS + #13 + '*** Produto não informado!';
  if fDMCadOS.cdsOS_MaterialNUM_SERIE.AsInteger <= 0 then
    fDMCadOS.vMsgOS := fDMCadOS.vMsgOS + #13 + '*** Número de série não informado!';
  if trim(fDMCadOS.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOS.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadOS.cdsOS_Material.Post;
  Close;
end;

procedure TfrmCadContratoMaterial.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadContratoMaterial.DBEdit1Exit(Sender: TObject);
begin
  fDMCadOS.cdsProduto.IndexFieldNames := 'ID';
  fDMCadOS.cdsProduto.FindKey([DBedit1.Text]);
end;

procedure TfrmCadContratoMaterial.FormShow(Sender: TObject);
begin
  fDMCadOS.cdsProduto.Open;
end;

procedure TfrmCadContratoMaterial.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fdmCados.cdsProduto.IndexFieldNames := 'NOME';                      
end;

end.
