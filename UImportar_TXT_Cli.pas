unit UImportar_TXT_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, UDMImportarXML, uCadPessoa, UCadPais, UCadCidade,
  Buttons, NxCollection;

type
  TfrmImportar_TXT_Cli = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton9: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnGravar_Pedido: TNxButton;
    btnCancelar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravar_PedidoClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ffrmCadPessoa: TfrmCadPessoa;
    ffrmCadPais: TfrmCadPais;
    ffrmCadCidade: TfrmCadCidade;
    vID_Cidade_Ant : Integer;
    vID_Pais_Ant : Integer;

  public
    { Public declarations }
    fDMImportarXML: TDMImportarXML;
  end;

var
  frmImportar_TXT_Cli: TfrmImportar_TXT_Cli;

implementation

uses uUtilPadrao, DB, rsDBUtils;

{$R *.dfm}

procedure TfrmImportar_TXT_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportar_TXT_Cli.btnCancelarClick(Sender: TObject);
begin
  if fDMImportarXML.mRegistro.State in [dsEdit] then
    fDMImportarXML.mRegistro.Cancel;
  Close;
end;

procedure TfrmImportar_TXT_Cli.btnGravar_PedidoClick(Sender: TObject);
begin
  if fDMImportarXML.mRegistroNome.AsString <> RxDBLookupCombo1.Text then
    fDMImportarXML.mRegistro.Edit;
  if fDMImportarXML.mRegistro.State in [dsEdit] then
  begin
    fDMImportarXML.mRegistroNome.AsString := RxDBLookupCombo1.Text;
    fDMImportarXML.mRegistro.Post;
  end;
  Close;
end;

procedure TfrmImportar_TXT_Cli.SpeedButton9Click(Sender: TObject);
begin
  vCodPessoa_Pos := 0;
  ffrmCadPessoa := TfrmCadPessoa.Create(self);
  ffrmCadPessoa.ShowModal;
  FreeAndNil(ffrmCadPessoa);
  fDMImportarXML.cdsFornecedor.Close;
  fDMImportarXML.cdsFornecedor.Open;
  if vCodPessoa_Pos > 0 then
  begin
    fDMImportarXML.mRegistro.Edit;
    fDMImportarXML.mRegistroID.AsInteger := vCodPessoa_Pos;
    fDMImportarXML.mRegistro.Post;
  end;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmImportar_TXT_Cli.SpeedButton1Click(Sender: TObject);
begin
  vID_Cidade_Pos := 0;
  ffrmCadCidade := TfrmCadCidade.Create(self);
  ffrmCadCidade.ShowModal;
  FreeAndNil(ffrmCadCidade);
  fDMImportarXML.cdsCidade.Close;
  fDMImportarXML.cdsCidade.Open;
  if vID_Cidade_Pos > 0 then
  begin
    fDMImportarXML.mRegistro.Edit;
    fDMImportarXML.mRegistroID_Cidade.AsInteger := vID_Cidade_Pos;
    fDMImportarXML.mRegistro.Post;
  end;
  RxDBLookupCombo2.SetFocus;
end;

procedure TfrmImportar_TXT_Cli.RxDBLookupCombo2Enter(Sender: TObject);
begin
  vID_Cidade_Ant := fDMImportarXML.mRegistroID_Cidade.AsInteger;
end;

procedure TfrmImportar_TXT_Cli.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if vID_Cidade_Ant <> fDMImportarXML.mRegistroID_Cidade.AsInteger then
  begin
    if fDMImportarXML.cdsCidade.Locate('ID',fDMImportarXML.mRegistroID_Cidade.AsInteger,([Locaseinsensitive])) then
    begin
      fDMImportarXML.mRegistro.Edit;
      fDMImportarXML.mRegistroNome_Cidade.AsString   := fDMImportarXML.cdsCidadeNOME.AsString;
      fDMImportarXML.mRegistroCod_Municipio.AsString := fDMImportarXML.cdsCidadeCODMUNICIPIO.AsString;
      fDMImportarXML.mRegistro.Post;
    end;
  end;
end;

procedure TfrmImportar_TXT_Cli.RxDBLookupCombo3Enter(Sender: TObject);
begin
  vID_Pais_Ant := fDMImportarXML.mRegistroID_Pais.AsInteger;
end;

procedure TfrmImportar_TXT_Cli.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if vID_Pais_Ant <> fDMImportarXML.mRegistroID_Pais.AsInteger then
  begin
    if fDMImportarXML.cdsPais.Locate('ID',fDMImportarXML.mRegistroID_Pais.AsInteger,([Locaseinsensitive])) then
    begin
      fDMImportarXML.mRegistro.Edit;
      fDMImportarXML.mRegistroNome_Pais.AsString := fDMImportarXML.cdsPaisNOME.AsString;
      fDMImportarXML.mRegistroCod_Pais.AsString  := fDMImportarXML.cdsPaisCODPAIS.AsString;
      fDMImportarXML.mRegistro.Post;
    end;
  end;
end;

procedure TfrmImportar_TXT_Cli.SpeedButton2Click(Sender: TObject);
begin
  vID_Pais_Pos := 0;
  ffrmCadPais := TfrmCadPais.Create(self);
  ffrmCadPais.ShowModal;
  FreeAndNil(ffrmCadPais);
  fDMImportarXML.cdsPais.Close;
  fDMImportarXML.cdsPais.Open;
  if vID_Pais_Pos > 0 then
  begin
    fDMImportarXML.mRegistro.Edit;
    fDMImportarXML.mRegistroID_Pais.AsInteger := vID_Pais_Pos;
    fDMImportarXML.mRegistro.Post;
  end;
  RxDBLookupCombo3.SetFocus;
end;

procedure TfrmImportar_TXT_Cli.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMImportarXML);
end;

end.
