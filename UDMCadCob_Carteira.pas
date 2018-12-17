unit UDMCadCob_Carteira;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCadCob_Carteira = class(TDataModule)
    sdsCob_Carteira: TSQLDataSet;
    dspCob_Carteira: TDataSetProvider;
    cdsCob_Carteira: TClientDataSet;
    dsCob_Carteira: TDataSource;
    sdsBanco: TSQLDataSet;
    sdsBancoID: TIntegerField;
    sdsBancoCODIGO: TStringField;
    sdsBancoNOME: TStringField;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoID: TIntegerField;
    cdsBancoCODIGO: TStringField;
    cdsBancoNOME: TStringField;
    dsBanco: TDataSource;
    sdsCob_CarteiraID: TIntegerField;
    sdsCob_CarteiraCODIGO: TStringField;
    sdsCob_CarteiraNOME: TStringField;
    sdsCob_CarteiraGERAR_NOSSONUMERO: TStringField;
    sdsCob_CarteiraGERAR_REMESSA: TStringField;
    sdsCob_CarteiraID_BANCO: TIntegerField;
    sdsCob_CarteiraNOME_BANCO: TStringField;
    cdsCob_CarteiraID: TIntegerField;
    cdsCob_CarteiraCODIGO: TStringField;
    cdsCob_CarteiraNOME: TStringField;
    cdsCob_CarteiraGERAR_NOSSONUMERO: TStringField;
    cdsCob_CarteiraGERAR_REMESSA: TStringField;
    cdsCob_CarteiraID_BANCO: TIntegerField;
    cdsCob_CarteiraNOME_BANCO: TStringField;
    sdsCob_CarteiraCODIGO_IMP: TStringField;
    cdsCob_CarteiraCODIGO_IMP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCob_CarteiraUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadCob_Carteira: TDMCadCob_Carteira;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCob_Carteira.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsCob_Carteira.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('COB_CARTEIRA',0);

  cdsCob_Carteira.Insert;
  cdsCob_CarteiraID.AsInteger := vAux;
end;

procedure TDMCadCob_Carteira.prc_Excluir;
begin
  if not(cdsCob_Carteira.Active) or (cdsCob_Carteira.IsEmpty) then
    exit;
  cdsCob_Carteira.Delete;
  cdsCob_Carteira.ApplyUpdates(0);
end;

procedure TDMCadCob_Carteira.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsCob_CarteiraNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if (trim(cdsCob_CarteiraCODIGO.AsString) = '') then
    vMsgErro := vMsgErro + #13 + '*** Código do  não informado!';
  if cdsCob_CarteiraID_BANCO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Banco não foi informado!';
  if vMsgErro <> '' then
    exit;
  cdsCob_Carteira.Post;
  cdsCob_Carteira.ApplyUpdates(0);
end;

procedure TDMCadCob_Carteira.prc_Localizar(ID : Integer);
begin
  cdsCob_Carteira.Close;
  sdsCob_Carteira.CommandText := ctCommand;
  if ID <> 0 then
    sdsCob_Carteira.CommandText := sdsCob_Carteira.CommandText
                         + ' WHERE CAD.ID = ' + IntToStr(ID);
  cdsCob_Carteira.Open;
end;

procedure TDMCadCob_Carteira.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsCob_Carteira.CommandText;
  cdsBanco.Open;
end;

procedure TDMCadCob_Carteira.dspCob_CarteiraUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

end.
