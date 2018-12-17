unit UExcluirPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMExcluirPed, Grids, DBGrids, SMDBGrid, RzPanel, NxEdit, DB,
  RxLookup, NxCollection, Mask, ToolEdit, CurrEdit, StdCtrls, ExtCtrls, UDMCadPedido;

type
  TfrmExcluirPed = class(TForm)
    pnlPesquisa: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    btnConsultar: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    pnlPedido: TPanel;
    Label1: TLabel;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    grid_Pedido: TSMDBGrid;
    NxPanel1: TNxPanel;
    pnlItens: TPanel;
    Label2: TLabel;
    NxButton8: TNxButton;
    grid_Itens: TSMDBGrid;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure grid_PedidoDblClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
  private
    { Private declarations }
    fDMExcluirPed: TDMExcluirPed;
    fDMCadPedido: TDMCadPedido;

    procedure prc_Consultar;
    procedure prc_Le_Ped(Selecionado : String);
    procedure prc_scroll2(DataSet: TDataSet);

  public
    { Public declarations }
  end;

var
  frmExcluirPed: TfrmExcluirPed;

implementation

uses rsDBUtils, uCalculo_Pedido, uGrava_Pedido;

{$R *.dfm}

procedure TfrmExcluirPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmExcluirPed.FormShow(Sender: TObject);
begin
  fDMExcluirPed := TDMExcluirPed.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMExcluirPed);
  fDMCadPedido := TDMCadPedido.Create(Self);
  NxDatePicker1.Text := '';
  NxDatePicker2.Text := '';
  fDMCadPedido.prc_Abrir_cdsCliente('C');
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
end;

procedure TfrmExcluirPed.btnConsultarClick(Sender: TObject);
begin
  fDMExcluirPed.cdsConsulta_Ped.AfterScroll := nil;
  prc_Consultar;
  fDMExcluirPed.cdsConsulta_Ped.AfterScroll := prc_scroll2;
  fDMExcluirPed.cdsConsulta_Ped.First;
  fDMExcluirPed.cdsConsulta_Itens.Close;
  fDMExcluirPed.sdsConsulta_Itens.ParamByName('ID').AsInteger := fDMExcluirPed.cdsConsulta_PedID.AsInteger;
  fDMExcluirPed.cdsConsulta_Itens.Open;
end;

procedure TfrmExcluirPed.prc_Consultar;
begin
  fDMExcluirPed.cdsConsulta_Ped.Close;
  fDMExcluirPed.sdsConsulta_Ped.CommandText := fDMExcluirPed.ctConsulta_Ped
                                             + ' WHERE  TIPO_REG = ' + QuotedStr('P');
  if (NxDatePicker1.Text <> '') then
    fDMExcluirPed.sdsConsulta_Ped.CommandText := fDMExcluirPed.sdsConsulta_Ped.CommandText
                                               + ' AND PED.DTEMISSAO >= '
                                               + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
  if (NxDatePicker2.Text <> '') then
    fDMExcluirPed.sdsConsulta_Ped.CommandText := fDMExcluirPed.sdsConsulta_Ped.CommandText
                                               + ' AND PED.DTEMISSAO <= '
                                               + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
  fDMExcluirPed.cdsConsulta_Ped.Open;
end;

procedure TfrmExcluirPed.RadioGroup1Click(Sender: TObject);
var
  i : Integer;
begin
  pnlPedido.Visible := (RadioGroup1.ItemIndex = 0);
  pnlItens.Visible  := (RadioGroup1.ItemIndex = 1);

  if RadioGroup1.ItemIndex = 1 then
    grid_Itens.ExOptions := [eoBooleanAsCheckBox,eoCheckBoxSelect,eoDisableDelete,eoDisableInsert,eoENTERlikeTAB,eoKeepSelection,eoStandardPopup,eoBLOBEditor,eoTitleWordWrap]
  else
    grid_Itens.ExOptions := [eoBooleanAsCheckBox,eoDisableDelete,eoDisableInsert,eoENTERlikeTAB,eoKeepSelection,eoStandardPopup,eoBLOBEditor,eoTitleWordWrap];

  for i := 0 to grid_Pedido.ColCount - 2 do
  begin
    if grid_Pedido.Columns[i].FieldName = 'SELECIONADO' then
      grid_Pedido.Columns[i].Visible := (RadioGroup1.ItemIndex = 0);
  end;
end;

procedure TfrmExcluirPed.grid_PedidoDblClick(Sender: TObject);
begin
  if not(fDMExcluirPed.cdsConsulta_Ped.Active) or (fDMExcluirPed.cdsConsulta_PedID.AsInteger <= 0) then
    exit;

  fDMExcluirPed.cdsConsulta_Ped.Edit;
  if fDMExcluirPed.cdsConsulta_PedSELECIONADO.AsString = 'S' then
    fDMExcluirPed.cdsConsulta_PedSELECIONADO.AsString := ''
  else
    fDMExcluirPed.cdsConsulta_PedSELECIONADO.AsString := 'S';
  fDMExcluirPed.cdsConsulta_Ped.Post;
end;

procedure TfrmExcluirPed.NxButton3Click(Sender: TObject);
begin
  prc_Le_Ped('S');
end;

procedure TfrmExcluirPed.prc_Le_Ped(Selecionado: String);
begin
  if not(fDMExcluirPed.cdsConsulta_Ped.Active) or (fDMExcluirPed.cdsConsulta_PedID.AsInteger <= 0) then
    exit;

  grid_Pedido.DisableScroll;
  fDMExcluirPed.cdsConsulta_Ped.First;
  while not fDMExcluirPed.cdsConsulta_Ped.Eof do
  begin
    fDMExcluirPed.cdsConsulta_Ped.Edit;
    fDMExcluirPed.cdsConsulta_PedSELECIONADO.AsString := Selecionado;
    fDMExcluirPed.cdsConsulta_Ped.Post;
    fDMExcluirPed.cdsConsulta_Ped.Next;
  end;
  grid_Pedido.EnableScroll;
end;

procedure TfrmExcluirPed.NxButton4Click(Sender: TObject);
begin
  prc_Le_Ped('');
end;

procedure TfrmExcluirPed.NxButton5Click(Sender: TObject);
var
  vCont : Integer;
begin
  if not(fDMExcluirPed.cdsConsulta_Ped.Active) or (fDMExcluirPed.cdsConsulta_PedID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir os Pedidos Selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vCont := 0;
  fDMExcluirPed.cdsConsulta_Ped.First;
  while not fDMExcluirPed.cdsConsulta_Ped.Eof do
  begin
    if fDMExcluirPed.cdsConsulta_PedSELECIONADO.AsString = 'S' then
    //if (grid_Pedido.SelectedRows.CurrentRowSelected) then
    begin
      fDMCadPedido.prc_Localizar(fDMExcluirPed.cdsConsulta_PedID.AsInteger);
      if not fDMCadPedido.cdsPedido.IsEmpty then
      begin
        uGrava_Pedido.prc_Excluir_Pedido(fDMCadPedido);
        vCont := vCont + 1;
      end;
    end;
    fDMExcluirPed.cdsConsulta_Ped.Next;
  end;

  btnConsultarClick(Sender);

  MessageDlg('*** Pedidos Excluidos (Qtd. de Ped..: ' + IntToStr(vCont) +')',mtConfirmation, [mbOk], 0);
end;

procedure TfrmExcluirPed.prc_scroll2(DataSet: TDataSet);
begin
  fDMExcluirPed.cdsConsulta_Itens.Close;
  fDMExcluirPed.sdsConsulta_Itens.ParamByName('ID').AsInteger := fDMExcluirPed.cdsConsulta_PedID.AsInteger;
  fDMExcluirPed.cdsConsulta_Itens.Open;
end;

procedure TfrmExcluirPed.NxButton8Click(Sender: TObject);
var
  vIDAux : Integer;
begin
  if not(fDMExcluirPed.cdsConsulta_Itens.Active) or (fDMExcluirPed.cdsConsulta_ItensID.AsInteger <= 0) then
    exit;

  fDMCadPedido.prc_Localizar(fDMExcluirPed.cdsConsulta_PedID.AsInteger);
  if fDMCadPedido.cdsPedido.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir os itens selecionados do Pedido  ' + fDMCadPedido.cdsPedidoNUM_PEDIDO.AsString, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  vIDAux := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMExcluirPed.cdsConsulta_Itens.First;
  while not fDMExcluirPed.cdsConsulta_Itens.Eof do
  begin
    //if fDMExcluirPed.cdsConsulta_ItensSELECIONADO.AsString = 'S' then
    if (grid_Itens.SelectedRows.CurrentRowSelected) then
    begin
      if fDMCadPedido.cdsPedido_Itens.Locate('ID;ITEM',VarArrayOf([fDMExcluirPed.cdsConsulta_ItensID.AsInteger,fDMExcluirPed.cdsConsulta_ItensITEM.AsInteger]),([loCaseInsensitive])) then
        uGrava_Pedido.prc_Excluir_Item_Ped(fDMCadPedido);
    end;
    fDMExcluirPed.cdsConsulta_Itens.Next;
  end;

  if fDMCadPedido.cdsPedido_Itens.RecordCount <= 0 then
  begin
    uGrava_Pedido.prc_Excluir_Pedido(fDMCadPedido);
    MessageDlg('*** Todos os itens foram excluidos do pedido! ' +#13+ '    Com isso, o pedido ' + fDMExcluirPed.cdsConsulta_PedNUM_PEDIDO.AsString + ', também foi excluido!',mtConfirmation, [mbOk], 0);
  end
  else
  begin
    fDMCadPedido.cdsPedido.Edit;
    uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,False);
    fDMCadPedido.cdsPedido.Post;
    fDMCadPedido.cdsPedido.ApplyUpdates(0);
    MessageDlg('*** Itens do Pedido ' + fDMExcluirPed.cdsConsulta_PedNUM_PEDIDO.AsString + ' excluido!',mtConfirmation, [mbOk], 0);
  end;
  btnConsultarClick(Sender);
  fDMExcluirPed.cdsConsulta_Ped.Locate('ID',vIDAux, [loCaseInsensitive]);
end;

end.
