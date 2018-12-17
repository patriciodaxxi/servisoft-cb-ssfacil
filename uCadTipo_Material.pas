unit uCadTipo_Material;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxLookup, db,
  Grids, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDMCadTipo_Material, RxDBComb, RzPanel, ToolEdit, RXDBCtrl, NxCollection, Mask;

type
  TfrmCadTipo_Material = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    StaticText1: TStaticText;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    UCControls1: TUCControls;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadTipo_Material: TDMCadTipo_Material;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_Reg;
  public
    { Public declarations }    
  end;
var
  frmCadTipo_Material: TfrmCadTipo_Material;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadTipo_Material.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTipo_Material.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTipo_Material);
end;

procedure TfrmCadTipo_Material.FormShow(Sender: TObject);
begin
  fDMCadTipo_Material := TDMCadTipo_Material.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTipo_Material);
end;

procedure TfrmCadTipo_Material.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTipo_Material.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadTipo_Material.cdsConsulta.Active) or (fDMCadTipo_Material.cdsConsulta.IsEmpty) or
        (fDMCadTipo_Material.cdsConsultaID.AsInteger <= 0) then
    exit;

   prc_Posiciona_Reg;

  if fDMCadTipo_Material.cdsTipo_Material.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadTipo_Material.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTipo_Material.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTipo_Material.cdsTipo_Material.IsEmpty) or not(fDMCadTipo_Material.cdsTipo_Material.Active) or (fDMCadTipo_Material.cdsTipo_MaterialID.AsInteger < 1) then
    exit;
  fDMCadTipo_Material.cdsTipo_Material.Edit;
  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadTipo_Material.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTipo_Material.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTipo_Material.cdsTipo_Material.State in [dsBrowse]) or not(fDMCadTipo_Material.cdsTipo_Material.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTipo_Material.cdsTipo_Material.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;
  pnlCadastro.Enabled       := False;
end;

procedure TfrmCadTipo_Material.prc_Consultar;
begin
  fDMCadTipo_Material.cdsConsulta.Close;
  fDMCadTipo_Material.sdsConsulta.CommandText := fDMCadTipo_Material.ctConsulta + ' WHERE 1 = 1';
  if Trim(Edit4.Text) <> '' then
    fDMCadTipo_Material.sdsConsulta.CommandText := fDMCadTipo_Material.sdsConsulta.CommandText +
                                          ' AND (NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%') + ')';
  fDMCadTipo_Material.cdsConsulta.Open;
end;

procedure TfrmCadTipo_Material.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadTipo_Material.cdsConsultaID.AsInteger;
    fDMCadTipo_Material.prc_Excluir;
    prc_Consultar;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadTipo_Material.cdsConsulta.Locate('ID',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadTipo_Material.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadTipo_Material.cdsTipo_MaterialID.AsInteger;
  fDMCadTipo_Material.prc_Gravar;
  if fDMCadTipo_Material.cdsTipo_Material.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTipo_Material.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;
  pnlCadastro.Enabled       := False;

  prc_Consultar;
  fDMCadTipo_Material.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadTipo_Material.prc_Inserir_Registro;
begin
  fDMCadTipo_Material.prc_Inserir;

  if fDMCadTipo_Material.cdsTipo_Material.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

  DBEdit7.SetFocus;
end;

procedure TfrmCadTipo_Material.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTipo_Material.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadTipo_Material.cdsTipo_Material);
end;

procedure TfrmCadTipo_Material.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTipo_Material.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadTipo_Material.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadTipo_Material.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    Edit4.Clear;
end;

procedure TfrmCadTipo_Material.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadTipo_Material.cdsTipo_Material.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Reg;
  end;
end;

procedure TfrmCadTipo_Material.prc_Posiciona_Reg;
begin
  fDMCadTipo_Material.prc_Localizar(fDMCadTipo_Material.cdsConsultaID.AsInteger);
end;

end.
