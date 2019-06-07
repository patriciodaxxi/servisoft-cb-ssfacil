unit UConsClienteOBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, FMTBcd, DB,
  SqlExpr, Provider, DBClient, DBCtrls, ExtCtrls;

type
  TfrmConsClienteOBS = class(TForm)
    NxPanel1: TNxPanel;
    NxLabel1: TNxLabel;
    CurrencyEdit1: TCurrencyEdit;
    NxLabel2: TNxLabel;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaOBS: TMemoField;
    cdsConsultaOBS_AVISO: TStringField;
    cdsConsultaID_CONDPGTO: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaNOME_CONDPGTO: TStringField;
    cdsConsultaID_TAB_PRECO: TIntegerField;
    cdsConsultaNOME_TABPRECO: TStringField;
    cdsConsultaVLR_ULT_FATURAMENTO: TFloatField;
    cdsConsultaDTNOTA: TDateField;
    cdsConsultaDTPEDIDO: TDateField;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure prc_Abrir_Consulta;

  public
    { Public declarations }
  end;

var
  frmConsClienteOBS: TfrmConsClienteOBS;

implementation

uses DmdDatabase, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmConsClienteOBS.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    cdsConsulta.Close;
    if CurrencyEdit1.AsInteger > 0 then
      prc_Abrir_Consulta;
  end
  else
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := CurrencyEdit1.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    CurrencyEdit1.AsInteger := vCodPessoa_Pos;
    CurrencyEdit1.SetFocus;
  end;
end;

procedure TfrmConsClienteOBS.CurrencyEdit1Change(Sender: TObject);
begin
  cdsConsulta.Close;
end;

procedure TfrmConsClienteOBS.prc_Abrir_Consulta;
begin
  cdsConsulta.Close;
  sdsConsulta.ParamByName('CODIGO').AsInteger := CurrencyEdit1.AsInteger;
  cdsConsulta.Open;
  NxLabel2.Caption := cdsConsultaNOME_CLIENTE.AsString;
end;

procedure TfrmConsClienteOBS.FormShow(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    prc_Abrir_Consulta;
end;

procedure TfrmConsClienteOBS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then //ESC
    Close;
end;

end.
