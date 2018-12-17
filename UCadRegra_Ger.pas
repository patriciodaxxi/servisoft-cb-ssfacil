unit UCadRegra_Ger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, RxDBComb, RxLookup,
  ExtCtrls, RzPanel, NxCollection, UDMCadRegra;

type
  TfrmCadRegra_Ger = class(TForm)
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
    fDMCadRegra: TDMCadRegra;
    
  end;

var
  frmCadRegra_Ger: TfrmCadRegra_Ger;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadRegra_Ger.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadRegra_Ger.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadRegra);
  CheckBox1.Visible := (fDMCadRegra.cdsRegraCALCULA_ST.AsString = 'S');
  fDMCadRegra.cdsTab_CSTICMS_Simples.Close;
  fDMCadRegra.cdsTab_CSTICMS_Simples.Open;
end;

procedure TfrmCadRegra_Ger.btnConfirmarClick(Sender: TObject);
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
    fDMCadRegra.prc_Inserir_Itens;
    fDMCadRegra.cdsRegra_ItensITEM.AsInteger := i;
    fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString     := vTipo_Empresa[i];
    fDMCadRegra.cdsRegra_ItensTIPO_CLIENTE.AsString     := vTipo_Cliente[i];
    fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString   := vTipo_Pessoa[i];
    fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger := vTipo_Consum[i];
    if fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G' then
      fDMCadRegra.cdsRegra_ItensNOME.AsString := 'Geral'
    else
      fDMCadRegra.cdsRegra_ItensNOME.AsString := 'Simples';
    if fDMCadRegra.cdsRegra_ItensTIPO_CLIENTE.AsString = 'G' then
      fDMCadRegra.cdsRegra_ItensNOME.AsString := fDMCadRegra.cdsRegra_ItensNOME.AsString + '/Geral'
    else
      fDMCadRegra.cdsRegra_ItensNOME.AsString := fDMCadRegra.cdsRegra_ItensNOME.AsString + '/Simples';
    if fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString = 'J' then
      fDMCadRegra.cdsRegra_ItensNOME.AsString := fDMCadRegra.cdsRegra_ItensNOME.AsString + '/Jurídica'
    else
    if fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString = 'F' then
      fDMCadRegra.cdsRegra_ItensNOME.AsString := fDMCadRegra.cdsRegra_ItensNOME.AsString + '/Física';
    if not fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.IsNull then
    begin
      if fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger = 0 then
        fDMCadRegra.cdsRegra_ItensNOME.AsString := fDMCadRegra.cdsRegra_ItensNOME.AsString + '/Cons.Normal'
      else
      if fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsInteger = 1 then
        fDMCadRegra.cdsRegra_ItensNOME.AsString := fDMCadRegra.cdsRegra_ItensNOME.AsString + '/Cons.Final';
    end;
    if fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G' then
      fDMCadRegra.cdsRegra_ItensID_CSTICMS.AsInteger := RxDBLookupCombo4.KeyValue
    else
      fDMCadRegra.cdsRegra_ItensID_CSTICMS.AsInteger := RxDBLookupCombo1.KeyValue;
    fDMCadRegra.cdsRegra_ItensID_CSTIPI.AsInteger  := RxDBLookupCombo5.KeyValue;
    if RxDBLookupCombo7.Text <> '' then
      fDMCadRegra.cdsRegra_ItensID_ENQIPI.AsInteger  := RxDBLookupCombo7.KeyValue;
    if CheckBox1.Checked then
      fDMCadRegra.cdsRegra_ItensCALCULAR_ST.AsString := 'S'
    else
      fDMCadRegra.cdsRegra_ItensCALCULAR_ST.AsString := 'N';
    if trim(Memo1.Text) <> '' then
      fDMCadRegra.cdsRegra_ItensOBS_LEI.Value := Memo1.Text;
    if fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G' then
      fDMCadRegra.cdsRegra_ItensCOD_ICMS.AsString := RxDBLookupCombo4.Text
    else
      fDMCadRegra.cdsRegra_ItensCOD_ICMS.AsString := RxDBLookupCombo1.Text;
    fDMCadRegra.cdsRegra_ItensCOD_IPI.AsString  := RxDBLookupCombo5.Text;
    if RxDBLookupCombo7.Text <> '' then
      fDMCadRegra.cdsRegra_ItensCOD_ENQ.AsString  := RxDBLookupCombo7.Text;
    fDMCadRegra.cdsRegra_Itens.Post;
  end;
  Close;
end;

procedure TfrmCadRegra_Ger.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
