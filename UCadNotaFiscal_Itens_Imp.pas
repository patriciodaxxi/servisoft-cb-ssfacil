unit UCadNotaFiscal_Itens_Imp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup, ToolEdit, RXDBCtrl, DB, 
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, CurrEdit, Grids, DBGrids, SMDBGrid, UDMCadNotaFiscal, RzPanel, RxDBComb;

type
  TfrmCadNotaFiscal_Itens_Imp = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn6: TBitBtn;
    SpeedButton9: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SMDBGrid1: TSMDBGrid;
    CurrencyEdit2: TCurrencyEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    gbxVendedor: TRzGroupBox;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label13: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label17: TLabel;
    Edit1: TEdit;
    Label18: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

  end;

var
  frmCadNotaFiscal_Itens_Imp: TfrmCadNotaFiscal_Itens_Imp;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Itens_Imp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Cancel;
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Itens_Imp.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
  fDMCadNotaFiscal.cdsCidade.Open;
end;

procedure TfrmCadNotaFiscal_Itens_Imp.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadNotaFiscal_Itens_Imp.BitBtn1Click(Sender: TObject);
var
  vAux: String;
  vMsgAux: String;
begin
  vMsgAux := '';
  if Trim(fDMCadNotaFiscal.cdsNotaFiscal_ImpNUMDI.AsString) = '' then
    vMsgAux := '*** É obrigatório informar o número do documento!';
  vAux := Monta_Numero(fDMCadNotaFiscal.cdsNotaFiscal_ImpCNPJ.AsString,0);
  if (fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsInteger > 1) and (trim(vAux) = '') then
    vMsgAux := '*** CNPJ do Adiquirente ou Encomendante não informado!';
  if (fDMCadNotaFiscal.cdsNotaFiscal_ImpTIPO_INTERMEDIO.AsInteger > 1) and (trim(fDMCadNotaFiscal.cdsNotaFiscal_ImpUF_TERCEIRO.AsString) = '') then
    vMsgAux := '*** UF do Adiquirente ou Encomendante não informado!';
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Imp.Post;

  Close;
end;

procedure TfrmCadNotaFiscal_Itens_Imp.BitBtn6Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  if CurrencyEdit2.AsInteger <= 0 then
  begin
    ShowMessage('Falta informar o número da adição!');
    exit;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_AD.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdID.AsInteger            := fDMCadNotaFiscal.cdsNotaFiscal_ImpID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_IMP.AsInteger      := fDMCadNotaFiscal.cdsNotaFiscal_ImpITEM_IMP.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdITEM_AD.AsInteger       := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUMADICAO.AsInteger     := CurrencyEdit2.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger       := CurrencyEdit3.AsInteger;
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger <= 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_SEQ.AsInteger := 1;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdCODFABRICANTE.AsString  := Edit2.Text;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI.AsFloat := CurrencyEdit1.Value;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_DRAWBACK.AsString   := Edit1.Text;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Post;

  Edit1.Clear;
  Edit2.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit1.SetFocus;
end;

procedure TfrmCadNotaFiscal_Itens_Imp.SpeedButton23Click(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.IsEmpty then
    exit;
  CurrencyEdit2.AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUMADICAO.AsInteger;
  Edit2.Text              := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdCODFABRICANTE.AsString;
  CurrencyEdit1.Value     := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI.AsFloat;
  Edit1.Text              := fDMCadNotaFiscal.cdsNotaFiscal_Imp_AdNUM_DRAWBACK.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Delete;

  CurrencyEdit2.SetFocus;
end;

procedure TfrmCadNotaFiscal_Itens_Imp.SpeedButton9Click(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o registro selecionado?',mtWarning,[mbOK,mbNO],0) = mrNO then
    exit;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Ad.Delete;
end;

procedure TfrmCadNotaFiscal_Itens_Imp.RxDBComboBox1Change(Sender: TObject);
begin
  Label14.Visible := (RxDBComboBox1.ItemIndex = 0);
  DBEdit6.Visible := (RxDBComboBox1.ItemIndex = 0);
end;

procedure TfrmCadNotaFiscal_Itens_Imp.DBEdit7Enter(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsNotaFiscal_ImpCNPJ.EditMask := '00.000.000/0000-00';
end;

procedure TfrmCadNotaFiscal_Itens_Imp.DBEdit7Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit7.Text,0);
  if trim(vAux) <> '' then
  begin
    if not ValidaCNPJ(DBEdit7.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      fDMCadNotaFiscal.cdsNotaFiscal_ImpCNPJ.Clear;
      DBEdit7.SetFocus;
    end;
  end;
end;

end.
