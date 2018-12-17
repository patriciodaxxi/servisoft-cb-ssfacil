unit URelDanfe_NFSe_SL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, RLBarcode, jpeg, UDMCadNotaServico;

type
  TfRelDANFE_NFSe_SL = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLImage1: TRLImage;
    RLDraw50: TRLDraw;
    RLLabel64: TRLLabel;
    RLDraw19: TRLDraw;
    RLDBText3: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel73: TRLLabel;
    RLDBText49: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText63: TRLDBText;
    RLLabel100: TRLLabel;
    RLDBText67: TRLDBText;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    RLDraw2: TRLDraw;
    RLBand2: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand3: TRLBand;
    RLDraw34: TRLDraw;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLMemo2: TRLMemo;
    RLBand4: TRLBand;
    RLDraw36: TRLDraw;
    RLPanel1: TRLPanel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLPanel2: TRLPanel;
    RLLabel36: TRLLabel;
    RLDraw37: TRLDraw;
    RLPanel3: TRLPanel;
    RLLabel37: TRLLabel;
    RLDraw17: TRLDraw;
    RLPanel4: TRLPanel;
    RLLabel38: TRLLabel;
    RLPanel5: TRLPanel;
    RLLabel23: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel44: TRLLabel;
    RLDraw18: TRLDraw;
    RLPanel6: TRLPanel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel1: TRLLabel;
    RLDraw21: TRLDraw;
    RLPanel7: TRLPanel;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel7: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel60: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel65: TRLLabel;
    RLDBText28: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel26: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLPanel8: TRLPanel;
    RLLabel17: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText5: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }

    function Replace(Str, Ant, Novo: string): string;

  public
    { Public declarations }
    fDMCadNotaServico : TDMCadNotaServico;

    vAmbiente : String;

  end;

var
  fRelDANFE_NFSe_SL: TfRelDANFE_NFSe_SL;

implementation

uses rsDBUtils, uUtilPadrao;


{$R *.dfm}

procedure TfRelDANFE_NFSe_SL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDANFE_NFSe_SL.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDiscriminacao : WideString;
  vTexto1 : String;
  vTexto2 : String;
  i : Integer;
begin
  RLMemo1.Lines.Clear;

  fDMCadNotaServico.cdsNotaServico_Imp.Close;
  fDMCadNotaServico.sdsNotaServico_Imp.CommandText := fDMCadNotaServico.ctNotaServico_Imp + ' WHERE NS.ID = ' +
                                                      fDMCadNotaServico.mImpNotaID_Nota.AsString;
  fDMCadNotaServico.cdsNotaServico_Imp.Open;

  fDMCadNotaServico.cdsFilial.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpFILIAL.AsInteger,[loCaseInsensitive]);

  if fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger <= 0 then
  begin
    RLLabel36.Caption    := 'Número RPS';
    RLDBText52.DataField := 'NUMRPS';
    vTexto1 := Replace(fDMCadNotaServico.cdsNotaServico_ImpDTRECEBIMENTO_RET.AsString,'T',' ');
    RLLabel30.Caption := vTexto1;
  end
  else
  begin
    RLLabel36.Caption    := 'Número Nota';
    RLDBText52.DataField := 'NUMNOTA';
    vTexto1 := Replace(fDMCadNotaServico.cdsNotaServico_ImpDT_EMISSAO_RET.AsString,'T',' ');
    RLLabel30.Caption  := vTexto1;
  end;

  RLLabel42.Caption := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_FIL.AsString + ' / ' + fDMCadNotaServico.cdsNotaServico_ImpUF_FIL.AsString;
  RLLabel43.Caption := fDMCadNotaServico.cdsNotaServico_ImpENDERECO_FIL.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END_FIL.AsString) <> '' then
    RLLabel43.Caption := RLLabel43.Caption + ' ' + fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END_FIL.AsString;
  RLLabel43.Caption := RLLabel43.Caption + ' - ' + fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_FIL.AsString;

  RLLabel1.Caption := fDMCadNotaServico.cdsNotaServico_ImpENDERECO_CLI.AsString + ',' + fDMCadNotaServico.cdsNotaServico_ImpNUM_END_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END.AsString) <> '' then
    RLLabel1.Caption := RLLabel1.Caption + ' ' + fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END.AsString;
  RLLabel1.Caption := RLLabel1.Caption + ' - ' + fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_CLI.AsString;

  RLLabel64.Caption := 'Prefeitura Municipal de ' + fDMCadNotaServico.cdsFilialCIDADE.AsString + ' - ' + fDMCadNotaServico.cdsFilialUF.AsString;

  RLLabel29.Caption := fDMCadNotaServico.cdsNotaServico_ImpEMAIL_FIL.AsString;

  if FileExists(fDMCadNotaServico.cdsFilialEND_LOGO_PREFEITURA.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadNotaServico.cdsFilialEND_LOGO_PREFEITURA.AsString)
  else
    RLImage1.Picture := nil;

  RLLabel100.Caption := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_CLI.AsString + ' / ' + fDMCadNotaServico.cdsNotaServico_ImpUF_CLI.AsString;

  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Itens.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.First;
  while not fDMCadNotaServico.cdsNotaServico_Imp_Itens.Eof do
  begin
    vTexto1 := '';
    if (fDMCadNotaServico.cdsNotaServico_Imp_ItensSOMAR_DIMINUIR.AsString = 'D') or (fDMCadNotaServico.cdsNotaServico_Imp_ItensSOMAR_DIMINUIR.AsString = 'd') or (fDMCadNotaServico.cdsNotaServico_Imp_ItensSOMAR_DIMINUIR.AsString = '-') then
      vTexto1 := '(-) '
    else
    if (fDMCadNotaServico.cdsNotaServico_Imp_ItensSOMAR_DIMINUIR.AsString = 'S') or (fDMCadNotaServico.cdsNotaServico_Imp_ItensSOMAR_DIMINUIR.AsString = 's') or (fDMCadNotaServico.cdsNotaServico_Imp_ItensSOMAR_DIMINUIR.AsString = '+') then
      vTexto1 := '(+) ';

    vTexto2 := fDMCadNotaServico.cdsNotaServico_Imp_ItensNOME_SERVICO_INT.AsString;
    if (fDMCadNotaServico.cdsParametrosIMP_MESANO_REF_NOITEM_NFSE.AsString = 'S') and (fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger > 0) then
      vTexto2 := vTexto2 + ' (Ref: ' + FormatFloat('00',fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger) + '/' + fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsString + ')';
    vDiscriminacao := Formatar_Campo(vTexto1 + vTexto2,70);

    //Foi alterado dia 29/01/2014
    //vDiscriminacao := Formatar_Campo(vTexto1 + fDMCadNotaServico.cdsNotaServico_Imp_ItensNOME_SERVICO_INT.AsString,70);

    vDiscriminacao := vDiscriminacao + '  R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_TOTAL.AsFloat);

    RLMemo1.Lines.Add(vDiscriminacao);

    //17/05/2017  SulCromo
    if (fDMCadNotaServico.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') and (trim(fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_PED.AsString) <> '') then
      RLMemo1.Lines.Add(fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_PED.AsString);
    //*****************

    fDMCadNotaServico.cdsNotaServico_Imp_Itens.Next;
  end;
  vDiscriminacao := '';
  //Mês/Ano referente
  if (fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsInteger > 0) and (fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger > 0) and
     (fDMCadNotaServico.cdsParametrosIMP_MESANO_REF_NOITEM_NFSE.AsString <> 'S') then
    vDiscriminacao := vDiscriminacao + '   (Mês/Ano Ref.: ' + FormatFloat('00',fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger) + '/' + fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsString + ')';

  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Parc.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;

  //Foi incluido dia 10/05/2013 a pedido da Shala devido a Engenhar não imprimir para Órgão Público
  if (fDMCadNotaServico.cdsCondPgto.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpID_CONDPGTO.AsInteger,[loCaseInsensitive])) and
     (fDMCadNotaServico.cdsCondPgtoIMPRIMIR_NFSE.AsString = 'S') then
  begin
    if fDMCadNotaServico.cdsNotaServico_IMPTIPO_PRAZO.AsString = 'V' then
      vDiscriminacao := vDiscriminacao + '(Pagamento a Vista)'
    else
    begin
      {fDMCadNotaServico.cdsNotaServico_Imp_Parc.Close;
      fDMCadNotaServico.sdsNotaServico_Imp_Parc.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
      fDMCadNotaServico.cdsNotaServico_Imp_Parc.Open;
      fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;}
      vTexto1 := '';
      while not fDMCadNotaServico.cdsNotaServico_Imp_Parc.Eof do
      begin
        if trim(vTexto1) = '' then
          vTexto1 := '(Vencimento: '
        else
          vTexto1 := vTexto1 + '   -  ';
        vTexto1 := vTexto1 + fDMCadNotaServico.cdsNotaServico_Imp_ParcDTVENCIMENTO.AsString + ' R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_Imp_ParcVLR_VENCIMENTO.AsFloat);
        fDMCadNotaServico.cdsNotaServico_Imp_Parc.Next;
      end;
      if vTexto1 <> '' then
        vDiscriminacao :=  vDiscriminacao + vTexto1 + ')';
    end;
  end;
  //Incluido dia 29/04/2014 para a Prestto
  if (fDMCadNotaServico.cdsNotaServico_ImpID_TIPO_COBRANCA.AsInteger > 0) and (fDMCadNotaServico.cdsTipoCobranca.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpID_TIPO_COBRANCA.AsInteger,[loCaseInsensitive])) then
  begin
    if (fDMCadNotaServico.cdsTipoCobrancaDEPOSITO.AsString = 'S') and (fDMCadNotaServico.cdsContas.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpID_CONTA.AsInteger,[loCaseInsensitive])) then
    begin
      vTexto1 := '(Deposito: Age: ' + fDMCadNotaServico.cdsContasAGENCIA.AsString + fDMCadNotaServico.cdsContasDIG_AGENCIA.AsString
               + ', Conta: ' + fDMCadNotaServico.cdsContasNUMCONTA.AsString + fDMCadNotaServico.cdsContasDIG_CONTA.AsString
               + ', ' + fDMCadNotaServico.cdsContasNOME.AsString
               + ')';
      vDiscriminacao :=  vDiscriminacao + vTexto1;
    end;
  end;
  if trim(vDiscriminacao) <> '' then
  begin
    RLMemo1.Lines.Add('');
    RLMemo1.Lines.Add(vDiscriminacao);
  end;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value) <> '' then
  begin
    RLMemo1.Lines.Add('');
    RLMemo1.Lines.Add(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value);
  end;


  if RLMemo1.Lines.Count < 10 then
  begin
    i := RLMemo1.Lines.Count;
    while i <= 10 do
    begin
      i := i + 1;
      RLMemo1.Lines.Add('');
    end;
  end;
end;

function TfRelDANFE_NFSe_SL.Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

procedure TfRelDANFE_NFSe_SL.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vTexto1 : String;  
begin
  RLMemo2.Lines.Clear;
  if fDMCadNotaServico.cdsFilialSIMPLES.AsString = 'S' then
  begin
    if trim(fDMCadNotaServico.cdsParametrosOBS_SIMPLES.AsString) <> '' then
      RLMemo2.Lines.Add(' (' + fDMCadNotaServico.cdsParametrosOBS_SIMPLES.Value + ')');
  end;
  vTexto1 := fDMCadNotaServico.fnc_Montar_Obs_Retencao;
  if trim(vTexto1) <> '' then
    RLMemo2.Lines.Add(vTexto1);

  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO.AsFloat)) > 0 then
  begin
    if fDMCadNotaServico.cdsParametrosIMP_TIPO_TRIBUTOS_SERVICO.AsString = 'T' then
    begin
      vTexto1 := '(Vlr.aproximado total de tributos federais, estaduais, e municipais cfe. disposto na lei 12.741/12. R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO.AsFloat);
      vTexto1 := vTexto1 + '  (' + FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_TRIBUTO.AsFloat) + '%)';
      if (fDMCadNotaServico.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I') and (fDMCadNotaServico.cdsNotaServico_ImpFONTE_TRIBUTO.AsString = '') then
        vTexto1 := vTexto1 + ' Fonte IBPT)'
      else
        vTexto1 := vTexto1 + 'Fonte: ' + fDMCadNotaServico.cdsNotaServico_ImpFONTE_TRIBUTO.AsString + ')';
    end
    else
    begin
      vTexto1 := '(Vlr.aproximado tributos R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_FEDERAL.AsFloat);
      if fDMCadNotaServico.cdsParametrosIMP_PERC_TRIB_SERVICO.AsString = 'S' then
        vTexto1 := vTexto1 + ' %' + FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_TRIBUTO_FEDERAL.AsFloat);
      vTexto1 := vTexto1 + ' Federal  R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_ESTADUAL.AsFloat);
      if fDMCadNotaServico.cdsParametrosIMP_PERC_TRIB_SERVICO.AsString = 'S' then
        vTexto1 := vTexto1 + ' %' + FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_TRIBUTO_ESTADUAL.AsFloat);
      vTexto1 := vTexto1 + ' Estadual  R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL.AsFloat);
      if fDMCadNotaServico.cdsParametrosIMP_PERC_TRIB_SERVICO.AsString = 'S' then
        vTexto1 := vTexto1 + ' %' + FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_TRIBUTO_MUNICIPAL.AsFloat);
      vTexto1 := vTexto1 + ' Municipal   R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_TRIBUTO.AsFloat);
      if fDMCadNotaServico.cdsParametrosIMP_PERC_TRIB_SERVICO.AsString = 'S' then
        vTexto1 := vTexto1 + ' %' + FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpPERC_TRIBUTO.AsFloat);
      vTexto1 := vTexto1 + ' Total  lei 12.741/12';
      if (fDMCadNotaServico.cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I') and (fDMCadNotaServico.cdsNotaServico_ImpFONTE_TRIBUTO.AsString = '') then
        vTexto1 := vTexto1 + ' Fonte IBPT)'
      else
        vTexto1 := vTexto1 + ' Fonte: ' + fDMCadNotaServico.cdsNotaServico_ImpFONTE_TRIBUTO.AsString + ')';
    end;
    RLMemo2.Lines.Add(vTexto1);
  end;
end;

procedure TfRelDANFE_NFSe_SL.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadNotaServico.cdsNotaServico_ImpSTATUS_RPS.AsString = '2');
end;

procedure TfRelDANFE_NFSe_SL.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaServico);
end;

procedure TfRelDANFE_NFSe_SL.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vVlrRetencao : Real;  
begin
  vVlrRetencao := 0;
  if fDMCadNotaServico.cdsNotaServico_ImpRETEM_PISCOFINS.AsString = 'S' then
    vVlrRetencao := StrToFloat(FormatFloat('0.00',vVlrRetencao + fDMCadNotaServico.cdsNotaServico_ImpVLR_PIS.AsFloat + fDMCadNotaServico.cdsNotaServico_ImpVLR_COFINS.AsFloat));
  if fDMCadNotaServico.cdsNotaServico_ImpRETEM_CSLL.AsString = 'S' then
    vVlrRetencao := StrToFloat(FormatFloat('0.00',vVlrRetencao + fDMCadNotaServico.cdsNotaServico_ImpVLR_CSLL.AsFloat));
  if fDMCadNotaServico.cdsNotaServico_ImpRETEM_INSS.AsString = 'S' then
    vVlrRetencao := StrToFloat(FormatFloat('0.00',vVlrRetencao + fDMCadNotaServico.cdsNotaServico_ImpVLR_INSS.AsFloat));
  vVlrRetencao := StrToFloat(FormatFloat('0.00',vVlrRetencao + fDMCadNotaServico.cdsNotaServico_ImpVLR_IR.AsFloat));
  vVlrRetencao := StrToFloat(FormatFloat('0.00',vVlrRetencao + fDMCadNotaServico.cdsNotaServico_ImpVLR_OUTRAS_RETENCOES.AsFloat));
  RLLabel58.Caption := FormatFloat('###,###,##0.00',vVlrRetencao);
end;

procedure TfRelDANFE_NFSe_SL.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadNotaServico.qParametros_SerUSA_NATUREZA_CID_NFSE.AsString = 'S' then
  begin
    if fDMCadNotaServico.cdsNotaServico_ImpID_CIDADE_TRIB.AsInteger > 0 then
      RLDBText26.DataField := 'CIDADE_TRIB'
    else
      RLDBText26.DataField := 'CIDADE_FIL';
  end
  else
  begin
    if (fDMCadNotaServico.cdsNotaServico_ImpCOD_NATUREZA.AsString = '2') or (fDMCadNotaServico.cdsNotaServico_ImpCOD_NATUREZA.AsString = '5') or
       (fDMCadNotaServico.cdsNotaServico_ImpCOD_NATUREZA.AsString = '6') then
      RLDBText26.DataField := 'CIDADE_FIL'
    else
      RLDBText26.DataField := 'CIDADE_CLI';
  end;
end;

end.
