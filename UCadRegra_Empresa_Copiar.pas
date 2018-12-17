unit UCadRegra_Empresa_Copiar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, UDMCadRegra_Empresa,
  NxCollection, FMTBcd, DB, SqlExpr;

type
  TfrmCadRegra_Empresa_Copiar = class(TForm)
    rgTipoEmitente: TRadioGroup;
    rgTipoDestinatario: TRadioGroup;
    rgUFDestinatario: TRadioGroup;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    qItens: TSQLQuery;
    qItensID: TIntegerField;
    qItensITEM: TIntegerField;
    qItensFINALIDADE: TStringField;
    qItensID_CFOP: TIntegerField;
    qItensPESSOA_CLIENTE: TStringField;
    qItensZONA_FRANCA: TStringField;
    qItensSUBST_TRIBUTARIA: TStringField;
    qRegra: TSQLQuery;
    qItensCODCFOP: TStringField;
    qItensTIPO_PRODUTO: TStringField;
    rgFinalidade: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadRegra_Empresa: TDMCadRegra_Empresa;

  end;

var
  frmCadRegra_Empresa_Copiar: TfrmCadRegra_Empresa_Copiar;

implementation

uses rsDBUtils, DmdDatabase, StdConvs;

{$R *.dfm}

procedure TfrmCadRegra_Empresa_Copiar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadRegra_Empresa_Copiar.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadRegra_Empresa);
  if fDMCadRegra_Empresa.cdsConsultaTIPO_EMPRESA.AsString = 'G' then
    rgTipoEmitente.ItemIndex := 0
  else
  if fDMCadRegra_Empresa.cdsConsultaTIPO_EMPRESA.AsString = 'S' then
    rgTipoEmitente.ItemIndex := 1;
  if fDMCadRegra_Empresa.cdsConsultaTIPO_CLIENTE.AsString = 'G' then
    rgTipoDestinatario.ItemIndex := 0
  else
  if fDMCadRegra_Empresa.cdsConsultaTIPO_CLIENTE.AsString = 'S' then
    rgTipoDestinatario.ItemIndex := 1;

  if fDMCadRegra_Empresa.cdsConsultaUF_CLIENTE.AsString = 'D' then
    rgUFDestinatario.ItemIndex := 0
  else
  if fDMCadRegra_Empresa.cdsConsultaUF_CLIENTE.AsString = 'F' then
    rgUFDestinatario.ItemIndex := 1
  else
  if fDMCadRegra_Empresa.cdsConsultaUF_CLIENTE.AsString = 'E' then
    rgUFDestinatario.ItemIndex := 2;
  if fDMCadRegra_Empresa.cdsConsultaFINALIDADE_COMPRADOR.AsString = 'R' then
    rgFinalidade.ItemIndex := 0
  else
  if fDMCadRegra_Empresa.cdsConsultaFINALIDADE_COMPRADOR.AsString = 'I' then
    rgFinalidade.ItemIndex := 1
  else
  if fDMCadRegra_Empresa.cdsConsultaFINALIDADE_COMPRADOR.AsString = 'C' then
    rgFinalidade.ItemIndex := 2
  else
    rgFinalidade.ItemIndex := 3;
end;

procedure TfrmCadRegra_Empresa_Copiar.btnConfirmarClick(Sender: TObject);
var
  vTipo_Empresa, vTipo_Cliente, vUF_Cliente, vFinalidade_Comprador : String;
begin
  vTipo_Empresa := '';
  vTipo_Cliente := '';
  vUF_Cliente   := '';
  case rgTipoEmitente.ItemIndex of
    0 : vTipo_Empresa := 'G';
    1 : vTipo_Empresa := 'S';
  end;
  case rgTipoDestinatario.ItemIndex of
    0 : vTipo_Cliente := 'G';
    1 : vTipo_Cliente := 'S';
  end;
  case rgUFDestinatario.ItemIndex of
    0 : vUF_Cliente := 'D';
    1 : vUF_Cliente := 'F';
    2 : vUF_Cliente := 'E';
  end;
  vFinalidade_Comprador := '';
  case rgFinalidade.ItemIndex of
    0 : vFinalidade_Comprador := 'R';
    1 : vFinalidade_Comprador := 'I';
    2 : vFinalidade_Comprador := 'C';
    3 : vFinalidade_Comprador := 'O';
  end;
  if (vTipo_Empresa = '') or (vTipo_Cliente = '') or (vUF_Cliente = '') or (vFinalidade_Comprador = '') then
  begin
    MessageDlg('*** Tipo Emitente, Tipo Cliente, UF do Cliente ou Finalidade da Compra não informado!', mtError, [mbOk], 0);
    exit;
  end;

  qRegra.Close;
  qRegra.ParamByName('ID_OPERACAO').AsInteger := fDMCadRegra_Empresa.cdsConsultaID_OPERACAO.AsInteger;
  qRegra.ParamByName('TIPO_EMPRESA').AsString := vTipo_Empresa;
  qRegra.ParamByName('TIPO_CLIENTE').AsString := vTipo_Cliente;
  qRegra.ParamByName('UF_CLIENTE').AsString   := vUF_Cliente;
  qRegra.ParamByName('FINALIDADE_COMPRADOR').AsString   := vFinalidade_Comprador;
  qRegra.Open;

  if not qRegra.IsEmpty then
  begin
    MessageDlg('*** Regra já informada!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadRegra_Empresa.prc_Inserir;
  fDMCadRegra_Empresa.cdsRegra_EmpresaID_OPERACAO.AsInteger := fDMCadRegra_Empresa.cdsConsultaID_OPERACAO.AsInteger;
  fDMCadRegra_Empresa.cdsRegra_EmpresaTIPO_EMPRESA.AsString := vTipo_Empresa;
  fDMCadRegra_Empresa.cdsRegra_EmpresaTIPO_CLIENTE.AsString := vTipo_Cliente;
  fDMCadRegra_Empresa.cdsRegra_EmpresaUF_CLIENTE.AsString   := vUF_Cliente;
  fDMCadRegra_Empresa.cdsRegra_EmpresaFINALIDADE_COMPRADOR.AsString := vFinalidade_Comprador;

  qItens.Close;
  qItens.ParamByName('ID').AsInteger := fDMCadRegra_Empresa.cdsConsultaID.AsInteger;
  qItens.Open;
  while not qItens.Eof do
  begin
    fDMCadRegra_Empresa.prc_Inserir_Itens;
    fDMCadRegra_Empresa.cdsRegra_Empresa_ItensID_CFOP.AsInteger         := qItensID_CFOP.AsInteger;
    fDMCadRegra_Empresa.cdsRegra_Empresa_ItensCODCFOP.AsString          := qItensCODCFOP.AsString;
    fDMCadRegra_Empresa.cdsRegra_Empresa_ItensFINALIDADE.AsString       := qItensFINALIDADE.AsString;
    fDMCadRegra_Empresa.cdsRegra_Empresa_ItensPESSOA_CLIENTE.AsString   := qItensPESSOA_CLIENTE.AsString;
    fDMCadRegra_Empresa.cdsRegra_Empresa_ItensZONA_FRANCA.AsString      := qItensZONA_FRANCA.AsString;
    fDMCadRegra_Empresa.cdsRegra_Empresa_ItensSUBST_TRIBUTARIA.AsString := qItensSUBST_TRIBUTARIA.AsString;
    fDMCadRegra_Empresa.cdsRegra_Empresa_ItensTIPO_PRODUTO.AsString     := qItensTIPO_PRODUTO.AsString;
    fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.Post;
    qItens.Next;  
  end;
  if not (fDMCadRegra_Empresa.cdsRegra_Empresa.State in [dsEdit,dsInsert]) then
    fDMCadRegra_Empresa.cdsRegra_Empresa.Edit;
  Close;
end;

procedure TfrmCadRegra_Empresa_Copiar.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
