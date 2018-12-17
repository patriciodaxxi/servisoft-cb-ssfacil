unit UNFe_Log;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, UDMNFe, StdCtrls, DBCtrls,
  Mask, NxCollection;

type
  TfrmNFe_Log = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    btnAtualizaRec: TNxButton;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizaRecClick(Sender: TObject);
  private
    { Private declarations }

    procedure prc_Le_cdsNFe_Log;
    
  public
    { Public declarations }
    fDMNFe: TDMNFe;

  end;

var
  frmNFe_Log: TfrmNFe_Log;

implementation

uses rsDBUtils, DB;


{$R *.dfm}

procedure TfrmNFe_Log.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmNFe_Log.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMNFe);
  prc_Le_cdsNFe_Log;
end;

procedure TfrmNFe_Log.prc_Le_cdsNFe_Log;
begin
  fDMNFe.mNFe_Log.EmptyDataSet;
  fDMNFe.cdsNFe_Log.First;
  while not fDMNFe.cdsNFe_Log.Eof do
  begin
    fDMNFe.mNFe_Log.Insert;
    fDMNFe.mNFe_LogID.AsInteger     := fDMNFe.cdsNFe_LogID.AsInteger;
    fDMNFe.mNFe_LogID_NFE.AsInteger := fDMNFe.cdsNFe_LogID_NFE.AsInteger;
    fDMNFe.mNFe_LogDataRecebimento.AsSQLTimeStamp := fDMNFe.cdsNFe_LogDATA_RECEBIMENTO.AsSQLTimeStamp;
    fDMNFe.mNFe_LogProtocolo.AsString := fDMNFe.cdsNFe_LogPROTOCOLO.AsString;
    fDMNFe.mNFe_LogStatus.AsInteger := fDMNFe.cdsNFe_LogSTATUS.AsInteger;
    fDMNFe.mNFe_LogMotivo.AsString  := fDMNFe.cdsNFe_LogMOTIVO.AsString;
    fDMNFe.mNFe_LogMSGDados.Value   := fDMNFe.cdsNFe_LogMSGDADOS.Value;
    fDMNFe.mNFe_LogMSGRETWS.Value   := fDMNFe.cdsNFe_LogMSGRETWS.Value;
    fDMNFe.mNFe_LogMSGRESULTADO.Value := fDMNFe.cdsNFe_LogMSGRESULTADO.Value;
    fDMNFe.prc_Procurar_Recibo;
    fDMNFe.mNFe_LogNRecibo.AsString      := fDMNFe.vNRec_Log;
    fDMNFe.mNFe_LogNRecibo_Orig.AsString := fDMNFe.vNRec_Orig;
    fDMNFe.mNFe_Log.Post;
    fDMNFe.cdsNFe_Log.Next;
  end;
end;

procedure TfrmNFe_Log.btnAtualizaRecClick(Sender: TObject);
begin
  if MessageDlg('Deseja atualizar o recibo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  if trim(fDMNFe.mNFe_LogNRecibo_Orig.AsString) <> '' then
  begin
    fDMNFe.cdsNota_Eletronica.Edit;
    fdmnfe.cdsNota_EletronicaNRO_RECIBO.AsString := fDMNFe.mNFe_LogNRecibo_Orig.AsString;
    fDMNFe.cdsNota_EletronicaXML_ASSINADO_PROC.Clear;
    fDMNFe.cdsNota_Eletronica.Post;
    fDMNFe.cdsNota_Eletronica.ApplyUpdates(0);
  end;
end;

end.
