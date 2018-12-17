unit URecebeXML_AlteraItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask, ToolEdit,
  CurrEdit, ExtCtrls, DB, RxLookup, DBCtrls, UDMRecebeXML, rsDBUtils;

type
  TfrmRecebeXML_AlteraItem = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label7: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label8: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label11: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Label12: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    Label13: TLabel;
    DBText1: TDBText;
    Label14: TLabel;
    DBText2: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMRecebeXML: TDMRecebeXML;

  end;

var
  frmRecebeXML_AlteraItem: TfrmRecebeXML_AlteraItem;

implementation

{$R *.dfm}

procedure TfrmRecebeXML_AlteraItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRecebeXML_AlteraItem.BitBtn2Click(Sender: TObject);
begin
  fDMRecebeXML.mItensNota.Cancel;
  Close;
end;

procedure TfrmRecebeXML_AlteraItem.FormShow(Sender: TObject);
var
  vFlag : Boolean;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMRecebeXML);

  fDMRecebeXML.cdsCFOP.IndexFieldNames := 'CODCFOP';

  fDMRecebeXML.mItensNota.Edit;

  vFlag := False;
  if fDMRecebeXML.qParametrosUSA_QTDPACOTE_NTE.AsString = 'S' then
  begin
    if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0 then
    begin
      fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger);
      if (fDMRecebeXML.cdsProdutoID.AsInteger > 0) and (Trim(UpperCase(fDMRecebeXML.cdsProdutoUNIDADE.AsString)) <> Trim(UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString))) then
        vFlag := True;
    end;
  end;

  Label3.Visible        := vFlag;
  Label4.Visible        := vFlag;
  Label2.Visible        := vFlag;
  CurrencyEdit1.Visible := vFlag;

  Label13.Visible       := vFlag;
  Label14.Visible       := vFlag;
  DBText1.Visible       := vFlag;
  DBText2.Visible       := vFlag;

  CurrencyEdit2.Value := fDMRecebeXML.mItensNotaAliqIcms.AsFloat;
  CurrencyEdit3.Value := fDMRecebeXML.mItensNotaVlrIcms.AsFloat;
  CurrencyEdit4.Value := fDMRecebeXML.mItensNotaBaseIcms.AsFloat;
  CurrencyEdit5.Value := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
  CurrencyEdit6.Value := fDMRecebeXML.mItensNotaVlrIPI.AsFloat;

  if fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger;
  if fDMRecebeXML.mItensNotaCFOPInterno.AsInteger > 0 then
    RxDBLookupCombo2.KeyValue := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
  CurrencyEdit1.Value := fDMRecebeXML.mItensNotaConversorUnidade.AsFloat;
end;

procedure TfrmRecebeXML_AlteraItem.BitBtn1Click(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
    fDMRecebeXML.mItensNotaQtdPacote.AsFloat := StrToFloat(FormatFloat('0.00000',CurrencyEdit1.Value * fDMRecebeXML.mItensNotaQtd.AsFloat));

  fDMRecebeXML.mItensNotaAliqIcms.AsFloat := CurrencyEdit2.Value;
  fDMRecebeXML.mItensNotaVlrIcms.AsFloat  := CurrencyEdit3.Value;
  fDMRecebeXML.mItensNotaBaseIcms.AsFloat := CurrencyEdit4.Value;

  fDMRecebeXML.mItensNotaAliqIPI.AsFloat := CurrencyEdit5.Value;
  fDMRecebeXML.mItensNotaVlrIPI.AsFloat  := CurrencyEdit6.Value;

  if RxDBLookupCombo1.Text <> '' then
    fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := RxDBLookupCombo1.KeyValue;

  if RxDBLookupCombo2.Text <> '' then
    fDMRecebeXML.mItensNotaCFOPInterno.AsInteger := RxDBLookupCombo2.KeyValue;

  fDMRecebeXML.mItensNotaConversorUnidade.AsFloat := CurrencyEdit1.Value;

  fDMRecebeXML.mItensNota.Post;

  Close;
end;

end.
