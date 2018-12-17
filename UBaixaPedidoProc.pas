unit UBaixaPedidoProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMBaixaPedidoProc, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  dbXPress, NxPageControl, RzTabs, NxCollection, NxEdit;

type
  TfrmBaixaPedidoProc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    UCControls1: TUCControls;
    btnConsultar: TNxButton;
    Edit2: TEdit;
    RzPageControl1: TRzPageControl;
    TS_Baixa: TRzTabSheet;
    TS_ConsBaixa: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    DateEdit5: TDateEdit;
    btnConfBaixa: TNxButton;
    Panel3: TPanel;
    btnExcluir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    fDMBaixaPedidoProc: TDMBaixaPedidoProc;
    ColunaOrdenada: String;

    procedure prc_Consultar;

    procedure prc_Gravar_Baixa;
    procedure prc_ConsBaixa;
    procedure prc_Excluir_Baixa;

  public
    { Public declarations }
  end;

var
  frmBaixaPedidoProc: TfrmBaixaPedidoProc;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmBaixaPedidoProc.prc_Consultar;
var
  vComando: String;
begin
  fDMBaixaPedidoProc.cdsPedidoProc.Close;
  fDMBaixaPedidoProc.sdsPedidoProc.CommandText := fDMBaixaPedidoProc.ctPedidoProc;
  vComando := '';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if trim(Edit2.Text) <> '' then
    //vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%');
    vComando := vComando + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ') OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
  fDMBaixaPedidoProc.sdsPedidoProc.CommandText := fDMBaixaPedidoProc.sdsPedidoProc.CommandText + vComando;
  fDMBaixaPedidoProc.cdsPedidoProc.Open;
  fDMBaixaPedidoProc.cdsPedidoProc.IndexFieldNames := 'PEDIDO_CLIENTE;ITEM_PEDIDO';
end;

procedure TfrmBaixaPedidoProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixaPedidoProc.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMBaixaPedidoProc := TDMBaixaPedidoProc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaPedidoProc);
end;

procedure TfrmBaixaPedidoProc.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmBaixaPedidoProc.btnConfBaixaClick(Sender: TObject);
var
  vContadorAux: Integer;
  vEstoque: String;
begin
  if DateEdit5.Date < 10 then
  begin
    ShowMessage('*** Data da baixa não informada!');
    exit;
  end;
  vContadorAux := 0;

  fDMBaixaPedidoProc.cdsPedidoProc.First;
  while not fDMBaixaPedidoProc.cdsPedidoProc.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.0000',fDMBaixaPedidoProc.cdsPedidoProcQTD_APRODUZIR.AsFloat)) > 0)then
    begin
      vContadorAux := vContadorAux + 1;
      prc_Gravar_Baixa;
    end;
    fDMBaixaPedidoProc.cdsPedidoProc.Next;
  end;

  btnConsultarClick(Sender);

  ShowMessage('Total de itens baixados: ' + IntToStr(vContadorAux));
  DateEdit5.Clear;
end;

procedure TfrmBaixaPedidoProc.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
  begin
    fDMBaixaPedidoProc.cdsPedidoProc.Edit;
    fDMBaixaPedidoProc.cdsPedidoProcQTD_APRODUZIR.AsFloat := fDMBaixaPedidoProc.cdsPedidoProcQTD_PROCESSO_PEND.AsFloat;
    fDMBaixaPedidoProc.cdsPedidoProc.Post;
  end
  else
  begin
    fDMBaixaPedidoProc.cdsPedidoProc.Edit;
    fDMBaixaPedidoProc.cdsPedidoProcQTD_APRODUZIR.AsFloat := 0;
    fDMBaixaPedidoProc.cdsPedidoProc.Post;
  end;
end;

procedure TfrmBaixaPedidoProc.btnConsultarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    if RzPageControl1.ActivePage = TS_Baixa then
      prc_Consultar
    else
      prc_ConsBaixa;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmBaixaPedidoProc.prc_Gravar_Baixa;
var
  vItem : Integer;
  vAux : Integer;
begin
  fDMBaixaPedidoProc.cdsBaixa_Processo.Close;
  fDMBaixaPedidoProc.sdsBaixa_Processo.CommandText := fDMBaixaPedidoProc.ctBaixa_Processo
                                                    + ' WHERE B.ID_PEDIDO = :ID_PEDIDO '
                                                    + '   AND B.ITEM_PEDIDO = :ITEM_PEDIDO ';
  fDMBaixaPedidoProc.sdsBaixa_Processo.ParamByName('ID_PEDIDO').AsInteger   := fDMBaixaPedidoProc.cdsPedidoProcID.AsInteger;
  fDMBaixaPedidoProc.sdsBaixa_Processo.ParamByName('ITEM_PEDIDO').AsInteger := fDMBaixaPedidoProc.cdsPedidoProcITEM_PEDIDO.AsInteger;
  fDMBaixaPedidoProc.cdsBaixa_Processo.Open;
  if fDMBaixaPedidoProc.cdsBaixa_Processo.IsEmpty then
  begin
    vAux  := dmDatabase.ProximaSequencia('BAIXA_PROCESSO',0);
    vItem := 0;
  end
  else
  begin
    fDMBaixaPedidoProc.cdsBaixa_Processo.Last;
    vAux  := fDMBaixaPedidoProc.cdsBaixa_ProcessoID.AsInteger;
    vItem := fDMBaixaPedidoProc.cdsBaixa_ProcessoITEM.AsInteger;
  end;
  fDMBaixaPedidoProc.cdsBaixa_Processo.Insert;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoID.AsInteger          := vAux;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoITEM.AsInteger        := vItem + 1;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoID_PROCESSO.AsInteger := fDMBaixaPedidoProc.cdsPedidoProcID_PROCESSO.AsInteger;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoID_PEDIDO.AsInteger   := fDMBaixaPedidoProc.cdsPedidoProcID.AsInteger;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoITEM_PEDIDO.AsInteger := fDMBaixaPedidoProc.cdsPedidoProcITEM_PEDIDO.AsInteger;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoDTENTRADA.AsDateTime  := DateEdit5.Date;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoHRENTRADA.AsDateTime  := Now;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoDTBAIXA.AsDateTime    := DateEdit5.Date;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoHRBAIXA.AsDateTime    := Now;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoQTD.AsFloat           := fDMBaixaPedidoProc.cdsPedidoProcQTD_APRODUZIR.AsFloat;
  fDMBaixaPedidoProc.cdsBaixa_ProcessoQTD_PRODUZIDO.AsFloat := 0;
  fDMBaixaPedidoProc.cdsBaixa_Processo.Post;
  fDMBaixaPedidoProc.cdsBaixa_Processo.ApplyUpdates(0);
end;

procedure TfrmBaixaPedidoProc.prc_ConsBaixa;
var
  vComando : String;
begin
  vComando := '';
  fDMBaixaPedidoProc.cdsConsBaixa.Close;
  fDMBaixaPedidoProc.sdsConsBaixa.CommandText := fDMBaixaPedidoProc.ctConsBaixa + ' WHERE 0 = 0 ';
  vComando := '';
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND IT.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ') OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
  fDMBaixaPedidoProc.sdsConsBaixa.CommandText := fDMBaixaPedidoProc.sdsConsBaixa.CommandText + vComando;
  fDMBaixaPedidoProc.cdsConsBaixa.Open;
  fDMBaixaPedidoProc.cdsConsBaixa.IndexFieldNames := 'PEDIDO_CLIENTE;ITEM_PEDIDO;ORDEM_MAPA';
end;

procedure TfrmBaixaPedidoProc.btnExcluirClick(Sender: TObject);
var
  vContadorAux : Integer;
begin
  if MessageDlg('Deseja excluir as baixas selecionadas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vContadorAux := 0;
  fDMBaixaPedidoProc.cdsConsBaixa.First;
  while not fDMBaixaPedidoProc.cdsConsBaixa.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
    begin
      vContadorAux := vContadorAux + 1;
      prc_Excluir_Baixa;
    end;
    fDMBaixaPedidoProc.cdsConsBaixa.Next;
  end;

  btnConsultarClick(Sender);
  ShowMessage('Total de baixas excluidas: ' + IntToStr(vContadorAux));
end;

procedure TfrmBaixaPedidoProc.prc_Excluir_Baixa;
var
  vItem : Integer;
  vAux : Integer;
begin
  fDMBaixaPedidoProc.cdsBaixa_Processo.Close;
  fDMBaixaPedidoProc.sdsBaixa_Processo.CommandText := fDMBaixaPedidoProc.ctBaixa_Processo
                                                    + ' WHERE B.ID = :ID '
                                                    + '   AND B.ITEM = :ITEM ';
  fDMBaixaPedidoProc.sdsBaixa_Processo.ParamByName('ID').AsInteger   := fDMBaixaPedidoProc.cdsConsBaixaID_BAIXA.AsInteger;
  fDMBaixaPedidoProc.sdsBaixa_Processo.ParamByName('ITEM').AsInteger := fDMBaixaPedidoProc.cdsConsBaixaITEM_BAIXA.AsInteger;
  fDMBaixaPedidoProc.cdsBaixa_Processo.Open;
  if fDMBaixaPedidoProc.cdsBaixa_Processo.IsEmpty then
    exit;
  fDMBaixaPedidoProc.cdsBaixa_Processo.Delete;
  fDMBaixaPedidoProc.cdsBaixa_Processo.ApplyUpdates(0);
end;

end.
