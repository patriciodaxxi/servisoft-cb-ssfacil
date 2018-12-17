unit URelDanfe_NFSe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, RLBarcode, jpeg, UDMCadNotaServico;

type
  TfRelDANFE_NFSe = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLImage1: TRLImage;
    RLDraw50: TRLDraw;
    RLDraw52: TRLDraw;
    RLLabel77: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel54: TRLLabel;
    RLDraw18: TRLDraw;
    RLImage2: TRLImage;
    RLLabel64: TRLLabel;
    RLDraw19: TRLDraw;
    RLDBText3: TRLDBText;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel73: TRLLabel;
    RLDraw21: TRLDraw;
    RLLabel75: TRLLabel;
    RLDBText47: TRLDBText;
    RLDraw22: TRLDraw;
    RLLabel76: TRLLabel;
    RLLabel78: TRLLabel;
    RLDBText49: TRLDBText;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLLabel79: TRLLabel;
    RLDBText50: TRLDBText;
    RLDraw25: TRLDraw;
    RLLabel91: TRLLabel;
    RLDBText51: TRLDBText;
    RLDraw49: TRLDraw;
    RLLabel92: TRLLabel;
    RLDraw51: TRLDraw;
    RLLabel93: TRLLabel;
    RLDBText52: TRLDBText;
    RLDraw53: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw58: TRLDraw;
    RLDBText56: TRLDBText;
    RLLabel83: TRLLabel;
    RLDraw54: TRLDraw;
    RLDBText1: TRLDBText;
    RLLabel11: TRLLabel;
    RLDraw55: TRLDraw;
    RLDBText53: TRLDBText;
    RLLabel80: TRLLabel;
    RLDraw57: TRLDraw;
    RLDBText54: TRLDBText;
    RLLabel94: TRLLabel;
    RLDraw71: TRLDraw;
    RLDBText55: TRLDBText;
    RLLabel95: TRLLabel;
    RLDraw72: TRLDraw;
    RLDBText61: TRLDBText;
    RLLabel96: TRLLabel;
    RLDraw73: TRLDraw;
    RLDBText62: TRLDBText;
    RLLabel97: TRLLabel;
    RLDraw74: TRLDraw;
    RLDBText63: TRLDBText;
    RLLabel98: TRLLabel;
    RLDraw75: TRLDraw;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLDraw78: TRLDraw;
    RLDBText64: TRLDBText;
    RLLabel102: TRLLabel;
    RLDBText65: TRLDBText;
    RLDraw79: TRLDraw;
    RLLabel103: TRLLabel;
    RLDBText67: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    RLDraw2: TRLDraw;
    RLBand2: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLDraw6: TRLDraw;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw7: TRLDraw;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw8: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw9: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLDraw10: TRLDraw;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLDraw11: TRLDraw;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    RLDraw13: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel16: TRLLabel;
    RLDBText13: TRLDBText;
    RLDraw15: TRLDraw;
    RLLabel17: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel18: TRLLabel;
    RLDBText14: TRLDBText;
    RLDraw20: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw26: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBText16: TRLDBText;
    RLDraw27: TRLDraw;
    RLLabel21: TRLLabel;
    RLDBText17: TRLDBText;
    RLDraw28: TRLDraw;
    RLLabel22: TRLLabel;
    RLDBText20: TRLDBText;
    RLDraw29: TRLDraw;
    RLLabel24: TRLLabel;
    RLDBText21: TRLDBText;
    RLDraw30: TRLDraw;
    RLLabel25: TRLLabel;
    RLDBText24: TRLDBText;
    RLDraw31: TRLDraw;
    RLLabel26: TRLLabel;
    RLDraw32: TRLDraw;
    RLDBText25: TRLDBText;
    RLBand3: TRLBand;
    RLDraw33: TRLDraw;
    RLLabel27: TRLLabel;
    RLDBText26: TRLDBText;
    RLImage3: TRLImage;
    RLLabel29: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    RLDraw35: TRLDraw;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLMemo2: TRLMemo;
    RLBand4: TRLBand;
    RLDraw36: TRLDraw;
    RLPanel1: TRLPanel;
    RLLabel34: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    function Replace(Str, Ant, Novo: string): string;

  public
    { Public declarations }
    fDMCadNotaServico : TDMCadNotaServico;

    vAmbiente : String;

  end;

var
  fRelDANFE_NFSe: TfRelDANFE_NFSe;

implementation

uses rsDBUtils, uUtilPadrao;


{$R *.dfm}

procedure TfRelDANFE_NFSe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDANFE_NFSe.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDiscriminacao : WideString;
  vTexto1 : String;
  i : Integer;
  vTexto2 : String;
begin
  RLMemo1.Lines.Clear;

  fDMCadNotaServico.cdsNotaServico_Imp.Close;
  fDMCadNotaServico.sdsNotaServico_Imp.CommandText := fDMCadNotaServico.ctNotaServico_Imp + ' WHERE NS.ID = ' +
                                                      fDMCadNotaServico.mImpNotaID_Nota.AsString;
  fDMCadNotaServico.cdsNotaServico_Imp.Open;

  fDMCadNotaServico.cdsFilial.Locate('ID',fDMCadNotaServico.cdsNotaServico_ImpFILIAL.AsInteger,[loCaseInsensitive]);

  RLLabel70.Caption := fDMCadNotaServico.cdsNotaServico_ImpCEP_FIL.AsString + ' - Fone: (' + fDMCadNotaServico.cdsNotaServico_ImpDDD_FIL.AsString + ') '
                     + fDMCadNotaServico.cdsNotaServico_ImpFONE_FIL.AsString
                     + ' - ' + fDMCadNotaServico.cdsNotaServico_ImpCIDADE_FIL.AsString + ' - ' + fDMCadNotaServico.cdsNotaServico_ImpUF_FIL.AsString;

  RLLabel64.Caption := 'Prefeitura Municipal de ' + fDMCadNotaServico.cdsFilialCIDADE.AsString + ' - ' + fDMCadNotaServico.cdsFilialUF.AsString;

  RLLabel29.Caption := fDMCadNotaServico.cdsNotaServico_ImpEMAIL_FIL.AsString;
  RLLabel68.Caption := 'Fone: ' + fDMCadNotaServico.cdsFilialFONE_PREFEITURA.AsString + ' - ' + fDMCadNotaServico.cdsFilialSITE_PREFEITURA.AsString;
  RLLabel28.Caption := fDMCadNotaServico.cdsNotaServico_ImpINSCMUNICIPAL_FIL.AsString + ' - CPF/CNPJ: ' + fDMCadNotaServico.cdsNotaServico_ImpCNPJ_CPF_FIL.AsString;

  //if FileExists(fDMCadNotaServico.cdsFilialEND_LOGO_PREFEITURA.AsString) then
  //  RLImage1.Picture.LoadFromFile(fDMCadNotaServico.cdsFilialEND_LOGO_PREFEITURA.AsString)
  //else
   // RLImage1.Picture := nil;
  //RLImage2.Picture := nil;

  if FileExists(fDMCadNotaServico.cdsFilialENDLOGO_NFSE.AsString) then
    RLImage3.Picture.LoadFromFile(fDMCadNotaServico.cdsFilialENDLOGO_NFSE.AsString)
  else
    RLImage3.Picture := nil;

  RLLabel93.Caption := 'Consulte a autenticidade deste documento acessando o site: ' + fDMCadNotaServico.cdsFilialLINKNFSE.AsString;

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

  //Incluido dia 06/07/2016 para imprimir os contratos
  if fDMCadNotaServico.qParametros_SerIMP_CONTRATO_NFSE.AsString = 'S' then
  begin
    fDMCadNotaServico.prc_Monta_Obs_Contrato;
    if trim(fDMCadNotaServico.vObs_Contrato) <> '' then
    begin
      RLMemo1.Lines.Add('');
      RLMemo1.Lines.Add(fDMCadNotaServico.vObs_Contrato);
    end;
  end;
  //**************

  if RLMemo1.Lines.Count < 10 then
  begin
    i := RLMemo1.Lines.Count;
    while i <= 10 do
    begin
      i := i + 1;
      RLMemo1.Lines.Add('');
    end;
  end;

  RLDBText50.Visible := (fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger <= 0);
  RLDBText51.Visible := (fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger <= 0);
  RLLabel32.Visible  := (fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger <= 0);
  vTexto1 := Replace(fDMCadNotaServico.cdsNotaServico_ImpDTRECEBIMENTO_RET.AsString,'T',' ');
  if fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger <= 0 then
    RLLabel32.Caption := vTexto1;
  vTexto1 := Replace(fDMCadNotaServico.cdsNotaServico_ImpDT_EMISSAO_RET.AsString,'T',' ');
  RLLabel30.Caption  := vTexto1;

  RLDBText52.Visible := (fDMCadNotaServico.cdsNotaServico_ImpNUMNOTA.AsInteger > 0);

//  if RLMemo1.Height < 124 then
    RLMemo1.Height := 124;
end;

procedure TfRelDANFE_NFSe.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadNotaServico.cdsNotaServico_ImpISS_RETIDO.AsString = '1' then
    RLLabel15.Caption := 'Sim'
  else
    RLLabel15.Caption := 'Não';
  RLLabel33.Caption := fDMCadNotaServico.cdsNotaServico_ImpCOD_ATIVIDADE_CID.AsString + ' - ' + fDMCadNotaServico.cdsNotaServico_ImpNOME_ATIVIDADE_CID.AsString;
end;

function TfRelDANFE_NFSe.Replace(Str, Ant, Novo: string): string;
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

procedure TfRelDANFE_NFSe.RLBand3BeforePrint(Sender: TObject;
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

procedure TfRelDANFE_NFSe.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadNotaServico.cdsNotaServico_ImpSTATUS_RPS.AsString = '2');
end;

procedure TfRelDANFE_NFSe.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaServico);
end;

end.
