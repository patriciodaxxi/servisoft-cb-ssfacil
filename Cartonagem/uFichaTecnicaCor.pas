unit uFichaTecnicaCor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uDmFichaTecnica, StdCtrls, Buttons,
  ExtCtrls, RxLookup, RxDBComb, Mask, DBCtrls, rsDBUtils, db;

type
  TfFichaTecnicaCor = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmFichaTecnica: TDmFichaTecnica;
    vPosicao: String;
  end;

var
  fFichaTecnicaCor: TfFichaTecnicaCor;

implementation

uses uFichaTecnica;

{$R *.dfm}

procedure TfFichaTecnicaCor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfFichaTecnicaCor.BitBtn2Click(Sender: TObject);
begin
  fDmFichaTecnica.cdsCorFD.Cancel;
  fDmFichaTecnica.cdsCorTP.Cancel;
  fDmFichaTecnica.cdsCorSP.Cancel;
  Close;
end;

procedure TfFichaTecnicaCor.FormShow(Sender: TObject);
begin
  if vPosicao = 'FD' then
  begin
    DBEdit1.DataSource := fDmFichaTecnica.dsCorFD;
    DBEdit2.DataSource := fDmFichaTecnica.dsCorFD;
    DBEdit3.DataSource := fDmFichaTecnica.dsCorFD;
    RxDBComboBox1.DataSource    := fDmFichaTecnica.dsCorFD;
    RxDBLookupCombo1.DataSource := fDmFichaTecnica.dsCorFD;
  end
  else
  if vPosicao = 'TP' then
  begin
    DBEdit1.DataSource := fDmFichaTecnica.dsCorTP;
    DBEdit2.DataSource := fDmFichaTecnica.dsCorTP;
    DBEdit3.DataSource := fDmFichaTecnica.dsCorTP;
    RxDBComboBox1.DataSource    := fDmFichaTecnica.dsCorTP;
    RxDBLookupCombo1.DataSource := fDmFichaTecnica.dsCorTP;
  end
  else
  if vPosicao = 'SP' then
  begin
    DBEdit1.DataSource := fDmFichaTecnica.dsCorSP;
    DBEdit2.DataSource := fDmFichaTecnica.dsCorSP;
    DBEdit3.DataSource := fDmFichaTecnica.dsCorSP;
    RxDBComboBox1.DataSource    := fDmFichaTecnica.dsCorSP;
    RxDBLookupCombo1.DataSource := fDmFichaTecnica.dsCorSP;
  end;

  oDBUtils.OpenTables(True,Self);
  oDBUtils.SetDataSourceProperties(Self,fDmFichaTecnica);
end;

procedure TfFichaTecnicaCor.BitBtn1Click(Sender: TObject);
begin
  if vPosicao = 'FD' then
  begin
    fDmFichaTecnica.cdsCorFDCORNOME.AsString := RxDBLookupCombo1.Text;
    fDmFichaTecnica.cdsCorFD.Post;
  end
  else
  if vPosicao = 'TP' then
  begin
    fDmFichaTecnica.cdsCorTPCORNOME.AsString := RxDBLookupCombo1.Text;
    fDmFichaTecnica.cdsCorTP.Post;
  end
  else
  if vPosicao = 'SP' then
  begin
    fDmFichaTecnica.cdsCorSPCORNOME.AsString := RxDBLookupCombo1.Text;
    fDmFichaTecnica.cdsCorSP.Post;
  end;
  Close;
end;

end.
