unit uFrmSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls,
  IniFiles, ShellAPI, FMTBcd, DB, SqlExpr;

type
  TfrmSobre = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Image1: TImage;
    SQLQuery1: TSQLQuery;
    SQLQuery1ID_RESP_SUPORTE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

uses UMenu, DmdDatabase;

{$R *.dfm}

procedure TfrmSobre.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Add('ServiSoft Informática Ltda.');
  Memo1.Lines.Add('www.servisoft.com.br');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Suporte:');

  SQLQuery1.Close;
  SQLQuery1.Open;

  if (SQLQuery1ID_RESP_SUPORTE.IsNull) or (SQLQuery1ID_RESP_SUPORTE.AsInteger <= 0) then
  begin
    //Memo1.Lines.Add(' CRI Consultoria');
    Memo1.Lines.Add('  Cleomar - Cel.: (51) 9942-0952');
    Memo1.Lines.Add('                  (51) 3598-6584');
  end
  else
    case SQLQuery1ID_RESP_SUPORTE.AsInteger of
      209: begin
             Memo1.Lines.Add('Fone: (51) 3598-6584');
             Memo1.Lines.Add(' Cleomar - Cel.: (51) 99942-0952');
             Memo1.Lines.Add('  Email: cleomar@servisoft.com.br');
             Memo1.Lines.Add('  Email: inacio@servisoft.com.br');
           end;
      175: begin
             //Memo1.Lines.Add(' CRI Consultoria');
             Memo1.Lines.Add('  Carlos - Cel.: (51) 99240-0477');
             Memo1.Lines.Add('                 (51) 3066-0477');
             Memo1.Lines.Add('                 (51) 3066-0577');
           end;
      90: begin
            Memo1.Lines.Add(' Mash Soluções - (51) 3111-0780/3111-0354');
            Memo1.Lines.Add('  Shala - Cel.: (51) 98203-7029');
            Memo1.Lines.Add('  Gonzaga - Cel.: (51) 99425-2929');
          end;
    end;

  //Memo1.Lines.Add('');
  //Memo1.Lines.Add('Financeiro:');
  //Memo1.Lines.Add('Fone: (51) 3598-6584');
  //Memo1.Lines.Add('Email: financeiro@servisoft.com.br');

{
  While not cdsSuporte.Eof do
  begin
    while not cdsSuporteItem.Eof do
    begin
      cdsSuporteItem.Next;
    end;
    cdsSuporte.Next;
  end;
}

  Memo1.Lines.Add('');
  Memo1.Lines.Add('Versão: ' + fMenu.vVersao);
end;

//http://www.planetadelphi.com.br/artigo/143/atualizacao-pratica-de-seus-aplicativos/

procedure TfrmSobre.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
