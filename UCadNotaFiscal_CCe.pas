unit UCadNotaFiscal_CCe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, RXCtrls, StdCtrls, DBCtrls, ExtCtrls,
  Mask, Buttons, ToolEdit, RXDBCtrl, RzEdit, RzDBEdit, Grids, DBGrids, SMDBGrid, DB, DBClient, UDMCadNotaFiscal,
  UDMNFe, UNFe, RzPanel, NxCollection;

type
  TfrmCadNotaFiscal_CCe = class(TForm)
    SMDBGrid1: TSMDBGrid;
    gbxVendedor: TRzGroupBox;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnInserir: TNxButton;
    Panel2: TPanel;
    btnEnvio: TNxButton;
    Shape1: TShape;
    Label1: TLabel;
    btnConfirmar: TNxButton;
    btnImprimir: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEnvioClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Abrir_FormNFe;
    procedure prc_Habilitar_Botoes;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMNFe: TDMNFe;
    ffNFe : TfNFe;
  end;

var
  frmCadNotaFiscal_CCe: TfrmCadNotaFiscal_CCe;

implementation

uses URelCCe, rsDBUtils, uUtilPadrao;

{$R *.DFM}

procedure TfrmCadNotaFiscal_CCe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_CCe.btnConfirmarClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if Length(fDMCadNotaFiscal.cdsNotaFiscal_CCeMOTIVO.Value) < 15 then
  begin
    ShowMessage('Motivo deve ter no mínimo 16 caracteres!');
    exit;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal_CCe.Post;
  fDMCadNotaFiscal.cdsNotaFiscal_CCe.ApplyUpdates(0);
  fDMCadNotaFiscal.cdsNotaFiscal_CCe.Last;

  try
    Abrir_FormNFe;
  except
  end;

  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  //btnImprimir.Enabled  := not(btnImprimir.Enabled);
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnEnvio.Enabled     := not(btnEnvio.Enabled);
  btnImprimirClick(Sender);
end;

procedure TfrmCadNotaFiscal_CCe.Abrir_FormNFe;
begin
  if ((trim(fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.IsNull)) and
     (fDMCadNotaFiscal.cdsNotaFiscal_CCeITEMTIPO.AsInteger > 0) then
  begin
    try
      ffNFe  := TfNFe.Create(fNFe);
      ffNFe.Tag := 5;
      ffNfe.fDMCadNotaFiscal := fDMCadNotaFiscal;
      ffNfe.fDMNFe           := fDMNFe;
      vFilial                := fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger;
      ffNFe.prc_Configura_Tela;
      //18/12/2013
      ffNFe.btCCeClick(ffNFe);
      //ffNFe.ShowModal;
    finally
      FreeAndNil(ffNFe);
    end;
  end;
end;                               

procedure TfrmCadNotaFiscal_CCe.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadNotaFiscal.cdsNotaFiscal_CCe.IsEmpty) and
     ((fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.IsNull) or (trim(fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.AsString) = '')) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadNotaFiscal_CCe.btnExcluirClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_CCe.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_CCeID.AsInteger < 1) then
    exit;
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.AsString) <> '' then
  begin
    MessageDlg('*** Carta de correção já enviada!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir o registro da carta de correção?',mtconfirmation,[mbok,mbno],0)=mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_CCe.Delete;
  fDMCadNotaFiscal.cdsNotaFiscal_CCe.ApplyUpdates(0);
end;

procedure TfrmCadNotaFiscal_CCe.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadNotaFiscal.cdsNotaFiscal_CCe.IsEmpty) or (fDMCadNotaFiscal.cdsNotaFiscal_CCeID.AsInteger < 1) then
    exit;
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.AsString) <> '' then
  begin
    MessageDlg('*** Carta de correção já enviada!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja alterar o registro da carta de correção?',mtconfirmation,[mbok,mbno],0)=mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_CCe.Edit;
  DBMemo1.ReadOnly := False;
  DBMemo1.SetFocus;
  prc_Habilitar_Botoes;
end;

procedure TfrmCadNotaFiscal_CCe.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_CCe.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
end;

procedure TfrmCadNotaFiscal_CCe.btnInserirClick(Sender: TObject);
var
  vItem, vItemCCe: Integer;
begin
  {fDMCadNotaFiscal.cdsNotaFiscal_NFE.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_NFE.Open;
  fDMCadNotaFiscal.cdsNotaFiscal_NFE.Last;
  vItem := fDMCadNotaFiscal.cdsNotaFiscal_NFeITEM.AsInteger;}

  fDMCadNotaFiscal.qProximaItem_NFe.Close;
  fDMCadNotaFiscal.qProximaItem_NFe.ParamByName('ID').AsInteger := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.qProximaItem_NFe.Open;
  vItem := fDMCadNotaFiscal.qProximaItem_NFeITEM.AsInteger;

  fDMCadNotaFiscal.cdsNotaFiscal_CCe.Last;
  vItemCCe := fDMCadNotaFiscal.cdsNotaFiscal_CCeITEMTIPO.AsInteger;
  if vItemCCe >= 20 then
  begin
    MessageDlg('*** Número máximo de carta de correção excedida!', mtError, [mbOk], 0);
    exit;
  end;
  if (trim(fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.AsString) = '') and (fDMCadNotaFiscal.cdsNotaFiscal_CCeITEM.AsInteger > 0) then
  begin
    MessageDlg('*** Registro anterior não foi validado!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadNotaFiscal.cdsNotaFiscal_CCe.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_CCeID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_CCeITEM.AsInteger        := vItem + 1;
  fDMCadNotaFiscal.cdsNotaFiscal_CCeITEMTIPO.AsInteger    := vItemCCe + 1;
  fDMCadNotaFiscal.cdsNotaFiscal_CCeTIPO.AsString         := 'CCE';
  fDMCadNotaFiscal.cdsNotaFiscal_CCeDESCRICAO.AsString    := 'Carta de Correção';
  fDMCadNotaFiscal.cdsNotaFiscal_CCeDTCADASTRO.AsDateTime := Date;
  fDMCadNotaFiscal.cdsNotaFiscal_CCeHRCADASTRO.AsDateTime := Now;
  {fDMCadNotaFiscal.cdsNotaFiscal_CCe.Post;
  fDMCadNotaFiscal.cdsNotaFiscal_CCe.ApplyUpdates(0);
  fDMCadNotaFiscal.cdsNotaFiscal_CCe.Edit;}

  DBMemo1.ReadOnly := False;
  DBMemo1.SetFocus;

  prc_Habilitar_Botoes;
end;

procedure TfrmCadNotaFiscal_CCe.prc_Habilitar_Botoes;
begin
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  //btnImprimir.Enabled  := not(btnImprimir.Enabled);
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnEnvio.Enabled     := not(btnEnvio.Enabled);
end;

procedure TfrmCadNotaFiscal_CCe.btnCancelarClick(Sender: TObject);
begin
  fDMCadNotaFiscal.cdsNotaFiscal_CCe.CancelUpdates;
  DBMemo1.ReadOnly := True;
  prc_Habilitar_Botoes;
end;

procedure TfrmCadNotaFiscal_CCe.btnEnvioClick(Sender: TObject);
begin
  Abrir_FormNFe;
end;

procedure TfrmCadNotaFiscal_CCe.btnImprimirClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_CCe.IsEmpty then
    exit;

  if (Trim(fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.AsString) = '') or (fDMCadNotaFiscal.cdsNotaFiscal_CCeNFEPROTOCOLO.IsNull) then
  begin
    ShowMessage('Carta de correção não autorizada!');
    exit;
  end;

  fDMNFe.cdsNotaFiscal_NFe.Close;
  fDMNFe.sdsNotaFiscal_NFe.ParamByName('ID').AsInteger   := fDMCadNotaFiscal.cdsNotaFiscal_CCeID.AsInteger;
  fDMNFe.sdsNotaFiscal_NFe.ParamByName('ITEM').AsInteger := fDMCadNotaFiscal.cdsNotaFiscal_CCeITEM.AsInteger;
  fDMNFe.cdsNotaFiscal_NFe.Open;

  fRelCCe        := TfRelCCe.Create(Self);
  fRelCCe.fDMNFe := fDMNFe;
  fRelCCe.RLReport1.PreviewModal;
  fRelCCe.RLReport1.Free;
  fRelCCe.Destroy;
end;

end.
