unit UConsEstoqueTerc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurrEdit, StdCtrls, ExtCtrls, NxCollection, Mask, ToolEdit,
  RxLookup, RzTabs, UDMEstoqueTerc, Grids, DBGrids, SMDBGrid;

type
  TfrmConsEstoqueTerc = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    RadioGroup1: TRadioGroup;
    edtRef: TEdit;
    ceIDProduto: TCurrencyEdit;
    edtNome_Pessoa: TEdit;
    ceIDPessoa: TCurrencyEdit;
    RzPageControl1: TRzPageControl;
    TS_DeTerceiro: TRzTabSheet;
    TS_EmTerceiro: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    RzPageControl2: TRzPageControl;
    TS_DeTerceiro_Det: TRzTabSheet;
    TS_DeTerceiro_Cli: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDMEstoqueTerc: TDMEstoqueTerc;
    vComando : String;

    procedure prc_ConsEstoque_DeTer_Mov;
    procedure prc_ConsEstoque_EmTer_Mov;
    procedure prc_Condicao;

  public
    { Public declarations }
  end;

var
  frmConsEstoqueTerc: TfrmConsEstoqueTerc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsEstoqueTerc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoqueTerc.btnConsultarClick(Sender: TObject);
begin
  prc_Condicao;
  if RzPageControl1.ActivePage = TS_DeTerceiro then
    prc_ConsEstoque_DeTer_Mov
  else
  if RzPageControl1.ActivePage = TS_EmTerceiro then
    prc_ConsEstoque_EmTer_Mov;
end;

procedure TfrmConsEstoqueTerc.prc_ConsEstoque_DeTer_Mov;
begin
  vComando := fDMEstoqueTerc.ctEstoque_DeTerc_Mov + vComando;
  fDMEstoqueTerc.sdsEstoque_DeTerc_Mov.CommandText := vComando;
  fDMEstoqueTerc.cdsEstoque_DeTerc_Mov.Open;
end;

procedure TfrmConsEstoqueTerc.FormShow(Sender: TObject);
begin
  fDMEstoqueTerc := TDMEstoqueTerc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMEstoqueTerc);
end;

procedure TfrmConsEstoqueTerc.prc_ConsEstoque_EmTer_Mov;
begin
  vComando := fDMEstoqueTerc.ctEstoque_EmTerc_Mov + vComando;
  fDMEstoqueTerc.sdsEstoque_EmTerc_Mov.CommandText := vComando;
  fDMEstoqueTerc.cdsEstoque_EmTerc_Mov.Open;
end;

procedure TfrmConsEstoqueTerc.prc_Condicao;
begin
  vComando := '';
  if ceIDProduto.AsInteger > 0 then
    vComando := vComando + ' AND EM.ID_PRODUTO = ' + IntToStr(ceIDProduto.AsInteger)
  else
  if trim(edtRef.Text) <> '' then
    vComando := vComando + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+edtRef.Text+'%');
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND EM.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if (ceIDPessoa.AsInteger > 0) then
    vComando := vComando + ' AND EM.ID_PESSOA = ' + IntToStr(ceIDPessoa.AsInteger);
  if (DateEdit1.Date > 10) then
    vComando := vComando + ' AND EM.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if (DateEdit2.Date > 10) then
    vComando := vComando + ' AND EM.DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case RadioGroup1.ItemIndex of
    0: vComando := vComando + ' AND EM.TIPO_ES = ' + QuotedStr('E');
    1: vComando := vComando + ' AND EM.TIPO_ES = ' + QuotedStr('S');
  end;
end;

end.
