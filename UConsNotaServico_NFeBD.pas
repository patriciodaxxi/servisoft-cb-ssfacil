unit UConsNotaServico_NFeBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls,
  Grids, DBGrids, SMDBGrid, FMTBcd, DB, SqlExpr, Provider, DBClient,
  DBCtrls, RzPanel;

type
  TfrmConsNotaServico_NFeBD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    sdsNFSE_CONSULTAR_SITUACAO_LOTE: TSQLDataSet;
    dspNFSE_CONSULTAR_SITUACAO_LOTE: TDataSetProvider;
    cdsNFSE_CONSULTAR_SITUACAO_LOTE: TClientDataSet;
    dsNFSE_CONSULTAR_SITUACAO_LOTE: TDataSource;
    cdsNFSE_CONSULTAR_SITUACAO_LOTEID: TIntegerField;
    cdsNFSE_CONSULTAR_SITUACAO_LOTEPROTOCOLO: TStringField;
    cdsNFSE_CONSULTAR_SITUACAO_LOTEMSGDADOS: TMemoField;
    cdsNFSE_CONSULTAR_SITUACAO_LOTEMSGRESULTADO: TMemoField;
    cdsNFSE_CONSULTAR_SITUACAO_LOTEMSGRETWS: TMemoField;
    RzGroupBox1: TRzGroupBox;
    DBMemo1: TDBMemo;
    RzGroupBox2: TRzGroupBox;
    DBMemo2: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsNotaServico_NFeBD: TfrmConsNotaServico_NFeBD;

implementation

uses DmdDatabase_NFeBD;

{$R *.dfm}

procedure TfrmConsNotaServico_NFeBD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(dmDatabase_NFeBD);
  Action := Cafree;
end;

procedure TfrmConsNotaServico_NFeBD.FormCreate(Sender: TObject);
begin
  dmDatabase_NFeBD := TdmDatabase_NFeBD.Create(Self);
end;

procedure TfrmConsNotaServico_NFeBD.btnConsultarClick(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    MessageDlg('*** Nota não foi informada!', mtError, [mbOk], 0);
    exit;
  end;
  cdsNFSE_CONSULTAR_SITUACAO_LOTE.Close;
  sdsNFSE_CONSULTAR_SITUACAO_LOTE.CommandText := 'select * from NFSE_CONSULTAR_SITUACAO_LOTE NF WHERE NF.msgresultado LIKE ' + QuotedStr('%'+ CurrencyEdit1.Text +'%');
  cdsNFSE_CONSULTAR_SITUACAO_LOTE.Open;
end;

end.
