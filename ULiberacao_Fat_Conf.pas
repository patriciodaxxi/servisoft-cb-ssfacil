unit ULiberacao_Fat_Conf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConferencia, StdCtrls, RxLookup, Grids, DBGrids, SMDBGrid,
  NxCollection, RzTabs, NxEdit, Mask, ToolEdit, CurrEdit, ExtCtrls, DBCtrls;

type
  TfrmLiberacao_Fat_Conf = class(TForm)
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Label5: TLabel;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Label6: TLabel;
    Label1: TLabel;
    NxDatePicker3: TNxDatePicker;
    Label3: TLabel;
    NxDatePicker4: TNxDatePicker;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label7: TLabel;
    NxComboBox1: TNxComboBox;
    TS_Itens: TRzTabSheet;
    Panel1: TPanel;
    Label8: TLabel;
    DBText1: TDBText;
    StaticText1: TStaticText;
    btnEtiqueta: TNxButton;
    SMDBGrid1: TSMDBGrid;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;

  public
    { Public declarations }
    fDMConferencia: TDMConferencia;

  end;

var
  frmLiberacao_Fat_Conf: TfrmLiberacao_Fat_Conf;

implementation

uses uUtilPadrao, rsDBUtils, DateUtils, DB;

{$R *.dfm}

procedure TfrmLiberacao_Fat_Conf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmLiberacao_Fat_Conf.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConferencia);
  fDMConferencia.cdsFilial.First;
  if (fDMConferencia.cdsFilial.RecordCount < 2) and (fDMConferencia.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConferencia.cdsFilialID.AsInteger;
  NxDatePicker1.SetFocus;
  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Clear;
  NxDatePicker3.Clear;
  NxDatePicker4.Clear;
end;

procedure TfrmLiberacao_Fat_Conf.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmLiberacao_Fat_Conf.prc_Consultar;
var
  vComando : String;
begin
  vComando := 'WHERE 0 = 0 ';
  fDMConferencia.cdsConsulta.Close;
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' AND C.ID = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    if RxDBLookupCombo1.KeyValue > 0 then
      vComando := vComando + ' AND C.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if NxDatePicker1.Text <> '' then
      vComando := vComando + ' AND C.DTINICIO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      vComando := vComando + ' AND C.DTINICIO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
    if NxDatePicker3.Text <> '' then
      vComando := vComando + ' AND C.DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker3.date));
    if NxDatePicker4.Text <> '' then
      vComando := vComando + ' AND C.DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker4.date));
    case NxComboBox1.ItemIndex of
      0 : vComando := vComando + ' AND ENCERRADO = ' + QuotedStr('N');
      1 : vComando := vComando + ' AND ENCERRADO = ' + QuotedStr('S');
    end;
  end;
  fDMConferencia.sdsConsulta.CommandText := fDMConferencia.ctConsulta + vComando;
  fDMConferencia.cdsConsulta.Open;
  fDMConferencia.cdsConsulta.Last;
  SMDBGrid2.SetFocus;
end;

procedure TfrmLiberacao_Fat_Conf.SMDBGrid2DblClick(Sender: TObject);
begin
  if (fDMConferencia.cdsConsulta.Active) and (fDMConferencia.cdsConsultaID.AsInteger > 0) then
    RzPageControl1.ActivePage := TS_Itens;
end;

procedure TfrmLiberacao_Fat_Conf.SMDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if (fDMConferencia.cdsConsulta.Active) and (fDMConferencia.cdsConsultaID.AsInteger > 0) then
      RzPageControl1.ActivePage := TS_Itens;
  end;
end;

procedure TfrmLiberacao_Fat_Conf.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmLiberacao_Fat_Conf.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Itens then
  begin
    fDMConferencia.cdsConsulta_Itens.Close;
    fDMConferencia.sdsConsulta_Itens.ParamByName('ID').AsInteger := fDMConferencia.cdsConsultaID.AsInteger;
    fDMConferencia.cdsConsulta_Itens.Open;
  end;
end;

procedure TfrmLiberacao_Fat_Conf.btnEtiquetaClick(Sender: TObject);
begin
  if not(fDMConferencia.cdsConsulta_Itens.Active) or (fDMConferencia.cdsConsulta_Itens.IsEmpty) or (fDMConferencia.cdsConsulta_ItensID.AsInteger <= 0) then
    exit;
  fDMConferencia.prc_Imp_Etiqueta(fDMConferencia.cdsConsulta_ItensID.AsInteger,fDMConferencia.cdsConsulta_ItensITEM.AsInteger);
end;

procedure TfrmLiberacao_Fat_Conf.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  if MessageDlg('Imprimir a conferência: ' + fDMConferencia.cdsConsultaID.AsString +' ?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;
  fDMConferencia.mImpConferencia.EmptyDataSet;

  fDMConferencia.cdsConsulta_Itens.Close;
  fDMConferencia.sdsConsulta_Itens.ParamByName('ID').AsInteger := fDMConferencia.cdsConsultaID.AsInteger;
  fDMConferencia.cdsConsulta_Itens.Open;
  
  fDMConferencia.cdsConsulta_Itens.First;
  while not fDMConferencia.cdsConsulta_Itens.Eof do
  begin
    fDMConferencia.cdsConsulta_Ped.Close;
    fDMConferencia.sdsConsulta_Ped.ParamByName('ID').AsInteger   := fDMConferencia.cdsConsulta_ItensID.AsInteger;
    fDMConferencia.sdsConsulta_Ped.ParamByName('ITEM').AsInteger := fDMConferencia.cdsConsulta_ItensITEM.AsInteger;
    fDMConferencia.cdsConsulta_Ped.Open;
    fDMConferencia.cdsConsulta_Ped.First;
    while not fDMConferencia.cdsConsulta_Ped.Eof do
    begin
      fDMConferencia.mImpConferencia.Insert;
      fDMConferencia.mImpConferenciaID_Conferencia.AsInteger := fDMConferencia.cdsConsulta_ItensID.AsInteger;
      fDMConferencia.mImpConferenciaUsuario.AsString         := fDMConferencia.cdsConsultaUSUARIO.AsString;
      fDMConferencia.mImpConferenciaQtd_Total.AsInteger      := fDMConferencia.cdsConsultaQTD_PRODUITO.AsInteger;
      fDMConferencia.mImpConferenciaTotal_Etiqueta.AsInteger := fDMConferencia.cdsConsultaTOTAL_ITENS.AsInteger;
      fDMConferencia.mImpConferenciaTotal_Prod_Dif.AsInteger := fDMConferencia.cdsConsultaTOTAL_PRODUTO_DIF.AsInteger;
      fDMConferencia.mImpConferenciaItem_Etiqueta.AsInteger  := fDMConferencia.cdsConsulta_ItensITEM.AsInteger;
      fDMConferencia.mImpConferenciaQtd_Total_Etiq.AsInteger := fDMConferencia.cdsConsulta_ItensQTD.AsInteger;
      fDMConferencia.mImpConferenciaTotal_Prod_Dif_Etiq.AsInteger := fDMConferencia.cdsConsulta_ItensQTD_TIPO_PRODUTO.AsInteger;
      fDMConferencia.mImpConferenciaNum_Pedido.AsInteger          := fDMConferencia.cdsConsulta_PedNUM_PEDIDO.AsInteger;
      fDMConferencia.mImpConferenciaItem_Pedido.AsInteger         := fDMConferencia.cdsConsulta_PedITEM_PEDIDO.AsInteger;
      fDMConferencia.mImpConferenciaID_Produto.AsInteger          := fDMConferencia.cdsConsulta_PedID_PRODUTO.AsInteger; 
      fDMConferencia.mImpConferenciaReferencia.AsString           := fDMConferencia.cdsConsulta_PedREFERENCIA.AsString;
      fDMConferencia.mImpConferenciaNome_Prod.AsString            := fDMConferencia.cdsConsulta_PedNOME.AsString;
      fDMConferencia.mImpConferenciaCod_Barra.AsString            := fDMConferencia.cdsConsulta_PedCOD_BARRA.AsString;
      fDMConferencia.mImpConferenciaQtd_Ped.AsInteger             := fDMConferencia.cdsConsulta_PedQTD.AsInteger;
      fDMConferencia.mImpConferencia.Post;
      fDMConferencia.cdsConsulta_Ped.Next;
    end;
    fDMConferencia.cdsConsulta_Itens.Next;
  end;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Conferencia.fr3';
  if FileExists(vArq) then
    fDMConferencia.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    MessageDlg('Relatório não localizado: ' + vArq , mtInformation, [mbOk], 0);
    Exit;
  end;
  fDMConferencia.frxReport1.ShowReport;
end;

end.
