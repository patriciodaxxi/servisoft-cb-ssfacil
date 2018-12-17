unit UConsFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, RzPanel, Grids, DBGrids, SMDBGrid,
  RzTabs, StdCtrls, Mask, ToolEdit, CurrEdit, UDMFluxoCaixa, DB, RzDBGrid,
  ComObj;

type
  TfrmConsFluxoCaixa = class(TForm)
    Panel1: TPanel;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    ckAtrasado: TCheckBox;
    ComboBox2: TComboBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    btnExcel: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnExcelClick(Sender: TObject);

  private
    { Private declarations }
    fDMFluxoCaixa: TDMFluxoCaixa;
    vSemana : array[1..7] of String;

    procedure prc_Consultar;
    procedure prc_Le_Consulta;
    procedure prc_Monta_mData;
    procedure prc_Le_Atrasado;
    procedure prc_Gravar_Saldo_Inicial;
    procedure prc_Ajustar_Saldo;
  public
    { Public declarations }
  end;

var
  frmConsFluxoCaixa: TfrmConsFluxoCaixa;

implementation

uses rsDBUtils, DateUtils;

{$R *.dfm}

procedure TfrmConsFluxoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsFluxoCaixa.btnConsultarClick(Sender: TObject);
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data de referência não informada!', mtInformation, [mbOk], 0);
    Exit;
  end;
  fDMFluxoCaixa.qSaldo.Close;
  fDMFluxoCaixa.qSaldo.Open;
  prc_Monta_mData;
  prc_Consultar;
  fDMFluxoCaixa.mData.IndexFieldNames := 'Data';
  fDMFluxoCaixa.mContaOrc.EmptyDataSet;
  fDMFluxoCaixa.mContaOrc.IndexFieldNames := 'Tipo_Reg;Tipo_ES;ID_Conta_Orcamento';
  if ckAtrasado.Checked then
    prc_Le_Atrasado;
  prc_Le_Consulta;
end;

procedure TfrmConsFluxoCaixa.prc_Consultar;
var
  vDtInicio, vDtFinal : TDateTime;
begin
  vDtInicio := DateEdit1.Date;
  vDtFinal  := vDtInicio + 30;
  fDMFluxoCaixa.cdsConsulta.Close;
  fDMFluxoCaixa.sdsConsulta.ParamByName('DTINICIAL').AsDate := vDtInicio;
  fDMFluxoCaixa.sdsConsulta.ParamByName('DTFINAL').AsDate   := vDtFinal;
  fDMFluxoCaixa.cdsConsulta.Open;

  //Consulta dos atrasados
  if ckAtrasado.Checked then
  begin
    fDMFluxoCaixa.cdsAtrasado.Close;
    fDMFluxoCaixa.sdsAtrasado.ParamByName('DATA').AsDate := vDtInicio;
    fDMFluxoCaixa.cdsAtrasado.Open;
  end;
end;

procedure TfrmConsFluxoCaixa.FormShow(Sender: TObject);
begin
  fDMFluxoCaixa := TDMFluxoCaixa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMFluxoCaixa);
  DateEdit1.Date := Date;
  vSemana[1] := 'Dom';
  vSemana[2] := 'Seg';
  vSemana[3] := 'Ter';
  vSemana[4] := 'Qua';
  vSemana[5] := 'Qui';
  vSemana[6] := 'Sex';
  vSemana[7] := 'Sab';
end;

procedure TfrmConsFluxoCaixa.prc_Le_Consulta;
var
  vData : TDateTime;
  vTipo_Reg : String;
  vID_Orcamento : Integer;
begin
  fDMFluxoCaixa.cdsConsulta.First;
  while not fDMFluxoCaixa.cdsConsulta.Eof do
  begin
    vTipo_Reg := fDMFluxoCaixa.cdsConsultaTIPO_REG.AsString;
    if fDMFluxoCaixa.cdsConsultaTIPO_REG.AsString = 'DUP' then
      vTipo_Reg := 'A' + vTipo_Reg
    else
      vTipo_Reg := 'C' + vTipo_Reg;
    vData := fDMFluxoCaixa.cdsConsultaDTVENCIMENTO.AsDateTime;
    if (DayOfWeek(vData) = 1) then //Domingo
      vData := vData + 1
    else
    if (DayOfWeek(vData) = 7) then //Sabado
      vData := vData + 2;
    //fDMFluxoCaixa.mData.FindKey([fDMFluxoCaixa.cdsConsultaDTVENCIMENTO.AsDateTime]);
    fDMFluxoCaixa.mData.FindKey([vData]);
    case ComboBox2.ItemIndex of
      0 : vID_Orcamento := 0;
      1 : vID_Orcamento := fDMFluxoCaixa.cdsConsultaID_CONTA_ORCAMENTO.AsInteger;
    end;
    if fDMFluxoCaixa.mContaOrc.FindKey([vTipo_Reg,fDMFluxoCaixa.cdsConsultaTIPO_ES.AsString,vID_Orcamento]) then
      fDMFluxoCaixa.mContaOrc.Edit
    else
    begin
      fDMFluxoCaixa.mContaOrc.Insert;
      fDMFluxoCaixa.mContaOrcID_Conta_Orcamento.AsInteger := vID_Orcamento;
      fDMFluxoCaixa.mContaOrcTipo_Reg.AsString            := vTipo_Reg;
      if vID_Orcamento > 0 then
        fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString      := fDMFluxoCaixa.cdsConsultaNOME_ORCAMENTO.AsString
      else
        fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString      := '';
      fDMFluxoCaixa.mContaOrcTipo_ES.AsString             := fDMFluxoCaixa.cdsConsultaTIPO_ES.AsString;
    end;
    if (fDMFluxoCaixa.cdsConsultaTIPO_REG.AsString = 'DUP') and (fDMFluxoCaixa.cdsConsultaTIPO_ES.AsString = 'E') then
      fDMFluxoCaixa.mContaOrcDescricao.AsString := 'RECEITA'
    else
    if (fDMFluxoCaixa.cdsConsultaTIPO_REG.AsString = 'DUP') and (fDMFluxoCaixa.cdsConsultaTIPO_ES.AsString = 'S') then
      fDMFluxoCaixa.mContaOrcDescricao.AsString := 'DESPESA'
    else
    if (fDMFluxoCaixa.cdsConsultaTIPO_REG.AsString = 'CHE') then
      fDMFluxoCaixa.mContaOrcDescricao.AsString := 'CHEQUE';
    //if trim(fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString) <> '' then
     // fDMFluxoCaixa.mContaOrcDescricao.AsString := '';
    fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat + fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat + fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    fDMFluxoCaixa.mContaOrc.Post;

    //Total
    if fDMFluxoCaixa.mContaOrc.FindKey(['ZZZ','Z',0]) then
      fDMFluxoCaixa.mContaOrc.Edit
    else
    begin
      fDMFluxoCaixa.mContaOrc.Insert;
      fDMFluxoCaixa.mContaOrcTipo_Reg.AsString            := 'ZZZ';
      fDMFluxoCaixa.mContaOrcID_Conta_Orcamento.AsInteger := 0;
      fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString      := '';
      fDMFluxoCaixa.mContaOrcTipo_ES.AsString             := 'Z';
      fDMFluxoCaixa.mContaOrcDescricao.AsString := '.....TOTAL.....';
    end;
    if fDMFluxoCaixa.cdsConsultaTIPO_ES.AsString = 'E' then
    begin
      fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat + fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
      fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat + fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    end
    else
    begin
      fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat - fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
      fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat - fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    end;
    fDMFluxoCaixa.mContaOrc.Post;
    fDMFluxoCaixa.cdsConsulta.Next;
  end;

  prc_Gravar_Saldo_Inicial;
  prc_Ajustar_Saldo;
end;

procedure TfrmConsFluxoCaixa.prc_Monta_mData;
var
  i, i2 : Integer;
  vDtInicio : TDateTime;
  vDtFinal : TDateTime;
  vCampo : String;
begin
  vDtInicio := DateEdit1.Date;
  vDtFinal  := vDtInicio + 30;
  fDMFluxoCaixa.mData.EmptyDataSet;
  fDMFluxoCaixa.mData.IndexFieldNames := 'Data';
  //vDiaFinal := DaysInAMonth(CurrencyEdit1.AsInteger,ComboBox1.ItemIndex + 1);
  i         := 0;
  while vDtInicio <= vDtFinal do
  begin
    if (DayOfWeek(vDtInicio) = 1) then //Domingo
      vDtInicio := vDtInicio + 1
    else
    if (DayOfWeek(vDtInicio) = 7) then //Sabado
      vDtInicio := vDtInicio + 2;
    //if vDtInicio <= vDtFinal then
    //begin
      i := i + 1;
      fDMFluxoCaixa.mData.Insert;
      fDMFluxoCaixa.mDataData.AsDateTime  := vDtInicio;
      fDMFluxoCaixa.mDataIndice.AsInteger := i;
      fDMFluxoCaixa.mData.Post;
    //end;
    vDtInicio := vDtInicio + 1;
  end;

  //Monta Grid
  fDMFluxoCaixa.mData.IndexFieldNames := 'Indice';
  i2 := 0;
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    vCampo := SMDBGrid1.Columns[i].FieldName;
    if (vCampo = 'Nome_Orcamento') then
      SMDBGrid1.Columns[i].Visible := (ComboBox2.ItemIndex = 1);
    if (vCampo = 'Vlr_Atrasado') then
      SMDBGrid1.Columns[i].Visible := (ckAtrasado.Checked);
    if copy(vCampo,1,6) = 'Valor_' then
    begin
      i2 := i2 + 1;
      if fDMFluxoCaixa.mData.FindKey([i2]) then
      begin
        SMDBGrid1.Columns[i].Visible       := True;
        //SMDBGrid1.Columns[i].Title.Caption := FormatFloat('00',DayOf(fDMFluxoCaixa.mDataData.AsDateTime)) + ' (' + vSemana[DayOfWeek(fDMFluxoCaixa.mDataData.AsDateTime)] + ')';
        //SMDBGrid1.Columns[i].Title.Caption := fDMFluxoCaixa.mDataData.AsString + ' (' + vSemana[DayOfWeek(fDMFluxoCaixa.mDataData.AsDateTime)] + ')';
        //Foi tirado a descrição da semana, conforme solicitação do Carlos (fica melhor para imprimir no excel)   22/02/2016
        SMDBGrid1.Columns[i].Title.Caption := fDMFluxoCaixa.mDataData.AsString;
      end
      else
        SMDBGrid1.Columns[i].Visible       := False;
    end;
  end;
  if ComboBox2.ItemIndex = 0 then
    SMDBGrid1.FixedCols := 1
  else
    SMDBGrid1.FixedCols := 2;
end;

procedure TfrmConsFluxoCaixa.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vCampo : String;  
begin
  if fDMFluxoCaixa.mContaOrc.IsEmpty then
    exit;

  if fDMFluxoCaixa.mContaOrcTipo_Reg.AsString = 'ZZZ' then
    Background  := clSilver
  else
  if fDMFluxoCaixa.mContaOrcTipo_Reg.AsString = 'AAA' then
    Background  := $00FFD9B3;

  vCampo := Field.FieldName;
  if Copy(vCampo,1,6) = 'Valor_' then
  begin
    if Field.Value <> null then
      if StrToFloat(FormatFloat('0.00',Field.Value)) < 0 then
        AFont.Color := clRed;
  end;
end;

procedure TfrmConsFluxoCaixa.prc_Le_Atrasado;
var
  vData : TDateTime;
  vTipo_Reg : String;
  vID_Orcamento : Integer;
begin
  fDMFluxoCaixa.cdsAtrasado.First;
  while not fDMFluxoCaixa.cdsAtrasado.Eof do
  begin
    vTipo_Reg := fDMFluxoCaixa.cdsAtrasadoTIPO_REG.AsString;
    if fDMFluxoCaixa.cdsAtrasadoTIPO_REG.AsString = 'DUP' then
      vTipo_Reg := 'A' + vTipo_Reg
    else
      vTipo_Reg := 'C' + vTipo_Reg;
    case ComboBox2.ItemIndex of
      0 : vID_Orcamento := 0;
      1 : vID_Orcamento := fDMFluxoCaixa.cdsConsultaID_CONTA_ORCAMENTO.AsInteger;
    end;
    if fDMFluxoCaixa.mContaOrc.FindKey([vTipo_Reg,fDMFluxoCaixa.cdsAtrasadoTIPO_ES.AsString,vID_Orcamento]) then
      fDMFluxoCaixa.mContaOrc.Edit
    else
    begin
      fDMFluxoCaixa.mContaOrc.Insert;
      fDMFluxoCaixa.mContaOrcID_Conta_Orcamento.AsInteger := vID_Orcamento;
      fDMFluxoCaixa.mContaOrcTipo_Reg.AsString            := vTipo_Reg;
      if vID_Orcamento > 0 then
        fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString := fDMFluxoCaixa.cdsAtrasadoNOME_ORCAMENTO.AsString
      else
        fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString := '';
      fDMFluxoCaixa.mContaOrcTipo_ES.AsString          := fDMFluxoCaixa.cdsAtrasadoTIPO_ES.AsString;
    end;
    if (fDMFluxoCaixa.cdsAtrasadoTIPO_REG.AsString = 'DUP') and (fDMFluxoCaixa.cdsAtrasadoTIPO_ES.AsString = 'E') then
      fDMFluxoCaixa.mContaOrcDescricao.AsString := 'RECEITA'
    else
    if (fDMFluxoCaixa.cdsAtrasadoTIPO_REG.AsString = 'DUP') and (fDMFluxoCaixa.cdsAtrasadoTIPO_ES.AsString = 'S') then
      fDMFluxoCaixa.mContaOrcDescricao.AsString := 'DESPESA'
    else
    if (fDMFluxoCaixa.cdsAtrasadoTIPO_REG.AsString = 'CHE') then
      fDMFluxoCaixa.mContaOrcDescricao.AsString := 'CHEQUE';
    fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat + fDMFluxoCaixa.cdsAtrasadoVALOR.AsFloat));
    fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat + fDMFluxoCaixa.cdsAtrasadoVALOR.AsFloat));
    fDMFluxoCaixa.mContaOrc.Post;

    //Total
    if fDMFluxoCaixa.mContaOrc.FindKey(['ZZZ','Z',0]) then
      fDMFluxoCaixa.mContaOrc.Edit
    else
    begin
      fDMFluxoCaixa.mContaOrc.Insert;
      fDMFluxoCaixa.mContaOrcTipo_Reg.AsString            := 'ZZZ';
      fDMFluxoCaixa.mContaOrcID_Conta_Orcamento.AsInteger := 0;
      fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString      := '';
      fDMFluxoCaixa.mContaOrcTipo_ES.AsString             := 'Z';
      fDMFluxoCaixa.mContaOrcDescricao.AsString           := '.....TOTAL.....';
    end;
    if fDMFluxoCaixa.cdsAtrasadoTIPO_ES.AsString = 'E' then
    begin
      fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat + fDMFluxoCaixa.cdsAtrasadoVALOR.AsFloat));
      fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat    := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat + fDMFluxoCaixa.cdsAtrasadoVALOR.AsFloat));
    end
    else
    begin
      fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat - fDMFluxoCaixa.cdsAtrasadoVALOR.AsFloat));
      fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat - fDMFluxoCaixa.cdsAtrasadoVALOR.AsFloat));
    end;
    fDMFluxoCaixa.mContaOrc.Post;
    fDMFluxoCaixa.cdsAtrasado.Next;
  end;
end;

procedure TfrmConsFluxoCaixa.prc_Gravar_Saldo_Inicial;
var
  i : Integer;
  vSaldo : Real;
  vTotal : Real;
begin
  {if fDMFluxoCaixa.mContaOrc.FindKey(['ZZZ',0,'Z']) then
  begin
    vTotal := fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat;
    for i := 1 to fDMFluxoCaixa.mDataIndice.AsInteger - 1 do
      vTotal := StrToFloat(FormatFloat('0.00',vTotal + fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',i)).AsFloat));
  end
  else
    vTotal := 0;}
  //Saldo inicial

  if fDMFluxoCaixa.mContaOrc.FindKey(['AAA','A',0]) then
    fDMFluxoCaixa.mContaOrc.Edit
  else
  begin
    fDMFluxoCaixa.mContaOrc.Insert;
    fDMFluxoCaixa.mContaOrcTipo_Reg.AsString            := 'AAA';
    fDMFluxoCaixa.mContaOrcID_Conta_Orcamento.AsInteger := 0;
    fDMFluxoCaixa.mContaOrcNome_Orcamento.AsString      := '';
    fDMFluxoCaixa.mContaOrcTipo_ES.AsString             := 'A';
    fDMFluxoCaixa.mContaOrcDescricao.AsString           := '...SALDO INICIAL...';
    fDMFluxoCaixa.mContaOrcValor_01.AsFloat             := fDMFluxoCaixa.qSaldoVLR_SALDO.AsFloat;
  end;
  {if fDMFluxoCaixa.cdsConsultaTIPO_ES.AsString = 'E' then
  begin
    fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat + fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    //fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat + fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',vTotal));
  end
  else
  begin
    fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',fDMFluxoCaixa.mDataIndice.AsInteger)).AsFloat - fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    //fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat - fDMFluxoCaixa.cdsConsultaVALOR.AsFloat));
    fDMFluxoCaixa.mContaOrcVlr_Total.AsFloat := StrToFloat(FormatFloat('0.00',vTotal));
  end;}
  fDMFluxoCaixa.mContaOrc.Post;
end;

procedure TfrmConsFluxoCaixa.prc_Ajustar_Saldo;
var
  vSaldo : Real;
  i : Integer;
begin
  //Le Total
  if fDMFluxoCaixa.mContaOrc.FindKey(['ZZZ','Z',0]) then
    vSaldo := fDMFluxoCaixa.mContaOrcVlr_Atrasado.AsFloat;

  for i := 1 to 25 do
  begin
    if fDMFluxoCaixa.mContaOrc.FindKey(['AAA','A',0]) then
    begin
      fDMFluxoCaixa.mContaOrc.Edit;
      if i = 1 then
        vSaldo := vSaldo + fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',i)).AsFloat;
      fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',i)).AsFloat := vSaldo;
      fDMFluxoCaixa.mContaOrc.Post;
    end;

    if fDMFluxoCaixa.mContaOrc.FindKey(['ZZZ','Z',0]) then
    begin
      fDMFluxoCaixa.mContaOrc.Edit;
      fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',i)).AsFloat := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',i)).AsFloat + vSaldo));
      fDMFluxoCaixa.mContaOrc.Post;
      
      vSaldo := StrToFloat(FormatFloat('0.00',fDMFluxoCaixa.mContaOrc.FieldByName('Valor_'+FormatFloat('00',i)).AsFloat));
    end;
  end;
end;

procedure TfrmConsFluxoCaixa.btnExcelClick(Sender: TObject);
  var linha, coluna : integer;
  var planilha : variant;
  var valorcampo : string;
  vNome_Grupo : String;
  vFlag : Boolean;
  vTexto : String;
  ColunaP : Integer;
  i2 : Integer;
begin
  Screen.Cursor := crHourGlass;
  fDMFluxoCaixa.mData.IndexFieldNames := 'Indice';

  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  linha   := 2;
  ColunaP := 0;
  i2      := 0;
  for coluna := 1 to fDMFluxoCaixa.mContaOrc.FieldCount do
  begin
    if (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'ID_Conta_Orcamento') and (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Tipo_Reg') and
       (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Tipo_ES') and
       (((ComboBox2.ItemIndex = 0) and (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Nome_Orcamento')) or (ComboBox2.ItemIndex = 1)) and
       ((not(ckAtrasado.Checked) and (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Vlr_Atrasado')) or (ckAtrasado.Checked))  then
    begin
      ColunaP := ColunaP + 1;
      valorcampo := fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].DisplayLabel;
      if Copy(valorcampo,1,6) = 'Valor_' then
      begin
        i2 := i2 + 1;
        if fDMFluxoCaixa.mData.FindKey([i2]) then
          //valorcampo := fDMFluxoCaixa.mDataData.AsString + ' (' + vSemana[DayOfWeek(fDMFluxoCaixa.mDataData.AsDateTime)] + ')';
          //Foi tirado a descrição da semana, conforme solicitação do Carlos (fica melhor para imprimir no excel)   22/02/2016
          valorcampo := fDMFluxoCaixa.mDataData.AsString;
      end;
      planilha.cells[Linha,colunaP] := valorcampo;
      planilha.cells[Linha,colunaP].font.bold := true; // Negrito
      planilha.cells[Linha,colunaP].Interior.Color := clRed;
      planilha.cells[Linha,colunaP].font.size := 11; // Tamanho da Fonte
      planilha.cells[Linha,colunaP].font.Color := clWhite;
    end;
  end;

  vNome_Grupo := '-Z';
  fDMFluxoCaixa.mContaOrc.First;
  while not fDMFluxoCaixa.mContaOrc.Eof do
  begin
    linha := Linha + 1;

    //aqui
    {if vNome_Grupo <> fDMFluxoCaixa.mContaOrcDescricao.AsString then
    begin
       planilha.cells[linha].font.Color := clgreen;
       planilha.cells[linha].Interior.Color := clgreen;}

      {for coluna := 1 to fDMFluxoCaixa.mContaOrc.FieldCount do
      begin
        //if fDMExcel.cdsProduto.Fields[coluna - 1].FieldName = 'NOME_GRUPO' then
        begin
          planilha.cells[linha,1] := '** Grupo';
          planilha.cells[linha,1].font.size := 5; // Tamanho da Fonte
          planilha.cells[linha,1].font.Color := clRed;

          //planilha.cells[linha,2] := fDMExcel.cdsProduto.Fields[coluna - 1].AsString;
          planilha.cells[linha,2].font.bold := true; // Negrito
          planilha.cells[linha,1].Interior.Color := clRed;
          planilha.cells[linha,2].Interior.Color := clRed;
          planilha.cells[linha,2].font.size := 17; // Tamanho da Fonte
          planilha.cells[linha,2].font.Color := clWhite;
        end;
      end;
      Linha := Linha + 1;}
    //end;
    //aqui *****************
              
    ColunaP := 0;
    for coluna := 1 to fDMFluxoCaixa.mContaOrc.FieldCount do
    begin
      if (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'ID_Conta_Orcamento') and (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Tipo_Reg') and
         (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Tipo_ES') and
         (((ComboBox2.ItemIndex = 0) and (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Nome_Orcamento')) or (ComboBox2.ItemIndex = 1)) and
         ((not(ckAtrasado.Checked) and (fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName <> 'Vlr_Atrasado')) or (ckAtrasado.Checked))  then
      begin
        ColunaP    := ColunaP + 1;
        valorcampo := fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].AsString;
        vTexto     := fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName;
        if (copy(vTexto,1,6) = 'Valor_') or (vTexto = 'Vlr_Atrasado') then
        begin
          if trim(valorcampo) = '' then valorcampo := '0';
          planilha.Cells[linha,colunaP].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
          planilha.cells[linha,colunaP] := StrToFloat(valorCampo);
        end
        else
        if fDMFluxoCaixa.mContaOrc.Fields[coluna - 1].FieldName = 'Vlr_Total' then
        begin
          planilha.Cells[linha,colunaP].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
          planilha.Cells[linha,colunaP].formula := '=SUM(D'+IntToStr(linha)+'*E'+IntToStr(linha)+')';
        end
        else
          planilha.cells[linha,colunaP] := valorCampo;
        planilha.cells[linha,colunaP].font.size := 11; // Tamanho da Fonte
        if (vNome_Grupo <> fDMFluxoCaixa.mContaOrcDescricao.AsString) and (ComboBox2.ItemIndex = 1) then
          planilha.cells[linha,colunaP].Interior.Color := clSilver;
      end;
    end;
    vNome_Grupo := fDMFluxoCaixa.mContaOrcDescricao.AsString;
    fDMFluxoCaixa.mContaOrc.Next;
  end;
  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  //if trim(FilenameEdit1.Text) <> '' then
    Planilha.ActiveWorkBook.SaveAs(vTexto+ 'Fluxo_Caixa.XLS' );
  Screen.Cursor := crDefault;
  fDMFluxoCaixa.mData.IndexFieldNames := 'Data';
end;

end.
