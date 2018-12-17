unit UCadPedido_Itens_Imposto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadPedido, ExtCtrls,
  StdCtrls, RxLookup, RxDBComb, Mask, DBCtrls, Buttons, DB;

type
  TfrmCadPedido_Itens_Imposto = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label12: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Label33: TLabel;
    DBEdit14: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
  private
    { Private declarations }
    vVlrDesc_Ant : Real;
    vID_CSTICMAnt : Integer;    
  public
    { Public declarations }
    fDMCadPedido : TDMCadPedido;

  end;

var
  frmCadPedido_Itens_Imposto: TfrmCadPedido_Itens_Imposto;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPedido_Itens_Imposto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPedido_Itens_Imposto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

  Label13.Visible := (fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString <> 'S');
  DBEdit5.Visible := (fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString <> 'S');
  Label14.Visible := (fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString <> 'S');
  DBEdit6.Visible := (fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString <> 'S');
end;

procedure TfrmCadPedido_Itens_Imposto.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedido_Itens_Imposto.RxDBLookupCombo4Exit(
  Sender: TObject);
var
  vIDAux: Integer;
begin
  //if RxDBLookupCombo4.Text <> '' then
  //  fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat;

  vIDAux := 0;
  if RxDBLookupCombo4.Text <> '' then
    vIDAux := RxDBLookupCombo4.KeyValue;
  if vIDAux <> fDMCadPedido.cdsTab_CSTICMSID.AsInteger then
    fDMCadPedido.cdsTab_CSTICMS.Locate('ID',vIDAux,[loCaseInsensitive]);

  fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := vIDAux;                                          
  if vID_CSTICMAnt <> vIDAux then
  begin
     fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat;
    if fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString = '51' then
    begin
      fDMCadPedido.cdsPedido_ItensPERC_DIFERIMENTO.AsFloat := fDMCadPedido.cdsTab_CSTICMSPERC_DIFERIMENTO.AsFloat;
      if StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensPERC_DIFERIMENTO.AsFloat)) > 0 then
        fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := 100;
    end
    else
    begin
       fDMCadPedido.cdsPedido_ItensPERC_DIFERIMENTO.AsFloat := 0;
      if (StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsTab_CSTICMSPERC_DIFERIMENTO.AsFloat)) <= 0) then
        fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0;
    end;
  end;
end;

procedure TfrmCadPedido_Itens_Imposto.DBEdit5Exit(Sender: TObject);
var
  vAux : Real;
begin
  if (fDMCadPedido.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat)) > StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat))) then
  begin
    MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
    DBEdit5.SetFocus;
  end;
  {else
  begin
    vAux := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    vAux := StrToFloat(FormatFloat('0.00', (vAux * fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat) / 100));
    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - vAux));
  end;}
end;

procedure TfrmCadPedido_Itens_Imposto.DBEdit6Exit(Sender: TObject);
var
  vAux : Real;
begin
  {if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrDesc_Ant)) then
  begin
    fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
    vAux := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', vAux));
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat / fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat) * 100));
    //fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
    if (StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat))) and (fDMCadPedido.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') then
      MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
  end;}
end;

procedure TfrmCadPedido_Itens_Imposto.DBEdit6Enter(Sender: TObject);
begin
 // vVlrDesc_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
end;

procedure TfrmCadPedido_Itens_Imposto.RxDBLookupCombo4Enter(
  Sender: TObject);
begin
  vID_CSTICMAnt := 0;
  if RxDBLookupCombo4.Text <> '' then
    vID_CSTICMAnt := RxDBLookupCombo4.KeyValue;
end;

end.
