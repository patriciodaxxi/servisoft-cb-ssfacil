unit uEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, RxLookup,
  rsDBUtils, Mask, ToolEdit, RXSpin, uDmEtiqueta, CurrEdit, uDmConsulta;

type
  TfEtiqueta = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    DateEdit1: TDateEdit;
    BitBtn3: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox1: TComboBox;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label10: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label13: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    Label14: TLabel;
    Label15: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    fDmEtiqueta: TDmEtiqueta;
    fDmConsulta: TDmConsulta;
    procedure gerarEtiquetas;
  public
    { Public declarations }
  end;

var
  fEtiqueta: TfEtiqueta;

implementation

uses uEtiquetaR, uConsulta;

{$R *.dfm}

procedure TfEtiqueta.BitBtn2Click(Sender: TObject);
begin
  if fDmEtiqueta.mEtiqueta.IsEmpty then
  begin
    ShowMessage('Clique no botão "Gerar" para imprimir!');
    Exit;
  end;
  fEtiquetaR := TfEtiquetaR.Create(Self);
  fEtiquetaR.vCabecalho  := RxDBLookupCombo1.KeyValue > 0;
  fEtiquetaR.fDmEtiqueta := fDmEtiqueta;
  fEtiquetaR.RLReport1.Preview;
end;

procedure TfEtiqueta.gerarEtiquetas;
var
  i: Integer;
begin
  if not fDmEtiqueta.mEtiqueta.Active then
    fDmEtiqueta.mEtiqueta.CreateDataSet;
  fDmEtiqueta.mEtiqueta.EmptyDataSet;

  for i := 1 to CurrencyEdit1.AsInteger do
  begin
    fDmEtiqueta.mEtiqueta.Insert;
    fDmEtiqueta.mEtiquetaACABADO_ID.AsInteger  := RxDBLookupCombo2.KeyValue;
    fDmEtiqueta.mEtiquetaACABADO_NOME.AsString := RxDBLookupCombo2.Text;
    fDmEtiqueta.mEtiquetaALTURA.AsString       := Edit3.Text;
    fDmEtiqueta.mEtiquetaCOMPRIMENTO.AsString  := Edit1.Text;
    fDmEtiqueta.mEtiquetaFD_TP_SP.AsInteger    := ComboBox1.ItemIndex + 1;
    if CurrencyEdit4.Value > 0 then
      case ComboBox1.ItemIndex of
        0: fDmEtiqueta.mEtiquetaOP_ID.AsCurrency := CurrencyEdit4.Value + 10000000;
        1: fDmEtiqueta.mEtiquetaOP_ID.AsCurrency := CurrencyEdit4.Value + 20000000;
        2: fDmEtiqueta.mEtiquetaOP_ID.AsCurrency := CurrencyEdit4.Value + 30000000;
        3: fDmEtiqueta.mEtiquetaOP_ID.AsCurrency := CurrencyEdit4.Value + 40000000;
        4: fDmEtiqueta.mEtiquetaOP_ID.AsCurrency := CurrencyEdit4.Value + 50000000;
        5: fDmEtiqueta.mEtiquetaOP_ID.AsCurrency := CurrencyEdit4.Value + 60000000;
      end;
     fDmEtiqueta.mEtiquetaOP_ID.AsString := fDmEtiqueta.mEtiquetaOP_ID.AsString + FormatFloat('0000',CurrencyEdit3.Value);
    fDmEtiqueta.mEtiquetaLARGURA.AsString     := Edit2.Text;
    fDmEtiqueta.mEtiquetaOC.AsString          := Edit5.Text;
    fDmEtiqueta.mEtiquetaOP_DATA.AsDateTime   := DateEdit1.Date;
    fDmEtiqueta.mEtiquetaQUANTIDADE.AsString  := CurrencyEdit3.Text;
    fDmEtiqueta.mEtiqueta.Post;
  end;
end;

procedure TfEtiqueta.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmEtiqueta) then
    fDmEtiqueta := TDmEtiqueta.Create(Self);
end;

procedure TfEtiqueta.BitBtn3Click(Sender: TObject);
begin
  fEtiquetaR := TfEtiquetaR.Create(Self);
  fEtiquetaR.fDmEtiqueta := fDmEtiqueta;
  fEtiquetaR.RLReport1.Print;
end;

procedure TfEtiqueta.RxDBLookupCombo2Change(Sender: TObject);
begin
  Edit1.Text := fDmEtiqueta.cdsAcabadoFD_COMPR.AsString;
  Edit2.Text := fDmEtiqueta.cdsAcabadoFD_LARGURA.AsString;
  Edit3.Text := fDmEtiqueta.cdsAcabadoFD_ALTURA.AsString;
end;

procedure TfEtiqueta.BitBtn1Click(Sender: TObject);
begin
  gerarEtiquetas;
end;

procedure TfEtiqueta.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmEtiqueta);
  oDBUtils.OpenTables(True,Self);
  ComboBox1.ItemIndex := 0;
end;

procedure TfEtiqueta.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.KeyValue > 0 then
  begin
    DateEdit1.Date            := fDmEtiqueta.cdsOPDT_EMISSAO.AsDateTime;
    RxDBLookupCombo4.KeyValue := fDmEtiqueta.cdsOPCLIENTE_ID.AsInteger;
    RxDBLookupCombo2.KeyValue := fDmEtiqueta.cdsOPACABADO_ID.AsInteger;
    CurrencyEdit2.Text        := fDmEtiqueta.cdsOPQTD.AsString;
    Edit5.Text                := fDmEtiqueta.cdsOPOC.AsString;
    CurrencyEdit4.Value       := RxDBLookupCombo3.KeyValue;
  end;
end;

procedure TfEtiqueta.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit3.Value > 0 then
    CurrencyEdit1.Value := CurrencyEdit2.Value / CurrencyEdit3.Value;
end;

procedure TfEtiqueta.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsAcabado.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsAcabado;
    fConsulta.ShowModal;
    RxDBLookupCombo2.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfEtiqueta.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsPessoa.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsPessoa;
    fConsulta.ShowModal;
    RxDBLookupCombo4.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfEtiqueta.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmEtiqueta);
end;

procedure TfEtiqueta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

end.
