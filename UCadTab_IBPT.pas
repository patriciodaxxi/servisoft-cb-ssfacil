unit UCadTab_IBPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadTab_IBPT, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, ToolEdit, ComCtrls, RXDBCtrl;

type
  TfrmCadTab_IBPT = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Label38: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    UCControls1: TUCControls;
    Panel3: TPanel;
    btnAtualizar: TNxButton;
    FilenameEdit1: TFilenameEdit;
    Label9: TLabel;
    Label10: TLabel;
    ProgressBar1: TProgressBar;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label14: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAtualizarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMCadTab_IBPT: TDMCadTab_IBPT;
    txt: TextFile;
    vContador: Integer;
    vTabVazia: Boolean;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Gravar_Tab_IBPT;
  public
    { Public declarations }
  end;

var
  frmCadTab_IBPT: TfrmCadTab_IBPT;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadTab_IBPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTab_IBPT.btnExcluirClick(Sender: TObject);
begin
  if fDMCadTab_IBPT.cdsIBPT.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTab_IBPT.prc_Excluir_Registro;
begin
  fDMCadTab_IBPT.prc_Excluir;
end;

procedure TfrmCadTab_IBPT.prc_Gravar_Registro;
begin
  fDMCadTab_IBPT.prc_Gravar;
  if fDMCadTab_IBPT.cdsIBPT.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTab_IBPT.vMsgIBPT, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTab_IBPT.prc_Inserir_Registro;
begin
  fDMCadTab_IBPT.prc_Inserir;

  if fDMCadTab_IBPT.cdsIBPT.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadTab_IBPT.FormShow(Sender: TObject);
begin
  fDMCadTab_IBPT := TDMCadTab_IBPT.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTab_IBPT);
end;

procedure TfrmCadTab_IBPT.prc_Consultar;
begin
  fDMCadTab_IBPT.cdsIBPT.Close;
  fDMCadTab_IBPT.sdsIBPT.CommandText := fDMCadTab_IBPT.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit1.Text) <> '' then
    fDMCadTab_IBPT.sdsIBPT.CommandText := fDMCadTab_IBPT.sdsIBPT.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if Trim(Edit4.Text) <> '' then
    fDMCadTab_IBPT.sdsIBPT.CommandText := fDMCadTab_IBPT.sdsIBPT.CommandText + ' AND CODIGO LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadTab_IBPT.cdsIBPT.Open;
end;

procedure TfrmCadTab_IBPT.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTab_IBPT.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTab_IBPT.cdsIBPT.State in [dsBrowse]) or not(fDMCadTab_IBPT.cdsIBPT.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTab_IBPT.cdsIBPT.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadTab_IBPT.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTab_IBPT.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTab_IBPT.cdsIBPT.IsEmpty) or not(fDMCadTab_IBPT.cdsIBPT.Active) or (fDMCadTab_IBPT.cdsIBPTID.AsInteger < 1) then
    exit;

  fDMCadTab_IBPT.cdsIBPT.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadTab_IBPT.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTab_IBPT.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTab_IBPT);
end;

procedure TfrmCadTab_IBPT.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTab_IBPT.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTab_IBPT.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadTab_IBPT.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadTab_IBPT.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadTab_IBPT.cdsIBPT.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      DMCadTab_IBPT.cdsIBPT.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadTab_IBPT.btnAtualizarClick(Sender: TObject);
var
  vContAux: Integer;
  aList: TStringList;
  vEnd_Arq: String;
  vAux: String;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Arquivo não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  vEnd_Arq := fnc_verifica_Arquivo(FileNameEdit1.FileName,'L');
  fDMCadTab_IBPT.qFilial.Close;
  fDMCadTab_IBPT.qFilial.Open;
  vAux :=  ExtractFileName(vEnd_Arq);
  vAux := UpperCase(copy(vAux,13,2));
  fDMCadTab_IBPT.qVerificaFilial.Close;
  fDMCadTab_IBPT.qVerificaFilial.ParamByName('UF').AsString := vAux;
  fDMCadTab_IBPT.qVerificaFilial.Open;
  if (fDMCadTab_IBPT.qVerificaFilialQTDE_FIL.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe filial com a UF informada!', mtInformation, [mbOk], 0);
    exit;
  end;

{  Tirado no dia 17/07/2017 para fazer controle direto com a UF
  if vAux <> fDMCadTab_IBPT.qFilialUF.AsString then
  begin
    MessageDlg('*** Arquivo não pertence a UF da empresa!', mtInformation, [mbOk], 0);
    exit;
  end;}

  Label10.Visible := True;
  Label10.Refresh;
  Refresh;
  SMDBGrid1.DataSource := nil;
  fDMCadTab_IBPT.qIBPT_Contador.Close;
  fDMCadTab_IBPT.qIBPT_Contador.Open;
  vTabVazia := (fDMCadTab_IBPT.qIBPT_ContadorCONTADOR.AsInteger <= 0);
  if vTabVazia then
    fDMCadTab_IBPT.prc_Localizar(0,'','');
  fDMCadTab_IBPT.qIBPT_Contador.Close;

  vContador := 0;
  vContAux  := 0;

  AssignFile(txt,vEnd_Arq);
  aList := TStringList.Create;
  aList.LoadFromFile(vEnd_Arq);
  ProgressBar1.Max      := aList.Count;
  ProgressBar1.Position := 0;

  vContador := 0;
  Reset(txt);
  while not Eof(txt) do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    ProgressBar1.Refresh;
    Refresh;
    vContAux  := vContAux + 1;
    vContador := vContador + 1;
    ReadLn(txt,vRegistro_CSV);
    if copy(vRegistro_CSV,1,6) <> 'codigo' then
      prc_Gravar_Tab_IBPT;
  end;
  if vContador > 0 then
    fDMCadTab_IBPT.cdsIBPT.ApplyUpdates(0);
  CloseFile(txt);
  FreeAndNil(aList);
  MessageDlg('Atualização concluída, Registros atualizados: ' + IntToStr(vContAux)  , mtInformation, [mbOk], 0);
  Label10.Visible := False;
  FilenameEdit1.Clear;
  SMDBGrid1.DataSource := fDMCadTab_IBPT.dsIBPT;
end;

procedure TfrmCadTab_IBPT.prc_Gravar_Tab_IBPT;
var
  vCodigo: String;
  vValor: String;
  vFlag: Boolean;
  vEx, vTabela, vNome: String;
  vEdit: Boolean;
  vAux: String;

begin
  vCodigo := fnc_Montar_Campo;
  vCodigo := Monta_Numero(vCodigo,0);
  if trim(vCodigo) = '' then
    exit;

  try
    vEx     := fnc_Montar_Campo;
    vTabela := fnc_Montar_Campo;
    vNome   := fnc_Montar_Campo;
    vEdit   := False;
    if not vTabVazia then
    begin
      fDMCadTab_IBPT.prc_Localizar(0,vCodigo,vEx);
      if not fDMCadTab_IBPT.cdsIBPT.IsEmpty then
        vEdit := True;
    end;
    if vEdit then
      fDMCadTab_IBPT.cdsIBPT.Edit
    else
    begin
      fDMCadTab_IBPT.prc_Inserir;
      fDMCadTab_IBPT.cdsIBPTCODIGO.AsString          := vCodigo;
      fDMCadTab_IBPT.cdsIBPTEX.AsString              := vEx;
      fDMCadTab_IBPT.cdsIBPTTABELA.AsString          := vTabela;
      fDMCadTab_IBPT.cdsIBPTNOME.AsString            := vNome;
    end;
    vValor := fnc_Montar_Campo; //Percentual Nacional
    vValor := Replace(vValor,'.',',');
    fDMCadTab_IBPT.cdsIBPTPERC_NACIONAL.AsString := vValor;
    
    vValor := fnc_Montar_Campo; //Percentual Importação
    vValor := Replace(vValor,'.',',');
    fDMCadTab_IBPT.cdsIBPTPERC_IMPORTACAO.AsString := vValor;
    
    vValor := fnc_Montar_Campo; //Percentual Estadual
    vValor := Replace(vValor,'.',',');
    fDMCadTab_IBPT.cdsIBPTPERC_ESTADUAL.AsString := vValor;

    vValor := fnc_Montar_Campo; //Percentual Municipal
    vValor := Replace(vValor,'.',',');
    fDMCadTab_IBPT.cdsIBPTPERC_MUNICIPAL.AsString := vValor;

    vAux := fnc_Montar_Campo;
    fDMCadTab_IBPT.cdsIBPTDT_INICIO.AsString := vAux;

    vAux := fnc_Montar_Campo;
    fDMCadTab_IBPT.cdsIBPTDT_FINAL.AsString := vAux;

    fDMCadTab_IBPT.cdsIBPTCHAVE.AsString  := fnc_Montar_Campo;
    fDMCadTab_IBPT.cdsIBPTVERSAO.AsString := fnc_Montar_Campo;
    fDMCadTab_IBPT.cdsIBPTFONTE.AsString  := fnc_Montar_Campo;

    fDMCadTab_IBPT.cdsIBPT.Post;
    if not(vTabVazia) or (vContador >= 100) then
    begin
      fDMCadTab_IBPT.cdsIBPT.ApplyUpdates(0);
      vContador := 0;
    end;

  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + #13 + e.Message + #13 + ' NCM/NBS = ' + vCodigo);
  end;
end;

procedure TfrmCadTab_IBPT.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadTab_IBPT.cdsIBPTDT_FINAL.IsNull) then
  begin
    if fDMCadTab_IBPT.cdsIBPTDT_FINAL.AsDateTime < Date then
      AFont.Color := clRed;
  end;
end;

end.
