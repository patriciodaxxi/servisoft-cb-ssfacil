unit uDmCupomTerminal;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmCupomTerminal = class(TDataModule)
    sdsCupomTerminal: TSQLDataSet;
    dspCupomTerminal: TDataSetProvider;
    cdsCupomTerminal: TClientDataSet;
    dsCupomTerminal: TDataSource;
    sdsCupomTerminalID: TSmallintField;
    sdsCupomTerminalNOME: TStringField;
    cdsCupomTerminalID: TSmallintField;
    cdsCupomTerminalNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vMsgCupomTerminal: String;
    ctTerminal: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  dmCupomTerminal: TdmCupomTerminal;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TdmCupomTerminal }

procedure TdmCupomTerminal.prc_Excluir;
begin
  if not(cdsCupomTerminal.Active) or (cdsCupomTerminal.IsEmpty) then
    exit;
  cdsCupomTerminal.Delete;
  cdsCupomTerminal.ApplyUpdates(0);
end;

procedure TdmCupomTerminal.prc_Gravar;
begin
  vMsgCupomTerminal := '';
  if trim(cdsCupomTerminalNOME.AsString) = '' then
    vMsgCupomTerminal := 'Nome não informado!';
  if vMsgCupomTerminal <> '' then
    exit;

  cdsCupomTerminal.Post;
  cdsCupomTerminal.ApplyUpdates(0);
end;

procedure TdmCupomTerminal.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCupomTerminal.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CUPOM_TERMINAL',0);

  cdsCupomTerminal.Insert;
  cdsCupomTerminalID.AsInteger := vAux;
end;

procedure TdmCupomTerminal.prc_Localizar(ID: Integer);
begin
  cdsCupomTerminal.Close;
  sdsCupomTerminal.CommandText := ctTerminal;
  if ID <> 0 then
    sdsCupomTerminal.CommandText := sdsCupomTerminal.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsCupomTerminal.Open;
end;

procedure TdmCupomTerminal.DataModuleCreate(Sender: TObject);
begin
  ctTerminal := sdsCupomTerminal.CommandText;
end;

end.
