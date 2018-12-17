//tag 11  é a copia do pedido sem cobrança (Fututo)
unit USel_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadNotaFiscal, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, UCadNotaEntrada_Itens,
  NxCollection, uCadVale_Itens;

type
  TfrmSel_OS = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_Pedido;
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens;
    procedure prc_MostraNota;

  public
    { Public declarations }
    vCodCliente: Integer;

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;

  end;

var
  frmSel_OS: TfrmSel_OS;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_OS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_OS.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadNotaFiscal);
//  SMDBGrid1.DataSource := fDMCadNotaFiscal.dsOS;
  prc_MostraNota;
end;

procedure TfrmSel_OS.prc_Consultar_Pedido;
begin
  SMDBGrid1.DisableScroll;
  fDMCadNotaFiscal.cdsOS.Close;
  fDMCadNotaFiscal.sdsOS.CommandText := fDMCadNotaFiscal.ctOS;
  if vCodCliente > 0 then
    fDMCadNotaFiscal.sdsOS.CommandText := fDMCadNotaFiscal.sdsOS.CommandText +
                                              ' AND PE.ID_CLIENTE = ' + IntToStr(vCodCliente);
  fDMCadNotaFiscal.cdsOS.Open;
  fDMCadNotaFiscal.cdsOS.First;
  while not fDMCadNotaFiscal.cdsOS.Eof do
  begin
    fDMCadNotaFiscal.cdsOS.Edit;
    fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsOSQTD_RESTANTE.AsFloat));
    fDMCadNotaFiscal.cdsOS.Post;
    fDMCadNotaFiscal.cdsOS.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_OS.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd_Faturado : Real;  
begin
{  if (SMDBGrid1.SelectedRows.CurrentRowSelected) and
     (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_FATURADO.AsFloat)) <= 0) then
    Background  := clRed
  else
  begin
    vQtd_Faturado := fDMCadNotaFiscal.cdsOSQTD_FATURADO.AsFloat;
    if StrToFloat(FormatFloat('0.0000',vQtd_Faturado)) > 0 then
    begin
      Background  := clGreen;
      AFont.Color := clWhite;
    end;
    if (Field = fDMCadNotaFiscal.cdsOSQTD_AFATURAR) then
    begin
      Background  := clYellow;
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
    end
    else
    if (Field = fDMCadNotaFiscal.cdsOSQTD_RESTANTE) then
    begin
      Background  := clMoneyGreen;
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
    end;
  end;}
end;

procedure TfrmSel_OS.prc_Gravar_NotaItens;
var
  vItemAux: Integer;
  vNum_Controle_Tam : Integer;
  vVlrAux: Real;
  vFlag: Boolean;
  vTexto : String;
begin
  if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger := RxDBLookupCombo1.KeyValue;
  //19/12/2013 aqui
  fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat := 0;
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'N';
  if (fDMCadNotaFiscal.cdsNotaFiscal_Itens.RecordCount < 1) and (fDMCadNotaFiscal.cdsOSID_CONDPGTO.AsInteger > 0) then
    fDMCadNotaFiscal.cdsNotaFiscalID_CONDPGTO.AsInteger := fDMCadNotaFiscal.cdsOSID_CONDPGTO.AsInteger;
                                                  
  fDMCadNotaFiscal.cdsNotaFiscalTIPO_PRAZO.AsString := 'P';
  if fDMCadNotaFiscal.cdsOSID_TRANSPORTADORA.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalID_TRANSPORTADORA.AsInteger := fDMCadNotaFiscal.cdsOSID_TRANSPORTADORA.AsInteger;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger        := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := fDMCadNotaFiscal.cdsOSID_PRODUTO.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger   := RxDBLookupCombo1.KeyValue;
  ffrmCadNotaFiscal_Itens.RxDBLookupCombo1.KeyValue       := RxDBLookupCombo1.KeyValue;
  ffrmCadNotaFiscal_Itens.RxDBLookupCombo1Exit(ffrmCadNotaFiscal_Itens);
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
  {begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID_VARIACAO.AsInteger;
    fDMCadNotaFiscal.vID_Variacao                             := ffrmCadNotaFiscal_Itens.fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
  end;}

  ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;
  
  if fDMCadNotaFiscal.cdsOSID_NCM.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsOSID_NCM.AsInteger;
      
  fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := fDMCadNotaFiscal.cdsOSUNIDADE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat     := fDMCadNotaFiscal.cdsOSPERC_IPI.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsOSVLR_UNITARIO.AsFloat;
  if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));

  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.cdsOSNOMEPRODUTO.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.cdsOSREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat));
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := 'OS: ' + fDMCadNotaFiscal.cdsOSNUM_OS.AsString;
  //if fDMCadNotaFiscal.cdsCFOPBAIXAR_FUT.AsString = 'S' then
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OS.AsInteger        := fDMCadNotaFiscal.cdsOSID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_OS.AsInteger      := fDMCadNotaFiscal.cdsOSITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_OS_MAT.AsInteger  := fDMCadNotaFiscal.cdsOSITEM_MAT.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_OSERVICO.AsInteger := fDMCadNotaFiscal.cdsOSNUM_OS.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString     := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;

  ffrmCadNotaFiscal_Itens.vNotaSelecionada   := False;
  ffrmCadNotaFiscal_Itens.vPedidoSelecionado := False;
  ffrmCadNotaFiscal_Itens.vOSSelecionada     := True;
  ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
  ffrmCadNotaFiscal_Itens.vOSSelecionada     := False;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
  vFlag := ffrmCadNotaFiscal_Itens.vGravacao_Ok;

  if vFlag then
  begin
    fDMCadNotaFiscal.cdsOS.Edit;
    fDMCadNotaFiscal.cdsOSQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_FATURADO.AsFloat + fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat));
    fDMCadNotaFiscal.cdsOSQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_RESTANTE.AsFloat - fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat));
    fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat := 0;
    fDMCadNotaFiscal.cdsOS.Post;
  end;
end;

procedure TfrmSel_OS.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_Pedido;
end;

procedure TfrmSel_OS.btnImportarClick(Sender: TObject);
begin
  prc_Gravar_Nota;
end;

procedure TfrmSel_OS.prc_MostraNota;
var
  i: Integer;
begin
  if (fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger;
end;

procedure TfrmSel_OS.prc_Gravar_Nota;
var
  vMsgErro: String;
begin
  if (fDMCadNotaFiscal.cdsOS.IsEmpty) then
    exit;
  if (RxDBLookupCombo1.Text = '') then
  begin
    MessageDlg('*** CFOP não foi informada!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;

  vMsgErro := '';
  try
    fDMCadNotaFiscal.cdsOS.First;
    while not fDMCadNotaFiscal.cdsOS.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        if StrToFloat(FormatFloat('0.00000',fDMCadNotaFiscal.cdsOSVLR_UNITARIO.AsFloat)) <= 0 then
          vMsgErro := vMsgErro + #13 + ' OS: ' + fDMCadNotaFiscal.cdsOSNUM_OS.AsString + ' Item: ' + fDMCadNotaFiscal.cdsOSITEM.AsString + ', não possui valor'
        else
        if (fDMCadNotaFiscal.cdsParametrosPERMITE_QTDMAIOR_PEDIDO.AsString <> 'S') and
           (StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat)) >
           StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_RESTANTE.AsFloat))) then
          vMsgErro := vMsgErro + #13 + '*** Quantidade informada maior que a pendente, Ped: ' +
                      fDMCadNotaFiscal.cdsOSNUM_OS.AsString + ' Item: ' + fDMCadNotaFiscal.cdsOSITEM.AsString
        else
        if StrToFloat(FormatFloat('0.000000',fDMCadNotaFiscal.cdsOSQTD_AFATURAR.AsFloat)) > StrToFloat(FormatFloat('0.000000',0)) then
          prc_Gravar_NotaItens
        else
          vMsgErro := vMsgErro + #13 + '*** Quantidade não informada, Ped: ' + fDMCadNotaFiscal.cdsOSNUM_OS.AsString +
                      ' Item: ' + fDMCadNotaFiscal.cdsOSITEM.AsString;
      end;
      fDMCadNotaFiscal.cdsOS.Next;
    end;
  except
    on E: exception do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0)
  else
  if trim(vMsgErro) = '' then
    Close;
end;

end.
