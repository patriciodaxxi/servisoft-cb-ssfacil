unit UBaixaOrdemServico_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, RxLookup,
  StdCtrls, Mask, DBCtrls, NxCollection, ExtCtrls, DB;

type
  TfrmBaixaOrdemServico_Mat = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel5: TPanel;
    btnConfBaixa: TNxButton;
    NxButton1: TNxButton;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    function fnc_Calcular(Vlr_Unitario, Qtd: Real): Real;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;

  end;

var
  frmBaixaOrdemServico_Mat: TfrmBaixaOrdemServico_Mat;

implementation

uses rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmBaixaOrdemServico_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Mat.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Mat.Cancel;
  Action := Cafree;
end;

procedure TfrmBaixaOrdemServico_Mat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
end;

procedure TfrmBaixaOrdemServico_Mat.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadOrdemServico.cdsProduto.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger,[loCaseInsensitive]);
    fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat := fDMCadOrdemServico.cdsProdutoPRECO_VENDA.AsFloat;
  end;
end;

function TfrmBaixaOrdemServico_Mat.fnc_Calcular(Vlr_Unitario,
  Qtd: Real): Real;
begin
  Result := 0;
  if (StrToFloat(FormatFloat('0.00000',Vlr_Unitario)) > 0) and (StrToFloat(FormatFloat('0.00000',Qtd)) > 0) then
    Result := StrToFloat(FormatFloat('0.00',Vlr_Unitario)) * StrToFloat(FormatFloat('0.00',Qtd));
end;

procedure TfrmBaixaOrdemServico_Mat.btnConfBaixaClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Peça não informada!', mtError, [mbok], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.00000',fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat)) <= 0 then
  begin
    MessageDlg('*** Quantidade não informada!', mtError, [mbok], 0);
    exit;
  end;
  if fDMCadOrdemServico.cdsProduto.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger,[loCaseInsensitive]) then
  begin
//    fDMCadOrdemServico.cdsOrdemServico_MatNOME_PRODUTO.AsString := fDMCadOrdemServico.cdsProdutoNOME.AsString;
//    fDMCadOrdemServico.cdsOrdemServico_MatREFERENCIA.AsString   := fDMCadOrdemServico.cdsProdutoREFERENCIA.AsString;
  end;
  fDMCadOrdemServico.cdsOrdemServico_MatQTD_AFATURAR.AsInteger := 0;
  fDMCadOrdemServico.cdsOrdemServico_MatQTD_FATURADO.AsInteger := 0;
  fDMCadOrdemServico.cdsOrdemServico_MatQTD_RESTANTE.AsFloat   := StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat));
  fDMCadOrdemServico.cdsOrdemServico_Mat.Post;
  Close;
end;

procedure TfrmBaixaOrdemServico_Mat.NxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaixaOrdemServico_Mat.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger > 0 then
      RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmBaixaOrdemServico_Mat.DBEdit1Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat := fnc_Calcular(fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat,fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat);
end;

procedure TfrmBaixaOrdemServico_Mat.DBEdit2Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat := fnc_Calcular(fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat,fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat);
end;

end.
