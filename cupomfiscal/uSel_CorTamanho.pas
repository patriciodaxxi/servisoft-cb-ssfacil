unit uSel_CorTamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uDmCupomFiscal,
  NxCollection, ExtCtrls, RxLookup, StdCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfSel_CorTamanho = class(TForm)
    Panel1: TPanel;
    btConfirmar: TNxButton;
    brCancelar: TNxButton;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure brCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
    vProd: Integer;
  end;

var
  fSel_CorTamanho: TfSel_CorTamanho;

implementation

{$R *.dfm}

procedure TfSel_CorTamanho.brCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfSel_CorTamanho.btConfirmarClick(Sender: TObject);
begin
  fDmCupomFiscal.vIdCombinacao := RxDBLookupCombo1.KeyValue;
  fDmCupomFiscal.vTamanho      := RxDBLookupCombo2.KeyValue;
  fDmCupomFiscal.vCombinacao   := RxDBLookupCombo1.Text;
  Close;
end;

procedure TfSel_CorTamanho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfSel_CorTamanho.FormShow(Sender: TObject);
begin
  fdmCupomFiscal.cdsCombinacao.Close;
  fdmCupomFiscal.sdsCombinacao.ParamByName('P1').AsInteger := vProd;
  fdmCupomFiscal.cdsCombinacao.Open;

  fdmCupomFiscal.cdsTamanho.Close;
  fdmCupomFiscal.sdsTamanho.ParamByName('P1').AsInteger := vProd;
  fdmCupomFiscal.cdsTamanho.Open;

end;

end.
