unit UCadDuplicata_Desc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadDuplicata, Grids, DBGrids, SMDBGrid,
  NxCollection, ExtCtrls, StdCtrls, Mask, ToolEdit, RxLookup, CurrEdit, DB, dbXPress, SqlExpr;

type
  TfrmCadDuplicata_Desc = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label10: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    Label11: TLabel;
    CurrencyEdit8: TCurrencyEdit;
    Label12: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnExcluir: TNxButton;
    SMDBGrid2: TSMDBGrid;
    btnGerar_Automatico: TNxButton;
    btnCalcular: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnGerar_AutomaticoClick(Sender: TObject);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    vItem_Valores: Integer;
    vVlr_Liberado: Real;
    procedure prc_Inserir_Desc;
    procedure prc_Localizar_Desc(ID: Integer);
    procedure prc_Limpar_Duplicatas;
    procedure prc_Carregar_mCadastro(Tipo: String);
    procedure prc_AfterPost(DataSet: TDataSet);
    procedure prc_BeforeDelete(DataSet: TDataSet);
    procedure prc_gravar_Financeiro(Tipo, Historico: String; Valor: Real; Item, ID_Conta_Orcamento: Integer);
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
    vID_Descontada: Integer;
  end;

var
  frmCadDuplicata_Desc: TfrmCadDuplicata_Desc;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadDuplicata_Desc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMCadDuplicata.vTipo_Rel := '';
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Desc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  fDMCadDuplicata.mCadastro.AfterPost    := prc_AfterPost;
  fDMCadDuplicata.mCadastro.BeforeDelete := prc_BeforeDelete;
  fDMCadDuplicata.vGerou_Descontada := False;
  fDMCadDuplicata.mExcluir_Dup.EmptyDataSet;
  fDMCadDuplicata.mCadastro.EmptyDataSet;
  if vID_Descontada > 0 then
  begin
    DateEdit1.Date := fDMCadDuplicata.cdsDescontadaDTDESCONTADA.AsDateTime;
    if fDMCadDuplicata.cdsDescontadaID_TIPO_COBRANCA.AsInteger > 0 then
      RxDBLookupCombo2.KeyValue := fDMCadDuplicata.cdsDescontadaID_TIPO_COBRANCA.AsInteger;
    if fDMCadDuplicata.cdsDescontadaID_CONTA.AsInteger > 0 then
      RxDBLookupCombo1.KeyValue := fDMCadDuplicata.cdsDescontadaID_CONTA.AsInteger;
    if fDMCadDuplicata.cdsDescontadaID_CONTA_DESC.AsInteger > 0 then
      RxDBLookupCombo4.KeyValue := fDMCadDuplicata.cdsDescontadaID_CONTA_DESC.AsInteger;
    CurrencyEdit1.Value := fDMCadDuplicata.cdsDescontadaVLR_TOTAL_TIT.AsFloat;
    CurrencyEdit7.Value := fDMCadDuplicata.cdsDescontadaQTD_TITULOS.AsInteger;
    CurrencyEdit8.Value := fDMCadDuplicata.cdsDescontadaVLR_LIBERADO.AsFloat;
    prc_Carregar_mCadastro('D');
  end
  else
  begin
    DateEdit1.Date := Date;
    if fDMCadDuplicata.cdsTipoCobranca.Locate('DESCONTADO','S',[loCaseInsensitive]) then
      if fDMCadDuplicata.cdsTipoCobrancaID.AsInteger > 0 then
        RxDBLookupCombo2.KeyValue := fDMCadDuplicata.cdsTipoCobrancaID.AsInteger;
    prc_Carregar_mCadastro('C');
    btnCalcularClick(frmCadDuplicata_Desc);
  end;
end;

procedure TfrmCadDuplicata_Desc.btnExcluirClick(Sender: TObject);
begin
  if fDMCadDuplicata.mTitulos.IsEmpty then
    exit;                          
  if MessageDlg('Deseja excluir os registros selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value - fDMCadDuplicata.mTitulosVlr_Parcela.AsFloat));
  CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit8.Value - fDMCadDuplicata.mTitulosVlr_Parcela.AsFloat));
  vVlr_Liberado       := CurrencyEdit8.Value;
  CurrencyEdit7.Value := CurrencyEdit7.Value - 1;
  if not fDMCadDuplicata.mExcluir_Dup.Locate('ID_DUPLICATA',fDMCadDuplicata.mTitulosID.AsInteger,[loCaseInsensitive]) then
  begin
    fDMCadDuplicata.mExcluir_Dup.Insert;
    fDMCadDuplicata.mExcluir_DupID_Duplicata.AsInteger := fDMCadDuplicata.mTitulosID.AsInteger;
    fDMCadDuplicata.mExcluir_Dup.Post;
  end;
  fDMCadDuplicata.mTitulos.Delete;
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
  //btnExcluir.Enabled := False;

end;

procedure TfrmCadDuplicata_Desc.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadDuplicata_Desc.btnConfirmarClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vHist: String;
  vGravar: Boolean;
  vFilialAux: Integer;
  vArq: String;
begin
  if MessageDlg('Confirma títulos descontados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  if RxDBLookupCombo4.Text = '' then
  begin
    MessageDlg('*** Conta descontada não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if RxDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Conta crédido não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if RxDBLookupCombo2.Text = '' then
  begin
    MessageDlg('*** Forma de pagamento informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  vGravar := True;
  fDMCadDuplicata.mTitulos.First;
  vFilialAux := fDMCadDuplicata.mTitulosFilial.AsInteger;
  while not fDMCadDuplicata.mTitulos.Eof do
  begin
    if fDMCadDuplicata.mTitulosFilial.AsInteger <> vFilialAux then
    begin
      vGravar := False;
      fDMCadDuplicata.mTitulos.Last;
    end;
    vFilialAux := fDMCadDuplicata.mTitulosFilial.AsInteger;
    fDMCadDuplicata.mTitulos.Next;
  end;
  if not vGravar then
  begin
    MessageDlg('*** Existe título com filiais diferentes!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadDuplicata.mCheque.EmptyDataSet;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' +
                       ' WHERE TABELA = ' + QuotedStr('DESCONTADA');
    sds.ExecSQL();

    if vID_Descontada <= 0 then
    begin
      prc_Inserir_Desc;
      prc_Limpar_Duplicatas;
    end
    else
      fDMCadDuplicata.cdsDescontada.Edit;

    fDMCadDuplicata.cdsDescontadaDTDESCONTADA.AsDateTime := DateEdit1.Date;
    fDMCadDuplicata.cdsDescontadaID_CONTA_DESC.AsInteger := RxDBLookupCombo4.KeyValue;
    if RxDBLookupCombo1.Text <> '' then
      fDMCadDuplicata.cdsDescontadaID_CONTA.AsInteger := RxDBLookupCombo1.KeyValue;
    fDMCadDuplicata.cdsDescontadaID_TIPO_COBRANCA.AsInteger := RxDBLookupCombo2.KeyValue;
    fDMCadDuplicata.cdsDescontadaVLR_TOTAL_TIT.AsFloat := StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value));
    fDMCadDuplicata.cdsDescontadaQTD_TITULOS.AsInteger := CurrencyEdit7.AsInteger;
    fDMCadDuplicata.cdsDescontadaVLR_LIBERADO.AsFloat  := StrToFloat(FormatFloat('0.00',CurrencyEdit8.Value));

    fDMCadDuplicata.cdsDescontada_Valores.First;
    while not fDMCadDuplicata.cdsDescontada_Valores.Eof do
      fDMCadDuplicata.cdsDescontada_Valores.Delete;

    fDMCadDuplicata.mCadastro.First;
    while not fDMCadDuplicata.mCadastro.Eof do
    begin
      if fDMCadDuplicata.mCadastroID_Valores.AsInteger > 0 then
      begin
        fDMCadDuplicata.cdsDescontada_Valores.Insert;
        fDMCadDuplicata.cdsDescontada_ValoresID.AsInteger                 := fDMCadDuplicata.cdsDescontadaID.AsInteger;
        fDMCadDuplicata.cdsDescontada_ValoresITEM.AsInteger               := fDMCadDuplicata.mCadastroItem.AsInteger;
        fDMCadDuplicata.cdsDescontada_ValoresID_VALORES.AsInteger         := fDMCadDuplicata.mCadastroID_Valores.AsInteger;
        fDMCadDuplicata.cdsDescontada_ValoresNOME.AsString                := fDMCadDuplicata.mCadastroNome.AsString;
        fDMCadDuplicata.cdsDescontada_ValoresVALOR.AsFloat                := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.mCadastroValor.AsFloat));
        fDMCadDuplicata.cdsDescontada_ValoresID_CONTA_ORCAMENTO.AsInteger := fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger;
        fDMCadDuplicata.cdsDescontada_Valores.Post;
      end;
      fDMCadDuplicata.mCadastro.Next;
    end;

    fDMCadDuplicata.mTitulos.First;
    fDMCadDuplicata.cdsDescontadaFILIAL.AsInteger := fDMCadDuplicata.mTitulosFilial.AsInteger;
    while not fDMCadDuplicata.mTitulos.Eof do
    begin
      fDMCadDuplicata.prc_Localizar(fDMCadDuplicata.mTitulosID.AsInteger);
      if not(fDMCadDuplicata.cdsDuplicata.IsEmpty) and (StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0) then
      begin
        fDMCadDuplicata.cdsDuplicata.Edit;
        fDMCadDuplicata.cdsDuplicataID_DESCONTADA.AsInteger := fDMCadDuplicata.cdsDescontadaID.AsInteger;
        fDMCadDuplicata.cdsDuplicataCONFIRMA_PGTO.AsString  := 'N';

        //fDMCadDuplicata.cdsDuplicataID_BANCO.AsInteger := fDMCadDuplicata.vID_Banco_Cheque;
        fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger        := RxDBLookupCombo4.KeyValue;
        fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.AsDateTime := DateEdit1.Date;
        fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat));
        fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger := RxDBLookupCombo2.KeyValue;

        vHist := 'BAIXA DESCONTADO DATA ' + DateEdit1.Text;
        fDMCadDuplicata.prc_Gravar_Dupicata_Hist('PAG',vHist,fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat,0,0,0,0,0,RxDBLookupCombo2.KeyValue,fDMCadDuplicata.cdsDuplicataID_DESCONTADA.AsInteger);

        fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat    := 0;
        fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat      := 0;
        fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat      := 0;
        fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat      := 0;
        fDMCadDuplicata.cdsDuplicataVLR_MULTA.AsFloat         := 0;
        if fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert] then
          fDMCadDuplicata.cdsDuplicata.Post;
        fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
      end;
      fDMCadDuplicata.mTitulos.Next;
    end;
    if vID_Descontada > 0 then
    begin
      fDMCadDuplicata.mExcluir_Dup.First;
      while not fDMCadDuplicata.mExcluir_Dup.Eof do
      begin
        fDMCadDuplicata.prc_Localizar(fDMCadDuplicata.mExcluir_DupID_Duplicata.AsInteger);
        if not(fDMCadDuplicata.cdsDuplicata.IsEmpty) and (StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat)) <= 0) then
        begin
          fDMCadDuplicata.cdsDuplicata.Edit;
          fDMCadDuplicata.cdsDuplicataID_DESCONTADA.AsInteger := 0;
          fDMCadDuplicata.cdsDuplicataCONFIRMA_PGTO.AsString  := 'N';

          fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger        := RxDBLookupCombo4.KeyValue;
          fDMCadDuplicata.cdsDuplicataDTULTPAGAMENTO.Clear;
          fDMCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',0));
          fDMCadDuplicata.cdsDuplicataID_TIPOCOBRANCA.AsInteger := 0;

          vHist := 'EXCLUIDA DA COBRANÇA DESCONTADA Nº ' + IntToStr(vID_Descontada);
          fDMCadDuplicata.prc_Gravar_Dupicata_Hist('OUT',vHist,0,0,0,0,0,0,0,0);

          fDMCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat    := 0;
          fDMCadDuplicata.cdsDuplicataVLR_MULTA.AsFloat         := 0;
          fDMCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat      := 0;
          fDMCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat      := 0;
          fDMCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDuplicataVLR_PARCELA.AsFloat));
          if fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert] then
            fDMCadDuplicata.cdsDuplicata.Post;
          fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);

        end;
        fDMCadDuplicata.mExcluir_Dup.Next;
      end;

    end;

    fDMCadDuplicata.cdsDescontada.Post;
    fDMCadDuplicata.cdsDescontada.ApplyUpdates(0);

    vHist := 'Entrada ref. a ' + fDMCadDuplicata.cdsDescontadaQTD_TITULOS.AsString + ' títulos descontados, nº mov: ' + fDMCadDuplicata.cdsDescontadaNUM_DESCONTADA.AsString;
    prc_gravar_Financeiro('E',vHist,fDMCadDuplicata.cdsDescontadaVLR_TOTAL_TIT.AsFloat,0,fDMCadDuplicata.qParametrosID_CONTA_ORC_DESCONTADA.AsInteger);

    fDMCadDuplicata.cdsDescontada_Valores.First;
    while not fDMCadDuplicata.cdsDescontada_Valores.Eof do
    begin
      if StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsDescontada_ValoresVALOR.AsFloat)) > 0 then
      begin
        vHist := 'Saída ref. a ' + fDMCadDuplicata.cdsDescontadaQTD_TITULOS.AsString + ' títulos descontados, nº mov: ' + fDMCadDuplicata.cdsDescontadaNUM_DESCONTADA.AsString + ', '
               + fDMCadDuplicata.cdsDescontada_ValoresNOME.AsString;
        prc_gravar_Financeiro('S',vHist,fDMCadDuplicata.cdsDescontada_ValoresVALOR.AsFloat,fDMCadDuplicata.cdsDescontada_ValoresITEM.AsInteger,fDMCadDuplicata.cdsDescontada_ValoresID_CONTA_ORCAMENTO.AsInteger);
      end;
      fDMCadDuplicata.cdsDescontada_Valores.Next;
    end;

    dmDatabase.scoDados.Commit(ID);
    fDMCadDuplicata.vGerou_Descontada := True;
    FreeAndNil(sds);
  except
    begin
      FreeAndNil(sds);
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end;
  end;
  MessageDlg('*** Título descontados!', mtConfirmation, [mbOk], 0);

  if MessageDlg('Confirma impressão da operação?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    fDMCadDuplicata.vTipo_Rel := 'DE';
    fDMCadDuplicata.cdsDescontada_Imp.Close;
    fDMCadDuplicata.sdsDescontada_Imp.ParamByName('ID').AsInteger := fDMCadDuplicata.cdsDescontadaID.AsInteger;
    fDMCadDuplicata.cdsDescontada_Imp.Open;
    if not fDMCadDuplicata.cdsDescontada_Imp.IsEmpty then
    begin
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Descontada_Ind.fr3';
      if FileExists(vArq) then
        fDMCadDuplicata.frxReport1.Report.LoadFromFile(vArq);
      fDMCadDuplicata.frxReport1.ShowReport;
    end;
  end;
  fDMCadDuplicata.mTitulos.EmptyDataSet;
  Close;
end;

procedure TfrmCadDuplicata_Desc.prc_Inserir_Desc;
var
  vAux: Integer;
  vNum_Mov: Integer;
  sds: TSQLDataSet;

begin
  if not fDMCadDuplicata.cdsDescontada.Active then
    prc_Localizar_Desc(-1);
  vAux := dmDatabase.ProximaSequencia('DESCONTADA',0);

  sds := TSQLDataSet.Create(nil);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' SELECT MAX(NUM_DESCONTADA) NUM_DESCONTADA ' +
                       ' FROM DESCONTADA ';
    sds.Open;
    vNum_Mov := sds.FieldByName('NUM_DESCONTADA').AsInteger;
    vNum_Mov := vNum_Mov + 1;

  finally
    FreeAndNil(sds);
  end;

  fDMCadDuplicata.cdsDescontada.Insert;
  fDMCadDuplicata.cdsDescontadaID.AsInteger := vAux;
  fDMCadDuplicata.cdsDescontadaNUM_DESCONTADA.AsInteger := vNum_Mov;
end;

procedure TfrmCadDuplicata_Desc.prc_Localizar_Desc(ID: Integer);
begin
  fDMCadDuplicata.cdsDescontada.Close;
  fDMCadDuplicata.sdsDescontada.ParamByName('ID').AsInteger := ID;
  fDMCadDuplicata.cdsDescontada.Open;
  fDMCadDuplicata.cdsDescontada_Valores.Close;
  fDMCadDuplicata.cdsDescontada_Valores.Open;
end;

procedure TfrmCadDuplicata_Desc.prc_Limpar_Duplicatas;
begin

end;

procedure TfrmCadDuplicata_Desc.btnGerar_AutomaticoClick(Sender: TObject);
begin
  prc_Carregar_mCadastro('C');
end;

procedure TfrmCadDuplicata_Desc.prc_Carregar_mCadastro(Tipo: String);
begin
  if Tipo = 'D' then
  begin
    fDMCadDuplicata.cdsDescontada_Valores.Last;
    vItem_Valores := fDMCadDuplicata.cdsDescontada_ValoresITEM.AsInteger;
  end;

  if Tipo = 'C' then
  begin
    fDMCadDuplicata.cdsCadastro_Valores.Close;
    fDMCadDuplicata.cdsCadastro_Valores.IndexFieldNames := 'ORDEM';
    fDMCadDuplicata.cdsCadastro_Valores.Open;
    fDMCadDuplicata.cdsCadastro_Valores.First;
    while not fDMCadDuplicata.cdsCadastro_Valores.Eof do
    begin
      if not fDMCadDuplicata.mCadastro.Locate('ID_Valores',fDMCadDuplicata.cdsCadastro_ValoresID.AsInteger,[loCaseInsensitive]) then
      begin
        vItem_Valores := vItem_Valores + 1;
        fDMCadDuplicata.mCadastro.Insert;
        fDMCadDuplicata.mCadastroItem.AsInteger               := vItem_Valores;
        fDMCadDuplicata.mCadastroID_Valores.AsInteger         := fDMCadDuplicata.cdsCadastro_ValoresID.AsInteger;
        fDMCadDuplicata.mCadastroNome.AsString                := fDMCadDuplicata.cdsCadastro_ValoresNOME.AsString;
        fDMCadDuplicata.mCadastroValor.AsFloat                := 0;
        fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger := fDMCadDuplicata.cdsCadastro_ValoresID_CONTA_ORCAMENTO.AsInteger;
        if fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger > 0 then
        begin
          fDMCadDuplicata.qConta_Orcamento.Close;
          fDMCadDuplicata.qConta_Orcamento.ParamByName('ID').AsInteger := fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger;
          fDMCadDuplicata.qConta_Orcamento.Open;
          fDMCadDuplicata.mCadastroNome_Conta_Orcamento.AsString := fDMCadDuplicata.qConta_OrcamentoDESCRICAO.AsString;
        end;
        fDMCadDuplicata.mCadastro.Post;
      end;
      fDMCadDuplicata.cdsCadastro_Valores.Next;
    end;
  end
  else
  begin
    fDMCadDuplicata.cdsDescontada_Valores.First;
    while not fDMCadDuplicata.cdsDescontada_Valores.Eof do
    begin
      if not fDMCadDuplicata.mCadastro.Locate('ID_Valores',fDMCadDuplicata.cdsDescontada_ValoresID_VALORES.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadDuplicata.mCadastro.Insert;
        fDMCadDuplicata.mCadastroItem.AsInteger               := fDMCadDuplicata.cdsDescontada_ValoresITEM.AsInteger;
        fDMCadDuplicata.mCadastroID_Valores.AsInteger         := fDMCadDuplicata.cdsDescontada_ValoresID_VALORES.AsInteger;
        fDMCadDuplicata.mCadastroNome.AsString                := fDMCadDuplicata.cdsDescontada_ValoresNOME.AsString;
        fDMCadDuplicata.mCadastroValor.AsFloat                := fDMCadDuplicata.cdsDescontada_ValoresVALOR.AsFloat;
        fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger := fDMCadDuplicata.cdsDescontada_ValoresID_CONTA_ORCAMENTO.AsInteger;
        if fDMCadDuplicata.cdsDescontada_ValoresID_CONTA_ORCAMENTO.AsInteger > 0 then
        begin
          fDMCadDuplicata.qConta_Orcamento.Close;
          fDMCadDuplicata.qConta_Orcamento.ParamByName('ID').AsInteger := fDMCadDuplicata.cdsDescontada_ValoresID_CONTA_ORCAMENTO.AsInteger;
          fDMCadDuplicata.qConta_Orcamento.Open;
          fDMCadDuplicata.mCadastroNome_Conta_Orcamento.AsString := fDMCadDuplicata.qConta_OrcamentoDESCRICAO.AsString;
        end;
        fDMCadDuplicata.mCadastro.Post;
      end;
      fDMCadDuplicata.cdsDescontada_Valores.Next;
    end;
  end;
end;

procedure TfrmCadDuplicata_Desc.SMDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if (fDMCadDuplicata.mCadastro.State in [dsEdit]) and (fDMCadDuplicata.mCadastroID_Valores.AsInteger > 0) then
      fDMCadDuplicata.mCadastro.Post;
  end
  else
  begin
    if (Key = Vk_F2) and (fDMCadDuplicata.mCadastroID_Valores.AsInteger > 0) then
    begin
      vID_ContaOrcamento_Pos := fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger;
      frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
      frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
      frmSel_ContaOrc.ShowModal;
      fDMCadDuplicata.mCadastro.Edit;
      fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger := vID_ContaOrcamento_Pos;
      if fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger <= 0 then
        fDMCadDuplicata.mCadastroNome_Conta_Orcamento.AsString := ''
      else
      begin
        fDMCadDuplicata.qConta_Orcamento.Close;
        fDMCadDuplicata.qConta_Orcamento.ParamByName('ID').AsInteger := fDMCadDuplicata.mCadastroID_Conta_Orcamento.AsInteger;
        fDMCadDuplicata.qConta_Orcamento.Open;
        fDMCadDuplicata.mCadastroNome_Conta_Orcamento.AsString := fDMCadDuplicata.qConta_OrcamentoDESCRICAO.AsString;
      end;
      fDMCadDuplicata.mCadastro.Post;
      SMDBGrid2.SetFocus;
    end;
  end;
end;

procedure TfrmCadDuplicata_Desc.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  Background  := $00BBFFBB;
  AFont.Color := clBlack;
end;

procedure TfrmCadDuplicata_Desc.prc_BeforeDelete(DataSet: TDataSet);
begin
  CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit8.Value + fDMCadDuplicata.mCadastroValor.AsFloat));
end;

procedure TfrmCadDuplicata_Desc.prc_AfterPost(DataSet: TDataSet);
begin
  btnCalcularClick(frmCadDuplicata_Desc);
end;

procedure TfrmCadDuplicata_Desc.btnCalcularClick(Sender: TObject);
var
  vVlrAux: Real;
  vItemAux: Integer;
begin
  SMDBGrid2.DisableScroll;
  vItemAux := fDMCadDuplicata.mCadastroItem.AsInteger;
  vVlrAux := CurrencyEdit1.Value;
  fDMCadDuplicata.mCadastro.First;
  while not fDMCadDuplicata.mCadastro.Eof do
  begin
    vVlrAux := vVlrAux - fDMCadDuplicata.mCadastroValor.AsFloat;
    fDMCadDuplicata.mCadastro.Next;
  end;
  CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',vVlrAux));
  SMDBGrid2.EnableScroll;
  fDMCadDuplicata.mCadastro.Locate('Item',vItemAux ,[loCaseInsensitive]);
end;

procedure TfrmCadDuplicata_Desc.prc_gravar_Financeiro(Tipo, Historico: String; Valor: Real; Item, ID_Conta_Orcamento: Integer);
var
  vIDAux: Integer;
begin
  fDMCadDuplicata.cdsFinanceiro.Close;
  fDMCadDuplicata.sdsFinanceiro.CommandText := fDMCadDuplicata. ctFinanceiro + ' WHERE ID_DESCONTADA = ' + IntToStr(fDMCadDuplicata.cdsDescontadaID.AsInteger)
                                             + ' AND ITEM_DESCONTADA = ' + IntToStr(Item);
  fDMCadDuplicata.cdsFinanceiro.Open;

  if not fDMCadDuplicata.cdsFinanceiro.IsEmpty then
    fDMCadDuplicata.cdsFinanceiro.Edit
  else
  begin
    vIDAux := dmDatabase.ProximaSequencia('FINANCEIRO',0);
    fDMCadDuplicata.cdsFinanceiro.Insert;
    fDMCadDuplicata.cdsFinanceiroID.AsInteger := vIDAux;
    fDMCadDuplicata.cdsFinanceiroTIPO_ES.AsString := Tipo;
    fDMCadDuplicata.cdsFinanceiroDTUSUARIO.AsDateTime := Date;
    fDMCadDuplicata.cdsFinanceiroHRUSUARIO.AsDateTime := Now;
  end;
  fDMCadDuplicata.cdsFinanceiroID_DESCONTADA.AsInteger      := fDMCadDuplicata.cdsDescontadaID.AsInteger;
  fDMCadDuplicata.cdsFinanceiroITEM_DESCONTADA.AsInteger    := Item;
  fDMCadDuplicata.cdsFinanceiroID_CONTA.AsInteger           := fDMCadDuplicata.cdsDescontadaID_CONTA.AsInteger;
  fDMCadDuplicata.cdsFinanceiroDTMOVIMENTO.AsDateTime       := fDMCadDuplicata.cdsDescontadaDTDESCONTADA.AsDateTime;
  fDMCadDuplicata.cdsFinanceiroVLR_MOVIMENTO.AsFloat        := StrToFloat(FormatFloat('0.00',Valor));
  fDMCadDuplicata.cdsFinanceiroID_FORMA_PAGAMENTO.AsInteger := fDMCadDuplicata.cdsDescontadaID_TIPO_COBRANCA.AsInteger;
  fDMCadDuplicata.cdsFinanceiroHISTORICO_COMPL.AsString     := Historico;
  fDMCadDuplicata.cdsFinanceiroHISTORICO_COMPL.AsString     := UpperCase(fDMCadDuplicata.cdsFinanceiroHISTORICO_COMPL.AsString);
  fDMCadDuplicata.cdsFinanceiroFILIAL.AsInteger             := fDMCadDuplicata.cdsDescontadaFILIAL.AsInteger;
  if ID_Conta_Orcamento > 0 then
    fDMCadDuplicata.cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := ID_Conta_Orcamento
  else
    fDMCadDuplicata.cdsFinanceiroID_CONTA_ORCAMENTO.Clear;
  fDMCadDuplicata.cdsFinanceiroUSUARIO.AsString := vUsuario;
  //12/07/2016
  if vTerminal <= 0 then
    fDMCadDuplicata.cdsFinanceiroID_TERMINAL.Clear
  else
    fDMCadDuplicata.cdsFinanceiroID_TERMINAL.AsInteger := vTerminal;
  fDMCadDuplicata.cdsFinanceiro.Post;
  fDMCadDuplicata.cdsFinanceiro.ApplyUpdates(0);
end;

end.
