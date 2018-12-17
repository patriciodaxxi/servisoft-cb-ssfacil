unit uErro;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, DateUtils, Variants, DBClient, DB;

  procedure prc_Gravar_Erro(nTabela,nForm,Erro : WideString);

implementation

procedure prc_Gravar_Erro(nTabela,nForm,Erro : WideString);
var
  sds: TSQLDataSet;
  vIDAux : Integer;
begin
  sds := TSQLDataSet.Create(nil);

  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata  := True;
  sds.GetMetadata := False;

  vIDAux := dmDatabase.ProximaSequencia('ERROS',0);

  sds.CommandText := 'INSERT INTO ERROS (ID, TABELA, FORM, ERRO, DATA, HORA)'
                   //+ ' VALUES (' + IntToStr(vIDAux) + ',' + nTabela +','+ nForm +',' + Erro + ',:DATA,:HORA)';
                   + ' VALUES (:ID,:TABELA,:FORM,:ERRO,:DATA,:HORA)';
  sds.ParamByName('ID').AsInteger    := vIDAux;
  sds.ParamByName('TABELA').AsString := nTabela;
  sds.ParamByName('FORM').AsString   := nForm;
  sds.ParamByName('ERRO').AsString   := Erro;
  sds.ParamByName('DATA').AsString   := FormatDateTime('DD/MM/YYYY',Date);
  sds.ParamByName('HORA').AsString   := FormatDateTime('HH:MM:SS',Now);
  sds.ExecSQL;
  FreeAndNil(sds);
end;

end.
