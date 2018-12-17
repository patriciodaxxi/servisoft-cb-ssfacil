unit UCadNotaFiscal_Copia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,   Dialogs, UDMCadNotaFiscal, UDMCopiarNota,
  RxLookup, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, UCadNotaFiscal_Itens, ExtCtrls, RzPanel, RzRadGrp,
  Grids, DBGrids, SMDBGrid;

type
  TfrmCadNotaFiscal_Copia = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    Edit1: TEdit;
    btnCopiar: TBitBtn;
    btnCancelar: TBitBtn;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel1: TPanel;
    lblOperacao: TLabel;
    Label22: TLabel;
    rxdbOperacao: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    ckExcluir_Duplicatas: TCheckBox;
    ckExcluir_Comissao: TCheckBox;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gbxVendedorExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup1Exit(Sender: TObject);
  private
    { Private declarations }
    vCodCFOP_COP: String;
    fDMCopiarNota: TDMCopiarNota;

    procedure prc_Abrir_Nota;

    procedure prc_Copiar_Nota;
    procedure prc_Copiar_Nota_Itens;
    procedure prc_Copiar_Nota_NDevolvida;
    procedure prc_Copiar_Nota_Ref;
    procedure prc_Le_cdsNDevolvida;

    procedure prc_Gravar_Nota_Imp;
    procedure prc_Gravar_Nota_Imp_AD;
    procedure prc_Gravar_Drawback;

    procedure prc_Posicionar_Cliente;

    procedure prc_Verificar_CFOP_Devolucao(ID_CFOP: Integer);
    procedure prc_Posicionar_Regra_Empresa(ID_Operacao: Integer; Finalidade: String);

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;

    vID_CliTriangular: Integer;

    procedure prc_Inicio_Tela;
  end;

var
  frmCadNotaFiscal_Copia: TfrmCadNotaFiscal_Copia;

implementation

uses DB, rsDBUtils, uUtilPadrao, uCalculo_NotaFiscal, Math;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Copia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vID_CliTriangular := 0;
  fDMCadNotaFiscal.vCopia_Igual := False;
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Abrir_Nota;
begin
  fDMCopiarNota.cdsNotaFiscal.Close;
  fDMCopiarNota.sdsNotaFiscal.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID.AsInteger;
  fDMCopiarNota.cdsNotaFiscal.Open;
end;

procedure TfrmCadNotaFiscal_Copia.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsCliente.IndexFieldNames := 'NOME';
end;

procedure TfrmCadNotaFiscal_Copia.btnCopiarClick(Sender: TObject);
var
  vIDAux: Integer;
  vNumNota: Integer;
  //ID: TTransactionDesc;
  //sds: TSQLDataSet;
begin
  fDMCadNotaFiscal.cdsParametros.Close;
  fDMCadNotaFiscal.cdsParametros.Open;
  if (vID_CliTriangular > 0) and (fDMCadNotaFiscal.cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger <= 0) and (RadioGroup1.ItemIndex = 2) then
  begin
    MessageDlg('*** Favor verificar que não esta configurado no parametros a Operação Triangular.' + #13 +
               '    Configurar nas regras de operações e depois informar no parâmetros!', mtError, [mbOk], 0);
    exit;
  end;

  if (RadioGroup1.ItemIndex = 2) and (RxDBLookupCombo3.Text = '') then
  begin
    MessageDlg('*** Cliente não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadNotaFiscal.vCopia_Igual := False;
  if fDMCopiarNota.cdsNotaFiscal.IsEmpty then
  begin
    MessageDlg('*** Nota não encontrada!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCopiarNota.cdsNotaFiscalCANCELADA.AsString = 'S' then
  begin
    MessageDlg('*** Nota cancelada, não pode ser copiada!', mtError, [mbOk], 0);
    exit;
  end;
  //if (ckTriangular.Checked) and (RxDBLookupCombo1.Text = '') then
  if (RadioGroup1.ItemIndex = 2) and (RxDBLookupCombo1.Text = '') then
  begin
    MessageDlg('*** CFOP não informada!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadNotaFiscal.vExcluir_Dup_Est := ckExcluir_Duplicatas.Checked;
  fDMCadNotaFiscal.vExcluir_Com_Est := ckExcluir_Comissao.Checked;
  if RadioGroup1.ItemIndex = 3 then
    fDMCadNotaFiscal.vCopia_Igual := True;

  //if ckEntrada.Checked then
  if RadioGroup1.ItemIndex = 1 then
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E')
  else
  if (RadioGroup1.ItemIndex = 3) then
  begin
    if fDMCopiarNota.cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
      fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E')
    else
      fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S');
  end
  else
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S');

  if RxDBLookupCombo1.Text <> '' then
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
  if fDMCadNotaFiscal.vID_Variacao > 0 then
    RxDBLookupCombo2.KeyValue := fDMCadNotaFiscal.vID_Variacao;


  //sds := TSQLDataSet.Create(nil);
  //ID.TransactionID  := 10;
  //ID.IsolationLevel := xilREADCOMMITTED;
  //dmDatabase.scoDados.StartTransaction(ID);
  //try

  prc_Copiar_Nota;

  fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

  prc_Copiar_Nota_Itens;

  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.Clear;


  //if ckEntrada.Checked then
  if RadioGroup1.ItemIndex = 1 then
    prc_Copiar_Nota_Ref;



  if vID_CliTriangular > 0 then
  begin
    btnCancelarClick(Sender);
  end
  else
    Close;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Copiar_Nota;
var
  x: Integer;
begin
  fDMCadNotaFiscal.prc_Inserir('NTS');
  for x := 0 to (fDMCopiarNota.cdsNotaFiscal.FieldCount - 1) do
  begin
    if not (fDMCopiarNota.cdsNotaFiscal.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if (fDMCopiarNota.cdsNotaFiscal.Fields[x].FieldName <> 'ID') and (fDMCopiarNota.cdsNotaFiscal.Fields[x].FieldName <> 'NUMNOTA')  and (fDMCopiarNota.cdsNotaFiscal.Fields[x].FieldName <> 'SERIE') and
         (fDMCopiarNota.cdsNotaFiscal.Fields[x].FieldName <> 'HREMISSAO')  then
        fDMCadNotaFiscal.cdsNotaFiscal.FieldByName(fDMCopiarNota.cdsNotaFiscal.Fields[x].FieldName).AsVariant := fDMCopiarNota.cdsNotaFiscal.Fields[x].Value;
    end;
  end;
  fDMCadNotaFiscal.cdsNotaFiscalDADOS_ADICIONAIS.Clear;
  fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString   := 'N';


  //if not ckIgual.Checked then
  if RadioGroup1.ItemIndex <> 3 then
  begin
    //if ckEntrada.Checked then
    if RadioGroup1.ItemIndex = 1 then
      fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString := 'S'
    else
      fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString := 'N';
    fDMCadNotaFiscal.cdsNotaFiscalDTINICIO_DUPLICATA.Clear;
    //if ckEntrada.Checked then
    if RadioGroup1.ItemIndex = 1 then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString     := 'E';
    fDMCadNotaFiscal.cdsNotaFiscalBASE_ICMSSIMPLES.AsFloat := 0;
    if RxDBLookupCombo3.Text <> '' then
      fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger := RxDBLookupCombo3.KeyValue;
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);

    fDMCadNotaFiscal.vID_CFOP          := 0;
    if rxdbOperacao.Text = '' then
      fDMCadNotaFiscal.vID_Variacao    := 0;
    fDMCadNotaFiscal.vUsarRegraEmpresa := False;
    if RxDBLookupCombo1.Text <> '' then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := RxDBLookupCombo1.KeyValue;
      fDMCadNotaFiscal.vID_CFOP := RxDBLookupCombo1.KeyValue;
    end
    else
    if rxdbOperacao.Text <> '' then
    begin
      prc_Posicionar_Regra_Empresa(rxdbOperacao.KeyValue,'O');
      if fDMCadNotaFiscal.vID_CFOP > 0 then
        fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := fDMCadNotaFiscal.vID_CFOP;
    end
    else
    begin
      fDMCadNotaFiscal.vID_CFOP     := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
      //fDMCadNotaFiscal.vID_Variacao := fDMCadNotaFiscal.cdsNotaFiscalID_VARIACAO.AsInteger;
      //if ckEntrada.Checked then
      if RadioGroup1.ItemIndex = 1 then
        prc_Verificar_CFOP_Devolucao(fDMCadNotaFiscal.vID_CFOP);
      fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger     := fDMCadNotaFiscal.vID_CFOP;
      fDMCadNotaFiscal.cdsNotaFiscalID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
    end;
    fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.vID_CFOP,[loCaseInsensitive]);

    //if not ckCopiarNota.Checked then
    fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.Clear;
    fDMCadNotaFiscal.cdsNotaFiscalSERIECOPIADA.AsString := '';
    if RadioGroup1.ItemIndex <> 0 then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger   := 0;
      fDMCadNotaFiscal.cdsNotaFiscalID_NOTACOPIADA.AsInteger   := 0;
      fDMCadNotaFiscal.cdsNotaFiscalID_EXTCOMISSAO.AsInteger    := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATA.AsFloat       := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ADUANEIRA.AsFloat       := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_COFINS.AsFloat          := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat        := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_DUPLICATAOUTROS.AsFloat := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ENTRADA.AsFloat         := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_FRETE.AsFloat           := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMS.AsFloat            := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSOUTROS.AsFloat      := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat     := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ICMSSUBST.AsFloat       := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_IMPORTACAO.AsFloat      := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_IPI.AsFloat             := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_ITENS.AsFloat           := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_NOTA.AsFloat            := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTRASDESP.AsFloat      := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_OUTROS.AsFloat          := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_PIS.AsFloat             := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_SEGURO.AsFloat          := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat    := 0;
      fDMCadNotaFiscal.cdsNotaFiscalVLR_TRANSF.AsFloat          := 0;
      fDMCadNotaFiscal.cdsNotaFiscalID_OPERACAO_NOTA.Clear;
      fDMCadNotaFiscal.cdsNotaFiscalFINALIDADE.AsString        := '';
    end;
    if ((rxdbOperacao.Text <> '') and (rxdbOperacao.KeyValue = fDMCadNotaFiscal.cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger)) or (RadioGroup1.ItemIndex = 2) then
    begin
      fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger := fDMCopiarNota.cdsNotaFiscalID_CLIENTE.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalNUMNOTACOPIADA.AsInteger   := fDMCopiarNota.cdsNotaFiscalNUMNOTA.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalID_NOTACOPIADA.AsInteger   := fDMCopiarNota.cdsNotaFiscalID.AsInteger;
      fDMCadNotaFiscal.cdsNotaFiscalSERIECOPIADA.AsString      := fDMCopiarNota.cdsNotaFiscalSERIE.AsString;
    end;
    fDMCadNotaFiscal.cdsNotaFiscalDTEMISSAO.AsDateTime              := Date;
  end;
  fDMCadNotaFiscal.cdsNotaFiscalNFEAMBIENTE.AsString              := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFECHAVEACESSO.AsString           := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFECODBARRA_CONTINGENCIA.AsString := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString              := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO.AsString             := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFEPROTOCOLO_CANCELADA.AsString   := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFERECIBO.AsString                := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFEVERSAO.AsString                := '';
  fDMCadNotaFiscal.cdsNotaFiscalNFEVERSAOEMISSAO.AsString         := '';
  fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CANCELADA.AsString         := '';
  fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CONTINGENCIA.AsString      := '';
  fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString          := '';
  fDMCadNotaFiscal.cdsNotaFiscalDTSAIDAENTRADA.Clear;
  fDMCadNotaFiscal.cdsNotaFiscal.Post;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Copiar_Nota_Itens;
var
  x: Integer;
begin
  fDMCopiarNota.cdsNotaFiscal_Itens.First;
  while not fDMCopiarNota.cdsNotaFiscal_Itens.Eof do
  begin
    fDMCadNotaFiscal.prc_Inserir_Itens;

    for x := 0 to (fDMCopiarNota.cdsNotaFiscal_Itens.FieldCount - 1) do
    begin
      if not (fDMCopiarNota.cdsNotaFiscal_Itens.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
      begin
        if (fDMCopiarNota.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'ID') and (fDMCopiarNota.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'NUMNOTA')  and (fDMCopiarNota.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'SERIE') and
           (fDMCopiarNota.cdsNotaFiscal_Itens.Fields[x].FieldName <> 'sdsNotaFiscal_Imp') then
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.FieldByName(fDMCopiarNota.cdsNotaFiscal_Itens.Fields[x].FieldName).AsVariant := fDMCopiarNota.cdsNotaFiscal_Itens.Fields[x].Value;
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := 0;

    if fDMCadNotaFiscal.qParametros_NFeGRAVAR_TAB_TAMANHO.AsString = 'S' then
    begin
      if not fDMCopiarNota.cdsNotaFiscal_Tam.IsEmpty then
      begin
        fDMCopiarNota.cdsNotaFiscal_Tam.First;
        while not fDMCopiarNota.cdsNotaFiscal_Tam.Eof do
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Tam.Insert;
          for x := 0 to (fDMCopiarNota.cdsNotaFiscal_Tam.FieldCount - 1) do
          begin
            if not (fDMCopiarNota.cdsNotaFiscal_Tam.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
            begin
              if (fDMCopiarNota.cdsNotaFiscal_Tam.Fields[x].FieldName <> 'ID') and (fDMCopiarNota.cdsNotaFiscal_Tam.Fields[x].FieldName <> 'NUMNOTA')  and (fDMCopiarNota.cdsNotaFiscal_Tam.Fields[x].FieldName <> 'SERIE') then
                fDMCadNotaFiscal.cdsNotaFiscal_Tam.FieldByName(fDMCopiarNota.cdsNotaFiscal_Tam.Fields[x].FieldName).AsVariant := fDMCopiarNota.cdsNotaFiscal_Tam.Fields[x].Value;
            end;
          end;
          if (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'N') and (RadioGroup1.ItemIndex <> 1) then
          begin
            fDMCadNotaFiscal.cdsNotaFiscal_TamITEM_PEDIDO.AsInteger := 0;
          end;
          fDMCadNotaFiscal.cdsNotaFiscal_Tam.Post;
          fDMCopiarNota.cdsNotaFiscal_Tam.Next;
        end;
      end;
    end;

    //if not ckIgual.Checked then
    if RadioGroup1.ItemIndex <> 3 then
    begin
      if RxDBLookupCombo1.Text <> '' then
      begin
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := RxDBLookupCombo1.KeyValue;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString  := RxDBLookupCombo1.Text;
        if RxDBLookupCombo2.Text <> '' then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := RxDBLookupCombo2.KeyValue;
      end;
      //if (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'N') and not(ckEntrada.Checked) then
      if (fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'N') and (RadioGroup1.ItemIndex <> 1) then
      begin
        //if ckTriangular.Checked then
        if RadioGroup1.ItemIndex = 2 then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'N';
        fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_PEDIDO.Clear;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_PEDIDO.Clear;
      end;
      //if ckEntrada.Checked then
      if RadioGroup1.ItemIndex = 1 then
      begin
        prc_Verificar_CFOP_Devolucao(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
        fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger  := fDMCadNotaFiscal.vID_CFOP;
        if fDMCadNotaFiscal.cdsCFOPID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger then
          fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]);
         vCodCFOP_COP := fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensCODCFOP.AsString   := vCodCFOP_COP;
        fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString := 'E';
      end
      else
        fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;

      //if not ckCopiarNota.Checked then
      if RadioGroup1.ItemIndex <> 0 then
      begin
        //IF para não mover os dados quando for uma nota de entrada por cancelamento, colocada dia 09/12/2016 versão 1.0.1.181
        if RadioGroup1.ItemIndex <> 1 then
          ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;
        //if (ckEntrada.Checked) or (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0) or
        //   (ckTriangular.Checked) then
        if (RadioGroup1.ItemIndex = 1) or (StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) <= 0) or
           (RadioGroup1.ItemIndex = 2) then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCopiarNota.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat;
        end;
        //if ckTriangular.Checked then
        if RadioGroup1.ItemIndex = 2 then
          fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';

        prc_Calculo_GeralItem(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat,
                                              fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString);
      end;
    end;
    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;

    prc_Le_cdsNDevolvida;

    try
    prc_Gravar_Nota_Imp;
    except
    end;

    prc_Gravar_Drawback;

    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
    //fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);

    fDMCopiarNota.cdsNotaFiscal_Itens.Next;

  end;

end;

procedure TfrmCadNotaFiscal_Copia.prc_Le_cdsNDevolvida;
var
  vNomeTriang, vTextoTriang: String;
  texto2: String;
  vTextoDetNFe: String;
begin
  vTextoDetNFe := '';
  vNomeTriang  := '';
  vTextoTriang := '';
  if fDMCopiarNota.cdsNotaFiscal_NDevolvida.RecordCount > 0 then
  begin
    texto2 := '';
    fDMCopiarNota.cdsNotaFiscal_NDevolvida.First;
    while not fDMCopiarNota.cdsNotaFiscal_NDevolvida.Eof do
    begin
      //if ckEntrada.Checked then
      if (RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 3) then
        prc_Copiar_Nota_NDevolvida
      else
      begin
        if fDMCopiarNota.cdsNotaFiscal_NDevolvidaCNPJ_CPF.AsString <> fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString then
        begin
          if vTextoTriang = '' then
            vTextoTriang := '[Ret.Ref.Nota '
          else
            vTextoTriang := vTextoTriang + ',';
          vNomeTriang := fDMCopiarNota.cdsNotaFiscal_NDevolvidaNOMEFORNECEDOR.AsString;
        end;
        if texto2 = '' then
          texto2 := fDMCopiarNota.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsString
        else
          texto2 := texto2 + ',' + fDMCopiarNota.cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA.AsString;

        fDMCopiarNota.qNotaEntrada_Itens.Close;
        fDMCopiarNota.qNotaEntrada_Itens.ParamByName('ID').AsInteger   := fDMCopiarNota.cdsNotaFiscal_NDevolvidaID_NTE.AsInteger;
        fDMCopiarNota.qNotaEntrada_Itens.ParamByName('ITEM').AsInteger := fDMCopiarNota.cdsNotaFiscal_NDevolvidaITEM_NTE.AsInteger;
        fDMCopiarNota.qNotaEntrada_Itens.Open;
        if not(fDMCopiarNota.qNotaEntrada_Itens.IsEmpty) and (fDMCopiarNota.qNotaEntrada_ItensID.AsInteger > 0) then
        begin
          if StrToFloat(FormatFloat('0.0000000',fDMCopiarNota.qNotaEntrada_ItensQTDRESTANTE.AsFloat)) > 0 then
            texto2 := texto2 + ' Parcial'
          else
            texto2 := texto2 + ' Total';
        end;
        if fDMCopiarNota.cdsNotaFiscal_NDevolvidaCNPJ_CPF.AsString <> fDMCadNotaFiscal.cdsClienteCNPJ_CPF.AsString then
          vTextoTriang := vTextoTriang + Texto2;
      end;
      fDMCopiarNota.cdsNotaFiscal_NDevolvida.Next;
    end;
    if texto2 <> '' then
      vTextoDetNFe  := vTextoDetNFe + '(Notas Dev.:' + texto2 + ') ';
    if vTextoTriang <> '' then
      vTextoDetNFe := vTextoDetNFe + vTextoTriang + ' de ' + vNomeTriang + '] ';
  end;
  if vTextoDetNFe <> '' then
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsInactive,dsBrowse] then
      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
    if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.Value) = '' then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.Value := vTextoDetNFe
    else
      fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.Value := fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.Value + ' ' + vTextoDetNFe;
  end;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Gravar_Nota_Imp;
var
  x: Integer;
begin
  fDMCopiarNota.cdsNotaFiscal_Imp.First;
  while not fDMCopiarNota.cdsNotaFiscal_Imp.Eof do
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_ImpID.AsInteger                := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger              := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
    for x := 0 to (fDMCopiarNota.cdsNotaFiscal_Imp.FieldCount - 1) do
    begin
      if not (fDMCopiarNota.cdsNotaFiscal_Imp.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
      begin
        if (fDMCopiarNota.cdsNotaFiscal_Imp.Fields[x].FieldName <> 'ID') and (fDMCopiarNota.cdsNotaFiscal_Imp.Fields[x].FieldName <> 'ITEM')  and (fDMCopiarNota.cdsNotaFiscal_Imp.Fields[x].FieldName <> 'sdsNotaFiscal_Imp_Ad') then
          fDMCadNotaFiscal.cdsNotaFiscal_Imp.FieldByName(fDMCopiarNota.cdsNotaFiscal_Imp.Fields[x].FieldName).AsVariant := fDMCopiarNota.cdsNotaFiscal_Imp.Fields[x].Value;
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Post;
    prc_Gravar_Nota_Imp_AD;

    fDMCopiarNota.cdsNotaFiscal_Imp.Next;
  end;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Gravar_Nota_Imp_AD;
var
  x: Integer;
begin
  fDMCopiarNota.cdsNotaFiscal_Imp_Ad.First;
  while not fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Eof do
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdID.AsInteger       := fDMCadNotaFiscal.cdsNotaFiscal_ImpID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_IMP.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger;
    for x := 0 to (fDMCopiarNota.cdsNotaFiscal_Imp_Ad.FieldCount - 1) do
    begin
      if (fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Fields[x].FieldName <> 'ID') and (fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Fields[x].FieldName <> 'ITEM') and (fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Fields[x].FieldName <> 'ITEM_IMP') then
      begin
        if not (fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
          fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.FieldByName(fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Fields[x].FieldName).AsVariant := fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Fields[x].Value;
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Post;
    fDMCopiarNota.cdsNotaFiscal_Imp_Ad.Next;
  end;
end;

procedure TfrmCadNotaFiscal_Copia.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadNotaFiscal_Copia.Panel1Exit(Sender: TObject);
var
  vID_Operacao: Integer;
begin
  vID_Operacao := 0;
  prc_Posicionar_Cliente;

  if rxdbOperacao.Text <> '' then
    vID_Operacao := rxdbOperacao.KeyValue;

  if vID_Operacao > 0 then
  begin
    prc_Posicionar_Regra_Empresa(vID_Operacao,'O');
    if fDMCadNotaFiscal.vID_CFOP > 0 then
      RxDBLookupCombo1.KeyValue := fDMCadNotaFiscal.vID_CFOP;
    if fDMCadNotaFiscal.vID_Variacao > 0 then
      RxDBLookupCombo2.KeyValue := fDMCadNotaFiscal.vID_Variacao;
  end;
end;                                       

procedure TfrmCadNotaFiscal_Copia.prc_Posicionar_Cliente;
begin
  fDMCadNotaFiscal.vAliqIcms := 0;
  fDMCadNotaFiscal.vSiglaUF  := '';
  if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if fDMCadNotaFiscal.cdsUFUF.AsString  <> fDMCadNotaFiscal.cdsClienteUF.AsString then
    fDMCadNotaFiscal.cdsUF.Locate('UF',fDMCadNotaFiscal.cdsClienteUF.AsString,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (fDMCadNotaFiscal.cdsVendedorCODIGO.AsInteger <>
      fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger) then
    fDMCadNotaFiscal.cdsVendedor.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_VENDEDOR.AsInteger,[loCaseInsensitive]);
  if (fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger) then
    fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
  fDMCadNotaFiscal.vAliqIcms := fDMCadNotaFiscal.cdsUFPERC_ICMS.AsFloat;
  fDMCadNotaFiscal.vSiglaUF  := fDMCadNotaFiscal.cdsClienteUF.AsString;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Verificar_CFOP_Devolucao(ID_CFOP: Integer);
begin
  fDMCopiarNota.qCFOP.Close;
  fDMCopiarNota.qCFOP.ParamByName('ID').AsInteger := ID_CFOP;
  fDMCopiarNota.qCFOP.Open;
  if (Copy(fDMCopiarNota.qCFOPCODCFOP.AsString,1,1) = '5') then
    vCodCFOP_COP := '1' + Copy(fDMCopiarNota.qCFOPCODCFOP.AsString,2,3)
  else
  if (Copy(fDMCopiarNota.qCFOPCODCFOP.AsString,1,1) = '6') then
    vCodCFOP_COP := '2' + Copy(fDMCopiarNota.qCFOPCODCFOP.AsString,2,3)
  else
  if (Copy(fDMCopiarNota.qCFOPCODCFOP.AsString,1,1) = '7') then
    vCodCFOP_COP := '3' + Copy(fDMCopiarNota.qCFOPCODCFOP.AsString,2,3);
  if fDMCadNotaFiscal.cdsCFOP.Locate('CODCFOP',vCodCFOP_COP,[loCaseInsensitive]) then
    fDMCadNotaFiscal.vID_CFOP := fDMCadNotaFiscal.cdsCFOPID.AsInteger;

  {if (Copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '5') then
    vCodCFOP_COP := '1' + Copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,2,3)
  else
  if (Copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '6') then
    vCodCFOP_COP := '2' + Copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,2,3)
  else
  if (Copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,1,1) = '7') then
    vCodCFOP_COP := '3' + Copy(fDMCadNotaFiscal.cdsCFOPCODCFOP.AsString,2,3);
  if fDMCadNotaFiscal.cdsCFOP.Locate('CODCFOP',vCodCFOP_COP,[loCaseInsensitive]) then
    fDMCadNotaFiscal.vID_CFOP := fDMCadNotaFiscal.cdsCFOPID.AsInteger;}
end;

procedure TfrmCadNotaFiscal_Copia.prc_Copiar_Nota_NDevolvida;
var
  vItemAux: Integer;
  x: Integer;
begin
  //if not ckEntrada.Checked then
  if (RadioGroup1.ItemIndex <> 1) and (RadioGroup1.ItemIndex <> 3) then
    exit;
  fDMCopiarNota.cdsNotaFiscal_NDevolvida.First;
  while not fDMCopiarNota.cdsNotaFiscal_NDevolvida.Eof do
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM_NDEV.AsInteger;
    vItemAux := vItemAux + 1;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaID.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaITEM.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
    for x := 0 to (fDMCopiarNota.cdsNotaFiscal_NDevolvida.FieldCount - 1) do
    begin
      if not (fDMCopiarNota.cdsNotaFiscal_NDevolvida.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
      begin
        if (fDMCopiarNota.cdsNotaFiscal_NDevolvida.Fields[x].FieldName <> 'ID') and (fDMCopiarNota.cdsNotaFiscal_NDevolvida.Fields[x].FieldName <> 'ITEM')  then
          fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.FieldByName(fDMCopiarNota.cdsNotaFiscal_NDevolvida.Fields[x].FieldName).AsVariant := fDMCopiarNota.cdsNotaFiscal_NDevolvida.Fields[x].Value;
      end;
    end;
    //colocar entrada
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaTIPO_NOTA.AsString := 'E';
    fDMCadNotaFiscal.cdsNotaFiscal_NDevolvida.Post;
    fDMCopiarNota.cdsNotaFiscal_NDevolvida.Next;
  end;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Copiar_Nota_Ref;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Ref.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_RefID.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_RefITEM.AsInteger := 1;
  fDMCadNotaFiscal.cdsNotaFiscal_RefTIPO.AsString  := '13';
  fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString := fDMCopiarNota.cdsNotaFiscalNFECHAVEACESSO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_RefDESCRICAO_TIPO.AsString     := 'NFe';
  fDMCadNotaFiscal.cdsNotaFiscal_Ref.Post;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Inicio_Tela;
begin
  fDMCopiarNota := TDMCopiarNota.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  CurrencyEdit1.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaNUMNOTA.AsInteger;
  Edit1.Text              := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaSERIE.AsString;

  prc_Abrir_Nota;

  //if not fDMCadNotaFiscal.cdsCFOP.Active then
  //  fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S');

  if (vID_CliTriangular > 0) and (fDMCadNotaFiscal.cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger <= 0) then
    MessageDlg('*** Favor verificar que não esta configurado no parametros a Operação Triangular!', mtError, [mbOk], 0);

  if (vID_CliTriangular > 0) then
  begin
    //ckTriangular.Checked  := True;
    RadioGroup1.ItemIndex := 2;
    if fDMCadNotaFiscal.cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger > 0 then
      rxdbOperacao.KeyValue := fDMCadNotaFiscal.cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger;
    if (fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_CLIENTETRIANG.AsInteger > 0) and (RadioGroup1.ItemIndex = 2) then
    begin
      fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_CLIENTETRIANG.AsInteger,[loCaseInsensitive]);
      RxDBLookupCombo3.KeyValue := fDMCadNotaFiscal.cdsNotaFiscal_ConsultaID_CLIENTETRIANG.AsInteger;
    end;
    Panel1Exit(frmCadNotaFiscal_Copia);
    //btnCopiarClick(frmCadNotaFiscal_Copia);
  end;


end;

procedure TfrmCadNotaFiscal_Copia.FormShow(Sender: TObject);
begin
  RxDBLookupCombo3.ClearValue;
  RadioGroup1.SetFocus;
  prc_Inicio_Tela;
end;

procedure TfrmCadNotaFiscal_Copia.prc_Posicionar_Regra_Empresa(
  ID_Operacao: Integer; Finalidade: String);
var
  vCodRegAux: Integer;
  vTipoAux: String;
  vUFClienteAux: String;
  vTipoEmpresa : String;
begin
  if vID_CliTriangular > 0 then
    fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',vID_CliTriangular,[loCaseInsensitive]);

  if fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger > 0 then
    vCodRegAux := fDMCadNotaFiscal.cdsClienteID_REGIME_TRIB.AsInteger
  else
    vCodRegAux := 1;
  if fDMCadNotaFiscal.cdsClienteUF.AsString = fDMCadNotaFiscal.cdsFilialUF.AsString then
    vUFClienteAux := 'D'
  else
  if fDMCadNotaFiscal.cdsClienteID_PAIS.AsInteger > 1 then
    vUFClienteAux := 'E'
  else
    vUFClienteAux := 'F';

  fDMCadNotaFiscal.qRegime_Trib.Close;
  fDMCadNotaFiscal.qRegime_Trib.ParamByName('ID').AsInteger := vCodRegAux;
  fDMCadNotaFiscal.qRegime_Trib.Open;
  if fDMCadNotaFiscal.qRegime_TribCODIGO.AsInteger > 2 then
    vTipoAux := 'G'
  else
    vTipoAux := 'S';
  if fDMCadNotaFiscal.cdsFilialSIMPLES.AsString = 'S' then
    vTipoEmpresa := 'S'
  else
    vTipoEmpresa := 'G';
  fDMCadNotaFiscal.vID_CFOP := fnc_Regra_Empresa_Triangular(fDMCadNotaFiscal.cdsClientePESSOA.AsString,vTipoEmpresa,vTipoAux,vUFClienteAux,ID_Operacao);
  fDMCadNotaFiscal.vID_Variacao := 0;

  fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.vID_CFOP);

  if fDMCadNotaFiscal.vID_CFOP > 0 then
    fDMCadNotaFiscal.vUsarRegraEmpresa := True
  else
    fDMCadNotaFiscal.vUsarRegraEmpresa := False;
end;

procedure TfrmCadNotaFiscal_Copia.gbxVendedorExit(Sender: TObject);
begin
  {if ckCopiarNota.Checked then
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCopiarNota.cdsNotaFiscalTIPO_NOTA.AsString)
  else
  if ckEntrada.Checked then
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E')
  else
  if ckTriangular.Checked then
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S')
  else
    fDMCadNotaFiscal.prc_Abrir_cdsCFOP('');}
end;

procedure TfrmCadNotaFiscal_Copia.prc_Gravar_Drawback;
var
  x: Integer;
begin
  fDMCopiarNota.cdsNotaFiscal_DrawBack.First;
  while not fDMCopiarNota.cdsNotaFiscal_DrawBack.Eof do
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBackID.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBackITEM.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
    for x := 0 to (fDMCopiarNota.cdsNotaFiscal_DrawBack.FieldCount - 1) do
    begin
      if (fDMCopiarNota.cdsNotaFiscal_DrawBack.Fields[x].FieldName <> 'ID') and (fDMCopiarNota.cdsNotaFiscal_DrawBack.Fields[x].FieldName <> 'ITEM') then
      begin
        if not (fDMCopiarNota.cdsNotaFiscal_DrawBack.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
          fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.FieldByName(fDMCopiarNota.cdsNotaFiscal_DrawBack.Fields[x].FieldName).AsVariant := fDMCopiarNota.cdsNotaFiscal_DrawBack.Fields[x].Value;
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_DrawBack.Post;
    fDMCopiarNota.cdsNotaFiscal_DrawBack.Next;
  end;
end;

procedure TfrmCadNotaFiscal_Copia.RadioGroup1Click(Sender: TObject);
begin
  GroupBox1.Visible := (RadioGroup1.ItemIndex <> 2) and (RadioGroup1.ItemIndex <> 3);
  if RadioGroup1.ItemIndex = 2 then
  begin
    if fDMCadNotaFiscal.cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger > 0 then
      rxdbOperacao.KeyValue := fDMCadNotaFiscal.cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger;
  end
  else
      rxdbOperacao.ClearValue;
  Label22.Visible          := (RadioGroup1.ItemIndex <> 1);
  RxDBLookupCombo3.Visible := (RadioGroup1.ItemIndex <> 1);
  GroupBox1.Visible        := (RadioGroup1.ItemIndex = 1);
  Panel1.Visible           := (RadioGroup1.ItemIndex <> 3);
  Label4.Visible           := (RadioGroup1.ItemIndex <> 3);
  RxDBLookupCombo1.Visible := (RadioGroup1.ItemIndex <> 3);
  Label5.Visible           := (RadioGroup1.ItemIndex <> 3);
  RxDBLookupCombo2.Visible := (RadioGroup1.ItemIndex <> 3);
end;

procedure TfrmCadNotaFiscal_Copia.RadioGroup1Exit(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: fDMCadNotaFiscal.prc_Abrir_cdsCFOP(fDMCopiarNota.cdsNotaFiscalTIPO_NOTA.AsString);
    1: fDMCadNotaFiscal.prc_Abrir_cdsCFOP('E');
    2: begin
         if fDMCopiarNota.cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0 then
           RxDBLookupCombo3.KeyValue := fDMCopiarNota.cdsNotaFiscalID_CLIENTETRIANG.AsInteger; 
         fDMCadNotaFiscal.prc_Abrir_cdsCFOP('S');
       end;
    3, -1: fDMCadNotaFiscal.prc_Abrir_cdsCFOP('');
  end
end;

end.
