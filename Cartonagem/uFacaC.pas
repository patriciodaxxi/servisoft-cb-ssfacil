unit uFacaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, uDmFaca, ExtCtrls, rsDBUtils, DB, DBTables, FMTBcd, DBClient, SqlExpr, Provider, Mask, DBCtrls;

type
  TfFacaC = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label39: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Shape4: TShape;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    fDmFaca: TdmFaca;
    ctConsFaca: String;
  public
    { Public declarations }
  end;

var
  fFacaC: TfFacaC;

implementation

uses uFaca, uFacaR;

{$R *.dfm}

procedure TfFacaC.BitBtn4Click(Sender: TObject);
begin
  fDmFaca.prc_Inserir;
  fDmFaca.cdsCartoFacaTIPO.AsString := '1';
  fDmFaca.cdsCartoFacaFD_COPIAS_C.AsInteger := 0;
  fDmFaca.cdsCartoFacaFD_COPIAS_L.AsInteger := 0;
  fDmFaca.cdsCartoFacaTP_COPIAS_C.AsInteger := 0;
  fDmFaca.cdsCartoFacaTP_COPIAS_L.AsInteger := 0;
  fDmFaca.cdsCartoFacaSP_COPIAS_C.AsInteger := 0;
  fDmFaca.cdsCartoFacaSP_COPIAS_L.AsInteger := 0;

  fFaca := TfFaca.Create(Self);
  fFaca.fdmFaca := fDmFaca;
  fFaca.ShowModal;

  BitBtn1.Click;
end;

procedure TfFacaC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmFaca.cdsFacaCons.IsEmpty then
    Exit;

  fDmFaca.prc_Localizar(fDmFaca.cdsFacaConsID.AsInteger);

  fDmFaca.cdsCartoFaca.Edit;
  fFaca := TfFaca.Create(Self);
  fFaca.fdmFaca := fDmFaca;
  fFaca.ShowModal;

  fDmFaca.cdsFacaCons.Close;
  fDmFaca.cdsFacaCons.Open;
end;

procedure TfFacaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  if fDmFaca.Owner.ClassName = Self.ClassName then
    FreeAndNil(fDmFaca);
  Action := caFree;
end;

procedure TfFacaC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmFaca) then
    fDmFaca := TDmFaca.Create(Self);
end;

procedure TfFacaC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmFaca);
  ctConsFaca := fDmFaca.sdsFacaCons.CommandText;
  fDmFaca.cdsFacaCons.IndexFieldNames := 'NOME';
end;

procedure TfFacaC.SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fdmFaca.cdsFacaConsSITUACAO.AsString = 'O' then
    Background := $0080FFFF;
  if fDmFaca.cdsFacaConsINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfFacaC.BitBtn1Click(Sender: TObject);
begin
  fDmFaca.cdsFacaCons.Close;
  fDmFaca.sdsFacaCons.CommandText := ctConsFaca;
  if not CheckBox3.Checked then
    fDmFaca.sdsFacaCons.CommandText := ctConsFaca + 'INATIVO = ''N''';

  if (not CheckBox1.Checked) and (CheckBox2.Checked) then
    fDmFaca.sdsFacaCons.CommandText := ctConsFaca + ' AND SITUACAO = ''O'''
  else
  if (CheckBox1.Checked) and (not CheckBox2.Checked) then
    fDmFaca.sdsFacaCons.CommandText := ctConsFaca + ' AND SITUACAO = ''P'''
  else
  if (CheckBox1.Checked) and (CheckBox2.Checked) then
    fDmFaca.sdsFacaCons.CommandText := ctConsFaca + ' AND (SITUACAO = ''P'' OR SITUACAO = ''O'')';
  fDmFaca.cdsFacaCons.Open;
end;

procedure TfFacaC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmFaca.prc_Excluir(fDmFaca.cdsFacaConsID.AsInteger);
    BitBtn1.Click;
  end;
end;

procedure TfFacaC.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  fFacaR := TfFacaR.Create(Self);
  fFacaR.fdmFaca := fDmFaca;
  fFacaR.RLReport1.Preview;
  FreeAndNil(fFacaR);
  SMDBGrid2.EnableScroll;
end;

end.
