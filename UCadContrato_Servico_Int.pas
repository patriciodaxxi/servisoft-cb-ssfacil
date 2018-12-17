unit UCadContrato_Servico_Int;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOS, ExtCtrls, StdCtrls,
  RxLookup, Mask, DBCtrls, Buttons, DB, RzCmboBx, RzPanel, RzDBCmbo;

type
  TfrmCadContrato_Servico_Int = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlPonto: TPanel;
    Label13: TLabel;
    Edit3: TEdit;
    DBEdit8: TDBEdit;
    Edit1: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit5: TDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzDBComboBox2: TRzDBComboBox;
    RzDBComboBox3: TRzDBComboBox;
    RzDBComboBox4: TRzDBComboBox;
    RzDBComboBox5: TRzDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    gbxVendedor: TRzGroupBox;
    Label82: TLabel;
    SpeedButton5: TSpeedButton;
    Label83: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    DBEdit53: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    RzDBComboBox6: TRzDBComboBox;
    Label14: TLabel;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vVlrAnt: Real;
    procedure prc_Calcular_Vlr;
    procedure prc_Verifica_Comissao;
    procedure prc_Gravar_Servico_Hist;
    procedure prc_Posicionar_Pontos(ID: Integer);
  public
    { Public declarations }
    fDMCadOS: TDMCadOS;
  end;

var
  frmCadContrato_Servico_Int: TfrmCadContrato_Servico_Int;

implementation

uses rsDBUtils, uUtilPadrao, USel_Pontos;

{$R *.dfm}

procedure TfrmCadContrato_Servico_Int.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadOS.cdsOS_Servico_Int.State in [dsEdit,dsInsert] then
    fDMCadOS.cdsOS_Servico_Int.Cancel;
  Action := Cafree;
end;

procedure TfrmCadContrato_Servico_Int.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOS);
  gbxVendedor.Visible := ((fDMCadOS.qParametrosUSA_VENDEDOR.AsString = 'S') and (fDMCadOS.qParametrosTIPO_COMISSAO_NFSE.AsString = 'I'));
  if (gbxVendedor.Visible) and (fDMCadOS.qParametrosESCOLA.AsString = 'S') then
  begin
    gbxVendedor.Caption := ' Professor ';
    Label82.Caption     := 'Professor:';
  end;
  pnlPonto.Visible := (fDMCadOS.qParametros_GerUSA_PONTOS_LOCACAO.AsString = 'S');
  if (fDMCadOS.cdsOS_Servico_Int.State in [dsEdit]) and (fDMCadOS.qParametros_GerUSA_PONTOS_LOCACAO.AsString = 'S') then
    prc_Posicionar_Pontos(fDMCadOS.cdsOS_Servico_IntID_PONTO.AsInteger);

  DBEdit3.Visible := fDMCadOS.cdsOSTIPO_REG.AsString = 'U';
  DBEdit7.Visible := fDMCadOS.cdsOSTIPO_REG.AsString = 'U';
  Label3.Visible  := fDMCadOS.cdsOSTIPO_REG.AsString = 'U';
  Label11.Visible := fDMCadOS.cdsOSTIPO_REG.AsString = 'U';
  Label12.Visible := fDMCadOS.cdsOSTIPO_REG.AsString = 'U';
  RzDBComboBox6.Visible := fDMCadOS.cdsOSTIPO_REG.AsString = 'U';
  if fDMCadOS.cdsOSTIPO_REG.AsString <> 'U' then
    RzDBComboBox6.ItemIndex := 1; //tipo de cobrança = valor fixo mensal
  vVlrAnt := fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat;
end;

procedure TfrmCadContrato_Servico_Int.BitBtn1Click(Sender: TObject);
begin
  fDMCadOS.vMsgOS := '';
  if fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger <= 0 then
    fDMCadOS.vMsgOS := fDMCadOS.vMsgOS + #13 + '*** Serviço interno não informado!';

  if fDMCadOS.cdsOS_Servico_IntTIPO_COB.AsString <> '2' then //1 = valor fixo, 2 = somente consumo, 3 = fixo + excedente
    if fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsInteger <= 0 then
      fDMCadOS.vMsgOS := fDMCadOS.vMsgOS + #13 + '*** Valor unitário não informado!';

  if trim(fDMCadOS.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOS.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;
  if trim(RxDBLookupCombo9.Text) <> '' then
    fDMCadOS.cdsOS_Servico_IntNOME_VENDEDOR.AsString := RxDBLookupCombo9.Text;
  fDMCadOS.cdsOS_Servico_Int.Post;
  if StrToFloat(FormatFloat('0.00',vVlrAnt)) <> StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat)) then
    prc_Gravar_Servico_Hist;

  Close;
end;

procedure TfrmCadContrato_Servico_Int.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadContrato_Servico_Int.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadOS.cdsOS_Servico_IntNOME_SERVICO_INT.AsString := RxDBLookupCombo1.Text;
    fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat       := StrToFloat(FormatFloat('0.00##',fDMCadOS.cdsServico_IntVLR_UNITARIO.AsFloat));
    prc_Verifica_Comissao;
  end;
end;

procedure TfrmCadContrato_Servico_Int.SpeedButton1Click(Sender: TObject);
begin
  fDMCadOS.cdsServico_Int.Close;
  fDMCadOS.cdsServico_Int.Open;
end;

procedure TfrmCadContrato_Servico_Int.DBEdit4Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

procedure TfrmCadContrato_Servico_Int.prc_Calcular_Vlr;
begin
  fDMCadOS.cdsOS_Servico_IntVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat * fDMCadOS.cdsOS_Servico_IntQTD.AsFloat));
end;

procedure TfrmCadContrato_Servico_Int.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

procedure TfrmCadContrato_Servico_Int.prc_Verifica_Comissao;
begin
  if ((fDMCadOS.qParametrosUSA_VENDEDOR.AsString <> 'S') or (fDMCadOS.qParametrosTIPO_COMISSAO_NFSE.AsString <> 'I')) then
    exit;
  if fDMCadOS.cdsServico_IntID.AsInteger <> fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger then
    fDMCadOS.cdsServico_Int.Locate('ID',fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger,[loCaseInsensitive]);
  if fDMCadOS.cdsServico_IntID_VENDEDOR.AsInteger > 0 then
  begin
    fDMCadOS.cdsOS_Servico_IntID_VENDEDOR.AsInteger := fDMCadOS.cdsServico_IntID_VENDEDOR.AsInteger;
    fDMCadOS.cdsOS_Servico_IntPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsServico_IntPERC_COMISSAO.AsFloat));
  end;
end;

procedure TfrmCadContrato_Servico_Int.prc_Gravar_Servico_Hist;
var
  vItemAux: Integer;
begin
  fDMCadOS.cdsOS_Servico_Hist.Last;
  vItemAux := fDMCadOS.cdsOS_Servico_HistITEM_HIST.AsInteger;
  fDMCadOS.cdsOS_Servico_Hist.Insert;
  fDMCadOS.cdsOS_Servico_HistID.AsInteger             := fDMCadOS.cdsOSID.AsInteger;
  fDMCadOS.cdsOS_Servico_HistITEM.AsInteger           := fDMCadOS.cdsOS_Servico_IntITEM.AsInteger;
  fDMCadOS.cdsOS_Servico_HistITEM_HIST.AsInteger      := vItemAux + 1;
  fDMCadOS.cdsOS_Servico_HistID_SERVICO_INT.AsInteger := fDMCadOS.cdsOS_Servico_IntID_SERVICO_INT.AsInteger;
  fDMCadOS.cdsOS_Servico_HistVLR_ANT.AsFloat          := StrToFloat(FormatFloat('0.00',vVlrAnt));
  fDMCadOS.cdsOS_Servico_HistVLR_NOVO.AsFloat         := StrToFloat(FormatFloat('0.00',fDMCadOS.cdsOS_Servico_IntVLR_SERVICO.AsFloat));
  fDMCadOS.cdsOS_Servico_HistDTAJUSTE.AsDateTime      := Date;
  fDMCadOS.cdsOS_Servico_HistHRAJUSTE.AsDateTime      := Now;
  fDMCadOS.cdsOS_Servico_HistID_AJUSTE.Clear;
  fDMCadOS.cdsOS_Servico_HistPERC_AJUSTE.AsFloat      := 0;
  fDMCadOS.cdsOS_Servico_Hist.Post;
end;

procedure TfrmCadContrato_Servico_Int.DBEdit8Exit(Sender: TObject);
begin
  prc_Posicionar_Pontos(fDMCadOS.cdsOS_Servico_IntID_PONTO.AsInteger);
end;

procedure TfrmCadContrato_Servico_Int.prc_Posicionar_Pontos(ID: Integer);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  fDMCadOS.cdsPontos.Close;
  if ID > 0 then
  begin
    fDMCadOS.sdsPontos.ParamByName('ID').AsInteger := ID;
    fDMCadOS.cdsPontos.Open;
    Edit1.Text := fDMCadOS.cdsPontosLOGRADOURO.AsString;
    Edit2.Text := fDMCadOS.cdsPontosLOGRADOURO2.AsString;
    Edit3.Text := fDMCadOS.cdsPontosLOCALIZACAO.AsString;
  end;
end;

procedure TfrmCadContrato_Servico_Int.DBEdit8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_Ponto_Pos := fDMCadOS.cdsOS_Servico_IntID_PONTO.AsInteger;
    frmSel_Pontos := TfrmSel_Pontos.Create(Self);
    frmSel_Pontos.ShowModal;
    fDMCadOS.cdsOS_Servico_IntID_PONTO.AsInteger := vID_Ponto_Pos;
    DBEdit8.SetFocus;
  end;
end;

end.
