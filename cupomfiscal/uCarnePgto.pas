unit uCarnePgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Mask, DBCtrls, StdCtrls, ExtCtrls,
  Grids, NxCollection, uDmPagamento, rsDBUtils, DBGrids, SMDBGrid, ToolEdit, CurrEdit, RxLookup, ValEdit, DB, SqlExpr, Menus,
  UDMCadDuplicata;

type
  TfCarnePgto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    brCancelar: TNxButton;
    btConfirmar: TNxButton;
    btGaveta: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    Confirmar1: TMenuItem;
    ConfimareImprimirrecibo1: TMenuItem;
    ValueListEditor1: TValueListEditor;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    Label15: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Panel4: TPanel;
    Label5: TLabel;
    Panel5: TPanel;
    Label8: TLabel;
    btExcluir: TNxButton;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btConfirmarIt: TNxButton;
    Panel6: TPanel;
    SMDBGrid4: TSMDBGrid;
    Label1: TLabel;
    ceFormaPgto: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label7: TLabel;
    ceValor: TCurrencyEdit;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    btRecalcular: TNxButton;
    btTodas: TNxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btConfirmarItClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ValueListEditor1DblClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure Confirmar1Click(Sender: TObject);
    procedure ConfimareImprimirrecibo1Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure ceFormaPgtoExit(Sender: TObject);
    procedure ceFormaPgtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton2Click(Sender: TObject);
    procedure btRecalcularClick(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure btTodasClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDmPagamento: TDmPagamento;
    fDmCadDuplicata: TDmCadDuplicata;
    vImprimir: String;
    vVlrPago: Currency;
    vBipado: Boolean;
    vIdCliente: Integer;
    procedure prcGravarSelecionados(vID_ContaPgtoSel, vID_FormaPgto: Integer; vVlrPgto, vVlrJuros, vVlrDesc: Currency);
    procedure prcLimparCampos;
    procedure prcPreencheMParcelas(vSelec: Integer);
    procedure prcLimpaMParcelas;
    procedure prcGravaPagamento;
    procedure prcVerificarSaldo;
    procedure prcInsereParcela(vValor: Currency);
  public
    { Public declarations }
  end;

var
  fCarnePgto: TfCarnePgto;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfCarnePgto.FormCreate(Sender: TObject);
begin
  fDmPagamento    := TDmPagamento.Create(Self);
  fDmCadDuplicata := TDmCadDuplicata.Create(Self);
end;

procedure TfCarnePgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fDmPagamento);
  FreeAndNil(fDmCadDuplicata);
  Action := caFree;
end;

procedure TfCarnePgto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmPagamento);
  vImprimir := 'N';
  vBipado   := True;
end;

procedure TfCarnePgto.btConfirmarItClick(Sender: TObject);
var
  vCodigo: Integer;
  vNumDoc: String;
  vNomeCli, vObsCli: String;
begin
  vCodigo := CurrencyEdit1.AsInteger;

  if vBipado then
    vCodigo := StrToInt(Copy(CurrencyEdit1.Text,1,Length(CurrencyEdit1.Text)-1));

  if CurrencyEdit1.Value > 0 then
  begin
    fDmPagamento.cdsDuplicata.Close;
    fDmPagamento.sdsDuplicata.ParamByName('ID').AsInteger := vCodigo;
    fDmPagamento.cdsDuplicata.Open;

    if not fDmPagamento.cdsDuplicataID_CUPOM.IsNull then
    begin
      fDmPagamento.cdsDuplicataCli.Close;
      fDmPagamento.sdsDuplicataCli.ParamByName('P1').AsInteger := fDmPagamento.cdsDuplicataID_PESSOA.AsInteger;
      fDmPagamento.cdsDuplicataCli.Open;
    end;
    if btTodas.Tag = 0 then
    begin
      prcPreencheMParcelas(vCodigo);
      prcLimpaMParcelas;
    end;

    if fDmPagamento.cdsDuplicataVLR_RESTANTE.AsFloat = 0 then
    begin
      ShowMessage('Pagamento dessa parcela já realizado!');
      Exit;
    end
    else
    begin
      fDmPagamento.qParametros.Close;
      fDmPagamento.qParametros.Open;

      if not fDmPagamento.cdsDuplicataID_CUPOM.IsNull then
      begin
        fDmPagamento.prc_PosicionaCupom(fDmPagamento.cdsDuplicataID_CUPOM.AsInteger);
        vNumDoc  := fDmPagamento.cdsCupomFiscalNUMCUPOM.AsString;
        vNomeCli := fDmPagamento.cdsCupomFiscalCLIENTE_NOME.AsString;
        vObsCli  := fDmPagamento.cdsCupomFiscalCLIENTE_OBS.AsString;
      end
      else
      begin
        vNumDoc  := fDmPagamento.cdsDuplicataNUMNOTA.AsString;
        vNomeCli := fDmPagamento.cdsDuplicataNOME_CLI.AsString;
        vObsCli  := '';
      end;
      fDmPagamento.mSelecionadas.Insert;
      fDmPagamento.mSelecionadasID.AsString           := fDmPagamento.cdsDuplicataID.AsString;
      fDmPagamento.mSelecionadasNUM_CUPOM.AsString    := vNumDoc;
      fDmPagamento.mSelecionadasPARCELA.AsString      := fDmPagamento.cdsDuplicataPARCELA.AsString;
      fDmPagamento.mSelecionadasCLIENTE_NOME.AsString := vNomeCli;
      fDmPagamento.mSelecionadasCLIENTE_OBS.AsString  := vObsCli;
      fDmPagamento.mSelecionadasDT_EMISSAO.AsString   := fDmPagamento.cdsDuplicataDTEMISSAO.AsString;
      fDmPagamento.mSelecionadasDT_VCTO.AsString      := fDmPagamento.cdsDuplicataDTVENCIMENTO.AsString;
      fDmPagamento.mSelecionadasVLR_VCTO.AsCurrency   := fDmPagamento.cdsDuplicataVLR_RESTANTE.AsCurrency;
      fDmPagamento.mSelecionadasDIAS_ATRASO.AsFloat   := 0;
      if fDmPagamento.cdsDuplicataDTVENCIMENTO.AsFloat < Date then
        fDmPagamento.mSelecionadasDIAS_ATRASO.AsFloat := Date - fDmPagamento.cdsDuplicataDTVENCIMENTO.AsFloat;
      fDmPagamento.mSelecionadasVLR_JUROS.AsString    := '0';
      if fDmPagamento.mSelecionadasDIAS_ATRASO.AsFloat > 5 then
        fDmPagamento.mSelecionadasVLR_JUROS.AsString := FormatFloat('0.00',fDmPagamento.mSelecionadasDIAS_ATRASO.AsFloat *
                                                        fDmPagamento.qParametrosPERC_JUROS_PADRAO.AsCurrency /
                                                        100 / 30 * fDmPagamento.mSelecionadasVLR_VCTO.AsCurrency);
      fDmPagamento.mSelecionadasVLR_TOTAL.AsCurrency := fDmPagamento.mSelecionadasVLR_JUROS.AsFloat +
                                                        fDmPagamento.cdsDuplicataVLR_RESTANTE.AsFloat;
      fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency := fDmPagamento.cdsDuplicataVLR_RESTANTE.AsCurrency;
      fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency := fDmPagamento.mSelecionadasVLR_JUROS.AsFloat;
      fDmPagamento.mSelecionadas.Post;
    end;
  end;
  Edit1.Text := fDmPagamento.mSelecionadasCLIENTE_NOME.AsString;
  if btTodas.Tag = 0 then
  begin
    CurrencyEdit2.Value := fDmPagamento.fncCalculaTotal;
    CurrencyEdit4.Value := CurrencyEdit2.Value;
    CurrencyEdit1.Clear;
    CurrencyEdit1.SetFocus;
  end;
end;

procedure TfCarnePgto.SMDBGrid1DblClick(Sender: TObject);
begin
  vBipado := False;
  CurrencyEdit1.Value := fDmPagamento.mParcelasId.AsInteger;
  btConfirmarItClick(Sender);
  vBipado := True;
end;

procedure TfCarnePgto.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sds: TSQLDataSet;
begin
  if (Key = Vk_Return) then
  begin
    if trim(Edit1.Text) = '' then
    begin
      ValueListEditor1.Strings.Clear;
      Exit;
    end;
    fDmPagamento.mParcelas.EmptyDataSet;

    ValueListEditor1.BringToFront;
    ValueListEditor1.Visible := True;
    ValueListEditor1.Strings.Clear;
    sds := TSQLDataSet.Create(nil);
    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT CODIGO, NOME FROM PESSOA ';
      sds.CommandText   := sds.CommandText + 'WHERE NOME LIKE ''%' + Edit1.Text + '%'' ';
      sds.CommandText   := sds.CommandText + 'ORDER BY NOME';
      sds.Open;
      while not sds.Eof do
      begin
        vIdCliente := sds.FieldByName('CODIGO').AsInteger;
        ValueListEditor1.InsertRow(sds.FieldByName('CODIGO').AsString,sds.FieldByName('NOME').AsString,True);
        sds.Next;
      end;
    finally
      FreeAndNil(sds);
    end;

    ValueListEditor1.SetFocus;
  end;
end;

procedure TfCarnePgto.ValueListEditor1DblClick(Sender: TObject);
begin
  fDmPagamento.cdsDuplicataCli.Close;
  fDmPagamento.sdsDuplicataCli.ParamByName('P1').AsInteger := StrToInt(ValueListEditor1.Strings.Names[ValueListEditor1.Row - 1]);
  fDmPagamento.cdsDuplicataCli.Open;
  vIdCliente := StrToInt(ValueListEditor1.Strings.Names[ValueListEditor1.Row - 1]);

  prcPreencheMParcelas(0);
  prcLimpaMParcelas;

  Edit1.Text := ValueListEditor1.Strings.ValueFromIndex[ValueListEditor1.Row - 1];

  ValueListEditor1.Visible := False;
  Edit1.SetFocus;
end;

procedure TfCarnePgto.btExcluirClick(Sender: TObject);
begin
  fDmPagamento.cdsDuplicataCli.Close;
  fDmPagamento.sdsDuplicataCli.ParamByName('P1').AsInteger := fDmPagamento.cdsDuplicataID_PESSOA.AsInteger;
  fDmPagamento.cdsDuplicataCli.Open;
  fDmPagamento.cdsDuplicataCli.Locate('ID',fDmPagamento.mSelecionadasID.AsInteger,[LoCaseInsensitive]);
  fDmPagamento.mParcelas.Insert;

  fDmPagamento.mParcelasCliente.AsString    := fDmPagamento.cdsDuplicataCliCLIENTE_NOME.AsString;
  fDmPagamento.mParcelasCupom.AsString      := fDmPagamento.cdsDuplicataCliNUMCUPOM.AsString;
  fDmPagamento.mParcelasDtVecto.AsDateTime  := fDmPagamento.cdsDuplicataCliDTVENCIMENTO.AsDateTime;
  fDmPagamento.mParcelasId.AsInteger        := fDmPagamento.cdsDuplicataCliID.AsInteger;
  fDmPagamento.mParcelasObservacao.AsString := Trim(fDmPagamento.cdsDuplicataCliCLIENTE_OBS.AsString + ' ' +
                                               fDmPagamento.cdsDuplicataDESCRICAO.AsString);
  fDmPagamento.mParcelasParcela.AsInteger   := fDmPagamento.cdsDuplicataCliPARCELA.AsInteger;
  fDmPagamento.mParcelasValor.AsCurrency    := StrToFloat(FormatFloat('0.00',fDmPagamento.cdsDuplicataCliVLR_RESTANTE.AsCurrency));
  fDmPagamento.mParcelas.Post;

  fDmPagamento.mSelecionadas.Delete;
  CurrencyEdit2.Value := fDmPagamento.fncCalculaTotal;
  CurrencyEdit4.Value := CurrencyEdit2.Value;
end;

procedure TfCarnePgto.prcGravarSelecionados(vID_ContaPgtoSel, vID_FormaPgto: Integer; vVlrPgto, vVlrJuros, vVlrDesc: Currency);
var
  vHist: String;
begin
  if StrToFloat(FormatFloat('0.00',fDmPagamento.cdsDuplicataVLR_RESTANTE.AsFloat)) > 0 then
  begin
    fDmCadDuplicata.cdsDuplicata.Edit;

    fDmCadDuplicata.cdsDuplicataID_CONTA.AsInteger        := vID_ContaPgtoSel;
    fDmCadDuplicata.cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
    fDmCadDuplicata.cdsDuplicataVLR_PAGO.AsString         := FormatFloat('0.00',fDmCadDuplicata.cdsDuplicataVLR_PAGO.AsFloat + vVlrPgto);

    if vVlrJuros > 0 then
      vHist := 'PAGAMENTO DE JUROS'
    else
      vHist := 'PAGAMENTO DE PRESTAÇÃO';

    fDmCadDuplicata.prc_Gravar_Dupicata_Hist('PAG',vHist,vVlrPgto,vVlrJuros,vVlrDesc,0,0,0,vID_FormaPgto);

    if vVlrJuros > 0 then
      fDmCadDuplicata.prc_Gravar_Financeiro(vVlrJuros,'J',vID_FormaPgto)
    else
      fDmCadDuplicata.prc_Gravar_Financeiro(vVlrPgto,'P',vID_FormaPgto);

    fDmCadDuplicata.cdsDuplicataVLR_JUROSPAGOS.AsFloat := vVlrJuros;
    fDmCadDuplicata.cdsDuplicataVLR_DESCONTO.AsFloat   := vVlrDesc;
    fDmCadDuplicata.cdsDuplicataVLR_DESPESAS.AsFloat   := 0;
    fDmCadDuplicata.cdsDuplicataVLR_RESTANTE.AsString  := FormatFloat('0.00',fDmCadDuplicata.cdsDuplicataVLR_RESTANTE.AsFloat - vVlrPgto - vVlrDesc);
    fDmCadDuplicata.cdsDuplicata.Post;
    fDmCadDuplicata.cdsDuplicata.ApplyUpdates(0);
  end;
end;

procedure TfCarnePgto.Confirmar1Click(Sender: TObject);
var
  vVlrPgto, vVlrDesc, vSaldo: Currency;
  vGeraSaldo: Boolean;
begin
  vVlrPago := -1;

  if fDmPagamento.mPagamentos.IsEmpty then
  begin
    ShowMessage('Nenhuma forma de pagamento informada!');
    ceFormaPgto.SetFocus;
    Exit;
  end;
  vVlrPago := 0;
  vSaldo   := 0;
  prcVerificarSaldo;

  fDmPagamento.cdsDuplicata.IndexFieldNames    := 'ID';
  fDmCadDuplicata.cdsDuplicata.IndexFieldNames := 'ID';

  if CurrencyEdit4.Value > 0 then
  begin
    prcVerificarSaldo;
    if MessageDlg('O valor pago não é suficiente para liquidar as parcelas!' + #13 +
                  'Deseja gerar uma parcela com o saldo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      vGeraSaldo := True;
      vSaldo     := CurrencyEdit4.Value;
    end;
  end;

  fDmPagamento.mPagamentos.First;
  while not fDmPagamento.mPagamentos.Eof do
  begin
    fDmPagamento.mSelecionadas.First;
    while not fDmPagamento.mSelecionadas.Eof do
    begin
      fDMCadDuplicata.prc_Localizar(fDmPagamento.mSelecionadasID.AsInteger);
      if fDmPagamento.mSelecionadasVLR_ABATIMENTO.AsCurrency = fDmPagamento.mSelecionadasVLR_TOTAL.AsCurrency then
      begin
        if fDmPagamento.mPagamentosVLR_SALDO.AsCurrency >= fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency then
        begin
          if fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency > 0 then
          begin
            if fDmPagamento.mSelecionadasVLR_DESC.AsCurrency > 0 then
            begin
              fDmPagamento.mSelecionadas.Edit;
              fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency := fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency - fDmPagamento.mSelecionadasVLR_DESC.AsCurrency;
              fDmPagamento.mSelecionadas.Post;
              vVlrPgto := fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency;
              prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,vVlrPgto,0,fDmPagamento.mSelecionadasVLR_DESC.AsCurrency);
              vVlrPago := vVlrPago + vVlrPgto;
            end
            else
            begin
              vVlrPgto := fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency;
              prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,vVlrPgto,0,0);
              vVlrPago := vVlrPago + vVlrPgto;
            end;
            fDmPagamento.mSelecionadas.Edit;
            fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency := fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency - vVlrPgto;
            fDmPagamento.mSelecionadas.Post;

            fDmPagamento.mPagamentos.Edit;
            fDmPagamento.mPagamentosVLR_SALDO.AsCurrency := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency - vVlrPgto;
            fDmPagamento.mPagamentos.Post;
          end;
          if fDmPagamento.mPagamentosVLR_SALDO.AsCurrency >= fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency then
          begin
            if fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency > 0 then
            begin
              vVlrPgto := fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency;
              prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,0,vVlrPgto,0);
              vVlrPago := vVlrPago + vVlrPgto;

              fDmPagamento.mSelecionadas.Edit;
              fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency := fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency - vVlrPgto;
              fDmPagamento.mSelecionadas.Post;

              fDmPagamento.mPagamentos.Edit;
              fDmPagamento.mPagamentosVLR_SALDO.AsCurrency := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency - vVlrPgto;
              fDmPagamento.mPagamentos.Post;
            end
            else
              fDmPagamento.mSelecionadas.Next;
            if (FormatFloat('0.00',vVlrPago) = FormatFloat('0.00',CurrencyEdit3.Value)) or
               (FormatFloat('0.00',vVlrPago) = FormatFloat('0.00',CurrencyEdit2.Value)) then
              fDmPagamento.mPagamentos.Next;
            Continue;
          end
          else
          begin
            if (fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency > 0) and (fDmPagamento.mPagamentosVLR_SALDO.AsCurrency > 0)then
            begin
              vVlrPgto := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency;
              prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,0,vVlrPgto,0);
              vVlrPago := vVlrPago + vVlrPgto;

              fDmPagamento.mSelecionadas.Edit;
              fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency := fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency - vVlrPgto;
              fDmPagamento.mSelecionadas.Post;

              fDmPagamento.mPagamentos.Edit;
              fDmPagamento.mPagamentosVLR_SALDO.AsCurrency := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency - vVlrPgto;
              fDmPagamento.mPagamentos.Post;
            end;
          end;
        end
        else
        begin
          if fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency > 0 then
          begin
            if StrToFloat(FormatFloat('0.00',(fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency - fDmPagamento.mSelecionadasVLR_DESC.AsCurrency))) = 0 then
            begin
              fDmPagamento.mSelecionadas.Edit;
              fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency := fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency -
                                                                      fDmPagamento.mSelecionadasVLR_DESC.AsCurrency;
              fDmPagamento.mSelecionadas.Post;
              fDmPagamento.mPagamentos.Next;
              Continue;
            end;
            vVlrPgto := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency;
            prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,vVlrPgto,0,fDmPagamento.mSelecionadasVLR_DESC.AsCurrency);
            vVlrPago := vVlrPago + vVlrPgto;

            fDmPagamento.mSelecionadas.Edit;
            fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency := fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency - vVlrPgto;
            fDmPagamento.mSelecionadas.Post;

            fDmPagamento.mPagamentos.Edit;
            fDmPagamento.mPagamentosVLR_SALDO.AsCurrency := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency - vVlrPgto;
            fDmPagamento.mPagamentos.Post;
          end
          else
          begin
            if fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency > 0 then
            begin
              if fDmPagamento.mPagamentosVLR_SALDO.AsCurrency > fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency then
                vVlrPgto := fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency
              else
                vVlrPgto := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency;
            end;
            prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,0,vVlrPgto,0);
            vVlrPago := vVlrPago + vVlrPgto;

            fDmPagamento.mSelecionadas.Edit;
            fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency := fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency - vVlrPgto;
            fDmPagamento.mSelecionadas.Post;

            fDmPagamento.mPagamentos.Edit;
            fDmPagamento.mPagamentosVLR_SALDO.AsCurrency := fDmPagamento.mPagamentosVLR_SALDO.AsCurrency - vVlrPgto;
            fDmPagamento.mPagamentos.Post;

            if fDmPagamento.mPagamentosVLR_SALDO.AsCurrency = 0 then
              fDmPagamento.mPagamentos.Next;
          end;
        end;
      end
      else
      begin
        vVlrPgto := fDmPagamento.mSelecionadasVLR_SALDO_PRINC.AsCurrency;
        prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,vVlrPgto,0,0);
        vVlrPago := vVlrPago + vVlrPgto;
        if fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency > 0 then
        begin
          vVlrPgto := fDmPagamento.mSelecionadasVLR_SALDO_JUROS.AsCurrency;
          prcGravarSelecionados(1,fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger,0,vVlrPgto,0);
          vVlrPago := vVlrPago + vVlrPgto;
        end;
        prcInsereParcela(vSaldo);
        fDmPagamento.mSelecionadas.Next;
      end;
      fDmPagamento.mPagamentos.Next;
    end;
  end;

  prcGravaPagamento;

  if vImprimir = 'N' then
    prcLimparCampos;
end;

procedure TfCarnePgto.prcLimparCampos;
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;

  fDmPagamento.mParcelas.EmptyDataSet;
  fDmPagamento.mSelecionadas.EmptyDataSet;
  fDmPagamento.mPagamentos.EmptyDataSet;
  Edit1.Clear;
  Edit1.SetFocus;
  fDmPagamento.cdsDuplicata.Close;

  ValueListEditor1.SendToBack;
  ValueListEditor1.Visible := False;
  ValueListEditor1.Strings.Clear;
  fDmPagamento.cdsDuplicataCli.Close;
end;

procedure TfCarnePgto.ConfimareImprimirrecibo1Click(Sender: TObject);
var
  vVias: String;
begin
  vImprimir := 'S';

  Confirmar1Click(Sender);
  if vVlrPago = -1 then
    Exit;
  
  vVias := '2';
  if not InputQuery('Informe qtd. de vias:','Vias:',vVias) then
    Exit;

  while StrToInt(vVias) > 0 do
  begin
    fDmPagamento.prc_ImprimirRecibo(CurrencyEdit3.Value,
                                    CurrencyEdit2.Value,
                                    CurrencyEdit4.Value,
                                    Edit1.Text,Now);
    vVias := IntToStr(StrToInt(vVias) - 1);
  end;
  prcLimparCampos;
  vImprimir := 'N';
end;

procedure TfCarnePgto.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    if CurrencyEdit1.Value > 0 then
      btConfirmarItClick(Sender);
end;

procedure TfCarnePgto.prcPreencheMParcelas(vSelec: Integer);
begin
  fDmPagamento.mParcelas.EmptyDataSet;
  while not fDmPagamento.cdsDuplicataCli.Eof do
  begin
    if vSelec <> fDmPagamento.cdsDuplicataCliID.AsInteger then
    begin
      fDmPagamento.mParcelas.Insert;
      fDmPagamento.mParcelasCliente.AsString    := fDmPagamento.cdsDuplicataCliCLIENTE_NOME.AsString;
      fDmPagamento.mParcelasCupom.AsString      := fDmPagamento.cdsDuplicataCliNUMCUPOM.AsString;
      fDmPagamento.mParcelasDtVecto.AsDateTime  := fDmPagamento.cdsDuplicataCliDTVENCIMENTO.AsDateTime;
      fDmPagamento.mParcelasId.AsInteger        := fDmPagamento.cdsDuplicataCliID.AsInteger;
      fDmPagamento.mParcelasObservacao.AsString := Trim(fDmPagamento.cdsDuplicataCliCLIENTE_OBS.AsString + ' ' +
                                                   fDmPagamento.cdsDuplicataCliDESCRICAO.AsString);
      fDmPagamento.mParcelasParcela.AsInteger   := fDmPagamento.cdsDuplicataCliPARCELA.AsInteger;
      fDmPagamento.mParcelasValor.AsCurrency    := StrToFloat(FormatFloat('0.00',fDmPagamento.cdsDuplicataCliVLR_RESTANTE.AsCurrency));
      fDmPagamento.mParcelas.Post;
    end;
    fDmPagamento.cdsDuplicataCli.Next;
  end;
  fdmPagamento.mParcelas.IndexFieldNames := 'DtVecto';
  fDmPagamento.mParcelas.First;
end;

procedure TfCarnePgto.prcLimpaMParcelas;
begin
  fDmPagamento.mParcelas.IndexFieldNames := 'ID';
  fDmPagamento.mSelecionadas.First;
  while not fDmPagamento.mSelecionadas.Eof do
  begin
    if fDmPagamento.mParcelas.FindKey([fDmPagamento.mSelecionadasID.AsInteger]) then
      fDmPagamento.mParcelas.Delete;
    fDmPagamento.mSelecionadas.Next;
  end;
  fDmPagamento.mParcelas.IndexFieldNames := 'DtVecto';
  fDmPagamento.mParcelas.First;
end;

procedure TfCarnePgto.NxButton1Click(Sender: TObject);
var
  vPago: Currency;
begin
  if ceValor.Value = 0 then
    Exit;
    
  vPago := 0;
  fDmPagamento.mPagamentos.Insert;
  fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsCurrency := RxDBLookupCombo1.KeyValue;
  fDmPagamento.mPagamentosVLR_PAGO.AsCurrency        := ceValor.Value;
  fDmPagamento.mPagamentosVLR_SALDO.AsCurrency       := fDmPagamento.mPagamentosVLR_PAGO.AsCurrency;
  fDmPagamento.mPagamentos.Post;
  fDmPagamento.mPagamentos.First;
  while not fDmPagamento.mPagamentos.Eof do
  begin
    vPago := vPago + fDmPagamento.mPagamentosVLR_PAGO.AsCurrency;
    fDmPagamento.mPagamentos.Next;
  end;
  CurrencyEdit3.Value := vPago;
  CurrencyEdit4.Value := CurrencyEdit2.Value - CurrencyEdit3.Value;

  ceFormaPgto.Value   := 0;
  ceValor.Value       := 0;
  RxDBLookupCombo1.ClearValue;
  ceFormaPgto.SetFocus;
end;

procedure TfCarnePgto.ceFormaPgtoExit(Sender: TObject);
begin
  if ceFormaPgto.AsInteger > 0 then
  begin
    fDmPagamento.cdsTipoCobranca.IndexFieldNames := 'ID';
    if fDmPagamento.cdsTipoCobranca.FindKey([ceFormaPgto.AsInteger]) then
      RxDBLookupCombo1.KeyValue := ceFormaPgto.AsInteger
    else
    begin
      ShowMessage('Forma de pagamento não localizada!');
      ceFormaPgto.SelectAll;
    end;
  end;
end;

procedure TfCarnePgto.ceFormaPgtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    ceFormaPgtoExit(Sender);
    ceValor.SetFocus;
  end;
end;

procedure TfCarnePgto.NxButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir esta forma de pagamento?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    CurrencyEdit3.Value := CurrencyEdit3.Value - fDmPagamento.mPagamentosVLR_PAGO.AsCurrency;
    CurrencyEdit4.Value := CurrencyEdit4.Value + fDmPagamento.mPagamentosVLR_PAGO.AsCurrency;
    fDmPagamento.mPagamentos.Delete;
  end;
end;

procedure TfCarnePgto.btRecalcularClick(Sender: TObject);
begin
  fDmPagamento.mPagamentos.EmptyDataSet;
  CurrencyEdit2.Value := fDmPagamento.fncCalculaTotal;
  CurrencyEdit3.Value := 0;
  CurrencyEdit4.Value := CurrencyEdit2.Value;
end;

procedure TfCarnePgto.Panel6Enter(Sender: TObject);
begin
  btRecalcularClick(Sender);
end;

procedure TfCarnePgto.RxDBLookupCombo1Change(Sender: TObject);
begin
  ceFormaPgto.Value := RxDBLookupCombo1.KeyValue;
end;

procedure TfCarnePgto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if CurrencyEdit4.Value > 0 then
  begin
    ShowMessage('Existe valor de saldo!');
    if MessageDlg('Deseja realmente fechar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      CanClose := False;
  end;
end;

procedure TfCarnePgto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmCadDuplicata.cdsTipoCobranca.IndexFieldNames := 'NOME';
end;

procedure TfCarnePgto.btTodasClick(Sender: TObject);
begin
  btTodas.Tag := 1;

  vBipado := False;
  SMDBGrid2.DisableScroll;

  fDmPagamento.mParcelas.First;
  while not fDmPagamento.mParcelas.IsEmpty do
  begin
    CurrencyEdit1.Value := fDmPagamento.mParcelasId.AsInteger;
    btConfirmarItClick(Sender);
    fDmPagamento.mParcelas.Delete;
  end;
  CurrencyEdit2.Value := fDmPagamento.fncCalculaTotal;
  CurrencyEdit4.Value := CurrencyEdit2.Value;
  CurrencyEdit1.Clear;
  CurrencyEdit1.SetFocus;

  SMDBGrid2.EnableScroll;

  btTodas.Tag := 0;
end;

procedure TfCarnePgto.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmPagamento.mParcelasDtVecto.AsDateTime < Date then
    AFont.Color := clRed;
end;

procedure TfCarnePgto.prcGravaPagamento;
var
  vItem: Word;
begin
  if not fDmPagamento.cdsCarnePagamento.Active then
    fDmPagamento.cdsCarnePagamento.Open;

  fDmPagamento.cdsCarnePagamento.Insert;
  fDmPagamento.cdsCarnePagamentoID.AsInteger          := dmDatabase.ProximaSequencia('CARNE_PGTO',0);
  fDmPagamento.cdsCarnePagamentoDATA.AsDateTime       := Date;
  fDmPagamento.cdsCarnePagamentoID_CLIENTE.AsInteger  := vIdCliente;
  fDmPagamento.cdsCarnePagamentoNOME.AsString         := Edit1.Text;
  fDmPagamento.cdsCarnePagamentoTERMINAL_ID.AsInteger := vTerminal;
  fDmPagamento.cdsCarnePagamentoUSUARIO.AsString      := vUsuario;
  fDmPagamento.cdsCarnePagamentoVLR_RECEBIDO.AsFloat  := CurrencyEdit3.Value;
  fDmPagamento.cdsCarnePagamentoVLR_TOTAL.AsFloat     := CurrencyEdit2.Value;
  fDmPagamento.cdsCarnePagamentoVLR_TROCO.AsFloat     := 0;
  if CurrencyEdit4.Value < 0 then
    fDmPagamento.cdsCarnePagamentoVLR_TROCO.AsFloat := CurrencyEdit4.Value * -1;
  fDmPagamento.cdsCarnePagamento.Post;

  fDmPagamento.mSelecionadas.First;
  vItem := 0;
  while not fDmPagamento.mSelecionadas.Eof do
  begin
    inc(vItem);
    fDmPagamento.cdsCarnePgtoDuplicatas.Insert;
    fDmPagamento.cdsCarnePgtoDuplicatasID.AsInteger       := fDmPagamento.cdsCarnePagamentoID.AsInteger;
    fDmPagamento.cdsCarnePgtoDuplicatasCUPOM.AsInteger    := fDmPagamento.mSelecionadasNUM_CUPOM.AsInteger;
    fDmPagamento.cdsCarnePgtoDuplicatasDT_VCTO.AsDateTime := fDmPagamento.mSelecionadasDT_VCTO.AsDateTime;
    fDmPagamento.cdsCarnePgtoDuplicatasITEM.AsInteger     := vItem;
    fDmPagamento.cdsCarnePgtoDuplicatasPARCELA.AsInteger  := fDmPagamento.mSelecionadasPARCELA.AsInteger;
    fDmPagamento.cdsCarnePgtoDuplicatasVLR_JUROS.AsFloat  := fDmPagamento.mSelecionadasVLR_JUROS.AsFloat;
    fDmPagamento.cdsCarnePgtoDuplicatasVLR_TOTAL.AsFloat  := fDmPagamento.mSelecionadasVLR_TOTAL.AsFloat;
    fDmPagamento.cdsCarnePgtoDuplicatas.Post;
    fDmPagamento.mSelecionadas.Next;
  end;

  fDmPagamento.mPagamentos.First;
  vItem := 0;
  while not fDmPagamento.mPagamentos.Eof do
  begin
    inc(vItem);
    fDmPagamento.cdsCarnePgtoForma.Insert;
    fDmPagamento.cdsCarnePgtoFormaID.AsInteger       := fDmPagamento.cdsCarnePagamentoID.AsInteger;
    fDmPagamento.cdsCarnePgtoFormaITEM.AsInteger     := vItem;
    fDmPagamento.cdsCarnePgtoFormaID_FORMA.AsInteger := fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsInteger;
    fDmPagamento.cdsCarnePgtoFormaVLR_PAGO.AsFloat   := fDmPagamento.mPagamentosVLR_PAGO.AsFloat;
    fDmPagamento.cdsCarnePgtoForma.Post;
    fDmPagamento.mPagamentos.Next;
  end;

  fDmPagamento.cdsCarnePagamento.ApplyUpdates(0);
  fDmPagamento.cdsCarnePgtoDuplicatas.ApplyUpdates(0);
  fDmPagamento.cdsCarnePgtoForma.ApplyUpdates(0);
end;

procedure TfCarnePgto.prcVerificarSaldo;
var
  vSaldo: Currency;
begin
  vSaldo := CurrencyEdit3.Value;
  fDmPagamento.mSelecionadas.IndexFieldNames := 'DT_VCTO';
  fDmPagamento.mSelecionadas .First;
  while not fDmPagamento.mSelecionadas.Eof do
  begin
    if vSaldo >= fDmPagamento.mSelecionadasVLR_TOTAL.AsCurrency then
    begin
      vSaldo := vSaldo - fDmPagamento.mSelecionadasVLR_TOTAL.AsCurrency;
      fDmPagamento.mSelecionadas.Edit;
      fDmPagamento.mSelecionadasVLR_ABATIMENTO.AsCurrency := fDmPagamento.mSelecionadasVLR_TOTAL.AsCurrency;
      fDmPagamento.mSelecionadas.Post;
    end
    else
    if vSaldo > 0 then
    begin
      fDmPagamento.mSelecionadas.Edit;
      fDmPagamento.mSelecionadasVLR_ABATIMENTO.AsCurrency := vSaldo;
      fDmPagamento.mSelecionadas.Post;
      vSaldo := 0;
    end
    else
    begin
      btExcluir.Click;
    end;
    fDmPagamento.mSelecionadas.Next;
  end;
end;

procedure TfCarnePgto.prcInsereParcela(vValor: Currency);
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('DUPLICATA',0);
  fDmPagamento.cdsDuplicata.Insert;
  fDmPagamento.cdsDuplicataID.AsInteger := vAux;
  fDmPagamento.cdsDuplicataTIPO_ES.AsString         := 'E';
  fDmPagamento.cdsDuplicataFILIAL.AsInteger         := 1;
  fDmPagamento.cdsDuplicataID_CUPOM.AsInteger       := 0;
  fDmPagamento.cdsDuplicataPARCELA.AsInteger        := 0;
  fDmPagamento.cdsDuplicataNUMNOTA.AsInteger        := 0;
  fDmPagamento.cdsDuplicataSERIE.AsString           := 'CNF';
  fDmPagamento.cdsDuplicataDTVENCIMENTO.AsDateTime  := Date;
  fDmPagamento.cdsDuplicataVLR_PARCELA.AsFloat      := StrToFloat(FormatFloat('0.00',vValor));
  fDmPagamento.cdsDuplicataVLR_RESTANTE.AsFloat     := StrToFloat(FormatFloat('0.00',vValor));
  fDmPagamento.cdsDuplicataVLR_PAGO.AsFloat         := StrToFloat(FormatFloat('0.00',0));
  fDmPagamento.cdsDuplicataVLR_DESPESAS.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  fDmPagamento.cdsDuplicataVLR_DESCONTO.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  fDmPagamento.cdsDuplicataVLR_JUROSPAGOS.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  fDmPagamento.cdsDuplicataDTULTPAGAMENTO.Clear;
  fDmPagamento.cdsDuplicataID_PESSOA.AsInteger      := vIdCliente;
  fDmPagamento.cdsDuplicataNOME_CLI.AsString        := Edit1.Text;
  fDmPagamento.cdsDuplicataDTEMISSAO.AsDateTime     := Date;
  fDmPagamento.cdsDuplicataTIPO_LANCAMENTO.AsString := 'DEV'; //saldo devedor de parcelas do carnê
  fDmPagamento.cdsDuplicataID_TERMINAL.AsInteger    := vTerminal;
  fDmPagamento.cdsDuplicataUSUARIO.AsString         := vUsuario;
  fDmPagamento.cdsDuplicataDESCRICAO.AsString       := 'VALOR FALTANTE EM ' + FormatDateTime('DD/MM/YYYY',Date);
  fDmPagamento.cdsDuplicata.Post;
  fDmPagamento.cdsDuplicata.ApplyUpdates(0);
end;

end.
