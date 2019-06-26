unit USel_PessoaPet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, SMDBGrid, FMTBcd, DB,
  SqlExpr, Provider, DBClient, NxCollection;

type
  TfrmSel_PessoaPet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME_PESSOA: TStringField;
    cdsConsultaNOME_ANIMAL: TStringField;
    cdsConsultaNOME_REMEDIO: TStringField;
    cdsConsultaNOME_RACAO: TStringField;
    cdsConsultaNOME_RACA: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    btnConsultar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ctConsulta : String;

    procedure prc_Selecionar;

  public
    { Public declarations }
  end;

var
  frmSel_PessoaPet: TfrmSel_PessoaPet;

implementation

uses uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmSel_PessoaPet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_PessoaPet.FormShow(Sender: TObject);
begin
  ctConsulta := sdsConsulta.CommandText;
end;

procedure TfrmSel_PessoaPet.btnConsultarClick(Sender: TObject);
var
  vComando : String;
begin
  vComando := ' WHERE 0 = 0 ';
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PA.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND R.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND REM.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  if trim(Edit4.Text) <> '' then
    vComando := vComando + ' AND RAC.NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctConsulta + vComando;
  cdsConsulta.Open;
end;

procedure TfrmSel_PessoaPet.prc_Selecionar;
begin
  if cdsConsultaCODIGO.AsInteger > 0 then
  begin
    vCodPessoa_Pos := cdsConsultaCODIGO.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_PessoaPet.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    prc_Selecionar;
end;

procedure TfrmSel_PessoaPet.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Selecionar;
end;

procedure TfrmSel_PessoaPet.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmSel_PessoaPet.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmSel_PessoaPet.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmSel_PessoaPet.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

end.
