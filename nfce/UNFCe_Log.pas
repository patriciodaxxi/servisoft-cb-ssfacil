unit UNFCe_Log;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, UDMNFCe, StdCtrls, DBCtrls,
  Mask, NxCollection;

type
  TfrmNFCe_Log = class(TForm)
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
    fDMNFCe: TDMNFCe;

  end;

var
  frmNFCe_Log: TfrmNFCe_Log;

implementation

uses rsDBUtils, DB;


{$R *.dfm}

procedure TfrmNFCe_Log.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmNFCe_Log.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMNFCe);
  prc_Le_cdsNFe_Log;
end;

procedure TfrmNFCe_Log.prc_Le_cdsNFe_Log;
begin
  fDMNFCe.mNFe_Log.EmptyDataSet;
  fDMNFCe.cdsNFe_Log.First;
  while not fDMNFCe.cdsNFe_Log.Eof do
  begin
    fDMNFCe.mNFe_Log.Insert;
    fDMNFCe.mNFe_LogID.AsInteger     := fDMNFCe.cdsNFe_LogID.AsInteger;
    fDMNFCe.mNFe_LogID_NFE.AsInteger := fDMNFCe.cdsNFe_LogID_NFE.AsInteger;
    fDMNFCe.mNFe_LogDataRecebimento.AsSQLTimeStamp := fDMNFCe.cdsNFe_LogDATA_RECEBIMENTO.AsSQLTimeStamp;
    fDMNFCe.mNFe_LogProtocolo.AsString := fDMNFCe.cdsNFe_LogPROTOCOLO.AsString;
    fDMNFCe.mNFe_LogStatus.AsInteger := fDMNFCe.cdsNFe_LogSTATUS.AsInteger;
    fDMNFCe.mNFe_LogMotivo.AsString  := fDMNFCe.cdsNFe_LogMOTIVO.AsString;
    fDMNFCe.mNFe_LogMSGDados.Value   := fDMNFCe.cdsNFe_LogMSGDADOS.Value;
    fDMNFCe.mNFe_LogMSGRETWS.Value   := fDMNFCe.cdsNFe_LogMSGRETWS.Value;
    fDMNFCe.mNFe_LogMSGRESULTADO.Value := fDMNFCe.cdsNFe_LogMSGRESULTADO.Value;
    fDMNFCe.prc_Procurar_Recibo;
    fDMNFCe.mNFe_LogNRecibo.AsString      := fDMNFCe.vNRec_Log;
    fDMNFCe.mNFe_LogNRecibo_Orig.AsString := fDMNFCe.vNRec_Orig;
    fDMNFCe.mNFe_Log.Post;
    fDMNFCe.cdsNFe_Log.Next;
  end;
end;

procedure TfrmNFCe_Log.btnAtualizaRecClick(Sender: TObject);
begin
  if MessageDlg('Deseja atualizar o recibo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  if trim(fDMNFCe.mNFe_LogNRecibo_Orig.AsString) <> '' then
  begin
    fDMNFCe.cdsNota_Eletronica.Edit;
    fdmnFCe.cdsNota_EletronicaNRO_RECIBO.AsString := fDMNFCe.mNFe_LogNRecibo_Orig.AsString;
    fDMNFCe.cdsNota_EletronicaXML_ASSINADO_PROC.Clear;
    fDMNFCe.cdsNota_Eletronica.Post;
    fDMNFCe.cdsNota_Eletronica.ApplyUpdates(0);
  end;
end;

end.
