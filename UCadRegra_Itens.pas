unit UCadRegra_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadRegra, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, RzPanel, NxCollection;

type
  TfrmCadRegra_Itens = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    gbxImpostos: TRzGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox5: TRxDBComboBox;
    RxDBComboBox9: TRxDBComboBox;
    RzGroupBox1: TRzGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RzGroupBox4: TRzGroupBox;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    Label8: TLabel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBCheckBox6: TDBCheckBox;
    Label18: TLabel;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gbxImpostosExit(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RxDBComboBox9Exit(Sender: TObject);
    procedure RxDBComboBox5Exit(Sender: TObject);
    procedure RxDBComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
    vGravacao_Ok : Boolean;
    vTipo_Consumidor_Ant : Integer;
    vPessoa_Cliente_Ant : String;

    function fnc_Erro : Boolean;
    function fnc_Monta_Nome : String;
  public
    { Public declarations }
    fDMCadRegra: TDMCadRegra;

  end;

var
  frmCadRegra_Itens: TfrmCadRegra_Itens;

implementation

uses rsDBUtils, uUtilPadrao, USel_EnqIPI;

{$R *.dfm}

procedure TfrmCadRegra_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadRegra.cdsRegra_Itens.State in [dsEdit,dsInsert] then
    fDMCadRegra.cdsRegra_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadRegra_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadRegra);
  DBCheckBox6.Visible := (fDMCadRegra.cdsRegraCALCULA_ST.AsString = 'S');
  if (fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G') or (fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'S') then
    fDMCadRegra.prc_abrir_csticms(fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString)
  else
    fDMCadRegra.prc_abrir_csticms('');
end;

function TfrmCadRegra_Itens.fnc_Erro: Boolean;
var
  vMsgErro : String;
begin
  Result := True;
  vMsgErro := '';
  if (fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString <> 'G') and (fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Tipo da empresa não informado!';
  if (fDMCadRegra.cdsRegra_ItensTIPO_CLIENTE.AsString <> 'G') and (fDMCadRegra.cdsRegra_ItensTIPO_CLIENTE.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Tipo do cliente não informado!';
  if (fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString <> 'J') and (fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString <> 'F') then
    vMsgErro := vMsgErro + #13 + '*** Cliente (Jurídica/Física) não informado!';
  if (fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString <> '0') and (fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString <> '1') then
    vMsgErro := vMsgErro + #13 + '*** Tipo do consumidor não informado!';
  if fDMCadRegra.cdsRegra_ItensID_CSTICMS.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** CST ICMS não informado!';
  //if fDMCadRegra.cdsRegra_ItensID_CSTIPI.AsInteger <= 0 then
  //  vMsgErro := vMsgErro + #13 + '*** CST IPI não informado!';
  if (fDMCadRegra.cdsRegraCALCULA_ST.AsString = 'S') then
  begin
    if fDMCadRegra.cdsTab_CSTICMS.Locate('ID',fDMCadRegra.cdsRegra_ItensID_CSTICMS.AsInteger,([Locaseinsensitive])) then
    begin
      if fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString = '0' then
      begin
        if (fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'S') then
        begin
          if (copy(fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString,1,1) <> '2') and (copy(fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString,1,1) <> '5') and
             (copy(fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString,1,1) <> '9') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para cálculo da substituição tributária!';
        end
        else
        if (fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G') then
        begin
          if (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString <> '10') and (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString <> '30') and
             (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString <> '60') and (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString <> '70') and
             (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString <> '90') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para cálculo da substituição tributária!';
        end
      end
      else
      begin
        if (fDMCadRegra.cdsRegra_ItensCALCULAR_ST.AsString = 'N') then
        begin
          if (copy(fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString,1,1) = '2') or (copy(fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString,1,1) = '5') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para opção de não calcular a substituição tributária!';
        end
        else
        if (fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G') then
        begin
          if (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString = '10') or (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString = '30') or
             (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString = '60') or (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString = '70') or
             (fDMCadRegra.cdsTab_CSTICMSCOD_CST.AsString = '90') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para opção de não calcular a substituição tributária!';
        end;
      end;
    end;
  end;

  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadRegra_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    btnCancelarClick(Sender)
  else
  if (Key = Vk_F7) then
    btnConfirmarClick(Sender);
end;

procedure TfrmCadRegra_Itens.RxDBLookupCombo7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo7.Text <> '' then
      viD_EnqIPI_Pos := RxDBLookupCombo7.KeyValue;
    frmSel_EnqIPI := TfrmSel_EnqIPI.Create(Self);
    frmSel_EnqIPI.ShowModal;
    if viD_EnqIPI_Pos > 0 then
      RxDBLookupCombo7.KeyValue := viD_EnqIPI_Pos
    else
      RxDBLookupCombo7.ClearValue;
  end;
end;

procedure TfrmCadRegra_Itens.gbxImpostosExit(Sender: TObject);
begin
  if fDMCadRegra.cdsRegra_Itens.State in [dsEdit,dsInsert] then
    fDMCadRegra.cdsRegra_ItensNOME.AsString := fnc_Monta_Nome;
end;

function TfrmCadRegra_Itens.fnc_Monta_Nome: String;
begin
  Result := '';
  if fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString = 'G' then
    Result := 'Geral'
  else
    Result := 'Simples';
  if fDMCadRegra.cdsRegra_ItensTIPO_CLIENTE.AsString = 'G' then
    Result := Result + '/Geral'
  else
    Result := Result + '/Simples';
  if fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString = 'J' then
    Result := Result + '/Jurídica'
  else
  if fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString = 'F' then
    Result := Result + '/Física';
  if not fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.IsNull then
  begin
    if fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString = '0' then
      Result := Result + '/Cons.Normal'
    else
    if fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString = '1' then
      Result := Result + '/Cons.Final';
  end;
end;

procedure TfrmCadRegra_Itens.btnConfirmarClick(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar : Boolean;
begin
  vGravacao_Ok := False;

  fDMCadRegra.cdsRegra_ItensCOD_ICMS.AsString := RxDBLookupCombo4.Text;
  fDMCadRegra.cdsRegra_ItensCOD_IPI.AsString  := RxDBLookupCombo5.Text;
  if fnc_Erro then
    exit;

  if fDMCadRegra.cdsRegra_Itens.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;

  try
    fDMCadRegra.cdsRegra_Itens.Post;
    vGravacao_Ok := True;
  except
    on E: exception do
    begin
      vGravacao_Ok := False;
      vFlagErro    := True;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      fDMCadRegra.prc_Inserir_Itens;
    end;
  end;
end;

procedure TfrmCadRegra_Itens.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadRegra_Itens.RxDBComboBox9Exit(Sender: TObject);
begin
  if (fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString = '1') or (fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString = 'F') then
    fDMCadRegra.cdsRegra_ItensCALCULAR_ST.AsString := 'N';
end;

procedure TfrmCadRegra_Itens.RxDBComboBox5Exit(Sender: TObject);
begin
  if fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString <> vPessoa_Cliente_Ant then
  begin
    if (fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString = '1') or (fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString = 'F') then
      fDMCadRegra.cdsRegra_ItensCALCULAR_ST.AsString := 'N';
    if fDMCadRegra.cdsRegra_ItensPESSOA_CLIENTE.AsString = 'F' then
      fDMCadRegra.cdsRegra_ItensTIPO_CONSUMIDOR.AsString := '1';
  end;
end;

procedure TfrmCadRegra_Itens.RxDBComboBox1Exit(Sender: TObject);
begin
  fDMCadRegra.prc_abrir_csticms(fDMCadRegra.cdsRegra_ItensTIPO_EMPRESA.AsString);
end;

end.
