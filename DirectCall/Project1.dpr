program Project1;

uses
  Forms,
  ApiDirectcallTeste in 'ApiDirectcallTeste.dpr' {Form1},
  ApiDirectcall in 'ApiDirectcall.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
