unit URelDanfe_NFSe_CB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, DB, RLBarcode, jpeg,
  UDMCadNotaServico;

type
  TfRelDanfe_NFSe_CB = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw50: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel67: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel73: TRLLabel;
    RLDBText52: TRLDBText;
    RLDraw53: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText56: TRLDBText;
    RLLabel83: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel80: TRLLabel;
    RLDBText54: TRLDBText;
    RLLabel94: TRLLabel;
    RLDBText62: TRLDBText;
    RLLabel97: TRLLabel;
    RLDBText63: TRLDBText;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLDBText64: TRLDBText;
    RLLabel102: TRLLabel;
    RLDBText65: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText26: TRLDBText;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLDraw34: TRLDraw;
    RLDraw37: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLMemo3: TRLMemo;
    RLSubDetail2: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLImage1: TRLImage;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    Dup1: TRLLabel;
    Dup2: TRLLabel;
    Dup3: TRLLabel;
    Dup4: TRLLabel;
    Dup5: TRLLabel;
    Vct1: TRLLabel;
    Vct2: TRLLabel;
    Vct3: TRLLabel;
    Vct4: TRLLabel;
    Vct5: TRLLabel;
    Vlr1: TRLLabel;
    Vlr2: TRLLabel;
    Vlr3: TRLLabel;
    Vlr4: TRLLabel;
    Vlr5: TRLLabel;
    Dup6: TRLLabel;
    Vct6: TRLLabel;
    Vlr6: TRLLabel;
    RLLabel31: TRLLabel;
    RLMemo1: TRLMemo;
    RLImage2: TRLImage;
    RLLabel33: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    rlInscMun: TRLLabel;
    RLDBText7: TRLDBText;
    rlCNPJ: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel44: TRLLabel;
    RLBand1: TRLBand;
    RLDraw10: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLMemo2: TRLMemo;
    RLLabel32: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel45: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel46: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBText30: TRLDBText;
    RLDraw11: TRLDraw;
    RLDBText31: TRLDBText;
    RLLabel38: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDBText32: TRLDBText;
    rllbRetencao1: TRLLabel;
    rllbRetencao2: TRLLabel;
    rllbRetencao3: TRLLabel;
    rllbRetencao4: TRLLabel;
    rllbRetencao5: TRLLabel;
    rllbRetencao6: TRLLabel;
    RLLabel51: TRLLabel;
    RLDBText20: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    function Replace(Str, Ant, Novo: string): string;

  public
    { Public declarations }
    fDMCadNotaServico: TDMCadNotaServico;

    vAmbiente: String;

  end;

var
  fRelDanfe_NFSe_CB: TfRelDanfe_NFSe_CB;

implementation

uses rsDBUtils, uUtilPadrao;


{$R *.dfm}

procedure TfRelDanfe_NFSe_CB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDanfe_NFSe_CB.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDiscriminacao: WideString;
  vTexto1: String;
  i: Integer;
  vTexto2: String;
begin
  fDMCadNotaServico.cdsNotaServico_Imp.Close;
  fDMCadNotaServico.sdsNotaServico_Imp.CommandText := fDMCadNotaServico.ctNotaServico_Imp + ' WHERE NS.ID = ' +
                                                      fDMCadNotaServico.mImpNotaID_Nota.AsString;
  fDMCadNotaServico.cdsNotaServico_Imp.Open;

  fDMCadNotaServico.cdsFilial.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpFILIAL.AsInteger,[loCaseInsensitive]);

  RLLabel70.Caption := fDMCadNotaServico.cdsNotaServico_ImpCEP_FIL.AsString + '   - Fone: (' + fDMCadNotaServico.cdsNotaServico_ImpDDD_FIL.AsString + ') '
                     + fDMCadNotaServico.cdsNotaServico_ImpFONE_FIL.AsString
                     + '     - ' + fDMCadNotaServico.cdsNotaServico_ImpCIDADE_FIL.AsString + ' - ' + fDMCadNotaServico.cdsNotaServico_ImpUF_FIL.AsString;

  RLLabel64.Caption := 'Município de ' + fDMCadNotaServico.cdsFilialCIDADE.AsString + ' / ' + fDMCadNotaServico.cdsFilialUF.AsString;

  if fDMCadNotaServico.cdsNotaServico_ImpSIMPLES_FILIAL.AsString = 'S' then
    RLLabel27.Caption := 'Sim'
  else
    RLLabel27.Caption := 'Não';

  //Dados do Cliente
  RLLabel100.Caption := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_CLI.AsString + ' - ' + fDMCadNotaServico.cdsNotaServico_ImpUF_CLI.AsString
                      + '      Pais: ' + fDMCadNotaServico.cdsNotaServico_ImpNOME_PAIS_CLI.AsString;
  if trim(fDMCadNotaServico.cdsNotaServico_ImpCIDADE_TRIB.AsString) = '' then
    RLLabel43.Caption  := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_FIL.AsString + '-' + fDMCadNotaServico.cdsNotaServico_ImpUF_FIL.AsString
  else
    RLLabel43.Caption  := fDMCadNotaServico.cdsNotaServico_ImpCIDADE_TRIB.AsString + '-' + fDMCadNotaServico.cdsNotaServico_ImpUF_TRIB.AsString;
  //**************


  RLMemo3.Lines.Text := 'Deve para Emitente desta Nota Fiscal de Serviços Eletrônica a importância indicada no campo Valor Líquido da Nota '
                      + ' de ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_LIQUIDO_NFSE.AsFloat) + ' correspondente aos serviços descritos adiante.';


  //if FileExists(fDMCadNotaServico.cdsFilialEND_LOGO_PREFEITURA.AsString) then
  //  RLImage1.Picture.LoadFromFile(fDMCadNotaServico.cdsFilialEND_LOGO_PREFEITURA.AsString)
  //else
   // RLImage1.Picture := nil;
  //RLImage2.Picture := nil;

  if FileExists(fDMCadNotaServico.cdsFilialENDLOGO_NFSE.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadNotaServico.cdsFilialENDLOGO_NFSE.AsString)
  else
    RLImage1.Picture := nil;

  fDMCadNotaServico.mOSAux.EmptyDataSet;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Itens.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Itens.First;
  while not fDMCadNotaServico.cdsNotaServico_Imp_Itens.Eof do
  begin
    //08/07/2015
    if fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_SIMPLES.AsInteger > 0 then
    begin
      if not fDMCadNotaServico.mOSAux.FindKey([fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_SIMPLES.AsInteger]) then
      begin
        fDMCadNotaServico.mOSAux.Insert;
        fDMCadNotaServico.mOSAuxID.AsInteger := fDMCadNotaServico.cdsNotaServico_Imp_ItensNUM_OS_SIMPLES.AsInteger;
        fDMCadNotaServico.mOSAux.Post;
      end;
    end;

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
    fDMCadNotaServico.cdsNotaServico_Imp_Itens.Next;
  end;
  vDiscriminacao := '';
  //Mês/Ano referente
  if (fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsInteger > 0) and (fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger > 0) and
     (fDMCadNotaServico.cdsParametrosIMP_MESANO_REF_NOITEM_NFSE.AsString <> 'S') then
    vDiscriminacao := vDiscriminacao + '   (Mês/Ano Ref.: ' + FormatFloat('00',fDMCadNotaServico.cdsNotaServico_ImpMES_REF.AsInteger) + '/' + fDMCadNotaServico.cdsNotaServico_ImpANO_REF.AsString + ')'
  else
    vDiscriminacao := vDiscriminacao + '   ';
  //Foi incluido dia 10/05/2013 a pedido da Shala devido a Engenhar não imprimir para Órgão Público
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Close;
  fDMCadNotaServico.sdsNotaServico_Imp_Parc.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.Open;
  fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;

  if (fDMCadNotaServico.cdsCondPgto.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpID_CONDPGTO.AsInteger,[loCaseInsensitive])) and
     (fDMCadNotaServico.cdsCondPgtoIMPRIMIR_NFSE.AsString = 'S') then
  begin
    if fDMCadNotaServico.cdsNotaServico_IMPTIPO_PRAZO.AsString = 'V' then
      vDiscriminacao := vDiscriminacao + '(Pagamento a Vista)'
    else
    begin
      {fDMCadNotaServico.cdsNotaServico_Imp_Parc.Close;
      fDMCadNotaServico.sdsNotaServico_Imp_Parc.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServico_ImpID.AsInteger;
      fDMCadNotaServico.cdsNotaServico_Imp_Parc.Open;}
      fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;
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

  //08/07/2015
  vTexto2 := '';
  fDMCadNotaServico.mOSAux.First;
  while not fDMCadNotaServico.mOSAux.Eof do
  begin
    if trim(vTexto2) = '' then
      vTexto2 := 'OS: ' + fDMCadNotaServico.mOSAuxID.AsString
    else
      vTexto2 := vTexto2 + ',' + fDMCadNotaServico.mOSAuxID.AsString;
    fDMCadNotaServico.mOSAux.Next;
  end;
  if trim(vTexto2) <> '' then
  begin
    vDiscriminacao := vDiscriminacao + '   (' + vTexto2 + ')';
    vDiscriminacao := trim(vDiscriminacao);
  end;

  //*******************

{  if trim(vDiscriminacao) <> '' then
  begin
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
  end;}

  //******************************

  for i := 1 to 6 do
  begin
    TRLLabel(FindComponent('Dup'+IntToStr(i))).Visible := False;
    TRLLabel(FindComponent('Vct'+IntToStr(i))).Visible := False;
    TRLLabel(FindComponent('Vlr'+IntToStr(i))).Visible := False;
  end;
  if fDMCadNotaServico.cdsNotaServico_ImpTIPO_PRAZO.AsString = 'V' then
  begin
    Dup1.Visible := True;
    Vct1.Visible := True;
    Vlr1.Visible := True;
    Dup1.Caption := '';
    Vct1.Caption := 'A VISTA';
    Vlr1.Caption := FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_DUPLICATA.AsCurrency);
  end
  else
  begin
    i := 0;
    fDMCadNotaServico.cdsNotaServico_Imp_Parc.First;
    while not fDMCadNotaServico.cdsNotaServico_Imp_Parc.Eof do
    begin
      inc(i);
      if i > 6 then
        Break;
      TRLLabel(FindComponent('Dup'+IntToStr(i))).Caption := fDMCadNotaServico.cdsNotaServico_Imp_ParcITEM.AsString;
      TRLLabel(FindComponent('Vct'+IntToStr(i))).Caption := fDMCadNotaServico.cdsNotaServico_Imp_ParcDTVENCIMENTO.AsString;
      TRLLabel(FindComponent('Vlr'+IntToStr(i))).Caption := FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_Imp_ParcVLR_VENCIMENTO.AsCurrency);
      TRLLabel(FindComponent('Dup'+IntToStr(i))).Visible := True;
      TRLLabel(FindComponent('Vct'+IntToStr(i))).Visible := True;
      TRLLabel(FindComponent('Vlr'+IntToStr(i))).Visible := True;
      fDMCadNotaServico.cdsNotaServico_Imp_Parc.Next;
    end;
  end;

  //***************************** 31/03/2015
  // Informações adicionais
  RLMemo2.Lines.Clear;
  RLMemo2.Lines.Add('ST = Substituição Tributária ');
  vTexto2 := 'Correspondência do código municipal com o código da Lei Complementar 116/2003: '
           + fDMCadNotaServico.cdsNotaServico_ImpCOD_SERVICO.AsString
           + ' -> ' + fDMCadNotaServico.cdsNotaServico_ImpCOD_SERVICO_EQUIV.AsString;
  RLMemo2.Lines.Add(vTexto2);
  if fDMCadNotaServico.cdsFilialSIMPLES.AsString = 'S' then
  begin
    if trim(fDMCadNotaServico.cdsParametrosOBS_SIMPLES.AsString) <> '' then
      RLMemo2.Lines.Add(' (' + fDMCadNotaServico.cdsParametrosOBS_SIMPLES.Value + ')');
  end;
  //vTexto1 := fDMCadNotaServico.fnc_Montar_Obs_Retencao;
  //if trim(vTexto1) <> '' then
  //  RLMemo2.Lines.Add(vTexto1);

  if trim(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value) <> '' then
    RLMemo2.Lines.Add(fDMCadNotaServico.cdsNotaServico_ImpDISCRIMINACAO.Value);

  vTexto2 := '';
  if fDMCadNotaServico.cdsNotaServico_ImpID_CONDPGTO.AsInteger > 0 then
    vTexto2 := vTexto2 + '(Condição Pagto: ' + fDMCadNotaServico.cdsNotaServico_ImpNOME_CONDPGTO.AsString + ')';
  if fDMCadNotaServico.cdsNotaServico_ImpID_TIPO_COBRANCA.AsInteger > 0 then
    vTexto2 := vTexto2 + '(Forma de pagamento: ' + fDMCadNotaServico.cdsNotaServico_ImpNOME_TIPOCOBRANCA.AsString + ')';
  if trim(vTexto2) <> '' then
    RLMemo2.Lines.Add(vTexto2);

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
    RLMemo2.Lines.Text := RLMemo2.Lines.Text + vDiscriminacao;
    RLMemo2.Lines.Text := trim(RLMemo2.Lines.Text);

  end;
  //************************
end;

function TfRelDanfe_NFSe_CB.Replace(Str, Ant, Novo: string): string;
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

procedure TfRelDanfe_NFSe_CB.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaServico);
end;

procedure TfRelDanfe_NFSe_CB.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadNotaServico.cdsNotaServico_Imp_ItensNOME_SERVICO_INT.AsString;
end;

procedure TfRelDanfe_NFSe_CB.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  RLLabel32.Caption := fDMCadNotaServico.cdsNotaServico_ImpCHAVE_ACESSO.AsString;
  RLLabel49.Caption := 'Recebi de ' + fDMCadNotaServico.cdsNotaServico_ImpNOME_FIL.AsString +
                       ' os serviços constantes nessa nota fiscal.';

  for i := 1 to 5 do
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Visible := False;
  i := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_IR.AsFloat)) > 0 then
  begin
    i := i + 1;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Caption := 'IRRF:  % Ret.: ' + FormatFloat('0.00#',fDMCadNotaServico.cdsNotaServico_ImpPERC_IR.AsFloat)
                                                                 + '  Valor: R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_IR.AsFloat);
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_PIS.AsFloat)) > 0 then
  begin
    i := i + 1;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Caption := 'PIS/PASEP:  % Ret.: ' + FormatFloat('0.00#',fDMCadNotaServico.cdsNotaServico_ImpPERC_PIS_FIL.AsFloat)
                                                                 + '  Valor: R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_PIS.AsFloat);
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_COFINS.AsFloat)) > 0 then
  begin
    i := i + 1;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Caption := 'COFINS:  % Ret.: ' + FormatFloat('0.00#',fDMCadNotaServico.cdsNotaServico_ImpPERC_COFINS_FIL.AsFloat)
                                                                 + '  Valor: R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_COFINS.AsFloat);
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_CSLL.AsFloat)) > 0 then
  begin
    i := i + 1;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Caption := 'CSLL:  % Ret.: ' + FormatFloat('0.00#',fDMCadNotaServico.cdsNotaServico_ImpPERC_CSLL_FIL.AsFloat)
                                                                 + '  Valor: R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_CSLL.AsFloat);
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS_RETIDO.AsFloat)) > 0 then
  begin
    i := i + 1;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Caption := 'ISSQN:  % Ret.: ' + FormatFloat('0.00#',fDMCadNotaServico.cdsNotaServico_ImpPERC_ALIQUOTA.AsFloat) +
                                                                   '  Valor: R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_ISS_RETIDO.AsFloat);
  end;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_INSS.AsFloat)) > 0 then
  begin
    i := i + 1;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Visible := True;
    TRLLabel(FindComponent('rllbRetencao'+IntToStr(i))).Caption := 'INSS:  % Ret.: ' + FormatFloat('0.00#',fDMCadNotaServico.cdsNotaServico_ImpPERC_INSS.AsFloat) +
                                                                   '  Valor: R$ ' + FormatFloat('###,###,##0.00',fDMCadNotaServico.cdsNotaServico_ImpVLR_INSS.AsFloat);
  end;
end;

end.
