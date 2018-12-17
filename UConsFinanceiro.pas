unit UConsFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit,
  RxLookup, NxCollection, RzTabs, Grids, DBGrids, SMDBGrid, UDMCadFinanceiro, DB, RzPanel, RzLstBox, URelFinanceiro_Ger,
  RzChkLst;

type
  TfrmConsFinanceiro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    RzPageControl2: TRzPageControl;
    TS_Saldo: TRzTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    gbxVendedor: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    RzCheckList1: TRzCheckList;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid3: TSMDBGrid;
    RzGroupBox3: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    btnImprimir: TNxButton;
    TabSheet1: TRzTabSheet;
    SMDBGrid5: TSMDBGrid;
    Panel4: TPanel;
    NxButton1: TNxButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    NxButton2: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid5Expression(Sender: TObject; Expression: String;
      var Text: String; var Value: Boolean);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadFinanceiro: TDMCadFinanceiro;
    procedure prc_Consultar;
    procedure prc_Limpa_Memo;
    procedure prc_Consultar_Mov;
    procedure prc_Consultar_Ped_Emi;
    procedure prc_Consultar_Ped_Pend;
    procedure prc_Consultar_Orc;
    procedure prc_Consultar_Vale;
    procedure prc_Consultar_Duplicata;
    procedure prc_Consultar_qNotaFiscal_Canc;
    procedure prc_Consultar_qNotaFiscal_CCE;
    procedure prc_Consultar_OC_Emi;
    procedure prc_Gravar_mFaturamento(Codigo, Nome: String ; Valor: Real);
  public
    { Public declarations }
  end;

var
  frmConsFinanceiro: TfrmConsFinanceiro;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsFinanceiro.FormShow(Sender: TObject);
begin
  fDMCadFinanceiro := TDMCadFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFinanceiro);
  prc_Limpa_Memo;
  if fDMCadFinanceiro.cdsFilial.RecordCount < 2 then
    RxDBLookupCombo1.KeyValue := fDMCadFinanceiro.cdsFilialID.AsInteger;
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;

  RzCheckList1.ItemChecked[0] := True;
  RzCheckList1.ItemChecked[1] := True;
  RzCheckList1.ItemChecked[2] := True;
  RzCheckList1.ItemChecked[3] := True;
  RzCheckList1.ItemChecked[4] := True;
  RzCheckList1.ItemChecked[5] := True;
end;

procedure TfrmConsFinanceiro.btnConsultarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Filial não informada', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    Exit;
  end;
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** Data Inicial ou Final não informada!', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    Exit;
  end;
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  SMDBGrid3.DisableScroll;
  prc_Consultar;
  prc_Consultar_Mov;
  prc_Consultar_Ped_Emi;
  prc_Consultar_Ped_Pend;
  prc_Consultar_Orc;
  prc_Consultar_Vale;
  prc_Consultar_Duplicata;
  prc_Consultar_qNotaFiscal_Canc;
  prc_Consultar_qNotaFiscal_CCE;
  prc_Consultar_OC_Emi;
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
  SMDBGrid3.EnableScroll;
end;

procedure TfrmConsFinanceiro.prc_Consultar;
var
  vSaldo, vEntrada, vSaida: Real;
begin
  fDMCadFinanceiro.cdsFechamento.Close;
  fDMCadFinanceiro.sdsFechamento.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsFechamento.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsFechamento.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsFechamento.Open;

  prc_Limpa_Memo;
  vSaldo   := 0;
  vEntrada := 0;
  vSaida   := 0;
  fDMCadFinanceiro.cdsFechamento.First;
  while not fDMCadFinanceiro.cdsFechamento.Eof do
  begin
    if fDMCadFinanceiro.mSaldo_Conta.Locate('ID_Conta',fDMCadFinanceiro.cdsFechamentoID_CONTA.AsInteger,[loCaseInsensitive]) then
      fDMCadFinanceiro.mSaldo_Conta.edit
    else
    begin
      fDMCadFinanceiro.mSaldo_Conta.Insert;
      fDMCadFinanceiro.mSaldo_ContaID_Conta.AsInteger  := fDMCadFinanceiro.cdsFechamentoID_CONTA.AsInteger;
      fDMCadFinanceiro.mSaldo_ContaNome_Conta.AsString := fDMCadFinanceiro.cdsFechamentoNOME_CONTA.AsString;
    end;
    fDMCadFinanceiro.mSaldo_ContaVlr_Entrada.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mSaldo_ContaVlr_Entrada.AsFloat +
                                                                               fDMCadFinanceiro.cdsFechamentoVLR_ENTRADA.AsFloat));
    fDMCadFinanceiro.mSaldo_ContaVlr_Saida.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mSaldo_ContaVlr_Saida.AsFloat   +
                                                                               fDMCadFinanceiro.cdsFechamentoVLR_SAIDA.AsFloat));
    fDMCadFinanceiro.mSaldo_ContaVlr_Saldo.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mSaldo_ContaVlr_Entrada.AsFloat -
                                                                               fDMCadFinanceiro.mSaldo_ContaVlr_Saida.AsFloat));
    fDMCadFinanceiro.mSaldo_Conta.Post;

    //Fechamento
    if fDMCadFinanceiro.mSaldo_FPgto.Locate('ID_FormaPagamento',fDMCadFinanceiro.cdsFechamentoID_FORMA_PAGAMENTO.AsInteger,[loCaseInsensitive]) then
      fDMCadFinanceiro.mSaldo_FPgto.edit
    else
    begin
      fDMCadFinanceiro.mSaldo_FPgto.Insert;
      fDMCadFinanceiro.mSaldo_FPgtoID_FormaPagamento.AsInteger  := fDMCadFinanceiro.cdsFechamentoID_FORMA_PAGAMENTO.AsInteger;
      fDMCadFinanceiro.mSaldo_FPgtoNome_FormaPagamento.AsString := fDMCadFinanceiro.cdsFechamentoNOME_FORMAPAGAMENTO.AsString;
    end;
    fDMCadFinanceiro.mSaldo_FPgtoVlr_Entrada.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mSaldo_FPgtoVlr_Entrada.AsFloat + fDMCadFinanceiro.cdsFechamentoVLR_ENTRADA.AsFloat));
    fDMCadFinanceiro.mSaldo_FPgtoVlr_Saida.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mSaldo_FPgtoVlr_Saida.AsFloat   + fDMCadFinanceiro.cdsFechamentoVLR_SAIDA.AsFloat));
    fDMCadFinanceiro.mSaldo_FPgtoVlr_Saldo.AsFloat   := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mSaldo_FPgtoVlr_Entrada.AsFloat - fDMCadFinanceiro.mSaldo_FPgtoVlr_Saida.AsFloat));
    fDMCadFinanceiro.mSaldo_FPgto.Post;

    vEntrada := StrToFloat(FormatFloat('0.00',vEntrada + fDMCadFinanceiro.cdsFechamentoVLR_ENTRADA.AsFloat));
    vSaida   := StrToFloat(FormatFloat('0.00',vSaida + fDMCadFinanceiro.cdsFechamentoVLR_SAIDA.AsFloat));
    vSaldo   := StrToFloat(FormatFloat('0.00',vEntrada - vSaida));

    fDMCadFinanceiro.cdsFechamento.Next;
  end;
  Label5.Caption := FormatFloat('###,###,##0.00',vEntrada);
  Label7.Caption := FormatFloat('###,###,##0.00',vSaida);
  Label8.Caption := FormatFloat('###,###,##0.00',vSaldo);

  fDMCadFinanceiro.mSaldo_Conta.IndexFieldNames := 'Nome_Conta';
  fDMCadFinanceiro.mSaldo_FPgto.IndexFieldNames := 'Nome_FormaPagamento';
end;

procedure TfrmConsFinanceiro.prc_Limpa_Memo;
begin
  fDMCadFinanceiro.mSaldo_Conta.First;
  while not fDMCadFinanceiro.mSaldo_Conta.Eof do
  begin
    fDMCadFinanceiro.mSaldo_FPgto.First;
    while not fDMCadFinanceiro.mSaldo_FPgto.Eof do
      fDMCadFinanceiro.mSaldo_FPgto.Delete;
    fDMCadFinanceiro.mSaldo_Conta.Delete;
  end;
end;

procedure TfrmConsFinanceiro.prc_Consultar_Mov;
var
  vAux: String;
  vCodigo: String;
  vNome: String;
  vVlr_Dia, vVlr_Ant, vVlr_Dup: Real;
  vVlrAux : Real;
begin
  fDMCadFinanceiro.mFaturamento.EmptyDataSet;
  fDMCadFinanceiro.cdsMovimento.Close;
  fDMCadFinanceiro.sdsMovimento.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsMovimento.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsMovimento.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsMovimento.Open;

  fDMCadFinanceiro.cdsMovimento.First;
  while not fDMCadFinanceiro.cdsMovimento.Eof do
  begin
    vCodigo := '';
    if (fDMCadFinanceiro.cdsMovimentoTIPO_ES.AsString = 'S') and (fDMCadFinanceiro.cdsMovimentoTIPO_CONDICAO.AsString = 'V') then
    begin
      if fDMCadFinanceiro.cdsMovimentoTIPO_REG.AsString = 'NSE' then
      begin
        vCodigo := '10001C'; //Nota de Serviço Faturamento a vista
        vNome   := 'Nota Serviço a Vista';
      end
      else
      begin
        //10/02/2015
        {if fDMCadFinanceiro.qParametrosCONTROLAR_FAT_SEPARADO.AsString = 'S' then
        begin
          vVlr_Dup := 0;
          vVlr_Dia := 0;
          vVlr_Ant := 0;
          fDMCadFinanceiro.qNotaFiscal_Ped.Close;
          fDMCadFinanceiro.qNotaFiscal_Ped.ParamByName('ID').AsInteger := fDMCadFinanceiro.cdsMovimentoID_NOTAFISCAL.AsInteger;
          fDMCadFinanceiro.qNotaFiscal_Ped.Open;
          fDMCadFinanceiro.qNotaFiscal_Ped.First;
          while not fDMCadFinanceiro.qNotaFiscal_Ped.Eof do
          begin
            vVlr_Dup := StrToFloat(FormatFloat('0.00',vVlr_Dup + fDMCadFinanceiro.qNotaFiscal_PedVLR_TOTAL.AsFloat));
            if (fDMCadFinanceiro.qNotaFiscal_PedDTEMISSAO.AsDateTime >= DateEdit1.Date) and (fDMCadFinanceiro.qNotaFiscal_PedDTEMISSAO.AsDateTime <= DateEdit2.Date) then
              vVlr_Dia := StrToFloat(FormatFloat('0.00',vVlr_Dia + fDMCadFinanceiro.qNotaFiscal_PedVLR_TOTAL.AsFloat))
            else
              vVlr_Ant := StrToFloat(FormatFloat('0.00',vVlr_Ant + fDMCadFinanceiro.qNotaFiscal_PedVLR_TOTAL.AsFloat));
            fDMCadFinanceiro.qNotaFiscal_Ped.Next;
          end;
          vVlrAux  := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.cdsMovimentoVLR_DUPLICATA.AsFloat - vVlr_Dup));
          vVlr_Dia := StrToFloat(FormatFloat('0.00',vVlr_Dia + vVlrAux));
          if StrToFloat(FormatFloat('0.00',vVlr_Dia)) > 0 then
          begin
            vCodigo := '10001A1'; //Faturamento a vista
            vNome   := 'Faturamento a Vista (no dia)';
            prc_Gravar_mFaturamento(vCodigo,vNome,vVlr_Dia);
          end;
          if StrToFloat(FormatFloat('0.00',vVlr_Ant)) > 0 then
          begin
            vCodigo := '10001A2'; //Faturamento a vista
            vNome   := 'Faturamento a Vista (Ped. data anterior)';
            prc_Gravar_mFaturamento(vCodigo,vNome,vVlr_Ant);
          end;
        end;}
        vCodigo := '10001A3'; //Faturamento a vista
        vNome   := 'Faturamento a Vista (Total)';
      end
    end
    else
    if (fDMCadFinanceiro.cdsMovimentoTIPO_ES.AsString = 'S') and (fDMCadFinanceiro.cdsMovimentoTIPO_CONDICAO.AsString = 'P') then
    begin
      if fDMCadFinanceiro.cdsMovimentoTIPO_REG.AsString = 'NSE' then
      begin
        vCodigo := '10001D'; //Nota de Serviço Faturamento a prazo
        vNome   := 'Nota Serviço a Prazo';
      end
      else
      begin
        if fDMCadFinanceiro.qParametrosCONTROLAR_FAT_SEPARADO.AsString = 'S' then
        begin
          vVlr_Dup := 0;
          vVlr_Dia := 0;
          vVlr_Ant := 0;
          fDMCadFinanceiro.qNotaFiscal_Vale.Close;
          fDMCadFinanceiro.qNotaFiscal_Vale.ParamByName('ID').AsInteger := fDMCadFinanceiro.cdsMovimentoID_NOTAFISCAL.AsInteger;
          fDMCadFinanceiro.qNotaFiscal_Vale.Open;
          if not fDMCadFinanceiro.qNotaFiscal_Vale.IsEmpty then
            vVlr_Dup := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.qNotaFiscal_ValeVLR_TOTAL.AsFloat));
          vVlr_Dia := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.cdsMovimentoVLR_DUPLICATA.AsFloat - vVlr_Dup));
          if (StrToFloat(FormatFloat('0.00',vVlr_Dia)) > 0) then
          begin
            vCodigo := '10001B1'; //Faturamento a vista
            vNome   := 'Faturamento a Prazo (no dia)';
            prc_Gravar_mFaturamento(vCodigo,vNome,vVlr_Dia);
          end;
          if StrToFloat(FormatFloat('0.00',vVlr_Dup)) > 0 then
          begin
            vCodigo := '10001B2'; //Faturamento a vista
            vNome   := 'Faturamento a Prazo (Vales)';
            prc_Gravar_mFaturamento(vCodigo,vNome,vVlr_Dup);
          end;
        end;
        vCodigo := '10001B3'; //Faturamento a prazo
        vNome   := 'Faturamento a Prazo (Total)';
      end;
    end
    else
    if (fDMCadFinanceiro.cdsMovimentoTIPO_ES.AsString = 'E') and (fDMCadFinanceiro.cdsMovimentoTIPO_CONDICAO.AsString = 'V') and (fDMCadFinanceiro.cdsMovimentoTIPO_REG.AsString = 'NTE') then
    begin
      vCodigo := '10007A'; //Notas de entrada a vista
      vNome   := 'Notas de entrada (compras) à Vista';
    end
    else
    if (fDMCadFinanceiro.cdsMovimentoTIPO_ES.AsString = 'E') and (fDMCadFinanceiro.cdsMovimentoTIPO_CONDICAO.AsString = 'P') and (fDMCadFinanceiro.cdsMovimentoTIPO_REG.AsString = 'NTE') then
    begin
      vCodigo := '10007B'; //Notas de entrada a prazo
      vNome   := 'Notas de entrada (compras) a Prazo';
    end;
    if trim(vCodigo) <> '' then
    begin
      prc_Gravar_mFaturamento(vCodigo,vNome,fDMCadFinanceiro.cdsMovimentoVLR_DUPLICATA.AsFloat);
      vCodigo := copy(vCodigo,1,5) + 'T';
      prc_Gravar_mFaturamento(vCodigo,'.....Total.....',fDMCadFinanceiro.cdsMovimentoVLR_DUPLICATA.AsFloat);
    end;
    fDMCadFinanceiro.cdsMovimento.Next;
  end;
end;

procedure TfrmConsFinanceiro.prc_Gravar_mFaturamento(Codigo, Nome: String;
  Valor: Real);
begin
  if fDMCadFinanceiro.mFaturamento.Locate('Codigo',Codigo,[loCaseInsensitive]) then
    fDMCadFinanceiro.mFaturamento.Edit
  else
  begin
    fDMCadFinanceiro.mFaturamento.Insert;
    fDMCadFinanceiro.mFaturamentoCodigo.AsString := Codigo;
    fDMCadFinanceiro.mFaturamentoNome.AsString   := Nome;
  end;
  fDMCadFinanceiro.mFaturamentoVlrMovimento.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mFaturamentoVlrMovimento.AsFloat + Valor));
  fDMCadFinanceiro.mFaturamento.Post;
end;

procedure TfrmConsFinanceiro.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if copy(fDMCadFinanceiro.mFaturamentoCodigo.AsString,Length(fDMCadFinanceiro.mFaturamentoCodigo.AsString),1) = 'T' then
    Background := $00DBDBDB;
  if trim(fDMCadFinanceiro.mFaturamentoNome.AsString) = '' then
    AFont.Color := $00DBDBDB;
  if (fDMCadFinanceiro.qParametrosCONTROLAR_FAT_SEPARADO.AsString = 'S') and ((fDMCadFinanceiro.mFaturamentoCodigo.AsString = '10001B3') or (fDMCadFinanceiro.mFaturamentoCodigo.AsString = '10001A3')) then
    AFont.Style := [fsBold];
end;

procedure TfrmConsFinanceiro.prc_Consultar_Ped_Emi;
begin
  fDMCadFinanceiro.cdsPedido_Emi.Close;
  fDMCadFinanceiro.sdsPedido_Emi.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsPedido_Emi.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsPedido_Emi.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsPedido_Emi.Open;

  fDMCadFinanceiro.cdsPedido_Emi.First;
  while not fDMCadFinanceiro.cdsPedido_Emi.Eof do
  begin
    prc_Gravar_mFaturamento('10010A','Pedidos emitidos no período',fDMCadFinanceiro.cdsPedido_EmiVLR_TOTAL.AsFloat);
    fDMCadFinanceiro.cdsPedido_Emi.Next;
  end;
end;

procedure TfrmConsFinanceiro.prc_Consultar_Ped_Pend;
begin
  fDMCadFinanceiro.cdsPedido_Pend.Close;
  fDMCadFinanceiro.sdsPedido_Pend.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsPedido_Pend.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsPedido_Pend.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsPedido_Pend.Open;

  fDMCadFinanceiro.cdsPedido_Pend.First;
  while not fDMCadFinanceiro.cdsPedido_Pend.Eof do
  begin
    prc_Gravar_mFaturamento('10012A','Pedidos Atrasados (Cfe.Dt.Entrega)',fDMCadFinanceiro.cdsPedido_PendVLR_RESTANTE_ATRAZADO.AsFloat);
    prc_Gravar_mFaturamento('10012B','Pedidos a entregar no Período',fDMCadFinanceiro.cdsPedido_PendVLR_RESTANTE.AsFloat);
    prc_Gravar_mFaturamento('10012T','',0);
    fDMCadFinanceiro.cdsPedido_Pend.Next;
  end;
end;

procedure TfrmConsFinanceiro.prc_Consultar_Orc;
var
  vQtdTotal: Integer;
begin
  fDMCadFinanceiro.cdsOrcamento.Close;
  fDMCadFinanceiro.sdsOrcamento.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsOrcamento.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsOrcamento.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsOrcamento.Open;

  vQtdTotal := 0;
  fDMCadFinanceiro.cdsOrcamento.First;
  while not fDMCadFinanceiro.cdsOrcamento.Eof do
  begin
    vQtdTotal := vQtdTotal + fDMCadFinanceiro.cdsOrcamentoQTD_ORCAMENTO.AsInteger;
    if fDMCadFinanceiro.cdsOrcamentoQTD_APROVADO.AsInteger > 0 then
      prc_Gravar_mFaturamento('10020A','Orçamentos Aprovados  (Qtd)',fDMCadFinanceiro.cdsOrcamentoQTD_APROVADO.AsInteger)
    else
    if fDMCadFinanceiro.cdsOrcamentoQTD_NAO_APROVADO.AsInteger > 0 then
      prc_Gravar_mFaturamento('10020B','Orçamentos Não Aprovados   (Qtd)',fDMCadFinanceiro.cdsOrcamentoQTD_NAO_APROVADO.AsInteger)
    else
    if fDMCadFinanceiro.cdsOrcamentoQTD_PENDENTE.AsInteger > 0 then
      prc_Gravar_mFaturamento('10020C','Orçamentos Pendentes   (Qtd)',fDMCadFinanceiro.cdsOrcamentoQTD_PENDENTE.AsInteger);
    fDMCadFinanceiro.cdsOrcamento.Next;
  end;
  if vQtdTotal > 0 then
    prc_Gravar_mFaturamento('10020T','... Total Orçamentos Emitidos ... (Qtd)',vQtdTotal);
end;

procedure TfrmConsFinanceiro.prc_Consultar_Vale;
begin
  if fDMCadFinanceiro.qParametrosUSA_VALE.AsString <> 'S' then
    exit;

  fDMCadFinanceiro.cdsVale.Close;
  fDMCadFinanceiro.sdsVale.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsVale.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsVale.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsVale.Open;

  fDMCadFinanceiro.cdsVale.First;
  while not fDMCadFinanceiro.cdsVale.Eof do
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.cdsValeVLR_TOTAL.AsFloat)) > 0 then
      prc_Gravar_mFaturamento('10005A','Vales Emitidos',fDMCadFinanceiro.cdsValeVLR_TOTAL.AsFloat);
    if StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.cdsValeVLR_PENDENTE.AsFloat)) > 0 then
      prc_Gravar_mFaturamento('10005B','Vales Pendentes',fDMCadFinanceiro.cdsValeVLR_PENDENTE.AsFloat);
    prc_Gravar_mFaturamento('10005T','',0);
    fDMCadFinanceiro.cdsVale.Next;
  end;
end;

procedure TfrmConsFinanceiro.prc_Consultar_Duplicata;
var
  vTipo_Mov : String;
begin
  fDMCadFinanceiro.cdsDuplicata.Close;
  fDMCadFinanceiro.sdsDuplicata.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsDuplicata.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsDuplicata.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsDuplicata.Open;

  fDMCadFinanceiro.mDupAuxiliar.EmptyDataSet;
  fDMCadFinanceiro.cdsDuplicata.First;
  while not fDMCadFinanceiro.cdsDuplicata.Eof do
  begin
    vTipo_Mov := fDMCadFinanceiro.cdsDuplicataTIPO_MOV.AsString;
    if fDMCadFinanceiro.cdsDuplicataTIPO_MOV.AsString <> 'H' then
      vTipo_Mov := 'C';
    if fDMCadFinanceiro.mDupAuxiliar.Locate('Tipo_ES;Tipo_Mov',VarArrayOf([fDMCadFinanceiro.cdsDuplicataTIPO_ES.AsString,vTipo_Mov]),[locaseinsensitive]) then
      fDMCadFinanceiro.mDupAuxiliar.Edit
    else
    begin
      fDMCadFinanceiro.mDupAuxiliar.Insert;
      fDMCadFinanceiro.mDupAuxiliarTipo_ES.AsString  := fDMCadFinanceiro.cdsDuplicataTIPO_ES.AsString;
      fDMCadFinanceiro.mDupAuxiliarTipo_Mov.AsString := vTipo_Mov;
      fDMCadFinanceiro.mDupAuxiliarValor.AsFloat     := 0;
      if (vTipo_Mov = 'H') and (fDMCadFinanceiro.mDupAuxiliarTipo_ES.AsString = 'E') then
        fDMCadFinanceiro.mDupAuxiliarNome.AsString := 'Cheques a Receber em Aberto'
      else
      if (vTipo_Mov = 'H') and (fDMCadFinanceiro.mDupAuxiliarTipo_ES.AsString = 'S') then
        fDMCadFinanceiro.mDupAuxiliarNome.AsString := 'Cheques a Pagar em Aberto'
      else
      if fDMCadFinanceiro.mDupAuxiliarTipo_ES.AsString = 'E' then
        fDMCadFinanceiro.mDupAuxiliarNome.AsString := 'Contas a Receber em Aberto'
      else
      if fDMCadFinanceiro.mDupAuxiliarTipo_ES.AsString = 'S' then
        fDMCadFinanceiro.mDupAuxiliarNome.AsString := 'Contas a Pagar em Aberto';
    end;
    fDMCadFinanceiro.mDupAuxiliarValor.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadFinanceiro.mDupAuxiliarValor.AsFloat + fDMCadFinanceiro.cdsDuplicataVLR_RESTANTE.AsFloat));
    fDMCadFinanceiro.mDupAuxiliar.Post;
    fDMCadFinanceiro.cdsDuplicata.Next;
  end;
end;

procedure TfrmConsFinanceiro.prc_Consultar_qNotaFiscal_Canc;
begin
  fDMCadFinanceiro.qNotaFiscal_Canc.Close;
  fDMCadFinanceiro.qNotaFiscal_Canc.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.qNotaFiscal_Canc.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.qNotaFiscal_Canc.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.qNotaFiscal_Canc.Open;
  if (fDMCadFinanceiro.qNotaFiscal_Canc.IsEmpty) or (fDMCadFinanceiro.qNotaFiscal_CancCONTADOR.AsInteger <= 0) then
    exit;
  prc_Gravar_mFaturamento('10100A','Notas Fiscais Canceladas  (Qtd)',fDMCadFinanceiro.qNotaFiscal_CancCONTADOR.AsInteger);
end;

procedure TfrmConsFinanceiro.prc_Consultar_qNotaFiscal_CCE;
begin
  fDMCadFinanceiro.qNotaFiscal_CCE.Close;
  fDMCadFinanceiro.qNotaFiscal_CCE.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.qNotaFiscal_CCE.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.qNotaFiscal_CCE.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.qNotaFiscal_CCE.Open;
  if (fDMCadFinanceiro.qNotaFiscal_CCE.IsEmpty) or (fDMCadFinanceiro.qNotaFiscal_CCECONTADOR.AsInteger <= 0) then
    exit;
  prc_Gravar_mFaturamento('10110A','Cartas de Correções Emitidas  (Qtd)',fDMCadFinanceiro.qNotaFiscal_CCECONTADOR.AsInteger);
end;

procedure TfrmConsFinanceiro.btnImprimirClick(Sender: TObject);
begin
  fDMCadFinanceiro.mImp.EmptyDataSet;
  fDMCadFinanceiro.mImp.Insert;
  fDMCadFinanceiro.mImpID.AsInteger;
  fDMCadFinanceiro.mImp.Post;

  fRelFinanceiro_Ger := TfRelFinanceiro_Ger.Create(Self);
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    fRelFinanceiro_Ger.vOpcaoImp := fRelFinanceiro_Ger.vOpcaoImp + '(Data:'  +DateEdit1.Text + ' a ' + DateEdit2.Text +  ')';
  fRelFinanceiro_Ger.fDMCadFinanceiro := fDMCadFinanceiro;
  fRelFinanceiro_Ger.vTotal_Ent := Label5.Caption;
  fRelFinanceiro_Ger.vTotal_Sai := Label7.Caption;
  fRelFinanceiro_Ger.vSaldo     := Label8.Caption;
  
  fRelFinanceiro_Ger.RLReport1.PreviewModal;
  fRelFinanceiro_Ger.RLReport1.Free;
  FreeAndNil(fRelFinanceiro_Ger);
end;

procedure TfrmConsFinanceiro.NxButton1Click(Sender: TObject);
begin
  fDMCadFinanceiro.cdsFinAgrupado.Close;
  fDMCadFinanceiro.sdsFinAgrupado.ParamByName('D1').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsFinAgrupado.ParamByName('D2').AsDate := DateEdit2.Date;
  fDMCadFinanceiro.sdsFinAgrupado.ParamByName('FIL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsFinAgrupado.IndexFieldNames := 'DTMOVIMENTO;FLAG;NOME';
  fDMCadFinanceiro.cdsFinAgrupado.Open;
end;

procedure TfrmConsFinanceiro.SMDBGrid5Expression(Sender: TObject;
  Expression: String; var Text: String; var Value: Boolean);
begin
  if (fDMCadFinanceiro.cdsFinAgrupado.FieldByName(Expression).AsInteger = 1) then
  begin
    Value := True;
    Text  := '-=-=-=- ' + fDMCadFinanceiro.cdsFinAgrupadoDTMOVIMENTO.AsString + '-=-=-=- ';
  end;
end;

procedure TfrmConsFinanceiro.NxButton2Click(Sender: TObject);
var
  vArq: String;
begin
  fDMCadFinanceiro.cdsFinAgrupado.Filtered := False;
  fDMCadFinanceiro.cdsFinAgrupado.Filter   := 'FLAG = 2';
  fDMCadFinanceiro.cdsFinAgrupado.Filtered := True;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\BMartins_Financeiro1.fr3';
  if FileExists(vArq) then
    fDMCadFinanceiro.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadFinanceiro.vDataIni := DateEdit1.Text;
  fDMCadFinanceiro.vDataFim := DateEdit2.Text;
  fDMCadFinanceiro.frxReport1.ShowReport;
  fDMCadFinanceiro.cdsFinAgrupado.Filtered := False;
end;

procedure TfrmConsFinanceiro.prc_Consultar_OC_Emi;
var
  vGravou : Boolean;
begin
  vGravou := False;
  fDMCadFinanceiro.cdsOC_Emi.Close;
  fDMCadFinanceiro.sdsOC_Emi.ParamByName('DTINICIAL').AsDate := DateEdit1.Date;
  fDMCadFinanceiro.sdsOC_Emi.ParamByName('DTFINAL').AsDate   := DateEdit2.Date;
  fDMCadFinanceiro.sdsOC_Emi.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadFinanceiro.cdsOC_Emi.Open;

  fDMCadFinanceiro.cdsOC_Emi.First;
  while not fDMCadFinanceiro.cdsOC_Emi.Eof do
  begin
    prc_Gravar_mFaturamento('10050A','OC Fornecedor emitidos no período',fDMCadFinanceiro.cdsOC_EmiVLR_TOTAL.AsFloat);
    vGravou := True;
    fDMCadFinanceiro.cdsOC_Emi.Next;
  end;
  if vGravou then
    prc_Gravar_mFaturamento('10055T','',0);
end;

end.
