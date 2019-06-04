unit uCadRaca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadRaca, Mask,
  UCBase, RxLookup, StdCtrls, RxDBComb, DBCtrls, RXSpin, ExtCtrls, db, DBGrids, RzTabs, NxCollection, ToolEdit, RXDBCtrl,
  CurrEdit, RzPanel;

type
  TfrmCadRaca = class(TForm)
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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    UCControls1: TUCControls;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Edit1: TEdit;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
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
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadRaca: TDMCadRaca;
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
  frmCadRaca: TfrmCadRaca;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, uCadTipo_Animal;

{$R *.dfm}

procedure TfrmCadRaca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadRaca.prc_Excluir_Registro;
begin
  fDMCadRaca.prc_Excluir;
end;

procedure TfrmCadRaca.prc_Gravar_Registro;
var
  vIDAux: Integer;
begin
  vIDAux := fDMCadRaca.cdsRacaID.AsInteger;
  fDMCadRaca.prc_Gravar;
  if fDMCadRaca.cdsRaca.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadRaca.vMsgRaca, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar;
  
  fDMCadRaca.cdsConsulta.Locate('ID',vIDAux,([Locaseinsensitive]));
end;

procedure TfrmCadRaca.prc_Inserir_Registro;
begin
  fDMCadRaca.prc_Inserir;

  if fDMCadRaca.cdsRaca.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilita;

  DBEdit3.SetFocus;
end;

procedure TfrmCadRaca.FormShow(Sender: TObject);
begin
  fDMCadRaca := TDMCadRaca.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadRaca);
  btnConsultarClick(Sender);
  Edit4.SetFocus;
end;

procedure TfrmCadRaca.prc_Consultar;
begin
  fDMCadRaca.cdsConsulta.Close;
  fDMCadRaca.sdsConsulta.CommandText := fDMCadRaca.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadRaca.sdsConsulta.CommandText := fDMCadRaca.sdsConsulta.CommandText + ' AND R.NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  if Trim(Edit1.Text) <> '' then
    fDMCadRaca.sdsConsulta.CommandText := fDMCadRaca.sdsConsulta.CommandText + ' AND T.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  fDMCadRaca.cdsConsulta.IndexFieldNames := 'NOME';
  fDMCadRaca.cdsConsulta.Open;
end;

procedure TfrmCadRaca.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadRaca.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadRaca.cdsRaca.State in [dsBrowse]) or not(fDMCadRaca.cdsRaca.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadRaca.cdsRaca.CancelUpdates;

  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadRaca.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadRaca.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadRaca.cdsRaca.IsEmpty) or not(fDMCadRaca.cdsRaca.Active) or
     (fDMCadRaca.cdsRacaID.AsInteger < 1) then
    Exit;

  fDMCadRaca.vIdAnt := fDMCadRaca.cdsRacaID.AsInteger;

  fDMCadRaca.cdsRaca.Edit;
  prc_Habilita;
end;

procedure TfrmCadRaca.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadRaca.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadRaca);
end;

procedure TfrmCadRaca.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadRaca.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadRaca.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadRaca.cdsConsulta.Active) or (fDMCadRaca.cdsConsulta.IsEmpty) or
        (fDMCadRaca.cdsConsultaID.AsInteger < 1) then
    Exit;

  prc_Posiciona_Reg;

  if fDMCadRaca.cdsRaca.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  prc_Consultar;
end;

procedure TfrmCadRaca.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled);
end;

procedure TfrmCadRaca.prc_Posiciona_Reg;
begin
  fDMCadRaca.prc_Localizar(fDMCadRaca.cdsConsultaID.AsInteger);
end;

procedure TfrmCadRaca.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadRaca.cdsRaca.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadRaca.cdsConsulta.Active) or (fDMCadRaca.cdsConsulta.IsEmpty) or
            (fDMCadRaca.cdsConsultaID.AsInteger = 0) then
        exit;
      prc_Posiciona_Reg;
    end;
  end;
end;

procedure TfrmCadRaca.SpeedButton7Click(Sender: TObject);
begin
  fDMCadRaca.cdsTipo_Animal.Close;
  fDMCadRaca.cdsTipo_Animal.Open;
end;

procedure TfrmCadRaca.SpeedButton1Click(Sender: TObject);
begin
  frmCadTipo_Animal := TfrmCadTipo_Animal.Create(self);
  frmCadTipo_Animal.ShowModal;
  FreeAndNil(frmCadTipo_Animal);
  SpeedButton7Click(Sender);
end;

end.

