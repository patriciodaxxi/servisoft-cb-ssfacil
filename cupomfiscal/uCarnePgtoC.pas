unit uCarnePgtoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, NxCollection, ExtCtrls, StdCtrls, Grids,
  Mask, ToolEdit, DBGrids, SMDBGrid, uDmPagamento;

type
  TfCarnePgtoC = class(TForm)
    Panel11: TPanel;
    btnCancelar: TNxButton;
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Edit1: TEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    fDmPagamento: TDmPagamento;
  public
    { Public declarations }
  end;

var
  fCarnePgtoC: TfCarnePgtoC;

implementation

uses DB;

{$R *.dfm}

procedure TfCarnePgtoC.btnConsultarClick(Sender: TObject);
begin
  fDmPagamento.cdsCarnePagamento.Close;
  fDmPagamento.sdsCarnePagamento.CommandText := fDmPagamento.ctCarnePgto + ' WHERE 1 = 1'; 

  if (DateEdit1.Date > 10) then
    fDmPagamento.sdsCarnePagamento.CommandText := fDmPagamento.sdsCarnePagamento.CommandText + ' AND DATA >= ' +
                                                  QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date));
  if (DateEdit2.Date > 10) then
    fDmPagamento.sdsCarnePagamento.CommandText := fDmPagamento.sdsCarnePagamento.CommandText + ' AND DATA <= ' +
                                                  QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.Date));
  if Edit1.Text <> '' then
    fDmPagamento.sdsCarnePagamento.CommandText := fDmPagamento.sdsCarnePagamento.CommandText + ' AND NOME LIKE ''%' +
                                                  Edit1.Text + '%''';
  fDmPagamento.cdsCarnePagamento.Open;
end;

procedure TfCarnePgtoC.FormShow(Sender: TObject);
begin
  if not Assigned(fDmPagamento) then
    fDmPagamento := TDmPagamento.Create(Self);
end;

procedure TfCarnePgtoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDmPagamento.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmPagamento);
  Action := caFree;
end;

procedure TfCarnePgtoC.btnImprimirClick(Sender: TObject);
begin
  fDmPagamento.mSelecionadas.EmptyDataSet;
  fDmPagamento.cdsCarnePgtoDuplicatas.First;
  while not fDmPagamento.cdsCarnePgtoDuplicatas.Eof do
  begin
    fDmPagamento.mSelecionadas.Insert;
    fDmPagamento.mSelecionadasID.AsString           := fDmPagamento.cdsCarnePgtoDuplicatasID.AsString;
    fDmPagamento.mSelecionadasNUM_CUPOM.AsString    := fDmPagamento.cdsCarnePgtoDuplicatasCUPOM.AsString;
    fDmPagamento.mSelecionadasPARCELA.AsString      := fDmPagamento.cdsCarnePgtoDuplicatasPARCELA.AsString;
    fDmPagamento.mSelecionadasCLIENTE_NOME.AsString := fDmPagamento.cdsCarnePagamentoNOME.AsString;
    fDmPagamento.mSelecionadasDT_EMISSAO.AsString   := fDmPagamento.cdsCarnePgtoDuplicatasDT_VCTO.AsString;
    fDmPagamento.mSelecionadasDT_VCTO.AsString      := fDmPagamento.cdsCarnePgtoDuplicatasDT_VCTO.AsString;
    fDmPagamento.mSelecionadasVLR_JUROS.AsCurrency  := fDmPagamento.cdsCarnePgtoDuplicatasVLR_JUROS.AsCurrency;
    fDmPagamento.mSelecionadasVLR_TOTAL.AsCurrency  := fDmPagamento.cdsCarnePgtoDuplicatasVLR_TOTAL.AsCurrency;
    fDmPagamento.mSelecionadas.Post;
    fDmPagamento.cdsCarnePgtoDuplicatas.Next;
  end;

  fDmPagamento.mPagamentos.EmptyDataSet;
  fDmPagamento.cdsCarnePgtoForma.First;
  while not fDmPagamento.cdsCarnePgtoForma.EOF do
  begin
    fDmPagamento.mPagamentos.Insert;
    fDmPagamento.mPagamentosID_TIPOCOBRANCA.AsString := fDmPagamento.cdsCarnePgtoFormaID_FORMA.AsString;
    fDmPagamento.mPagamentosVLR_PAGO.AsString        := fDmPagamento.cdsCarnePgtoFormaVLR_PAGO.AsString;
    fDmPagamento.mPagamentosVLR_SALDO.AsString       := fDmPagamento.cdsCarnePgtoFormaVLR_PAGO.AsString;
    fDmPagamento.mPagamentosVLR_TROCO.AsString       := fDmPagamento.cdsCarnePgtoFormaVLR_PAGO.AsString;
    fDmPagamento.mPagamentos.Post;
    fDmPagamento.cdsCarnePgtoForma.Next;
  end;

  fDmPagamento.prc_ImprimirRecibo(fDmPagamento.cdsCarnePagamentoVLR_RECEBIDO.AsCurrency,
                                  fDmPagamento.cdsCarnePagamentoVLR_TOTAL.AsCurrency,
                                  fDmPagamento.cdsCarnePagamentoVLR_TROCO.AsCurrency,
                                  fDmPagamento.cdsCarnePagamentoNOME.AsString,
                                  fDmPagamento.cdsCarnePagamentoDATA.AsDateTime);
end;

procedure TfCarnePgtoC.btnCancelarClick(Sender: TObject);
begin
  ShowMessage('Use o SSFácil, botão Financeiro, para efetuar o estorno!');
end;

end.
