unit uImprimir;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, USenha, Messages,
  Controls, Graphics;

  procedure prc_Cabecalho_Mat(Endereco : String);
  procedure prc_Detalhe_Mat(vDetalhe : String );
  procedure prc_Rodape_Mat;
  function fnc_Monta_Tamanho(Tamanho : Integer ; vDetalhe, Posicao, vCaracter : String ) : String; //Posicao = D  Direita    E=Esquerda

var
  vPagMatricial: Integer;
  vLinhaMatricial: Integer;
  FArq: TextFile;

implementation

uses DateUtils;

procedure prc_Cabecalho_Mat(Endereco : String);
var
  Texto1 : String;
  I : Integer;
begin
  vPagMatricial := vPagMatricial + 1;
  if vPagMatricial = 1 then
  begin
    vLinhaMatricial := 0;
    AssignFile(FArq,Endereco);
    ReWrite(FArq);
    Write(FArq,#15);
  end
  else
  if vPagMatricial > 1 then
  begin
    while vLinhaMatricial < 66 do
     begin
       vLinhaMatricial := vLinhaMatricial + 1;
       Writeln(fArq);
     end;
  end;
end;

procedure prc_Detalhe_Mat(vDetalhe : String ); //Posicao = D  Direita    E=Esquerda
begin
  Writeln(FArq,vDetalhe);
  vLinhaMatricial := vLinhaMatricial + 1;
end;

procedure prc_Rodape_Mat;
var
 i: Integer;
 Texto1, Texto2 : string;
begin
  while vLinhaMatricial < 66 do
  begin
    vLinhaMatricial := vLinhaMatricial + 1;
    Writeln(FArq);
  end;
  CloseFile(FArq);
end;

function fnc_Monta_Tamanho(Tamanho : Integer ; vDetalhe, Posicao, vCaracter : String ) : String; //Posicao = D  Direita    E=Esquerda
var
  i : Integer;
begin
  Result := '';
  for i := 1 to Tamanho - Length(vDetalhe) do
  begin
    if Posicao = 'E' then
      vDetalhe := vCaracter + vDetalhe
    else
      vDetalhe := vDetalhe + vCaracter;
  end;
  Result := vDetalhe;
end;

end.
