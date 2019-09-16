unit classe.ControlePedidoProjeto;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, ComCtrls, classe.Controle, classe.CalcularPeso;

type
  TPedidoControle = class
  private
    FID_Pessoa: Integer;
    FID_PRODUTO: integer;
    FVLR_UNITARIO: real;
    FCOMPRIMENTO: real;
    FESPESSURA: real;
    FPESO: real;
    FPRECO_KG: real;
    FLARGURA: real;
    FNOMEPROJETO: String;
    FVLR_DOBRA: real;
    FControle : TControle;

  public
    constructor create(pConexaoControle:TControle);
    destructor destroy; override;
    function InserePedidoProjeto : Boolean;
    function PesquisaPedidoProjeto(pNome : String) : TPedidoControle;

    property NomeProjeto : String read FNOMEPROJETO write FNOMEPROJETO;
    property ID_Pessoa : Integer read FID_Pessoa write FID_Pessoa;
    property PRECO_KG : real read FPRECO_KG write FPRECO_KG;
    property PESO : real read FPESO write FPESO;
    property VLR_DOBRA : real read FVLR_DOBRA write FVLR_DOBRA;
    property VLR_UNITARIO : real read FVLR_UNITARIO write FVLR_UNITARIO;
    property COMPRIMENTO : real read FCOMPRIMENTO write FCOMPRIMENTO;
    property LARGURA : real read FLARGURA write FLARGURA;
    property ESPESSURA : real read FESPESSURA write FESPESSURA;
    property ID_PRODUTO : integer read FID_PRODUTO write FID_PRODUTO;

  end;

implementation

{ TPedidoControle }

constructor TPedidoControle.create(pConexaoControle: Tcontrole);
begin
  FControle := pConexaoControle;
end;

destructor TPedidoControle.destroy;
begin
  inherited;
end;

function TPedidoControle.InserePedidoProjeto: Boolean;
begin
  FControle.SqlGeral.Close;
  FControle.SqlGeral.SQL.Clear;
  FControle.SqlGeral.SQL.Add('update or insert into pedido_projeto ');
  FControle.SqlGeral.SQL.Add('(NOME_PROJETO,ID_PESSOA,PRECO_KG,PESO,VLR_DOBRA,VLR_UNITARIO,COMPRIMENTO,LARGURA,ESPESSURA,ID_PRODUTO) values ');
  FControle.SqlGeral.SQL.Add('(:vNome_Projeto,');
  FControle.SqlGeral.SQL.Add(' :vId_Pessoa,');
  FControle.SqlGeral.SQL.Add(' :vPreco_Kg,');
  FControle.SqlGeral.SQL.Add(' :vPeso,');
  FControle.SqlGeral.SQL.Add(' :vVlr_Dobra,');
  FControle.SqlGeral.SQL.Add(' :vVlr_Unitario,');
  FControle.SqlGeral.SQL.Add(' :vComprimento,');
  FControle.SqlGeral.SQL.Add(' :vLargura,');
  FControle.SqlGeral.SQL.Add(' :vEspessura,');
  FControle.SqlGeral.SQL.Add(' :vId_Produto)');

  FControle.SqlGeral.ParamByName('vNome_Projeto').AsString := Self.FNomeProjeto;
  FControle.SqlGeral.ParamByName('vId_Pessoa').asInteger := Self.FId_Pessoa;
  FControle.SqlGeral.ParamByName('vPreco_Kg').asFloat := Self.FPreco_Kg;
  FControle.SqlGeral.ParamByName('vPeso').asFloat := Self.FPeso;
  FControle.SqlGeral.ParamByName('vVlr_Dobra').asFloat := Self.FVlr_Dobra;
  FControle.SqlGeral.ParamByName('vVlr_Unitario').asFloat := Self.FVlr_Unitario;
  FControle.SqlGeral.ParamByName('vComprimento').asFloat := Self.FComprimento;
  FControle.SqlGeral.ParamByName('vLargura').asFloat := Self.FLargura;
  FControle.SqlGeral.ParamByName('vEspessura').asFloat := Self.FEspessura;
  FControle.SqlGeral.ParamByName('vId_Produto').asInteger := Self.FId_Produto;

  try
    FControle.SqlGeral.ExecSQL;
    Result := True;
  except
    Result := False;
  end;
end;

function TPedidoControle.PesquisaPedidoProjeto(
  pNome: String): TPedidoControle;
begin
  FControle.sqlGeral.Close;
  FControle.sqlGeral.SQL.Clear;
  FControle.sqlGeral.SQL.ADD('select NOME_PROJETO, ');
  FControle.sqlGeral.SQL.ADD('ID_PESSOA, ');
  FControle.sqlGeral.SQL.ADD('PRECO_KG, ');
  FControle.sqlGeral.SQL.ADD('PESO, ');
  FControle.sqlGeral.SQL.ADD('VLR_DOBRA, ');
  FControle.sqlGeral.SQL.ADD('VLR_UNITARIO, ');
  FControle.sqlGeral.SQL.ADD('COMPRIMENTO, ');
  FControle.sqlGeral.SQL.ADD('LARGURA, ');
  FControle.sqlGeral.SQL.ADD('ESPESSURA, ');
  FControle.sqlGeral.SQL.ADD('ID_PRODUTO ');
  FControle.sqlGeral.SQL.ADD('from PEDIDO_PROJETO ');
  FControle.sqlGeral.SQL.ADD('Where NOME_PROJETO = ' + QuotedStr(pNome));
  FControle.sqlGeral.Open;

  if not FControle.sqlGeral.IsEmpty then
  begin
    Self.NomeProjeto  := FControle.sqlGeral.FieldByName('Nome_Projeto').AsString;
    Self.Id_Pessoa    := FControle.sqlGeral.FieldByName('Id_Pessoa').Asinteger;
    Self.Preco_Kg     := FControle.sqlGeral.FieldByName('Preco_KG').AsFloat;
    Self.Vlr_Dobra    := FControle.sqlGeral.FieldByName('Vlr_Dobra').AsFloat;
    Self.Vlr_Unitario := FControle.sqlGeral.FieldByName('Vlr_Unitario').AsFloat;
    Self.Comprimento  := FControle.sqlGeral.FieldByName('Comprimento').AsFloat;
    Self.Largura      := FControle.sqlGeral.FieldByName('Largura').AsFloat;
    Self.Espessura    := FControle.sqlGeral.FieldByName('Espessura').AsFloat;
    Self.Id_Produto   := FControle.sqlGeral.FieldByName('Id_Produto').AsInteger;
  end
  else
  begin
    Self.NomeProjeto  := '';
    Self.Id_Pessoa    := 0;
    Self.Preco_Kg     := 0;
    Self.Vlr_Dobra    := 0;
    Self.Vlr_Unitario := 0;
    Self.Comprimento  := 0;
    Self.Largura      := 0;
    Self.Espessura    := 0;
    Self.Id_Produto   := 0;
  end;


end;

end.
