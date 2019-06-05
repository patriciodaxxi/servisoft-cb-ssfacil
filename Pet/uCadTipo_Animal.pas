unit uCadTipo_Animal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadTipo_Animal, Mask,
  UCBase, RxLookup, StdCtrls, RxDBComb, DBCtrls, RXSpin, ExtCtrls, db, DBGrids, RzTabs, NxCollection, ToolEdit, RXDBCtrl,
  CurrEdit, RzPanel;

type
  TfrmCadTipo_Animal = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    Label1: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    fDMCadTipo_Animal: TDMCadTipo_Animal;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

    procedure prc_Posiciona_Reg;

    procedure prc_Habilita; 

  public
    { Public declarations }
  end;

var
  frmCadTipo_Animal: TfrmCadTipo_Animal;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadTipo_Animal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadTipo_Animal.prc_Excluir_Registro;
begin
  fDMCadTipo_Animal.prc_Excluir;
end;

procedure TfrmCadTipo_Animal.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadTipo_Animal.cdsTipo_AnimalID.AsInteger;
  fDMCadTipo_Animal.prc_Gravar;
  if fDMCadTipo_Animal.cdsTipo_Animal.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadTipo_Animal.vMsgTipo_Animal, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar;
  
  fDMCadTipo_Animal.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadTipo_Animal.prc_Inserir_Registro;
begin
  fDMCadTipo_Animal.prc_Inserir;

  if fDMCadTipo_Animal.cdsTipo_Animal.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilita;

  DBEdit3.SetFocus;
end;

procedure TfrmCadTipo_Animal.FormShow(Sender: TObject);
begin
  fDMCadTipo_Animal := TDMCadTipo_Animal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTipo_Animal);
  btnConsultarClick(Sender);
  Edit4.SetFocus;
end;

procedure TfrmCadTipo_Animal.prc_Consultar;
begin
  fDMCadTipo_Animal.cdsConsulta.Close;
  fDMCadTipo_Animal.sdsConsulta.CommandText := fDMCadTipo_Animal.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadTipo_Animal.sdsConsulta.CommandText := fDMCadTipo_Animal.sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadTipo_Animal.cdsConsulta.IndexFieldNames := 'NOME';
  fDMCadTipo_Animal.cdsConsulta.Open;
end;

procedure TfrmCadTipo_Animal.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadTipo_Animal.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadTipo_Animal.cdsTipo_Animal.State in [dsBrowse]) or not(fDMCadTipo_Animal.cdsTipo_Animal.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadTipo_Animal.cdsTipo_Animal.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadTipo_Animal.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadTipo_Animal.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadTipo_Animal.cdsTipo_Animal.IsEmpty) or not(fDMCadTipo_Animal.cdsTipo_Animal.Active) or
     (fDMCadTipo_Animal.cdsTipo_AnimalID.AsInteger < 1) then
    Exit;

  fDMCadTipo_Animal.vIdAnt := fDMCadTipo_Animal.cdsTipo_AnimalID.AsInteger;

  fDMCadTipo_Animal.cdsTipo_Animal.Edit;
  prc_Habilita;
end;

procedure TfrmCadTipo_Animal.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadTipo_Animal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadTipo_Animal);
end;

procedure TfrmCadTipo_Animal.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadTipo_Animal.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadTipo_Animal.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadTipo_Animal.cdsConsulta.Active) or (fDMCadTipo_Animal.cdsConsulta.IsEmpty) or
        (fDMCadTipo_Animal.cdsConsultaID.AsInteger < 1) then
    Exit;

  prc_Posiciona_Reg;

  if fDMCadTipo_Animal.cdsTipo_Animal.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  prc_Consultar;
end;

procedure TfrmCadTipo_Animal.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
end;

procedure TfrmCadTipo_Animal.prc_Posiciona_Reg;
begin
  fDMCadTipo_Animal.prc_Localizar(fDMCadTipo_Animal.cdsConsultaID.AsInteger);
end;

procedure TfrmCadTipo_Animal.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadTipo_Animal.cdsTipo_Animal.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadTipo_Animal.cdsConsulta.Active) or (fDMCadTipo_Animal.cdsConsulta.IsEmpty) or
            (fDMCadTipo_Animal.cdsConsultaID.AsInteger = 0) then
        exit;
      prc_Posiciona_Reg;
    end;
  end;
end;

end.

