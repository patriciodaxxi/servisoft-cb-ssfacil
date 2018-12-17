unit uGrava_Erro;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, USenha, Messages,
  Controls, Graphics;

  procedure prc_Gravar(Tabela,Form,Erro,Data,Hora : String);

implementation

procedure prc_Gravar(Tabela,Form,Erro,Data,Hora : String);
var
  vAux : Integer;
  sds: TSQLDataSet;
begin
  vAux := dmDatabase.ProximaSequencia('ERROS',0);

  sds     := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'INSERT INTO ERROS (ID, TABELA, FORM, ERRO, DATA, HORA)'
                     + 'VALUES ('
                     + IntToStr(vAux)
                     + ',' + QuotedStr(Tabela)
                     + ',' + QuotedStr(Form)
                     + ',' + QuotedStr(Erro)
                     + ',' + QuotedStr(Data)
                     + ',' + QuotedStr(Hora)
                     + ');';
  sds.ExecSQL;
end;

end.
