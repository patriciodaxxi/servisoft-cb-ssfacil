unit USel_ProdNaoLib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, UDMProg_Terc, ExtCtrls, StdCtrls,
  NxCollection, Grids, DBGrids, SMDBGrid, StrUtils;

type
  TfrmSel_ProdNaoLib = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnConsultar: TNxButton;
    Edit2: TEdit;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    procedure prc_Consultar;
    
  public
    { Public declarations }
    fDMProg_Terc: TDMProg_Terc;


  end;

var
  frmSel_ProdNaoLib: TfrmSel_ProdNaoLib;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_ProdNaoLib.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_ProdNaoLib.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMProg_Terc);
end;

procedure TfrmSel_ProdNaoLib.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_ProdNaoLib.prc_Consultar;
var
  vComando, vComandoAux : String;
  i : Integer;
  vTexto : String;
begin
  fDMProg_Terc.cdsProdNaoLib.Close;
  i := Posex('group',fDMProg_Terc.ctProdNaoLib);
  vComando := copy(fDMProg_Terc.ctProdNaoLib,1,i-1);
  vComandoAux := copy(fDMProg_Terc.ctProdNaoLib,i,Length(fDMProg_Terc.ctProdNaoLib)-i);
  vTexto := '';
  if trim(Edit1.Text) <> '' then
    vTexto := trim(Edit1.Text);
  if trim(Edit2.Text) <> '' then
    vTexto := vTexto + '%' + trim(Edit2.Text);
  if trim(Edit3.Text) <> '' then
    vTexto := vTexto + '%' + trim(Edit3.Text);
  if trim(vTexto) <> '' then
    vComando := vComando + ' AND i.nomeproduto like ' + QuotedStr('%'+vTexto+'%');
  fDMProg_Terc.sdsProdNaoLib.CommandText := vComando + vComandoAux;
  fDMProg_Terc.cdsProdNaoLib.Open;
end;

procedure TfrmSel_ProdNaoLib.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(fDMProg_Terc.cdsProdNaoLib.Active) or (fDMProg_Terc.cdsProdNaoLib.IsEmpty) then
    exit;
  uUtilPadrao.vCodProduto_Pos := fDMProg_Terc.cdsProdNaoLibID_PRODUTO.AsInteger;
  Close;
end;

procedure TfrmSel_ProdNaoLib.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if Trim(Edit1.Text) <> '' then
      prc_Consultar;
    Edit2.SetFocus;
  end;
end;

procedure TfrmSel_ProdNaoLib.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if trim(Edit2.Text) <> '' then
      prc_Consultar;
    Edit3.SetFocus;
  end;
end;

procedure TfrmSel_ProdNaoLib.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

end.
