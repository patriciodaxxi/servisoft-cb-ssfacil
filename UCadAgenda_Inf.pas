unit UCadAgenda_Inf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadAgenda, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  RzEdit, RzDBEdit, ToolEdit, RXDBCtrl, RxLookup, RzPanel, RzTabs, DB,
  NxCollection;

type
  TfrmCadAgenda_Inf = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBMemo2: TDBMemo;
    TabSheet2: TRzTabSheet;
    DBMemo3: TDBMemo;
    TabSheet3: TRzTabSheet;
    DBMemo4: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo5: TDBMemo;
    pnlCadastro: TPanel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    gbxVendedor: TRzGroupBox;
    Label10: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBDateEdit2: TDBDateEdit;
    SpeedButton5: TSpeedButton;
    TabSheet5: TRzTabSheet;
    Label11: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
  private
    { Private declarations }

    procedure prc_Habilitar;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;

  public
    { Public declarations }
    fDMCadAgenda: TDMCadAgenda;


  end;

var
  frmCadAgenda_Inf: TfrmCadAgenda_Inf;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadAgenda_Inf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadAgenda_Inf.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadAgenda);
  if Tag = 1 then
    btnInserirClick(Sender)
  else
  if Tag = 2 then
    btnAlterarClick(Sender);
end;

procedure TfrmCadAgenda_Inf.btnCancelarClick(Sender: TObject);
begin
  if fDMCadAgenda.cdsAgenda.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Deseja cancelar o registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    fDMCadAgenda.cdsAgenda.CancelUpdates;
  end;
  Tag := 0;
  Close;
end;

procedure TfrmCadAgenda_Inf.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Key := ' ';
  //Key := UpCase(Key);
end;

procedure TfrmCadAgenda_Inf.SpeedButton5Click(Sender: TObject);
begin
  fDMCadAgenda.cdsPessoa.Close;
  fDMCadAgenda.cdsPessoa.Open;
end;

procedure TfrmCadAgenda_Inf.SpeedButton1Click(Sender: TObject);
begin
  fDMCadAgenda.cdsFuncionario.Close;
  fDMCadAgenda.cdsFuncionario.Open;
end;

procedure TfrmCadAgenda_Inf.prc_Inserir_Registro;
begin
  fDMCadAgenda.prc_Inserir;

  if fDMCadAgenda.cdsAgenda.State in [dsBrowse] then
    exit;

  prc_Habilitar;
  RxDBLookupCombo2.SetFocus;
end;

procedure TfrmCadAgenda_Inf.prc_Habilitar;
begin
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled  := not(pnlCadastro.Enabled);
  DBMemo2.ReadOnly     := not(DBMemo2.ReadOnly);
  DBMemo3.ReadOnly     := not(DBMemo3.ReadOnly);
  DBMemo4.ReadOnly     := not(DBMemo4.ReadOnly);
  DBMemo5.ReadOnly     := not(DBMemo5.ReadOnly);

end;

procedure TfrmCadAgenda_Inf.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadAgenda_Inf.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadAgenda.cdsAgenda.IsEmpty) or not(fDMCadAgenda.cdsAgenda.Active) or (fDMCadAgenda.cdsAgendaID.AsInteger < 1) then
    exit;

  fDMCadAgenda.cdsAgenda.Edit;

  prc_Habilitar;
  
  RxDBLookupCombo2.SetFocus;
end;

procedure TfrmCadAgenda_Inf.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadAgenda_Inf.prc_Gravar_Registro;
begin
  if fDMCadAgenda.cdsAgendaID_PESSOA.AsInteger > 0 then
    fDMCadAgenda.cdsAgendaNOME_PESSOA.AsString := RxDBLookupCombo1.Text;
  fDMCadAgenda.prc_Gravar;
  if fDMCadAgenda.cdsAgenda.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadAgenda.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Tag := 0;
  prc_Habilitar;
  btnInserir.SetFocus;
end;

procedure TfrmCadAgenda_Inf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    btnCancelarClick(Sender);
end;

procedure TfrmCadAgenda_Inf.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) <> '' then
    fDMCadAgenda.cdsAgendaNOME_PESSOA.AsString := RxDBLookupCombo1.Text;
end;

end.
