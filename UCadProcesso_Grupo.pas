unit UCadProcesso_Grupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProcesso_Grupo,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection,
  ImgList, Menus;

type
  TfrmCadProcesso_Grupo = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    SMDBGrid2: TSMDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    btnInserir_Itens: TBitBtn;
    btnExcluir_Itens: TBitBtn;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    UCControls1: TUCControls;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    PopupProcessos: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
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
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadProcesso_Grupo: TDMCadProcesso_Grupo;
    vItemGrupo: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Monta_Ordem;

  public
    { Public declarations }

  end;

var
  frmCadProcesso_Grupo: TfrmCadProcesso_Grupo;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu, UCadProcesso;

{$R *.dfm}

procedure TfrmCadProcesso_Grupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProcesso_Grupo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadProcesso_Grupo.prc_Excluir_Registro;
begin
  fDMCadProcesso_Grupo.prc_Excluir;
end;

procedure TfrmCadProcesso_Grupo.prc_Gravar_Registro;
begin
  fDMCadProcesso_Grupo.prc_Gravar;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadProcesso_Grupo.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProcesso_Grupo.prc_Inserir_Registro;
begin
  fDMCadProcesso_Grupo.prc_Inserir;

  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadProcesso_Grupo.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadProcesso_Grupo := TDMCadProcesso_Grupo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProcesso_Grupo);
  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'clNome_Servico_OS') then
      SMDBGrid2.Columns[i].Visible := (fDMCadProcesso_Grupo.qParametros_SerUSA_PROCESSO_OS.AsString = 'S');
    if (SMDBGrid2.Columns[i].FieldName = 'clTipo_Processo') or (SMDBGrid2.Columns[i].FieldName = 'clEncerado') then
      SMDBGrid2.Columns[i].Visible := (fDMCadProcesso_Grupo.qParametros_SerUSA_PROCESSO_OS.AsString <> 'S');
  end;
end;

procedure TfrmCadProcesso_Grupo.prc_Consultar;
begin
  fDMCadProcesso_Grupo.cdsProcesso_Grupo.Close;
  fDMCadProcesso_Grupo.sdsProcesso_Grupo.CommandText := fDMCadProcesso_Grupo.ctCommand;
  if Trim(edtNome.Text) <> '' then
    fDMCadProcesso_Grupo.sdsProcesso_Grupo.CommandText := fDMCadProcesso_Grupo.sdsProcesso_Grupo.CommandText
                                    + ' WHERE NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadProcesso_Grupo.cdsProcesso_Grupo.Open;
end;

procedure TfrmCadProcesso_Grupo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProcesso_Grupo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsBrowse]) or not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProcesso_Grupo.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProcesso_Grupo.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProcesso_Grupo.cdsProcesso_Grupo.IsEmpty) or not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.Active) or (fDMCadProcesso_Grupo.cdsProcesso_GrupoID.AsInteger < 1) then
    exit;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadProcesso_Grupo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadProcesso_Grupo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProcesso_Grupo);
end;

procedure TfrmCadProcesso_Grupo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProcesso_Grupo.btnInserir_ItensClick(Sender: TObject);
var
  vItemAux : Integer;
  vOrdemAux : Integer;
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Processo não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Locate('ID_PROCESSO',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]) then
  begin
    MessageDlg('*** Processo já informado!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.IndexFieldNames := 'ID;ITEM';
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Last;
  vItemAux := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensITEM.AsInteger;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.IndexFieldNames := 'ID;ORDEM;ITEM';
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Last;
  vOrdemAux := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Insert;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensID.AsInteger          := fDMCadProcesso_Grupo.cdsProcesso_GrupoID.AsInteger;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensITEM.AsInteger        := vItemAux + 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger       := vOrdemAux + 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensID_PROCESSO.AsInteger := RxDBLookupCombo1.KeyValue;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProcesso_Grupo.btnExcluir_ItensClick(Sender: TObject);
begin
  if (fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.IsEmpty) or (fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Delete;

  prc_Monta_Ordem;
end;

procedure TfrmCadProcesso_Grupo.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProcesso_Grupo.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadProcesso_Grupo.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadProcesso_Grupo.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
end;

procedure TfrmCadProcesso_Grupo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadProcesso_Grupo.SpeedButton13Click(Sender: TObject);
begin
  frmCadProcesso := TfrmCadProcesso.Create(self);
  frmCadProcesso.ShowModal;
  FreeAndNil(frmCadProcesso);
  fDMCadProcesso_Grupo.cdsProcesso.Close;
  fDMCadProcesso_Grupo.cdsProcesso.Open;
end;

procedure TfrmCadProcesso_Grupo.SpeedButton14Click(Sender: TObject);
begin
  fDMCadProcesso_Grupo.cdsProcesso.Close;
  fDMCadProcesso_Grupo.cdsProcesso.Open;
end;

procedure TfrmCadProcesso_Grupo.N1Click(Sender: TObject);
var
 Reg: TBookMark;
 vAux : Integer;
begin
  if not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit,dsInsert]) then
  begin
    MessageDlg('*** Grupo não esta em modo de alteração ou inclusão !', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger <= 1 then
    exit;

  LockWindowUpDate(SMDBGrid2.Handle);
  Reg := fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GetBookMark;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Prior;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger + 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GotoBookmark(Reg);

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger - 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.FreeBookmark(Reg);
  LockWindowUpDate(0);    
end;

procedure TfrmCadProcesso_Grupo.N2Click(Sender: TObject);
var
 Reg: TBookMark;
begin
  if not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit,dsInsert]) then
  begin
    MessageDlg('*** Grupo não esta em modo de alteração ou inclusão !', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger = fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.RecordCount then
    exit;

  LockWindowUpDate(SMDBGrid2.Handle);
  Reg := fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GetBookMark;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Next;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger - 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GotoBookmark(Reg);

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger + 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.FreeBookmark(Reg);
  LockWindowUpDate(0);
end;

procedure TfrmCadProcesso_Grupo.prc_Monta_Ordem;
var
  vItemAux : Integer;
  vOrdem : Integer;
begin
  vItemAux := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensITEM.AsInteger;
  vOrdem   := 0;
  SMDBGrid2.DisableScroll;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.First;
  while not fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Eof do
  begin
    vOrdem := vOrdem + 1;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := vOrdem;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Next;
  end;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Locate('ITEM',vItemAux,[loCaseInsensitive]);
  SMDBGrid2.EnableScroll;
end;

end.
