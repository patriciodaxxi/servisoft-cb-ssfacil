unit uCobRetorno; //ABCR Novo

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls,
  StdCtrls, Buttons, Mask, ToolEdit, RxLookup, ACBrBase, ACBrBoleto, NxCollection, UDMCob_Eletronica, rsDBUtils, db,
  uDmCadDuplicata, uUtilPadrao, ComCtrls, UCBase;

type
  TfCobRetorno = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    Panel3: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    FilenameEdit1: TFilenameEdit;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Shape1: TShape;
    Label33: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Shape4: TShape;
    Label4: TLabel;
    btnLocalizar: TNxButton;
    NxButton1: TNxButton;
    Shape5: TShape;
    Label5: TLabel;
    Shape6: TShape;
    Label7: TLabel;
    btnEnviarEmail: TNxButton;
    NxButton2: TNxButton;
    ProgressBar1: TProgressBar;
    Shape7: TShape;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    StaticText1: TStaticText;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    stat1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure prc_ConfiguraACBR;
    procedure btnLocalizarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure FilenameEdit1ButtonClick(Sender: TObject);
    procedure FilenameEdit1BeforeDialog(Sender: TObject; var Name: String;
      var Action: Boolean);
    procedure FilenameEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    fDmCob_Eletronica: TDmCob_Eletronica;
    fDmCadDuplicata: TDmCadDuplicata;
    vQtd_Sem_Email: Integer;
    procedure prc_Monta_Ocorrencia;
    procedure prc_Monta_Erro_Liq(Codigo, Tipo: string);
    procedure prc_Posiciona_Duplicata;
    procedure prc_Liquidacao;
    procedure prc_mRetorno_Atualizado;
    //procedure prc_Gerar_mEmail(ID_Filial: Integer);
  public
    { Public declarations }
  end;

var
  fCobRetorno: TfCobRetorno;

implementation

uses
  Math, UEnviaEmailTitulos, UMenu, USel_Titulos, MaskUtils;

{$R *.dfm}

procedure TfCobRetorno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCobRetorno.FormShow(Sender: TObject);
var
  vAux : String;
begin
  fDmCob_Eletronica := TDmCob_Eletronica.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDmCob_Eletronica);
  if (fDmCob_Eletronica.cdsContas.RecordCount < 2) and (fDmCob_Eletronica.cdsContasID.AsInteger > 0) then
    RxDBLookupCombo3.KeyValue := fDmCob_Eletronica.cdsContasID.AsInteger;
  fDmCob_Eletronica.prc_Abrir_Contas(True);
  if (fDmCob_Eletronica.cdsParametros_FinDTENVIO_EMAIL_TITULOS.AsDateTime < Date) and (fDmCob_Eletronica.cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR.AsString = 'S') then
  begin
    btnEnviarEmail.Down := True;
    btnEnviarEmail.Color := clRed;
    btnEnviarEmail.Font.Style := [fsBold];
  end;
  uUtilPadrao.fnc_Busca_Nome_Filial;
  stat1.Panels[0].Text := vUsuario;
  stat1.Panels[1].Text := vFilial_Nome;

end;

procedure TfCobRetorno.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDmCob_Eletronica.cdsContas.IndexFieldNames := 'NOME';
end;

procedure TfCobRetorno.NxButton1Click(Sender: TObject);
var
  vAux: string;
begin
  if fDMCob_Eletronica.mRetorno.IsEmpty then
  begin
    MessageDlg('*** Não existe título para atualizar!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadDuplicata := TDMCadDuplicata.Create(Self);
  ProgressBar1.Visible := True;
  ProgressBar1.Max := fDmCob_Eletronica.mRetorno.RecordCount;
  ProgressBar1.Position := 0;

  fDMCob_Eletronica.mRetorno.First;
  while not fDMCob_Eletronica.mRetorno.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    ProgressBar1.Refresh;
    Refresh;
    fDMCob_Eletronica.vNossoNumero := '';
    fDMCob_Eletronica.vNossoNumero_Montado := '';
    fDmCob_Eletronica.xNossoNum := 0;

    if ((fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LIQ') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LNO') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA') or (trim(fDMCob_Eletronica.mRetornoDescLiquidacao.AsString) <> '')) then
    begin
      vAux := Monta_Numero(fDMCob_Eletronica.mRetornoID_Duplicata.AsString, 0);
      if (trim(vAux) <> '0') and (trim(vAux) <> '') then
      begin
        prc_Posiciona_Duplicata;
        if not (fDMCadDuplicata.cdsDuplicata.IsEmpty) and ((fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LIQ') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LNO') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA') or (trim(fDMCob_Eletronica.mRetornoDescLiquidacao.AsString) <> '')) and (StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0) then
          prc_Liquidacao
      end;
    end
    else
    begin
      if fDMCob_Eletronica.mRetornoAtualizar.AsString = 'S' then
      begin
        try
          fDMCob_Eletronica.prc_Duplicata(0, fDMCob_Eletronica.mRetornoID_Duplicata.AsInteger, 0, fDMCob_Eletronica.mRetornoFilial.AsInteger, 0, '', '', 0, 0);
          if not fDMCob_Eletronica.cdsDuplicata.IsEmpty then
          begin
            if fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'PRO' then
            begin
              fDMCob_Eletronica.prc_Gravar_Duplicata('PRO');
              prc_mRetorno_Atualizado;
            end
            else if fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'OCF' then
            begin
              fDMCob_Eletronica.vNossoNumero := fDMCob_Eletronica.mRetornoNossoNumero.AsString;
              if fDmCob_Eletronica.cdsContasCOD_BANCO.AsString <> '748' then
                fDmCob_Eletronica.xNossoNum := fDmCob_Eletronica.mRetornoNossoNumero.AsVariant
              else
                fDmCob_Eletronica.xNossoNum := 0;
              fDMCob_Eletronica.prc_Gravar_Duplicata('NNU');
              prc_mRetorno_Atualizado;
            end
            else if StrToFloat(FormatFloat('0.00', fDMCob_Eletronica.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
            begin
              fDmCob_Eletronica.prc_Gravar_Historico('OUT', fDmCob_Eletronica.mRetornoCodOcorrenciaRet.AsString + ' - ' + fDmCob_Eletronica.mRetornoNomeOcorrenciaRet.AsString + '  ' + fDmCob_Eletronica.mRetornoDescMotivo.AsString);
              prc_mRetorno_Atualizado;
            end;
          end;
        except
        end;
      end;
    end;
    fDMCob_Eletronica.mRetorno.Next;
  end;
  FreeAndNil(fDMCadDuplicata);
  ProgressBar1.Refresh;
  Refresh;
  MessageDlg('*** Concluído!', mtInformation, [mbOk], 0);
  ProgressBar1.Visible := False;
end;

procedure TfCobRetorno.prc_ConfiguraACBR;
begin
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
  ACBrBoleto1.Cedente.Nome := fDmCob_Eletronica.cdsFilialNOME.AsString;
  ACBrBoleto1.Cedente.CodigoCedente := fDmCob_Eletronica.cdsContasCOD_CEDENTE.AsString;
  ACBrBoleto1.Cedente.Agencia := fDmCob_Eletronica.cdsContasAGENCIA.AsString;
  ACBrBoleto1.Cedente.AgenciaDigito := fDmCob_Eletronica.cdsContasDIG_AGENCIA.AsString;
  ACBrBoleto1.Cedente.Conta := fDmCob_Eletronica.cdsContasNUMCONTA.AsString;
  ACBrBoleto1.Cedente.ContaDigito := fDmCob_Eletronica.cdsContasDIG_CONTA.AsString;
  ACBrBoleto1.Cedente.UF := fDmCob_Eletronica.cdsFilialUF.AsString;
  ACBrBoleto1.DirArqRemessa := fDmCob_Eletronica.cdsContasEND_ARQUIVO_REM.AsString;
  ACBrBoleto1.Cedente.CNPJCPF := fDmCob_Eletronica.cdsFilialCNPJ_CPF.AsString;
  ACBrBoleto1.NomeArqRemessa := 'COB_' + FormatDateTime('YYYYMMDD_HHMMSS', Now) + '.TXT';
end;

procedure TfCobRetorno.btnLocalizarClick(Sender: TObject);
var
  i: Integer;
  vDir: string;
  vNomeArq: string;
  i2: Integer;
  i3: Integer;
  vTexto, vTexto2: string;
  vNumAux, vParAux: Integer;
begin
  if RxDBLookupCombo3.Text = '' then
  begin
    MessageDlg('*** Banco não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if RxDBLookupCombo3.KeyValue <> fDmCob_Eletronica.cdsContasID.AsInteger then
    fDMCob_Eletronica.cdsContas.Locate('ID', RxDBLookupCombo3.KeyValue, [loCaseInsensitive]);
  if fDmCob_Eletronica.cdsContasFILIAL.AsInteger <> fDmCob_Eletronica.cdsFilialID.AsInteger then
    fDMCob_Eletronica.cdsFilial.Locate('ID', fDmCob_Eletronica.cdsContasFILIAL.AsInteger, [loCaseInsensitive]);

  fDmCob_Eletronica.mRetorno.EmptyDataSet;
  fDmCob_Eletronica.mRetorno.IndexFieldNames := '';
  prc_ConfiguraACBR;

  fDMCob_Eletronica.qContas_Retorno.Close;
  fDMCob_Eletronica.qContas_Retorno.ParamByName('ID').AsInteger := fDMCob_Eletronica.cdsContasID.AsInteger;
  fDMCob_Eletronica.qContas_Retorno.Open;

  fDMCob_Eletronica.cdsRet_Cadastro.Close;
  fDMCob_Eletronica.sdsRet_Cadastro.ParamByName('ID_BANCO').AsInteger := fDMCob_Eletronica.cdsContasID_BANCO.AsInteger;
  fDMCob_Eletronica.cdsRet_Cadastro.Open;

  //fDmCob_Eletronica.cdsContas.IndexFieldNames := 'ID';
  //fDmCob_Eletronica.cdsContas.FindKey([RxDBLookupCombo3.KeyValue]);
  vFilial := fDmCob_Eletronica.cdsContasFILIAL.AsInteger;

  ACBrBoleto1.Banco.Numero := fDmCob_Eletronica.cdsContasCOD_BANCO.AsInteger;
  ACBrBoleto1.Banco.Nome := fDmCob_Eletronica.cdsContasNOME_BANCO.AsString; // 'Banco do Estado do Rio Grande do Sul S.A.';
  vNomeArq := FilenameEdit1.Text;
  if copy(vNomeArq, 1, 1) = '"' then
  begin
    delete(vNomeArq, 1, 1);
    delete(vNomeArq, Length(vDir), 1);
  end;
  //vDir := ExtractFilePath(FilenameEdit1.Text);
  vDir := ExtractFilePath(vNomeArq);
  delete(vDir, Length(vDir), 1);
  ACBrBoleto1.DirArqRetorno := vDir;
  ACBrBoleto1.NomeArqRetorno := Copy(vNomeArq, Length(ACBrBoleto1.DirArqRetorno) + 2, Length(vNomeArq) + 1 - Length(ACBrBoleto1.DirArqRetorno));
  vNomeArq := ACBrBoleto1.NomeArqRetorno;
  if copy(vNomeArq, Length(vNomeArq), 1) = '"' then
    delete(vNomeArq, Length(vNomeArq), 1);

  SMDBGrid1.DisableScroll;
  ACBrBoleto1.NomeArqRetorno := vNomeArq;

  ACBrBoleto1.LerRetorno;

  vTexto := Monta_Numero(ACBrBoleto1.Cedente.CNPJCPF, 0);

  if Length(vTexto) >= 14 then
    vTexto := copy(vTexto, 1, 2) + '.' + copy(vTexto, 3, 3) + '.' + copy(vTexto, 6, 3) + '/' + copy(vTexto, 9, 4) + '-' + copy(vTexto, 13, 2)
  else
    vTexto := copy(vTexto, 1, 3) + '.' + copy(vTexto, 4, 3) + '.' + copy(vTexto, 7, 3) + '-' + copy(vTexto, 10, 2);
  if fDmCob_Eletronica.cdsFilialCNPJ_CPF.AsString <> vTexto then
  begin
    MessageDlg('*** Filial/Conta diferente do retorno!', mtInformation, [mbOk], 0);
    SMDBGrid1.EnableScroll;
    exit;
  end;

  for i := 0 to acbrboleto1.ListadeBoletos.Count - 1 do
  begin
    Refresh;
    with acbrboleto1.ListadeBoletos.Objects[I] do
    begin
      fDMCob_Eletronica.mRetorno.Insert;
      fDmCob_Eletronica.mRetornoNomeCliente.AsString := Sacado.NomeSacado;
      //19/05/2016
      fDmCob_Eletronica.mRetornoNossoNumero.AsString := NossoNumero;
      if (fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '748') and (fDmCob_Eletronica.cdsContasACBR_USAR_MONTAR_NOSSONUMERO.AsString = 'S') then
        fDmCob_Eletronica.mRetornoNossoNumero.AsString := copy(NossoNumero, 1, 2) + '/' + copy(NossoNumero, 3, 6) + '-' + copy(NossoNumero, 9, 1) + '-'
      else if (fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '041') and (fDmCob_Eletronica.cdsContasACBR_USAR_MONTAR_NOSSONUMERO.AsString = 'S') then
        fDmCob_Eletronica.mRetornoNossoNumero.AsString := copy(NossoNumero, 1, Length(NossoNumero) - 2) + '.' + copy(NossoNumero, Length(NossoNumero) - 1, 2);

      fDmCob_Eletronica.mRetornoSeuNumero.AsString := SeuNumero;
      fDmCob_Eletronica.mRetornoErros.AsString := MotivoRejeicaoComando.Text;
      vTexto := trim(NumeroDocumento);

      if fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S' then
      begin
        if fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '748' then
        begin
          i3 := pos('.', vTexto);
          begin
            delete(vTexto, 1, i3);
          end;
        end;
      end;

      i2 := pos('/', vTexto);
      if i2 > 0 then
      begin
        fDmCob_Eletronica.mRetornoNumNota.AsString := Monta_Numero(copy(vTexto, 1, i2 - 1), 0);
        fDmCob_Eletronica.mRetornoParcela.AsString := Monta_Numero(copy(vTexto, i2 + 1, Length(vTexto) - i2 + 1), 0);
      end
      else
        fDmCob_Eletronica.mRetornoNumNota.AsString := NumeroDocumento;
      fDmCob_Eletronica.mRetornoDtOcorrencia.AsDateTime := DataOcorrencia;
      fDmCob_Eletronica.mRetornoCodOcorrenciaRet.AsString := OcorrenciaOriginal.CodigoBanco;

      prc_Monta_Ocorrencia;
      if trim(fDmCob_Eletronica.mRetornoNomeOcorrenciaRet.AsString) = '' then
        fDmCob_Eletronica.mRetornoNomeOcorrenciaRet.AsString := OcorrenciaOriginal.Descricao;

      fDmCob_Eletronica.mRetornoVlrTitulo.AsCurrency := ValorDocumento;
      fDmCob_Eletronica.mRetornoVlrPago.AsCurrency := ValorRecebido;
      fDmCob_Eletronica.mRetornoNomeCliente.AsString := Sacado.NomeSacado;
      if (fDmCob_Eletronica.mRetornoCodOcorrenciaRet.AsString = '02') or (fDmCob_Eletronica.mRetornoCodOcorrenciaRet.AsString = '75') then
        fDmCob_Eletronica.mRetornoVlrJurosdeMora.AsCurrency := ValorMoraJuros
      else
        fDmCob_Eletronica.mRetornoVlrJurosPagos.AsCurrency := ValorMoraJuros;
      fDmCob_Eletronica.mRetornoVlrAbatimento.AsCurrency := ValorAbatimento;
      fDmCob_Eletronica.mRetornoVlrDesconto.AsCurrency := ValorDesconto;
      fDmCob_Eletronica.mRetornoNomeCliente.AsString := Sacado.NomeSacado;

      fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger := 0;
      fDmCob_Eletronica.mRetornoVlrDespesaCobranca.AsCurrency := ValorDespesaCobranca;
      vTexto := trim(fDmCob_Eletronica.mRetornoSeuNumero.AsString);

      if fDmCob_Eletronica.qParametros_FinREMESSA_FILIAL_DIF.AsString = 'S' then
      begin
        if fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '748' then
        begin
          i3 := pos('.', vTexto);
          begin
            delete(vTexto, 1, i3);
          end;
        end;
      end;

      i2 := pos('.', vTexto);
      if i2 > 0 then
      begin
        fDmCob_Eletronica.mRetornoID_Duplicata.AsString := copy(vTexto, i2 + 1, Length(vTexto) - i2 + 1);
        fDmCob_Eletronica.mRetornoFilial.AsString := copy(vTexto, 1, i2 - 1);
      end
      else if (fDmCob_Eletronica.cdsContasCOD_BANCO.AsString <> '748') then
      begin
        //Buscar o ID do sistema anterior
        i2 := pos('-', vTexto);
        if i2 > 0 then
        begin
          fDmCob_Eletronica.mRetornoID_Duplicata_Ant.AsString := copy(vTexto, i2 + 1, Length(vTexto) - i2 + 1);
          fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger := 0;
          fDmCob_Eletronica.mRetornoFilial.AsInteger := fDmCob_Eletronica.cdsFilialID.AsInteger;
        end;
      end;

      //Incluido esse IF do checkbox 17/10/2016
      if CheckBox1.Checked then
      begin
        fDmCob_Eletronica.prc_Duplicata(0, 0, 0, fDmCob_Eletronica.cdsFilialID.AsInteger, 0, '', fDmCob_Eletronica.mRetornoNossoNumero.AsString, 0, 0);
        if not fDmCob_Eletronica.cdsDuplicata.IsEmpty then
        begin
          fDmCob_Eletronica.mRetornoNomeCliente.AsString := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
          fDmCob_Eletronica.mRetornoDtVenc.AsString := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsString;
          fDmCob_Eletronica.mRetornoCodCliente.AsInteger := fDmCob_Eletronica.cdsDuplicataID_PESSOA.AsInteger;
        end;
      end
      else if trim(vTexto) <> '' then
      begin
        if fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger > 0 then
        begin
          fDmCob_Eletronica.prc_Duplicata(0, fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger, 0, 0, 0, '', '', 0, 0);
          if not fDmCob_Eletronica.cdsDuplicata.IsEmpty then
          begin
            fDmCob_Eletronica.mRetornoNomeCliente.AsString := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
            fDmCob_Eletronica.mRetornoDtVenc.AsString := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsString;
            fDmCob_Eletronica.mRetornoCodCliente.AsInteger := fDmCob_Eletronica.cdsDuplicataID_PESSOA.AsInteger;
          end;
        end
        else //Busca a duplicata anterior
        if fDmCob_Eletronica.mRetornoID_Duplicata_Ant.AsInteger > 0 then
        begin
          fDmCob_Eletronica.prc_Duplicata(0, fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger, 0, 0, 0, '', '', fDmCob_Eletronica.mRetornoID_Duplicata_Ant.AsInteger, 0);
          if not fDmCob_Eletronica.cdsDuplicata.IsEmpty then
          begin
            fDmCob_Eletronica.mRetornoNomeCliente.AsString := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
            fDmCob_Eletronica.mRetornoDtVenc.AsString := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsString;
            fDmCob_Eletronica.mRetornoCodCliente.AsInteger := fDmCob_Eletronica.cdsDuplicataID_PESSOA.AsInteger;
            if fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger <= 0 then
              fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger := fDmCob_Eletronica.cdsDuplicataID.AsInteger;
          end;
        end
        else
        begin
          //Preparado para o Sicredi  17/04/2016
          vTexto := Monta_Numero(fDmCob_Eletronica.mRetornoNumNota.AsString, 0);
          vTexto2 := Monta_Numero(fDmCob_Eletronica.mRetornoParcela.AsString, 0);
          if (fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '748') and (trim(vTexto) <> '') and (trim(vTexto2) <> '') then
          begin
            fDmCob_Eletronica.prc_Duplicata(0, 0, StrToInt(vTexto), fDmCob_Eletronica.cdsFilialID.AsInteger, 0, '', '', 0, StrToInt(vTexto2));
            if not fDmCob_Eletronica.cdsDuplicata.IsEmpty then
            begin
              fDmCob_Eletronica.mRetornoNomeCliente.AsString := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
              fDmCob_Eletronica.mRetornoDtVenc.AsString := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsString;
              fDmCob_Eletronica.mRetornoCodCliente.AsInteger := fDmCob_Eletronica.cdsDuplicataID_PESSOA.AsInteger;
              if fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger <= 0 then
                fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger := fDmCob_Eletronica.cdsDuplicataID.AsInteger;
            end;
          end;
        end;
      end;
      fDmCob_Eletronica.mRetornoCodMotivo.AsString := MotivoRejeicaoComando.Text;
      fDmCob_Eletronica.mRetornoDescMotivo.AsString := DescricaoMotivoRejeicaoComando.Text;
      fDMCob_Eletronica.mRetorno.Post;
    end;
  end;
  SMDBGrid1.EnableScroll;
  fDmCob_Eletronica.mRetorno.IndexFieldNames := 'CodOcorrenciaRet;NomeCliente;NumNota;Parcela';
end;

procedure TfCobRetorno.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmCob_Eletronica.mRetorno.IsEmpty then
    exit;
  if (fDMCob_Eletronica.mRetornoCodOcorrenciaRet.AsString = '74') or (fDMCob_Eletronica.mRetornoCodOcorrenciaRet.AsString = '24') then
    Background := $008080FF
  else if (fDMCob_Eletronica.mRetornoAtualizado.AsString = 'S') then
    Background := $00D7D7D7
  else if fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'ERR' then
  begin
    Background := clRed;
    AFont.Color := clWhite;
  end
  else if fDmCob_Eletronica.mRetornoCodCliente.AsInteger <= 0 then
  begin
    Background := clMaroon;
    AFont.Color := clWhite;
  end
  else if (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LIQ') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LNO') then
    Background := clMoneyGreen
  else if (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'PRO') then
    Background := clYellow
  else if (fDMCob_Eletronica.mRetornoAtualizar.AsString = 'S') then
    Background := $00FFCB97;
end;

procedure TfCobRetorno.prc_Monta_Ocorrencia;
begin
  if (fDMCob_Eletronica.cdsRet_Cadastro.Locate('CODIGO;TIPO_REG', VarArrayOf([fDMCob_Eletronica.mRetornoCodOcorrenciaRet.AsString, 'OCO']), [locaseinsensitive])) then
  begin
    fDMCob_Eletronica.mRetornoNomeOcorrenciaRet.AsString := fDMCob_Eletronica.cdsRet_CadastroNOME.AsString;
    if fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'ORJ' then
      prc_Monta_Erro_Liq(fDMCob_Eletronica.mRetornoErros.AsString, 'ERR')
    else if fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ' then
      prc_Monta_Erro_Liq(fDMCob_Eletronica.mRetornoCodLiquidacao.AsString, 'LIQ');
    if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') or (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'OCF') then
    begin
      if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'OCF') and (fDmCob_Eletronica.cdsContasCOD_BANCO.AsString = '748') then
        fDMCob_Eletronica.mRetornoTipo_Ret.AsString := 'OCF';
      fDMCob_Eletronica.mRetornoAtualizar.AsString := 'S';
    end;
    if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') and (fDMCob_Eletronica.cdsRet_CadastroTIPO_LIQ.AsString = 'LCA') then
      fDMCob_Eletronica.mRetornoTipo_Ret.AsString := 'LCA';
    if fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'PRO' then
      fDMCob_Eletronica.mRetornoTipo_Ret.AsString := 'PRO';
    fDMCob_Eletronica.mRetornoAtualizar.AsString := 'S';
  end
  else
  begin
    if trim(fDMCob_Eletronica.mRetornoCodLiquidacao.AsString) <> '' then
    begin
      prc_Monta_Erro_Liq(fDMCob_Eletronica.mRetornoCodLiquidacao.AsString, 'LIQ');
      if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') or (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'OCF') then
        fDMCob_Eletronica.mRetornoAtualizar.AsString := 'S';
      if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') and (fDMCob_Eletronica.cdsRet_CadastroTIPO_LIQ.AsString = 'LCA') then
        fDMCob_Eletronica.mRetornoTipo_Ret.AsString := 'LCA';
    end;
    fDMCob_Eletronica.mRetornoAtualizar.AsString := 'S';
  end;
end;

procedure TfCobRetorno.prc_Monta_Erro_Liq(Codigo, Tipo: string);
var
  vCodErro: array[1..4] of string;
  i: Integer;
  vIndiceErro: Integer;
  vIErro: Integer;
begin
//22/11/2016
  vIndiceErro := 0;
  vIErro := fDMCob_Eletronica.qContas_RetornoQTD_ERRO_CADASTRO.AsInteger;
  if vIErro <= 0 then
    vIErro := 2;
  for i := 1 to 4 do
    vCodErro[i] := '';
  i := vIErro;
  if copy(Codigo, 1, vIErro) <> '' then
    vCodErro[1] := copy(Codigo, 1, vIErro);
  i := i + 1;
  if copy(Codigo, i, vIErro) <> '' then
    vCodErro[2] := copy(Codigo, i, vIErro);
  i := i + vIErro;
  if copy(Codigo, i, vIErro) <> '' then
    vCodErro[3] := copy(Codigo, i, vIErro);
  i := i + vIErro;
  if copy(Codigo, i, vIErro) <> '' then
    vCodErro[4] := copy(Codigo, i, vIErro);
  fDMCob_Eletronica.mRetornoTipo_Ret.AsString := Tipo;
  for i := 1 to 4 do
  begin
    if trim(vCodErro[i]) <> '' then
    begin
      vIndiceErro := vIndiceErro + 1;
      fDMCob_Eletronica.qRet_Erro.Close;
      fDMCob_Eletronica.qRet_Erro.ParamByName('CODIGO').AsString := vCodErro[i];
      fDMCob_Eletronica.qRet_Erro.ParamByName('TIPO_REG').AsString := Tipo;
      fDMCob_Eletronica.qRet_Erro.ParamByName('ID_BANCO').AsInteger := fDmCob_Eletronica.cdsContasID_BANCO.AsInteger;
      fDMCob_Eletronica.qRet_Erro.Open;
      if not fDMCob_Eletronica.qRet_Erro.IsEmpty then
      begin
        if Tipo = 'LIQ' then
          fDMCob_Eletronica.mRetornoDescLiquidacao.AsString := fDMCob_Eletronica.qRet_ErroNOME.AsString
        else
          fDMCob_Eletronica.mRetorno.FieldByName('DescErro' + IntToStr(vIndiceErro)).AsString := fDMCob_Eletronica.qRet_ErroNOME.AsString;
      end;
    end;
  end;
end;

procedure TfCobRetorno.prc_Posiciona_Duplicata;
var
  vIDAux: Integer;
begin
  vIDAux := 0;
  if trim(fDMCob_Eletronica.mRetornoID_Duplicata.AsString) <> '' then
    vIDAux := fDMCob_Eletronica.mRetornoID_Duplicata.AsInteger;
  fDMCadDuplicata.prc_Localizar(vIDAux);
  fDMCadDuplicata.cdsDuplicata_Hist.Close;
  fDMCadDuplicata.cdsDuplicata_Hist.Open;
  vFilial := fDMCadDuplicata.cdsDuplicataFILIAL.AsInteger;
end;

procedure TfCobRetorno.prc_Liquidacao;
var
  vHistAux: string;
  vComDesconto: string;
begin
  if StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
  begin
    fDMCadDuplicata.cdsDuplicata.Edit;
    if (RxDBLookupCombo3.Text <> '') and (fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger <= 0) then
      fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger := RxDBLookupCombo3.KeyValue;

    fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat := StrToFloat(FormatFloat('0.00', 0));
    fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat := StrToFloat(FormatFloat('0.00', fDmCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat));
    fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00', fDMCob_Eletronica.mRetornoVlrDesconto.AsFloat));
    fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat := StrToFloat(FormatFloat('0.00', fDMCob_Eletronica.mRetornoVlrJurosPagos.AsFloat));
    fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat := StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat - fDMCob_Eletronica.mRetornoVlrDesconto.AsFloat));
    fDmCadDuplicata.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00', fDMCob_Eletronica.mRetornoVlrDespesaCobranca.AsFloat));
    fDmCadDuplicata.cdsDuplicataVLR_MULTA.AsFloat := StrToFloat(FormatFloat('0.00', 0));

    if trim(fDMCob_Eletronica.mRetornoDtLiquidacao.AsString) = '' then
      fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.AsDateTime := fDMCob_Eletronica.mRetornoDtOcorrencia.AsDateTime
    else
      fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.AsDateTime := fDMCob_Eletronica.mRetornoDtLiquidacao.AsDateTime;
    vHistAux := '';
    if fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA' then
    begin
      vHistAux := 'LCA ';
      fDmCadDuplicata.cdsDuplicataPAGO_CARTORIO.AsString := 'S';
    end;
    fDMCadDuplicata.prc_Gravar_Dupicata_Hist('PAG', vHistAux + 'PAGAMENTO DE TITULO (via ret)', fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat, fDMCob_Eletronica.mRetornoVlrJurosPagos.AsFloat, fDMCob_Eletronica.mRetornoVlrDesconto.AsFloat, fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat, fDmCadDuplicata.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat, 0, fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger);
    vComDesconto := '';
    if StrToFloat(FormatFloat('0.00', fDMCob_Eletronica.mRetornoVlrDesconto.AsFloat)) > 0 then
      vComDesconto := 'S';
    if StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat)) > 0 then
      fDMCadDuplicata.prc_Gravar_Financeiro(fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat, 'P', fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger, vComDesconto);
    if StrToFloat(FormatFloat('0.00', fDMCob_Eletronica.mRetornoVlrJurosPagos.AsFloat)) > 0 then
      fDMCadDuplicata.prc_Gravar_Financeiro(fDMCob_Eletronica.mRetornoVlrJurosPagos.AsFloat, 'J', fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger);
    if StrToFloat(FormatFloat('0.00', fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat)) > 0 then
      fDMCadDuplicata.prc_Gravar_Financeiro(fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat, 'D', fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger);
    if StrToFloat(FormatFloat('0.00', fDmCadDuplicata.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat)) > 0 then
      fDMCadDuplicata.prc_Gravar_Financeiro(fDmCadDuplicata.cdsDuplicataVLR_TAXA_BANCARIA.AsFloat, 'T', fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger);

    fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00', 0));

    fDMCadDuplicata.cdsDuplicata.Post;

    if fDMCadDuplicata.cdsDuplicata.State in [dsEdit, dsInsert] then
      fDMCadDuplicata.cdsDuplicata.Post;
    fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);

    prc_mRetorno_Atualizado;
  end;
end;

procedure TfCobRetorno.prc_mRetorno_Atualizado;
begin
  fDmCob_Eletronica.mRetorno.Edit;
  fDmCob_Eletronica.mRetornoAtualizado.AsString := 'S';
  fDmCob_Eletronica.mRetorno.Post;
end;

procedure TfCobRetorno.btnEnviarEmailClick(Sender: TObject);
var
  ffrmEnviaEmailTitulos: TfrmEnviaEmailTitulos;
begin
  //if MessageDlg('Enviar email para clientes com títulos vencidos e com data de vencimento hoje?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
   // Exit;
  {vQtd_Sem_Email := 0;
  fDmCob_Eletronica.mEmail.EmptyDataSet;
  fDmCob_Eletronica.cdsFilial.First;
  while not fDmCob_Eletronica.cdsFilial.Eof do
  begin
    prc_Gerar_mEmail(fDmCob_Eletronica.cdsFilialID.AsInteger);
    fDmCob_Eletronica.cdsFilial.Next;
  end;}
  //if not fDmCob_Eletronica.mEmail.IsEmpty then
  //begin
  ffrmEnviaEmailTitulos := TfrmEnviaEmailTitulos.Create(self);
  ffrmEnviaEmailTitulos.fDMCob_Eletronica := fDMCob_Eletronica;
    {ffrmEnviaEmailTitulos.Label2.Visible := (vQtd_Sem_Email > 0);
    ffrmEnviaEmailTitulos.Label1.Visible := (vQtd_Sem_Email <= 0);
    ffrmEnviaEmailTitulos.btnEnviarEmail.Visible := (vQtd_Sem_Email > 0);
    if vQtd_Sem_Email > 0 then
      ffrmEnviaEmailTitulos.Label2.Caption := IntToStr(vQtd_Sem_Email) + '  Cliente(s) sem email';}
  ffrmEnviaEmailTitulos.ShowModal;
  FreeAndNil(ffrmEnviaEmailTitulos);
  //end;
  if (fDmCob_Eletronica.cdsParametros_FinDTENVIO_EMAIL_TITULOS.AsDateTime = Date) and (fDmCob_Eletronica.cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR.AsString = 'S') then
  begin
    btnEnviarEmail.Down := False;
    btnEnviarEmail.Color := clBtnFace;
    btnEnviarEmail.Font.Style := [];
  end;
end;

{procedure TfCobRetorno.prc_Gerar_mEmail(ID_Filial: Integer);
var
  vID_Pessoa: Integer;
  vOBS: String;
  vTitulos: String;
  vDtAux: TDateTime;
begin
  fDmCob_Eletronica.cdsTitulos_atr.Close;
  fDmCob_Eletronica.sdsTitulos_atr.ParamByName('DTVENCIMENTO').AsDate := Date;
  fDmCob_Eletronica.sdsTitulos_atr.ParamByName('FILIAL').AsInteger    := ID_Filial;
  fDmCob_Eletronica.cdsTitulos_atr.Open;
  vID_Pessoa := 0;
  vOBS       := '';
  vTitulos   := '';
  vDtAux     := 0;
  fDmCob_Eletronica.cdsTitulos_atr.First;
  while not fDmCob_Eletronica.cdsTitulos_atr.Eof do
  begin
    if vID_Pessoa <> fDmCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger then
    begin
      if fDmCob_Eletronica.mEmail.State in [dsEdit,dsInsert] then
      begin
        fDmCob_Eletronica.mEmailObs.Value        := vOBS;
        fDmCob_Eletronica.mEmailTitulos.AsString := vTitulos;
        fDmCob_Eletronica.mEmail.Post;
        vOBS     := '';
        vTitulos := '';
      end;
      fDmCob_Eletronica.mEmail.Insert;
      fDmCob_Eletronica.mEmailID_Cliente.AsInteger     := fDmCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger;
      fDmCob_Eletronica.mEmailNome.AsString            := fDmCob_Eletronica.cdsTitulos_atrNOME_CLIENTE.AsString;
      fDmCob_Eletronica.mEmailCNPJ_CPF.AsString        := fDmCob_Eletronica.cdsTitulos_atrCNPJ_CPF_CLIENTE.AsString;
      fDmCob_Eletronica.mEmailEmail.AsString           := fDmCob_Eletronica.cdsTitulos_atrEMAIL_PGTO.AsString;
      fDmCob_Eletronica.mEmailNome_Filial.AsString     := fDmCob_Eletronica.cdsTitulos_atrNOME_FILIAL.AsString;
      fDmCob_Eletronica.mEmailCNPJ_CPF_Filial.AsString := fDmCob_Eletronica.cdsTitulos_atrCNPJ_CPF_FILIAL.AsString;
      fDmCob_Eletronica.mEmailFilial.AsInteger         := fDmCob_Eletronica.cdsTitulos_atrFILIAL.AsInteger;
      fDmCob_Eletronica.mEmailQtd_Titulos.AsInteger    := 0;
      fDmCob_Eletronica.mEmailEmailEnviado.AsString    := 'N';
      fDmCob_Eletronica.mEmailTituloVencido.AsBoolean  := False;
      fDmCob_Eletronica.mEmailTituloNoDia.AsBoolean    := False;
      if trim(fDmCob_Eletronica.mEmailEmail.AsString) = '' then
        vQtd_Sem_Email := vQtd_Sem_Email + 1;
    end;
    fDmCob_Eletronica.mEmailQtd_Titulos.AsInteger := fDmCob_Eletronica.mEmailQtd_Titulos.AsInteger + 1;
    vOBS := vOBS + #13 + '(Nº Titulo: ' + fDmCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + '/' + fDmCob_Eletronica.cdsTitulos_atrPARCELA.AsString
          + '   Nosso Nº: ' + fDmCob_Eletronica.cdsTitulos_atrNOSSONUMERO.AsString
          + '   Dt.Vencimento: ' + fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsString
          + '  Vlr.: ' + FormatFloat('###,###,##0.00',fDmCob_Eletronica.cdsTitulos_atrVLR_PARCELA.AsFloat) + ')';
    if vTitulos = '' then
      vTitulos := fDmCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + '/' + fDmCob_Eletronica.cdsTitulos_atrPARCELA.AsString
    else
      vTitulos := vTitulos + ', ' + fDmCob_Eletronica.cdsTitulos_atrNUMDUPLICATA.AsString + '/' + fDmCob_Eletronica.cdsTitulos_atrPARCELA.AsString;
    vID_Pessoa := fDmCob_Eletronica.cdsTitulos_atrID_PESSOA.AsInteger;
    if fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime < Date then
      fDmCob_Eletronica.mEmailTituloVencido.AsBoolean := True;
    if fDmCob_Eletronica.cdsTitulos_atrDTVENCIMENTO.AsDateTime = Date then
      fDmCob_Eletronica.mEmailTituloNoDia.AsBoolean := True;
    fDmCob_Eletronica.cdsTitulos_atr.Next;
  end;
  if fDmCob_Eletronica.mEmail.State in [dsEdit,dsInsert] then
  begin
    fDmCob_Eletronica.mEmailObs.Value := vOBS;
    fDmCob_Eletronica.mEmailTitulos.AsString := vTitulos;
    fDmCob_Eletronica.mEmail.Post;
  end;
end;}

procedure TfCobRetorno.NxButton2Click(Sender: TObject);
var
  vArq: string;
begin
  fDmCob_Eletronica.mRetorno.IndexFieldNames := 'CodOcorrenciaRet;NomeCliente;NumNota;Parcela';
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Retorno_Banco.fr3';
  if FileExists(vArq) then
    fDmCob_Eletronica.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDmCob_Eletronica.frxReport1.variables['ImpOpcao'] := QuotedStr('Nome Arq: ') + QuotedStr(FilenameEdit1.Text);
  fDmCob_Eletronica.frxReport1.variables['NomeBanco'] := QuotedStr(RxDBLookupCombo3.Text);
  fDmCob_Eletronica.frxReport1.variables['SeparadorParc'] := QuotedStr(fDmCob_Eletronica.vSeparadorParc);
  fDmCob_Eletronica.frxReport1.ShowReport;
end;

procedure TfCobRetorno.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if (fDmCob_Eletronica.cdsParametros_FinDTENVIO_EMAIL_TITULOS.AsDateTime < Date) and (fDmCob_Eletronica.cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR.AsString = 'S') then
  begin
    if MessageDlg('Emails com títulos em atraso não foram enviados, confirma envio?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CanClose := False;
      btnEnviarEmailClick(Sender);
    end;
  end;
end;

procedure TfCobRetorno.SMDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    if (fDmCob_Eletronica.mRetornoCodCliente.AsInteger <= 0) or (fDmCob_Eletronica.mRetornoBuscou_Titulos.AsString = 'S') then
    begin
      fDmCob_Eletronica.cdsDuplicata.Close;
      fDmCob_Eletronica.vID_Duplicata := fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger;
      frmSel_Titulos := TfrmSel_Titulos.Create(Self);
      frmSel_Titulos.fDmCob_Eletronica := fDmCob_Eletronica;
      frmSel_Titulos.Edit1.Text := fDmCob_Eletronica.mRetornoNumNota.AsString;
      try
        if trim(fDmCob_Eletronica.mRetornoParcela.AsString) <> '' then
          frmSel_Titulos.CurrencyEdit1.AsInteger := fDmCob_Eletronica.mRetornoParcela.AsInteger;
      except
      end;
      frmSel_Titulos.ShowModal;
      FreeAndNil(frmSel_Titulos);
      if fDmCob_Eletronica.vID_Duplicata <> fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger then
      begin
        fDmCob_Eletronica.mRetorno.Edit;
        fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger := fDmCob_Eletronica.vID_Duplicata;
        fDmCob_Eletronica.mRetornoBuscou_Titulos.AsString := 'S';
        fDmCob_Eletronica.prc_Duplicata(0, fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger, 0, 0, 0, '', '', 0, 0);
        fDmCob_Eletronica.mRetornoNomeCliente.AsString := fDmCob_Eletronica.cdsDuplicataNOME_CLIENTE.AsString;
        fDmCob_Eletronica.mRetornoCodCliente.AsInteger := fDmCob_Eletronica.cdsDuplicataID_PESSOA.AsInteger;
        fDmCob_Eletronica.mRetornoDtVenc.AsString := fDmCob_Eletronica.cdsDuplicataDTVENCIMENTO.AsString;
        fDmCob_Eletronica.mRetorno.Post;
      end;
    end;
  end
  else if (Key = Vk_F4) then
  begin
    if fDmCob_Eletronica.mRetornoBuscou_Titulos.AsString <> 'S' then
      MessageDlg('*** Somente desvicula o título que foi informado através do F3!', mtInformation, [mbOk], 0)
    else
    begin
      fDmCob_Eletronica.mRetorno.Edit;
      fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger := 0;
      fDmCob_Eletronica.mRetornoBuscou_Titulos.AsString := 'S';
      fDmCob_Eletronica.mRetornoNomeCliente.AsString := '';
      fDmCob_Eletronica.mRetornoCodCliente.AsInteger := 0;
      fDmCob_Eletronica.mRetornoDtVenc.AsString := '';
      fDmCob_Eletronica.mRetorno.Post;
    end;
  end;
end;

procedure TfCobRetorno.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 83) then //S
  begin
    DateEdit1.Visible := True;
    BitBtn1.Visible := True;
  end;
end;

procedure TfCobRetorno.BitBtn1Click(Sender: TObject);
var
  vTexto: string;
  vAux: string;
begin
  if MessageDlg('Deseja Zerar o nosso número e ajustar a data de vencimento dos títulos com Ocorrencia 03 e Erro 09?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  fDMCadDuplicata := TDMCadDuplicata.Create(Self);

  fDmCob_Eletronica.mRetorno.First;
  while not fDmCob_Eletronica.mRetorno.Eof do
  begin
    //if (trim(fDmCob_Eletronica.mRetornoSeuNumero.AsString) <> '') and (fDmCob_Eletronica.mRetornoCodOcorrenciaRet.AsString = '03') and (fDmCob_Eletronica.mRetornoErros.AsString = '09') then
    if (fDmCob_Eletronica.mRetornoCodOcorrenciaRet.AsString = '03') and (copy(fDmCob_Eletronica.mRetornoErros.AsString, 1, 2) = '09') then
    begin
      if fDmCob_Eletronica.mRetornoID_Duplicata.AsInteger > 0 then
      begin
        vAux := Monta_Numero(fDMCob_Eletronica.mRetornoID_Duplicata.AsString, 0);
        if (trim(vAux) <> '0') and (trim(vAux) <> '') then
        begin
          prc_Posiciona_Duplicata;
          if (fDmCadDuplicata.cdsDuplicataID.AsInteger > 0) then
          begin
            fDmCadDuplicata.cdsDuplicata.Edit;
            fDmCadDuplicata.cdsDuplicataNOSSONUMERO.AsString := '';
            vTexto := '';
            if (fDmCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime < DateEdit1.Date) then
            begin
              vTexto := ' - Dt. Vecto Ant ' + fDmCadDuplicata.cdsDuplicataDTVENCIMENTO.AsString;
              fDmCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime := DateEdit1.Date;
            end;
            fDmCadDuplicata.cdsDuplicataARQUIVO_GERADO.AsString := 'N';

            fDMCadDuplicata.prc_Gravar_Dupicata_Hist('OUT', 'Zerado o nosso numero devido estar duplicado Nº ' + fDmCob_Eletronica.mRetornoNossoNumero.AsString + vTexto, 0, 0, 0, 0, 0, 0);

            fDmCadDuplicata.cdsDuplicata.Post;
            fDmCadDuplicata.cdsDuplicata.ApplyUpdates(0);

            fDmCob_Eletronica.mRetorno.Edit;
            fDmCob_Eletronica.mRetornoNossoNumero.AsString := '';
            fDmCob_Eletronica.mRetorno.Post;
          end;
        end;
      end;
    end;
    fDmCob_Eletronica.mRetorno.Next;
  end;
  FreeAndNil(fDmCadDuplicata);
end;

procedure TfCobRetorno.RxDBLookupCombo3Exit(Sender: TObject);
var
  vAux : string;
begin
  if RxDBLookupCombo3.KeyValue <> fDmCob_Eletronica.cdsContasID.AsInteger then
    fDMCob_Eletronica.cdsContas.Locate('ID', RxDBLookupCombo3.KeyValue, [loCaseInsensitive]);
  vAux := fDmCob_Eletronica.cdsContasEND_ARQUIVO_RET.AsString;
  FilenameEdit1.InitialDir := vAux;
end;

procedure TfCobRetorno.FilenameEdit1ButtonClick(Sender: TObject);
var
  vPath : String;
begin
  vPath := fDmCob_Eletronica.cdsContasEND_ARQUIVO_RET.AsString;
  if vPath <> '' then
  begin
    if copy(vPath,Length(vPath),1) <> '\' then
      FilenameEdit1.FileName   := vPath + '\*.*'
    else
      FilenameEdit1.FileName   := vPath + '*.*';
  end;
  FilenameEdit1.InitialDir := vPath;
end;

procedure TfCobRetorno.FilenameEdit1BeforeDialog(Sender: TObject;
  var Name: String; var Action: Boolean);
begin
  FilenameEdit1.FileName := '';
end;

procedure TfCobRetorno.FilenameEdit1Exit(Sender: TObject);
begin
  if trim(FilenameEdit1.Text) <> '' then
    btnLocalizarClick(Sender);
end;

end.

