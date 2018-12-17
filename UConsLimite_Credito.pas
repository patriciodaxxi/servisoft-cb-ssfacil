unit UConsLimite_Credito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsLimite_Credito, StdCtrls, RxLookup, ExtCtrls,
  NxCollection, SqlExpr, DB;

type
  TfrmConsLimite_Credito = class(TForm)
    Panel1: TPanel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    btnConsultar: TNxButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fDMConsLimite_Credito: TDMConsLimite_Credito;
    function fnc_Limite_Credito(ID_Cliente : Integer) : Real;
  public
    { Public declarations }
    vCodCliente_Lim : Integer;
  end;

var
  frmConsLimite_Credito: TfrmConsLimite_Credito;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmConsLimite_Credito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vCodCliente_Lim := 0;
  Action := Cafree;
end;

procedure TfrmConsLimite_Credito.FormShow(Sender: TObject);
begin
  fDMConsLimite_Credito := TDMConsLimite_Credito.Create(Self);
  if vCodCliente_Lim > 0 then
  begin
    RxDBLookupCombo1.KeyValue := vCodCliente_Lim;
    btnConsultarClick(Sender);
  end;
end;

procedure TfrmConsLimite_Credito.btnConsultarClick(Sender: TObject);
var
  vAux, vAux2 : Real;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMConsLimite_Credito.cdsClieteCODIGO.AsInteger <> RxDBLookupCombo1.KeyValue then
    fDMConsLimite_Credito.cdsCliete.Locate('CODIGO',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
  vAux := fnc_Limite_Credito(RxDBLookupCombo1.KeyValue);
  Label2.Caption := 'Limite de Crédito: ' + FormatFloat('###,###,##0.00',fDMConsLimite_Credito.cdsClieteVLR_LIMITE_CREDITO.AsFloat);
  Label3.Caption := 'Limite Utilizado: ' + FormatFloat('###,###,##0.00',vAux);
  vAux := StrToFloat(FormatFloat('0.00',fDMConsLimite_Credito.cdsClieteVLR_LIMITE_CREDITO.AsFloat - vAux));
  Label4.Caption := 'Saldo Disponível == > ' + FormatFloat('###,###,##0.00',vAux);
  if vAux < StrToFloat(FormatFloat('0.00',0)) then
    Label4.Font.Color := clRed
  else
    Label4.Font.Color := clNavy;
end;

function TfrmConsLimite_Credito.fnc_Limite_Credito(
  ID_Cliente: Integer): Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata  := True;
    sds.GetMetadata := False;
    sds.CommandText := 'SELECT SUM(D.VLR_RESTANTE) VLR_RESTANTE FROM DUPLICATA D '
                     + ' WHERE D.TIPO_ES = ' + QuotedStr('E')
                     + '   AND D.ID_PESSOA = ' + IntToStr(ID_Cliente);
    sds.Open;
    Result := sds.FieldByName('VLR_RESTANTE').AsFloat;
  finally
    FreeAndNil(sds);
  end
end;

procedure TfrmConsLimite_Credito.RxDBLookupCombo1Change(Sender: TObject);
begin
  Label2.Caption := '';
  Label3.Caption := '';
  Label4.Caption := '';
end;

procedure TfrmConsLimite_Credito.FormCreate(Sender: TObject);
begin
  vCodCliente_Lim := 0;
end;

end.
