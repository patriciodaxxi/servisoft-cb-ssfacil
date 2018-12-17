unit UInformar_Processo_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, NxCollection, CurrEdit, UDMAprovacao_Ped, SqlExpr,
  RxLookup, Grids, DBGrids, SMDBGrid, ExtCtrls, DB;

type
  TfrmInformar_Processo_Ped = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    SMDBGrid1: TSMDBGrid;
    Label6: TLabel;
    btnExcluir: TNxButton;
    Label7: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    Edit1: TEdit;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    fDMAprovacao_Ped: TDMAprovacao_Ped;
    procedure prc_Consultar;
    procedure prc_Processos;
    function fnc_Verifica_Transportadora : Integer;

  public
    { Public declarations }
  end;

var
  frmInformar_Processo_Ped: TfrmInformar_Processo_Ped;

implementation

uses DmdDatabase, rsDBUtils, DBClient, TypInfo;

{$R *.dfm}

procedure TfrmInformar_Processo_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMAprovacao_Ped);
  Action := Cafree;
end;

procedure TfrmInformar_Processo_Ped.prc_Consultar;
begin
  fDMAprovacao_Ped.cdsConsulta_Processo.Close;
  fDMAprovacao_Ped.sdsConsulta_Processo.ParamByName('ID').AsInteger := CurrencyEdit1.AsInteger;
  fDMAprovacao_Ped.cdsConsulta_Processo.Open;
end;

procedure TfrmInformar_Processo_Ped.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInformar_Processo_Ped.FormShow(Sender: TObject);
begin
  fDMAprovacao_Ped := TDMAprovacao_Ped.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMAprovacao_Ped);
  if CurrencyEdit1.AsInteger > 0 then
    prc_Processos
  else
    CurrencyEdit1.SetFocus;
end;

procedure TfrmInformar_Processo_Ped.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Processos;
end;

procedure TfrmInformar_Processo_Ped.prc_Processos;
var
  vIDAux : Integer;
begin
  label1.Visible           := False;
  DateEdit1.Visible        := False;
  label5.Visible           := False;
  RxDBLookupCombo1.Visible := False;
  label10.Visible          := False;
  Edit1.Visible            := False;
  prc_Consultar;
  fDMAprovacao_Ped.cdsConsulta_Processo.Last;

  Label7.Caption := '';
  if fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'C' then
    Label7.Caption := 'Liberar para Expedição'
  else
  if fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'E' then
    Label7.Caption := 'Faturamento'
  else
  if fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F' then
    Label7.Caption := 'Liberar para transportadora';
  Label7.Visible := True;

  btnConfirmar.Enabled := ((fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'C')
                        or (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F'));
  btnExcluir.Enabled := ((fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'E')
                      or (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'T'));

  Label1.Visible := ((fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'C')
                        or (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F'));
  DateEdit1.Visible := ((fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'C')
                        or (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F'));

  Label5.Visible := (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F');
  RxDBLookupCombo1.Visible := (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F');
  Label10.Visible := (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F');
  Edit1.Visible   := (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F');

  if fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'C' then
    Label1.Caption := 'Dt.Expedição:'
  else
  if fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F' then
    Label1.Caption := 'Dt.Liberado Transportadora:';
  if not(fDMAprovacao_Ped.cdsConsulta_Processo.IsEmpty) and (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F') then
  begin
    vIDAux := fnc_Verifica_Transportadora;
    if vIDAux > 0 then
      RxDBLookupCombo1.KeyValue := vIDAux;
  end;
end;

function TfrmInformar_Processo_Ped.fnc_Verifica_Transportadora: Integer;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT distinct I.id_pedido, N.id_transportadora, MAX(N.numnota) '
                       + 'FROM notafiscal_itens I '
                       + 'INNER JOIN NOTAFISCAL N '
                       + 'ON I.id = N.id '
                       + 'WHERE I.id = :ID_PEDIDO '
                       + 'GROUP BY I.id_pedido, N.id_transportadora ';
    sds.ParamByName('ID_Pedido').AsInteger := fDMAprovacao_Ped.cdsConsulta_ProcessoID.AsInteger; 
    sds.Open;
    Result := sds.FieldByName('id_transportadora').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmInformar_Processo_Ped.btnExcluirClick(Sender: TObject);
begin
  if fDMAprovacao_Ped.cdsConsulta_Processo.IsEmpty then
    exit;
  if (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'C') or (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F') then
  begin
    MessageDlg('*** Processo não pode ser excluido, pois é gerado automaticamente!', mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja excluir o processo ' + fDMAprovacao_Ped.cdsConsulta_ProcessoDESCRICAO_STATUS.AsString ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMAprovacao_Ped.cdsPedido_Processo.Close;
  fDMAprovacao_Ped.sdsPedido_Processo.ParamByName('ID').AsInteger   := fDMAprovacao_Ped.cdsConsulta_ProcessoID.AsInteger;
  fDMAprovacao_Ped.sdsPedido_Processo.ParamByName('ITEM').AsInteger := fDMAprovacao_Ped.cdsConsulta_ProcessoITEM.AsInteger;
  fDMAprovacao_Ped.cdsPedido_Processo.Open;

  if fDMAprovacao_Ped.cdsPedido_Processo.IsEmpty then
    exit;

  fDMAprovacao_Ped.cdsPedido_Processo.Delete;
  fDMAprovacao_Ped.cdsPedido_Processo.ApplyUpdates(0);
  prc_Processos;
end;

procedure TfrmInformar_Processo_Ped.btnConfirmarClick(Sender: TObject);
var
  vTipo_Status : String;
  vID_Transp : Integer;
  vNome_Transp : String;
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F') and (trim(RxDBLookupCombo1.Text) = '') then
  begin
    MessageDlg('*** Transportadora não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  
  vID_Transp   := 0;
  vNome_Transp := '';
  if fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'C' then
    vTipo_Status := 'E'
  else
  if fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString = 'F' then
  begin
    vTipo_Status := 'T';
    if RxDBLookupCombo1.Text <> '' then
      vID_Transp := RxDBLookupCombo1.KeyValue;
    vNome_Transp := RxDBLookupCombo1.Text;
  end;
  fDMAprovacao_Ped.prc_Gravar_Pedido_Processo('',fDMAprovacao_Ped.cdsConsulta_ProcessoID.AsInteger,vID_Transp,vTipo_Status,vNome_Transp,Edit1.Text,DateEdit1.Date);
  prc_Processos;
end;

procedure TfrmInformar_Processo_Ped.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMAprovacao_Ped.cdsConsulta_ProcessoEMAIL_ENVIADO.AsString = 'N' then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmInformar_Processo_Ped.SMDBGrid1DblClick(Sender: TObject);
begin
  if MessageDlg('Deseja enviar o email do ' + TrimRight(fDMAprovacao_Ped.cdsConsulta_ProcessoDESCRICAO_STATUS.AsString) + ' ?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMAprovacao_Ped.prc_Gravar_Pedido_Processo('',fDMAprovacao_Ped.cdsConsulta_ProcessoID.AsInteger,
                                              fDMAprovacao_Ped.cdsConsulta_ProcessoID_TRANSPORTADORA.AsInteger,
                                              fDMAprovacao_Ped.cdsConsulta_ProcessoTIPO_STATUS.AsString,
                                              fDMAprovacao_Ped.cdsConsulta_ProcessoNOME_TRANSPORTADORA.AsString,
                                              fDMAprovacao_Ped.cdsConsulta_ProcessoCOD_RASTREAMENTO.AsString,
                                              fDMAprovacao_Ped.cdsConsulta_ProcessoDTPROCESSO.AsDateTime,'E');
  prc_Processos;
end;

end.

