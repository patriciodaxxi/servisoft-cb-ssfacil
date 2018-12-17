unit UCadDuplicata_Alt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadDuplicata,
  StdCtrls, Buttons, RxLookup, DB, Mask, UCadContaOrc, Menus, RzTabs, ToolEdit, RXDBCtrl, dbXPress;

type
  TfrmCadDuplicata_Alt = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TS_ContaOrcamento: TRzTabSheet;
    TS_DtVencimento: TRzTabSheet;
    Label52: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RxDBLookupCombo9: TRxDBLookupCombo;
    Label21: TLabel;
    DBDateEdit2: TDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RxDBLookupCombo9CloseUp(Sender: TObject);
    procedure RxDBLookupCombo9DropDown(Sender: TObject);
    procedure RxDBLookupCombo9Enter(Sender: TObject);
    procedure RxDBLookupCombo9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ffrmCadContaOrc: TfrmCadContaOrc;
    vDtAnt: TDateTime;

    procedure prc_Gravar_Hist_Loc;

  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;

  end;

var
  frmCadDuplicata_Alt: TfrmCadDuplicata_Alt;

implementation

uses rsDBUtils, uUtilPadrao, UDMUtil, DmdDatabase, USel_ContaOrc;

{$R *.dfm}

procedure TfrmCadDuplicata_Alt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadDuplicata.cdsDuplicata.State in [dsEdit,dsInsert] then
    fDMCadDuplicata.cdsDuplicata.Cancel;
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Alt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
  fDMCadDuplicata.cdsDuplicata.Edit;
  vDtAnt := fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime;
end;

procedure TfrmCadDuplicata_Alt.BitBtn1Click(Sender: TObject);
var
  ID: TTransactionDesc;
  vGravou: Boolean;
begin
  if (RzPageControl1.ActivePage = TS_DtVencimento) and (vDtAnt = fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime) then
    exit;

  vGravou := False;
  ID.TransactionID  := 11;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadDuplicata.cdsDuplicata.Post;
    if (RzPageControl1.ActivePage = TS_DtVencimento) then
    begin
      prc_Gravar_Hist_Loc;
      fDMCadDuplicata.cdsDuplicata_Hist.ApplyUpdates(0);
    end;
    fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

    vGravou := True;
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a alteração da Data do Vencimento: ' + #13 + e.Message);
      end;
  end;
  if vGravou then
    Close;

end;

procedure TfrmCadDuplicata_Alt.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadDuplicata_Alt.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadDuplicata_Alt.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadContaOrc := TfrmCadContaOrc.Create(self);
  ffrmCadContaOrc.ShowModal;
  FreeAndNil(ffrmCadContaOrc);
  SpeedButton3Click(Sender);
end;

procedure TfrmCadDuplicata_Alt.SpeedButton3Click(Sender: TObject);
begin
  fDMCadDuplicata.cdsContaOrcamento.Close;
  fDMCadDuplicata.cdsContaOrcamento.Open;
end;

procedure TfrmCadDuplicata_Alt.RxDBLookupCombo9CloseUp(Sender: TObject);
begin
  RxDBLookupCombo9.LookupDisplay := 'DESCRICAO';
end;

procedure TfrmCadDuplicata_Alt.RxDBLookupCombo9DropDown(Sender: TObject);
begin
  RxDBLookupCombo9.LookupDisplay := 'NOME_AUX;CODIGO';
end;

procedure TfrmCadDuplicata_Alt.RxDBLookupCombo9Enter(Sender: TObject);
begin
  fDMCadDuplicata.cdsContaOrcamento.IndexFieldNames := 'CODIGO';
end;

procedure TfrmCadDuplicata_Alt.RxDBLookupCombo9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    if fDMCadDuplicata.cdsDuplicataTIPO_ES.AsString = 'E' then
      frmSel_ContaOrc.ComboBox2.ItemIndex := 0
    else
      frmSel_ContaOrc.ComboBox2.ItemIndex := 1;
    frmSel_ContaOrc.ShowModal;
    if vID_ContaOrcamento_Pos > 0 then
      fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento_Pos
    else
      fDMCadDuplicata.cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  end;
end;

procedure TfrmCadDuplicata_Alt.prc_Gravar_Hist_Loc;
var
  vItemAux: Integer;
begin
  fDMCadDuplicata.cdsDuplicata_Hist.Last;
  vItemAux := fDMCadDuplicata.cdsDuplicata_HistITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMCadDuplicata.cdsDuplicata_Hist.Insert;
  fDMCadDuplicata.cdsDuplicata_HistID.AsInteger            := fDMCadDuplicata.cdsDuplicataID.AsInteger;
  fDMCadDuplicata.cdsDuplicata_HistITEM.AsInteger          := vItemAux;
  fDMCadDuplicata.cdsDuplicata_HistTIPO_HISTORICO.AsString := 'OUT';
  fDMCadDuplicata.cdsDuplicata_HistID_HISTORICO.AsInteger  := 0;
  fDMCadDuplicata.cdsDuplicata_HistID_COMISSAO.AsInteger   := 0;
  fDMCadDuplicata.cdsDuplicata_HistDTLANCAMENTO.AsDateTime := Date;
  fDMCadDuplicata.cdsDuplicata_HistDTHISTORICO.AsDateTime  := Date;
  fDMCadDuplicata.cdsDuplicata_HistTIPO_ES.AsString        := 'E';
  fDMCadDuplicata.cdsDuplicata_HistCOMPLEMENTO.AsString    := 'DATA DE VENCIMENTO ALTERADA DE ' + DateToStr(vDtAnt) + ' PARA ' + fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsString;
  fDMCadDuplicata.cdsDuplicata_HistID_DESCONTADA.AsInteger                 := 0;
  fDMCadDuplicata.cdsDuplicata_HistVLR_LANCAMENTO.AsFloat                  := 0;
  fDMCadDuplicata.cdsDuplicata_Hist.Post;
end;

end.

