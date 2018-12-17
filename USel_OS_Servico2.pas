unit USel_OS_Servico2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid,
  StdCtrls, Mask, ToolEdit, CurrEdit, NxCollection, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfrmSel_OS_Servico2 = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    Label1: TLabel;
    btnConsultar: TNxButton;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaID: TIntegerField;
    cdsConsultaNUM_OS: TIntegerField;
    cdsConsultaDTEMISSAO: TDateField;
    cdsConsultaHREMISSAO: TTimeField;
    cdsConsultaID_CLIENTE: TIntegerField;
    cdsConsultaDTENTREGA: TDateField;
    cdsConsultaHRENTREGA: TTimeField;
    cdsConsultaNUM_NOTA: TIntegerField;
    cdsConsultaSERIE_NOTA: TIntegerField;
    cdsConsultaNUM_OC: TIntegerField;
    cdsConsultaID_FUNCIONARIO: TIntegerField;
    cdsConsultaENTREGUE: TStringField;
    cdsConsultaCONCLUIDO: TStringField;
    cdsConsultaDTCONCLUIDO: TDateField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaSOLICITANTE_NOME: TStringField;
    cdsConsultaFATURADO: TStringField;
    dsConsulta: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ctConsulta: String;
    procedure prc_Consultar;    
  public
    { Public declarations }     
  end;

var
  frmSel_OS_Servico2: TfrmSel_OS_Servico2;

implementation

uses uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_OS_Servico2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_OS_Servico2.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_OS_Servico2.prc_Consultar;
begin
  cdsConsulta.Close;
  cdsConsulta.IndexFieldNames := 'NUM_OS';
  sdsConsulta.CommandText     := ctConsulta
                                            + ' WHERE OS.TP_SIMPLES = ' + QuotedStr('N')
                                            + '   AND OS.CONCLUIDO = ' + QuotedStr('N');
  if CurrencyEdit1.AsInteger > 0 then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                                          + ' AND OS.NUM_OS = ' + IntToStr(CurrencyEdit1.AsInteger);
  cdsConsulta.Open;
end;

procedure TfrmSel_OS_Servico2.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vNum_OS_Pos := cdsConsultaNUM_OS.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_OS_Servico2.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_OS_Servico2.FormCreate(Sender: TObject);
begin
  ctConsulta := sdsConsulta.CommandText;
end;

procedure TfrmSel_OS_Servico2.FormShow(Sender: TObject);
begin
  if cdsConsulta.Active then
    SMDBGrid1.SetFocus;
end;

end.
