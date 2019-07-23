unit UConsClienteOBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, CurrEdit, FMTBcd, DB,
  SqlExpr, Provider, DBClient, DBCtrls, ExtCtrls, UDMConsClienteOBS, UCBase;

type
  TfrmConsClienteOBS = class(TForm)
    NxPanel1: TNxPanel;
    NxLabel1: TNxLabel;
    CurrencyEdit1: TCurrencyEdit;
    NxLabel2: TNxLabel;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    btnAlterar: TNxButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsClienteOBS: TDMConsClienteOBS;

    procedure prc_Abrir_Consulta;
    procedure prc_Habilita;

  public
    { Public declarations }
  end;

var
  frmConsClienteOBS: TfrmConsClienteOBS;

implementation

uses DmdDatabase, uUtilPadrao, USel_Pessoa, rsDBUtils;

{$R *.dfm}

procedure TfrmConsClienteOBS.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    fDMConsClienteOBS.cdsConsulta.Close;
    if CurrencyEdit1.AsInteger > 0 then
      prc_Abrir_Consulta;
  end
  else
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := CurrencyEdit1.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    CurrencyEdit1.AsInteger := vCodPessoa_Pos;
    CurrencyEdit1.SetFocus;
  end;
end;

procedure TfrmConsClienteOBS.CurrencyEdit1Change(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  btnAlterar.Enabled   := True;
  btnConfirmar.Enabled := False;
  Memo1.ReadOnly       := True;
  Memo2.ReadOnly       := True;
end;

procedure TfrmConsClienteOBS.prc_Abrir_Consulta;
begin
  fDMConsClienteOBS.cdsConsulta.Close;
  fDMConsClienteOBS.sdsConsulta.ParamByName('CODIGO').AsInteger := CurrencyEdit1.AsInteger;
  fDMConsClienteOBS.cdsConsulta.Open;
  NxLabel2.Caption := fDMConsClienteOBS.cdsConsultaNOME_CLIENTE.AsString;
  Memo1.Lines.Text := fDMConsClienteOBS.cdsConsultaOBS_AVISO.AsString;
  Memo2.Lines.Text := fDMConsClienteOBS.cdsConsultaOBS.Value;
end;

procedure TfrmConsClienteOBS.FormShow(Sender: TObject);
begin
  fDMConsClienteOBS := TDMConsClienteOBS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsClienteOBS);

  if CurrencyEdit1.AsInteger > 0 then
    prc_Abrir_Consulta;
end;

procedure TfrmConsClienteOBS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then //ESC
    Close;
end;

procedure TfrmConsClienteOBS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsClienteOBS.btnAlterarClick(Sender: TObject);
begin
  prc_Habilita;
end;

procedure TfrmConsClienteOBS.prc_Habilita;
begin
  Memo1.ReadOnly := not(Memo1.ReadOnly);
  Memo2.ReadOnly := not(Memo2.ReadOnly);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
end;

procedure TfrmConsClienteOBS.btnConfirmarClick(Sender: TObject);
begin
  if MessageDlg('Deseja confirmar as alterações?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  fDMConsClienteOBS.cdsPessoa.Close;
  fDMConsClienteOBS.sdsPessoa.ParamByName('CODIGO').AsInteger := fDMConsClienteOBS.cdsConsultaCODIGO.AsInteger;
  fDMConsClienteOBS.cdsPessoa.Open;
  if fDMConsClienteOBS.cdsPessoa.RecordCount <= 0 then
  begin
    MessageDlg('*** Cliente não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMConsClienteOBS.cdsPessoa.Edit;
  fDMConsClienteOBS.cdsPessoaOBS.Value          := Memo2.Lines.Text;
  fDMConsClienteOBS.cdsPessoaOBS_AVISO.AsString := Memo1.Lines.Text;
  fDMConsClienteOBS.cdsPessoa.Post;
  fDMConsClienteOBS.cdsPessoa.ApplyUpdates(0);

  prc_Habilita;

end;

end.
