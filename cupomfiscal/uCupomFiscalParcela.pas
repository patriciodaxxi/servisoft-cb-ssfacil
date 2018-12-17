unit uCupomFiscalParcela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  RxDBComb, Mask, DBCtrls, uDmCupomFiscal, RxLookup, rsDBUtils, ToolEdit, RXDBCtrl,
  NxCollection;

type
  TfCupomFiscalParcela = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    btFinalizar: TNxButton;
    btCancelar: TNxButton;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFinalizarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCupomFiscal: TdmCupomFiscal;
  end;

var
  fCupomFiscalParcela: TfCupomFiscalParcela;

implementation

uses DB;

{$R *.dfm}                    

procedure TfCupomFiscalParcela.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  Label5.Visible := fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger = 0;
  if fDmCupomFiscal.cdsCupomParametrosRACHAR_CONTA.AsString <> 'S' then
  begin
    DBEdit3.ReadOnly := (Tag = 1) or (fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger > 1); //Somente pode atualizar a primeira parcela
    DBEdit3.TabStop := not DBEdit3.ReadOnly;
  end;
end;

procedure TfCupomFiscalParcela.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsTipoCobranca.IndexFieldNames := 'NOME';
end;

procedure TfCupomFiscalParcela.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCupomFiscalParcela.btFinalizarClick(Sender: TObject);
begin
  if (fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger = 0) and (fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency = 0) then
  begin
    ShowMessage('Valor de entrada deve ser informado!');
    Exit;
  end;
  fDmCupomFiscal.cdsCupom_ParcTIPO_COBRANCA.AsString := RxDBLookupCombo1.Text;
  fDmCupomFiscal.cdsCupom_Parc.Post;
  if fDmCupomFiscal.cdsCupom_ParcPARCELA.AsInteger = 0 then
    fDmCupomFiscal.vVlrEntrada := fDmCupomFiscal.cdsCupom_ParcVLR_VENCIMENTO.AsCurrency;
  Close;
end;

procedure TfCupomFiscalParcela.btCancelarClick(Sender: TObject);
begin
  fDmCupomFiscal.cdsCupom_Parc.Cancel;
  Close;
end;

end.
