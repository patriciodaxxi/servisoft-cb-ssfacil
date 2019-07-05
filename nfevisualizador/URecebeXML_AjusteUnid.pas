unit URecebeXML_AjusteUnid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmRecebeXML_AjusteUnid = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebeXML_AjusteUnid: TfrmRecebeXML_AjusteUnid;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmRecebeXML_AjusteUnid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACtion := Cafree;
end;

end.
