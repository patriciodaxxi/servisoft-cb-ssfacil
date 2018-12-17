unit URelDanfe_NFSe_Poa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, RLBarcode, jpeg, UDMCadNotaServico;

type
  TfRelDanfe_NFSe_Poa = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLDraw19: TRLDraw;
    RLDBText3: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel73: TRLLabel;
    RLDraw53: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText56: TRLDBText;
    RLLabel83: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText53: TRLDBText;
    RLDBText64: TRLDBText;
    RLLabel102: TRLLabel;
    RLDBText65: TRLDBText;
    RLLabel103: TRLLabel;
    RLDBText67: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    RLDraw2: TRLDraw;
    RLBand2: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw15: TRLDraw;
    RLLabel17: TRLLabel;
    RLBand3: TRLBand;
    RLDraw33: TRLDraw;
    RLLabel27: TRLLabel;
    RLDBText26: TRLDBText;
    RLImage3: TRLImage;
    RLLabel29: TRLLabel;
    RLMemo2: TRLMemo;
    RLBand4: TRLBand;
    RLDraw36: TRLDraw;
    RLPanel1: TRLPanel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBText6: TRLDBText;
    RLDraw34: TRLDraw;
    RLBand5: TRLBand;
    RLDraw37: TRLDraw;
    RLImage4: TRLImage;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel30: TRLLabel;
    RLBand6: TRLBand;
    RLLabel31: TRLLabel;
    RLMemo3: TRLMemo;
    RLBand8: TRLBand;
    RLLabel32: TRLLabel;
    RLMemo4: TRLMemo;
    RLDraw17: TRLDraw;
    RLLabel39: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel49: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel50: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel51: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel53: TRLLabel;
    RLDBText35: TRLDBText;
    RLMemo5: TRLMemo;
    RLLabel36: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    function Replace(Str, Ant, Novo: string): string;

  public
    { Public declarations }
    fDMCadNotaServico : TDMCadNotaServico;

    vAmbiente : String;

  end;

var
  fRelDanfe_NFSe_Poa: TfRelDanfe_NFSe_Poa;

implementation

uses rsDBUtils, uUtilPadrao;


{$R *.dfm}

procedure TfRelDanfe_NFSe_Poa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDanfe_NFSe_Poa.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDiscriminacao : WideString;
  vTexto1 : String;
  i : Integer;
  vTexto2 : String;
begin
  //Porto Alegre

  fDMCadNotaServico.cdsNotaServico_Imp.Close;
  fDMCadNotaServico.sdsNotaServico_Imp.CommandText := fDMCadNotaServico.ctNotaServico_Imp + ' WHERE NS.ID = ' +  fDMCadNotaServico.mImpNotaID_Nota.AsString;
  fDMCadNotaServico.cdsNotaServico_Imp.Open;

  fDMCadNotaServico.cdsFilial.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpFILIAL.AsInteger,[loCaseInsensitive]);

  if fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger > 0 then
  begin
    vTexto2 := fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsString;
    RLLabel36.Caption := copy(vTexto2,1,4) + ' / ';
    vTexto2 := copy(vTexto2,5,Length(vTexto2) - 4);
    i := StrToInt(vTexto2);
    RLLabel36.Caption := RLLabel36.Caption + IntToStr(i);
  end
  else
    RLLabel36.Caption := 'RPS: ' + fDMCadNotaServico.cdsNotaServico_ImpNUMRPS.AsString;

  if fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger > 0 then
    RLLabel40.Caption := fDMCadNotaServico.cdsNotaServico_ImpDT_EMISSAO_RET.AsString
  else
    RLLabel40.Caption := fDMCadNotaServico.cdsNotaServico_ImpDTEMISSAO.AsString;
  RLLabel23.Caption := fDMCadNotaServico.cdsNotaServico_ImpENDERECO_CLI.AsString + ', ' + fDMCadNotaServico.cdsNotaServico_ImpNUM_END_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END.AsString) <> '' then
    RLLabel23.Caption := RLLabel23.Caption + ', ' + fDMCadNotaServico.cdsNotaServico_ImpCOMPLEMENTO_END.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_CLI.AsString) <> '' then
    RLLabel23.Caption := RLLabel23.Caption + ', ' + fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_CLI.AsString;
  RLLabel23.Caption := RLLabel23.Caption + ' - Cep: ' + fDMCadNotaServico.cdsNotaServico_ImpCEP_CLI.AsString;

  RLMemo1.Lines.Clear;
  RLLabel69.Caption := 'Bairro: '+ fDMCadNotaServico.cdsNotaServico_ImpBAIRRO_FIL.AsString + '  CEP: ' + fDMCadNotaServico.cdsNotaServico_ImpCEP_FIL.AsString;

  //RLLabel70.Caption := fDMCadNotaServico.cdsNotaServico_ImpCEP_FIL.AsString;

  //RLLabel28.Caption := fDMCadNotaServico.cdsNotaServico_ImpINSCMUNICIPAL_FIL.AsString;

  if FileExists(fDMCadNotaServico.cdsFilialENDLOGO_NFSE.AsString) then
    RLImage3.Picture.LoadFromFile(fDMCadNotaServico.cdsFilialENDLOGO_NFSE.AsString)
  else
    RLImage3.Picture := nil;

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
    if (fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsInteger > 0) and (fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger > 0) and
       (fDMCadNotaServico.cdsParametrosIMP_MESANO_REF_NOITEM_NFSE.AsString = 'S') then
      vTexto2 := vTexto2 + ' (Ref: ' + FormatFloat('00',fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger) + '/' + fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsString + ')';
    //Foi alterado dia 29/01/2014
    //vDiscriminacao := Formatar_Campo(vTexto1 + fDMCadNotaServico.cdsNotaServico_Imp_ItensNOME_SERVICO_INT.AsString,70);
    vDiscriminacao := Formatar_Campo(vTexto1 + vTexto2,70);

    vDiscriminacao := vDiscriminacao + '  R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_Imp_ItensVLR_TOTAL.AsFloat);
    RLMemo1.Lines.Add(vDiscriminacao);
    fDMCadNotaServico.cdsNotaServico_Imp_Itens.Next;
  end;
  vDiscriminacao := '';
  //Mês/Ano referente
  if (fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsInteger > 0) and (fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger > 0) and
     (fDMCadNotaServico.cdsParametrosIMP_MESANO_REF_NOITEM_NFSE.AsString <> 'S') then
    vDiscriminacao := vDiscriminacao + '   (Mês/Ano Ref.: ' + FormatFloat('00',fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger) + '/' + fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsString + ')'
  else
    vDiscriminacao := vDiscriminacao + '   ';

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
  //*******************
  if trim(vDiscriminacao) <> '' then
  begin
    RLMemo1.Lines.Add('');
    RLMemo1.Lines.Add(vDiscriminacao);
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

function TfRelDanfe_NFSe_Poa.Replace(Str, Ant, Novo: string): string;
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

procedure TfRelDanfe_NFSe_Poa.RLBand3BeforePrint(Sender: TObject;
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

  if trim(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value) <> '' then
    RLMemo2.Lines.Add(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value);

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

procedure TfRelDanfe_NFSe_Poa.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadNotaServico.cdsNotaServico_ImpSTATUS_RPS.AsString = '2');
end;

procedure TfRelDanfe_NFSe_Poa.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaServico);
end;

procedure TfRelDanfe_NFSe_Poa.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo3.Lines.Clear;
  RLMemo3.Lines.Text := fDMCadNotaServico.cdsNotaServico_ImpCOD_ATIVIDADE_CID.AsString + ' / '
                      + fDMCadNotaServico.cdsNotaServico_ImpNOME_ATIVIDADE_CID.AsString;
end;

procedure TfRelDanfe_NFSe_Poa.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo4.Lines.Clear;
  RLMemo4.Lines.Text := fDMCadNotaServico.cdsNotaServico_ImpCOD_SERVICO.AsString + ' / '
                      + fDMCadNotaServico.cdsNotaServico_ImpNOME_SERVICO.AsString;
end;

procedure TfRelDanfe_NFSe_Poa.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo5.Lines.Clear;
  RLMemo5.Lines.Text := fDMCadNotaServico.fnc_Montar_Obs_Retencao;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.vVlr_Retencao_Federal)) > 0 then
    RLLabel7.Caption   := 'R$ ' + FormatFloat('0.00',fDMCadNotaServico.vVlr_Retencao_Federal)
  else
    RLLabel7.Caption   := 'R$ ' + FormatFloat('0.00',0);
end;

end.
