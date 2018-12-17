unit UCadCBarra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCBarra, Mask,
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, Menus;

type
  TfrmCadCBarra = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    Edit4: TEdit;
    SMDBGrid1: TSMDBGrid;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMCadCBarra: TDMCadCBarra;
    xNossoNum: Int64;
    vNossoNumero: String;
    vNossoNumero_Montado : String;
    procedure prc_Excluir_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadCBarra: TfrmCadCBarra;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadCBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCBarra.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCBarra.cdsCBarra.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCBarra.prc_Excluir_Registro;
begin
  fDMCadCBarra.prc_Excluir;
end;

procedure TfrmCadCBarra.FormShow(Sender: TObject);
begin
  fDMCadCBarra := TDMCadCBarra.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCBarra);
end;

procedure TfrmCadCBarra.prc_Consultar;
begin
  fDMCadCBarra.cdsCBarra_Consulta.Close;
  fDMCadCBarra.sdsCBarra_Consulta.CommandText := fDMCadCBarra.ctConsulta + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadCBarra.sdsCBarra_Consulta.CommandText := fDMCadCBarra.sdsCBarra_Consulta.CommandText + ' AND CBARRA LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadCBarra.cdsCBarra_Consulta.Open;
end;

procedure TfrmCadCBarra.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCBarra.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCBarra);
end;

procedure TfrmCadCBarra.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

end.
