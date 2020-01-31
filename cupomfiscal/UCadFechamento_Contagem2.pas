unit UCadFechamento_Contagem2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, DB,
  ExtCtrls, NxCollection, UDMCadFechamento, StdCtrls, Mask, ToolEdit;

type
  TfrmCadFechamento_Contagem2 = class(TForm)
    SMDBGrid5: TSMDBGrid;
    Panel1: TPanel;
    btConfirmar: TNxButton;
    brCancelar: TNxButton;
    NxPanel1: TNxPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDmCadFechamento: TDmCadFechamento;

    function PosicionaCaixa(vData: TDateTime): Boolean;
    procedure prc_Fechar_Caixa(vTipo: String);

    procedure prc_Le_Caixa;

    procedure prc_Zerar_Valores;

  public
    { Public declarations }
    vTipo_Valor: String; //I=Informado  C=Conferência X=Cancelamento

  end;

var
  frmCadFechamento_Contagem2: TfrmCadFechamento_Contagem2;

implementation

uses rsDBUtils, TypInfo, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadFechamento_Contagem2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDmCadFechamento);
  Action := caFree;
end;

procedure TfrmCadFechamento_Contagem2.brCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadFechamento_Contagem2.btConfirmarClick(Sender: TObject);
var
  vFechar: Boolean;
begin
  fDMCadFechamento.vTipo_Valor := ''; //Cancelamento
  vFechar := False;
  fDMCadFechamento.mContagem.First;
  while not fDMCadFechamento.mContagem.Eof do
  begin
    if StrToFloat(FormatFloat('0.00',fDMCadFechamento.mContagemVALOR.AsFloat)) > 0 then
      vFechar := True;
    fDMCadFechamento.mContagem.Next;
  end;
  if vFechar then
    fDMCadFechamento.vInfConferencia := 'S';
  if not vFechar then
  begin
    if not MessageDlg('Não foram informados os valores do caixa, ' + #13 +
                      'confirma saída da tela do fechamento?',mtConfirmation,[mbNo,mbOK],0) = mrOk then
      Exit;
  end;
  vConfirma_Fechamento := True;

  prc_Fechar_Caixa('I');

  prc_Zerar_Valores;

  fDMCadFechamento.prc_Abrir_Financeiro;
  fDMCadFechamento.prc_Le_Financeiro;
  fDMCadFechamento.prc_Recalcular_Inf;
  
  Close;
end;

procedure TfrmCadFechamento_Contagem2.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDmCadFechamento := TDmCadFechamento.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);
end;

function TfrmCadFechamento_Contagem2.PosicionaCaixa(
  vData: TDateTime): Boolean;
begin
  fDmCadFechamento.qCaixaAberto.Close;
  fDmCadFechamento.qCaixaAberto.ParamByName('T1').AsInteger := vTerminal;
  fDmCadFechamento.qCaixaAberto.ParamByName('D1').AsDate    := vData;
  fDmCadFechamento.qCaixaAberto.Open;
  Result := not fDmCadFechamento.qCaixaAberto.IsEmpty;
  if Result then
  begin
    fDMCadFechamento.prc_Localizar(fDmCadFechamento.qCaixaAbertoID.AsInteger);
    vID_Fechamento_Pos := fDmCadFechamento.cdsFechamentoID.AsInteger;
  end;
end;

procedure TfrmCadFechamento_Contagem2.DateEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    vConfirma_Fechamento := False;
    prc_Le_Caixa;
  end;
end;

procedure TfrmCadFechamento_Contagem2.prc_Le_Caixa;
begin
  DateEdit1.Date := Date;
  DateEdit1.SetFocus;
  if not PosicionaCaixa(DateEdit1.Date) then
  begin
    ShowMessage('Não existe caixa aberto para essa data!');
    Exit;
  end;

  SMDBGrid5.Enabled := True;

  fDMCadFechamento.prc_Abrir_Financeiro;
  fDMCadFechamento.prc_Le_Financeiro;
  fDMCadFechamento.prc_Recalcular_Inf;

  fDMCadFechamento.vInfConferencia := 'N';
  fDMCadFechamento.mContagem.EmptyDataSet;
  fDMCadFechamento.vTipo_Valor := 'X';

  fDMCadFechamento.cdsFechamento_Itens.IndexFieldNames := 'ID;ID_TIPOCOBRANCA';
  fDMCadFechamento.cdsTipoCobranca.Last;
  while not fDMCadFechamento.cdsTipoCobranca.Bof do
  begin
    fDMCadFechamento.mContagem.Insert;
    fDMCadFechamento.mContagemID_TIPOCOBRANCA.AsInteger  := fDMCadFechamento.cdsTipoCobrancaID.AsInteger;
    fDMCadFechamento.mContagemNOME_TIPOCOBRANCA.AsString := fDMCadFechamento.cdsTipoCobrancaNOME.AsString;
    if fDMCadFechamento.cdsTipoCobrancaFECHAMENTO_AUTOMATICO.AsString = 'S' then
    begin                                                                                                                                  
      fDMCadFechamento.cdsFechamento_Itens.FindKey([fDMCadFechamento.cdsFechamentoID.AsInteger,fDMCadFechamento.cdsTipoCobrancaID.AsInteger]);
      fDMCadFechamento.mContagemVALOR.AsCurrency := fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsCurrency;
    end;
    fDMCadFechamento.mContagem.Post;
    fDMCadFechamento.cdsTipoCobranca.Prior;
  end;

  SMDBGrid5.SetFocus;

end;

procedure TfrmCadFechamento_Contagem2.prc_Fechar_Caixa(vTipo: String);
var
  vGravarAux: Boolean;
  vIDAux: Integer;
begin
  vGravarAux := False;
  vIDAux := fDMCadFechamento.cdsFechamentoID.AsInteger;
  if fDmCadFechamento.vTipo_Valor <> 'X' then
  begin
    fDMCadFechamento.mContagem.First;
    while not fDMCadFechamento.mContagem.Eof do
    begin
      if fDMCadFechamento.cdsFechamento_Itens.Locate('ID;ID_TIPOCOBRANCA',VarArrayOf([fDMCadFechamento.cdsFechamentoID.AsInteger,
                                                     fDMCadFechamento.mContagemID_TIPOCOBRANCA.AsInteger]),[locaseinsensitive]) then
      begin
        vGravarAux := True;
        fDMCadFechamento.cdsFechamento_Itens.Edit;
        if vTipo = 'I' then
        begin
          fDmCadFechamento.cdsFechamento_ItensVLR_INFORMADO.AsCurrency     := fDMCadFechamento.mContagemVALOR.AsCurrency;
          fDmCadFechamento.cdsFechamento_ItensVLR_DIF_INFORMADO.AsCurrency := fDmCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsCurrency -
                                                                              fDMCadFechamento.mContagemVALOR.AsCurrency;
        end
        else
        begin
          fDMCadFechamento.cdsFechamento_ItensVLR_CONFERENCIA.AsCurrency   := fDMCadFechamento.mContagemVALOR.AsCurrency;
          fDmCadFechamento.cdsFechamento_ItensVLR_DIF_CONFERIDO.AsCurrency := fDMCadFechamento.mContagemVALOR.AsCurrency -
                                                                              fDmCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsCurrency;
        end;
        fDMCadFechamento.cdsFechamento_Itens.Post;
      end;
      fDMCadFechamento.mContagem.Next;
    end;
  end;

  fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamentoDTFECHAMENTO.AsDateTime  := Date;
  fDMCadFechamento.cdsFechamentoHRFECHAMENTO.AsDateTime  := Now;
  fDMCadFechamento.cdsFechamentoTIPO_FECHAMENTO.AsString := 'A';
  fDmCadFechamento.prc_Abrir_Financeiro;
  fDmCadFechamento.prc_Le_Financeiro(True);
  fDmCadFechamento.prc_Recalcular_Inf;
  if fDmCadFechamento.cdsFechamento.State in [dsEdit] then
    fDMCadFechamento.cdsFechamento.Post;

  fDMCadFechamento.cdsFechamento.ApplyUpdates(0);
  
  if (fDmCadFechamento.vTipo_Valor <> 'X') and (vTipo = 'I') then
    if MessageDlg('Imprimir recibo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      fDmCadFechamento.prc_Imprime_Vlr_InformadoC(vIDAux);

  prc_Zerar_Valores;

  fDMCadFechamento.prc_Abrir_Financeiro;
  fDMCadFechamento.prc_Le_Financeiro;
  fDMCadFechamento.prc_Recalcular_Inf;

end;

procedure TfrmCadFechamento_Contagem2.prc_Zerar_Valores;
begin
  fDMCadFechamento.cdsFechamento_Itens.First;
  while not fDMCadFechamento.cdsFechamento_Itens.Eof do
  begin
    fDMCadFechamento.cdsFechamento_Itens.Edit;
    fDMCadFechamento.cdsFechamento_ItensVLR_ENTRADA.AsFloat     := 0;
    fDMCadFechamento.cdsFechamento_ItensVLR_RECEBIMENTO.AsFloat := 0;
    fDMCadFechamento.cdsFechamento_Itens.Post;
    fDMCadFechamento.cdsFechamento_Itens.Next;
  end;
  fDMCadFechamento.cdsFechamento.Edit;
  fDMCadFechamento.cdsFechamentoVLR_DIFERENCA.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_INFORMADO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_NAO_FATURADO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_RECEBIMENTO.AsCurrency  := 0;
  fDMCadFechamento.cdsFechamentoVLR_SAIDA.AsCurrency    := 0;
  fDMCadFechamento.cdsFechamentoVLR_SUBSALDO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamentoVLR_ENTRADA.AsCurrency  := 0;
  fDMCadFechamento.cdsFechamentoVLR_SALDO.AsCurrency    := 0;
  fDMCadFechamento.cdsFechamentoENTRADA_DE_DINHEIRO.AsCurrency := 0;
  fDMCadFechamento.cdsFechamento.Post;
end;

end.
