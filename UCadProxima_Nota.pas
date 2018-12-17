unit UCadProxima_Nota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadNotaFiscal, DB,
  DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, RXDBCtrl, UCBase, RzPanel, RxLookup, ToolEdit, CurrEdit;


type
  TfrmCadProxima_Nota = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    btnConfirmar: TBitBtn;
    lblSerie: TLabel;
    edtSerie: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel11: TPanel;
    btnExcluir: TBitBtn;
    Panel12: TPanel;
    Label1: TLabel;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Consultar(ID : Integer);

  public
    { Public declarations }
    vTipo_Reg : String; //NTS = Nota Fiscal   NTE = Nota Entrada    PED = Pedido
  end;

var
  frmCadProxima_Nota: TfrmCadProxima_Nota;

implementation

uses DateUtils, rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmCadProxima_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProxima_Nota.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal.Active) then
    exit;
  if fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
    exit;
  if fDMCadNotaFiscal.cdsNotaFiscalDESCRICAO_DESC.AsString <> 'NOTA_INICIAL' then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadProxima_Nota.prc_Excluir_Registro;
begin
  fDMCadNotaFiscal.prc_Excluir;
end;

procedure TfrmCadProxima_Nota.prc_Inserir_Registro;
begin
  vFilial   := RxDBLookupCombo1.KeyValue;
  vTipo_Reg := 'NTS';
  fDMCadNotaFiscal.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadNotaFiscal.prc_Inserir(vTipo_Reg);
end;

procedure TfrmCadProxima_Nota.FormShow(Sender: TObject);
begin
  fDMCadNotaFiscal := TDMCadNotaFiscal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);

  prc_Consultar(0);
end;

procedure TfrmCadProxima_Nota.prc_Consultar(ID : Integer);
begin
  fDMCadNotaFiscal.cdsNotaFiscal.Close;
  fDMCadNotaFiscal.sdsNotaFiscal.CommandText := fDMCadNotaFiscal.ctCommand
                                              + ' WHERE DESCRICAO_DESC = ' + QuotedStr('NOTA_INICIAL');
  fDMCadNotaFiscal.cdsNotaFiscal.Open;
end;

procedure TfrmCadProxima_Nota.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadProxima_Nota.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadNotaFiscal);
end;

procedure TfrmCadProxima_Nota.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadNotaFiscal.cdsNotaFiscal);
end;

procedure TfrmCadProxima_Nota.btnConfirmarClick(Sender: TObject);
var
  vQtdReg : Integer;
  sds: TSQLDataSet;
begin
  vQtdReg := fDMCadNotaFiscal.cdsNotaFiscal.RecordCount;
  if vQtdReg >= fDMCadNotaFiscal.cdsFilial.RecordCount then
  begin
    //ShowMessage('');
    if MessageDlg('Última nota já informada, deseja continuar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    ShowMessage('Filial não foi informada!');
    exit;
  end;
  if trim(edtSerie.Text) = '' then
  begin
    ShowMessage('Série não foi informada!');
    exit;
  end;
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    ShowMessage('Nº da nota não informada!');
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata := False;
  sds.NoMetadata  := True;
  sds.CommandText := ' SELECT COUNT (1) FROM NOTAFISCAL '
                   + ' WHERE ((DESCRICAO_DESC <> ' + QuotedStr('NOTA_INICIAL') + ') OR (DESCRICAO_DESC IS NULL))'
                   + '   AND (TIPO_REG = ' + QuotedStr('NTS') + ')'
                   + '   AND (FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue) + ')'
                   + '   AND (SERIE  = ' + QuotedStr(edtSerie.Text) + ')';
  sds.Open;
  if not(sds.IsEmpty) and (sds.FieldByName('COUNT').AsInteger > 0) then
  begin
    //ShowMessage('Já existe nota informada!');
    if MessageDlg('Já existe nota informada, deseja continuar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    begin
      FreeAndNil(sds);
      exit;
    end;
  end;
  sds.Close;
  FreeAndNil(sds);

  prc_Inserir_Registro;
  fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger       := CurrencyEdit1.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscalSERIE.AsString          := edtSerie.Text;
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString       := 'NTS';
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString      := 'S';
  fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString      := 'S';
  fDMCadNotaFiscal.cdsNotaFiscalDESCRICAO_DESC.AsString := 'NOTA_INICIAL';
  fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.Clear;
  fDMCadNotaFiscal.cdsNotaFiscal.Post;
  fDMCadNotaFiscal.cdsNotaFiscal.ApplyUpdates(0);

  prc_Consultar(0);
  
  RxDBLookupCombo1.ClearValue;
  edtSerie.Clear;
  CurrencyEdit1.Clear;
end;

end.
