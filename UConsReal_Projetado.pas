unit UConsReal_Projetado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, StdCtrls, Mask, ToolEdit, UDMConsReal,
  Grids, DBGrids, SMDBGrid, DB, Buttons;

type
  TfrmConsReal_Projetado = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsReal: TDMConsReal;
    vID_Conta_Orc : Integer;

    procedure prc_Gravar_mConsAux;
    procedure prc_Gravar_mConsAux_Sint(Conta_Superior: Integer);
    procedure prc_Consultar_Det;


  public
    { Public declarations }
  end;

var
  frmConsReal_Projetado: TfrmConsReal_Projetado;

implementation

uses rsDBUtils, DateUtils, UConsReal_Projetado_Det;

{$R *.dfm}

procedure TfrmConsReal_Projetado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsReal_Projetado.FormShow(Sender: TObject);
begin
  fDMConsReal := TDMConsReal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsReal);
  SMDBGrid1.ClearFilter;
end;

procedure TfrmConsReal_Projetado.NxButton1Click(Sender: TObject);
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** É obrigatório informar a data inicial e final!' , mtInformation, [mbOk], 0);
    exit;
  end;

  fDMConsReal.cdsConsRP.Close;
  fDMConsReal.sdsConsRP.ParamByName('DATA1').AsDate      := DateEdit1.Date;
  fDMConsReal.sdsConsRP.ParamByName('DATA2').AsDate      := DateEdit2.Date;
  fDMConsReal.sdsConsRP.ParamByName('ANO1').AsInteger    := YearOf(DateEdit1.Date);
  fDMConsReal.sdsConsRP.ParamByName('Ano_Mes1').AsString := FormatFloat('0000',YearOf(DateEdit1.Date)) + FormatFloat('00',MonthOf(DateEdit1.Date));
  fDMConsReal.sdsConsRP.ParamByName('Ano_Mes2').AsString := FormatFloat('0000',YearOf(DateEdit2.Date)) + FormatFloat('00',MonthOf(DateEdit2.Date));
  fDMConsReal.cdsConsRP.Open;

  fDMConsReal.mConsAux.EmptyDataSet;
  fDMConsReal.mConsAux.IndexFieldNames := 'ID_Conta';
  fDMConsReal.cdsConsRP.First;
  while not fDMConsReal.cdsConsRP.Eof do
  begin
    prc_Gravar_mConsAux;
    if (vID_Conta_Orc = 777800) then
      prc_Gravar_mConsAux_Sint(fDMConsReal.qParametros_Cta_OrcID_CONTA_ORC_DESPESA.AsInteger)
    else
    if trim(fDMConsReal.cdsConsRPSUPERIOR.AsString) <> '' then
      prc_Gravar_mConsAux_Sint(fDMConsReal.cdsConsRPSUPERIOR.AsInteger);

    fDMConsReal.cdsConsRP.Next;
  end;
  fDMConsReal.mConsAux.IndexFieldNames := 'Cod_Conta';
end;

procedure TfrmConsReal_Projetado.prc_Gravar_mConsAux;
var
  vTexto: String;
  i, i2: Integer;
begin
  i := fDMConsReal.cdsConsRPID_CONTA.AsInteger;
  if (i <= 0) then
    i := 777800;
  vID_Conta_Orc := i;
  if fDMConsReal.mConsAux.FindKey([i]) then
    fDMConsReal.mConsAux.Edit
  else
  begin
    fDMConsReal.mConsAux.Insert;
    fDMConsReal.mConsAuxID_Conta.AsInteger := i;
    if trim(fDMConsReal.cdsConsRPCODIGO.AsString) = '' then
      fDMConsReal.mConsAuxCod_Conta.AsString := IntToStr(i)
    else
      fDMConsReal.mConsAuxCod_Conta.AsString := fDMConsReal.cdsConsRPCODIGO.AsString;
    i2 := (fDMConsReal.cdsConsRPNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsReal.mConsAuxNome_Conta.AsString    := vTexto + fDMConsReal.cdsConsRPNOME_ORCAMENTO.AsString;
    if trim(fDMConsReal.mConsAuxNome_Conta.AsString) = '' then
    begin
      if fDMConsReal.mConsAuxID_Conta.AsInteger = 777800 then
        fDMConsReal.mConsAuxNome_Conta.AsString := vTexto + '  *** DESPESAS NÃO CLASSIFICADAS';
    end;
  end;
  if (trim(fDMConsReal.cdsConsRPTIPO.AsString) = 'R') or (trim(fDMConsReal.cdsConsRPTIPO.AsString) = 'RD') or  (trim(fDMConsReal.cdsConsRPTIPO.AsString) = 'RF') then
    fDMConsReal.mConsAuxVlr_Realizado.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Realizado.AsFloat + fDMConsReal.cdsConsRPVLR_TOTAL.AsFloat))
  else
    fDMConsReal.mConsAuxVlr_Projetado.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Projetado.AsFloat + fDMConsReal.cdsConsRPVLR_TOTAL.AsFloat));
  fDMConsReal.mConsAuxTipo_AS.AsString := trim(fDMConsReal.cdsConsRPTIPO_AS.AsString);
  if StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Realizado.AsFloat)) > StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Projetado.AsFloat)) then
    fDMConsReal.mConsAuxResultado.AsString := '-'
  else
  if StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Realizado.AsFloat)) < StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Projetado.AsFloat)) then
    fDMConsReal.mConsAuxResultado.AsString := '+'
  else
    fDMConsReal.mConsAuxResultado.AsString := '';
  fDMConsReal.mConsAux.Post;
end;

procedure TfrmConsReal_Projetado.prc_Gravar_mConsAux_Sint(
  Conta_Superior: Integer);
var
  vTexto: String;
  i, i2: Integer;
begin
  fDMConsReal.qConta_Orcamento.Close;
  fDMConsReal.qConta_Orcamento.ParamByName('ID').AsInteger := Conta_Superior;
  fDMConsReal.qConta_Orcamento.Open;
  if fDMConsReal.qConta_Orcamento.IsEmpty then
    exit;

  if fDMConsReal.mConsAux.FindKey([Conta_Superior]) then
    fDMConsReal.mConsAux.Edit
  else
  begin
    fDMConsReal.mConsAux.Insert;
    fDMConsReal.mConsAuxID_Conta.AsInteger := fDMConsReal.qConta_OrcamentoID.AsInteger;
    fDMConsReal.mConsAuxCod_Conta.AsString := fDMConsReal.qConta_OrcamentoCODIGO.AsString;
    i2 := (fDMConsReal.qConta_OrcamentoNIVEL.AsInteger * 2) - 2;
    vTexto := '';
    for i := 1 to i2 do
      vTexto := vTexto + ' ';
    fDMConsReal.mConsAuxNome_Conta.AsString := vTexto + fDMConsReal.qConta_OrcamentoDESCRICAO.AsString;
  end;
  if (trim(fDMConsReal.cdsConsRPTIPO.AsString) = 'R') or (trim(fDMConsReal.cdsConsRPTIPO.AsString) = 'RD') or (trim(fDMConsReal.cdsConsRPTIPO.AsString) = 'RF') then
    fDMConsReal.mConsAuxVlr_Realizado.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Realizado.AsFloat + fDMConsReal.cdsConsRPVLR_TOTAL.AsFloat))
  else
    fDMConsReal.mConsAuxVlr_Projetado.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsReal.mConsAuxVlr_Projetado.AsFloat + fDMConsReal.cdsConsRPVLR_TOTAL.AsFloat));
  fDMConsReal.mConsAuxTipo_AS.AsString := trim(fDMConsReal.qConta_OrcamentoTIPO.AsString);
  fDMConsReal.mConsAux.Post;

  if trim(fDMConsReal.qConta_OrcamentoSUPERIOR.AsString) <> '' then
    prc_Gravar_mConsAux_Sint(fDMConsReal.qConta_OrcamentoSUPERIOR.AsInteger);
end;

procedure TfrmConsReal_Projetado.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMConsReal.mConsAuxTipo_AS.AsString = 'S' then
    AFont.Style := [fsBold];
  if fDMConsReal.mConsAuxResultado.AsString = '-' then
    AFont.Color := clRed;
end;

procedure TfrmConsReal_Projetado.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmConsReal_Projetado_Det : TfrmConsReal_Projetado_Det;
begin
  prc_Consultar_Det;

  ffrmConsReal_Projetado_Det := TfrmConsReal_Projetado_Det.Create(self);
  ffrmConsReal_Projetado_Det.fDMConsReal := fDMConsReal;
  ffrmConsReal_Projetado_Det.ShowModal;
  FreeAndNil(ffrmConsReal_Projetado_Det);
end;

procedure TfrmConsReal_Projetado.prc_Consultar_Det;
begin
  fDMConsReal.cdsConDetForn.Close;
  fDMConsReal.sdsConDetForn.ParamByName('DATA1').AsDate      := DateEdit1.Date;
  fDMConsReal.sdsConDetForn.ParamByName('DATA2').AsDate      := DateEdit2.Date;
  fDMConsReal.sdsConDetForn.ParamByName('Ano_Mes1').AsString := FormatFloat('0000',YearOf(DateEdit1.Date)) + FormatFloat('00',MonthOf(DateEdit1.Date));
  fDMConsReal.sdsConDetForn.ParamByName('Ano_Mes2').AsString := FormatFloat('0000',YearOf(DateEdit2.Date)) + FormatFloat('00',MonthOf(DateEdit2.Date));
  if fDMConsReal.mConsAuxID_Conta.AsInteger = 777800 then
    fDMConsReal.sdsConDetForn.ParamByName('FORNECEDOR_CONTA_ID').AsInteger := 0
  else
    fDMConsReal.sdsConDetForn.ParamByName('FORNECEDOR_CONTA_ID').AsInteger := fDMConsReal.mConsAuxID_Conta.AsInteger;
  fDMConsReal.cdsConDetForn.Open;
end;

end.
