unit UConsNotas_ES_SelCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, DB, DBClient, ExtCtrls, NxCollection,
  FMTBcd, SqlExpr, UDMConsNotas_ES, RzPanel, StdCtrls;

type
  TfrmConsNotas_ES_SelCli = class(TForm)
    gbxConsulta: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    gbxSelecionados: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsNotas_ES: TDMConsNotas_ES;
    vTipo_Consulta : Integer;
    
  end;

var
  frmConsNotas_ES_SelCli: TfrmConsNotas_ES_SelCli;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils;

{$R *.dfm}

procedure TfrmConsNotas_ES_SelCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotas_ES_SelCli.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotas_ES);
end;

procedure TfrmConsNotas_ES_SelCli.SMDBGrid2DblClick(Sender: TObject);
begin
  if fDMConsNotas_ES.mCliente_SelID.AsInteger > 0 then
    fDMConsNotas_ES.mCliente_Sel.Delete;
end;

procedure TfrmConsNotas_ES_SelCli.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDMConsNotas_ES.cdsPessoaCODIGO.AsInteger > 0 then
  begin
    if not fDMConsNotas_ES.mCliente_Sel.Locate('ID',fDMConsNotas_ES.cdsPessoaCODIGO.AsInteger,([Locaseinsensitive])) then
    begin
      fDMConsNotas_ES.mCliente_Sel.Insert;
      fDMConsNotas_ES.mCliente_SelID.AsInteger  := fDMConsNotas_ES.cdsPessoaCODIGO.AsInteger;
      fDMConsNotas_ES.mCliente_SelNome.AsString := fDMConsNotas_ES.cdsPessoaNOME.AsString;
      fDMConsNotas_ES.mCliente_Sel.Post;
    end;
  end;
end;

end.
