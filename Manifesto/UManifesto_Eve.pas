unit UManifesto_Eve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, DBCtrls, UDMManifesto,
  ExtCtrls, NxCollection, ShellApi;

type
  TfrmManifesto_Eve = class(TForm)
    SMDBGrid1: TSMDBGrid;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnFazenda: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFazendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     fDMManifesto: TDMManifesto;
  end;

var
  frmManifesto_Eve: TfrmManifesto_Eve;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfrmManifesto_Eve.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmManifesto_Eve.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMManifesto);
end;

procedure TfrmManifesto_Eve.btnFazendaClick(Sender: TObject);
var
  vTexto : String;
begin
  vTexto := 'http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=' + Edit1.Text;
  //ShellExecute(Handle,'open','http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=',nil,nil,SW_SHOW);
  ShellExecute(Handle,'open', pChar(vTexto) ,nil,nil,SW_SHOW);

end;

end.
