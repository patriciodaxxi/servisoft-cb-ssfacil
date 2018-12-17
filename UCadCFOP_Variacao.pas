unit UCadCFOP_Variacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadCFOP, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, RzPanel, NxCollection;

type
  TfrmCadCFOP_Variacao = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    gbxImpostos: TRzGroupBox;
    Label3: TLabel;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox5: TRxDBComboBox;
    RxDBComboBox8: TRxDBComboBox;
    RxDBComboBox9: TRxDBComboBox;
    RzGroupBox1: TRzGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RzGroupBox4: TRzGroupBox;
    Label14: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    Label6: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label8: TLabel;
    RzGroupBox3: TRzGroupBox;
    Label7: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    RxDBComboBox4: TRxDBComboBox;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBCheckBox6: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label33: TLabel;
    Label32: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBComboBox6: TRxDBComboBox;
    RxDBComboBox7: TRxDBComboBox;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
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
    fDMCadCFOP: TDMCadCFOP;

  end;

var
  frmCadCFOP_Variacao: TfrmCadCFOP_Variacao;

implementation

uses rsDBUtils, uUtilPadrao, USel_EnqIPI;

{$R *.dfm}

procedure TfrmCadCFOP_Variacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadCFOP.cdsCFOP_Variacao.State in [dsEdit,dsInsert] then
    fDMCadCFOP.cdsCFOP_Variacao.Cancel;
  Action := Cafree;
end;

procedure TfrmCadCFOP_Variacao.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadCFOP);
  Label14.Visible          := (fDMCadCFOP.qParametrosUSA_SPED.AsString = 'S');
  RxDBLookupCombo6.Visible := (fDMCadCFOP.qParametrosUSA_SPED.AsString = 'S');
  Label13.Visible          := ((fDMCadCFOP.cdsCFOPGERAR_TRIBUTO.AsString = 'S') and (fDMCadCFOP.qParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P'));
  DBEdit2.Visible          := ((fDMCadCFOP.cdsCFOPGERAR_TRIBUTO.AsString = 'S') and (fDMCadCFOP.qParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P'));
  Label16.Visible          := (fDMCadCFOP.qParametros_GeralUSA_TIPO_CONTR_VARIACAO.AsString = 'S');
  RxDBComboBox8.Visible    := (fDMCadCFOP.qParametros_GeralUSA_TIPO_CONTR_VARIACAO.AsString = 'S');
  DBCheckBox6.Visible      := (fDMCadCFOP.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S');
  if fDMCadCFOP.cdsCFOP_Variacao.State in [dsEdit,dsInsert] then
    fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString := fDMCadCFOP.cdsCFOPSUBSTITUICAO_TRIB.AsString;
  if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G') or (fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'S') then
    fDMCadCFOP.prc_abrir_csticms(fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString)
  else
    fDMCadCFOP.prc_abrir_csticms('');
end;

function TfrmCadCFOP_Variacao.fnc_Erro: Boolean;
var
  vMsgErro : String;
begin
  Result := True;
  vMsgErro := '';
  if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString <> 'G') and (fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Tipo da empresa não informado!';
  if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString <> 'G') and (fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString <> 'S') then
    vMsgErro := vMsgErro + #13 + '*** Tipo do cliente não informado!';
  if (fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString <> 'J') and (fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString <> 'F') then
    vMsgErro := vMsgErro + #13 + '*** Cliente (Jurídica/Física) não informado!';
  if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger <> 0) and (fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger <> 1) then
    vMsgErro := vMsgErro + #13 + '*** Tipo do consumidor não informado!'
  else
  if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.IsNull) then
    vMsgErro := vMsgErro + #13 + '*** Tipo do consumidor não informado!';
  if fDMCadCFOP.cdsCFOP_VariacaoID_CSTICMS.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** CST ICMS não informado!';
  //if fDMCadCFOP.cdsCFOP_VariacaoID_CSTIPI.AsInteger <= 0 then
  //  vMsgErro := vMsgErro + #13 + '*** CST IPI não informado!';
  if (fDMCadCFOP.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S') then
  begin
    if fDMCadCFOP.cdsTab_CSTICMS.Locate('ID',fDMCadCFOP.cdsCFOP_VariacaoID_CSTICMS.AsInteger,([Locaseinsensitive])) then
    begin
      if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 0 then
      begin
        if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'S') then
        begin
          if (copy(fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString,1,1) <> '2') and (copy(fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString,1,1) <> '5') and
             (copy(fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString,1,1) <> '9') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para cálculo da substituição tributária!';
        end
        else
        if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G') then
        begin
          if (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString <> '10') and (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString <> '30') and
             (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString <> '60') and (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString <> '70') and
             (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString <> '90') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para cálculo da substituição tributária!';
        end
      end
      else
      begin
        if (fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString = 'N') then
        begin
          if (copy(fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString,1,1) = '2') or (copy(fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString,1,1) = '5') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para opção de não calcular a substituição tributária!';
        end
        else
        if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G') then
        begin
          if (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString = '10') or (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString = '30') or
             (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString = '60') or (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString = '70') or
             (fDMCadCFOP.cdsTab_CSTICMSCOD_CST.AsString = '90') then
            vMsgErro := vMsgErro + #13 + '*** CST ICMS incorreta para opção de não calcular a substituição tributária!';
        end;
      end;
    end;
  end;

  if fDMCadCFOP.mAuxItens.Locate('Tipo_Empresa;Tipo_Cliente;Pessoa_Cliente;Tipo_Consumidor',
     VarArrayOf([fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString,fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString,
                 fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString,fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger]),[locaseinsensitive]) then
  begin
    if fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger <> fDMCadCFOP.mAuxItensItem.AsInteger then
      vMsgErro := vMsgErro + #13 + '*** Regra já esta lançada no item ' + fDMCadCFOP.mAuxItensItem.AsString + '!';
  end;

  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadCFOP_Variacao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    btnCancelarClick(Sender)
  else
  if (Key = Vk_F7) then
    btnConfirmarClick(Sender);
end;

procedure TfrmCadCFOP_Variacao.SpeedButton6Click(Sender: TObject);
begin
  fDMCadCFOP.cdsOperacao_Nota.Close;
  fDMCadCFOP.cdsOperacao_Nota.Open;
end;

procedure TfrmCadCFOP_Variacao.RxDBLookupCombo7KeyDown(Sender: TObject;
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

procedure TfrmCadCFOP_Variacao.gbxImpostosExit(Sender: TObject);
begin
  if fDMCadCFOP.cdsCFOP_Variacao.State in [dsEdit,dsInsert] then
    fDMCadCFOP.cdsCFOP_VariacaoNOME.AsString := fnc_Monta_Nome;
end;

function TfrmCadCFOP_Variacao.fnc_Monta_Nome: String;
begin
  Result := '';
  if fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString = 'G' then
    Result := 'Geral'
  else
    Result := 'Simples';
  if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString = 'G' then
    Result := Result + '/Geral'
  else
    Result := Result + '/Simples';
  if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'J' then
    Result := Result + '/Jurídica'
  else
  if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'F' then
    Result := Result + '/Física';
  if not fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.IsNull then
  begin
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 0 then
      Result := Result + '/Cons.Normal'
    else
    if fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 1 then
      Result := Result + '/Cons.Final';
  end;
end;

procedure TfrmCadCFOP_Variacao.btnConfirmarClick(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar : Boolean;
begin
  vGravacao_Ok := False;

  fDMCadCFOP.cdsCFOP_VariacaoCOD_ICMS.AsString := RxDBLookupCombo4.Text;
  fDMCadCFOP.cdsCFOP_VariacaoCOD_IPI.AsString  := RxDBLookupCombo5.Text;
  if (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '1') or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '5') then
    fDMCadCFOP.cdsCFOP_VariacaoUF_CLIENTE.AsString := 'D'
  else
  if (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '2') or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '6') then
    fDMCadCFOP.cdsCFOP_VariacaoUF_CLIENTE.AsString := 'F'
  else
  if (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '3') or (copy(fDMCadCFOP.cdsCFOPCODCFOP.AsString,1,1) = '7') then
    fDMCadCFOP.cdsCFOP_VariacaoUF_CLIENTE.AsString := 'E';
  if fnc_Erro then
    exit;

  if fDMCadCFOP.cdsCFOP_Variacao.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;

  try
    fDMCadCFOP.cdsCFOP_Variacao.Post;
    
    if fDMCadCFOP.mAuxItens.Locate('ITEM',fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger,([Locaseinsensitive])) then
      fDMCadCFOP.mAuxItens.Edit
    else
    begin
      fDMCadCFOP.mAuxItens.Insert;
      fDMCadCFOP.mAuxItensItem.AsInteger          := fDMCadCFOP.cdsCFOP_VariacaoITEM.AsInteger;
    end;
    fDMCadCFOP.mAuxItensPessoa_Cliente.AsString   := fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString;
    fDMCadCFOP.mAuxItensTipo_Cliente.AsString     := fDMCadCFOP.cdsCFOP_VariacaoTIPO_CLIENTE.AsString;
    fDMCadCFOP.mAuxItensTipo_Empresa.AsString     := fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString;
    fDMCadCFOP.mAuxItensTipo_Consumidor.AsInteger := fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger;
    fDMCadCFOP.mAuxItens.Post;

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
      fDMCadCFOP.prc_Inserir_Itens;
      //RxDBLookupCombo3.SetFocus;
      RxDBComboBox1.SetFocus;
    end;
  end;
end;

procedure TfrmCadCFOP_Variacao.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadCFOP_Variacao.RxDBComboBox9Exit(Sender: TObject);
begin
  if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 1) or (fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'F') then
    fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString := 'N';
end;

procedure TfrmCadCFOP_Variacao.RxDBComboBox5Exit(Sender: TObject);
begin
  fDMCadCFOP.prc_abrir_csticms(fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString);
  if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString <> vPessoa_Cliente_Ant then
  begin
    if (fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger = 1) or (fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'F') then
      fDMCadCFOP.cdsCFOP_VariacaoCALCULAR_ST.AsString := 'N';
    if fDMCadCFOP.cdsCFOP_VariacaoPESSOA_CLIENTE.AsString = 'F' then
      fDMCadCFOP.cdsCFOP_VariacaoTIPO_CONSUMIDOR.AsInteger := 1;
  end;
end;

procedure TfrmCadCFOP_Variacao.RxDBComboBox1Exit(Sender: TObject);
begin
  fDMCadCFOP.prc_abrir_csticms(fDMCadCFOP.cdsCFOP_VariacaoTIPO_EMPRESA.AsString);
end;

end.
