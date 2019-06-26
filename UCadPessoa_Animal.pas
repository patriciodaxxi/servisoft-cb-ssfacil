unit UCadPessoa_Animal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPessoa, ExtCtrls, NxCollection, StdCtrls, Mask, DBCtrls,
  RxLookup;

type
  TfrmCadPessoa_Animal = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Edit2: TEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fnc_Abrir_qProd(ID : Integer) : String;
  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;

  end;

var
  frmCadPessoa_Animal: TfrmCadPessoa_Animal;

implementation

uses rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmCadPessoa_Animal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPessoa_Animal.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  if fDMCadPessoa.cdsPessoa_AnimalID_REMEDIO_PULGA.AsInteger > 0 then
    Edit1.Text := fnc_Abrir_qProd(fDMCadPessoa.cdsPessoa_AnimalID_REMEDIO_PULGA.AsInteger);
  if fDMCadPessoa.cdsPessoa_AnimalID_RACAO.AsInteger > 0 then
    Edit2.Text := fnc_Abrir_qProd(fDMCadPessoa.cdsPessoa_AnimalID_RACAO.AsInteger);
end;

function TfrmCadPessoa_Animal.fnc_Abrir_qProd(ID: Integer): String;
begin
  Result := '';
  fDMCadPessoa.qProd.Close;
  fDMCadPessoa.qProd.ParamByName('ID').AsInteger := ID;
  fDMCadPessoa.qProd.Open;
  if fDMCadPessoa.qProd.IsEmpty then
    MessageDlg('*** ID não encontrado!', mtError, [mbOk], 0)
  else
    Result := fDMCadPessoa.qProdNOME.AsString;
end;

procedure TfrmCadPessoa_Animal.DBEdit2Exit(Sender: TObject);
begin
  if fDMCadPessoa.cdsPessoa_AnimalID_REMEDIO_PULGA.AsInteger > 0 then
  begin
    Edit1.Text := fnc_Abrir_qProd(fDMCadPessoa.cdsPessoa_AnimalID_REMEDIO_PULGA.AsInteger);
    if trim(Edit1.Text) = '' then
      DBEdit2.SetFocus;
  end;
end;

procedure TfrmCadPessoa_Animal.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    vCodProduto_Pos := fDMCadPessoa.cdsPessoa_AnimalID_REMEDIO_PULGA.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.Edit1.Text := Edit1.Text;
    frmSel_Produto.ShowModal;
    fDMCadPessoa.cdsPessoa_AnimalID_REMEDIO_PULGA.AsInteger := vCodProduto_Pos;
    if fDMCadPessoa.cdsPessoa_AnimalID_REMEDIO_PULGA.AsInteger > 0 then
      Edit1.Text := vNome_Pos;
  end;
end;

procedure TfrmCadPessoa_Animal.DBEdit3Exit(Sender: TObject);
begin
  if fDMCadPessoa.cdsPessoa_AnimalID_RACAO.AsInteger > 0 then
  begin
    Edit2.Text := fnc_Abrir_qProd(fDMCadPessoa.cdsPessoa_AnimalID_RACAO.AsInteger);
    if trim(Edit1.Text) = '' then
      DBEdit3.SetFocus;
  end;
end;

procedure TfrmCadPessoa_Animal.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    vCodProduto_Pos := fDMCadPessoa.cdsPessoa_AnimalID_RACAO.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.Edit1.Text := Edit2.Text;
    frmSel_Produto.ShowModal;
    fDMCadPessoa.cdsPessoa_AnimalID_RACAO.AsInteger := vCodProduto_Pos;
    if fDMCadPessoa.cdsPessoa_AnimalID_RACAO.AsInteger > 0 then
      Edit2.Text := vNome_Pos;
  end;
end;

procedure TfrmCadPessoa_Animal.NxButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar Inclusão/Alteração?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadPessoa.cdsPessoa_Animal.Cancel;
  Close;
end;

procedure TfrmCadPessoa_Animal.NxButton1Click(Sender: TObject);
var
  vMSGAux : String;
begin
  vMSGAux := '';
  if trim(fDMCadPessoa.cdsPessoa_AnimalNOME.AsString) = '' then
    vMSGAux := vMSGAux + #13 + '*** Nome não informado';
  if fDMCadPessoa.cdsPessoa_AnimalID_RACA.AsInteger <= 0 then
    vMSGAux := vMSGAux + #13 + '*** Raça não informada';
  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadPessoa.cdsPessoa_Animal.Post;
  Close;
end;

procedure TfrmCadPessoa_Animal.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    Edit1.SetFocus;
end;

procedure TfrmCadPessoa_Animal.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    Edit2.SetFocus;
end;

end.
