unit uConsAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzTabs, RxLookup, Grids, DBGrids, SMDBGrid, StdCtrls,
  Mask, ToolEdit, NxCollection, UDMCadAgenda, rsDBUtils, uUtilPadrao, DB,
  DBCtrls;

type
  TfrmConsAgenda = class(TForm)
    pnlGeral: TPanel;
    pnlConsulta: TPanel;
    pnlGrid: TPanel;
    pnlRodape: TPanel;
    RzPageControl1: TRzPageControl;
    SMDBGrid1: TSMDBGrid;
    rxdblCliente: TRxDBLookupCombo;
    dteInicial: TDateEdit;
    dteFinal: TDateEdit;
    chkConcluido: TCheckBox;
    btnConsultar: TNxButton;
    lblCliente: TLabel;
    lblDataFinal: TLabel;
    lblDataInicial: TLabel;
    TabSheet1: TRzTabSheet;
    DBMemo1: TDBMemo;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    fDMCadAgenda : TDMCadAgenda;
    ctAgenda : String;
    procedure prc_Abrir_Pessoa;
    { Private declarations }
  public
    vID_Pessoa_Cons : Integer;
    { Public declarations }
  end;

var
  frmConsAgenda: TfrmConsAgenda;

implementation

uses SqlExpr;


{$R *.dfm}

procedure TfrmConsAgenda.FormShow(Sender: TObject);
begin
  fDMCadAgenda := TDMCadAgenda.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadAgenda);
  ctAgenda := fDMCadAgenda.sdsConsulta.CommandText;
  prc_Abrir_Pessoa;
end;

procedure TfrmConsAgenda.prc_Abrir_Pessoa;
begin
  fDMCadAgenda.cdsPessoa.Close;
  fDMCadAgenda.cdsPessoa.Open;
  fDMCadAgenda.cdsPessoa.Locate('CODIGO',vID_Pessoa_Cons,[loCaseInsensitive]);
  rxdblCliente.KeyValue := vID_Pessoa_Cons;
end;

procedure TfrmConsAgenda.btnConsultarClick(Sender: TObject);
begin
  fDMCadAgenda.cdsConsulta.Close;
  fDMCadAgenda.sdsConsulta.CommandText := ctAgenda + ' WHERE 0=0 ';
  if rxdblCliente.KeyValue > 0 then
    fDMCadAgenda.sdsConsulta.CommandText := fDMCadAgenda.sdsConsulta.CommandText + ' AND ID_PESSOA = ' + IntToStr(rxdblCliente.KeyValue);
  if (dteInicial.Date > 10) then
    fDMCadAgenda.sdsConsulta.CommandText := fDMCadAgenda.sdsConsulta.CommandText + ' AND A.DTAGENDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dteInicial.Date));
  if (dteFinal.Date > 10) then
    fDMCadAgenda.sdsConsulta.CommandText := fDMCadAgenda.sdsConsulta.CommandText + ' AND A.DTAGENDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',dteFinal.Date));;
  if not (chkConcluido.Checked) then
    fDMCadAgenda.sdsConsulta.CommandText := fDMCadAgenda.sdsConsulta.CommandText + ' AND A.CONCLUIDO = ' + QuotedStr('N');
  fDMCadAgenda.sdsConsulta.CommandText := fDMCadAgenda.sdsConsulta.CommandText + ' ORDER BY A.DTAGENDA';
  fDMCadAgenda.cdsConsulta.Open;
end;

end.
