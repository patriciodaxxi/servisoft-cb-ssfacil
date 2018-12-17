unit uFichaTecnicaAcab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, uDmFichaTecnica, rsDBUtils, RxDBComb, Mask, RxLookup, strutils;

type
  TfFichaTecnicaAcab = class(TForm)
    Panel1: TPanel;
    DBText2: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    RxDBComboBox8: TRxDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmFichaTecnica: TdmFichaTecnica;
    vPosicao: String[2];
  end;

var
  fFichaTecnicaAcab: TfFichaTecnicaAcab;

implementation

{$R *.dfm}

procedure TfFichaTecnicaAcab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfFichaTecnicaAcab.BitBtn2Click(Sender: TObject);
begin
  fDmFichaTecnica.cdsAcabamentoFD.Cancel;
  Close;
end;

procedure TfFichaTecnicaAcab.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmFichaTecnica);
  oDBUtils.OpenTables(True,Self);
end;

procedure TfFichaTecnicaAcab.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fdmFichaTecnica.cdsCartoAcabamento.IndexFieldNames := 'DESCRICAO';
end;

procedure TfFichaTecnicaAcab.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fdmFichaTecnica.cdsAcabPosicao.IndexFieldNames := 'DESCRICAO';
end;

procedure TfFichaTecnicaAcab.BitBtn1Click(Sender: TObject);
begin
  case AnsiIndexStr(vPosicao,['FD','TP','SP']) of
    0: begin
         fDmFichaTecnica.cdsAcabamentoFDACAB_POSICAO.AsString := RxDBLookupCombo1.Text;
         fDmFichaTecnica.cdsAcabamentoFDACABAMENTO.AsString   := RxDBLookupCombo2.Text;
         fDmFichaTecnica.cdsAcabamentoFDALINHAMENTO.AsString  := RxDBLookupCombo3.Text;
         fDmFichaTecnica.cdsAcabamentoFD.Post;
       end;
    1:;
    2:;
  end;
  Close;
end;

end.
