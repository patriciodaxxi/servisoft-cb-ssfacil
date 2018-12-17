unit UCadDuplicata_Total;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadDuplicata, StdCtrls, Buttons, ExtCtrls, RzPanel, ComCtrls,
  NxCollection;

type
  TfrmCadDuplicata_Total = class(TForm)
    gbxContasReceber: TRzGroupBox;
    Label36: TLabel;
    lblCReceber: TLabel;
    Label38: TLabel;
    lblCReceber_Pago: TLabel;
    Label39: TLabel;
    lblCReceber_Pend: TLabel;
    RzGroupBox1: TRzGroupBox;
    Label22: TLabel;
    Label28: TLabel;
    lblCReceber_Protesto_Perc: TLabel;
    Label24: TLabel;
    lblCReceber_Cartorio_Perc: TLabel;
    Label42: TLabel;
    lblCReceber_Atraso: TLabel;
    lblCReceber_Cartorio: TLabel;
    Label26: TLabel;
    lblCReceber_Protesto: TLabel;
    Label3: TLabel;
    lblCReceber_Atraso_Perc: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label37: TLabel;
    lblCPagar: TLabel;
    Label16: TLabel;
    lblCheque: TLabel;
    Label40: TLabel;
    lblCPagar_Pago: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Label41: TLabel;
    lblCPagar_Pend: TLabel;
    Label44: TLabel;
    lblCPagar_Atraso: TLabel;
    Shape10: TShape;
    lblCPagar_Atraso_Perc: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblCPagar_Protesto_Perc: TLabel;
    Label8: TLabel;
    lblCPagar_Cartorio_Perc: TLabel;
    lblCPagar_Cartorio: TLabel;
    Label11: TLabel;
    lblCPagar_Protesto: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label53: TLabel;
    lblCheque_Atraso: TLabel;
    Label48: TLabel;
    lblSaldo: TLabel;
    Shape15: TShape;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;

  end;

var
  frmCadDuplicata_Total: TfrmCadDuplicata_Total;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadDuplicata_Total.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Total.FormShow(Sender: TObject);
var
  vSaldo: Real;
  vAux: Real;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);

  lblCReceber.Caption      := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCReceber_Tot);
  lblCReceber_Pago.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCReceber_Pago_Tot);
  lblCReceber_Pend.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCReceber_Pend_Tot);
  lblCReceber_Atraso.Caption   := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCReceber_Atraso_Tot);
  lblCReceber_Cartorio.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCReceber_Cartorio_Tot);
  lblCReceber_Protesto.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCReceber_Protesto_Tot);
  vAux := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.vCReceber_Atraso_Tot)) > 0 then
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadDuplicata.vCReceber_Atraso_Tot / fDMCadDuplicata.vCReceber_Pend_Tot) * 100));
  lblCReceber_Atraso_Perc.Caption := FormatFloat('###,###,##0.00',vAux);
  vAux := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.vCReceber_Cartorio_Tot)) > 0 then
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadDuplicata.vCReceber_Cartorio_Tot / fDMCadDuplicata.vCReceber_Atraso_Tot) * 100));
  lblCReceber_Cartorio_Perc.Caption := FormatFloat('###,###,##0.00',vAux);
  vAux := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.vCReceber_Protesto_Tot)) > 0 then
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadDuplicata.vCReceber_Protesto_Tot / fDMCadDuplicata.vCReceber_Atraso_Tot) * 100));
  lblCReceber_Protesto_Perc.Caption := FormatFloat('###,###,##0.00',vAux);


  lblCPagar.Caption      := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCPagar_Tot);
  lblCPagar_Pago.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCPagar_Pago_Tot);
  lblCPagar_Pend.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCPagar_Pend_Tot);
  lblCPagar_Atraso.Caption   := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCPagar_Atraso_Tot);
  lblCPagar_Cartorio.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCPagar_Cartorio_Tot);
  lblCPagar_Protesto.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCPagar_Protesto_Tot);
  vAux := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.vCPagar_Atraso_Tot)) > 0 then
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadDuplicata.vCPagar_Atraso_Tot / fDMCadDuplicata.vCPagar_Pend_Tot) * 100));
  lblCPagar_Atraso_Perc.Caption := FormatFloat('###,###,##0.00',vAux);
  vAux := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.vCPagar_Cartorio_Tot)) > 0 then
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadDuplicata.vCPagar_Cartorio_Tot / fDMCadDuplicata.vCPagar_Atraso_Tot) * 100));
  lblCPagar_Cartorio_Perc.Caption := FormatFloat('###,###,##0.00',vAux);
  vAux := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.vCPagar_Protesto_Tot)) > 0 then
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadDuplicata.vCPagar_Protesto_Tot / fDMCadDuplicata.vCPagar_Atraso_Tot) * 100));
  lblCPagar_Protesto_Perc.Caption := FormatFloat('###,###,##0.00',vAux);

  lblCheque.Caption        := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCheque_Tot);
  lblCheque_Atraso.Caption := FormatFloat('###,###,##0.00',fDMCadDuplicata.vCheque_Atraso_Tot);

  vSaldo := fDMCadDuplicata.vCReceber_Pend_Tot - fDMCadDuplicata.vCPagar_Pend_Tot - fDMCadDuplicata.vCheque_Tot - fDMCadDuplicata.vCheque_Atraso_Tot;
  lblSaldo.Caption := FormatFloat('###,###,##0.00',vSaldo);
  if StrToFloat(FormatFloat('0.00',vSaldo)) < 0 then
  begin
    lblSaldo.Color := clRed;
    lblSaldo.Font.Color := clWhite;
  end
  else
  begin
    lblSaldo.Color      := $0080FF80;
    lblSaldo.Font.Color := clBlack;
  end;
end;

procedure TfrmCadDuplicata_Total.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
