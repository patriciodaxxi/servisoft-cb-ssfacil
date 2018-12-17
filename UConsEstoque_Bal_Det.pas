unit UConsEstoque_Bal_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsEstoque, Grids, DBGrids, SMDBGrid, DBCtrls, StdCtrls,
  ExtCtrls, DB, Mask, ToolEdit, CurrEdit, Buttons;

type
  TfrmConsEstoque_Bal_Det = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsEstoque: TDMConsEstoque;
    vMostrar : Boolean; 
    
  end;

var
  frmConsEstoque_Bal_Det: TfrmConsEstoque_Bal_Det;

implementation

uses rsDBUtils, UAltEstoque_Mov;

{$R *.dfm}

procedure TfrmConsEstoque_Bal_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoque_Bal_Det.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
  Label3.Visible        := vMostrar;
  CurrencyEdit1.Visible := vMostrar;
end;

procedure TfrmConsEstoque_Bal_Det.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmAltEstoque_Mov: TfrmAltEstoque_Mov;
  vIDAux : Integer;
begin
  if fDMConsEstoque.qParametros_UsuarioALT_ESTOQUE_MOV.AsString <> 'S' then
    exit;
  if not(fDMConsEstoque.cdsEstoque_Mov.Active) or (fDMConsEstoque.cdsEstoque_Mov.IsEmpty) then
    exit;

  vIDAux := fDMConsEstoque.cdsEstoque_MovID.AsInteger;
  ffrmAltEstoque_Mov := TfrmAltEstoque_Mov.Create(self);
  ffrmAltEstoque_Mov.vID_Estoque_Mov_Local := fDMConsEstoque.cdsEstoque_MovID.AsInteger;
  ffrmAltEstoque_Mov.Label2.Caption := fDMConsEstoque.cdsEstoque_MovREFERENCIA.AsString;
  ffrmAltEstoque_Mov.Label4.Caption := fDMConsEstoque.cdsEstoque_MovNOMEPRODUTO.AsString;
  ffrmAltEstoque_Mov.Label6.Caption := fDMConsEstoque.cdsEstoque_MovNOME_LOCAL.AsString;
  if CurrencyEdit1.Visible then
    ffrmAltEstoque_Mov.vPreco_Local := CurrencyEdit1.Value
  else
    ffrmAltEstoque_Mov.vPreco_Local := 0;
  ffrmAltEstoque_Mov.ShowModal;
  FreeAndNil(ffrmAltEstoque_Mov);

  if vIDAux > 0 then
    fDMConsEstoque.cdsEstoque_Mov.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmConsEstoque_Bal_Det.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    Label3.Visible  := not(Label3.Visible);
    CurrencyEdit1.Visible := not(CurrencyEdit1.Visible);
  end;
end;

procedure TfrmConsEstoque_Bal_Det.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) and (CurrencyEdit1.Visible) then
    CurrencyEdit1.Value := fDMConsEstoque.cdsEstoque_MovVLR_UNITARIO.AsFloat;
end;

end.
