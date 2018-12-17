unit UConsComprasOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids,
  SMDBGrid, RzTabs, NxCollection, NxEdit, StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, UDMConsFat;

type
  TfrmConsComprasServico = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    RzPageControl3: TRzPageControl;
    TS_Cliente_Acum: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fDMConsFat: TDMConsFat;
    procedure prc_Montar_Consulta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsComprasServico: TfrmConsComprasServico;

implementation

uses
  rsDBUtils, StrUtils, uUtilPadrao, DB;

{$R *.dfm}

procedure TfrmConsComprasServico.btnConsultarClick(Sender: TObject);
begin
  if DateEdit1.Date < 10 then
  begin
    MessageDlg('Informe a data inicial', mtConfirmation, [mbOK], 0);
    DateEdit1.SetFocus;
    Exit;
  end;
  if DateEdit2.Date < 10 then
  begin
    MessageDlg('Informe a data inicial', mtConfirmation, [mbOK], 0);
    DateEdit2.SetFocus;
    Exit;
  end;
  if RxDBLookupCombo1.KeyValue <= 0 then
  begin
    MessageDlg('Informe a Filial', mtConfirmation, [mbOK], 0);
    RxDBLookupCombo1.SetFocus;
    Exit;
  end;
  prc_Montar_Consulta;
end;

procedure TfrmConsComprasServico.prc_Montar_Consulta;
var
  sql: string;
begin
  fDMConsFat.cdsComprasServicos.Close;
  fDMConsFat.sdsComprasServicos.CommandText := fDMConsFat.ctComprasServico;
  if RxDBLookupCombo2.KeyValue > 0 then
  begin
    sql := 'SELECT AUX.* FROM (' + fDMConsFat.ctComprasServico;
    sql := sql + ') AUX WHERE AUX.ID_CONTA_ORCAMENTO = :CONTA';
    fDMConsFat.sdsComprasServicos.CommandText := sql;
    fDMConsFat.sdsComprasServicos.ParamByName('CONTA').AsInteger := fDMConsFat.cdsConsComprasServicoID.AsInteger;
  end;
  fDMConsFat.sdsComprasServicos.ParamByName('DATA_INICIAL').AsDate := DateEdit1.Date;
  fDMConsFat.sdsComprasServicos.ParamByName('DATA_FINAL').AsDate := DateEdit2.Date;
  fDMConsFat.sdsComprasServicos.ParamByName('FILIAL').AsInteger := fDMConsFat.cdsFilialID.AsInteger;
  fDMConsFat.cdsComprasServicos.Open;
end;

procedure TfrmConsComprasServico.FormShow(Sender: TObject);
begin
  fDMConsFat := TDMConsFat.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsFat);
  fDMConsFat.cdsConsComprasServico.Close;
  fDMConsFat.cdsConsComprasServico.Open;
end;

procedure TfrmConsComprasServico.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Compras_Servico_Contabil.fr3';
  if FileExists(vArq) then
    fDMConsFat.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMConsFat.vDataIni := FormatDateTime('DD/MM/YYYY',DateEdit1.Date);
  fDMConsFat.vDataFim := FormatDateTime('DD/MM/YYYY',DateEdit2.Date);
  fDMConsFat.frxReport1.ShowReport;
end;

procedure TfrmConsComprasServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.

