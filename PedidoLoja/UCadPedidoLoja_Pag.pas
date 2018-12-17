unit UCadPedidoLoja_Pag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPedido, NxCollection, StdCtrls, DBCtrls, ExtCtrls, RzPanel,
  ToolEdit, RXDBCtrl, Mask, RxLookup, Grids, DBGrids, SMDBGrid, Buttons, DB;

type
  TfrmCadPedidoLoja_Pag = class(TForm)
    SMDBGrid_Dupl2: TSMDBGrid;
    Panel1: TPanel;
    btnFechar: TNxButton;
    Panel2: TPanel;
    Label47: TLabel;
    Label72: TLabel;
    SpeedButton6: TSpeedButton;
    Label58: TLabel;
    SpeedButton5: TSpeedButton;
    Label59: TLabel;
    Label62: TLabel;
    Label74: TLabel;
    SpeedButton7: TSpeedButton;
    rxdbCondicaoPgto: TRxDBLookupCombo;
    rxdbTipoCobranca: TRxDBLookupCombo;
    rxdbConta: TRxDBLookupCombo;
    DBEdit16: TDBEdit;
    btnGerarParcelas: TNxButton;
    btnExcluirParcelas: TNxButton;
    rxdbConta_Orcamento: TRxDBLookupCombo;
    DBDateEdit3: TDBDateEdit;
    DBCheckBox4: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure rxdbCondicaoPgtoChange(Sender: TObject);
    procedure rxdbContaChange(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure btnExcluirParcelasClick(Sender: TObject);
    procedure DBEdit16Change(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Opcao_Prazo;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    
  end;

var
  frmCadPedidoLoja_Pag: TfrmCadPedidoLoja_Pag;

implementation

uses rsDBUtils, uCalculo_Pedido, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadPedidoLoja_Pag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedidoLoja_Pag.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  Panel2.Enabled := (fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
  prc_Opcao_Prazo;
  DBRadioGroup1.Enabled := (fDMCadPedido.qParametros_UsuarioCONFERE_FINANC.AsString = 'S')
                       and (fDMCadPedido.qParametros_PedUSA_FINANCEIRO_CONF.AsString = 'S');
  SMDBGrid_Dupl2.ReadOnly := not(fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadPedidoLoja_Pag.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedidoLoja_Pag.rxdbCondicaoPgtoChange(Sender: TObject);
begin
  prc_Opcao_Prazo;
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
    btnGerarParcelasClick(Sender);
end;

procedure TfrmCadPedidoLoja_Pag.prc_Opcao_Prazo;
var
  vMostrarAux: String;
  vMostrarEntrada: String;
  vTipoCondicao: String;
begin
  vMostrarAux     := 'N';
  vMostrarEntrada := 'N';
  vTipoCondicao   := '';
  if (rxdbCondicaoPgto.Text <> '') and (fDMCadPedido.cdsCondPgto.Locate('ID',rxdbCondicaoPgto.KeyValue,[loCaseInsensitive])) then
  begin
    vMostrarAux     := fDMCadPedido.cdsCondPgtoTIPO.AsString;
    vMostrarEntrada := fDMCadPedido.cdsCondPgtoENTRADA.AsString;
    vTipoCondicao   := fDMCadPedido.cdsCondPgtoTIPO_CONDICAO.AsString;
  end;
  btnGerarParcelas.Visible   := ((vMostrarAux = 'P') or (vMostrarAux = 'V'));
  btnExcluirParcelas.Visible := ((vMostrarAux = 'P') or (vMostrarAux = 'V'));
  Label47.Visible            := (((vMostrarAux = 'P') and (vMostrarEntrada = 'S')) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  DBEdit16.Visible           := (((vMostrarAux = 'P') and (vMostrarEntrada = 'S')) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  Label74.Visible            := ((vMostrarAux = 'P') and (vTipoCondicao = 'F'));
  DBDateEdit3.Visible        := ((vMostrarAux = 'P') and (vTipoCondicao = 'F'));
  SMDBGrid_Dupl2.Visible     := ((vMostrarAux = 'P') or (vMostrarAux = 'V'));
  if fDMCadPedido.cdsPedido.State in [dsEdit,dsInsert] then
  begin
    {if vMostrarAux = 'P' then
      rxcbTipo_Prazo.ItemIndex := 0
    else
    if vMostrarAux = 'V' then
      rxcbTipo_Prazo.ItemIndex := 1
    else
    if vMostrarAux = 'N' then
      rxcbTipo_Prazo.ItemIndex := 2;}
    if vMostrarEntrada = 'N' then
      fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end;
  rxdbTipoCobranca.Visible    := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  SpeedButton5.Visible        := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  SpeedButton7.Visible        := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  rxdbConta.Visible           := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  rxdbConta_Orcamento.Visible := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) and (fDMCadPedido.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  Label58.Visible             := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  Label59.Visible             := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) or (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
  Label62.Visible             := ((fDMCadPedido.cdsPedidoID_CONDPGTO.AsInteger > 0) and (fDMCadPedido.cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S'));
  rxdbCondicaoPgto.ReadOnly   := (fDMCadPedido.cdsPedidoNOTIFICACAO.AsInteger = 1);
  DBCheckBox4.Visible         := ((StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat)) > 0) and (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S'));
end;

procedure TfrmCadPedidoLoja_Pag.rxdbContaChange(Sender: TObject);
begin
  if not fDMCadPedido.cdsPedido_Parc.IsEmpty then
  begin
    fDMCadPedido.cdsPedido_Parc.First;
    while not fDMCadPedido.cdsPedido_Parc.Eof do
    begin
      if (fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger <> fDMCadPedido.cdsPedidoID_CONTA.AsInteger) or
         (fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger) then
      begin
        fDMCadPedido.cdsPedido_Parc.Edit;
        if (fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger <> fDMCadPedido.cdsPedidoID_CONTA.AsInteger) then
        begin
          if fDMCadPedido.cdsPedidoID_CONTA.AsInteger > 0 then
            fDMCadPedido.cdsPedido_ParcID_CONTA.AsInteger := fDMCadPedido.cdsPedidoID_CONTA.AsInteger
          else
            fDMCadPedido.cdsPedido_ParcID_CONTA.Clear;
        end;
        if (fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger <> fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger) then
        begin
          if fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger > 0 then
            fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.AsInteger := fDMCadPedido.cdsPedidoID_TIPO_COBRANCA.AsInteger
          else
            fDMCadPedido.cdsPedido_ParcID_TIPOCOBRANCA.Clear;
        end;
        fDMCadPedido.cdsPedido_Parc.Post;
      end;
      fDMCadPedido.cdsPedido_Parc.Next;
    end;
  end;
end;

procedure TfrmCadPedidoLoja_Pag.DBEdit16Exit(Sender: TObject);
begin
  if (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString = 'S') and (fDMCadPedido.cdsPedidoGERA_ENTRADA_NO_PEDIDO.AsString = 'S') then
    fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat))
  else
    fDMCadPedido.cdsPedidoVLR_ADIANTAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
end;

procedure TfrmCadPedidoLoja_Pag.DBEdit16KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (fDMCadPedido.cdsParametrosUSA_ADIANTAMENTO_PEDIDO.AsString <> 'S') then
  begin
    if trim(DBEdit16.Text) <> '' then
      fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat := StrToFloat(DBEdit16.Text)
    else
      fDMCadPedido.cdsPedidoVLR_ENTRADA.AsFloat := 0;
    btnGerarParcelasClick(Sender);
  end;
end;

procedure TfrmCadPedidoLoja_Pag.btnGerarParcelasClick(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat)) <= 0 then
  begin
    fDMCadPedido.cdsPedido_Parc.First;
    while not fDMCadPedido.cdsPedido_Parc.Eof do
      fDMCadPedido.cdsPedido_Parc.Delete;
  end
  else
  if not uCalculo_Pedido.fnc_Gerar_Pedido_Parc(fDMCadPedido) then
    MessageDlg(fDMCadPedido.vMsgErroParc, mtError, [mbOk], 0);
end;

procedure TfrmCadPedidoLoja_Pag.btnExcluirParcelasClick(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_Parc.IsEmpty) or (fDMCadPedido.cdsPedido_ParcID.AsInteger <= 0) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPedido.cdsPedido_Parc.Delete;
end;

procedure TfrmCadPedidoLoja_Pag.DBEdit16Change(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit16.Text,0);
  DBCheckBox4.Visible := ((vAux <> '') and (StrToFloat(vAux) > 0));
end;

end.
