unit UConsPessoa_Fin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, UDMConsPessoa, SqlExpr;

type
  TfrmConsPessoa_Fin = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    CheckBox1: TCheckBox;
    pnlLimite: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    fDMConsPessoa: TDMConsPessoa;

    procedure prc_Le_Duplicata;
    function fnc_Calcula_Vale : Real;

  public
    { Public declarations }
    vID_Pessoa_Cons: Integer;
  end;

var
  frmConsPessoa_Fin: TfrmConsPessoa_Fin;

implementation

uses rsDBUtils, DateUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmConsPessoa_Fin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPessoa_Fin.FormShow(Sender: TObject);
begin
  fDMConsPessoa := TDMConsPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPessoa);

  pnlLimite.Visible := (fDMConsPessoa.qParametrosUSA_LIMITE_CREDITO.AsString = 'S');

  if vID_Pessoa_Cons > 0 then
  begin
    fDMConsPessoa.prc_Cons_Duplicata(vID_Pessoa_Cons);
    prc_Le_Duplicata;
  end;
end;                   

procedure TfrmConsPessoa_Fin.prc_Le_Duplicata;
var
  vVlrTotal, vVlrPago, vVlrPendente, vVlrAtraso: Real;
  vQtdDiasAtraso, vQtdNotasAtraso, vAux: Integer;
  vNumDuplicata: String;
  vVlrVale : Real;
begin
  vVlrTotal       := 0;
  vVlrPago        := 0;
  vVlrPendente    := 0;
  vVlrAtraso      := 0;
  vQtdDiasAtraso  := 0;
  vQtdNotasAtraso := 0;
  vNumDuplicata   := '';
  SMDBGrid1.DisableScroll;
  fDMConsPessoa.cdsDuplicata.First;
  while not fDMConsPessoa.cdsDuplicata.Eof do
  begin
    vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + fDMConsPessoa.cdsDuplicataVLR_PARCELA.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMConsPessoa.cdsDuplicataVLR_PAGO.AsFloat)) > 0 then
      vVlrPago := StrToFloat(FormatFloat('0.00',vVlrPago + fDMConsPessoa.cdsDuplicataVLR_PAGO.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMConsPessoa.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
    begin
      vVlrPendente := StrToFloat(FormatFloat('0.00',vVlrPendente + fDMConsPessoa.cdsDuplicataVLR_RESTANTE.AsFloat));
      if fDMConsPessoa.cdsDuplicataDTVENCIMENTO.AsDateTime < Date then
      begin
        vVlrAtraso      := StrToFloat(FormatFloat('0.00',vVlrAtraso + fDMConsPessoa.cdsDuplicataVLR_RESTANTE.AsFloat));
        vQtdNotasAtraso := vQtdNotasAtraso + 1;
        vAux := DaysBetween(Date,fDMConsPessoa.cdsDuplicataDTVENCIMENTO.AsDateTime);
        if vAux > vQtdDiasAtraso then
        begin
          vQtdDiasAtraso := vAux;
          vNumDuplicata  := fDMConsPessoa.cdsDuplicataNUMDUPLICATA.AsString;
        end;
      end;
    end;
    fDMConsPessoa.cdsDuplicata.Next;
  end;
  SMDBGrid1.EnableScroll;
  Label4.Caption  := FormatFloat('###,###,##0.00',vVlrTotal);
  Label6.Caption  := FormatFloat('###,###,##0.00',vVlrPendente);
  Label8.Caption  := FormatFloat('###,###,##0.00',vVlrPago);
  Label10.Caption := FormatFloat('###,###,##0.00',vVlrAtraso);
  Label12.Caption := IntToStr(vQtdDiasAtraso);
  Label14.Caption := vNumDuplicata;
  Label16.Caption := IntToStr(vQtdNotasAtraso);

  if fDMConsPessoa.qParametrosUSA_LIMITE_CREDITO.AsString = 'S' then
  begin
    fDMConsPessoa.qPessoa.Close;
    fDMConsPessoa.qPessoa.ParamByName('CODIGO').AsInteger := vID_Pessoa_Cons;
    fDMConsPessoa.qPessoa.Open;

    Label18.Caption := FormatFloat('###,###,##0.00',fDMConsPessoa.qPessoaVLR_LIMITE_CREDITO.AsFloat);
    vVlrVale := fnc_Calcula_Vale;
    Label20.Caption := FormatFloat('###,###,##0.00',vVlrPendente + vVlrVale);
    Label22.Caption := FormatFloat('###,###,##0.00',fDMConsPessoa.qPessoaVLR_LIMITE_CREDITO.AsFloat - (vVlrPendente + vVlrVale));
  end;
end;

procedure TfrmConsPessoa_Fin.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsDuplicata.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;                        

procedure TfrmConsPessoa_Fin.CheckBox1Click(Sender: TObject);
begin
  fDMConsPessoa.cdsDuplicata.Filtered := False;
  fDMConsPessoa.cdsDuplicata.Filter   := 'VLR_RESTANTE > 0';
  fDMConsPessoa.cdsDuplicata.Filtered := CheckBox1.Checked; 
end;

function TfrmConsPessoa_Fin.fnc_Calcula_Vale: Real;
var
  sds_Vale: TSQLDataSet;
begin
  Result := 0;
  sds_Vale   := TSQLDataSet.Create(nil);
  try
    sds_Vale.SQLConnection := dmDatabase.scoDados;
    sds_Vale.NoMetadata    := True;
    sds_Vale.GetMetadata   := False;
    sds_Vale.CommandText   := 'SELECT SUM(VI.VLR_TOTAL) VLR_TOTAL FROM VALE V '
                            + ' INNER JOIN VALE_ITENS VI  ON V.id = VI.id '
                            + ' WHERE VI.FATURADO = ' + QuotedStr('N')
                            + '   AND V.ID_CLIENTE = ' + IntToStr(vID_Pessoa_Cons);
    sds_Vale.Open;
    Result := StrToFloat(FormatFloat('0.00',sds_Vale.FieldByName('VLR_TOTAL').AsFloat));
  except
  end;
  FreeAndNil(sds_Vale);
end;

end.
