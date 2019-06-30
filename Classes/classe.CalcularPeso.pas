unit classe.CalcularPeso;

interface

uses SysUtils;

type
  TCalcluar_Peso = class
  private
    FEspessura: Real;
    FLargura: Real;
    FComprimento: Real;
    FFatorCalculo: Real;
    FValorUnitario: Real;
    FPrecoKG: Real;
    FPeso: Real;
    FValorTotal: Real;
    FValorDobra: Real;
    FQuantidade: Real;
  public
    property Espessura : Real read FEspessura write FEspessura;
    property Largura   : Real read FLargura write FLargura;
    property Comprimento : Real read FComprimento write FComprimento;
    property FatorCalculo : Real read FFatorCalculo write FFatorCalculo;
    property ValorUnitario : Real read FValorUnitario write FValorUnitario;
    property PrecoKG : Real read FPrecoKG write FPrecoKG;
    property Peso : Real read FPeso write FPeso;
    property ValorTotal : Real read FValorTotal write FValorTotal;
    property ValorDobra : Real read FValorDobra write FValorDobra;
    property Quantidade : Real read FQuantidade write FQuantidade;
    constructor Create;
    function CalcularPeso : Real;
    function CalcularVlrUnitario : Real;
    function CalcularVlrTotal : Real;

  published
  end;

implementation

function TCalcluar_Peso.CalcularPeso: Real;
begin
  Peso := 0;
  Peso := (FComprimento + 10) * (FLargura + 10)
              * FEspessura * 8;
  if Peso > 0 then
  begin
    Peso := (Peso / 1000000);
  end;
  if (FFatorCalculo > 0) and (Peso > 0) then
  begin
    Peso := Peso + ((Peso * FFatorCalculo) / 100);
  end;
end;

function TCalcluar_Peso.CalcularVlrTotal : Real;
begin
  FValorTotal := StrToFloat(FormatFloat('0.00',(FValorUnitario * FQuantidade)));
end;

function TCalcluar_Peso.CalcularVlrUnitario: Real;
begin
  FValorUnitario := StrToFloat(FormatFloat('0.00',(FvalorDobra + (Fpeso * FPrecoKG))));
end;

constructor TCalcluar_Peso.Create;
begin
  FEspessura    := 0;
  FLargura      := 0;
  FComprimento  := 0;
  FFatorCalculo := 0;
end;

end.
