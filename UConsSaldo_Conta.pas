unit UConsSaldo_Conta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadFinanceiro,
  StdCtrls, Buttons, Mask, RxDBComb, CurrEdit, Grids, SMDBGrid, DBGrids,
  NxCollection;

type
  TfrmConsSaldo_Conta = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadFinanceiro : TDMCadFinanceiro;

  public
    { Public declarations }

  end;

var
  frmConsSaldo_Conta: TfrmConsSaldo_Conta;

implementation

uses rsDBUtils, uUtilPadrao, UDMUtil, DmdDatabase;

{$R *.dfm}

procedure TfrmConsSaldo_Conta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsSaldo_Conta.FormShow(Sender: TObject);
begin
  fDMCadFinanceiro := TDMCadFinanceiro.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFinanceiro);
end;

procedure TfrmConsSaldo_Conta.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;


procedure TfrmConsSaldo_Conta.btnConsultarClick(Sender: TObject);
begin
  fDMCadFinanceiro.cdsSaldo.Close;
  fDMCadFinanceiro.cdsSaldo.Open;
  fDMCadFinanceiro.cdsSaldo.IndexFieldNames := 'NOME_CONTA';
end;

procedure TfrmConsSaldo_Conta.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadFinanceiro.cdsSaldo.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
