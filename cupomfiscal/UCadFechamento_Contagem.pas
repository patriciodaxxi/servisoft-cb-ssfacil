unit UCadFechamento_Contagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, DB,
  ExtCtrls, NxCollection, UDMCadFechamento;

type
  TfrmCadFechamento_Contagem = class(TForm)
    SMDBGrid5: TSMDBGrid;
    Panel1: TPanel;
    btConfirmar: TNxButton;
    brCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadFechamento: TDMCadFechamento;
    vTipo_Valor: String; //I=Informado  C=Conferência X=Cancelamento
  end;

var
  frmCadFechamento_Contagem: TfrmCadFechamento_Contagem;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadFechamento_Contagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadFechamento_Contagem.brCancelarClick(Sender: TObject);
begin
  fDMCadFechamento.vTipo_Valor := 'X'; //Cancelamento
  Close;
end;

procedure TfrmCadFechamento_Contagem.btConfirmarClick(Sender: TObject);
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
  Close;
end;

procedure TfrmCadFechamento_Contagem.FormShow(Sender: TObject);
var
  i: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);
  fDMCadFechamento.vInfConferencia := 'N';
  fDMCadFechamento.mContagem.EmptyDataSet;
  fDMCadFechamento.vTipo_Valor := 'X';
  for i := 0 to SMDBGrid5.ColCount - 2 do
  begin
    if SMDBGrid5.Columns[i].FieldName = 'VALOR' then
    begin
      if vTipo_Valor = 'C' then
        SMDBGrid5.Columns[i].Title.Caption := 'Valor Conferência'
      else
        SMDBGrid5.Columns[i].Title.Caption := 'Valor Informado';
    end;
  end;

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
end;

end.
