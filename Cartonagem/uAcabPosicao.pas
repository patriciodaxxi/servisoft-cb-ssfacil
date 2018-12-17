unit uAcabPosicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmAcabPosicao, Dialogs, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb;

type
  TfAcabPosicao = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmAcabPosicao: TDmAcabPosicao;
  end;

var
  fAcabPosicao: TfAcabPosicao;

implementation

{$R *.dfm}

procedure TfAcabPosicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfAcabPosicao.BitBtn1Click(Sender: TObject);
begin
  fDmAcabPosicao.cdsAcabPosicao.Post;
  fDmAcabPosicao.cdsAcabPosicao.ApplyUpdates(0);
  Close;
end;

procedure TfAcabPosicao.BitBtn2Click(Sender: TObject);
begin
  fDmAcabPosicao.cdsAcabPosicao.Cancel;
  Close;
end;

procedure TfAcabPosicao.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmAcabPosicao);
end;

end.
