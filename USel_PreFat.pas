unit USel_PreFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, Grids, DBGrids, SMDBGrid, UDMPreFat,
  StdCtrls, RxLookup, RzPanel, DB;

type
  TfrmSel_PreFat = class(TForm)
    Panel1: TPanel;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    NxButton1: TNxButton;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    gbxVendedor: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }

    procedure prc_scroll(DataSet: TDataSet);

  public
    { Public declarations }
    fDMPreFat: TDMPreFat;

  end;

var
  frmSel_PreFat: TfrmSel_PreFat;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmSel_PreFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_PreFat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMPreFat);
  fDMPreFat.cdsConsPreFat.AFTERSCROLL := prc_scroll;
  btnConsultarClick(Sender);
  fDMPreFat.vID_PreFat      := 0;
  fDMPreFat.vID_CFOP_PreFat := 0;

end;

procedure TfrmSel_PreFat.btnConsultarClick(Sender: TObject);
begin
  fDMPreFat.cdsConsPreFat.Close;
  fDMPreFat.cdsConsPreFat.Open;
  fDMPreFat.cdsConsPreFat.Last;
  fDMPreFat.cdsConsPreFat.First;
end;

procedure TfrmSel_PreFat.NxButton1Click(Sender: TObject);
begin
  if fDMPreFat.cdsConsPreFatID.AsInteger <= 0 then
    exit;
  {if trim(RxDBLookupCombo2.Text) = '' then
  begin
    MessageDlg('*** CFOP não informada!' , mtInformation, [mbOk], 0);
    exit;
  end;}
  if MessageDlg('Confirma a Emissão da Nota para o Pré Faturamento selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMPreFat.vID_PreFat := fDMPreFat.cdsConsPreFatID.AsInteger;
  Close;
end;

procedure TfrmSel_PreFat.prc_scroll(DataSet: TDataSet);
begin
  fDMPreFat.cdsConsPreFat_Itens.Close;
  fDMPreFat.sdsConsPreFat_Itens.ParamByName('ID').AsInteger := fDMPreFat.cdsConsPreFatID.AsInteger;
  fDMPreFat.cdsConsPreFat_Itens.Open;
end;

end.
