unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  TimeZone: TTimeZoneInformation;
  vAux : String;
  vHorarioVerao : Boolean;
begin
  GetTimeZoneInformation(TimeZone);
  vaux := FormatFloat('00', TimeZone.Bias div -60) + ':00';
  Edit1.Text := vAux;

  vHorarioVerao := GetTimeZoneInformation(TimeZone) = TIME_ZONE_ID_DAYLIGHT;
  if vHorarioVerao then
    Edit2.Text := 'Sim'
  else
    Edit2.Text := 'Não';



end;

end.
