unit UCob_Retorno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCob_Eletronica,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask,
  RXDBCtrl, Variants, NxCollection, UDMCadDuplicata;

type
  TfrmCob_Retorno = class(TForm)
    Panel3: TPanel;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    btnBuscarArquivo: TBitBtn;
    btnAtualizar: TNxButton;
    UCControls1: TUCControls;
    Shape1: TShape;
    Label33: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Shape4: TShape;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnBuscarArquivoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMCob_Eletronica: TDMCob_Eletronica;
    fDMCadDuplicata: TDMCadDuplicata;

    Txt: TextFile;
    vRegistro: String;

    function fnc_Verifica_Arq_Retorno: Boolean;
    function fnc_Monta_CampoRet(Campo_Pos, Campo_Qtd: String ; Qtd: Integer): String;
    procedure prc_Monta_Ocorrencia;
    procedure prc_Monta_Erro_Liq(Codigo, Tipo: String);

    procedure prc_Gravar_mRetorno;
    procedure prc_Posiciona_Duplicata;
    procedure prc_Liquidacao;
    procedure prc_qDuplicata;

  public
    { Public declarations }

  end;

var
  frmCob_Retorno: TfrmCob_Retorno;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmCob_Retorno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCob_Retorno.FormShow(Sender: TObject);
begin
  fDMCob_Eletronica := TDMCob_Eletronica.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCob_Eletronica);
  if fDMCob_Eletronica.qParametrosID_BANCO_REMESSA.AsInteger > 0 then
    RxDBLookupCombo3.KeyValue := fDMCob_Eletronica.qParametrosID_BANCO_REMESSA.AsInteger;
end;

procedure TfrmCob_Retorno.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCob_Eletronica);
end;

function TfrmCob_Retorno.fnc_Verifica_Arq_Retorno: Boolean;
var
  vErroAux: String;
begin
  Result := False;
  vErroAux := '';
  if (copy(vRegistro,1,1) = '0') and (PosEx('RETORNO',vRegistro) <= 0) then
    vErroAux := '*** Arquivo não é de Retorno!';
  if fDMCob_Eletronica.qContas_RetornoNUMCONTA_CEDENTE.AsString = 'N' then
  begin

  //if fDMCob_Eletronica.cdsContasNUMCONTA.AsString <> Copy(vRegistro,fDMCob_Eletronica.cdsContasPOS_NUMCONTA_RETORNO.AsInteger,Length(trim(fDMCob_Eletronica.cdsContasNUMCONTA.AsString))) then
  if fDMCob_Eletronica.cdsContasNUMCONTA.AsString <> Copy(vRegistro,fDMCob_Eletronica.qContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger,Length(trim(fDMCob_Eletronica.cdsContasNUMCONTA.AsString))) then
      vErroAux := vErroAux + #13 + '*** Número da conta não pertence ao banco ' + fDMCob_Eletronica.cdsContasNOME.AsString;
  end
  else
    //if fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString <> Copy(vRegistro,fDMCob_Eletronica.cdsContasPOS_NUMCONTA_RETORNO.AsInteger,Length(trim(fDMCob_Eletronica.cdsContasNUMCONTA.AsString))) then
    if fDMCob_Eletronica.cdsContasCOD_CEDENTE.AsString <> Copy(vRegistro,fDMCob_Eletronica.qContas_RetornoPOS_NUMCONTA_RETORNO.AsInteger,Length(trim(fDMCob_Eletronica.cdsContasNUMCONTA.AsString))) then
      vErroAux := vErroAux + #13 + '*** Número da conta não pertence ao banco ' + fDMCob_Eletronica.cdsContasNOME.AsString;
  //if fDMCob_Eletronica.cdsContasCOD_BANCO.AsString <> Copy(vRegistro,fDMCob_Eletronica.cdsContasPOS_CODBANCO_RETORNO.AsInteger,Length(trim(fDMCob_Eletronica.cdsContasCOD_BANCO.AsString))) then
  if fDMCob_Eletronica.cdsContasCOD_BANCO.AsString <> Copy(vRegistro,fDMCob_Eletronica.qContas_RetornoPOS_CODBANCO_RETORNO.AsInteger,Length(trim(fDMCob_Eletronica.cdsContasCOD_BANCO.AsString))) then
    vErroAux := vErroAux + #13 + '*** Arquivo não pertence ao banco ' + fDMCob_Eletronica.cdsContasNOME.AsString;
  if trim(vErroAux) <> '' then
  begin
    MessageDlg(vErroAux, mtError, [mbOk], 0);
    exit;
  end;
  Result := True;
end;

procedure TfrmCob_Retorno.prc_Gravar_mRetorno;
begin
  fDMCob_Eletronica.mRetorno.Insert;
  fDMCob_Eletronica.mRetornoCodCarteira.AsString          := fnc_Monta_CampoRet('POS_CARTEIRA','QTD_CARTEIRA',0);
  fDMCob_Eletronica.mRetornoNumNota.AsString              := fnc_Monta_CampoRet('POS_NUM_NOTA','QTD_NUM_NOTA',0);
  fDMCob_Eletronica.mRetornoSeuNumero.AsString            := fnc_Monta_CampoRet('POS_NUM_NOTA','QTD_NUM_NOTA',0);
  fDMCob_Eletronica.mRetornoNossoNumero.AsString          := fnc_Monta_CampoRet('POS_NOSSO_NUMERO','QTD_NOSSO_NUMERO',0);
  fDMCob_Eletronica.mRetornoID_Duplicata.AsString         := fnc_Monta_CampoRet('POS_ID_DUPLICATA','QTD_ID_DUPLICATA',0);
  if trim(fDMCob_Eletronica.mRetornoID_Duplicata.AsString) = '' then
    fDMCob_Eletronica.mRetornoID_Duplicata.AsString := '0';
  fDMCob_Eletronica.mRetornoCodOcorrenciaRet.AsString     := fnc_Monta_CampoRet('POS_OCORRENCIA','',2);
  fDMCob_Eletronica.mRetornoDtOcorrencia.AsString         := fnc_Monta_CampoRet('POS_DT_OCORRENCIA','',6);
  if trim(fDMCob_Eletronica.mRetornoDtOcorrencia.AsString) <> '' then
    fDMCob_Eletronica.mRetornoDtOcorrencia.AsString := copy(fDMCob_Eletronica.mRetornoDtOcorrencia.AsString,1,2) + '/' + copy(fDMCob_Eletronica.mRetornoDtOcorrencia.AsString,3,2) + '/20' + copy(fDMCob_Eletronica.mRetornoDtOcorrencia.AsString,5,2);
  fDMCob_Eletronica.mRetornoConfNossoNumero.AsString      := fnc_Monta_CampoRet('POS_CONF_NOSSO_NUMERO','QTD_CONF_NOSSO_NUMERO',0);
  fDMCob_Eletronica.mRetornoDtVenc.AsString               := fnc_Monta_CampoRet('POS_DT_VENCIMENTO','',6);
  if (trim(fDMCob_Eletronica.mRetornoDtVenc.AsString) <> '') and (fDMCob_Eletronica.mRetornoDtVenc.AsString <> '000000') then
    fDMCob_Eletronica.mRetornoDtVenc.AsString := copy(fDMCob_Eletronica.mRetornoDtVenc.AsString,1,2) + '/' + copy(fDMCob_Eletronica.mRetornoDtVenc.AsString,3,2) + '/20' + copy(fDMCob_Eletronica.mRetornoDtVenc.AsString,5,2);
  fDMCob_Eletronica.mRetornoVlrTitulo.AsString            := fnc_Monta_CampoRet('POS_VLR_TITULO','QTD_VLR_TITULO',0);
  fDMCob_Eletronica.mRetornoEspecieDoc.AsString           := fnc_Monta_CampoRet('POS_ESPECIE','',2);
  fDMCob_Eletronica.mRetornoVlrDespesaCobranca.AsString   := fnc_Monta_CampoRet('POS_VLR_DESPESA_COB','QTD_VLR_DESPESA_COB',0);
  fDMCob_Eletronica.mRetornoVlrIOF.AsString               := fnc_Monta_CampoRet('POS_VLR_IOF','QTD_VLR_IOF',0);
  fDMCob_Eletronica.mRetornoVlrAbatimento.AsString        := fnc_Monta_CampoRet('POS_VLR_ABATIMENTO','QTD_VLR_ABATIMENTO',0);
  fDMCob_Eletronica.mRetornoVlrDesconto.AsString          := fnc_Monta_CampoRet('POS_VLR_DESCONTO','QTD_VLR_DESCONTO',0);
  fDMCob_Eletronica.mRetornoVlrPago.AsString              := fnc_Monta_CampoRet('POS_VLR_PAGO','QTD_VLR_PAGO',0);
  fDMCob_Eletronica.mRetornoVlrJurosPagos.AsString        := fnc_Monta_CampoRet('POS_VLR_JUROS_PAGO','QTD_VLR_JUROS_PAGO',0);
  fDMCob_Eletronica.mRetornoDtLiquidacao.AsString         := fnc_Monta_CampoRet('POS_DT_LIQUIDACAO','',6);
  if trim(fDMCob_Eletronica.mRetornoDtLiquidacao.AsString) <> '' then
    fDMCob_Eletronica.mRetornoDtLiquidacao.AsString := copy(fDMCob_Eletronica.mRetornoDtLiquidacao.AsString,1,2) + '/' + copy(fDMCob_Eletronica.mRetornoDtLiquidacao.AsString,3,2) + '/20' + copy(fDMCob_Eletronica.mRetornoDtLiquidacao.AsString,5,2);
  fDMCob_Eletronica.mRetornoInstrCancelada.AsString       := fnc_Monta_CampoRet('POS_INST_CANCELADA','',4);
  fDMCob_Eletronica.mRetornoErros.AsString                := fnc_Monta_CampoRet('POS_ERRO','QTD_ERRO',0);
  fDMCob_Eletronica.mRetornoCodLiquidacao.AsString        := fnc_Monta_CampoRet('POS_COD_LIQUIDACAO','QTD_COD_LIQUIDACAO',0);
  fDMCob_Eletronica.mRetornoNomeCliente.AsString          := fnc_Monta_CampoRet('POS_NOME_CLIENTE','QTD_NOME_CLIENTE',0);
  fDMCob_Eletronica.mRetornoUsa_NumConta_Cedente.AsString := fDMCob_Eletronica.qContas_RetornoNUMCONTA_CEDENTE.AsString;
  prc_Monta_Ocorrencia;
  fDMCob_Eletronica.mRetornoParcela.AsString := copy(fDMCob_Eletronica.mRetornoNumNota.AsString,8,2);
  fDMCob_Eletronica.mRetornoNumNota.AsString := copy(fDMCob_Eletronica.mRetornoNumNota.AsString,1,6);

  fDMCob_Eletronica.qDuplicata.Close;
  prc_qDuplicata;
  if not fDMCob_Eletronica.qDuplicata.IsEmpty then
  begin
    fDMCob_Eletronica.mRetornoCodCliente.AsInteger := fDMCob_Eletronica.qDuplicataID_PESSOA.AsInteger;
    fDMCob_Eletronica.mRetornoTitulo_OK.AsBoolean  := True;
    fDMCob_Eletronica.mRetornoFilial.AsInteger     := fDMCob_Eletronica.qDuplicataFILIAL.AsInteger;
    if StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.qDuplicataVLR_RESTANTE.AsFloat)) <= 0 then
    begin
      fDMCob_Eletronica.mRetornoAtualizar.AsString  := 'N';
      fDMCob_Eletronica.mRetornoAtualizado.AsString := 'S';
    end;
  end
  else
  begin
    fDMCob_Eletronica.mRetornoTitulo_OK.AsBoolean := False;
    fDMCob_Eletronica.mRetornoAtualizar.AsString  := 'N';
  end;
  if trim(fDMCob_Eletronica.mRetornoNomeCliente.AsString) = '' then
    fDMCob_Eletronica.mRetornoNomeCliente.AsString := fDMCob_Eletronica.qDuplicataNOME_CLIENTE.AsString;
  fDMCob_Eletronica.mRetorno.Post;
end;

function TfrmCob_Retorno.fnc_Monta_CampoRet(Campo_Pos, Campo_Qtd: String ; Qtd: Integer): String;
var
  vPos, vQtd, vQtd2: Integer;
  vAux: String;
begin
  if fDMCob_Eletronica.qContas_Retorno.FieldByName(Campo_Pos).AsInteger <= 0 then
    exit;
  //if (trim(Campo_Qtd) <> '') and (Qtd <= 0) then
  //  exit;
  Result := '';
  vQtd2  := 0;
  if (trim(Campo_Qtd) <> '') and (copy(campo_Qtd,5,3) = 'VLR') then
    vQtd2 := 2;
  vPos := fDMCob_Eletronica.qContas_Retorno.FieldByName(Campo_Pos).AsInteger;
  if trim(Campo_Qtd) <> '' then
    vQtd := fDMCob_Eletronica.qContas_Retorno.FieldByName(Campo_Qtd).AsInteger - vQtd2
  else
    vQtd := Qtd;
  Result := copy(vRegistro,vPos,vQtd);
  if vQtd2 > 0 then
    Result := Result + ',' + copy(vRegistro,vPos+vQtd,vQtd2);
  if copy(campo_Qtd,4,4) = '_DT_' then
  begin
    vAux   := copy(Result,1,2) + '/' + copy(Result,3,2) + '/20' + copy(Result,5,2);
    Result := vAux;
  end;
end;

procedure TfrmCob_Retorno.prc_Monta_Ocorrencia;
begin
  if (fDMCob_Eletronica.cdsRet_Cadastro.Locate('CODIGO;TIPO_REG',VarArrayOf([fDMCob_Eletronica.mRetornoCodOcorrenciaRet.AsString,'OCO']),[locaseinsensitive])) then
  begin
    fDMCob_Eletronica.mRetornoNomeOcorrenciaRet.AsString := fDMCob_Eletronica.cdsRet_CadastroNOME.AsString;
    if fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'ORJ' then
      prc_Monta_Erro_Liq(fDMCob_Eletronica.mRetornoErros.AsString,'ERR')
    else
    if fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ' then
      prc_Monta_Erro_Liq(fDMCob_Eletronica.mRetornoCodLiquidacao.AsString,'LIQ');
    if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') or (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'OCF') then
      fDMCob_Eletronica.mRetornoAtualizar.AsString := 'S';
    if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') and (fDMCob_Eletronica.cdsRet_CadastroTIPO_LIQ.AsString = 'LCA') then
      fDMCob_Eletronica.mRetornoTipo_Ret.AsString := 'LCA';
    if fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'PRO' then
      fDMCob_Eletronica.mRetornoTipo_Ret.AsString := 'PRO';
  end
  else
  begin
    if trim(fDMCob_Eletronica.mRetornoCodLiquidacao.AsString) <> '' then
    begin
      prc_Monta_Erro_Liq(fDMCob_Eletronica.mRetornoCodLiquidacao.AsString,'LIQ');
      if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') or (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'OCF') then
        fDMCob_Eletronica.mRetornoAtualizar.AsString := 'S';
      if (fDMCob_Eletronica.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') and (fDMCob_Eletronica.cdsRet_CadastroTIPO_LIQ.AsString = 'LCA') then
        fDMCob_Eletronica.mRetornoTipo_Ret.AsString := 'LCA';
    end;
  end;
end;

procedure TfrmCob_Retorno.prc_Monta_Erro_Liq(Codigo, Tipo: String);
var
  vCodErro: array[1..4] of String;
  i: Integer;
  vIndiceErro: Integer;
  vIErro: Integer;
begin
  vIndiceErro := 0;
  vIErro      := fDMCob_Eletronica.qContas_RetornoQTD_ERRO_CADASTRO.AsInteger;
  if vIErro <= 0 then
    vIErro := 2;
  for i := 1 to 4 do
    vCodErro[i] := '';
  i := vIErro;
  if copy(Codigo,1,vIErro) <> '' then
    vCodErro[1] := copy(Codigo,1,vIErro);
  i := i + 1;
  //if copy(Codigo,3,2) <> '' then
  if copy(Codigo,i,vIErro) <> '' then
    vCodErro[2] := copy(Codigo,i,vIErro);
  i := i + vIErro;
  if copy(Codigo,i,vIErro) <> '' then
    vCodErro[3] := copy(Codigo,i,vIErro);
  i := i + vIErro;
  if copy(Codigo,i,vIErro) <> '' then
    vCodErro[4] := copy(Codigo,i,vIErro);
  fDMCob_Eletronica.mRetornoTipo_Ret.AsString := Tipo;
  for i := 1 to 4 do
  begin
    if trim(vCodErro[i]) <> '' then
    begin
      vIndiceErro := vIndiceErro + 1;
      fDMCob_Eletronica.qRet_Erro.Close;
      fDMCob_Eletronica.qRet_Erro.ParamByName('CODIGO').AsString    := vCodErro[i];
      fDMCob_Eletronica.qRet_Erro.ParamByName('TIPO_REG').AsString  := Tipo;
      fDMCob_Eletronica.qRet_Erro.ParamByName('ID_BANCO').AsInteger := fDMCob_Eletronica.cdsContasID_BANCO.AsInteger;
      fDMCob_Eletronica.qRet_Erro.Open;
      if not fDMCob_Eletronica.qRet_Erro.IsEmpty then
      begin
        if Tipo = 'LIQ' then
          fDMCob_Eletronica.mRetornoDescLiquidacao.AsString := fDMCob_Eletronica.qRet_ErroNOME.AsString
        else
          fDMCob_Eletronica.mRetorno.FieldByName('DescErro'+IntToStr(vIndiceErro)).AsString := fDMCob_Eletronica.qRet_ErroNOME.AsString;
      end;
    end;
  end;
end;

procedure TfrmCob_Retorno.btnBuscarArquivoClick(Sender: TObject);
var
  vFlag: Boolean;
begin
  if trim(RxDBLookupCombo3.Text) = '' then
  begin
    MessageDlg('*** Banco não informado!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(FilenameEdit1.FileName) = '' then
  begin
    MessageDlg('*** Arquivo não foi informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCob_Eletronica.mRetorno.EmptyDataSet;
  vFlag := False;

  fDMCob_Eletronica.qContas_Retorno.Close;
  fDMCob_Eletronica.qContas_Retorno.ParamByName('ID').AsInteger := fDMCob_Eletronica.cdsContasID.AsInteger;
  fDMCob_Eletronica.qContas_Retorno.Open;

  fDMCob_Eletronica.cdsRet_Cadastro.Close;
  fDMCob_Eletronica.sdsRet_Cadastro.ParamByName('ID_BANCO').AsInteger := fDMCob_Eletronica.cdsContasID_BANCO.AsInteger;
  fDMCob_Eletronica.cdsRet_Cadastro.Open;

  try
    AssignFile(Txt,FilenameEdit1.FileName);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt,vRegistro);
      if (copy(vRegistro,1,1) = '0') and not(fnc_Verifica_Arq_Retorno) then
        Break;
      vFlag := True;
      if copy(vRegistro,1,1) = '1' then
        prc_Gravar_mRetorno;
    end;

  finally
    CloseFile(Txt);
  end;
end;

procedure TfrmCob_Retorno.btnAtualizarClick(Sender: TObject);
begin
  if fDMCob_Eletronica.mRetorno.IsEmpty then
  begin
    MessageDlg('*** Não existe título para atualizar!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadDuplicata := TDMCadDuplicata.Create(Self);

  fDMCob_Eletronica.mRetorno.First;
  while not fDMCob_Eletronica.mRetorno.Eof do
  begin
    fDMCob_Eletronica.vNossoNumero := '';

    if ((fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LIQ') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LNO') or  (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA') or (trim(fDMCob_Eletronica.mRetornoDescLiquidacao.AsString) <> '')) then
    begin
      prc_Posiciona_Duplicata;
      if not( fDMCadDuplicata.cdsDuplicata.IsEmpty) and ((fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LIQ') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LNO')
         or  (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA') or (trim(fDMCob_Eletronica.mRetornoDescLiquidacao.AsString) <> ''))
         and (StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0) then
        prc_Liquidacao
    end
    else
    begin
      if fDMCob_Eletronica.mRetornoAtualizar.AsString = 'S' then
      begin
        fDMCob_Eletronica.prc_Duplicata(0,fDMCob_Eletronica.mRetornoID_Duplicata.AsInteger,0,fDMCob_Eletronica.mRetornoFilial.AsInteger,0,'','',0,0);
        if fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'PRO' then
          fDMCob_Eletronica.prc_Gravar_Duplicata('PRO')
        else
        begin
          fDMCob_Eletronica.vNossoNumero := fDMCob_Eletronica.mRetornoNossoNumero.AsString;
          fDMCob_Eletronica.prc_Gravar_Duplicata('NNU');
        end;
      end;
    end;
    fDMCob_Eletronica.mRetorno.Next;
  end;

  FreeAndNil(fDMCadDuplicata);
end;

procedure TfrmCob_Retorno.prc_Liquidacao;
var
  vHistAux: String;
begin
  if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
  begin
    fDMCadDuplicata.cdsDuplicata.Edit;
    if (RxDBLookupCombo3.Text <> '') and (fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger <= 0) then
      fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger := RxDBLookupCombo3.KeyValue;

    fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.mRetornoVlrDespesaCobranca.AsFloat));
    fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.mRetornoVlrPago.AsFloat));
    fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.mRetornoVlrDesconto.AsFloat));
    fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCob_Eletronica.mRetornoVlrJurosPagos.AsFloat));
    fDMCadDuplicata.cdsDuplicataVLR_MULTA.AsFloat         := StrToFloat(FormatFloat('0.00',0));

    fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.AsDateTime := fDMCob_Eletronica.mRetornoDtLiquidacao.AsDateTime;

    vHistAux := '';
    if fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA' then
      vHistAux := 'LCA';

    fDMCadDuplicata.prc_Gravar_Dupicata_Hist('PAG',vHistAux + 'PAGAMENTO DE TITULO',fDMCob_Eletronica.mRetornoVlrPago.AsFloat,
                                             fDMCob_Eletronica.mRetornoVlrJurosPagos.AsFloat,fDMCob_Eletronica.mRetornoVlrDesconto.AsFloat,
                                             fDMCob_Eletronica.mRetornoVlrDespesaCobranca.AsFloat,0,0,fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger);
    
    fDMCadDuplicata.prc_Gravar_Financeiro(fDMCob_Eletronica.mRetornoVlrPago.AsFloat,'P',fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger);

    fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',0));

    fDMCadDuplicata.cdsDuplicata.Post;

    if fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert] then
      fDMCadDuplicata.cdsDuplicata.Post;
    fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
  end;

end;

procedure TfrmCob_Retorno.prc_Posiciona_Duplicata;
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


procedure TfrmCob_Retorno.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'ERR' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LIQ') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LCA') or (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'LNO') then
    Background  := clMoneyGreen
  else
  if (fDMCob_Eletronica.mRetornoTipo_Ret.AsString = 'PRO') then
    Background  := clYellow
  else
  if (fDMCob_Eletronica.mRetornoAtualizar.AsString = 'S') then
    Background  := $00FFCB97;
end;

procedure TfrmCob_Retorno.prc_qDuplicata;
var
  vFlag: Boolean;
begin
  if not fDMCob_Eletronica.qDuplicata.Active then
    vFlag := False
  else
    vFlag := True;
  fDMCob_Eletronica.qDuplicata.Close;
  fDMCob_Eletronica.qDuplicata.SQL.Text := fDMCob_Eletronica.ctqDuplicata;
  if not vFlag then
    fDMCob_Eletronica.qDuplicata.SQL.Text := fDMCob_Eletronica.qDuplicata.SQL.Text
                                           + ' WHERE DUP.ID = ' + IntToStr(fDMCob_Eletronica.mRetornoID_Duplicata.AsInteger)
  else
    fDMCob_Eletronica.qDuplicata.SQL.Text := fDMCob_Eletronica.qDuplicata.SQL.Text
                                           + ' WHERE DUP.NOSSONUMERO = ' + QuotedStr(fDMCob_Eletronica.mRetornoNossoNumero.AsString);

  fDMCob_Eletronica.qDuplicata.Open;
  if (fDMCob_Eletronica.qDuplicata.IsEmpty) and not(vFlag)  then
    prc_qDuplicata;
end;

end.
