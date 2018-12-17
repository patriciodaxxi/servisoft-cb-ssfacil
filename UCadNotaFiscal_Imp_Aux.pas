unit UCadNotaFiscal_Imp_Aux;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal, StdCtrls, Buttons,
  RxLookup, DBCtrls, DB, Mask, Grids, DBGrids, SMDBGrid;

type
  TfrmCadNotaFiscal_Imp_Aux = class(TForm)
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
  end;

var
  frmCadNotaFiscal_Imp_Aux: TfrmCadNotaFiscal_Imp_Aux;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Imp_Aux.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    //fDMCadNotaFiscal.cdsNotaFiscal_Itens.CancelUpdates;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Imp_Aux.FormShow(Sender: TObject);
var
  i : Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Imp_Aux.BitBtn4Click(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Cancel;
  Close;
end;

procedure TfrmCadNotaFiscal_Imp_Aux.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender);
end;

procedure TfrmCadNotaFiscal_Imp_Aux.BitBtn2Click(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir os dados da importação?',mtWarning,[mbOK,mbNO],0) = mrNO then
    exit;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Delete;
end;

procedure TfrmCadNotaFiscal_Imp_Aux.BitBtn1Click(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Post;
  Close;
end;

procedure TfrmCadNotaFiscal_Imp_Aux.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  vFlag: Boolean;
begin
  vFlag := True;
  fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Eof do
  begin
    vFlag := not(fDMCadNotaFiscal.fnc_Erro_Imp_Aux);
    if not vFlag then
      fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Last;
    fDMCadNotaFiscal.cdsNotaFiscal_Imp_Aux.Next;
  end;
  CanClose := vFlag;
end;

end.
