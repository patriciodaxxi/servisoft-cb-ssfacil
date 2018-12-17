//tag 11  é a copia do pedido sem cobrança (Fututo)
unit USel_Servico_Extra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadRecibo, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadRecibo_Itens, NxCollection;

type
  TfrmSel_Servico_Extra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;
    procedure prc_Gravar;
    procedure prc_Gravar_Itens;

  public
    { Public declarations }
    vCodCliente: Integer;

    fDMCadRecibo: TDMCadRecibo;
    ffrmCadRecibo_Itens: TfrmCadRecibo_Itens;

  end;

var
  frmSel_Servico_Extra: TfrmSel_Servico_Extra;

implementation

uses rsDBUtils, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmSel_Servico_Extra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Servico_Extra.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadRecibo);
  btnPesquisarClick(Sender);
end;

procedure TfrmSel_Servico_Extra.prc_Consultar;
begin
  SMDBGrid1.DisableScroll;

  fDMCadRecibo.cdsMov_Servico.Close;
  fDMCadRecibo.sdsMov_Servico.CommandText := fDMCadRecibo.ctMov_Servico;
  if vFilial > 0 then
    fDMCadRecibo.sdsMov_Servico.CommandText := fDMCadRecibo.sdsMov_Servico.CommandText
                                             + ' AND MOV.FILIAL = ' + IntToStr(vFilial);
  if vCodCliente > 0 then
    fDMCadRecibo.sdsMov_Servico.CommandText := fDMCadRecibo.sdsMov_Servico.CommandText
                                             + ' AND MOV.ID_CLIENTE = ' + IntToStr(vCodCliente);
  fDMCadRecibo.cdsMov_Servico.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_Servico_Extra.prc_Gravar_Itens;
var
  vItemAux: Integer;
  vNum_Controle_Tam : Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto : String;
begin
  fDMCadRecibo.cdsRecibo_Itens.Last;
  vItemAux := fDMCadRecibo.cdsRecibo_ItensITEM.AsInteger + 1;

  fDMCadRecibo.cdsRecibo_Itens.Insert;
  fDMCadRecibo.cdsRecibo_ItensID.AsInteger   := fDMCadRecibo.cdsReciboID.AsInteger;
  fDMCadRecibo.cdsRecibo_ItensITEM.AsInteger := vItemAux;
  fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger := fDMCadRecibo.cdsMov_ServicoID_SERVICO_INT.AsInteger;
  fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat              := fDMCadRecibo.cdsMov_ServicoQTD.AsFloat;
  fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat     := fDMCadRecibo.cdsMov_ServicoVLR_UNITARIO.AsFloat;
  fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat        := fDMCadRecibo.cdsMov_ServicoVLR_TOTAL.AsFloat;
  fDMCadRecibo.cdsRecibo_ItensNOME_SERVICO_INT.AsString := fDMCadRecibo.cdsMov_ServicoSERVICO_COMPLEMENTO.AsString;
  fDMCadRecibo.cdsRecibo_ItensGERAR_DUPLICATA.AsString  := 'S';
  fDMCadRecibo.cdsRecibo_ItensID_MOV_SERVICO_EXTRA.AsInteger := fDMCadRecibo.cdsMov_ServicoID.AsInteger;
  fDMCadRecibo.cdsRecibo_Itens.Post;

  if fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger <= 0 then
  begin
    if not (fDMCadRecibo.cdsRecibo.State in [dsEdit,dsInsert]) then
      fDMCadRecibo.cdsRecibo.Edit;
    fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger := vCodCliente;
  end;
end;

procedure TfrmSel_Servico_Extra.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Servico_Extra.btnImportarClick(Sender: TObject);
begin
  prc_Gravar;
end;

procedure TfrmSel_Servico_Extra.prc_Gravar;
var
  vMsgErro: String;
begin
  if fDMCadRecibo.cdsMov_Servico.IsEmpty then
    exit;

  vMsgErro := '';
  try
    fDMCadRecibo.cdsMov_Servico.First;
    while not fDMCadRecibo.cdsMov_Servico.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected)  then
      begin
        if (vCodCliente <= 0) then
          vCodCliente := fDMCadRecibo.cdsMov_ServicoID_CLIENTE.AsInteger;
        if vCodCliente = fDMCadRecibo.cdsMov_ServicoID_CLIENTE.AsInteger then
        begin
          if not fDMCadRecibo.cdsRecibo_Itens.Locate('ID_MOV_SERVICO_EXTRA',fDMCadRecibo.cdsMov_ServicoID.AsInteger,[loCaseInsensitive]) then
            prc_Gravar_Itens;
        end;
      end;
      fDMCadRecibo.cdsMov_Servico.Next;
    end;
  except
    on E: exception do
    begin
      if fDMCadRecibo.cdsRecibo_Itens.State in [dsEdit,dsInsert] then
        fDMCadRecibo.cdsRecibo_Itens.Cancel;
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0)
  else
  if trim(vMsgErro) = '' then
    Close;
end;

end.
