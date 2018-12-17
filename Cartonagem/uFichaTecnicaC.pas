unit uFichaTecnicaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, ExtCtrls, uDmFichaTecnica, rsDBUtils, DB, DBTables, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfFichaTecnicaC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    procedure BitBtn4Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDmFichaTecnica: TDmFichaTecnica;
    ctConsFicha: String;
  public
    { Public declarations }
  end;

var
  fFichaTecnicaC: TfFichaTecnicaC;

implementation

uses uFichaTecnica;

{$R *.dfm}

procedure TfFichaTecnicaC.BitBtn4Click(Sender: TObject);
begin
  fDmFichaTecnica.prc_Inserir;
  fDmFichaTecnica.cdsCartoFTInativo.AsString := 'N';

  fFichaTecnica := TfFichaTecnica.Create(Self);
  fFichaTecnica.fDmFichaTecnica := fDmFichaTecnica;

  fFichaTecnica.ShowModal;
  fDmFichaTecnica.cdsCartoFTCons.Close;
  fDmFichaTecnica.cdsCartoFTCons.Open;
end;

procedure TfFichaTecnicaC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmFichaTecnica.cdsCartoFTCons.IsEmpty then
    Exit;

  fDmFichaTecnica.prc_Localizar(fDmFichaTecnica.cdsCartoFTConsID.AsInteger);
  fDmFichaTecnica.cdsCartoFT.Edit;

  fFichaTecnica := TfFichaTecnica.Create(Self);
  fFichaTecnica.fDmFichaTecnica := fDmFichaTecnica;
  fFichaTecnica.ShowModal;

  fDmFichaTecnica.cdsCartoFTCons.Close;
  fDmFichaTecnica.cdsCartoFTCons.Open;
end;

procedure TfFichaTecnicaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  if fDmFichaTecnica.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmFichaTecnica);
  Action := caFree;
end;

procedure TfFichaTecnicaC.FormCreate(Sender: TObject);
begin
   fDmFichaTecnica := TDmFichaTecnica.Create(Self);
  ctConsFicha := fDmFichaTecnica.sdsCartoFTCons.CommandText;
end;

procedure TfFichaTecnicaC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmFichaTecnica.prc_Excluir(fDmFichaTecnica.cdsCartoFTConsID.AsInteger);
    BitBtn1.Click;
  end;
end;

procedure TfFichaTecnicaC.BitBtn3Click(Sender: TObject);
//var
//  vCod: Integer;
begin
{  vCod := fDmFichaTecnica.cdsProdutoCODIGO.AsInteger;
  fProdutoCartoR := TfProdutoCartoR.Create(Self);
  fProdutoCartoR.DmFichaTecnica := fDmFichaTecnica;
  fProdutoCartoR.RLReport1.Preview;
  fDmFichaTecnica.cdsProduto.Close;
  fDmFichaTecnica.cdsProduto.Open;
  fDmFichaTecnica.cdsProduto.IndexFieldNames := 'CODIGO';
  fDmFichaTecnica.cdsProduto.FindKey([vCod]);}
end;

procedure TfFichaTecnicaC.BitBtn1Click(Sender: TObject);
begin
  fDmFichaTecnica.cdsCartoFTCons.Close;
  if not CheckBox3.Checked then
    fDmFichaTecnica.sdsCartoFTCons.CommandText := ctConsFicha + ' AND INATIVO = ''N''';

  if (not CheckBox1.Checked) and (CheckBox2.Checked) then
    fDmFichaTecnica.sdsCartoFTCons.CommandText := ctConsFicha + ' AND SITUACAO = ''O'''
  else
  if (CheckBox1.Checked) and (not CheckBox2.Checked) then
    fDmFichaTecnica.sdsCartoFTCons.CommandText := ctConsFicha + ' AND SITUACAO = ''P'''
  else
  if (CheckBox1.Checked) and (CheckBox2.Checked) then
    fDmFichaTecnica.sdsCartoFTCons.CommandText := ctConsFicha + ' AND (SITUACAO = ''P'' OR SITUACAO = ''O'')';
  fDmFichaTecnica.cdsCartoFTCons.Open;
end;

procedure TfFichaTecnicaC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmFichaTecnica.cdsCartoFTConsSITUACAO.AsString = 'O' then
    Background := $0080FFFF;
  if fDmFichaTecnica.cdsCartoFTConsINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

end.
