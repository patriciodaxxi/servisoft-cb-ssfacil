unit UVendedor_Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPessoa, StdCtrls, DBCtrls, NxCollection, ExtCtrls, DB;

type
  TfrmVendedor_Config = class(TForm)
    btnConfirmar: TNxButton;
    NxButton2: TNxButton;
    Panel1: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;
    
  end;

var
  frmVendedor_Config: TfrmVendedor_Config;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmVendedor_Config.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPessoa.cdsVendedor_Config.State in [dsEdit,dsInsert] then
    fDMCadPessoa.cdsVendedor_Config.Cancel;
  Action := Cafree;
end;

procedure TfrmVendedor_Config.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  Panel1.Enabled       := (fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]);
  btnConfirmar.Enabled := (fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert]);
  if not(fDMCadPessoa.cdsVendedor_Config.Active) or (fDMCadPessoa.cdsVendedor_ConfigCODIGO.AsInteger <> fDMCadPessoa.cdsPessoaCODIGO.AsInteger) then
  begin
    fDMCadPessoa.cdsVendedor_Config.Close;
    fDMCadPessoa.sdsVendedor_Config.ParamByName('CODIGO').AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
    fDMCadPessoa.cdsVendedor_Config.Open;
  end;
  if fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert] then
  begin
    if fDMCadPessoa.cdsVendedor_Config.IsEmpty then
    begin
      fDMCadPessoa.cdsVendedor_Config.Insert;
      fDMCadPessoa.cdsVendedor_ConfigCODIGO.AsInteger := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
    end
    else
      fDMCadPessoa.cdsVendedor_Config.Edit;
  end;
end;

procedure TfrmVendedor_Config.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmVendedor_Config.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadPessoa.cdsVendedor_Config.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Cancelar a digitação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmVendedor_Config.btnConfirmarClick(Sender: TObject);
begin
  if MessageDlg('Confirmar a digitação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMCadPessoa.cdsVendedor_Config.Post;
  Close;
end;

end.
