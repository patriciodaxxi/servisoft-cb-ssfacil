unit UCadAtividade_Cid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadAtividade_Cid,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCadUF, UCBase, RxLookup, Mask, jpeg, NxCollection, ComCtrls,
  RXDBCtrl;

type
  TfrmCadAtividade_Cid = class(TForm)
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
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    pnlAtualiza: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    FilenameEdit1: TFilenameEdit;
    ProgressBar1: TProgressBar;
    btnAtualizar: TNxButton;
    btnGerar_Atualizacao: TNxButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label11: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
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
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnGerar_AtualizacaoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadAtividade_Cid: TDMCadAtividade_Cid;
    ffrmCadUF: TfrmCadUF;
    txt: TextFile;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Gravar_Tab;

  public
    { Public declarations }

  end;

var
  frmCadAtividade_Cid: TfrmCadAtividade_Cid;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmCadAtividade_Cid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadAtividade_Cid.btnExcluirClick(Sender: TObject);
begin
  if fDMCadAtividade_Cid.cdsAtividade_Cid.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadAtividade_Cid.prc_Excluir_Registro;
begin
  fDMCadAtividade_Cid.prc_Excluir;
end;

procedure TfrmCadAtividade_Cid.prc_Gravar_Registro;
begin
  fDMCadAtividade_Cid.prc_Gravar;
  if fDMCadAtividade_Cid.cdsAtividade_Cid.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadAtividade_Cid.vMsgAtividade_Cid, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  btnAtualizar.Enabled      := not(btnAtualizar.Enabled);
  FilenameEdit1.Enabled     := not(FilenameEdit1.Enabled);
end;

procedure TfrmCadAtividade_Cid.prc_Inserir_Registro;
begin
  fDMCadAtividade_Cid.prc_Inserir;

  if fDMCadAtividade_Cid.cdsAtividade_Cid.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  btnAtualizar.Enabled   := True;
  FilenameEdit1.Enabled  := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadAtividade_Cid.FormShow(Sender: TObject);
begin
  fDMCadAtividade_Cid := TDMCadAtividade_Cid.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadAtividade_Cid);
end;

procedure TfrmCadAtividade_Cid.prc_Consultar;
begin
  fDMCadAtividade_Cid.cdsAtividade_Cid.Close;
  fDMCadAtividade_Cid.sdsAtividade_Cid.CommandText := fDMCadAtividade_Cid.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadAtividade_Cid.sdsAtividade_Cid.CommandText := fDMCadAtividade_Cid.sdsAtividade_Cid.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  if Trim(Edit3.Text) <> '' then
    fDMCadAtividade_Cid.sdsAtividade_Cid.CommandText := fDMCadAtividade_Cid.sdsAtividade_Cid.CommandText
                                    + ' AND CODIGO = ' + QuotedStr(Edit3.Text);
  fDMCadAtividade_Cid.cdsAtividade_Cid.Open;
end;

procedure TfrmCadAtividade_Cid.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadAtividade_Cid.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadAtividade_Cid.cdsAtividade_Cid.State in [dsBrowse]) or not(fDMCadAtividade_Cid.cdsAtividade_Cid.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadAtividade_Cid.cdsAtividade_Cid.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  btnAtualizar.Enabled      := not(btnAtualizar.Enabled);
  FilenameEdit1.Enabled     := not(FilenameEdit1.Enabled);
end;

procedure TfrmCadAtividade_Cid.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadAtividade_Cid.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadAtividade_Cid.cdsAtividade_Cid.IsEmpty) or not(fDMCadAtividade_Cid.cdsAtividade_Cid.Active) or (fDMCadAtividade_Cid.cdsAtividade_CidID.AsInteger < 1) then
    exit;

  fDMCadAtividade_Cid.cdsAtividade_Cid.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  btnAtualizar.Enabled   := True;
  FilenameEdit1.Enabled  := True;
end;

procedure TfrmCadAtividade_Cid.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadAtividade_Cid.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadAtividade_Cid);
end;

procedure TfrmCadAtividade_Cid.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadAtividade_Cid.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadAtividade_Cid.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadAtividade_Cid.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadAtividade_Cid.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
  Edit3.Clear;
end;

procedure TfrmCadAtividade_Cid.prc_Gravar_Tab;
var
  vCodigo: String;
  vValor: String;
  vFlag: Boolean;
  vEx, vTabela, vNome: String;
  vEdit: Boolean;
  vAux: String;
  vCod_Servico: String;
  vTexto: String;
  vPerc_Issqn: Real;
  vDtInicio, vDtFinal: TDate;
begin
  vCodigo      := fnc_Montar_Campo;
  vCodigo      := Monta_Numero(vCodigo,0);
  vNome        := fnc_Montar_Campo;
  vCod_Servico := fnc_Montar_Campo;
  vTexto       := fnc_Montar_Campo;
  if PosEx('UF',vTexto) > 0 then
    vPerc_Issqn := 0
  else
  begin
    try
      vPerc_Issqn  := StrToFloat(vTexto);
      if vPerc_Issqn > 0 then
        vPerc_Issqn := StrToFloat(FormatFloat('0.00',vPerc_Issqn * 100));
    except
      vPerc_Issqn := 0;
    end;
  end;

  vDtInicio := 0;
  vDtFinal  := 0;
  vTexto    := fnc_Montar_Campo;
  try
    if trim(vTexto) <> '' then
      vDtInicio := EncodeDate(StrToInt(copy(vTexto,1,4)),StrToInt(copy(vTexto,6,2)),StrToInt(copy(vTexto,9,2)));
  except
  end;
  vTexto    := fnc_Montar_Campo;
  try
    if trim(vTexto) <> '' then
      vDtFinal := EncodeDate(StrToInt(copy(vTexto,1,4)),StrToInt(copy(vTexto,6,2)),StrToInt(copy(vTexto,9,2)));
  except
  end;

  if trim(vCodigo) = '' then
    exit;

  try
    vEdit   := False;
    fDMCadAtividade_Cid.prc_Localizar(0,vCodigo);
    if not fDMCadAtividade_Cid.cdsAtividade_Cid.IsEmpty then
      vEdit := True;

    if vEdit then
      fDMCadAtividade_Cid.cdsAtividade_Cid.Edit
    else
    begin
      fDMCadAtividade_Cid.prc_Inserir;
      fDMCadAtividade_Cid.cdsAtividade_CidCODIGO.AsString := vCodigo;
    end;
    fDMCadAtividade_Cid.cdsAtividade_CidNOME.AsString        := vNome;
    fDMCadAtividade_Cid.cdsAtividade_CidCOD_SERVICO.AsString := vCod_Servico;
    fDMCadAtividade_Cid.qServico.Close;
    fDMCadAtividade_Cid.qServico.ParamByName('CODIGO').AsString := vCod_Servico;
    fDMCadAtividade_Cid.qServico.Open;
    if not fDMCadAtividade_Cid.qServico.IsEmpty then
      fDMCadAtividade_Cid.cdsAtividade_CidID_SERVICO_PADRAO.AsInteger := fDMCadAtividade_Cid.qServicoID.AsInteger;
    fDMCadAtividade_Cid.cdsAtividade_CidPERC_ISSQN.AsFloat := vPerc_Issqn;
    //if trim(vDtInicio) <> '' then
    if vDtInicio > 10 then
      //fDMCadAtividade_Cid.cdsAtividade_CidDT_INICIO_VIGENCIA.AsDateTime := StrToDate(vDtInicio);
      fDMCadAtividade_Cid.cdsAtividade_CidDT_INICIO_VIGENCIA.AsDateTime := vDtInicio;
    //if trim(vDtFinal) <> '' then
    if vDtFinal > 10 then
      //fDMCadAtividade_Cid.cdsAtividade_CidDT_FINAL_VIGENCIA.AsDateTime := StrToDate(vDtFinal);
      fDMCadAtividade_Cid.cdsAtividade_CidDT_FINAL_VIGENCIA.AsDateTime := vDtFinal;

    //vValor := fnc_Montar_Campo; //Percentual Municipal
    //vValor := Replace(vValor,'.',',');
    //fDMCadTab_IBPT.cdsIBPTPERC_MUNICIPAL.AsString := vValor;

    fDMCadAtividade_Cid.cdsAtividade_Cid.Post;
    fDMCadAtividade_Cid.cdsAtividade_Cid.ApplyUpdates(0);

  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + #13 + e.Message + #13 + ' Código ' + vCodigo);
  end;
end;

procedure TfrmCadAtividade_Cid.btnGerar_AtualizacaoClick(Sender: TObject);
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
  
  Label10.Visible := True;
  Label10.Refresh;
  Refresh;
  SMDBGrid1.DataSource := nil;

  AssignFile(txt,vEnd_Arq);
  aList := TStringList.Create;
  aList.LoadFromFile(vEnd_Arq);
  ProgressBar1.Max      := aList.Count;
  ProgressBar1.Position := 0;

  Reset(txt);
  while not Eof(txt) do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vContAux  := vContAux + 1;
    ReadLn(txt,vRegistro_CSV);
    if copy(vRegistro_CSV,1,6) <> 'CODIGO' then
      prc_Gravar_Tab;
  end;
  
  CloseFile(txt);
  FreeAndNil(aList);
  MessageDlg('Atualização concluída, Registros atualizados: ' + IntToStr(vContAux)  , mtInformation, [mbOk], 0);
  Label10.Visible := False;
  FilenameEdit1.Clear;
  SMDBGrid1.DataSource := fDMCadAtividade_Cid.dsAtividade_Cid;
end;

procedure TfrmCadAtividade_Cid.btnAtualizarClick(Sender: TObject);
begin
  pnlAtualiza.Visible := not(pnlAtualiza.Visible);
end;

end.
