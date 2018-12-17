unit UCadRegra_Empresa_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, UDMCadRegra_Empresa, RxLookup,
  NxCollection, DB, FMTBcd, SqlExpr;

type
  TfrmCadRegra_Empresa_Itens = class(TForm)
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBRadioGroup2: TDBRadioGroup;
    Panel3: TPanel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadRegra_Empresa: TDMCadRegra_Empresa;
    
  end;

var
  frmCadRegra_Empresa_Itens: TfrmCadRegra_Empresa_Itens;

implementation

uses uUtilPadrao, rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmCadRegra_Empresa_Itens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.State in [dsEdit,dsInsert] then
    fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadRegra_Empresa_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadRegra_Empresa);
end;

procedure TfrmCadRegra_Empresa_Itens.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadRegra_Empresa_Itens.btnConfirmarClick(Sender: TObject);
var
  vMsgAux : String;
begin
  if not(fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.State in [dsEdit,dsInsert]) then
    exit;

  vMsgAux := '';
  if (fDMCadRegra_Empresa.cdsRegra_Empresa_ItensPESSOA_CLIENTE.AsString <> 'J') and (fDMCadRegra_Empresa.cdsRegra_Empresa_ItensPESSOA_CLIENTE.AsString <> 'F') then
    vMsgAux := vMsgAux + #13 + '*** Pessoa Destinatário não informada!';
  if (fDMCadRegra_Empresa.cdsRegra_Empresa_ItensTIPO_PRODUTO.AsString <> 'V') and (fDMCadRegra_Empresa.cdsRegra_Empresa_ItensTIPO_PRODUTO.AsString <> 'R')  and (fDMCadRegra_Empresa.cdsRegra_Empresa_ItensTIPO_PRODUTO.AsString <> 'M') then
    vMsgAux := vMsgAux + #13 + '*** Tipo do Produto não informado!';
  if (fDMCadRegra_Empresa.cdsRegra_Empresa_ItensID_CFOP.AsInteger <= 0) then
    vMsgAux := vMsgAux + #13 + '*** CFOP não informado!';

  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadRegra_Empresa.cdsRegra_Empresa_ItensCODCFOP.AsString := RxDBLookupCombo1.Text;

  fDMCadRegra_Empresa.cdsRegra_Empresa_Itens.Post;
  Close;
end;

end.
