unit uUtilIBPT;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, USenha, Messages,
  Controls, Graphics;

  procedure prc_Busca_OnLine(Token, CNPJ, NCM, UF, EX : String);

var
  vIBPT_Chave : String;
  vIBPT_NCM : String;
  vIBPT_Descricao : String;
  vIBPT_Fonte : String;
  vIBPT_Tipo : String;
  vIBPT_Uf : String;
  vIBPT_Versao : String;
  vIBPT_VigenciaInicio : String;
  vIBPT_VigenciaFim : String;
  vIBPT_Ex : Integer;
  vIBPT_Estadual : Real;
  vIBPT_Importado : Real;
  vIBPT_Municipal : Real;
  vIBPT_Nacional : Real;

implementation

uses DateUtils, ComObj, DB, ApiIbpt;


procedure prc_Busca_OnLine(Token, CNPJ, NCM, UF, EX : String);
var
  oIbpt: TApiIbpt;
  Produto: TApiIbptProduto;
begin
  vIBPT_Chave          := '';
  vIBPT_NCM            := '';
  vIBPT_Descricao      := '';
  vIBPT_Fonte          := '';
  vIBPT_Tipo           := '';
  vIBPT_Uf             := '';
  vIBPT_Versao         := '';
  vIBPT_VigenciaInicio := '';
  vIBPT_VigenciaFim    := '';
  vIBPT_Ex             := 0;
  vIBPT_Estadual       := 0;
  vIBPT_Importado      := 0;
  vIBPT_Municipal      := 0;
  vIBPT_Nacional       := 0;

  oIbpt := TApiIbpt.Create(Token, CNPJ);
  try
    Produto :=  oIbpt.ConsultarProduto(NCM,
                                       UF,
                                       '',
                                       '',
                                       '',
                                       'Nao Tem',
                                       0,
                                       0);
                                       
    vIBPT_Chave := Produto.Chave;
    vIBPT_NCM   := Produto.Codigo;
    vIBPT_Descricao := Produto.Descricao;
    vIBPT_Fonte := Produto.Fonte;
    vIBPT_Tipo := Produto.Tipo;
    vIBPT_Uf := Produto.Uf;
    vIBPT_Versao := Produto.Versao;
    vIBPT_VigenciaInicio := Produto.VigenciaInicio;
    vIBPT_VigenciaFim    := Produto.VigenciaFim;
    vIBPT_Ex             := Produto.Ex;
    vIBPT_Estadual       :=  Produto.Estadual;
    vIBPT_Importado      := Produto.Importado;
    vIBPT_Municipal      := Produto.Municipal;
    vIBPT_Nacional       := Produto.Nacional;

  finally
    FreeAndNil(oIbpt);
  end;
end;

end.
