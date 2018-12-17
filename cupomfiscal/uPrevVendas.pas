unit uPrevVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, NxCollection, ExtCtrls, StdCtrls,
  DateUtils, Mask, ToolEdit, uDmMovimento, uDmCupomFiscal;

type
  TfPrevVendas = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel1: TPanel;
    brCancelar: TNxButton;
    btConfirmar: TNxButton;
    procedure brCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fDmMovimento: TDmMovimento;
  public
    { Public declarations }
  end;

var
  fPrevVendas: TfPrevVendas;

implementation

{$R *.dfm}

procedure TfPrevVendas.brCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfPrevVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fDmMovimento);
  Action := caFree;
end;

procedure TfPrevVendas.FormShow(Sender: TObject);
begin
  DateEdit1.Date := EncodeDate(YearOf(Date),MonthOf(Date),01);
  DateEdit2.Date := Date;
end;

procedure TfPrevVendas.FormCreate(Sender: TObject);
begin
  fDmMovimento := TDmMovimento.Create(Self);
end;

procedure TfPrevVendas.btConfirmarClick(Sender: TObject);
begin
  fDmMovimento.cdsVendaCFiscal.Close;
  fDmMovimento.sdsVendaCFiscal.ParamByName('D1').AsDate := DateEdit1.Date;
  fDmMovimento.sdsVendaCFiscal.ParamByName('D2').AsDate := DateEdit2.Date;
  fDmMovimento.cdsVendaCFiscal.Open;

  fDmMovimento.qCupomParametros.Open;
  case fDmMovimento.qCupomParametrosIMPRESSORA_FISCAL.AsInteger of
    5: fDmMovimento.prc_ImprimeVendasCupomW;
    6: fDmMovimento.prc_ImprimeVendasCupomC(fDmMovimento.qCupomParametrosALTURA_SALTO_LINHA.AsInteger);
  end;
  fDmMovimento.qCupomParametros.Close;
end;

end.
