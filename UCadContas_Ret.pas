unit UCadContas_Ret;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadContas, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB;

type
  TfrmCadContas_Ret = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnRestaurarPadrao: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    DBEdit29: TDBEdit;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    DBEdit32: TDBEdit;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    Label34: TLabel;
    DBEdit34: TDBEdit;
    Label35: TLabel;
    DBEdit35: TDBEdit;
    Label36: TLabel;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    Label38: TLabel;
    DBEdit38: TDBEdit;
    Label39: TLabel;
    DBEdit39: TDBEdit;
    Label40: TLabel;
    DBEdit40: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRestaurarPadraoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Abrir_Contas_Retorno;
    procedure prc_Restaurar_Padrao;
    procedure prc_Restaura_Itau400;
    procedure prc_Restaura_Caixa400;
    procedure prc_Restaura_Brasil400_6;
    procedure prc_Restaura_Brasil400;
    procedure prc_Restaura_Banrisul400;
    procedure prc_Restaura_HSBC400;

  public
    { Public declarations }
    fDMCadContas: TDMCadContas;
    
  end;

var
  frmCadContas_Ret: TfrmCadContas_Ret;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadContas_Ret.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadContas_Ret.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadContas);
  prc_Abrir_Contas_Retorno;
  if fDMCadContas.cdsContas.State in [dsEdit,dsInsert] then
  begin
    if not fDMCadContas.cdsContas_Retorno.IsEmpty then
      fDMCadContas.cdsContas_Retorno.Edit
    else
    begin
      fDMCadContas.cdsContas_Retorno.Insert;
      fDMCadContas.cdsContas_RetornoID.AsInteger := fDMCadContas.cdsContasID.AsInteger;
      prc_Restaurar_Padrao;
    end;
  end;
  Panel2.Enabled       := (fDMCadContas.cdsContas.State in [dsEdit,dsInsert]);
  btnConfirmar.Enabled := (fDMCadContas.cdsContas.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadContas_Ret.prc_Abrir_Contas_Retorno;
begin
  fDMCadContas.cdsContas_Retorno.Close;
  fDMCadContas.sdsContas_Retorno.ParamByName('ID').AsInteger := fDMCadContas.cdsContasID.AsInteger;
  fDMCadContas.cdsContas_Retorno.Open;
end;

procedure TfrmCadContas_Ret.prc_Restaurar_Padrao;
begin
  if fDMCadContas.cdsContasCNAB.AsString = 'ITAU400' then
    prc_Restaura_Itau400
  else
  if fDMCadContas.cdsContasCNAB.AsString = 'BRASIL400' then
    prc_Restaura_Brasil400
  else
  if fDMCadContas.cdsContasCNAB.AsString = 'BRASIL400-6' then
    prc_Restaura_Brasil400_6
  else
  if fDMCadContas.cdsContasCNAB.AsString = 'CAIXA400' then
    prc_Restaura_Caixa400
  else
  if fDMCadContas.cdsContasCNAB.AsString = 'BANRISUL400' then
    prc_Restaura_Banrisul400
  else
  if fDMCadContas.cdsContasCNAB.AsString = 'HSBC400' then
    prc_Restaura_HSBC400;
end;

procedure TfrmCadContas_Ret.prc_Restaura_Brasil400_6;
begin
  fDMCadContas.cdsContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger  := 32;
  fDMCadContas.cdsContas_RetornoPOS_CODBANCO_RETORNO.AsInteger  := 77;
  fDMCadContas.cdsContas_RetornoPOS_NUM_NOTA.AsInteger          := 117;
  fDMCadContas.cdsContas_RetornoQTD_NUM_NOTA.AsInteger          := 10;
  fDMCadContas.cdsContas_RetornoPOS_NOSSO_NUMERO.AsInteger      := 63;
  fDMCadContas.cdsContas_RetornoQTD_NOSSO_NUMERO.AsInteger      := 12;
  fDMCadContas.cdsContas_RetornoPOS_ID_DUPLICATA.AsInteger      := 38;
  fDMCadContas.cdsContas_RetornoQTD_ID_DUPLICATA.AsInteger      := 25;
  fDMCadContas.cdsContas_RetornoPOS_OCORRENCIA.AsInteger        := 109;
  fDMCadContas.cdsContas_RetornoPOS_DT_OCORRENCIA.AsInteger     := 111;
  fDMCadContas.cdsContas_RetornoPOS_CONF_NOSSO_NUMERO.AsInteger := 0;
  fDMCadContas.cdsContas_RetornoQTD_CONF_NOSSO_NUMERO.AsInteger := 0;
  fDMCadContas.cdsContas_RetornoPOS_DT_VENCIMENTO.AsInteger     := 147;
  fDMCadContas.cdsContas_RetornoPOS_VLR_TITULO.AsInteger        := 153;
  fDMCadContas.cdsContas_RetornoQTD_VLR_TITULO.AsInteger        := 13;
  fDMCadContas.cdsContas_RetornoPOS_ESPECIE.AsInteger           := 174;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESPESA_COB.AsInteger   := 189;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESPESA_COB.AsInteger   := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_IOF.AsInteger           := 215;
  fDMCadContas.cdsContas_RetornoQTD_VLR_IOF.AsInteger           := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_ABATIMENTO.AsInteger    := 228;
  fDMCadContas.cdsContas_RetornoQTD_VLR_ABATIMENTO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESCONTO.AsInteger      := 241;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESCONTO.AsInteger      := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_PAGO.AsInteger          := 254;
  fDMCadContas.cdsContas_RetornoQTD_VLR_PAGO.AsInteger          := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_JUROS_PAGO.AsInteger    := 267;
  fDMCadContas.cdsContas_RetornoQTD_VLR_JUROS_PAGO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_DT_LIQUIDACAO.AsInteger     := 111;;
  fDMCadContas.cdsContas_RetornoPOS_INST_CANCELADA.AsInteger    := 0;
  fDMCadContas.cdsContas_RetornoPOS_ERRO.AsInteger              := 81;
  fDMCadContas.cdsContas_RetornoQTD_ERRO.AsInteger              := 2;
  fDMCadContas.cdsContas_RetornoQTD_ERRO_CADASTRO.AsInteger     := 2;
  fDMCadContas.cdsContas_RetornoPOS_COD_LIQUIDACAO.AsInteger    := 81;
  fDMCadContas.cdsContas_RetornoQTD_COD_LIQUIDACAO.AsInteger    := 2;
  fDMCadContas.cdsContas_RetornoPOS_CARTEIRA.AsInteger          := 107;
  fDMCadContas.cdsContas_RetornoQTD_CARTEIRA.AsInteger          := 2;
  fDMCadContas.cdsContas_RetornoPOS_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoQTD_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoNUMCONTA_CEDENTE.AsString       := 'N';
end;

procedure TfrmCadContas_Ret.prc_Restaura_Caixa400;
begin
  fDMCadContas.cdsContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger  := 27;
  fDMCadContas.cdsContas_RetornoPOS_CODBANCO_RETORNO.AsInteger  := 77;
  fDMCadContas.cdsContas_RetornoPOS_NUM_NOTA.AsInteger          := 117;
  fDMCadContas.cdsContas_RetornoQTD_NUM_NOTA.AsInteger          := 10;
  fDMCadContas.cdsContas_RetornoPOS_NOSSO_NUMERO.AsInteger      := 63;
  fDMCadContas.cdsContas_RetornoQTD_NOSSO_NUMERO.AsInteger      := 11;
  fDMCadContas.cdsContas_RetornoPOS_ID_DUPLICATA.AsInteger      := 38;
  fDMCadContas.cdsContas_RetornoQTD_ID_DUPLICATA.AsInteger      := 25;
  fDMCadContas.cdsContas_RetornoPOS_OCORRENCIA.AsInteger        := 109;
  fDMCadContas.cdsContas_RetornoPOS_DT_OCORRENCIA.AsInteger     := 111;
  fDMCadContas.cdsContas_RetornoPOS_CONF_NOSSO_NUMERO.AsInteger := 0;
  fDMCadContas.cdsContas_RetornoQTD_CONF_NOSSO_NUMERO.AsInteger := 0;
  fDMCadContas.cdsContas_RetornoPOS_DT_VENCIMENTO.AsInteger     := 147;
  fDMCadContas.cdsContas_RetornoPOS_VLR_TITULO.AsInteger        := 153;
  fDMCadContas.cdsContas_RetornoQTD_VLR_TITULO.AsInteger        := 13;
  fDMCadContas.cdsContas_RetornoPOS_ESPECIE.AsInteger           := 174;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESPESA_COB.AsInteger   := 176;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESPESA_COB.AsInteger   := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_IOF.AsInteger           := 215;
  fDMCadContas.cdsContas_RetornoQTD_VLR_IOF.AsInteger           := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_ABATIMENTO.AsInteger    := 228;
  fDMCadContas.cdsContas_RetornoQTD_VLR_ABATIMENTO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESCONTO.AsInteger      := 241;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESCONTO.AsInteger      := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_PAGO.AsInteger          := 254;
  fDMCadContas.cdsContas_RetornoQTD_VLR_PAGO.AsInteger          := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_JUROS_PAGO.AsInteger    := 267;
  fDMCadContas.cdsContas_RetornoQTD_VLR_JUROS_PAGO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_DT_LIQUIDACAO.AsInteger     := 294;
  fDMCadContas.cdsContas_RetornoPOS_INST_CANCELADA.AsInteger    := 302;
  fDMCadContas.cdsContas_RetornoPOS_ERRO.AsInteger              := 80;
  fDMCadContas.cdsContas_RetornoQTD_ERRO.AsInteger              := 3;
  fDMCadContas.cdsContas_RetornoQTD_ERRO_CADASTRO.AsInteger     := 3;
  fDMCadContas.cdsContas_RetornoPOS_COD_LIQUIDACAO.AsInteger    := 189;
  fDMCadContas.cdsContas_RetornoQTD_COD_LIQUIDACAO.AsInteger    := 3;
  fDMCadContas.cdsContas_RetornoPOS_CARTEIRA.AsInteger          := 107;
  fDMCadContas.cdsContas_RetornoQTD_CARTEIRA.AsInteger          := 2;
  fDMCadContas.cdsContas_RetornoPOS_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoQTD_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoNUMCONTA_CEDENTE.AsString       := 'C';
end;

procedure TfrmCadContas_Ret.prc_Restaura_Itau400;
begin
  fDMCadContas.cdsContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger  := 33;
  fDMCadContas.cdsContas_RetornoPOS_CODBANCO_RETORNO.AsInteger  := 77;
  fDMCadContas.cdsContas_RetornoPOS_NUM_NOTA.AsInteger          := 117;
  fDMCadContas.cdsContas_RetornoQTD_NUM_NOTA.AsInteger          := 10;
  fDMCadContas.cdsContas_RetornoPOS_NOSSO_NUMERO.AsInteger      := 86;
  fDMCadContas.cdsContas_RetornoQTD_NOSSO_NUMERO.AsInteger      := 9;
  fDMCadContas.cdsContas_RetornoPOS_ID_DUPLICATA.AsInteger      := 38;
  fDMCadContas.cdsContas_RetornoQTD_ID_DUPLICATA.AsInteger      := 25;
  fDMCadContas.cdsContas_RetornoPOS_OCORRENCIA.AsInteger        := 109;
  fDMCadContas.cdsContas_RetornoPOS_DT_OCORRENCIA.AsInteger     := 111;
  fDMCadContas.cdsContas_RetornoPOS_CONF_NOSSO_NUMERO.AsInteger := 127;
  fDMCadContas.cdsContas_RetornoQTD_CONF_NOSSO_NUMERO.AsInteger := 8;
  fDMCadContas.cdsContas_RetornoPOS_DT_VENCIMENTO.AsInteger     := 147;
  fDMCadContas.cdsContas_RetornoPOS_VLR_TITULO.AsInteger        := 153;
  fDMCadContas.cdsContas_RetornoQTD_VLR_TITULO.AsInteger        := 13;
  fDMCadContas.cdsContas_RetornoPOS_ESPECIE.AsInteger           := 174;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESPESA_COB.AsInteger   := 176;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESPESA_COB.AsInteger   := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_IOF.AsInteger           := 215;
  fDMCadContas.cdsContas_RetornoQTD_VLR_IOF.AsInteger           := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_ABATIMENTO.AsInteger    := 228;
  fDMCadContas.cdsContas_RetornoQTD_VLR_ABATIMENTO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESCONTO.AsInteger      := 241;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESCONTO.AsInteger      := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_PAGO.AsInteger          := 254;
  fDMCadContas.cdsContas_RetornoQTD_VLR_PAGO.AsInteger          := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_JUROS_PAGO.AsInteger    := 267;
  fDMCadContas.cdsContas_RetornoQTD_VLR_JUROS_PAGO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_DT_LIQUIDACAO.AsInteger     := 296;
  fDMCadContas.cdsContas_RetornoPOS_INST_CANCELADA.AsInteger    := 302;
  fDMCadContas.cdsContas_RetornoPOS_ERRO.AsInteger              := 378;
  fDMCadContas.cdsContas_RetornoQTD_ERRO.AsInteger              := 8;
  fDMCadContas.cdsContas_RetornoQTD_ERRO_CADASTRO.AsInteger     := 2;
  fDMCadContas.cdsContas_RetornoPOS_COD_LIQUIDACAO.AsInteger    := 393;
  fDMCadContas.cdsContas_RetornoQTD_COD_LIQUIDACAO.AsInteger    := 2;
  fDMCadContas.cdsContas_RetornoPOS_CARTEIRA.AsInteger          := 83;
  fDMCadContas.cdsContas_RetornoQTD_CARTEIRA.AsInteger          := 3;
  fDMCadContas.cdsContas_RetornoPOS_NOME_CLIENTE.AsInteger      := 325;
  fDMCadContas.cdsContas_RetornoQTD_NOME_CLIENTE.AsInteger      := 30;
  fDMCadContas.cdsContas_RetornoQTD_ERRO_CADASTRO.AsInteger     := 2;
  fDMCadContas.cdsContas_RetornoNUMCONTA_CEDENTE.AsString       := 'N';
end;

procedure TfrmCadContas_Ret.btnRestaurarPadraoClick(Sender: TObject);
begin
  if MessageDlg('Deseja restaurar o padrão?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  prc_Restaurar_Padrao;
end;

procedure TfrmCadContas_Ret.prc_Restaura_Brasil400;
begin
  fDMCadContas.cdsContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger  := 32;
  fDMCadContas.cdsContas_RetornoPOS_CODBANCO_RETORNO.AsInteger  := 77;
  fDMCadContas.cdsContas_RetornoPOS_NUM_NOTA.AsInteger          := 117;
  fDMCadContas.cdsContas_RetornoQTD_NUM_NOTA.AsInteger          := 10;
  fDMCadContas.cdsContas_RetornoPOS_NOSSO_NUMERO.AsInteger      := 64;
  fDMCadContas.cdsContas_RetornoQTD_NOSSO_NUMERO.AsInteger      := 17;
  fDMCadContas.cdsContas_RetornoPOS_ID_DUPLICATA.AsInteger      := 39;
  fDMCadContas.cdsContas_RetornoQTD_ID_DUPLICATA.AsInteger      := 25;
  fDMCadContas.cdsContas_RetornoPOS_OCORRENCIA.AsInteger        := 109;
  fDMCadContas.cdsContas_RetornoPOS_DT_OCORRENCIA.AsInteger     := 111;
  fDMCadContas.cdsContas_RetornoPOS_CONF_NOSSO_NUMERO.AsInteger := 0;
  fDMCadContas.cdsContas_RetornoQTD_CONF_NOSSO_NUMERO.AsInteger := 0;
  fDMCadContas.cdsContas_RetornoPOS_DT_VENCIMENTO.AsInteger     := 147;
  fDMCadContas.cdsContas_RetornoPOS_VLR_TITULO.AsInteger        := 153;
  fDMCadContas.cdsContas_RetornoQTD_VLR_TITULO.AsInteger        := 13;
  fDMCadContas.cdsContas_RetornoPOS_ESPECIE.AsInteger           := 174;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESPESA_COB.AsInteger   := 189;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESPESA_COB.AsInteger   := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_IOF.AsInteger           := 215;
  fDMCadContas.cdsContas_RetornoQTD_VLR_IOF.AsInteger           := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_ABATIMENTO.AsInteger    := 228;
  fDMCadContas.cdsContas_RetornoQTD_VLR_ABATIMENTO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESCONTO.AsInteger      := 241;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESCONTO.AsInteger      := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_PAGO.AsInteger          := 254;
  fDMCadContas.cdsContas_RetornoQTD_VLR_PAGO.AsInteger          := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_JUROS_PAGO.AsInteger    := 267;
  fDMCadContas.cdsContas_RetornoQTD_VLR_JUROS_PAGO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_DT_LIQUIDACAO.AsInteger     := 111;;
  fDMCadContas.cdsContas_RetornoPOS_INST_CANCELADA.AsInteger    := 0;
  fDMCadContas.cdsContas_RetornoPOS_ERRO.AsInteger              := 87;
  fDMCadContas.cdsContas_RetornoQTD_ERRO.AsInteger              := 2;
  fDMCadContas.cdsContas_RetornoQTD_ERRO_CADASTRO.AsInteger     := 2;
  fDMCadContas.cdsContas_RetornoPOS_COD_LIQUIDACAO.AsInteger    := 393;
  fDMCadContas.cdsContas_RetornoQTD_COD_LIQUIDACAO.AsInteger    := 2;
  fDMCadContas.cdsContas_RetornoPOS_CARTEIRA.AsInteger          := 107;
  fDMCadContas.cdsContas_RetornoQTD_CARTEIRA.AsInteger          := 2;
  fDMCadContas.cdsContas_RetornoPOS_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoQTD_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoNUMCONTA_CEDENTE.AsString       := 'N';
end;

procedure TfrmCadContas_Ret.prc_Restaura_Banrisul400;
begin
  fDMCadContas.cdsContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger  := 27;
  fDMCadContas.cdsContas_RetornoPOS_CODBANCO_RETORNO.AsInteger  := 77;
  fDMCadContas.cdsContas_RetornoPOS_NUM_NOTA.AsInteger          := 117;
  fDMCadContas.cdsContas_RetornoQTD_NUM_NOTA.AsInteger          := 10;
  fDMCadContas.cdsContas_RetornoPOS_NOSSO_NUMERO.AsInteger      := 63;
  fDMCadContas.cdsContas_RetornoQTD_NOSSO_NUMERO.AsInteger      := 10;
  fDMCadContas.cdsContas_RetornoPOS_ID_DUPLICATA.AsInteger      := 38;
  fDMCadContas.cdsContas_RetornoQTD_ID_DUPLICATA.AsInteger      := 25;
  fDMCadContas.cdsContas_RetornoPOS_OCORRENCIA.AsInteger        := 109;
  fDMCadContas.cdsContas_RetornoPOS_DT_OCORRENCIA.AsInteger     := 111;
  fDMCadContas.cdsContas_RetornoPOS_CONF_NOSSO_NUMERO.AsInteger := 127;
  fDMCadContas.cdsContas_RetornoQTD_CONF_NOSSO_NUMERO.AsInteger := 10;
  fDMCadContas.cdsContas_RetornoPOS_DT_VENCIMENTO.AsInteger     := 147;
  fDMCadContas.cdsContas_RetornoPOS_VLR_TITULO.AsInteger        := 153;
  fDMCadContas.cdsContas_RetornoQTD_VLR_TITULO.AsInteger        := 13;
  fDMCadContas.cdsContas_RetornoPOS_ESPECIE.AsInteger           := 174;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESPESA_COB.AsInteger   := 176;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESPESA_COB.AsInteger   := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_IOF.AsInteger           := 0;
  fDMCadContas.cdsContas_RetornoQTD_VLR_IOF.AsInteger           := 0;
  fDMCadContas.cdsContas_RetornoPOS_VLR_ABATIMENTO.AsInteger    := 228;
  fDMCadContas.cdsContas_RetornoQTD_VLR_ABATIMENTO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESCONTO.AsInteger      := 241;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESCONTO.AsInteger      := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_PAGO.AsInteger          := 254;
  fDMCadContas.cdsContas_RetornoQTD_VLR_PAGO.AsInteger          := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_JUROS_PAGO.AsInteger    := 267;
  fDMCadContas.cdsContas_RetornoQTD_VLR_JUROS_PAGO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_DT_LIQUIDACAO.AsInteger     := 296;
  fDMCadContas.cdsContas_RetornoPOS_INST_CANCELADA.AsInteger    := 0;
  fDMCadContas.cdsContas_RetornoPOS_ERRO.AsInteger              := 383;
  fDMCadContas.cdsContas_RetornoQTD_ERRO.AsInteger              := 10;
  fDMCadContas.cdsContas_RetornoQTD_ERRO_CADASTRO.AsInteger     := 2;
  fDMCadContas.cdsContas_RetornoPOS_COD_LIQUIDACAO.AsInteger    := 0;
  fDMCadContas.cdsContas_RetornoQTD_COD_LIQUIDACAO.AsInteger    := 0;
  fDMCadContas.cdsContas_RetornoPOS_CARTEIRA.AsInteger          := 108;
  fDMCadContas.cdsContas_RetornoQTD_CARTEIRA.AsInteger          := 1;
  fDMCadContas.cdsContas_RetornoPOS_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoQTD_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoNUMCONTA_CEDENTE.AsString       := 'N';
end;

procedure TfrmCadContas_Ret.prc_Restaura_HSBC400;
begin
  fDMCadContas.cdsContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger  := 34;
  fDMCadContas.cdsContas_RetornoPOS_CODBANCO_RETORNO.AsInteger  := 77;
  fDMCadContas.cdsContas_RetornoPOS_NUM_NOTA.AsInteger          := 117;
  fDMCadContas.cdsContas_RetornoQTD_NUM_NOTA.AsInteger          := 10;
  fDMCadContas.cdsContas_RetornoPOS_NOSSO_NUMERO.AsInteger      := 63;
  fDMCadContas.cdsContas_RetornoQTD_NOSSO_NUMERO.AsInteger      := 11;
  fDMCadContas.cdsContas_RetornoPOS_ID_DUPLICATA.AsInteger      := 38;
  fDMCadContas.cdsContas_RetornoQTD_ID_DUPLICATA.AsInteger      := 25;
  fDMCadContas.cdsContas_RetornoPOS_OCORRENCIA.AsInteger        := 109;
  fDMCadContas.cdsContas_RetornoPOS_DT_OCORRENCIA.AsInteger     := 111;
  fDMCadContas.cdsContas_RetornoPOS_CONF_NOSSO_NUMERO.AsInteger := 127;
  fDMCadContas.cdsContas_RetornoQTD_CONF_NOSSO_NUMERO.AsInteger := 11;
  fDMCadContas.cdsContas_RetornoPOS_DT_VENCIMENTO.AsInteger     := 147;
  fDMCadContas.cdsContas_RetornoPOS_VLR_TITULO.AsInteger        := 153;
  fDMCadContas.cdsContas_RetornoQTD_VLR_TITULO.AsInteger        := 13;
  fDMCadContas.cdsContas_RetornoPOS_ESPECIE.AsInteger           := 174;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESPESA_COB.AsInteger   := 176;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESPESA_COB.AsInteger   := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_IOF.AsInteger           := 0;
  fDMCadContas.cdsContas_RetornoQTD_VLR_IOF.AsInteger           := 0;
  fDMCadContas.cdsContas_RetornoPOS_VLR_ABATIMENTO.AsInteger    := 228;
  fDMCadContas.cdsContas_RetornoQTD_VLR_ABATIMENTO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_DESCONTO.AsInteger      := 241;
  fDMCadContas.cdsContas_RetornoQTD_VLR_DESCONTO.AsInteger      := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_PAGO.AsInteger          := 254;
  fDMCadContas.cdsContas_RetornoQTD_VLR_PAGO.AsInteger          := 13;
  fDMCadContas.cdsContas_RetornoPOS_VLR_JUROS_PAGO.AsInteger    := 267;
  fDMCadContas.cdsContas_RetornoQTD_VLR_JUROS_PAGO.AsInteger    := 13;
  fDMCadContas.cdsContas_RetornoPOS_DT_LIQUIDACAO.AsInteger     := 111;
  fDMCadContas.cdsContas_RetornoPOS_INST_CANCELADA.AsInteger    := 0;
  fDMCadContas.cdsContas_RetornoPOS_ERRO.AsInteger              := 302;
  fDMCadContas.cdsContas_RetornoQTD_ERRO.AsInteger              := 2;
  fDMCadContas.cdsContas_RetornoQTD_ERRO_CADASTRO.AsInteger     := 2;
  fDMCadContas.cdsContas_RetornoPOS_COD_LIQUIDACAO.AsInteger    := 302;
  fDMCadContas.cdsContas_RetornoQTD_COD_LIQUIDACAO.AsInteger    := 2;
  fDMCadContas.cdsContas_RetornoPOS_CARTEIRA.AsInteger          := 108;
  fDMCadContas.cdsContas_RetornoQTD_CARTEIRA.AsInteger          := 1;
  fDMCadContas.cdsContas_RetornoPOS_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoQTD_NOME_CLIENTE.AsInteger      := 0;
  fDMCadContas.cdsContas_RetornoNUMCONTA_CEDENTE.AsString       := 'N';
end;

procedure TfrmCadContas_Ret.btnCancelarClick(Sender: TObject);
begin
  if fDMCadContas.cdsContas_Retorno.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Deseja cancelar este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    fDMCadContas.cdsContas_Retorno.Cancel;
  end;
  Close;
end;

procedure TfrmCadContas_Ret.btnConfirmarClick(Sender: TObject);
begin
  fDMCadContas.cdsContas_Retorno.Post;
  Close;
end;

end.
