unit UConsMaterial_Sem_Mov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient,  UCBase, Mask, ToolEdit, RzButton, NxCollection, UDMConsEstoque,
  DBCtrls;

type
  TfrmConsMaterial_Sem_Mov = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;
    ColunaOrdenada: String;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsMaterial_Sem_Mov: TfrmConsMaterial_Sem_Mov;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, StrUtils;

{$R *.dfm}

procedure TfrmConsMaterial_Sem_Mov.btnConsultarClick(Sender: TObject);
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data de início da verificação não informada!', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    Exit;
  end;
  if ComboBox1.ItemIndex < 0 then
  begin
    MessageDlg('*** Tipo Registro não informado!', mtError, [mbOk], 0);
    ComboBox1.SetFocus;
    Exit;
  end;
  prc_Consultar;
  Panel2.Visible := False;
  Panel2.Refresh;
  Refresh;
end;

procedure TfrmConsMaterial_Sem_Mov.prc_Consultar;
begin
  Panel2.Visible := True;
  Panel2.Refresh;
  fDMConsEstoque.cdsMaterial_Sem_Mov.Close;
  Refresh;
  case ComboBox1.ItemIndex of
    0 : fDMConsEstoque.sdsMaterial_Sem_Mov.ParamByName('TIPO_REG').AsString := 'M';
    1 : fDMConsEstoque.sdsMaterial_Sem_Mov.ParamByName('TIPO_REG').AsString := 'S';
  end;
  fDMConsEstoque.sdsMaterial_Sem_Mov.ParamByName('data').AsDate := DateEdit1.Date;
  fDMConsEstoque.cdsMaterial_Sem_Mov.Open;
end;

procedure TfrmConsMaterial_Sem_Mov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMaterial_Sem_Mov.FormShow(Sender: TObject);
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  SMDBGrid1.DataSource := fDMConsEstoque.dsMaterial_Sem_Mov;
end;

procedure TfrmConsMaterial_Sem_Mov.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsEstoque.cdsMaterial_Sem_Mov.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsMaterial_Sem_Mov.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Material_Sem_Mov.fr3';
  if FileExists(vArq) then
    fDMConsEstoque.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsEstoque.frxReport1.variables['Opcao_Imp'] := QuotedStr(DateEdit1.Text);
  fDMConsEstoque.frxReport1.variables['Tipo_Reg']  := QuotedStr(ComboBox1.Text);
  fDMConsEstoque.frxReport1.ShowReport;
end;

end.
