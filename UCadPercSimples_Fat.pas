unit UCadPercSimples_Fat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons,
  UDMCadPercSimples, Mask, ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid, DB, RxLookup;

type
  TfrmCadPercSimples_Fat = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    SMDBGrid1: TSMDBGrid;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vDtInicial, vDtFinal : TDateTime;
    procedure prc_Consultar;
    procedure prc_Mostrar_Faixa;

  public
    { Public declarations }
    fDMCadPercSimples: TDMCadPercSimples;

  end;

var
  frmCadPercSimples_Fat: TfrmCadPercSimples_Fat;

implementation

uses DateUtils, rsDBUtils;

{$R *.dfm}

procedure TfrmCadPercSimples_Fat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPercSimples_Fat.FormShow(Sender: TObject);
var
  vDia : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPercSimples);

  vDtInicial := IncMonth(Date,-12);
  vDtFinal   := IncMonth(Date,-1);

  vDtInicial := EncodeDate(YearOf(vDtInicial),MonthOf(vDtInicial),01);
  vDtFinal   := EncodeDate(YearOf(vDtFinal),MonthOf(vDtFinal),DaysInMonth(vDtFinal));
  
  Label2.Caption := DateToStr(vDtInicial) + ' a ' + DateToStr(vDtFinal);

  if fDMCadPercSimples.cdsFilial.RecordCount <= 1 then
  begin
    RxDBLookupCombo1.KeyValue := fDMCadPercSimples.cdsFilialID.AsInteger;
    prc_Consultar;
  end;
end;

procedure TfrmCadPercSimples_Fat.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Filial não foi informada!', mtError, [mbOk], 0);
    exit;
  end;
  prc_Consultar;
end;

procedure TfrmCadPercSimples_Fat.prc_Consultar;
begin
  fDMCadPercSimples.qFaturamento.Close;
  fDMCadPercSimples.qFaturamento.SQL.Text := fDMCadPercSimples.ctFaturamento
                                          + ' AND SAI.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue) 
                                          + ' AND SAI.DTENTRADASAIDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtInicial))
                                          + ' AND SAI.DTENTRADASAIDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtFinal));

  fDMCadPercSimples.qFaturamento.Open;

  fDMCadPercSimples.qDevolucao.Close;
  fDMCadPercSimples.qDevolucao.SQL.Text := fDMCadPercSimples.ctDevolucao
                                          + ' AND ENT.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue) 
                                          + ' AND ENT.DTENTRADASAIDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtInicial))
                                          + ' AND ENT.DTENTRADASAIDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtFinal));
  fDMCadPercSimples.qDevolucao.Open;

  CurrencyEdit1.Value := fDMCadPercSimples.qFaturamentoVLR_FATURAMENTO.AsFloat;
  CurrencyEdit2.Value := fDMCadPercSimples.qDevolucaoVLR_DEVOLUCAO.AsFloat;
  CurrencyEdit3.Value := CurrencyEdit1.Value - CurrencyEdit2.Value;

  BitBtn2Click(Nil);
end;

procedure TfrmCadPercSimples_Fat.prc_Mostrar_Faixa;
begin
  if StrToFloat(FormatFloat('0.00',CurrencyEdit3.Value)) <= 0 then
    exit;
  fDMCadPercSimples.qFaixa.Close;
  fDMCadPercSimples.qFaixa.ParamByName('Valor').AsFloat := CurrencyEdit3.Value;
  fDMCadPercSimples.qFaixa.Open;
  Label6.Caption := 'ICMS Simples   % ' + FormatFloat('0.00',fDMCadPercSimples.qFaixaPERC_ICMS.AsFloat);
  fDMCadPercSimples.cdsFaixa_Simples.Locate('ID',fDMCadPercSimples.qFaixaID.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadPercSimples_Fat.BitBtn2Click(Sender: TObject);
begin
  prc_Mostrar_Faixa;
end;

procedure TfrmCadPercSimples_Fat.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    CurrencyEdit3.Value := CurrencyEdit1.Value - CurrencyEdit2.Value;
    BitBtn2Click(Sender);
  end;
end;

procedure TfrmCadPercSimples_Fat.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    CurrencyEdit3.Value := CurrencyEdit1.Value - CurrencyEdit2.Value;
    BitBtn2Click(Sender);
  end;
end;

end.
