unit uRelDanfe_NFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLBarcode, jpeg, UDMNFCe;

type
  TfRelDanfe_NFCe = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    lblEndFilial2: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLImage2: TRLImage;
    RLBand5: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel21: TRLLabel;
    RLBand7: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLBand8: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel37: TRLLabel;
    RLDraw13: TRLDraw;
    RLBand10: TRLBand;
    RLPanel3: TRLPanel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel10: TRLLabel;
    RLBand11: TRLBand;
    RLPanel4: TRLPanel;
    RLLabel17: TRLLabel;
    RLDBText10: TRLDBText;
    RLBand12: TRLBand;
    RLMemo1: TRLMemo;
    RLDBText11: TRLDBText;
    RLLabel38: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand13: TRLBand;
    RLLabel29: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand6: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    lblEndFilial1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand9: TRLBand;
    lblObs: TRLLabel;
    RLBand14: TRLBand;
    RLDraw1: TRLDraw;
    RLMemo2: TRLMemo;
    RLDBMemo1: TRLDBMemo;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vCod: String;
    vData: TDateTime;
    vVlr_Desconto_Total: Real;
  public
    { Public declarations }
    //fDmCupomFiscal: TDmCupomFiscal;
    fDmNFCe: TDmNFCe;
    vTipo_Via: String;
  end;

var
  fRelDanfe_NFCe: TfRelDanfe_NFCe;

implementation

uses DB, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfRelDanfe_NFCe.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDmNFCe.cdsCupomFiscalPESSOA_FIL.AsString = 'J' then
    RLLabel1.Caption := 'CNPJ:'
  else
    RLLabel1.Caption := 'CPF:';
  lblEndFilial1.Caption := fDmNFCe.cdsCupomFiscalENDERECO_FIL2.AsString + 'CEP: ' +
                           fDmNFCe.cdsCupomFiscalCEP_FIL.AsString; 
  lblEndFilial2.Caption := fDmNFCe.cdsCupomFiscalBAIRRO_FIL.AsString + ' - ' +
                           fDmNFCe.cdsCupomFiscalCIDADE_FIL.AsString + ' - ' +
                           fDmNFCe.cdsCupomFiscalUF_FIL.AsString;

  RLLabel12.Caption := FormatDateTime('YYYY-MM-DD',fDmNFCe.cdsCupomFiscalDTEMISSAO.AsDateTime) +  ' ' +
                       FormatDateTime('hh:nn:ss',fDmNFCe.cdsCupomFiscalHREMISSAO.AsDateTime);
  if trim(vTipo_Via) = '' then
    vTipo_Via := 'Via Consumidor';
  RLLabel12.Caption := RLLabel12.Caption + ' - ' + vTipo_Via;
end;

procedure TfRelDanfe_NFCe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDanfe_NFCe.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmNFCe);
end;

procedure TfRelDanfe_NFCe.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDocAux: String;
begin
  vDocAux := Monta_Numero(fDmNFCe.cdsCupomFiscalCPF.AsString,0);
  PrintIt := (trim(vDocAux) <> '');  //SOMENTE IMPRIME NOME SE TIVER CPF/CNPJ
  if not PrintIt then
    exit;
  RLLabel3.Caption  := '';
  RLLabel18.Caption := Copy(fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString,0,35);
  if trim(vDocAux) <> '' then
    RLLabel3.Caption := ' CPF/CNPJ: ' + fDmNFCe.cdsCupomFiscalCPF.AsString;

  //22/01/2017
  {if fDmNFCe.cdsCupomFiscalTIPO_ATENDIMENTO.AsInteger <> 4 then
  begin
    lblObs.Caption := Copy(fDmNFCe.cdsCupomFiscalCLIENTE_OBS.AsString,0,30);
    lblObs.Visible := (trim(lblObs.Caption) <> '');
    case lblObs.Visible of
      True: RLBand3.Height := 55;
      False: RLBand3.Height := 39;
    end;
  end
  else}
    lblObs.Visible := False;
end;

procedure TfRelDanfe_NFCe.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDocAux: String;
begin
  vDocAux := Monta_Numero(fDmNFCe.cdsCupomFiscalCPF.AsString,0);
  //iffDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString
  PrintIt := (trim(vDocAux) = '') and (trim(fdmNfCe.cdsCupomFiscalCLIENTE_OBS.AsString) = '');
  if not PrintIt then
    exit;
end;

procedure TfRelDanfe_NFCe.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTexto : String;
begin
  RLLabel38.Caption := 'Vlr. Aprox.Tributos R$ ' + FormatFloat('###,###,##0.00',fDmNFCe.cdsCupomFiscalVLR_TRIBUTO.AsFloat);
  if trim(fDmNFCe.cdsCupomFiscalFONTE_TRIBUTOS.AsString) <> '' then
    RLLabel38.Caption := RLLabel38.Caption + '  Fonte: ' + fDmNFCe.cdsCupomFiscalFONTE_TRIBUTOS.AsString;
  RLLabel10.Caption := 'Vendedor: ' + fDmNFCe.cdsCupomFiscalNOME_VENDEDOR.AsString;
end;

procedure TfRelDanfe_NFCe.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDmNFCe.cdsCupomFiscalNFEAMBIENTE.AsString = '2');
end;

procedure TfRelDanfe_NFCe.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDmNFCe.cdsCupomFiscalCANCELADO.AsString = 'S');
end;

procedure TfRelDanfe_NFCe.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDmNFCe.cdsCupomFiscalNFEDENEGADA.AsString = 'S');
end;

procedure TfRelDanfe_NFCe.FormCreate(Sender: TObject);
begin
  vVlr_Desconto_Total := 0;
end;

procedure TfRelDanfe_NFCe.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vVlr_Desconto_Total := vVlr_Desconto_Total + fDmNFCe.mItensNFeVlrDesconto.AsFloat;
end;

procedure TfRelDanfe_NFCe.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel5.Caption := IntToStr(fDmNFCe.mItensNFe.RecordCount);

  RLLabel32.Caption := FormatFloat('0.00',fDmNFCe.cdsCupomFiscalVLR_TOTAL.AsFloat);
  RLLabel20.Caption := FormatFloat('0.00',fDmNFCe.cdsCupomFiscalVLR_OUTROS.AsFloat);

  RLLabel36.Caption := FormatFloat('0.00',fDmNFCe.cdsCupomFiscalVLR_TOTAL.AsFloat + vVlr_Desconto_Total);
  RLLabel33.Caption := FormatFloat('0.00',vVlr_Desconto_Total);

  RLLabel30.Caption := fDmNFCe.cdsCupomFiscalNOME_FORMAPAGAMENTO.AsString;
  RLLabel7.Caption  := FormatFloat('0.00',fDmNFCe.cdsCupomFiscalVLR_RECEBIDO.AsFloat);
  RLLabel16.Caption := FormatFloat('0.00',fDmNFCe.cdsCupomFiscalVLR_TROCO.AsFloat);
end;

procedure TfRelDanfe_NFCe.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTexto : String;  
begin
  //20/01/2017
  //vTexto := Monta_Numero(fDmNFCe.cdsCupomFiscalCPF.AsString,0);
  //if copy(vTexto,1,7) = '0000000' then
  //  vTexto := '';
  vTexto := '';
  if trim(fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString) <> '' then
    vTexto := 'Fone: ' + fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString;
  RLMemo2.Lines.Clear;
  if (trim(fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString) <> '') and (UpperCase(trim(fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString)) <> 'CONSUMIDOR') then
    RLMemo2.Lines.Add('Consumidor: ' + fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString + '  ' + vTexto)
  else
  if trim(vTexto) <> '' then
    RLMemo2.Lines.Add(vTexto);
  if fDmNFCe.cdsCupomFiscalTIPO_ATENDIMENTO.AsInteger = 4 then
  begin
    RLMemo2.Lines.Add('');
    RLMemo2.Lines.Add('NFC-e em operação com entrega em domicílio');
    RLMemo2.Lines.Add('');
    if (fDmNFCe.cdsCupomFiscalID_CLIENTE.AsInteger > 0) and (fDmNFCe.cdsCupomFiscalID_CLIENTE.AsInteger <> fDmNFCe.qParametrosID_CLIENTE_CONSUMIDOR.AsInteger) then
    begin
      fDmNFCe.qCliente.Close;
      fDmNFCe.qCliente.ParamByName('CODIGO').AsInteger := fDmNFCe.cdsCupomFiscalID_CLIENTE.AsInteger;
      fDmNFCe.qCliente.Open;
      vTexto := 'End: ' + fDmNFCe.qClienteENDERECO.AsString + ',' + fDmNFCe.qClienteNUM_END.AsString;
      if trim(fDmNFCe.qClienteCOMPLEMENTO_END.AsString) <> '' then
        vTexto := vTexto + ' - ' + fDmNFCe.qClienteCOMPLEMENTO_END.AsString;
      RLMemo2.Lines.Add(vTexto);
      RLMemo2.Lines.Add('Bairro: ' + fDmNFCe.qClienteBAIRRO.AsString + '  Cep:' + fDmNFCe.qClienteCEP.AsString);
      RLMemo2.Lines.Add('Cid: ' + fDmNFCe.qClienteCIDADE.AsString);
      if trim(fDmNFCe.qClienteTELEFONE1.AsString) <> '' then
        RLMemo2.Lines.Add('Fone: ' + fDmNFCe.qClienteDDDFONE1.AsString + ' ' + fDmNFCe.qClienteTELEFONE1.AsString)
      else
      if trim(fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString) <> '' then
        RLMemo2.Lines.Add('Fone: ' + fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString);

      if fDmNFCe.cdsCupomFiscalID_TRANSPORTADORA.AsInteger > 0 then
      begin
        RLMemo2.Lines.Add('');
        fDmNFCe.qTransp.Close;
        fDmNFCe.qTransp.ParamByName('CODIGO').AsInteger := fDmNFCe.cdsCupomFiscalID_TRANSPORTADORA.AsInteger;
        fDmNFCe.qTransp.Open;
        RLMemo2.Lines.Add('Transp: ' + fDmNFCe.qTranspNOME.AsString);
      end;
    end
    else
    begin
      fDmNFCe.qCupomFiscal_Cli.Close;
      fDmNFCe.qCupomFiscal_Cli.ParamByName('ID').AsInteger := fDmNFCe.cdsCupomFiscalID.AsInteger;
      fDmNFCe.qCupomFiscal_Cli.Open;
      if trim(fDmNFCe.qCupomFiscal_CliENDERECO.AsString) <> '' then
      begin
        vTexto := 'End: ' + fDmNFCe.qCupomFiscal_CliENDERECO.AsString + ',' + fDmNFCe.qCupomFiscal_CliNUM_END.AsString;
        if trim(fDmNFCe.qCupomFiscal_CliCOMPLEMENTO.AsString) <> '' then
          vTexto := vTexto + ' - ' + fDmNFCe.qCupomFiscal_CliCOMPLEMENTO.AsString;
        RLMemo2.Lines.Add(vTexto);
      end;
      vTexto := '';
      if trim(fDmNFCe.qCupomFiscal_CliBAIRRO.AsString) <> '' then
        vTexto := 'Bairro: ' + fDmNFCe.qCupomFiscal_CliBAIRRO.AsString;
      if trim(fDmNFCe.qCupomFiscal_CliCEP.AsString) <> '' then
      begin
        if trim(vTexto) <> '' then
          vTexto := vTexto + '  ';
        vTexto := vTexto + 'CEP: ' + fDmNFCe.qCupomFiscal_CliCEP.AsString;
      end;
      if trim(vTexto) <> '' then
        RLMemo2.Lines.Add(vTexto);
      if trim(fDmNFCe.qCupomFiscal_CliNOME_CIDADE.AsString) <> '' then
        RLMemo2.Lines.Add('Cid: ' + fDmNFCe.qCupomFiscal_CliNOME_CIDADE.AsString);
      if trim(fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString) <> '' then
        RLMemo2.Lines.Add('Fone: ' + fDmNFCe.cdsCupomFiscalCLIENTE_FONE.AsString);
      if fDmNFCe.cdsCupomFiscalID_TRANSPORTADORA.AsInteger > 0 then
      begin
        RLMemo2.Lines.Add('');
        fDmNFCe.qTransp.Close;
        fDmNFCe.qTransp.ParamByName('CODIGO').AsInteger := fDmNFCe.cdsCupomFiscalID_TRANSPORTADORA.AsInteger;
        fDmNFCe.qTransp.Open;
        RLMemo2.Lines.Add('Transp: ' + fDmNFCe.qTranspNOME.AsString);
      end;
    end;
    fDmNFCe.qCupomFiscal_Cli.Close;
    fDmNFCe.qCupomFiscal_Cli.ParamByName('ID').AsInteger := fDmNFCe.cdsCupomFiscalID.AsInteger;
    fDmNFCe.qCupomFiscal_Cli.Open;
    vTexto := '';
    {if fDmNFCe.qCupomFiscal_CliTIPO_FRETE.AsString = '1' then
      vTexto := 'Frete: Emitente '
    else
    if fDmNFCe.qCupomFiscal_CliTIPO_FRETE.AsString = '2' then
      vTexto := 'Frete: Destinatário '
    else
    if fDmNFCe.qCupomFiscal_CliTIPO_FRETE.AsString = '3' then
      vTexto := 'Frete: Terceiros '
    else
    if fDmNFCe.qCupomFiscal_CliTIPO_FRETE.AsString = '9' then
      vTexto := 'Frete: Terceiros ';}
    if trim(fDmNFCe.qCupomFiscal_CliPLACA.AsString) <> '' then
    begin
      vTexto := vTexto + ' Placa: ' + fDmNFCe.qCupomFiscal_CliPLACA.AsString;
      if trim(fDmNFCe.qCupomFiscal_CliUF_TRANSP.AsString) <> '' then
        vTexto := vTexto + ' UF:' + fDmNFCe.qCupomFiscal_CliUF_TRANSP.AsString;
    end;
    if trim(vTexto) <> '' then
      RLMemo2.Lines.Add(vTexto);
  end;

  if trim(fDmNFCe.cdsCupomFiscalCLIENTE_OBS.AsString) <> '' then
  begin
    RLMemo2.Lines.Add('');
    RLMemo2.Lines.Add(' ' + fDmNFCe.cdsCupomFiscalCLIENTE_OBS.AsString);
  end;
  if trim(RLMemo2.Lines.Text) <> '' then
    RLMemo2.Lines.Text := 'Obs: ' + RLMemo2.Lines.Text;

  //27/01/2017
  if fDMNFCe.qParametrosUSA_OBS_PEDIDO_NOTA.AsString = 'S' then
  begin
    vTexto := '';
    fDMNFCe.mPedAux.First;
    while not fDMNFCe.mPedAux.Eof do
    begin
      fDMNFCe.qPedido.Close;
      fDMNFCe.qPedido.ParamByName('ID').AsInteger := fDMNFCe.mPedAuxID_Pedido.AsInteger;
      fDMNFCe.qPedido.Open;
      if trim(fDMNFCe.qPedidoOBS_NOTA.AsString) <> '' then
        vTexto := vTexto + '(OC: ' + fDMNFCe.qPedidoPEDIDO_CLIENTE.AsString + ' obs: ' + fDMNFCe.qPedidoOBS_NOTA.AsString + ')';
      fDMNFCe.mPedAux.Next;
    end;
    if trim(vTexto) <> '' then
      RLMemo2.Lines.Add(vTexto);
      //Grava_DadosAdicionaisNFe(vTexto,0);
  end;
  //********************

  PrintIt := (trim(RLMemo2.Lines.Text) <> '');

  {if (trim(fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString) <> '') and (trim(vTexto) = '') and
  begin
    PrintIt := True;
    RLMemo2.Lines.Add('Consumidor: ' + fDmNFCe.cdsCupomFiscalCLIENTE_NOME.AsString);
  end
  else
    PrintIt := False;}
  //**********************
end;

procedure TfRelDanfe_NFCe.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := False;
end;

end.
