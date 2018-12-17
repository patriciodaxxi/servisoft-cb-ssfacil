unit uCobRemessa; //ABCR Novof
{
01 - Banco do Brasil
06 - Banrisul
08 - Bradesco
11 - Caixa Federal
13 - HSBC
14 - Itaú
16 - Santander
17 - Sicredi
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, NxCollection, ACBrBase, db, ACBrBoleto,
  ACBrBoletoFCFortesFr, Grids, DBGrids, SMDBGrid, UDMCob_Eletronica, ExtCtrls, StdCtrls, NxEdit, RxLookup, ACBrUtil, Buttons,
  rsDBUtils, uUtilPadrao, strUtils, UDMRel, ComCtrls, ACBrMail, Mask, ToolEdit, CurrEdit;

type
  TfCobRemessa = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    NxDatePicker1: TNxDatePicker;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxDatePicker2: TNxDatePicker;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    NxLabel6: TNxLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel2: TPanel;
    btnLocalizar: TNxButton;
    btnGerar_Remessa: TNxButton;
    btnImp_Boleto: TNxButton;
    btnImp_Remessa: TNxButton;
    NxLabel7: TNxLabel;
    Edit1: TEdit;
    btnEnviar_Email: TNxButton;
    ckReenviar: TCheckBox;
    NxLabel8: TNxLabel;
    cbImpressao: TComboBox;
    NxLabel9: TNxLabel;
    GroupBox1: TGroupBox;
    CurrencyEdit1: TCurrencyEdit;
    Label1: TLabel;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    NxLabel10: TNxLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    btnAlteraCarteira: TNxButton;
    btnAlteraInstrucao: TNxButton;
    StatusBar1: TStatusBar;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    btnReimprimir: TNxButton;
    Shape3: TShape;
    Label5: TLabel;
    NxButton1: TNxButton;
    ckVencidos: TCheckBox;
    Memo1: TMemo;
    procedure btnGerar_RemessaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure btnImp_BoletoClick(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImp_RemessaClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEnviar_EmailClick(Sender: TObject);
    procedure ACBrMail1MailProcess(const aStatus: TMailStatus);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlteraCarteiraClick(Sender: TObject);
    procedure btnAlteraInstrucaoClick(Sender: TObject);
    procedure btnReimprimirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vIdBanco: Integer;
    vCorpo_Email: TStringList;
    vDadosCorpoEmail: WideString;
    vDataInicial: TDate;
    vDataFinal: TDate;
    vComando: String;
    procedure consultarDuplicatas;
    procedure consultarNaoEnviadas;
    function fnc_Verificar: Boolean;
    procedure prc_Monta_Corpo_Email;
    procedure prc_Abrir_Filial(ID: Integer);
  public
    { Public declarations }
    fDmCob_Eletronica: TDMCob_Eletronica;
    vID_Duplicata_Cob: Integer;
    vFilial_Cob: Integer;
    vNumDuplicata_Cob: string;
    vID_Conta_Cob : Integer;
    vEmail_Envio_Rem: string;
    vAssunto_Email_Rem: string;
    procedure prc_ConfiguraACBR;
    procedure geraCabecalhoAcbr;
    function geraRegistroAcbr(Segundavia: Boolean = false): string;
  end;

var
  fCobRemessa: TfCobRemessa;
  vTipo: Integer;

implementation

uses
  URelRemessa, DateUtils, uUtilCobranca, uNFeComandos, UCob_Remessa_Alt, UCob_Remessa_Alt_All;

{$R *.dfm}

procedure TfCobRemessa.btnGerar_RemessaClick(Sender: TObject);
var
  vTitulo: TACBrTitulo;
  vGerar: Boolean;
  vContadorAux: Integer;
  vMsgAux: string;
  vMsgDt: string;
  vFlag: Boolean;
  i: Integer;
  vTexto1: string;
begin
  fDmCob_Eletronica.cdsContas.Close;
  fDmCob_Eletronica.cdsContas.Open;
  if not fnc_Verificar then
    exit;

  if fDmCob_Eletronica.cdsContasREMESSA_TESTE.AsString = 'S' then
    MessageDlg('Remessa/Boleto esta em modo TESTE', mtWarning, [mbOk], 0);

  //27/08/2014
  vMsgDt := '';
  vMsgAux := '';
  vGerar := False;
  vFlag := False;
  ACBrBoleto1.ListadeBoletos.Clear;
  fDmCob_Eletronica.cdsDuplicata.First;
  while not fDmCob_Eletronica.cdsDuplicata.Eof do
  begin
    if not (SMDBGrid1.SelectedRows.CurrentRowSelected) or (fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime < Date) then
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' vencida!';
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;
    //01/12/2017 - verifica se a NFe foi enviada, caso contrário não gera remessa
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDmCob_Eletronica.cdsDuplicataTIPO_REG.AsString = 'NTS') and
       ((fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.IsNull) or (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.AsString = '')) then
    begin
      vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' com nota pendente de envio';
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;

    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDmCob_Eletronica.cdsDuplicataID_NOTA_SERVICO.AsInteger > 0) and
       ((fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.AsString = '') or (fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.IsNull)) then
    begin
      vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' com nota de serviço pendente de envio';
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;

    //aqui 16/05/2016
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (trim(fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '') then
    begin
      if (trim(fDmCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString) = '') or (trim(fDmCob_Eletronica.cdsDuplicataUF_PGTO.AsString) = '') or
         (trim(fDmCob_Eletronica.cdsDuplicataCEP_PGTO.AsString) = '') or (trim(fDmCob_Eletronica.cdsDuplicataBAIRRO_PGTO.AsString) = '') or
         (trim(fDmCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString) = '') then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' falta informação no dados do end. de cobrança!';
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end
      else
      begin
        vTexto1 := fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString + ',' + fDmCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString;
        if Length(vTexto1) > 40 then
        begin
          vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                    fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' Endereço e número ultrapassam os 40 caracteres, logradouro incompleto!';
          fDmCob_Eletronica.cdsDuplicata.Next;
          Continue;
        end;
      end;
    end
    else if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      vTexto1 := fDmCob_Eletronica.cdsDuplicataENDERECO.AsString + ',' + fDmCob_Eletronica.cdsDuplicataNUM_END.AsString;
      if Length(vTexto1) > 40 then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' Endereço e número ultrapassam os 40 caracteres, logradouro incompleto!';
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;
    end;

    if not (fDmCob_Eletronica.cdsDuplicataNUM_REMESSA.IsNull) and not (ckReenviar.Checked) then
    begin
      SMDBGrid1.SelectedRows.CurrentRowSelected := False;
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;

    if ((RxDBLookupCombo1.Text = '') and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S')) or ((RxDBLookupCombo1.Text <> '') and
       (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger = RxDBLookupCombo1.KeyValue)) then
    begin
      fDmCob_Eletronica.prc_Verificar_Carteira;
      if fDMCob_Eletronica.vGeraRemessa = 'S' then
      begin
        vGerar := True;
        //fDMCob_Eletronica.cdsDuplicata.Last;
      end;
    end
    else if (RxDBLookupCombo1.Text = '') or (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue) then
    begin
      //31/01/2017
      //if fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString <> 'S' then
      vMsgAux := 'Alguns títulos não foram gerados;' + #13 + 'Verifique se a Filial informada é a mesma do título;';
    end;

    if ((fDmCob_Eletronica.cdsDuplicataID_CONTA_BOLETO.IsNull) or (fDmCob_Eletronica.cdsDuplicataEMISSAO_BOLETO.IsNull) or
       (fDmCob_Eletronica.cdsDuplicataEMISSAO_BOLETO.AsString <> IntToStr(cbImpressao.ItemIndex + 1))) or
       ((fDmCob_Eletronica.cdsDuplicataID_CARTEIRA.AsInteger <= 0) and (fDmCob_Eletronica.vID_Carteira > 0)) then
    begin
      if ((RxDBLookupCombo1.Text = '') and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S')) or
         ((trim(RxDBLookupCombo1.Text) <> '') and (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger = RxDBLookupCombo1.KeyValue)) then
      //if (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger = RxDBLookupCombo1.KeyValue) or
      //   ((fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue) and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S')) then
      begin
        fDmCob_Eletronica.cdsDuplicata.Edit;
        fDmCob_Eletronica.cdsDuplicataID_CONTA_BOLETO.AsInteger := RxDBLookupCombo2.KeyValue;
        if fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S' then
          fDmCob_Eletronica.cdsDuplicataEMISSAO_BOLETO.AsString := IntToStr(cbImpressao.ItemIndex + 1)
        else
          fDmCob_Eletronica.cdsDuplicataEMISSAO_BOLETO.AsString := '2';
        vFlag := True;
        if ((fDmCob_Eletronica.cdsDuplicataID_CARTEIRA.AsInteger <= 0) and (fDmCob_Eletronica.vID_Carteira > 0)) then
        begin
          if fDmCob_Eletronica.vID_Carteira <> fDmCob_Eletronica.cdsCobCarteiraID.AsInteger then
            fDmCob_Eletronica.cdsCobCarteira.FindKey([fDmCob_Eletronica.vID_Carteira]);
          fDmCob_Eletronica.cdsDuplicataID_CARTEIRA.AsInteger := fDmCob_Eletronica.vID_Carteira;
          fDmCob_Eletronica.cdsDuplicataNOME_CARTEIRA.AsString := fDmCob_Eletronica.cdsCobCarteiraNOME.AsString;
        end;
        fDmCob_Eletronica.cdsDuplicata.Post;
      end;
    end;
    fDmCob_Eletronica.cdsDuplicata.Next;
  end;
  if vFlag then
    fDmCob_Eletronica.cdsDuplicata.ApplyUpdates(0);
  if not vGerar then
  begin
    MessageDlg('Não há títulos selecionados ou carteira não corresponde' + #13 + 'à cobrança do banco definido para gerar remessa!' + vMsgDt, mtWarning, [mbOk], 0);
    exit;
  end;

  //05/04/2016
  //fDMCob_Eletronica.vNum_Remessa := fDMCob_Eletronica.fnc_Busca_Num_Arquivo_Rem;
  if (GroupBox1.Visible) and (CurrencyEdit1.AsInteger > 0) then
    fDMCob_Eletronica.vNum_Remessa := CurrencyEdit1.AsInteger
  else
  begin
    fDMCob_Eletronica.vNum_Remessa := fDMCob_Eletronica.fnc_Busca_Num_Arquivo_Rem;
    if CurrencyEdit2.AsInteger <= 0 then
      CurrencyEdit2.AsInteger := fDmCob_Eletronica.vSeq_Remessa_Dia;
  end;
  if (GroupBox1.Visible) and (CurrencyEdit2.AsInteger > 0) then
    fDmCob_Eletronica.vSeq_Remessa_Dia := CurrencyEdit2.AsInteger
  else
  begin
    i := fDMCob_Eletronica.fnc_Busca_Num_Arquivo_Rem;
    CurrencyEdit2.AsInteger := fDmCob_Eletronica.vSeq_Remessa_Dia;
  end;
  //***************
  prc_ConfiguraACBR;

  fdmCob_Eletronica.buscaNossoNumero;
  if (cbImpressao.ItemIndex = 0) and (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S') then
    fDmCob_Eletronica.xNossoNum := 0;

  {  vMsgAux := '';
  //vMsgDt  := '';
  vGerar  := False;
  fDmCob_Eletronica.cdsDuplicata.First;
  while not fDmCob_Eletronica.cdsDuplicata.Eof do
  begin
    {if not(SMDBGrid1.SelectedRows.CurrentRowSelected) or (fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime < Date) then
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + '/' + fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' vencida!';
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;}
    {if fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger = RxDBLookupCombo1.KeyValue then
    begin
      fDmCob_Eletronica.prc_Verificar_Carteira;
      if fDMCob_Eletronica.vGeraRemessa = 'S' then
      begin
        vGerar := True;
        fDMCob_Eletronica.cdsDuplicata.Last;
      end;
    end;
    if not vGerar then
    begin
      MessageDlg('Não há títulos selecionados ou carteira não corresponde' + #13 +
                 'à cobrança do banco definido para gerar remessa!', mtWarning, [mbOk], 0);
      fDMCob_Eletronica.cdsDuplicata.Last;
    end;
    fDmCob_Eletronica.cdsDuplicata.Next;
  end;}

  //vMsgAux      := '';
  vContadorAux := 0;
  fDmCob_Eletronica.vValor_Com_Juros := 0;
  fDmCob_Eletronica.vValor_Multa_Juros := 0;
  geraCabecalhoAcbr;
  fDMCob_Eletronica.cdsDuplicata.First;
  while not fDmCob_Eletronica.cdsDuplicata.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin

      if not (fDmCob_Eletronica.cdsDuplicataNUM_REMESSA.IsNull) and not (ckReenviar.Checked) then
      begin
        SMDBGrid1.SelectedRows.CurrentRowSelected := False;
          fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
      end;

      if (fDmCob_Eletronica.cdsDuplicataTIPO_REG.AsString = 'NTS') then
      begin
        if (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.IsNull) or (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.AsString = '')  then
        begin
          SMDBGrid1.SelectedRows.CurrentRowSelected := False;
          fDmCob_Eletronica.cdsDuplicata.Next;
          Continue;
        end;
      end;
      if (fDmCob_Eletronica.cdsDuplicataID_NOTA_SERVICO.AsInteger > 0) then
      begin
        if (fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.AsString = '') or (fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.IsNull) then
        begin
          SMDBGrid1.SelectedRows.CurrentRowSelected := False;
          fDmCob_Eletronica.cdsDuplicata.Next;
          Continue;
        end;
      end;
      if fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime < Date then
      begin
        SMDBGrid1.SelectedRows.CurrentRowSelected := False;
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;

      //if fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue then
      //  vMsgAux := 'Alguns títulos não foram gerados;' +#13 + 'Verifique se a Filial informada é a mesma do título;'
      //else
      //if (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger = RxDBLookupCombo1.KeyValue) or
      if ((RxDBLookupCombo1.Text = '') and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S')) or
         ((RxDBLookupCombo1.Text <> '') and (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger = RxDBLookupCombo1.KeyValue)) then
      begin
        fDMCob_Eletronica.prc_Verificar_Carteira;
        if fDMCob_Eletronica.vGeraRemessa = 'S' then
        begin
          vContadorAux := vContadorAux + 1;
          fDmCob_Eletronica.vNossoNumero := geraRegistroACBR;
          fDMCob_Eletronica.prc_Gravar_Duplicata('R');
        end;
      end;
    end;

    fDmCob_Eletronica.cdsDuplicata.Next;
  end;

  if vContadorAux <= 0 then
  begin
    if trim(vMsgDt) <> '' then
      MessageDlg('Nenhum título gerado!' + #13 + #13 + vMsgDt + #13 + vMsgAux, mtInformation, [mbOk], 0);
    FreeAndNil(vTitulo);
    exit;
  end
  else
  begin
    if (trim(vMsgAux) <> '') or (trim(vMsgDt) <> '') then
      MessageDlg(vMsgAux + #13 + #13 + vMsgDt, mtWarning, [mbOk], 0);
    FreeAndNil(vTitulo);
  end;

  fDmCob_Eletronica.cdsDuplicata.ApplyUpdates(0);
  try //gera a remessa
    // captura o contador de remessa
    ACBrBoleto1.GerarRemessa(fDMCob_Eletronica.vNum_Remessa);

    //Aqui foi alterado para gravar na mesma transaction que as duplicatas
    {if (fdmCob_Eletronica.xNossoNum > 0) then
    begin
      if (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString <> 'S')
        or ((cbImpressao.ItemIndex = 1) and (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S')) then
      begin
        fDmCob_Eletronica.cdsContas_calculo.Edit;
        fDmCob_Eletronica.cdsContas_calculoSEQ_NOSSONUMERO.AsString := IntToStr(fdmCob_Eletronica.xNossoNum);
        fDmCob_Eletronica.cdsContas_calculo.Post;
        fDmCob_Eletronica.cdsContas_calculo.ApplyUpdates(0);
      end;
    end;}

    // Atualiza o contador de remesa na tabela de configuração
    fDmCob_Eletronica.cdsContas.Edit;

    fDmCob_Eletronica.cdsContasNUM_ARQ_REMESSA.AsInteger := fDMCob_Eletronica.vNum_Remessa;
    fDmCob_Eletronica.cdsContasDT_REMESSA.AsDateTime := Date;
    fDmCob_Eletronica.cdsContasSEQ_REMESSA_DIA.AsInteger := fDmCob_Eletronica.vSeq_Remessa_Dia;
    fDmCob_Eletronica.cdsContas.Post;
    fDmCob_Eletronica.cdsContas.ApplyUpdates(0);

    CurrencyEdit1.AsInteger := fDMCob_Eletronica.vNum_Remessa + 1;
    fDMCob_Eletronica.vSeq_Remessa_Dia := fDMCob_Eletronica.vSeq_Remessa_Dia + 1;
    CurrencyEdit2.AsInteger := fDMCob_Eletronica.vSeq_Remessa_Dia;

    MessageDlg('Geração concluída!' + #13, mtConfirmation, [mbOk], 0);

  except
    MessageDlg('Erro ao gerar arquivo de remessa!', mtWarning, [mbOK], 0);
  end;
  SMDBGrid1.UnSelectAllClick(Sender);
end;

procedure TfCobRemessa.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDmCob_Eletronica := TDmCob_Eletronica.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCob_Eletronica);
  fDmCob_Eletronica.prc_Abrir_Contas(False);
  vComando := fDmCob_Eletronica.qConsultaNaoEnviado.SQL.Text;
  NxDatePicker1.Date := Date - 10;
  NxDatePicker2.Date := Date;

  if (fDmCob_Eletronica.cdsFilial.RecordCount < 2) and (fDmCob_Eletronica.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDmCob_Eletronica.cdsFilialID.AsInteger;
  if (fDmCob_Eletronica.cdsContas.RecordCount < 2) and (fDmCob_Eletronica.cdsContasID.AsInteger > 0) then
    RxDBLookupCombo2.KeyValue := fDmCob_Eletronica.cdsContasID.AsInteger;
  if (trim(RxDBLookupCombo2.Text) = '') and (fDmCob_Eletronica.qParametrosID_BANCO_REMESSA.AsInteger > 0) then
  begin
    RxDBLookupCombo2.KeyValue := fDmCob_Eletronica.qParametrosID_BANCO_REMESSA.AsInteger;
  end;
  if (RxDBLookupCombo2.Text = '') and (vID_Conta_Cob > 0) then
  begin
    if not fDmCob_Eletronica.cdsContas.Locate('ID',vID_Conta_Cob, [loCaseInsensitive]) then
      RxDBLookupCombo2.ClearValue
    else
      RxDBLookupCombo2.KeyValue := vID_Conta_Cob;
  end;

  if RxDBLookupCombo2.KeyValue <> '' then
    fDmCob_Eletronica.prc_Abrir_Carteira(fDmCob_Eletronica.cdsContasID_BANCO.AsInteger);

  if vFilial_Cob > 0 then
    RxDBLookupCombo1.KeyValue := vFilial_Cob;
  Edit1.Text := vNumDuplicata_Cob;
  if trim(vNumDuplicata_Cob) <> '' then
  begin
    btnLocalizarClick(Sender);
    SMDBGrid1.SelectAllClick(Sender);
  end;
  if not btnGerar_Remessa.Enabled then
    GroupBox1.Visible := False;
  NxLabel10.Visible := fDmCob_Eletronica.qParametros_SerGERAR_DUPLICATA_CONTRATO.AsString = 'S';
  RxDBLookupCombo4.Visible := fDmCob_Eletronica.qParametros_SerGERAR_DUPLICATA_CONTRATO.AsString = 'S';
  cbImpressao.Visible := ((RxDBLookupCombo2.Text <> '') and (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S'));

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'NOME_GRUPO' then
      SMDBGrid1.Columns[i].Visible := (fDmCob_Eletronica.qParametros_SerGERAR_DUPLICATA_CONTRATO.AsString = 'S');
  end;
  uUtilPadrao.fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;
end;

procedure TfCobRemessa.btnLocalizarClick(Sender: TObject);
begin
  if (trim(RxDBLookupCombo1.Text) = '') and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString <> 'S') then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;
  if (trim(RxDBLookupCombo3.Text) = '') then
  begin
    MessageDlg('*** Ocorrência não informada!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCob_Eletronica.vNum_Remessa := 0;

  consultarDuplicatas;
  consultarNaoEnviadas;
  Memo1.Visible := False;
  Memo1.Lines.Clear;
  if fDmCob_Eletronica.qConsultaNaoEnviadoNAO_ENVIADO.AsInteger > 0 then
  begin
    if vDataInicial > 0 then
      Memo1.Lines.Text := 'Títulos não enviados no período ' + DateToStr(vDataInicial) + ' a ' + DateToStr(vDataFinal)
    else
      Memo1.Lines.Text := 'Títulos não enviados no período!';
    Memo1.Visible := True;
  end;

  fDmCob_Eletronica.cdsDuplicata.Open;
end;

procedure TfCobRemessa.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmCob_Eletronica.cdsDuplicataTAXA_BANCO.AsString = 'S' then
  begin
    Background := clAqua;
    AFont.Color := clBlack;
  end;
  if fDMCob_Eletronica.cdsDuplicataNUM_REMESSA.AsInteger > 0 then
  begin
    Background := clMoneyGreen;
    AFont.Color := clBlack;
  end;
  if (fDMCob_Eletronica.cdsDuplicataTIPO_REG.AsString = 'NTS') and ((fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.IsNull) or (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.AsString = '')) then
  begin
    Background := clRed;
    AFont.Color := clWhite;
  end;

  end;

procedure TfCobRemessa.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmCob_Eletronica.cdsContas.IndexFieldNames := 'NOME';
end;

procedure TfCobRemessa.consultarDuplicatas;
var
  vComando: string;
  vComandoAux: string;
begin
  vComandoAux := '';
  fDmCob_Eletronica.cdsDuplicata.Close;
  vComando := fDmCob_Eletronica.ctDuplicata + ' WHERE DUP.TIPO_ES = ' + QuotedStr('E') + ' AND DUP.VLR_RESTANTE > 0';
  if fDmCob_Eletronica.qParametros_FinTIPO_GERACAO_REM.AsString = '1' then
    vComandoAux := vComandoAux + ' AND (TC.GERARBOLETO = ''S'') '
  else
    vComandoAux := vComandoAux + ' AND ((DUP.ID_TIPOCOBRANCA IS NULL) OR ' + '(TC.GERARBOLETO = ''S'') OR (TC.DESCONTADO = ''S''))';
  vComando := vComando + vComandoAux;
  //******************
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND DUP.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if not ckVencidos.Checked then //06/02/2018
    vComando := vComando + ' AND DTVENCIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date));
  if fDMCob_Eletronica.vNum_Remessa > 0 then
    vComando := vComando + ' AND (DUP.NUM_REMESSA = ' + IntToStr(fDMCob_Eletronica.vNum_Remessa) + ')'
  else if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND (DUP.NUMDUPLICATA = ' + QuotedStr(Edit1.Text) + ')'
  else
  begin
    vComandoAux := '';
    if fDmCob_Eletronica.qParametros_FinTIPO_GERACAO_REM.AsString = '1' then
      vComandoAux := vComandoAux + ' AND (DUP.ID_CONTA_BOLETO = ' + IntToStr(RxDBLookupCombo2.KeyValue) + ') '
    else
      vComandoAux := vComandoAux + ' AND (DUP.ID_CONTA_BOLETO = ' + IntToStr(RxDBLookupCombo2.KeyValue) + ' OR DUP.ID_CONTA_BOLETO IS NULL) ';
    vComando := vComando + vComandoAux;
    //*******************
    if Trim(NxDatePicker1.Text) <> '' then
      vComando := vComando + ' AND DUP.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker1.Date));
    if Trim(NxDatePicker2.Text) <> '' then
      vComando := vComando + ' AND DUP.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker2.Date));

    case ComboBox1.ItemIndex of
      0: vComando := vComando + ' AND ((DUP.NUM_REMESSA = 0) OR (DUP.NUM_REMESSA IS NULL))';
      1: vComando := vComando + ' AND (DUP.NUM_REMESSA > 0)';
    end;
    //vComando := vComando + ' and (DCOB.DTREMESSA IS NULL)  '
  end;
  if (RxDBLookupCombo4.Visible) and (trim(RxDBLookupCombo4.Text) <> '') then
    vComando := vComando + ' AND (CLI.ID_GRUPO = ' + IntToStr(RxDBLookupCombo4.KeyValue) + ')';
  fDmCob_Eletronica.sdsDuplicata.CommandText := vComando;
  fDmCob_Eletronica.sdsDuplicata.ParamByName('DCOB1').AsDate := NxDatePicker1.Date;
  fDmCob_Eletronica.sdsDuplicata.ParamByName('DCOB2').AsDate := NxDatePicker2.Date;
  fDmCob_Eletronica.sdsDuplicata.ParamByName('ID_OCORRENCIA').AsInteger := RxDBLookupCombo3.KeyValue;
//  if RxDBLookupCombo2.Text <> '' then
//    fDmCob_Eletronica.sdsDuplicata.ParamByName('ID_CONTA').AsInteger := RxDBLookupCombo2.KeyValue;
  fDmCob_Eletronica.cdsDuplicata.Open;
  if fDmCob_Eletronica.cdsDuplicataID_CONTA_BOLETO.AsInteger > 0 then
    RxDBLookupCombo2.KeyValue := fDmCob_Eletronica.cdsDuplicataID_CONTA_BOLETO.AsInteger;
end;

procedure TfCobRemessa.geraCabecalhoAcbr;
begin
  ACBrBoleto1.Banco.Numero := fDmCob_Eletronica.cdsContasCOD_BANCO.AsInteger;
  ACBrBoleto1.Banco.Nome := fDmCob_Eletronica.cdsContasNOME_BANCO.AsString; // 'Banco do Estado do Rio Grande do Sul S.A.';
  if (ACBrBoleto1.Banco.Numero = 104) then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;

  ACBrBoleto1.Cedente.Agencia := fDmCob_Eletronica.cdsContasAGENCIA.AsString; // '0785';
  ACBrBoleto1.Cedente.AgenciaDigito := fDmCob_Eletronica.cdsContasDIG_AGENCIA.AsString; // '1';
  ACBrBoleto1.Cedente.Conta := fDmCob_Eletronica.cdsContasNUMCONTA.AsString; // '06.022038.0';
  ACBrBoleto1.Cedente.ContaDigito := fDmCob_Eletronica.cdsContasDIG_CONTA.AsString; // '3';
  ACBrBoleto1.Cedente.CNPJCPF := fDmCob_Eletronica.cdsFilialCNPJ_CPF.AsString; // '09.348.462/0001-79';
  ACBrBoleto1.Cedente.CodigoCedente := fDmCob_Eletronica.cdsContasCOD_CEDENTE.AsString; // '0785022038017';
  ACBrBoleto1.Cedente.Logradouro := fDmCob_Eletronica.cdsFilialENDERECO.AsString;
  ACBrBoleto1.Cedente.Nome := fDmCob_Eletronica.cdsFilialNOME.AsString;
  ACBrBoleto1.Cedente.NumeroRes := fDmCob_Eletronica.cdsFilialNUM_END.AsString;
  ACBrBoleto1.Cedente.Telefone := fDmCob_Eletronica.cdsFilialDDD1.AsString + ' ' + fDmCob_Eletronica.cdsFilialFONE1.AsString;
  ACBrBoleto1.Cedente.TipoInscricao := pJuridica;
  ACBrBoleto1.Cedente.UF := fDmCob_Eletronica.cdsFilialUF.AsString;
  ACBrBoleto1.Cedente.Bairro := fDmCob_Eletronica.cdsFilialBAIRRO.AsString;
  ACBrBoleto1.Cedente.CEP := fDmCob_Eletronica.cdsFilialCEP.AsString;
  ACBrBoleto1.Cedente.Cidade := fDmCob_Eletronica.cdsFilialCIDADE.AsString;
  ACBrBoleto1.Cedente.CodigoTransmissao := fDmCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString;
  ACBrBoleto1.Cedente.Complemento := fDmCob_Eletronica.cdsFilialCOMPLEMENTO_END.AsString;
  ACBrBoleto1.Cedente.Modalidade := fDmCob_Eletronica.cdsContasVARIACAO_CARTEIRA.AsString;

  if ACBrBoleto1.Banco.Numero = 33 then
  begin
    if not fDmCob_Eletronica.cdsCobCarteira.Active then
      fDmCob_Eletronica.cdsCobCarteira.Open;
    fDmCob_Eletronica.cdsCobCarteira.IndexFieldNames := 'ID';
    fDmCob_Eletronica.cdsCobCarteira.FindKey([fDmCob_Eletronica.cdsContasID_CARTEIRA.AsInteger]);
    case fDmCob_Eletronica.cdsCobCarteiraCODIGO.AsInteger of
      1:
        ACBrBoleto1.Cedente.CaracTitulo := tcSimples; //simples com registro
          3:
        ACBrBoleto1.Cedente.CaracTitulo := tcCaucionada;
      5:
        ACBrBoleto1.Cedente.CaracTitulo := tcVinculada; //simples com registro
    end;
    case fDmCob_Eletronica.cdsContasTIPO_DOCUMENTO_SANTANDER.AsInteger of
      1:
        ACBrBoleto1.Cedente.TipoDocumento := Tradicional;
      2:
        ACBrBoleto1.Cedente.TipoDocumento := Escritural;
    end;
  end
  else if ACBrBoleto1.Banco.Numero = 41 then
  begin
    if not fDmCob_Eletronica.cdsCobCarteira.Active then
      fDmCob_Eletronica.cdsCobCarteira.Open;
    fDmCob_Eletronica.cdsCobCarteira.IndexFieldNames := 'ID';
    fDmCob_Eletronica.cdsCobCarteira.FindKey([fDmCob_Eletronica.cdsContasID_CARTEIRA.AsInteger]);
    if fDmCob_Eletronica.cdsCobCarteiraCODIGO.AsString = '1' then
      ACBrBoleto1.Cedente.CaracTitulo := tcSimples  //simples com registro
    else if fDmCob_Eletronica.cdsCobCarteiraCODIGO.AsString = '3' then
      ACBrBoleto1.Cedente.CaracTitulo := tcCaucionada
    else if fDmCob_Eletronica.cdsCobCarteiraCODIGO.AsString = 'R' then
      ACBrBoleto1.Cedente.CaracTitulo := tcDescontada
  end;

end;

function TfCobRemessa.geraRegistroAcbr(Segundavia: Boolean = false): string;
var
  Titulo: TACBrTitulo;
  vTamAux: Integer;
  vNossoNumAux: string;
  vTipoProtesto: string;
begin
  fDmCob_Eletronica.vAceite := fDmCob_Eletronica.cdsDuplicataACEITE.AsString;
  Titulo := ACBrBoleto1.CriarTituloNaLista;

  with Titulo do
  begin
    //05/12/2014
    if fDmCob_Eletronica.cdsContasTIPO_IMPRESSAO.AsString = 'C' then
      TipoImpressao := tipCarne //se for carnê, tipCarne
    else
      TipoImpressao := tipNormal; //se for carnê, tipCarne
    Vencimento := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime;
    if Segundavia then
      Vencimento := fDmCob_Eletronica.vData2Via;
    DataDocumento := fDmCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime;
    if fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S' then
      NumeroDocumento := fDmCob_Eletronica.cdsDuplicataFILIAL.AsString + '.' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString +
                         fDmCob_Eletronica.vSeparadorParc + fDmCob_Eletronica.cdsDuplicataPARCELA.AsString
    else
      NumeroDocumento := fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc + fDmCob_Eletronica.cdsDuplicataPARCELA.AsString;

//-------------------------
    if not fDmCob_Eletronica.cdsEspecie.Active then
      fDmCob_Eletronica.cdsEspecie.Open;
    fDmCob_Eletronica.cdsEspecie.IndexFieldNames := 'ID;ID_BANCO';
    fDmCob_Eletronica.cdsEspecie.FindKey([fDmCob_Eletronica.cdsContasID_ESPECIE.AsInteger, fDmCob_Eletronica.cdsContasID_BANCO.AsInteger]);
    if trim(fDmCob_Eletronica.cdsEspecieCOD_REDUZIDO.AsString) = '' then
      EspecieDoc := fDmCob_Eletronica.cdsEspecieCODIGO.AsString
    else
      EspecieDoc := fDmCob_Eletronica.cdsEspecieCOD_REDUZIDO.AsString;
//-------------------------
    if (trim(fDmCob_Eletronica.cdsDuplicataACEITE.AsString) = '') or (fDmCob_Eletronica.cdsDuplicataACEITE.IsNull) then
    begin
      fDmCob_Eletronica.vAceite := fDmCob_Eletronica.cdsContasACEITE.AsString;
      if fDmCob_Eletronica.cdsContasACEITE.AsString = 'A' then
        Aceite := atSim
      else
        Aceite := atNao;
    end
    else if fDmCob_Eletronica.cdsDuplicataACEITE.AsString = 'A' then
      Aceite := atSim
    else
      Aceite := atNao;

    if (ACBrBoleto1.Banco.Numero = 104) and (fDmCob_Eletronica.cdsContasTIPO_IMPRESSAO.AsString = 'C') then //CEF
    begin
      //11/05/2016
      fDmCob_Eletronica.qQtdParcelas.Close;
      fDmCob_Eletronica.qQtdParcelas.ParamByName('NUMDUPLICATA').AsString := fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString;
      fDmCob_Eletronica.qQtdParcelas.ParamByName('ID_PESSOA').AsInteger := fDmCob_Eletronica.cdsDuplicataID_PESSOA.AsInteger;
      fDmCob_Eletronica.qQtdParcelas.ParamByName('DTEMISSAO').AsDate := fDmCob_Eletronica.cdsDuplicataDTEMISSAO.AsDateTime;
      fDmCob_Eletronica.qQtdParcelas.Open;
      TotalParcelas := fDmCob_Eletronica.qQtdParcelasCONTADOR.AsInteger;
      fDmCob_Eletronica.qQtdParcelas.Close;
      {if fDmCob_Eletronica.cdsDuplicataID_CONTRATO.AsInteger > 0 then
      begin
        fDmCob_Eletronica.qContratoParcela.ParamByName('ID').AsInteger := fDmCob_Eletronica.cdsDuplicataID_CONTRATO.AsInteger;
        fDmCob_Eletronica.qContratoParcela.Open;
        TotalParcelas := fDmCob_Eletronica.qContratoParcelaQTD_PARCELA.AsInteger;
        fDmCob_Eletronica.qContratoParcela.Close;
      end;}
    end;

    DataProcessamento := Now;
    //11/03/2016
    //if not(fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.IsNull) and (trim(fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString) <> '')  then
    //  Carteira := fDmCob_Eletronica.cdsDuplicataCOD_CARTEIRA.AsString
    //else
     // Carteira := fDmCob_Eletronica.cdsContasCOD_CARTEIRA.AsString;
{    ModalidadeCarteira := fDmCob_Eletronica.cdsContasCOD_CARTEIRA.AsString;
    if fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '104' then
    begin
      if ModalidadeCarteira = '11' then
        CarteiraEnvio := tceBanco
      else
        CarteiraEnvio := tceCedente;
    end;}
    fDmCob_Eletronica.prc_Verificar_Carteira;
    if trim(fDmCob_Eletronica.vCod_Carteira_Red) <> '' then
      Carteira := fDmCob_Eletronica.vCod_Carteira_Red
    else
      Carteira := fDmCob_Eletronica.vCod_Carteira;

    if fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '041' then //Somente banco Banrisul
    begin
      if Carteira = 'H' then
        CodigoMora := '0'
      else if (Carteira = 'N') or (Carteira = 'R') or (Carteira = 'S') or (Carteira = 'X') then
        CodigoMora := ' '
      else
        CodigoMora := fDmCob_Eletronica.cdsContasCODMORA.AsString;
    end;
    if (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S') and (cbImpressao.ItemIndex = 0) then
      fDmCob_Eletronica.vGera_NossoNumero := 'N';

    if ((fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.IsNull) or (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString = '')) and
       (fDmCob_Eletronica.vGera_NossoNumero = 'S') then
    begin
      //Inc(fdmCob_Eletronica.xNossoNum);
      fdmCob_Eletronica.xNossoNum := fdmCob_Eletronica.xNossoNum + 1;
      //Inc(fdmCob_Eletronica.xNossoNum);
      vNossoNumAux := IntToStr(fdmCob_Eletronica.xNossoNum);
      vTamAux := ACBrBoleto.Banco.CalcularTamMaximoNossoNumero(Carteira, vNossoNumAux);
      //NossoNumero := IntToStrZero(fdmCob_Eletronica.xNossoNum,8);
      //aqui 14/04/2016
      if (fDmCob_Eletronica.cdsContasACBR_USAR_MONTAR_NOSSONUMERO.AsString = 'S') and (fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger = 17) then //se for cobrança SICREDI
        NossoNumero := FormatFloat('00000000', (fdmCob_Eletronica.xNossoNum))
      else
        NossoNumero := IntToStrZero(fdmCob_Eletronica.xNossoNum, vTamAux);
      if fDmCob_Eletronica.cdsContasACBR_USAR_MONTAR_NOSSONUMERO.AsString = 'S' then
        fDmCob_Eletronica.vNossoNumero_Montado := ACBrBoleto.Banco.MontarCampoNossoNumero(Titulo)
      else
        fDmCob_Eletronica.vNossoNumero_Montado := NossoNumero;

      //if (fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsString = '01') and (Length(fDmCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString) > 6) then
       //NossoNumero := fDmCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString + NossoNumero;
      //  NossoNumero := NossoNumero;
      //NossoNumero := ACBrBoleto.Banco.MontarCampoNossoNumero(Titulo);
    end
    else
    begin
      if (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO_SEQ.AsInteger > 0) and not (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO_SEQ.IsNull) then
      begin
        if (fDmCob_Eletronica.cdsContasACBR_USAR_MONTAR_NOSSONUMERO.AsString = 'S') and (fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger = 17) then //se for cobrança SICREDI
          //NossoNumero := FormatFloat('00000000',(fDmCob_Eletronica.cdsDuplicataNOSSONUMERO_SEQ.AsInteger)) + '0'
          NossoNumero := FormatFloat('00000000', (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO_SEQ.AsInteger))
          //NossoNumero := Monta_Numero(fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString,0)
        else
          NossoNumero := fDmCob_Eletronica.cdsDuplicataNOSSONUMERO_SEQ.AsString
      end
      else if (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString <> '') and not (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.IsNull) then
        NossoNumero := fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString
      else
        NossoNumero := '';
      fDmCob_Eletronica.vNossoNumero_Montado := fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString;
      NossoNumero := Monta_Numero(NossoNumero, 0);
      if (NossoNumero <> '') and (StrToInt(NossoNumero) = 0) then
        NossoNumero := '';
    end;

    {if (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.IsNull) or
       (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString = '') then
    begin
      Inc(fdmCob_Eletronica.xNossoNum);
      NossoNumero := IntToStrZero(fdmCob_Eletronica.xNossoNum,8);
    end
    else
      NossoNumero := IntToStrZero(fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsInteger,8);}

    SeuNumero := fDmCob_Eletronica.cdsDuplicataFILIAL.AsString + '.' + fDmCob_Eletronica.cdsDuplicataID.AsString;
    if fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString <> 'S' then
      EmissaoBoleto := '2'
    else if (trim(fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString) = '') or (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.IsNull) or
            (fDmCob_Eletronica.cdsDuplicataEMISSAO_BOLETO.AsString = '') or (fDmCob_Eletronica.cdsDuplicataEMISSAO_BOLETO.IsNull) then
      EmissaoBoleto := IntToStr(cbImpressao.ItemIndex + 1)
    else
      EmissaoBoleto := fDmCob_Eletronica.cdsDuplicataEMISSAO_BOLETO.AsString;
    ValorDocumento := fDmCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
    if fDmCob_Eletronica.vValor_Com_Juros > 0 then
    begin
      ValorCorrigido := fDmCob_Eletronica.vValor_Com_Juros;
      ValorMultaJuros := fDmCob_Eletronica.vValor_Multa_Juros;
    end;
    if fDmCob_Eletronica.cdsDuplicataTAXA_BANCO.AsString = 'S' then
    begin
      ValorTaxaBancaria := fDmCob_Eletronica.cdsContasVLR_TAXA.AsFloat;
      ValorDocumento := ValorDocumento + fDmCob_Eletronica.cdsContasVLR_TAXA.AsFloat;
    end;

    //if not fDmCob_Eletronica.cdsDuplicataNUM_CONTRATO.IsNull then
    //  Sacado.NomeSacado := fDmCob_Eletronica.cdsDuplicataNUM_CONTRATO.AsString + '-' +
    //                       fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString
    //else
    Sacado.NomeSacado := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
    //16/05/2016 acrescentado endereço de cobrança (verifica se tem o endereço de cobrança)
    if (trim(fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '') and (fDmCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString <> '') then
    begin
      if trim(Monta_Numero(fDmCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString, 0)) <> '' then
        Sacado.CNPJCPF := fDmCob_Eletronica.cdsDuplicataCNPJ_CPG_PGTO.AsString
      else
        Sacado.CNPJCPF := fDmCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString;
      Sacado.Logradouro := fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString;
      Sacado.Numero := fDmCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString;
      Sacado.Complemento := fDmCob_Eletronica.cdsDuplicataCOMPLEMENTO_END.AsString;
      Sacado.Bairro := fDmCob_Eletronica.cdsDuplicataBAIRRO_PGTO.AsString;
      Sacado.Cidade := fDmCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString;
      Sacado.UF := fDmCob_Eletronica.cdsDuplicataUF_PGTO.AsString;
      Sacado.CEP := Monta_Numero(fDmCob_Eletronica.cdsDuplicataCEP_PGTO.AsString,0);
      if trim(fDmCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString) <> '' then
      begin
        case AnsiIndexStr(fDmCob_Eletronica.cdsDuplicataPESSOA_PGTO.AsString, ['F', 'J']) of
          0:
            Sacado.Pessoa := pFisica;
          1:
            Sacado.Pessoa := pJuridica;
        end;
      end
      else
      begin
        case AnsiIndexStr(fDmCob_Eletronica.cdsDuplicataPESSOA.AsString, ['F', 'J']) of
          0:
            Sacado.Pessoa := pFisica;
          1:
            Sacado.Pessoa := pJuridica;
        end;
      end;
    end
    else
    begin
      Sacado.CNPJCPF := fDmCob_Eletronica.cdsDuplicataCNPJ_CPF.AsString;
      Sacado.Logradouro := fDmCob_Eletronica.cdsDuplicataENDERECO.AsString;
      Sacado.Numero := fDmCob_Eletronica.cdsDuplicataNUM_END.AsString;
      Sacado.Bairro := fDmCob_Eletronica.cdsDuplicataBAIRRO.AsString;
      Sacado.Cidade := fDmCob_Eletronica.cdsDuplicataCIDADE.AsString;
      Sacado.UF := fDmCob_Eletronica.cdsDuplicataUF.AsString;
      Sacado.CEP := Monta_Numero(fDmCob_Eletronica.cdsDuplicataCEP.AsString,0);
      case AnsiIndexStr(fDmCob_Eletronica.cdsDuplicataPESSOA.AsString, ['F', 'J']) of
        0:
          Sacado.Pessoa := pFisica;
        1:
          Sacado.Pessoa := pJuridica;
      end;
    end;
    ValorAbatimento := 0;
    LocalPagamento := fDmCob_Eletronica.cdsContasLOCAL_PAGAMENTO.AsString;
    ValorMoraJuros := fDmCob_Eletronica.cdsContasPERC_JUROS.AsCurrency / 100 * fDmCob_Eletronica.cdsDuplicataVLR_PARCELA.AsFloat;
    ValorDesconto := 0;
    ValorAbatimento := 0;
    //DataMoraJuros     := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime +
    //                     fDmCob_Eletronica.cdsContasDIAS_PROTESTO.AsInteger;
    //DataMoraJuros     := null;
    DataDesconto := 0;
    DataAbatimento := 0;
    DataProtesto := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime + fDmCob_Eletronica.cdsContasDIAS_PROTESTO.AsInteger;
    QtdDiaProtesto := fDmCob_Eletronica.cdsContasDIAS_PROTESTO.AsInteger;

    vTipoProtesto := fDmCob_Eletronica.fnc_busca_tipo_instrucao(fDmCob_Eletronica.cdsContasID_BANCO.AsInteger,
                                                                fDmCob_Eletronica.cdsContasID_INSTRUCAO1.AsInteger,
                                                                fDmCob_Eletronica.cdsContasID_INSTRUCAO2.AsInteger);
    if vTipoProtesto = 'U' then
      Titulo.TipoDiasProtesto := diUteis
    else
      Titulo.TipoDiasProtesto := diCorridos;

   // Sicredi - Quando qtde de dias > 4 = dias úteis senão dias corridos

    PercentualMulta := fDmCob_Eletronica.cdsContasPERC_MULTA.AsCurrency;
    Mensagem.Text := fDmCob_Eletronica.cdsContasMENSAGEM_FIXA.AsString;

    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Close;
    fDmCob_Eletronica.sdsCob_Tipo_Cadastro.CommandText := fDmCob_Eletronica.ctCobTpCadastro + ' WHERE ID_BANCO = ' + IntToStr(vIdBanco);
    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Open;

    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.IndexFieldNames := 'ID';
    if fDmCob_Eletronica.cdsContasID_INSTRUCAO1.AsInteger > 0 then
    begin
      fDmCob_Eletronica.cdsCob_Tipo_Cadastro.FindKey([fDmCob_Eletronica.cdsContasID_INSTRUCAO1.AsInteger]);
      if ACBrBoleto1.Banco.Numero = 33 then
        Instrucao1 := trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString)
      else
        Instrucao1 := padL(trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString), 2, '0');
    end;
    if fDmCob_Eletronica.cdsContasID_INSTRUCAO2.AsInteger > 0 then
    begin
      fDmCob_Eletronica.cdsCob_Tipo_Cadastro.FindKey([fDmCob_Eletronica.cdsContasID_INSTRUCAO2.AsInteger]);
      if ACBrBoleto1.Banco.Numero = 33 then
        Instrucao2 := trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString)
      else
        Instrucao2 := padL(trim(fDmCob_Eletronica.cdsCob_Tipo_CadastroCODIGO.AsString), 2, '0');
    end;
    //05/12/2014
    if (fDmCob_Eletronica.cdsContasTIPO_IMPRESSAO.AsString = 'C') or (fDmCob_Eletronica.cdsContasCOD_BANCO.AsString <> '748') then
      Parcela := fDmCob_Eletronica.cdsDuplicataPARCELA.AsInteger
    else
      Parcela := 0;

    //31/01/2017  
    if (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger <> fDmCob_Eletronica.cdsContasFILIAL.AsInteger) and
       (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S') then
    begin
      fDmCob_Eletronica.qContas_Sacado.Close;
      fDmCob_Eletronica.qContas_Sacado.ParamByName('ID').AsInteger := fDmCob_Eletronica.cdsContasID.AsInteger;
      fDmCob_Eletronica.qContas_Sacado.ParamByName('FILIAL').AsInteger := fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger;
      fDmCob_Eletronica.qContas_Sacado.Open;
      if not fDmCob_Eletronica.qContas_Sacado.IsEmpty then
      begin
        Sacado.Avalista := fDmCob_Eletronica.qContas_SacadoNOME.AsString;
        Sacado.SacadoAvalista.NomeAvalista := TirarAcento(fDmCob_Eletronica.qContas_SacadoNOME.AsString);
        Sacado.SacadoAvalista.Bairro := TirarAcento(fDmCob_Eletronica.qContas_SacadoBAIRRO.AsString);
        Sacado.SacadoAvalista.CEP := Monta_Numero(fDmCob_Eletronica.qContas_SacadoCEP.AsString, 8);
        Sacado.SacadoAvalista.Cidade := TirarAcento(fDmCob_Eletronica.qContas_SacadoCIDADE.AsString);
        Sacado.SacadoAvalista.CNPJCPF := Monta_Numero(fDmCob_Eletronica.qContas_SacadoCNPJ_CPF.AsString, 0);
        Sacado.SacadoAvalista.Complemento := fDmCob_Eletronica.qContas_SacadoCOMPLEMENTO_END.AsString;
        Sacado.SacadoAvalista.Logradouro := TirarAcento(fDmCob_Eletronica.qContas_SacadoENDERECO.AsString + ',' + fDmCob_Eletronica.qContas_SacadoNUM_END.AsString);
        Sacado.SacadoAvalista.UF := fDmCob_Eletronica.qContas_SacadoUF.AsString;
        Sacado.SacadoAvalista.InscricaoNr := fDmCob_Eletronica.qContas_SacadoCOD_SACADO.AsString;
        //Sacado.SacadoAvalista.Numero
      end;
    end;
    //***********************
    //aqui é a ocorrência (Entrada de Título, Baixa de Título, Alteração de vencimento, etc...) 10/04/2018
    //if fDmCob_Eletronica.cdsDuplicataid_
    if (fDmCob_Eletronica.qParametros_FinMANTER_DUP_CANC.AsString = 'S') and (fDmCob_Eletronica.cdsDuplicataID_OCORRENCIA_COB.AsInteger > 0) then
    begin
      if fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Locate('ID',fDmCob_Eletronica.cdsDuplicataID_OCORRENCIA_COB.AsInteger, [loCaseInsensitive]) then
      begin
        if fDmCob_Eletronica.cdsCob_Tipo_CadastroTIPO_OCO.AsString = 'RGE' then
          OcorrenciaOriginal.Tipo := toRemessaRegistrar
        else
        if fDmCob_Eletronica.cdsCob_Tipo_CadastroTIPO_OCO.AsString = 'VCT' then
          OcorrenciaOriginal.Tipo := toRemessaAlterarVencimento
        else
        if fDmCob_Eletronica.cdsCob_Tipo_CadastroTIPO_OCO.AsString = 'PBX' then
          OcorrenciaOriginal.Tipo := toRemessaBaixar;
      end
      else
        OcorrenciaOriginal.Tipo := toRemessaRegistrar;
    end
    else
      OcorrenciaOriginal.Tipo := toRemessaRegistrar;
  end;
  result := Titulo.NossoNumero;

end;

procedure TfCobRemessa.btnImp_BoletoClick(Sender: TObject);
var
  vContadorAux: Integer;
  vMsgAux: string;
  vMsgDt: string;
begin
  if not fnc_Verificar then
    exit;
  if (cbImpressao.ItemIndex = 0) and (cbImpressao.Visible) then
    exit;

  vTipo_Config_Email := 3;
  fDmCob_Eletronica.vValor_Com_Juros := 0;

  vEmail_Fortes := vEmail_Envio_Rem;
  vEmail_Assunto_Fortes := vAssunto_Email_Rem;
  vMsgAux := '';
  vMsgDt := '';
  vContadorAux := 0;

  ACBrBoleto1.ListadeBoletos.Clear;
  fdmCob_Eletronica.buscaNossoNumero;
  fDmCob_Eletronica.cdsDuplicata.First;
  while not fDmCob_Eletronica.cdsDuplicata.Eof do
  begin
    if not SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;
    if (fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime < Date) and ((fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.IsNull) or
       (fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString = '')) then
    begin
      vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' vencida!';
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;
    if (fDmCob_Eletronica.cdsDuplicataTIPO_REG.AsString = 'NTS') then
    begin
      if (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.IsNull) or (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.AsString = '')  then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' com nota pendente de envio';
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;
    end;
    if (fDmCob_Eletronica.cdsDuplicataID_NOTA_SERVICO.AsInteger > 0) then
    begin
      if (fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.AsString = '') or (fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.IsNull) then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' com nota de serviço pendente de envio';
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;
    end;

    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (trim(fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString) <> '') then
    begin
      if (trim(fDmCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString) = '') or (trim(fDmCob_Eletronica.cdsDuplicataUF_PGTO.AsString) = '') or
         (trim(fDmCob_Eletronica.cdsDuplicataCEP_PGTO.AsString) = '') or (trim(fDmCob_Eletronica.cdsDuplicataBAIRRO_PGTO.AsString) = '') or
         (trim(fDmCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString) = '') then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' falta informação no dados do end. de cobrança!!';
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;
    end;

    //if (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue) and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString <> 'S') then
    if ((trim(RxDBLookupCombo1.Text) = '') and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString <> 'S')) or
       ((trim(RxDBLookupCombo1.Text) <> '') and (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue)) then
    begin
      vMsgAux := '   3) Verifique se a Filial informada é a mesma do título;';
      fDmCob_Eletronica.cdsDuplicata.Last;
      Continue;
    end;
    fDmCob_Eletronica.prc_Abrir_Carteira(fDmCob_Eletronica.cdsContasID_BANCO.AsInteger);
    fDmCob_Eletronica.prc_Verificar_Carteira;
    if (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S') and (cbImpressao.ItemIndex = 0) then
      fDmCob_Eletronica.vGera_NossoNumero := 'N';

    if fDmCob_Eletronica.vGera_NossoNumero = 'S' then
    begin
      vContadorAux := vContadorAux + 1;
      geraCabecalhoAcbr;
      fDmCob_Eletronica.vNossoNumero := geraRegistroAcbr;
      fDMCob_Eletronica.prc_Gravar_Duplicata('I');
    end;
    fDmCob_Eletronica.cdsDuplicata.Next;
  end;
  if vContadorAux <= 0 then
  begin
    if trim(vMsgDt) <> '' then
      MessageDlg(vMsgDt, mtInformation, [mbOk], 0)
    else
      MessageDlg('*** Nenhum boleto impresso!' + #13 + 'Motivo: ' + #13 + '   1) Verifique se foi selecionado algum título;' + #13 +
                 '   2) Verifique se a carteira está marcada para impressão na Empresa ou no Banco;' + #13 + vMsgAux + #13, mtInformation, [mbOk], 0);
    exit;
  end;

  try
    //Aqui foi tirado e colocado no mesmo transaction que grava o nosso número nas duplicatas
    {fDmCob_Eletronica.cdsContas_calculo.Edit;
    fDmCob_Eletronica.cdsContas_calculoSEQ_NOSSONUMERO.AsString := IntToStr(fdmCob_Eletronica.xNossoNum);
    fDmCob_Eletronica.cdsContas_calculo.Post;
    fDmCob_Eletronica.cdsContas_calculo.ApplyUpdates(0);}
    try
      fDMRel := TDMRel.Create(DMRel);
      if (ACBrBoleto1.Banco.Numero = 104) then
      begin
        if fDmCob_Eletronica.cdsContasTIPO_IMPRESSAO.AsString = 'C' then
          ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne
        else
          ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
      end;
      ACBrBoleto1.Imprimir;
    finally
      FreeAndNil(fDMRel);
    end
//    ACBrBoleto1.GerarPDF;
  except
    MessageDlg('Erro ao imprimir os boletos!' + #13 +
               '(Verifique dados do cedente / conta e dígito da agência)!', mtWarning, [mbOK], 0);
  end;
end;

procedure TfCobRemessa.RxDBLookupCombo2Change(Sender: TObject);
begin
  fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Close;
  if RxDBLookupCombo2.Value <> '' then
  begin
    vIdBanco := fDmCob_Eletronica.cdsContasID_BANCO.AsInteger;
    fDmCob_Eletronica.sdsCob_Tipo_Cadastro.CommandText := fDmCob_Eletronica.ctCobTpCadastro + ' WHERE ID_BANCO = ' + IntToStr(vIdBanco) + ' AND TIPO_REG = ''OCO''';
    fDmCob_Eletronica.cdsCob_Tipo_Cadastro.Open;

    RxDBLookupCombo3.Value := fDmCob_Eletronica.cdsContasID_OCORRENCIA.AsString;
    fDmCob_Eletronica.prc_Abrir_Carteira(fDmCob_Eletronica.cdsContasID_BANCO.AsInteger);
  end;
  prc_ConfiguraACBR;

  //btnLocalizar.Click;
end;

procedure TfCobRemessa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vID_Conta_Cob := 0;
  fDmCob_Eletronica.prc_Abrir_Contas(True);
  Tag := 0;
  Edit1.Clear;
  vEmail_Envio_Rem := '';
  vAssunto_Email_Rem := '';
  Action := caFree;
end;

procedure TfCobRemessa.prc_ConfiguraACBR;
var
  vExtensao: string;
begin
  if fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.IsNull then
  begin
    ShowMessage('Nenhum banco configurado para a cobrança (ACBR)!');
    Exit;
  end;

  if fDmCob_Eletronica.cdsContasACBR_LAYOUTREMESSA.AsString = 'C240' then
    ACBrBoleto1.LayoutRemessa := C240
  else
    ACBrBoleto1.LayoutRemessa := C400;

  case fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger of
    1:
      ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil;
    2:
      ACBrBoleto1.Banco.TipoCobranca := cobBancoDoNordeste;
    3:
      ACBrBoleto1.Banco.TipoCobranca := cobBancoMercantil;
    4:
      ACBrBoleto1.Banco.TipoCobranca := cobBancoob;
    5:
      ACBrBoleto1.Banco.TipoCobranca := cobBanestes;
    6:
      ACBrBoleto1.Banco.TipoCobranca := cobBanrisul;
    7:
      ACBrBoleto1.Banco.TipoCobranca := cobBicBanco;
    8:
      ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
    9:
      ACBrBoleto1.Banco.TipoCobranca := cobBradescoSICOOB;
    10:
      ACBrBoleto1.Banco.TipoCobranca := cobBRB;
    11:
      ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica;
    12:
      ACBrBoleto1.Banco.TipoCobranca := cobCaixaSicob;
    13:
      ACBrBoleto1.Banco.TipoCobranca := cobHSBC;
    14:
      ACBrBoleto1.Banco.TipoCobranca := cobItau;
    15:
      ACBrBoleto1.Banco.TipoCobranca := cobNenhum;
    16:
      ACBrBoleto1.Banco.TipoCobranca := cobSantander;
    17:
      ACBrBoleto1.Banco.TipoCobranca := cobSicred;
  end;

  ACBrBoleto1.ACBrBoletoFC.DirLogo := fDmCob_Eletronica.cdsContasBANCO_LOGO.AsString;
//  ACBrBoleto1.ACBrBoletoFC.ArquivoLogo := fDmCob_Eletronica.cdsContasBANCO_LOGO.AsString;
  ACBrBoleto1.ACBrBoletoFC.Filtro := fiNenhum;
  ACBrBoleto1.Cedente.Nome := fDmCob_Eletronica.cdsFilialNOME.AsString;
  ACBrBoleto1.Cedente.CodigoCedente := fDmCob_Eletronica.cdsContasCOD_CEDENTE.AsString;
  ACBrBoleto1.Cedente.Agencia := fDmCob_Eletronica.cdsContasAGENCIA.AsString;
  ACBrBoleto1.Cedente.AgenciaDigito := fDmCob_Eletronica.cdsContasDIG_AGENCIA.AsString;
  ACBrBoleto1.Cedente.Conta := fDmCob_Eletronica.cdsContasNUMCONTA.AsString;
  ACBrBoleto1.Cedente.ContaDigito := fDmCob_Eletronica.cdsContasDIG_CONTA.AsString;
  ACBrBoleto1.Cedente.Convenio := fDmCob_Eletronica.cdsContasCOD_TRANSMISSAO.AsString;
  ACBrBoleto1.Cedente.UF := fDmCob_Eletronica.cdsFilialUF.AsString;
  ACBrBoleto1.DirArqRemessa := fDmCob_Eletronica.cdsContasEND_ARQUIVO_REM.AsString;
  //ACBrBoleto1.NomeArqRemessa        := 'COB_' + FormatDateTime('YYYYMMDD_HHMMSS',Now)+'.TXT';
  vExtensao := fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString;
  if fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger = 17 then //se for cobrança SICREDI
  begin
    ACBrBoleto1.NomeArqRemessa := fDmCob_Eletronica.Monta_NomeSicredi('', fDmCob_Eletronica.cdsContasCOD_CEDENTE.AsString);
    if fDmCob_Eletronica.vSeq_Remessa_Dia > 1 then
      vExtensao := 'REM'
    else
      vExtensao := fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString;
  end
  else
  //Colocado para o Bradesco 30/11/2016
  if fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger = 8 then //se for cobrança Bradesco
  begin
    ACBrBoleto1.NomeArqRemessa := fDmCob_Eletronica.cdsContasINICIAL_NOME_ARQ_REMESSA.AsString + FormatFloat('00', DayOf(Date)) + FormatFloat('00', MonthOf(Date)) + FormatFloat('00', fDmCob_Eletronica.vSeq_Remessa_Dia);
    if fDmCob_Eletronica.cdsContasREMESSA_TESTE.AsString = 'S' then
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.TST'
    else
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.REM';
  end
  else
  if fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger = 11 then //se for cobrança CEF
  begin
    ACBrBoleto1.NomeArqRemessa := fDmCob_Eletronica.cdsContasINICIAL_NOME_ARQ_REMESSA.AsString + FormatFloat('00', DayOf(Date)) + formatFloat('0000', CurrencyEdit1.AsInteger) + FormatFloat('0', CurrencyEdit2.AsInteger);
    if trim(fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString) = '' then
      vExtensao := 'REM'
    else
      vExtensao := fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString;
  end
  else
  begin
    ACBrBoleto1.NomeArqRemessa := fDmCob_Eletronica.cdsContasINICIAL_NOME_ARQ_REMESSA.AsString + FormatFloat('00', fDmCob_Eletronica.cdsContasFILIAL.AsInteger) + FormatFloat('00', MonthOf(Date)) + FormatFloat('00', DayOf(Date));
    if trim(fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString) = '' then
      vExtensao := 'REM'
    else
      vExtensao := fDmCob_Eletronica.cdsContasEXTENSAO_ARQ_REM.AsString;
  end;

  if (fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger <> 8) and (fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger <> 11) then //se for cobrança Bradesco
  begin
    if fDmCob_Eletronica.vSeq_Remessa_Dia = 1 then
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + vExtensao
    else if fDmCob_Eletronica.vSeq_Remessa_Dia < 100 then
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + Copy(vExtensao, 1, 1) + FormatFloat('00', fDmCob_Eletronica.vSeq_Remessa_Dia)
    else
      ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + FormatFloat('000', fDmCob_Eletronica.vSeq_Remessa_Dia);
  end;
  if fDmCob_Eletronica.cdsContasACBR_TIPOCOBRANCA.AsInteger = 11 then //se for cobrança cef
  begin
    ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + vExtensao
  end;

end;

procedure TfCobRemessa.btnImp_RemessaClick(Sender: TObject);
var
  vAux: string;
begin
  //if fDMCob_Eletronica.vNum_Remessa <= 0 then
  begin
    vAux := InputBox('Impressão da Remessa', 'Informe o número da remessa: ', IntToStr(fDMCob_Eletronica.vNum_Remessa));
    vAux := Monta_Numero(vAux, 0);
    if Trim(vAux) = '' then
      exit;
    fDMCob_Eletronica.vNum_Remessa := StrToInt(vAux);
  end;

  if not (fDMCob_Eletronica.cdsDuplicata.Active) or (fDMCob_Eletronica.cdsDuplicata.IsEmpty) then
    ConsultarDuplicatas;

  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue
  else
    vFilial := 0;

  fDMCob_Eletronica.cdsDuplicata.First;
  fRelRemessa := TfRelRemessa.Create(Self);
  fRelRemessa.vAcbr := True;
  fRelRemessa.fDMCob_Eletronica := fDMCob_Eletronica;
  fRelRemessa.vOpcaoImp := '(Banco: ' + RxDBLookupCombo2.Text + ')' + ' (Nº Remessa: ' + IntToStr(fDMCob_Eletronica.vNum_Remessa) + ')';
  fRelRemessa.RLReport1.PreviewModal;
  fRelRemessa.RLReport1.Free;
  FreeAndNil(fRelRemessa);
end;

function TfCobRemessa.fnc_Verificar: Boolean;
var
  vMsgAux: string;
begin
  Result := True;
  vMsgAux := '';
  if trim(RxDBLookupCombo2.Text) = '' then
    vMsgAux := vMsgAux + #13 + '*** Conta não informada!';
  if (trim(RxDBLookupCombo1.Text) = '') and (fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString <> 'S') then
    vMsgAux := vMsgAux + #13 + '*** Filial não informada!';
  if trim(vMsgAux) = '' then
  begin
    fDmCob_Eletronica.cdsContas.Locate('ID', RxDBLookupCombo2.KeyValue, [loCaseInsensitive]);
    //if fDmCob_Eletronica.cdsContasFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue then
    if (trim(RxDBLookupCombo1.Text) <> '') and (fDmCob_Eletronica.cdsContasFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue) then
      vMsgAux := vMsgAux + #13 + '*** Banco escolhido não pertence à filial!';
  end;
  if trim(vMsgAux) <> '' then
  begin
    Result := False;
    MessageDlg(vMsgAux, mtWarning, [mbOK], 0);
  end;
end;

procedure TfCobRemessa.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    btnLocalizarClick(Sender);
end;

procedure TfCobRemessa.btnEnviar_EmailClick(Sender: TObject);
var
  vContadorAux: Integer;
  vMsgAux: string;
  vRequer_SSL, vConfirmacao: Boolean;
  lista_Anexo: TStringList;
  vSenhaEmail: string;
  vCNPJ_Filial: string;
  vContador_Envio: Integer;
  vNomeArqAux: string;
  vMSGAux2: WideString;
  vLocalServidorNFe: string;
begin
  //27/11/2015
  //31/01/2017
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    if (RxDBLookupCombo2.Text <> '') and (RxDBLookupCombo2.KeyValue <> fDmCob_Eletronica.cdsContasID.AsInteger) then
      fDmCob_Eletronica.cdsContas.Locate('ID', RxDBLookupCombo2.KeyValue, [loCaseInsensitive]);
    prc_Abrir_Filial(fDmCob_Eletronica.cdsContasFILIAL.AsInteger);
  end
  else
    prc_Abrir_Filial(RxDBLookupCombo1.KeyValue);

  if fDmCob_Eletronica.qFilial_Email.IsEmpty then
  begin
    MessageDlg('*** Email da ' + fDmCob_Eletronica.qFilialNOME.AsString + ', Não configurado para envio!', mtInformation, [mbOk], 0);
    exit;
  end;
  //***************
  if not fnc_Verificar then
    exit;
  cbImpressao.ItemIndex := 1;

  vNomeArqAux := ExtractFilePath(Application.ExeName) + '..\Boleto\';
  if not DirectoryExists(vNomeArqAux) then
    CreateDir(vNomeArqAux);

  vMsgAux := '';
  vMSGAux2 := '';
  Lista_Anexo := TStringList.Create;
  vCorpo_Email := TStringList.Create;
  vContadorAux := 0;
  vContador_Envio := 0;
  fdmCob_Eletronica.buscaNossoNumero;
  fDmCob_Eletronica.cdsDuplicata.First;
  while not fDmCob_Eletronica.cdsDuplicata.Eof do
  begin
    ACBrBoleto1.ListadeBoletos.Clear;
    if not SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;
    if (trim(RxDBLookupCombo1.Text) <> '') and (fDmCob_Eletronica.cdsDuplicataFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue) then
    begin
      vMsgAux := vMsgAux + #13 + 'Nº Título ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + ' Parcela ' +
                 fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ', Não enviou email!';
      fDmCob_Eletronica.cdsDuplicata.Next;
      Continue;
    end;

    if (fDmCob_Eletronica.cdsDuplicataTIPO_REG.AsString = 'NTS') then
    begin
      if (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.IsNull) or (fDmCob_Eletronica.cdsDuplicataNFECHAVEACESSO.AsString = '')  then
      begin
        vMsgAux := vMsgAux + #13 + 'Nº Título ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' com nota pendente de envio';
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;
    end;

    if (fDmCob_Eletronica.cdsDuplicataID_NOTA_SERVICO.AsInteger > 0) then
    begin
      if (fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.AsString = '') or (fDmCob_Eletronica.cdsDuplicataCOD_AUTENCIDADE_RET.IsNull) then
      begin
        vMsgAux := vMsgAux + #13 + '*** Duplicata: ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                  fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + ' com nota de serviço pendente de envio';
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;
    end;

    fDmCob_Eletronica.prc_Verificar_Carteira;
    if (fDmCob_Eletronica.vGera_NossoNumero = 'S') and (trim(fDmCob_Eletronica.cdsDuplicataEMAIL_PGTO.AsString) = '') then
    begin
      vMSGAux2 := vMSGAux2 + #13 + '*** Cliente ' + fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString + ', sem email cadastrado!';
    end
    else if (fDmCob_Eletronica.vGera_NossoNumero = 'S') and (trim(fDmCob_Eletronica.cdsDuplicataEMAIL_PGTO.AsString) <> '') then
    begin
      //prc_Abrir_Filial;
      lista_Anexo.Clear;
      vContadorAux := vContadorAux + 1;
      geraCabecalhoAcbr;
      fDmCob_Eletronica.vNossoNumero := geraRegistroAcbr;
      fDMCob_Eletronica.prc_Gravar_Duplicata('E');
      ACBrBoleto1.ACBrBoletoFC.NomeArquivo := vNomeArqAux + 'Boleto_' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + '_' +
                                              fDmCob_Eletronica.cdsDuplicataPARCELA.AsString + '.pdf';
      ACBrBoleto1.GerarPDF;
      lista_Anexo.Add(ACBrBoleto1.ACBrBoletoFC.NomeArquivo);
      vRequer_SSL := (fDmCob_Eletronica.qFilial_EmailSMTP_REQUER_SSL.AsString = 'S');
      vConfirmacao := (fDmCob_Eletronica.qFilial_EmailSOLICITAR_CONFIRMACAO.AsString = 'S');
      prc_Monta_Corpo_email;

      vSenhaEmail := Descriptografar(fDmCob_Eletronica.qFilial_EmailBASE.AsInteger, 'ssfacil', fDmCob_Eletronica.qFilial_EmailSMTP_SENHA.AsString);
      vCNPJ_Filial := Monta_Texto(fDmCob_Eletronica.qFilial_EmailCNPJ_CPF_FILIAL.AsString, 14);
      vLocalServidorNFe := fDmCob_Eletronica.qParametrosLOCALSERVIDORNFE.AsString;
      if trim(fDmCob_Eletronica.qFilialLOCALSERVIDORNFE.AsString) <> '' then
        vLocalServidorNFe := fDmCob_Eletronica.qFilialLOCALSERVIDORNFE.AsString;

      try
        EnviarEmail2(vLocalServidorNFe, vCNPJ_Filial, fDmCob_Eletronica.qFilial_EmailREMETENTE_EMAIL.AsString,
                     fDmCob_Eletronica.qFilial_EmailREMETENTE_NOME.AsString, fDmCob_Eletronica.qFilial_EmailSMTP_CLIENTE.AsString,
                     fDmCob_Eletronica.qFilial_EmailSMTP_PORTA.AsString, fDmCob_Eletronica.qFilial_EmailSMTP_REQUER_SSL.AsString,
                     fDmCob_Eletronica.qFilial_EmailSMTP_USUARIO.AsString, vSenhaEmail, fDmCob_Eletronica.qFilial_EmailSOLICITAR_CONFIRMACAO.AsString,
                     fDmCob_Eletronica.cdsDuplicataEMAIL_PGTO.AsString, '', 'Boleto Título Nº ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString +
                     fDmCob_Eletronica.vSeparadorParc + fDmCob_Eletronica.cdsDuplicataPARCELA.AsString, vDadosCorpoEmail, lista_Anexo);
        vContador_Envio := vContador_Envio + 1;
        if not fDmCob_Eletronica.vGravou_Hist then
          fDmCob_Eletronica.prc_Gravar_Historico('E');
      except
        MessageDlg('Erro ao enviar email!', mtWarning, [mbOK], 0);
      end;
    end;
    fDmCob_Eletronica.cdsDuplicata.Next;
  end;

  vMsgAux := 'Total de emails enviados: ' + IntToStr(vContador_Envio);
  if trim(vMSGAux2) <> ''  then
    vMsgAux := vMsgAux + #13 + #13 + 'Emails não enviados.....' + vMSGAux2;

  //MessageDlg('Total de emails enviados: ' + IntToStr(vContador_Envio) ,mtInformation,[mbOK],0);
  MessageDlg(vMsgAux, mtInformation, [mbOK], 0);

  {try
    if vContadorAux > 0 then
    begin
      fDmCob_Eletronica.cdsContas_calculo.Edit;
      fDmCob_Eletronica.cdsContas_calculoSEQ_NOSSONUMERO.AsString := IntToStr(fdmCob_Eletronica.xNossoNum);
      fDmCob_Eletronica.cdsContas_calculo.Post;
      fDmCob_Eletronica.cdsContas_calculo.ApplyUpdates(0);
    end;
  except
    MessageDlg('Erro ao gravar o nosso número atualizado!',mtWarning,[mbOK],0);
  end;}
  FreeAndNil(lista_Anexo);
  FreeAndNil(vCorpo_Email);
end;

procedure TfCobRemessa.ACBrMail1MailProcess(const aStatus: TMailStatus);
begin
  {case aStatus of
    pmsStartProcess:
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add('Iniciando processo de envio.');
    end;
    pmsConfigHeaders:
      Memo1.Lines.Add('Configurando o cabeçalho do e-mail.');
    pmsLoginSMTP:
      Memo1.Lines.Add('Logando no servidor de e-mail.');
    pmsStartSends:
      Memo1.Lines.Add('Iniciando os envios.');
    pmsSendTo:
      Memo1.Lines.Add('Processando lista de destinatários.');
    pmsSendCC:
      Memo1.Lines.Add('Processando lista CC.');
    pmsSendBCC:
      Memo1.Lines.Add('Processando lista BCC.');
    pmsSendReplyTo:
      Memo1.Lines.Add('Processando lista ReplyTo.');
    pmsSendData:
      Memo1.Lines.Add('Enviando dados.');
    pmsLogoutSMTP:
      Memo1.Lines.Add('Fazendo Logout no servidor de e-mail.');
    pmsDone:
    begin
      Memo1.Lines.Add('Terminando e limpando.');
      ProgressBar1.Position := ProgressBar1.Max;
    end;
  end;}
end;

procedure TfCobRemessa.prc_Monta_Corpo_Email;
begin
  vDadosCorpoEmail := '';
  vDadosCorpoEmail := 'EM ANEXO BOLETO nº ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + fDmCob_Eletronica.vSeparadorParc +
                      fDmCob_Eletronica.cdsDuplicataPARCELA.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + 'Beneficiário: ' + fDmCob_Eletronica.qFilialNOME.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + 'CNPJ:' + fDmCob_Eletronica.qFilialCNPJ_CPF.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + 'Endereço:' + fDmCob_Eletronica.qFilialENDERECO.AsString + ', ' + fDmCob_Eletronica.qFilialNUM_END.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + 'Cidade/UF:' + fDmCob_Eletronica.qFilialCIDADE.AsString + '/' + fDmCob_Eletronica.qFilialUF.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + 'Fone:' + fDmCob_Eletronica.qFilialDDD1.AsString + '/' + fDmCob_Eletronica.qFilialFONE.AsString;
  vDadosCorpoEmail := vDadosCorpoEmail + #13 + '';
  vEmail_Fortes_Corpo := vDadosCorpoEmail;

  {vCorpo_Email.Add('');
  vCorpo_Email.Add('EM ANEXO BOLETO nº ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString + '/' + fDmCob_Eletronica.cdsDuplicataPARCELA.AsString);
  vCorpo_Email.Add('Beneficiário: ' + fDmCob_Eletronica.qFilialNOME.AsString);
  vCorpo_Email.Add('CNPJ:' + fDmCob_Eletronica.qFilialCNPJ_CPF.AsString);
  vCorpo_Email.Add('Endereço:' + fDmCob_Eletronica.qFilialENDERECO.AsString + ', ' + fDmCob_Eletronica.qFilialNUM_END.AsString);
  vCorpo_Email.Add('Cidade/UF:' + fDmCob_Eletronica.qFilialCIDADE.AsString + '/' + fDmCob_Eletronica.qFilialUF.AsString);
  vCorpo_Email.Add('Fone:' + fDmCob_Eletronica.qFilialDDD1.AsString + '/' + fDmCob_Eletronica.qFilialFONE.AsString);
  vCorpo_Email.Add('');}
end;

procedure TfCobRemessa.prc_Abrir_Filial(ID: Integer);
begin
  fDmCob_Eletronica.qFilial.Close;
  fDmCob_Eletronica.qFilial.ParamByName('ID').AsInteger := ID;
  fDmCob_Eletronica.qFilial.Open;

  fDmCob_Eletronica.qFilial_Email.Close;
  fDmCob_Eletronica.qFilial_Email.ParamByName('ID').AsInteger := ID;
  fDmCob_Eletronica.qFilial_Email.Open;
end;

procedure TfCobRemessa.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if (RxDBLookupCombo2.Text <> '') and (RxDBLookupCombo2.KeyValue <> fDmCob_Eletronica.cdsContasID.AsInteger) then
    fDmCob_Eletronica.cdsContas.Locate('ID', RxDBLookupCombo2.KeyValue, [loCaseInsensitive]);
  NxLabel9.Visible := ((RxDBLookupCombo2.Text <> '') and (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S'));
  cbImpressao.Visible := ((RxDBLookupCombo2.Text <> '') and (fDmCob_Eletronica.cdsContasCONTROLA_EMISSAO_BOLETO.AsString = 'S'));

  if btnGerar_Remessa.Enabled then
  begin
    fDMCob_Eletronica.vNum_Remessa := fDMCob_Eletronica.fnc_Busca_Num_Arquivo_Rem;
    CurrencyEdit1.AsInteger := fDMCob_Eletronica.vNum_Remessa;
    CurrencyEdit2.AsInteger := fDmCob_Eletronica.vSeq_Remessa_Dia;
    GroupBox1.Visible := True;
  end;
end;

procedure TfCobRemessa.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDmCob_Eletronica.cdsDuplicata.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfCobRemessa.SMDBGrid1DblClick(Sender: TObject);
begin
  frmCobRemessa_Alt := TfrmCobRemessa_Alt.Create(Self);
  vTipo := 1; //Habilita a pagecontrol para digitar carteira, instrução e valor taxa bancária
  frmCobRemessa_Alt.fDMCob_Eletronica := fDmCob_Eletronica;
  frmCobRemessa_Alt.ShowModal;
  FreeAndNil(frmCobRemessa_Alt);
end;

procedure TfCobRemessa.btnAlteraCarteiraClick(Sender: TObject);
var
  vGerar: Boolean;
begin
  fDmCob_Eletronica.btnDesabilita := 1;
  fDmCob_Eletronica.vID_Carteira := 0;
  frmCobAlteraCarteira := TfrmCobAlteraCarteira.Create(Self);
  frmCobAlteraCarteira.fDMCob_Eletronica := fDmCob_Eletronica;
  frmCobAlteraCarteira.ShowModal;
  FreeAndNil(frmCobAlteraCarteira);

  fDmCob_Eletronica.cdsCobCarteira.IndexFieldNames := 'ID';
  fDmCob_Eletronica.cdsCobCarteira.FindKey([fDmCob_Eletronica.vID_Carteira]);

  if fDmCob_Eletronica.vID_Carteira > 0 then
  begin
    vGerar := False;
    fDMCob_Eletronica.cdsDuplicata.First;
    while not fDMCob_Eletronica.cdsDuplicata.Eof do
    begin
      if not (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        fDMCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end
      else
      begin
        vGerar := True;
        fDmCob_Eletronica.cdsDuplicata.Edit;
        fDMCob_Eletronica.cdsDuplicataID_CARTEIRA.AsInteger := fDmCob_Eletronica.vID_Carteira;
        fDmCob_Eletronica.cdsDuplicataNOME_CARTEIRA.AsString := fDmCob_Eletronica.cdsCobCarteiraNOME.AsString;
        if (fDmCob_Eletronica.cdsDuplicata.State in [dsEdit]) then
          fDmCob_Eletronica.cdsDuplicata.ApplyUpdates(0);
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;

    end;
    if not (vGerar) then
    begin
      MessageDlg('Não há títulos selecionados!', mtWarning, [mbOk], 0);
      Exit;
    end
    else
    begin
      MessageDlg('Carteira Alterada!', mtWarning, [mbOk], 0);
    end;
  end;                            
end;

procedure TfCobRemessa.btnAlteraInstrucaoClick(Sender: TObject);
var
  vGerar: Boolean;
begin
  fDmCob_Eletronica.btnDesabilita := 2;
  fDmCob_Eletronica.vIntrucao_Protesto := 'N';
  frmCobAlteraCarteira := TfrmCobAlteraCarteira.Create(Self);
  frmCobAlteraCarteira.fDMCob_Eletronica := fDmCob_Eletronica;
  frmCobAlteraCarteira.ShowModal;
  FreeAndNil(frmCobAlteraCarteira);

  if fDmCob_Eletronica.vIntrucao_Protesto <> '' then
  begin
    vGerar := False;
    fDMCob_Eletronica.cdsDuplicata.First;
    while not fDMCob_Eletronica.cdsDuplicata.Eof do
    begin
      if not (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        fDMCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end
      else
      begin
        vGerar := True;
        fDmCob_Eletronica.cdsDuplicata.Edit;
        fDMCob_Eletronica.cdsDuplicataINSTRUCAO_PROTESTO.AsString := fDmCob_Eletronica.vIntrucao_Protesto;
        if (fDmCob_Eletronica.cdsDuplicata.State in [dsEdit]) then
          fDmCob_Eletronica.cdsDuplicata.ApplyUpdates(0);
        fDmCob_Eletronica.cdsDuplicata.Next;
        Continue;
      end;

    end;
    if not (vGerar) then
    begin
      MessageDlg('Não há títulos selecionados!', mtWarning, [mbOk], 0);
      Exit;
    end
    else
    begin
      MessageDlg('Instrução de Protesto Alterado!', mtWarning, [mbOk], 0);
    end;
  end;       
end;

procedure TfCobRemessa.btnReimprimirClick(Sender: TObject);
var
  i: Integer;
begin
  if fDmCob_Eletronica.cdsDuplicataNOSSONUMERO.AsString = '' then
  begin
    ShowMessage('Duplicata não foi enviada');
    exit;
  end;
  if fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsDateTime >= Date then
  begin
    ShowMessage('A reimpressão é utilizada somente para Duplicatas vencidas!');
    Exit;
  end;

  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    if (RxDBLookupCombo2.Text <> '') and (RxDBLookupCombo2.KeyValue <> fDmCob_Eletronica.cdsContasID.AsInteger) then
      fDmCob_Eletronica.cdsContas.Locate('ID', RxDBLookupCombo2.KeyValue, [loCaseInsensitive]);
    prc_Abrir_Filial(fDmCob_Eletronica.cdsContasFILIAL.AsInteger);
  end
  else
    prc_Abrir_Filial(RxDBLookupCombo1.KeyValue);

  fDmCob_Eletronica.vID_Duplicata := 0;
  frmCobRemessa_Alt := TfrmCobRemessa_Alt.Create(Self);
  vTipo := 2; //Habilita a pagecontrol para Reimpressão
  frmCobRemessa_Alt.fDMCob_Eletronica := fDmCob_Eletronica;
  frmCobRemessa_Alt.ShowModal;
  FreeAndNil(frmCobRemessa_Alt);
  fDmCob_Eletronica.cdsContas.Locate('ID', RxDBLookupCombo2.KeyValue, [loCaseInsensitive]);
  if fDmCob_Eletronica.vID_Duplicata > 0 then
  begin
    ACBrBoleto1.ListadeBoletos.Clear;
    fDMCob_Eletronica.prc_Verificar_Carteira;
    fdmCob_Eletronica.buscaNossoNumero;
    prc_ConfiguraACBR;
    if fDmCob_Eletronica.vGera_NossoNumero = 'S' then
    begin
      i := fDmCob_Eletronica.cdsContasCOD_BANCO.AsInteger;
      geraCabecalhoAcbr;
      fDmCob_Eletronica.vNossoNumero := geraRegistroAcbr(True);
    end;
    try
      fDMRel := TDMRel.Create(DMRel);
      if (ACBrBoleto1.Banco.Numero = 104) then
      begin
        if fDMCob_Eletronica.cdsContasTIPO_IMPRESSAO.AsString = 'C' then
          ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne
        else
          ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
      end;
      vEmail_Fortes := fDmCob_Eletronica.cdsDuplicataEMAIL_PGTO.AsString;
      vEmail_Assunto_Fortes := '2ª Via do Boleto nº ' + fDmCob_Eletronica.cdsDuplicataNUMDUPLICATA.AsString;
      prc_Monta_Corpo_Email;
      vTipo_Config_Email := 3;
      fDmCob_Eletronica.prc_Gravar_Historico('OUT','IMPRESSÃO DA 2ª VIA DO BOLETO - DATA VENCIMENTO: ' + DateToStr(fDmCob_Eletronica.vData2Via));
      ACBrBoleto1.Imprimir;
    finally
      FreeAndNil(fDMRel);

    end;
  end;

end;

procedure TfCobRemessa.consultarNaoEnviadas;
var
  vComandText: String;
begin
  vDataInicial := 0;
  vDataFinal := 0;
  fDmCob_Eletronica.qConsultaNaoEnviado.Close;
  vDataFinal := IncDay(NxDatePicker1.Date,-1);
  vDataInicial := IncDay(vDataFinal,-30);
  fDmCob_Eletronica.qConsultaNaoEnviado.SQL.Text := vComando;
  vComandText := ' AND ((DUP.NUM_REMESSA = 0) OR (DUP.NUM_REMESSA IS NULL))';
  if vDataInicial > 10 then
    vComandText := vComandText + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', vDataInicial));
  if vDataFinal > 10 then
   vComandText := vComandText + ' AND DUP.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', vDataFinal));
  fDmCob_Eletronica.qConsultaNaoEnviado.SQL.Add(vComandText);
  fDmCob_Eletronica.qConsultaNaoEnviado.Open;
end;

procedure TfCobRemessa.NxButton1Click(Sender: TObject);
var
  vArq: String;
begin
  fDmCob_Eletronica.cdsDuplicata.First;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Boleto_Capa.fr3';

  if FileExists(vArq) then
    fDMCob_Eletronica.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;

  fDmCob_Eletronica.mBoleto.EmptyDataSet;
  while not fDmCob_Eletronica.cdsDuplicata.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      fDmCob_Eletronica.mBoleto.Insert;
      fDmCob_Eletronica.mBoletoNomeCliente.AsString := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
      if fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString <> '' then
      begin
        fDmCob_Eletronica.mBoletoEndereco.AsString := fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString + ', ' +
                                                      fDmCob_Eletronica.cdsDuplicataNUM_END_PGTO.AsString + ' - ' +
                                                      fDmCob_Eletronica.cdsDuplicataCOMPLEMENTO_END_PGTO.AsString;
        fDmCob_Eletronica.mBoletoBairro.AsString   := fDmCob_Eletronica.cdsDuplicataBAIRRO_PGTO.AsString;
        fDmCob_Eletronica.mBoletoCidade.AsString   := fDmCob_Eletronica.cdsDuplicataCIDADE_PGTO.AsString;
        fDmCob_Eletronica.mBoletoUF.AsString       := fDmCob_Eletronica.cdsDuplicataENDERECO_PGTO.AsString;
        fDmCob_Eletronica.mBoletoCep.AsString      := fDmCob_Eletronica.cdsDuplicataCEP_PGTO.AsString;
      end
      else
      begin
        fDmCob_Eletronica.mBoletoEndereco.AsString := fDmCob_Eletronica.cdsDuplicataENDERECO.AsString + ', ' +
                                                      fDmCob_Eletronica.cdsDuplicataNUM_END.AsString + ' - ' +
                                                      fDmCob_Eletronica.cdsDuplicataCOMPLEMENTO_END.AsString;
        fDmCob_Eletronica.mBoletoBairro.AsString   := fDmCob_Eletronica.cdsDuplicataBAIRRO.AsString;
        fDmCob_Eletronica.mBoletoCidade.AsString   := fDmCob_Eletronica.cdsDuplicataCIDADE.AsString;
        fDmCob_Eletronica.mBoletoUF.AsString       := fDmCob_Eletronica.cdsDuplicataENDERECO.AsString;
        fDmCob_Eletronica.mBoletoCep.AsString      := fDmCob_Eletronica.cdsDuplicataCEP.AsString;
      end;
      fDmCob_Eletronica.mBoleto.Post;
    end;
    fDmCob_Eletronica.cdsDuplicata.Next;
  end;
  fDmCob_Eletronica.frxReport1.ShowReport;
end;

end.

