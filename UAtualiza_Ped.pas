unit UAtualiza_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ComCtrls, StdCtrls, Buttons;

type
  TfrmAtualiza_Ped = class(TForm)
    sdsPedido: TSQLDataSet;
    sdsPedidoID: TIntegerField;
    sdsPedidoFILIAL: TIntegerField;
    sdsPedidoDTEMISSAO: TDateField;
    sdsPedidoPEDIDO_CLIENTE: TStringField;
    sdsPedidoID_CLIENTE: TIntegerField;
    sdsPedidoID_TRANSPORTADORA: TIntegerField;
    sdsPedidoID_REDESPACHO: TIntegerField;
    sdsPedidoID_CONDPGTO: TIntegerField;
    sdsPedidoID_VENDEDOR: TIntegerField;
    sdsPedidoID_CFOP: TIntegerField;
    sdsPedidoTIPO_FRETE: TStringField;
    sdsPedidoPERC_COMISSAO: TFloatField;
    sdsPedidoQTD: TFloatField;
    sdsPedidoQTD_RESTANTE: TFloatField;
    sdsPedidoQTD_CANCELADO: TFloatField;
    sdsPedidoQTD_FATURADO: TFloatField;
    sdsPedidoVLR_TOTAL: TFloatField;
    sdsPedidoVLR_DESCONTO: TFloatField;
    sdsPedidoCANCELADO: TStringField;
    sdsPedidoDOLAR: TStringField;
    sdsPedidoDTENTREGA: TDateField;
    sdsPedidoPERC_DESCONTO: TFloatField;
    sdsPedidoOBS: TMemoField;
    sdsPedidoVLR_FRETE: TFloatField;
    sdsPedidoBASE_ICMS: TFloatField;
    sdsPedidoVLR_ICMS: TFloatField;
    sdsPedidoBASE_ICMSTRANSF: TFloatField;
    sdsPedidoPERC_TRANSF: TFloatField;
    sdsPedidoVLR_TRANSF: TFloatField;
    sdsPedidoVLR_IPI: TFloatField;
    sdsPedidoBASE_ICMSSIMPLES: TFloatField;
    sdsPedidoVLR_ICMSSIMPLES: TFloatField;
    sdsPedidoPERC_ICMSSIMPLES: TFloatField;
    sdsPedidoBASE_ICMSSUBST: TFloatField;
    sdsPedidoVLR_ICMSSUBST: TFloatField;
    sdsPedidoID_CONFIG_CFOP: TIntegerField;
    sdsPedidoTIPO_DESCONTO: TStringField;
    sdsPedidoLOCALENTREGA: TStringField;
    sdsPedidoVLR_ITENS: TFloatField;
    sdsPedidoPESOBRUTO: TFloatField;
    sdsPedidoPESOLIQUIDO: TFloatField;
    sdsPedidoCALCULARICMSSOBREIPI: TStringField;
    sdsPedidoID_REGIMETRIB: TIntegerField;
    sdsPedidoSIMPLES_FILIAL: TStringField;
    sdsPedidoDESCRICAO_DESC: TStringField;
    sdsPedidoIMP_OC_NOTA: TStringField;
    sdsPedidoNOME_CLIENTE: TStringField;
    sdsPedidoTIPO_REG: TStringField;
    sdsPedidoVALIDADE: TStringField;
    sdsPedidoNUM_ORCAMENTO: TIntegerField;
    sdsPedidoNUM_PEDIDO: TIntegerField;
    sdsPedidoID_OPERACAO_NOTA: TIntegerField;
    sdsPedidoFINALIDADE: TStringField;
    sdsPedidoVLR_ADIANTAMENTO: TFloatField;
    sdsPedidoFATURADO: TStringField;
    sdsPedidoID_SOLICITANTE: TIntegerField;
    sdsPedidoID_PROJETO: TIntegerField;
    sdsPedidoAMOSTRA_GRATIS: TStringField;
    sdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoID: TIntegerField;
    cdsPedidoFILIAL: TIntegerField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoPEDIDO_CLIENTE: TStringField;
    cdsPedidoID_CLIENTE: TIntegerField;
    cdsPedidoID_TRANSPORTADORA: TIntegerField;
    cdsPedidoID_REDESPACHO: TIntegerField;
    cdsPedidoID_CONDPGTO: TIntegerField;
    cdsPedidoID_VENDEDOR: TIntegerField;
    cdsPedidoID_CFOP: TIntegerField;
    cdsPedidoTIPO_FRETE: TStringField;
    cdsPedidoPERC_COMISSAO: TFloatField;
    cdsPedidoQTD: TFloatField;
    cdsPedidoQTD_RESTANTE: TFloatField;
    cdsPedidoQTD_CANCELADO: TFloatField;
    cdsPedidoQTD_FATURADO: TFloatField;
    cdsPedidoVLR_TOTAL: TFloatField;
    cdsPedidoVLR_DESCONTO: TFloatField;
    cdsPedidoCANCELADO: TStringField;
    cdsPedidoDOLAR: TStringField;
    cdsPedidoDTENTREGA: TDateField;
    cdsPedidoPERC_DESCONTO: TFloatField;
    cdsPedidoOBS: TMemoField;
    cdsPedidoVLR_FRETE: TFloatField;
    cdsPedidoBASE_ICMS: TFloatField;
    cdsPedidoVLR_ICMS: TFloatField;
    cdsPedidoBASE_ICMSTRANSF: TFloatField;
    cdsPedidoPERC_TRANSF: TFloatField;
    cdsPedidoVLR_TRANSF: TFloatField;
    cdsPedidoVLR_IPI: TFloatField;
    cdsPedidoBASE_ICMSSIMPLES: TFloatField;
    cdsPedidoVLR_ICMSSIMPLES: TFloatField;
    cdsPedidoPERC_ICMSSIMPLES: TFloatField;
    cdsPedidoBASE_ICMSSUBST: TFloatField;
    cdsPedidoVLR_ICMSSUBST: TFloatField;
    cdsPedidoID_CONFIG_CFOP: TIntegerField;
    cdsPedidoTIPO_DESCONTO: TStringField;
    cdsPedidoLOCALENTREGA: TStringField;
    cdsPedidoVLR_ITENS: TFloatField;
    cdsPedidoPESOBRUTO: TFloatField;
    cdsPedidoPESOLIQUIDO: TFloatField;
    cdsPedidoCALCULARICMSSOBREIPI: TStringField;
    cdsPedidoID_REGIMETRIB: TIntegerField;
    cdsPedidoSIMPLES_FILIAL: TStringField;
    cdsPedidoDESCRICAO_DESC: TStringField;
    cdsPedidoIMP_OC_NOTA: TStringField;
    cdsPedidoNOME_CLIENTE: TStringField;
    cdsPedidoTIPO_REG: TStringField;
    cdsPedidoVALIDADE: TStringField;
    cdsPedidoNUM_ORCAMENTO: TIntegerField;
    cdsPedidoNUM_PEDIDO: TIntegerField;
    cdsPedidoID_OPERACAO_NOTA: TIntegerField;
    cdsPedidoFINALIDADE: TStringField;
    cdsPedidoVLR_ADIANTAMENTO: TFloatField;
    cdsPedidoFATURADO: TStringField;
    cdsPedidoID_SOLICITANTE: TIntegerField;
    cdsPedidoID_PROJETO: TIntegerField;
    cdsPedidoAMOSTRA_GRATIS: TStringField;
    cdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField;
    dsPedido: TDataSource;
    dsPedido_Mestre: TDataSource;
    sdsPedido_Itens: TSQLDataSet;
    sdsPedido_ItensID: TIntegerField;
    sdsPedido_ItensITEM: TIntegerField;
    sdsPedido_ItensID_PRODUTO: TIntegerField;
    sdsPedido_ItensTAMANHO: TStringField;
    sdsPedido_ItensQTD: TFloatField;
    sdsPedido_ItensQTD_FATURADO: TFloatField;
    sdsPedido_ItensQTD_RESTANTE: TFloatField;
    sdsPedido_ItensQTD_CANCELADO: TFloatField;
    sdsPedido_ItensVLR_DESCONTO: TFloatField;
    sdsPedido_ItensCANCELADO: TStringField;
    sdsPedido_ItensDTENTREGA: TDateField;
    sdsPedido_ItensFATURADO: TStringField;
    sdsPedido_ItensDTFATURADO: TDateField;
    sdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField;
    sdsPedido_ItensTIPO: TStringField;
    sdsPedido_ItensUNIDADE: TStringField;
    sdsPedido_ItensNUMOS: TStringField;
    sdsPedido_ItensPERC_DESCONTO: TFloatField;
    sdsPedido_ItensVLR_FRETE: TFloatField;
    sdsPedido_ItensBASE_ICMS: TFloatField;
    sdsPedido_ItensVLR_ICMS: TFloatField;
    sdsPedido_ItensBASE_ICMSTRANSF: TFloatField;
    sdsPedido_ItensPERC_TRANSF: TFloatField;
    sdsPedido_ItensVLR_TRANSF: TFloatField;
    sdsPedido_ItensVLR_IPI: TFloatField;
    sdsPedido_ItensBASE_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensVLR_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensPERC_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensBASE_ICMSSUBST: TFloatField;
    sdsPedido_ItensVLR_ICMSSUBST: TFloatField;
    sdsPedido_ItensVLR_DESCONTORATEIO: TFloatField;
    sdsPedido_ItensID_CFOP: TIntegerField;
    sdsPedido_ItensID_CSTIPI: TIntegerField;
    sdsPedido_ItensID_CSTICMS: TIntegerField;
    sdsPedido_ItensPERC_ICMS: TFloatField;
    sdsPedido_ItensPERC_IPI: TFloatField;
    sdsPedido_ItensREFERENCIA: TStringField;
    sdsPedido_ItensNOMEPRODUTO: TStringField;
    sdsPedido_ItensOBS_COMPLEMENTAR: TStringField;
    sdsPedido_ItensCALCULARICMSSOBREIPI: TStringField;
    sdsPedido_ItensVLR_UNITARIO: TFloatField;
    sdsPedido_ItensID_CONFIG_CFOP: TIntegerField;
    sdsPedido_ItensCOD_IPI: TStringField;
    sdsPedido_ItensCOD_CST: TStringField;
    sdsPedido_ItensCODCFOP: TStringField;
    sdsPedido_ItensVLR_TOTAL: TFloatField;
    sdsPedido_ItensQTD_AFATURAR: TFloatField;
    sdsPedido_ItensID_VARIACAO: TIntegerField;
    sdsPedido_ItensOBS: TMemoField;
    sdsPedido_ItensPERC_TRIBICMS: TFloatField;
    sdsPedido_ItensID_ATELIER: TIntegerField;
    sdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField;
    sdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField;
    sdsPedido_ItensDT_ENVIO_ATELIER: TDateField;
    sdsPedido_ItensDT_RETORNO_ATELIER: TDateField;
    sdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField;
    sdsPedido_ItensDT_PAGTO_ATELIER: TDateField;
    sdsPedido_ItensAPROVADO_ORC: TStringField;
    sdsPedido_ItensMOTIVO_NAO_APROV: TMemoField;
    sdsPedido_ItensDTAPROVADO_NAO: TDateField;
    sdsPedido_ItensID_ORCAMENTO: TIntegerField;
    sdsPedido_ItensITEM_ORCAMENTO: TIntegerField;
    sdsPedido_ItensQTD_LIBERADA: TFloatField;
    sdsPedido_ItensQTD_PRODUZIDA: TFloatField;
    sdsPedido_ItensGERAR_LOTE: TStringField;
    sdsPedido_ItensCARIMBO: TStringField;
    cdsPedido_Itens: TClientDataSet;
    cdsPedido_ItensID: TIntegerField;
    cdsPedido_ItensITEM: TIntegerField;
    cdsPedido_ItensID_PRODUTO: TIntegerField;
    cdsPedido_ItensTAMANHO: TStringField;
    cdsPedido_ItensQTD: TFloatField;
    cdsPedido_ItensQTD_FATURADO: TFloatField;
    cdsPedido_ItensQTD_RESTANTE: TFloatField;
    cdsPedido_ItensQTD_CANCELADO: TFloatField;
    cdsPedido_ItensVLR_DESCONTO: TFloatField;
    cdsPedido_ItensCANCELADO: TStringField;
    cdsPedido_ItensDTENTREGA: TDateField;
    cdsPedido_ItensFATURADO: TStringField;
    cdsPedido_ItensDTFATURADO: TDateField;
    cdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField;
    cdsPedido_ItensTIPO: TStringField;
    cdsPedido_ItensUNIDADE: TStringField;
    cdsPedido_ItensNUMOS: TStringField;
    cdsPedido_ItensPERC_DESCONTO: TFloatField;
    cdsPedido_ItensVLR_FRETE: TFloatField;
    cdsPedido_ItensBASE_ICMS: TFloatField;
    cdsPedido_ItensVLR_ICMS: TFloatField;
    cdsPedido_ItensBASE_ICMSTRANSF: TFloatField;
    cdsPedido_ItensPERC_TRANSF: TFloatField;
    cdsPedido_ItensVLR_TRANSF: TFloatField;
    cdsPedido_ItensVLR_IPI: TFloatField;
    cdsPedido_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensPERC_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensBASE_ICMSSUBST: TFloatField;
    cdsPedido_ItensVLR_ICMSSUBST: TFloatField;
    cdsPedido_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsPedido_ItensID_CFOP: TIntegerField;
    cdsPedido_ItensID_CSTIPI: TIntegerField;
    cdsPedido_ItensID_CSTICMS: TIntegerField;
    cdsPedido_ItensPERC_ICMS: TFloatField;
    cdsPedido_ItensPERC_IPI: TFloatField;
    cdsPedido_ItensREFERENCIA: TStringField;
    cdsPedido_ItensNOMEPRODUTO: TStringField;
    cdsPedido_ItensOBS_COMPLEMENTAR: TStringField;
    cdsPedido_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsPedido_ItensVLR_UNITARIO: TFloatField;
    cdsPedido_ItensID_CONFIG_CFOP: TIntegerField;
    cdsPedido_ItensCODCFOP: TStringField;
    cdsPedido_ItensCOD_CST: TStringField;
    cdsPedido_ItensCOD_IPI: TStringField;
    cdsPedido_ItensVLR_TOTAL: TFloatField;
    cdsPedido_ItensQTD_AFATURAR: TFloatField;
    cdsPedido_ItensID_VARIACAO: TIntegerField;
    cdsPedido_ItensOBS: TMemoField;
    cdsPedido_ItensPERC_TRIBICMS: TFloatField;
    cdsPedido_ItensID_ATELIER: TIntegerField;
    cdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField;
    cdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField;
    cdsPedido_ItensDT_ENVIO_ATELIER: TDateField;
    cdsPedido_ItensDT_RETORNO_ATELIER: TDateField;
    cdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField;
    cdsPedido_ItensDT_PAGTO_ATELIER: TDateField;
    cdsPedido_ItensAPROVADO_ORC: TStringField;
    cdsPedido_ItensMOTIVO_NAO_APROV: TMemoField;
    cdsPedido_ItensDTAPROVADO_NAO: TDateField;
    cdsPedido_ItensID_ORCAMENTO: TIntegerField;
    cdsPedido_ItensITEM_ORCAMENTO: TIntegerField;
    cdsPedido_ItensQTD_LIBERADA: TFloatField;
    cdsPedido_ItensQTD_PRODUZIDA: TFloatField;
    cdsPedido_ItensGERAR_LOTE: TStringField;
    cdsPedido_ItensCARIMBO: TStringField;
    dsPedido_Itens: TDataSource;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    cdsPedidosdsPedido_Itens: TDataSetField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    sdsPedido_ItensID_COR: TFMTBCDField;
    cdsPedido_ItensID_COR: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualiza_Ped: TfrmAtualiza_Ped;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TfrmAtualiza_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAtualiza_Ped.BitBtn1Click(Sender: TObject);
var
  vFlag: Boolean;
begin
  cdsPedido.Close;
  cdsPedido.Open;
  cdsPedido.First;
  ProgressBar1.Max      := cdsPedido.RecordCount;
  ProgressBar1.Position := 0;
  while not cdsPedido.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vFlag := False;
    cdsPedido_Itens.First;
    while not cdsPedido_Itens.Eof do
    begin
      if ((StrToFloat(FormatFloat('0.0000',cdsPedido_ItensQTD_RESTANTE.AsFloat)) < 0) and
         (StrToFloat(FormatFloat('0.0000',cdsPedido_ItensQTD.AsFloat)) >= StrToFloat(FormatFloat('0.0000',cdsPedido_ItensQTD_FATURADO.AsFloat)))) or
         (StrToFloat(FormatFloat('0.0000',cdsPedido_ItensQTD_RESTANTE.AsFloat)) = 0) then
      begin
        cdsPedido_Itens.Edit;
        cdsPedido_ItensQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.0000',0));
        cdsPedido_ItensQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.0000',cdsPedido_ItensQTD_FATURADO.AsFloat));
        cdsPedido_Itens.Post;
        cdsPedido_Itens.ApplyUpdates(0);
        vFlag := True;
      end;
      cdsPedido_Itens.Next;
    end;
    if cdsPedidoFATURADO.AsString = 'S' then
      vFlag := False;
    if vFlag then
    begin
      sdsPrc_Atualiza_Status_Ped.Close;
      sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := cdsPedidoID.AsInteger;
      sdsPrc_Atualiza_Status_Ped.ExecSQL;
    end;
    cdsPedido.Next;
  end;
  //cdsPedido.ApplyUpdates(0);
  ShowMessage('Atualização concluída!');
end;

end.
