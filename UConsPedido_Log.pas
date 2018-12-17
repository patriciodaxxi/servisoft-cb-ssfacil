unit UConsPedido_Log;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, DBXpress, DB, SqlExpr, FMTBcd,
  DBClient, Provider, IniFiles, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME;

type
  TfrmConsPedido_Log = class(TForm)
    SMDBGrid1: TSMDBGrid;
    scoLog: TSQLConnection;
    sdsLogs: TSQLDataSet;
    dspLogs: TDataSetProvider;
    cdsLogs: TClientDataSet;
    dsLogs: TDataSource;
    cdsLogsID_LOG: TIntegerField;
    cdsLogsNOME_TABELA: TStringField;
    cdsLogsOPERACAO: TIntegerField;
    cdsLogsUSUARIO: TStringField;
    cdsLogsDATA_OPERACAO: TDateField;
    cdsLogsHORA_OPERACAO: TTimeField;
    cdsLogsLOG: TMemoField;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DBMemo1: TDBMemo;
    cdsLogsDESC_OPERACAO: TStringField;
    Decoder64: TIdDecoderMIME;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ctCommand : String;
    function Fnc_ArquivoConfiguracao: string;

  public
    { Public declarations }
    vTabela_Log, vIDlog : String;
    vUsuario_Log : String;
    vData_Log : TDateTime;

  end;

var
  frmConsPedido_Log: TfrmConsPedido_Log;

implementation

{$R *.dfm}

const
  cArquivoConfiguracao = 'Config.ini';

procedure TfrmConsPedido_Log.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  scoLog.Connected := False;
  Action := Cafree;
end;

procedure TfrmConsPedido_Log.FormCreate(Sender: TObject);
var
  Config: TIniFile;
begin
  Config := TIniFile.Create(Fnc_ArquivoConfiguracao);
  scoLog.LoadParamsFromIniFile(Fnc_ArquivoConfiguracao);

  scoLog.Params.Values['DRIVERNAME'] := 'INTERBASE';
  scoLog.Params.Values['SQLDIALECT'] := '3';
  scoLog.Params.Values['DATABASE']   := Config.ReadString('bando de dados', 'DATABASE', '');
  scoLog.Params.Values['USER_NAME']  := Config.ReadString('bando de dados', 'USERNAME', '');
  scoLog.Params.Values['PASSWORD']   := Decoder64.DecodeString(Config.ReadString('bando de dados', 'PASSWORD', ''));
  scoLog.Connected := True;

  ctCommand := sdsLogs.CommandText;
end;

function TfrmConsPedido_Log.Fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TfrmConsPedido_Log.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsPedido_Log.FormShow(Sender: TObject);
begin
  cdsLogs.Close;
  sdsLogs.CommandText := ctCommand
                       + ' and l."LOG" LIKE' + QuotedStr('%ID: ' + vIDlog +'%');
  sdsLogs.ParamByName('DATA').AsDate     := vData_Log;
  sdsLogs.ParamByName('Tabela').AsString := vTabela_Log;
  cdsLogs.Open;
end;

end.
