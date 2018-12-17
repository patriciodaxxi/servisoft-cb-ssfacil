unit uFacaPDF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, OleCtrls,
  Buttons, ToolEdit, uDmFaca, db, ExtCtrls, ShellApi;

type
  TfFacaPdf = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    FilenameEdit1: TFilenameEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fdmFaca: TDmFaca;
  end;

var
  fFacaPdf: TfFacaPdf;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfFacaPdf.BitBtn1Click(Sender: TObject);
begin
  if fdmFaca.cdsCartoFaca.State in [dsBrowse] then
    fdmFaca.cdsCartoFaca.Edit;
  case Tag of
    1: fdmFaca.cdsCartoFacaARQUIVO_FD.AsString := FilenameEdit1.Text;
    2: fdmFaca.cdsCartoFacaARQUIVO_TP.AsString := FilenameEdit1.Text;
    3: fdmFaca.cdsCartoFacaARQUIVO_SP.AsString := FilenameEdit1.Text;
  end;
  if FilenameEdit1.Text <> '' then
  begin
    if (fileExists(FilenameEdit1.Text)) then
      ShellExecute(Handle, nil, Pchar(FilenameEdit1.Text), nil, nil, SW_SHOWNORMAL);
  end; //    FoxitCtl2.OpenFile(FileNameEdit1.Text);
end;

procedure TfFacaPdf.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmFaca);
end;

procedure TfFacaPdf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

end.
