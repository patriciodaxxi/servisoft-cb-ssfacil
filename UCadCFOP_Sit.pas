unit UCadCFOP_Sit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCFOP, ExtCtrls, StdCtrls, NxCollection, Grids, DBGrids,
  SMDBGrid;

type
  TfrmCadCFOP_Sit = class(TForm)
    Panel1: TPanel;
    btnConsultar: TNxButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    SMDBGrid1: TSMDBGrid;
    btnAtivar: TNxButton;
    btnInativar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAtivarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnInativarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCFOP: TDMCadCFOP;
    procedure prc_Le_CFOP(Situacao: String);
  public
    { Public declarations }
  end;

var
  frmCadCFOP_Sit: TfrmCadCFOP_Sit;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadCFOP_Sit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadCFOP);
  Action := Cafree;
end;

procedure TfrmCadCFOP_Sit.prc_Le_CFOP(Situacao: String);
var
  vTexto: String;
begin
  vTexto := '';
  fDMCadCFOP.cdsCFOP.First;
  while not fDMCadCFOP.cdsCFOP.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if Situacao = 'A' then
      begin
        fDMCadCFOP.cdsCFOP.Edit;
        fDMCadCFOP.cdsCFOPINATIVO.AsString := 'N';
        fDMCadCFOP.cdsCFOP.Post;
        fDMCadCFOP.cdsCFOP.ApplyUpdates(0);
      end
      else
      begin
        if not fDMCadCFOP.fnc_Existe_CFOP then
        begin
          fDMCadCFOP.cdsCFOP.Edit;
          fDMCadCFOP.cdsCFOPINATIVO.AsString := 'S';
          fDMCadCFOP.cdsCFOP.Post;
          fDMCadCFOP.cdsCFOP.ApplyUpdates(0);
        end
        else
          vTexto := vTexto + '(' + fDMCadCFOP.cdsCFOPCODCFOP.AsString + ')';
      end;
    end;
    fDMCadCFOP.cdsCFOP.Next;
  end;
  if trim(vTexto) <> '' then
    MessageDlg('os código a seguir não foram inativados devido a já estarem sendo usados: ' + vTexto , mtInformation, [mbOK], 0)
  else
    MessageDlg('Processo confirmado!', mtInformation, [mbOK], 0);
end;

procedure TfrmCadCFOP_Sit.btnAtivarClick(Sender: TObject);
begin
  if MessageDlg('Deseja ativar CFOPs selecionadas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  prc_Le_CFOP('A');
end;

procedure TfrmCadCFOP_Sit.FormShow(Sender: TObject);
begin
  fDMCadCFOP := TDMCadCFOP.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCFOP);
end;

procedure TfrmCadCFOP_Sit.btnConsultarClick(Sender: TObject);
begin
  fDMCadCFOP.cdsCFOP.IndexFieldNames := 'CODCFOP';
  fDMCadCFOP.cdsCFOP.Close;
  fDMCadCFOP.sdsCFOP.CommandText := fDMCadCFOP.ctCommand + ' WHERE 0 = 0';
  case ComboBox1.ItemIndex of
    0: fDMCadCFOP.sdsCFOP.CommandText := fDMCadCFOP.sdsCFOP.CommandText + ' AND INATIVO = ' + QuotedStr('N');
    1: fDMCadCFOP.sdsCFOP.CommandText := fDMCadCFOP.sdsCFOP.CommandText + ' AND INATIVO = ' + QuotedStr('S');
  end;
  fDMCadCFOP.cdsCFOP.Open;
end;

procedure TfrmCadCFOP_Sit.btnInativarClick(Sender: TObject);
begin
  if MessageDlg('Deseja inativar CFOPs selecionadas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  prc_Le_CFOP('I');
end;

end.
