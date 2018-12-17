unit UConsProduto_Sem_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, UDMConsPedido, UCBase, Mask, ToolEdit, RzButton, NxCollection;

type
  TfrmConsProduto_Sem_Ped = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsProduto_Sem_Ped: TfrmConsProduto_Sem_Ped;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, StrUtils;

{$R *.dfm}

procedure TfrmConsProduto_Sem_Ped.btnConsultarClick(Sender: TObject);
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data de início da verificação não informada!', mtError, [mbOk], 0);
    Exit;
  end;
  prc_Consultar;
  Panel2.Visible := False;
  Panel2.Refresh;
  Refresh;
end;

procedure TfrmConsProduto_Sem_Ped.prc_Consultar;
begin
  Panel2.Visible := True;
  Panel2.Refresh;
  fDMConsPedido.cdsProduto_Sem_Venda.Close;
  Refresh;
  fDMConsPedido.sdsProduto_Sem_Venda.ParamByName('data').AsDate := DateEdit1.Date;
  fDMConsPedido.cdsProduto_Sem_Venda.Open;
end;

procedure TfrmConsProduto_Sem_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsProduto_Sem_Ped.FormShow(Sender: TObject);
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
end;

procedure TfrmConsProduto_Sem_Ped.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsProduto_Sem_Venda.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsProduto_Sem_Ped.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Produto_Sem_Ped.fr3';
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsPedido.frxReport1.variables['Opcao_Imp'] := QuotedStr(DateEdit1.Text);
  fDMConsPedido.frxReport1.ShowReport;
end;

end.
