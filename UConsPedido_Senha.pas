unit UConsPedido_Senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, NxCollection,
  Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfrmConsPedido_Senha = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Label5: TLabel;
    ComboBox1: TComboBox;
    sdsHist_Senha: TSQLDataSet;
    dspHist_Senha: TDataSetProvider;
    cdsHist_Senha: TClientDataSet;
    dsHist_Senha: TDataSource;
    sdsHist_SenhaID: TIntegerField;
    sdsHist_SenhaID_DOC: TIntegerField;
    sdsHist_SenhaITEM_DOC: TIntegerField;
    sdsHist_SenhaNUM_DOC: TIntegerField;
    sdsHist_SenhaTIPO_ARQ: TStringField;
    sdsHist_SenhaTIPO_DOC: TStringField;
    sdsHist_SenhaTIPO_HIST: TStringField;
    sdsHist_SenhaSENHA: TStringField;
    sdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField;
    sdsHist_SenhaUSUARIO: TStringField;
    sdsHist_SenhaDATA: TDateField;
    sdsHist_SenhaHORA: TTimeField;
    sdsHist_SenhaDESC_TIPO: TStringField;
    sdsHist_SenhaDESC_TIPO_HIST: TStringField;
    cdsHist_SenhaID: TIntegerField;
    cdsHist_SenhaID_DOC: TIntegerField;
    cdsHist_SenhaITEM_DOC: TIntegerField;
    cdsHist_SenhaNUM_DOC: TIntegerField;
    cdsHist_SenhaTIPO_ARQ: TStringField;
    cdsHist_SenhaTIPO_DOC: TStringField;
    cdsHist_SenhaTIPO_HIST: TStringField;
    cdsHist_SenhaSENHA: TStringField;
    cdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField;
    cdsHist_SenhaUSUARIO: TStringField;
    cdsHist_SenhaDATA: TDateField;
    cdsHist_SenhaHORA: TTimeField;
    cdsHist_SenhaDESC_TIPO: TStringField;
    cdsHist_SenhaDESC_TIPO_HIST: TStringField;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    ctHist_Senha : String;

    procedure prc_Consultar;
  public
    { Public declarations }
  end;

var
  frmConsPedido_Senha: TfrmConsPedido_Senha;

implementation

uses DmdDatabase, UConsPedido_Log;

{$R *.dfm}

procedure TfrmConsPedido_Senha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPedido_Senha.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsPedido_Senha.prc_Consultar;
begin
  cdsHist_Senha.Close;
  cdsHist_Senha.IndexFieldNames := 'Tipo_Doc;Num_Doc;Item_Doc';
  sdsHist_Senha.CommandText := ctHist_Senha;
  case ComboBox1.ItemIndex of
    0 : sdsHist_Senha.CommandText := ctHist_Senha + ' WHERE HS.TIPO_ARQ = ' + QuotedStr('PED');
    1 : sdsHist_Senha.CommandText := ctHist_Senha + ' WHERE HS.TIPO_ARQ = ' + QuotedStr('NOT');
    2 : sdsHist_Senha.CommandText := ctHist_Senha + ' WHERE HS.TIPO_ARQ = ' + QuotedStr('OC');
  end;
  if CurrencyEdit1.AsInteger > 0 then
    sdsHist_Senha.CommandText := sdsHist_Senha.CommandText + ' AND HS.NUM_DOC = ' + IntToStr(CurrencyEdit1.AsInteger);
  if DateEdit1.Date > 10 then
    sdsHist_Senha.CommandText := sdsHist_Senha.CommandText + ' AND HS.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    sdsHist_Senha.CommandText := sdsHist_Senha.CommandText + ' AND HS.DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  cdsHist_Senha.Open;
end;

procedure TfrmConsPedido_Senha.FormShow(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
end;

procedure TfrmConsPedido_Senha.FormCreate(Sender: TObject);
begin
  ctHist_Senha := sdsHist_Senha.CommandText;
end;

procedure TfrmConsPedido_Senha.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmConsPedido_Log: TfrmConsPedido_Log;
begin
  if not(cdsHist_Senha.Active) or (cdsHist_SenhaID.AsInteger <= 0) then
    exit;

  ffrmConsPedido_Log := TfrmConsPedido_Log.Create(self);
  ffrmConsPedido_Log.vUsuario_log := cdsHist_SenhaUSUARIO.AsString;
  if cdsHist_SenhaTIPO_ARQ.AsString = 'PED' then
    ffrmConsPedido_Log.vTabela_Log := 'cdsPedido'
  else
    ffrmConsPedido_Log.vTabela_Log := 'cdsNotaFiscal';
  ffrmConsPedido_Log.vIDlog    := IntToStr(cdsHist_SenhaID_DOC.AsInteger);
  ffrmConsPedido_Log.vData_Log := cdsHist_SenhaDATA.AsDateTime;
  ffrmConsPedido_Log.ShowModal;
  FreeAndNil(ffrmConsPedido_Log);
end;

end.
