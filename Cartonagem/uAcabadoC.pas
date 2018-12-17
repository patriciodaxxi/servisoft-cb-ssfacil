unit uAcabadoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  uDmAcabado, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfAcabadoC = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    fDmAcabado: TDmAcabado;
    ctConsAcabado: String;
  public
    { Public declarations }
  end;

var
  fAcabadoC: TfAcabadoC;

implementation

uses uAcabado, SqlExpr, uDmDatabase;

{$R *.dfm}

procedure TfAcabadoC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfAcabadoC.BitBtn4Click(Sender: TObject);
begin
  fDmAcabado.cdsProduto.Open;
  fAcabado := TfAcabado.Create(Self);
  fAcabado.fDmAcabado := fDmAcabado;
  fDmAcabado.cdsProduto.Insert;
//  fDmAcabado.cdsAcabadoID.AsInteger := fDmAcabado.cdsProdutoID.AsInteger;
  fAcabado.ShowModal;
  BitBtn1Click(Sender);
end;

procedure TfAcabadoC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmAcabado) then
    fDmAcabado := TDmAcabado.Create(Self);
  ctConsAcabado := fDmAcabado.sdsAcabadoCons.CommandText;
end;

procedure TfAcabadoC.BitBtn1Click(Sender: TObject);
begin
  fDmAcabado.cdsAcabadoCons.Close;
  if not CheckBox1.Checked then
    fDmAcabado.sdsAcabadoCons.CommandText := ctConsAcabado
  else
    fDmAcabado.sdsAcabadoCons.CommandText := ctConsAcabado + ' WHERE INATIVO <> ''S''';
  fDmAcabado.cdsAcabadoCons.Open;
end;

procedure TfAcabadoC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmAcabado);
  BitBtn1.Click;
end;

procedure TfAcabadoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fdmAcabado.cdsAcabadoCons.IsEmpty then
    Exit;

  fDmAcabado.prc_Localizar(fDmAcabado.cdsAcabadoConsID.AsInteger);
  fAcabado := TfAcabado.Create(Self);
  fAcabado.fDmAcabado := fDmAcabado;
  fDmAcabado.cdsProduto.Edit;
  fAcabado.ShowModal;
  BitBtn1Click(Sender);
end;

procedure TfAcabadoC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmAcabado.prc_Localizar(fDmAcabado.cdsAcabadoConsID.AsInteger);
    fDmAcabado.cdsProduto.Delete;
    fDmAcabado.cdsProduto.ApplyUpdates(0);
    BitBtn1Click(Sender);
  end;
end;

end.
