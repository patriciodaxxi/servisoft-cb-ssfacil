unit UCadDuplicata_Cob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadDuplicata, Grids, DBGrids, SMDBGrid, ExtCtrls,
  NxCollection, StdCtrls, Mask, ToolEdit, RXDBCtrl, RxLookup, DB;

type
  TfrmCadDuplicata_Cob = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Habilita;
    procedure prc_Abrir_Ocorrencia(ID_Banco : Integer);
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  frmCadDuplicata_Cob: TfrmCadDuplicata_Cob;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadDuplicata_Cob.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadDuplicata_Cob.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);


end;

procedure TfrmCadDuplicata_Cob.prc_Habilita;
begin
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  btnInserir.Enabled   := not(btnInserir.Enabled);
  Panel2.Enabled       := not(Panel2.Enabled);
end;

procedure TfrmCadDuplicata_Cob.btnInserirClick(Sender: TObject);
begin
  if not(fDMCadDuplicata.cdsDuplicata_Cob.IsEmpty) and (fDMCadDuplicata.cdsDuplicata_CobDTREMESSA.IsNull)  then
  begin
    MessageDlg('*** Existe uma ocorrência pendente para esse título!', mtInformation, [mbOk], 0);
    exit;
  end;

  prc_Habilita;
  fDMCadDuplicata.prc_Inserir_Cob;
  if fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger > 0 then
  begin
    fDMCadDuplicata.cdsDuplicata_CobID_CONTA.AsInteger := fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger;
    fDMCadDuplicata.cdsContas.Locate('ID',fDMCadDuplicata.cdsDuplicata_CobID_CONTA.AsInteger, [loCaseInsensitive]);
    prc_Abrir_Ocorrencia(fDMCadDuplicata.cdsContasID_BANCO.AsInteger);
    RxDBLookupCombo1.ReadOnly := True;
  end;
end;

procedure TfrmCadDuplicata_Cob.btnAlterarClick(Sender: TObject);
begin
  prc_Habilita;
end;

procedure TfrmCadDuplicata_Cob.btnConfirmarClick(Sender: TObject);
var
  vGravar : Boolean;
begin
  fDMCadDuplicata.vMsgErro := '';
  if fDMCadDuplicata.cdsOcorrencia.Locate('ID',fDMCadDuplicata.cdsDuplicata_CobID_OCORRENCIA.AsInteger, [loCaseInsensitive]) then
  begin
    if (fDMCadDuplicata.cdsOcorrenciaTIPO_OCO.AsString = 'VCT') and (fDMCadDuplicata.cdsDuplicata_CobDT_VENCIMENTO.AsDateTime <= Date) then
      fDMCadDuplicata.vMsgErro := fDMCadDuplicata.vMsgErro + #13 + '*** Data de Vencimento incorreta!';
  end
  else
    fDMCadDuplicata.cdsDuplicata_CobDT_VENCIMENTO.Clear;
  if fDMCadDuplicata.cdsDuplicata_CobID_OCORRENCIA.AsInteger <= 0 then
    fDMCadDuplicata.vMsgErro := fDMCadDuplicata.vMsgErro + #13 + '*** Ocorrência não informada!';
  if trim(fDMCadDuplicata.vMsgErro) <> '' then
  begin
    MessageDlg(fDMCadDuplicata.vMsgErro, mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadDuplicata.cdsDuplicata_Cob.Post;
  if fDMCadDuplicata.cdsDuplicata_CobDT_VENCIMENTO.AsDateTime > 10 then
    fDMCadDuplicata.prc_Gravar_Dupicata_Hist('OUT',RxDBLookupCombo2.Text + ' ' + fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsString,0,0,0,0,0,0,0,0)
  else
    fDMCadDuplicata.prc_Gravar_Dupicata_Hist('OUT',RxDBLookupCombo2.Text,0,0,0,0,0,0,0,0);
  fDMCadDuplicata.cdsDuplicata_Cob.Edit;
  fDMCadDuplicata.cdsDuplicata_CobID_DUPLICATA_HIST.AsInteger := fDMCadDuplicata.cdsDuplicata_HistITEM.AsInteger;
  fDMCadDuplicata.cdsDuplicata_Cob.Post;

  if (fDMCadDuplicata.cdsDuplicata_CobDT_VENCIMENTO.AsDateTime > 10) or (fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger <= 0) then
  begin
    fDMCadDuplicata.cdsDuplicata.Edit;
    if (fDMCadDuplicata.cdsOcorrenciaTIPO_OCO.AsString = 'VCT') then
    begin
      fDMCadDuplicata.cdsDuplicataDTVENCIMENTO_INI.AsDateTime := fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime;
      fDMCadDuplicata.cdsDuplicataDTVENCIMENTO.AsDateTime     := fDMCadDuplicata.cdsDuplicata_CobDT_VENCIMENTO.AsDateTime;
    end;
    if fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger <= 0 then
      fDMCadDuplicata.cdsDuplicataID_CONTA.AsInteger := fDMCadDuplicata.cdsDuplicata_CobID_CONTA.AsInteger;
    fDMCadDuplicata.cdsDuplicataNUM_REMESSA.AsInteger   := 0;
    fDMCadDuplicata.cdsDuplicataARQUIVO_GERADO.AsString := 'N';
    fDMCadDuplicata.cdsDuplicata.Post;
  end;
  fDMCadDuplicata.cdsDuplicata_Cob.ApplyUpdates(0);
  fDMCadDuplicata.cdsDuplicata_Hist.ApplyUpdates(0);
  fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
  Close;
  prc_Habilita;
end;

procedure TfrmCadDuplicata_Cob.btnCancelarClick(Sender: TObject);
begin
  fDMCadDuplicata.cdsDuplicata_Cob.Cancel;
  prc_Habilita;
end;

procedure TfrmCadDuplicata_Cob.prc_Abrir_Ocorrencia(ID_Banco : Integer);
begin
  fDMCadDuplicata.cdsOcorrencia.Close;
  fDMCadDuplicata.sdsOcorrencia.ParamByName('ID_BANCO').AsInteger := ID_Banco;
  fDMCadDuplicata.cdsOcorrencia.Open;
end;

procedure TfrmCadDuplicata_Cob.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadDuplicata.cdsContas.Locate('ID',fDMCadDuplicata.cdsDuplicata_CobID_CONTA.AsInteger, [loCaseInsensitive]);
    prc_Abrir_Ocorrencia(fDMCadDuplicata.cdsContasID_BANCO.AsInteger);
    RxDBLookupCombo1.ReadOnly := True;
  end;
end;

procedure TfrmCadDuplicata_Cob.RxDBLookupCombo2Exit(Sender: TObject);
begin
  Label3.Visible := (fDMCadDuplicata.cdsOcorrenciaTIPO_OCO.AsString = 'VCT');
  DBDateEdit2.Visible := (fDMCadDuplicata.cdsOcorrenciaTIPO_OCO.AsString = 'VCT');
end;

procedure TfrmCadDuplicata_Cob.btnExcluirClick(Sender: TObject);
begin
  if fDMCadDuplicata.cdsDuplicata_Cob.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNO then
    exit;

  fDMCadDuplicata.cdsDuplicata.Edit;
  fDMCadDuplicata.cdsDuplicataARQUIVO_GERADO.AsString := 'S';
  fDMCadDuplicata.cdsDuplicata.Post;

  fDMCadDuplicata.cdsDuplicata_Cob.Delete;

  fDMCadDuplicata.cdsDuplicata.ApplyUpdates(0);
  fDMCadDuplicata.cdsDuplicata_Cob.ApplyUpdates(0);
  Close;
end;

end.
