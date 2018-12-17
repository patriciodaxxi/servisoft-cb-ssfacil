unit UCadCFOP_Ger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, RxDBComb, RxLookup,
  ExtCtrls, RzPanel, NxCollection, UDMCadCFOP;

type
  TfrmCadCFOP_Ger = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Panel3: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    CheckBox1: TCheckBox;
    RzGroupBox4: TRzGroupBox;
    Label10: TLabel;
    Memo1: TMemo;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadCFOP: TDMCadCFOP;
    
  end;

var
  frmCadCFOP_Ger: TfrmCadCFOP_Ger;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadCFOP_Ger.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCFOP_Ger.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadCFOP);
  CheckBox1.Visible := (fDMCadCFOP.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S');
  fDMCadCFOP.cdsTab_CSTICMS_Simples.Close;
  fDMCadCFOP.cdsTab_CSTICMS_Simples.Open;
  fDMCadCFOP.prc_abrir_csticms('G');
end;

procedure TfrmCadCFOP_Ger.btnConfirmarClick(Sender: TObject);
const
  vTipo_Empresa: array[1..12] of String  = ('G','G','G','G','G','G','S','S','S','S','S','S');
  vTipo_Cliente: array[1..12] of String  = ('G','G','G','S','S','S','G','G','G','S','S','S');
  vTipo_Pessoa : array[1..12] of String  = ('J','J','F','J','J','F','J','J','F','J','J','F');
  vTipo_Consum : array[1..12] of Integer = (0,1,1,0,1,1,0,1,1,0,1,1);
var
  vItemAux : Integer;
  i : Integer;
begin
  if RxDBLookupCombo4.Text = '' then
  begin
    MessageDlg('*** CST ICMS não lançada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if RxDBLookupCombo5.Text = '' then
  begin
    MessageDlg('*** CST IPI não lançada!', mtInformation, [mbOk], 0);
    exit;
  end;

  vItemAux := 0;
  for i := 1 to 12 do
  begin
    fDMCadCFOP.prc_Inserir_Itens;
    fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger := i;
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString     := vTipo_Empresa[i];
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString     := vTipo_Cliente[i];
    fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString   := vTipo_Pessoa[i];
    fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger := vTipo_Consum[i];
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := 'Geral'
    else
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := 'Simples';
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString = 'G' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Geral'
    else
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Simples';
    if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'J' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Jurídica'
    else
    if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'F' then
      fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Física';
    if not fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.IsNull then
    begin
      if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 0 then
        fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Cons.Normal'
      else
      if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 1 then
        fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString + '/Cons.Final';
    end;
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
      fDMCadCFOP.cdsCFOP_VariacaoID_CSTICMS.AsInteger := RxDBLookupCombo4.KeyValue
    else
      fDMCadCFOP.cdsCFOP_VariacaoID_CSTICMS.AsInteger := RxDBLookupCombo1.KeyValue;
    fDMCadCFOP.cdsCFOP_VariacaoID_CSTIPI.AsInteger  := RxDBLookupCombo5.KeyValue;
    if RxDBLookupCombo7.Text <> '' then
      fDMCadCFOP.cdsCFOP_VariacaoID_ENQIPI.AsInteger  := RxDBLookupCombo7.KeyValue;
    if CheckBox1.Checked then
      fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString := 'S'
    else
      fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString := 'N';
    if trim(Memo1.Text) <> '' then
      fDMCadCFOP.cdsCFOP_VariacaoLEI.Value := Memo1.Text;
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
      fDMCadCFOP.cdsCFOP_VariacaoCOD_ICMS.AsString := RxDBLookupCombo4.Text
    else
      fDMCadCFOP.cdsCFOP_VariacaoCOD_ICMS.AsString := RxDBLookupCombo1.Text;
    fDMCadCFOP.cdsCFOP_VariacaoCOD_IPI.AsString  := RxDBLookupCombo5.Text;
    if RxDBLookupCombo7.Text <> '' then
      fDMCadCFOP.cdsCFOP_VariacaoCOD_ENQ.AsString  := RxDBLookupCombo7.Text;
    fDMCadCFOP.cdsCFOP_Variacao.Post;
  end;
  Close;
end;

procedure TfrmCadCFOP_Ger.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
