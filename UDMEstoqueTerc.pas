unit UDMEstoqueTerc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMEstoqueTerc = class(TDataModule)
    sdsEstoque_DeTerc_Mov: TSQLDataSet;
    dspEstoque_DeTerc_Mov: TDataSetProvider;
    cdsEstoque_DeTerc_Mov: TClientDataSet;
    cdsEstoque_DeTerc_MovID_PRODUTO: TIntegerField;
    cdsEstoque_DeTerc_MovFILIAL: TIntegerField;
    cdsEstoque_DeTerc_MovID_COR: TIntegerField;
    cdsEstoque_DeTerc_MovQTD: TFloatField;
    cdsEstoque_DeTerc_MovNOME_COMBINACAO: TStringField;
    cdsEstoque_DeTerc_MovNOME_PRODUTO: TStringField;
    cdsEstoque_DeTerc_MovREFERENCIA: TStringField;
    cdsEstoque_DeTerc_MovTIPO_ES: TStringField;
    cdsEstoque_DeTerc_MovTIPO_MOV: TStringField;
    cdsEstoque_DeTerc_MovDTMOVIMENTO: TDateField;
    cdsEstoque_DeTerc_MovID_PESSOA: TIntegerField;
    cdsEstoque_DeTerc_MovNOME_PESSOA: TStringField;
    dsEstoque_DeTerc_Mov: TDataSource;
    sdsEstoque_EmTerc_Mov: TSQLDataSet;
    dspsEstoque_EmTerc_Mov: TDataSetProvider;
    cdsEstoque_EmTerc_Mov: TClientDataSet;
    dssEstoque_EmTerc_Mov: TDataSource;
    cdsEstoque_EmTerc_MovID_PRODUTO: TIntegerField;
    cdsEstoque_EmTerc_MovFILIAL: TIntegerField;
    cdsEstoque_EmTerc_MovID_COR: TIntegerField;
    cdsEstoque_EmTerc_MovQTD: TFloatField;
    cdsEstoque_EmTerc_MovNOME_COMBINACAO: TStringField;
    cdsEstoque_EmTerc_MovNOME_PRODUTO: TStringField;
    cdsEstoque_EmTerc_MovREFERENCIA: TStringField;
    cdsEstoque_EmTerc_MovTIPO_ES: TStringField;
    cdsEstoque_EmTerc_MovTIPO_MOV: TStringField;
    cdsEstoque_EmTerc_MovDTMOVIMENTO: TDateField;
    cdsEstoque_EmTerc_MovID_PESSOA: TIntegerField;
    cdsEstoque_EmTerc_MovNOME_PESSOA: TStringField;
    cdsEstoque_DeTerc_MovTAMANHO: TStringField;
    cdsEstoque_EmTerc_MovTAMANHO: TStringField;
    sdsEstoque_DeTerc_Cli: TSQLDataSet;
    dspEstoque_DeTerc_Cli: TDataSetProvider;
    cdsEstoque_DeTerc_Cli: TClientDataSet;
    dsEstoque_DeTerc_Cli: TDataSource;
    cdsEstoque_DeTerc_CliID_PRODUTO: TIntegerField;
    cdsEstoque_DeTerc_CliFILIAL: TIntegerField;
    cdsEstoque_DeTerc_CliID_COR: TIntegerField;
    cdsEstoque_DeTerc_CliQTD: TFloatField;
    cdsEstoque_DeTerc_CliNOME_COMBINACAO: TStringField;
    cdsEstoque_DeTerc_CliNOME_PRODUTO: TStringField;
    cdsEstoque_DeTerc_CliREFERENCIA: TStringField;
    cdsEstoque_DeTerc_CliID_PESSOA: TIntegerField;
    cdsEstoque_DeTerc_CliNOME_PESSOA: TStringField;
    cdsEstoque_DeTerc_CliTAMANHO: TStringField;
    sdsEstoque_EmTerc_Cli: TSQLDataSet;
    dspEstoque_EmTerc_Cli: TDataSetProvider;
    cdsEstoque_EmTerc_Cli: TClientDataSet;
    dsEstoque_EmTerc_Cli: TDataSource;
    cdsEstoque_EmTerc_CliID_PRODUTO: TIntegerField;
    cdsEstoque_EmTerc_CliFILIAL: TIntegerField;
    cdsEstoque_EmTerc_CliID_COR: TIntegerField;
    cdsEstoque_EmTerc_CliQTD: TFloatField;
    cdsEstoque_EmTerc_CliNOME_COMBINACAO: TStringField;
    cdsEstoque_EmTerc_CliNOME_PRODUTO: TStringField;
    cdsEstoque_EmTerc_CliREFERENCIA: TStringField;
    cdsEstoque_EmTerc_CliID_PESSOA: TIntegerField;
    cdsEstoque_EmTerc_CliNOME_PESSOA: TStringField;
    cdsEstoque_EmTerc_CliTAMANHO: TStringField;
    qParametros: TSQLQuery;
    qParametrosUSA_GRADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctEstoque_DeTerc_Mov : String;
    ctEstoque_DeTerc_Cli : String;
    ctEstoque_EmTerc_Mov : String;
    ctEstoque_EmTerc_Cli : String;

  end;

var
  DMEstoqueTerc: TDMEstoqueTerc;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMEstoqueTerc.DataModuleCreate(Sender: TObject);
begin
  ctEstoque_DeTerc_Mov := sdsEstoque_DeTerc_Mov.CommandText;
  ctEstoque_EmTerc_Mov := sdsEstoque_EmTerc_Mov.CommandText;
  ctEstoque_DeTerc_Cli := sdsEstoque_DeTerc_Cli.CommandText;
  ctEstoque_EmTerc_Cli := sdsEstoque_EmTerc_Cli.CommandText;
  qParametros.Open;
end;

end.
