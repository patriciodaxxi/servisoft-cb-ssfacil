unit UDMCadOS_TAux;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDMCadOS_TAux = class(TDataModule)
    mServico_Extra: TClientDataSet;
    dsmServico_Extra: TDataSource;
    mServico_ExtraID_Mov: TIntegerField;
    mServico_ExtraID_Servico: TIntegerField;
    mServico_ExtraID_Servico_Int: TIntegerField;
    mServico_ExtraNome_Servico: TStringField;
    mServico_ExtraNome_Servico_Int: TStringField;
    mServico_ExtraID_Cliente: TIntegerField;
    mServico_ExtraNome_Cliente: TStringField;
    mServico_ExtraQtd: TFloatField;
    mServico_ExtraVlr_Unitario: TFloatField;
    mServico_ExtraVlr_Total: TFloatField;
    mServico_ExtraFilial: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadOS_TAux: TDMCadOS_TAux;

implementation

{$R *.dfm}

end.
