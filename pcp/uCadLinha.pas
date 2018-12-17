unit uCadLinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxLookup, db,
  Grids, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadLinha, RxDBComb, RzPanel, ToolEdit, RXDBCtrl, NxCollection, Mask;

type
  TfrmCadLinha = class(TForm)
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
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    UCControls1: TUCControls;
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
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadLinha: TDMCadLinha;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_Linha;
  public
    { Public declarations }    
  end;
var
  frmCadLinha: TfrmCadLinha;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadLinha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadLinha.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadLinha);
end;

procedure TfrmCadLinha.FormShow(Sender: TObject);
begin
  fDMCadLinha := TDMCadLinha.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadLinha);
end;

procedure TfrmCadLinha.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadLinha.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadLinha.cdsLinha_Consulta.Active) or (fDMCadLinha.cdsLinha_Consulta.IsEmpty) or
        (fDMCadLinha.cdsLinha_ConsultaCODIGO.AsInteger <= 0) then
    exit;

   prc_Posiciona_Linha;

  if fDMCadLinha.cdsLinha.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadLinha.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadLinha.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadLinha.cdsLinha.IsEmpty) or not(fDMCadLinha.cdsLinha.Active) or (fDMCadLinha.cdsLinhaID.AsInteger < 1) then
    exit;
  fDMCadLinha.cdsLinha.Edit;
  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadLinha.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadLinha.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadLinha.cdsLinha.State in [dsBrowse]) or not(fDMCadLinha.cdsLinha.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadLinha.cdsLinha.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;
  pnlCadastro.Enabled       := False;
end;

procedure TfrmCadLinha.prc_Consultar;
begin
  fDMCadLinha.cdsLinha_Consulta.Close;
  fDMCadLinha.sdsLinha_Consulta.CommandText := fDMCadLinha.ctConsulta + ' WHERE 1 = 1';
  if Trim(Edit4.Text) <> '' then
    fDMCadLinha.sdsLinha_Consulta.CommandText := fDMCadLinha.sdsLinha_Consulta.CommandText +
                                          ' AND (L.CODIGO LIKE ' + QuotedStr('%'+Edit4.Text+'%') + ')';
  if not(CheckBox1.Checked) then
    fDMCadLinha.sdsLinha_Consulta.CommandText := fDMCadLinha.sdsLinha_Consulta.CommandText
                                                  + ' AND L.INATIVA <> ' + QuotedStr('S');
  fDMCadLinha.cdsLinha_Consulta.Open;
end;

procedure TfrmCadLinha.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadLinha.cdsLinha_ConsultaCODIGO.AsInteger;
    fDMCadLinha.prc_Excluir;
    prc_Consultar;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadLinha.cdsLinha_Consulta.Locate('CODIGO',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadLinha.prc_Gravar_Registro;
var
  vIDAux : Integer;
begin
  vIDAux := fDMCadLinha.cdsLinhaID.AsInteger;
  fDMCadLinha.prc_Gravar;
  if fDMCadLinha.cdsLinha.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadLinha.vMsgPessoa, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;
  pnlCadastro.Enabled       := False;

  prc_Consultar;
  fDMCadLinha.cdsLinha_Consulta.Locate('CODIGO',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadLinha.prc_Inserir_Registro;
begin
  fDMCadLinha.prc_Inserir;

  if fDMCadLinha.cdsLinha.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

  DBEdit1.SetFocus;
end;

procedure TfrmCadLinha.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadLinha.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadLinha.cdsLinha);
end;

procedure TfrmCadLinha.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadLinha.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadLinha.cdsLinha_ConsultaINATIVA.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadLinha.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadLinha.cdsLinha_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadLinha.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    Edit4.Clear;
end;

procedure TfrmCadLinha.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadLinha.cdsLinha.State in [dsEdit, dsInsert]) then
      prc_Posiciona_Linha;
  end;
end;

procedure TfrmCadLinha.prc_Posiciona_Linha;
begin
  fDMCadLinha.prc_Localizar(fDMCadLinha.cdsLinha_ConsultaID.AsInteger);
end;

end.
