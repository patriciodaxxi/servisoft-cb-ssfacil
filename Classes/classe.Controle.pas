unit classe.Controle;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, classe.ConexaoBD, SqlExpr, Forms, iniFiles,
  Variants, Dialogs, Contnrs, StrUtils;

type
  TControle = class

  Private
    FConexaoBanco : TConexaoBanco;
    FSqlGeral : TSQLQuery;

  Public
    constructor create;
    destructor destroy; override;
    property sqlGeral : TSQLQuery read FSqlGeral write FSqlGeral;

  end;

implementation

{ TControle }

constructor TControle.create;
begin
  FConexaoBanco := TConexaoBanco.Create;
  FSqlGeral := TSQLQuery.Create(Application);
  FSqlGeral.SQLConnection := FConexaoBanco.ConexaoBanco;
end;

destructor TControle.destroy;
begin

  inherited;
end;

end.
