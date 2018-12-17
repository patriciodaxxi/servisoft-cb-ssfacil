unit UCadSetor_Func;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadSetor, Mask, 
  db, RxDBComb, UCBase, StdCtrls, DBCtrls, ExtCtrls, RzTabs, DBGrids, ToolEdit, CurrEdit,
  NxCollection, RzPanel;

type
  TfrmCadSetor_Func = class(TForm)
    pnlCadastro: TPanel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnCalcula: TNxButton;
    btnCancelar: TNxButton;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadSetor: TDMCadSetor;
  end;

var
  frmCadSetor_Func: TfrmCadSetor_Func;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TfrmCadSetor_Func.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                             
  Action := Cafree;
end;

procedure TfrmCadSetor_Func.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadSetor);
end;

procedure TfrmCadSetor_Func.btnCalculaClick(Sender: TObject);
var
  vSalario, vEncargos: Currency;
begin
  vEncargos := 0;
  fDMCadSetor.cdsFolhaEncargo.Open;
  while not fDMCadSetor.cdsFolhaEncargo.Eof do
  begin
    vEncargos := vEncargos + fDMCadSetor.cdsFolhaEncargoVALOR_PERC.AsCurrency;
    fDMCadSetor.cdsFolhaEncargo.Next;
  end;
  fDMCadSetor.cdsFolhaEncargo.Close;

  vSalario := 0;
  fDMCadSetor.cdsFuncionario.First;
  while not fDMCadSetor.cdsFuncionario.Eof do
  begin
    vSalario := vSalario + fDMCadSetor.cdsFuncionarioVLR_SALARIO.AsCurrency * (1 + vEncargos / 100) *
                           fDMCadSetor.cdsFuncionarioHRSEMANAIS.AsCurrency * 4;
    fDMCadSetor.cdsFuncionario.Next;
  end;
  CurrencyEdit1.Value := vSalario;
end;

procedure TfrmCadSetor_Func.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
