unit UCadRecibo_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadRecibo, ExtCtrls,
  StdCtrls, RxLookup, Mask, DBCtrls, Buttons, DB, RzCmboBx, RzDBCmbo;

type
  TfrmCadRecibo_Itens = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBMemo2: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
  private
    { Private declarations }
    vID_Servico_Ant: Integer;    
  public
    { Public declarations }
    fDMCadRecibo : TDMCadRecibo;

  end;

var
  frmCadRecibo_Itens: TfrmCadRecibo_Itens;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadRecibo_Itens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadRecibo.cdsRecibo_Itens.State in [dsEdit,dsInsert] then
    fDMCadRecibo.cdsRecibo_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadRecibo_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadRecibo);

  if fDMCadRecibo.cdsClienteCODIGO.AsInteger <> fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger then
    fDMCadRecibo.cdsCliente.Locate('CODIGO',fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadRecibo_Itens.BitBtn1Click(Sender: TObject);
begin
  fDMCadRecibo.vMSGRecibo := '';
  if fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger <= 0 then
    fDMCadRecibo.vMSGRecibo := fDMCadRecibo.vMSGRecibo + #13 + '*** Serviço interno não informado!';
  if fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsInteger <= 0 then
    fDMCadRecibo.vMSGRecibo := fDMCadRecibo.vMSGRecibo + #13 + '*** Valor unitário não informado!';
  if trim(fDMCadRecibo.vMSGRecibo) <> '' then
  begin
    MessageDlg(fDMCadRecibo.vMSGRecibo, mtError, [mbOk], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.00000',fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat)) <= 0 then
    fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat := StrToFloat(FormatFloat('0.00000',1));

  if (fDMCadRecibo.cdsRecibo_Itens.State in [dsInsert]) or (fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger <> vID_Servico_Ant) then
  begin
    if (fDMCadRecibo.cdsServico_Int.Locate('ID',fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive])) then
      fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString := fDMCadRecibo.cdsServico_IntNOME.AsString + ' ' + fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString;
  end;

  fDMCadRecibo.cdsRecibo_Itens.Post;

  Close;
end;

procedure TfrmCadRecibo_Itens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadRecibo_Itens.DBEdit2Exit(Sender: TObject);
begin
  fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat * fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat));
end;

procedure TfrmCadRecibo_Itens.DBEdit3Exit(Sender: TObject);
begin
  fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat * fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat));
end;

procedure TfrmCadRecibo_Itens.SpeedButton1Click(Sender: TObject);
begin
  fDMCadRecibo.cdsServico_Int.Close;
  fDMCadRecibo.cdsServico_Int.Open;
end;

procedure TfrmCadRecibo_Itens.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadRecibo.cdsServico_Int.IndexFieldNames := 'NOME';
end;

procedure TfrmCadRecibo_Itens.Panel2Exit(Sender: TObject);
var
  vCodido_NBS: String;
begin
  if fDMCadRecibo.cdsServico_IntID.AsInteger <> fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger then
    fDMCadRecibo.cdsServico_Int.Locate('ID',fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
    
end;

procedure TfrmCadRecibo_Itens.Panel2Enter(Sender: TObject);
begin
  vID_Servico_Ant := fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger; 
end;

end.
