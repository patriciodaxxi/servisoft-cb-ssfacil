unit UCadNotaFiscal_Confirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, DbTables,
  DB, UDMCadNotaFiscal;

type
  TfrmCadNotaFiscal_Confirma = class(TForm)
    btNormal: TBitBtn;
    btContingencia: TBitBtn;
    GroupBox1: TGroupBox;
    btFS: TBitBtn;
    btScan: TBitBtn;
    btCancelar: TBitBtn;
    btFSDA: TBitBtn;
    procedure btNormalClick(Sender: TObject);
    procedure btFSClick(Sender: TObject);
    procedure btScanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btContingenciaClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btFSDAClick(Sender: TObject);
  private
    { Private declarations }
    
  public
    { Public declarations }
    fDMCadNotaFiscal : TDMCadNotaFiscal;

  end;

var
  frmCadNotaFiscal_Confirma: TfrmCadNotaFiscal_Confirma;

implementation

uses uNFeComandos, uUtilPadrao, uGrava_NotaFiscal;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Confirma.btNormalClick(Sender: TObject);
begin
  uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal,'1-NORMAL');
  Close;
end;

procedure TfrmCadNotaFiscal_Confirma.btFSClick(Sender: TObject);
begin
  uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal,'2-CONTINGENCIA FS');
  Close;
end;

procedure TfrmCadNotaFiscal_Confirma.btScanClick(Sender: TObject);
begin
  uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal,'2-CONTINGENCIA FS');
  Close;
end;

procedure TfrmCadNotaFiscal_Confirma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Confirma.btContingenciaClick(Sender: TObject);
var
  texto : String;
  vLocalServidorNFe : String;
begin
  texto := Monta_Texto(fDMCadNotaFiscal.cdsFilialCNPJ_CPF.AsString,14);
  vLocalServidorNFe := fDMCadNotaFiscal.cdsParametrosLOCALSERVIDORNFE.AsString;
  if trim(fDMCadNotaFiscal.cdsFilialLOCALSERVIDORNFE.AsString) <> '' then
    vLocalServidorNFe := fDMCadNotaFiscal.cdsFilialLOCALSERVIDORNFE.AsString;
  try
    btScan.Enabled := VerificaStatusNFe(vLocalServidorNFe,
                                         texto,True);
  except
    ShowMessage('Modo Scan não ativado ou internet com problema!');
  end;

  btFS.Enabled   := True;
  btFSDA.Enabled := True;
end;

procedure TfrmCadNotaFiscal_Confirma.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_Confirma.btFSDAClick(Sender: TObject);
begin
  uGrava_NotaFiscal.prc_Gravar(fDMCadNotaFiscal,'5-CONTINGENCIA FS-DA');
  Close;
end;

end.

