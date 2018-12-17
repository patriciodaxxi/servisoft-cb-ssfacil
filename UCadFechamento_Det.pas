unit UCadFechamento_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadFechamento, ExtCtrls, RzPanel,
  Grids, DBGrids, SMDBGrid, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons;

type
  TfrmCadFechamento_Det = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadFechamento: TDMCadFechamento;    
  end;

var
  frmCadFechamento_Det: TfrmCadFechamento_Det;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadFechamento_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadFechamento_Det.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);
  BitBtn1Click(Sender);
end;

procedure TfrmCadFechamento_Det.BitBtn1Click(Sender: TObject);
var
  vEnt, vSai, vSaldo: Real;
begin
  vEnt   := 0;
  vSai   := 0;
  vSaldo := 0;
  SMDBGrid1.DisableScroll;
  fDMCadFechamento.cdsDetalhamento.First;
  while not fDMCadFechamento.cdsDetalhamento.Eof do
  begin
    vEnt := StrToFloat(FormatFloat('0.00',vEnt + fDMCadFechamento.cdsDetalhamentoVLR_ENTRADA.AsFloat));
    vSai := StrToFloat(FormatFloat('0.00',vSai + fDMCadFechamento.cdsDetalhamentoVLR_SAIDA.AsFloat));
    fDMCadFechamento.cdsDetalhamento.Next;
  end;
  SMDBGrid1.EnableScroll;
  vSaldo := vEnt - vSai;
  CurrencyEdit1.Value := vEnt;
  CurrencyEdit2.Value := vSai;
  CurrencyEdit3.Value := vSaldo;
end;

end.
