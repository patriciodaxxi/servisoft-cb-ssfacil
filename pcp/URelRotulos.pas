unit URelRotulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, RLReport, jpeg;

type
  TfRelRotulos = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel7: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    RLImage2: TRLImage;
    RLDraw9: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw2: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vContador: Integer;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  fRelRotulos: TfRelRotulos;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelRotulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRotulos.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

procedure TfRelRotulos.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel2.Caption := fDMCadPedido.mRotulosEndereco.AsString + ', ' + fDMCadPedido.mRotulosNum_Endereco.AsString;
  if trim(fDMCadPedido.mRotulosComplemento_End.AsString) <> '' then
    RLLabel2.Caption := RLLabel2.Caption + ' - ' + fDMCadPedido.mRotulosComplemento_End.AsString;
  RLLabel4.Caption := fDMCadPedido.mRotulosCidade.AsString + ' - ' + fDMCadPedido.mRotulosUF.AsString;
  vContador        := fDMCadPedido.mRotulos_Prod.RecordCount;
end;

procedure TfRelRotulos.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel6.Caption := fDMCadPedido.mRotulos_ProdReferencia.AsString + '-' + fDMCadPedido.mRotulos_ProdNome_Produto.AsString;
end;

procedure TfRelRotulos.FormCreate(Sender: TObject);
begin
  vContador := 0;
end;

procedure TfRelRotulos.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vContador > 1 then
    RLBand3.Height := 19
  else
    RLBand3.Height := 75;
  vContador := 0;
end;

end.
