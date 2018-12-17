unit USel_Unidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, RxLookup;

type
  TfrmSel_Unidade = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    sdsProduto_Uni: TSQLDataSet;
    cdsProduto_Uni: TClientDataSet;
    dspProduto_Uni: TDataSetProvider;
    StaticText1: TStaticText;
    mUnidade: TClientDataSet;
    mUnidadeUnidade: TStringField;
    mUnidadeQtd_Conv: TFloatField;
    mUnidadeNome: TStringField;
    dsmUnidade: TDataSource;
    cdsProduto_UniUNIDADE_CONV: TStringField;
    cdsProduto_UniQTD: TFloatField;
    cdsProduto_UniNOME: TStringField;
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;

  public
    { Public declarations }
    vID_Produto_Uni : Integer;
    vUnidade_Ori : String;

  end;

var
  frmSel_Unidade: TfrmSel_Unidade;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Unidade.prc_Consultar;
begin
  cdsProduto_Uni.Close;
  sdsProduto_Uni.ParamByName('ID').AsInteger := vID_Produto_Uni;
  cdsProduto_Uni.Open;
  mUnidade.EmptyDataSet;
  cdsProduto_Uni.First;
  mUnidade.Insert;
  mUnidadeNome.AsString    := 'ORIGINAL';
  mUnidadeQtd_Conv.AsFloat := StrToFloat(FormatFloat('0.0000',1));
  mUnidadeUnidade.AsString := vUnidade_Ori;
  mUnidade.Post;
  while not cdsProduto_Uni.Eof do
  begin
    mUnidade.Insert;
    mUnidadeNome.AsString    := cdsProduto_UniNOME.AsString;
    mUnidadeQtd_Conv.AsFloat := StrToFloat(FormatFloat('0.0000',cdsProduto_UniQTD.AsFloat));
    mUnidadeUnidade.AsString := cdsProduto_UniUNIDADE_CONV.AsString;
    mUnidade.Post;
    cdsProduto_Uni.Next;
  end;
end;

procedure TfrmSel_Unidade.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vUnidade_Pos    := mUnidadeUnidade.AsString;
    vQtd_Pacote_Pos := StrToFloat(FormatFloat('0.0000',mUnidadeQtd_Conv.AsFloat));
    Close;
  end;
end;

procedure TfrmSel_Unidade.SMDBGrid1DblClick(Sender: TObject);
begin
  vUnidade_Pos    := mUnidadeUnidade.AsString;
  vQtd_Pacote_Pos := StrToFloat(FormatFloat('0.0000',mUnidadeQtd_Conv.AsFloat));
  Close;
end;

procedure TfrmSel_Unidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action         := Cafree;
end;

procedure TfrmSel_Unidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Unidade.FormShow(Sender: TObject);
begin
  prc_Consultar;
end;

end.
