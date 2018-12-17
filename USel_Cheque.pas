unit USel_Cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, UDMCadDuplicata, StdCtrls,
  NxCollection, Mask, ToolEdit, CurrEdit, DB, RzPanel, RxLookup;

type
  TfrmSel_Cheque = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Shape2: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    StaticText1: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    gbxVendedor: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    btnConfirmar: TNxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    btnConsultar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
    
  end;

var
  frmSel_Cheque: TfrmSel_Cheque;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmSel_Cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Cheque.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  btnConsultarClick(Sender);
end;

procedure TfrmSel_Cheque.SMDBGrid1DblClick(Sender: TObject);
begin
  if (fDMCadDuplicata.cdsChequePend.IsEmpty) or (fDMCadDuplicata.cdsChequePendID.AsInteger <= 0) then
    exit;
  fDMCadDuplicata.cdsChequePend.Edit;
  if fDMCadDuplicata.cdsChequePendSELECIONADO.AsString = 'S' then
    fDMCadDuplicata.cdsChequePendSELECIONADO.AsString := 'N'
  else
    fDMCadDuplicata.cdsChequePendSELECIONADO.AsString := 'S';
  if fDMCadDuplicata.cdsChequePendSELECIONADO.AsString = 'S' then
    CurrencyEdit2.Value := CurrencyEdit2.Value + fDMCadDuplicata.cdsChequePendVALOR.AsFloat
  else
    CurrencyEdit2.Value := CurrencyEdit2.Value - fDMCadDuplicata.cdsChequePendVALOR.AsFloat;
  CurrencyEdit3.Value := CurrencyEdit1.Value - CurrencyEdit2.Value;
  fDMCadDuplicata.cdsChequePend.Post;

  if fDMCadDuplicata.cdsChequePendSELECIONADO.AsString = 'N' then
  begin
    if fDMCadDuplicata.mCheque.Locate('ID_Cheque', fDMCadDuplicata.cdsChequePendID.AsInteger, [loCaseInsensitive]) then
      fDMCadDuplicata.mCheque.Delete;
    exit;
  end;

  fDMCadDuplicata.mCheque.Insert;
  fDMCadDuplicata.mChequeID_Cheque.AsInteger  := fDMCadDuplicata.cdsChequePendID.AsInteger;
  fDMCadDuplicata.mChequeNum_Cheque.AsInteger := fDMCadDuplicata.cdsChequePendNUM_CHEQUE.AsInteger;
  fDMCadDuplicata.mChequeID_Banco.AsInteger   := fDMCadDuplicata.cdsChequePendID_BANCO.AsInteger;
  fDMCadDuplicata.mChequeID_Conta.Clear; 
  fDMCadDuplicata.mChequeVlr_Cheque.AsFloat    := StrToFloat(FormatFloat('0.00',fDMCadDuplicata.cdsChequePendVALOR.AsFloat));
  fDMCadDuplicata.mChequeDtBomPara.AsDateTime  := fDMCadDuplicata.cdsChequePendDTBOM_PARA.AsDateTime;
  fDMCadDuplicata.mChequeTitular.AsString      := fDMCadDuplicata.cdsChequePendTITULAR.AsString;
  fDMCadDuplicata.mChequeFone_Titular.AsString := fDMCadDuplicata.cdsChequePendFONE_CONTATO.AsString;
  if fDMCadDuplicata.cdsChequePendRECEBIDO_DE.AsInteger > 0 then
    fDMCadDuplicata.mChequeRecebido_De.AsInteger := fDMCadDuplicata.cdsChequePendRECEBIDO_DE.AsInteger;
  fDMCadDuplicata.mChequeNome_Recebido.AsString  := fDMCadDuplicata.cdsChequePendNOME_CLIENTE.AsString;
  fDMCadDuplicata.mChequeEmitido_Por.AsString := fDMCadDuplicata.cdsChequePendEMITIDO_POR.AsString;
  fDMCadDuplicata.mCheque.Post;
end;

procedure TfrmSel_Cheque.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadDuplicata.cdsChequePendSELECIONADO.AsString = 'S' then
    Background := $0079FF79;
end;

procedure TfrmSel_Cheque.btnConsultarClick(Sender: TObject);
begin
  fDMCadDuplicata.cdsChequePend.Close;
  fDMCadDuplicata.sdsChequePend.CommandText := fDMCadDuplicata.ctChequePend;
  if trim(RxDBLookupCombo1.Text) <> '' then
  begin
    fDMCadDuplicata.sdsChequePend.CommandText := fDMCadDuplicata.sdsChequePend.CommandText
                                               + ' AND C.FILIAL = :FILIAL ';
    fDMCadDuplicata.sdsChequePend.ParamByName('FILIAL').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  fDMCadDuplicata.cdsChequePend.Open;
end;

procedure TfrmSel_Cheque.SMDBGrid2DblClick(Sender: TObject);
begin
  if fDMCadDuplicata.mCheque.IsEmpty then
    exit;
  CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',CurrencyEdit2.Value - fDMCadDuplicata.mChequeVlr_Cheque.AsFloat));
  CurrencyEdit3.Value := CurrencyEdit1.Value - CurrencyEdit2.Value;
  if fDMCadDuplicata.cdsChequePend.Locate('ID', fDMCadDuplicata.mChequeID_Cheque.AsInteger, [loCaseInsensitive]) then
  begin
    fDMCadDuplicata.cdsChequePend.Edit;
    fDMCadDuplicata.cdsChequePendSELECIONADO.AsString := 'N';
    fDMCadDuplicata.cdsChequePend.Post;
  end;
  fDMCadDuplicata.mCheque.Delete;
end;

procedure TfrmSel_Cheque.btnConfirmarClick(Sender: TObject);
begin
  Close;
end;

end.
