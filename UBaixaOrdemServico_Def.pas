unit UBaixaOrdemServico_Def;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, NxCollection,
  ExtCtrls, RzPanel, StdCtrls, DBCtrls, DB;

type
  TfrmBaixaOrdemServico_Def = class(TForm)
    Panel5: TPanel;
    btnConfBaixa: TNxButton;
    NxButton4: TNxButton;
    RzGroupBox3: TRzGroupBox;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmBaixaOrdemServico_Def: TfrmBaixaOrdemServico_Def;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmBaixaOrdemServico_Def.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmBaixaOrdemServico_Def.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;
  DBMemo1.SetFocus;
end;

procedure TfrmBaixaOrdemServico_Def.btnConfBaixaClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  Close;
end;

procedure TfrmBaixaOrdemServico_Def.NxButton4Click(Sender: TObject);
begin
  Close;
end;

end.
