unit uAcabadoProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, RxLookup, RxDBComb, Mask, uDmAcabado, rsDBUtils;

type
  TfAcabadoProcesso = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmAcabado: TDmAcabado;
  end;

var
  fAcabadoProcesso: TfAcabadoProcesso;

implementation

{$R *.dfm}

procedure TfAcabadoProcesso.BitBtn1Click(Sender: TObject);
begin
  fdmAcabado.cdsAcabadoProcesso.Post;
  Close;
end;

procedure TfAcabadoProcesso.BitBtn2Click(Sender: TObject);
begin
  fDmAcabado.cdsAcabadoProcesso.Cancel;
  Close;
end;

procedure TfAcabadoProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

end.
