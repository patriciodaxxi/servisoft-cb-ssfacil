unit UPedido_PrecoSug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, NxCollection, UDMCadPedido;

type
  TfrmPedido_PrecoSug = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label6: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Label7: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Label8: TLabel;
    ceVlrMaquina: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton2Click(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Calcular;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmPedido_PrecoSug: TfrmPedido_PrecoSug;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmPedido_PrecoSug.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not fDMCadPedido.vConfirma_Calc then
  begin
    fDMCadPedido.vFator_Calculo     := 0;
    fDMCadPedido.vTempo_Prod_Calc   := 0;
    fDMCadPedido.vVlr_Unitario_Calc := 0;
    fDMCadPedido.vQtd_Calc          := 0;
  end;
  Action := Cafree;
end;

procedure TfrmPedido_PrecoSug.NxButton2Click(Sender: TObject);
begin
  fDMCadPedido.vConfirma_Calc := False;
  Close;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit3Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.prc_Calcular;
begin
  if StrToFloat(FormatFloat('0.000', CurrencyEdit3.Value)) > 0 then
  begin
    CurrencyEdit5.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value * CurrencyEdit2.Value));

    CurrencyEdit5.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit5.Value
                          + (CurrencyEdit3.Value * ceVlrMaquina.Value)));
    CurrencyEdit6.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit5.Value * CurrencyEdit4.Value));
  end;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit2Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit4Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.CurrencyEdit5Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmPedido_PrecoSug.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

procedure TfrmPedido_PrecoSug.NxButton1Click(Sender: TObject);
begin
  fDMCadPedido.vFator_Calculo     := CurrencyEdit2.Value;
  fDMCadPedido.vTempo_Prod_Calc   := CurrencyEdit3.Value;
  fDMCadPedido.vVlr_Unitario_Calc := CurrencyEdit5.Value;
  fDMCadPedido.vQtd_Calc          := CurrencyEdit4.Value;
  fDMCadPedido.vVlr_Maquina_Calc  := ceVlrMaquina.Value;
  fDMCadPedido.vConfirma_Calc     := True;
  Close;
end;

end.
