unit uAcabado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmAcabado, Dialogs, StdCtrls, Buttons, db,
  ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb, RxLookup, Grids, DBGrids, SMDBGrid, uDmConsulta,
  ComCtrls;

type
  TfAcabado = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    fDmConsulta: TDmConsulta;
  public
    { Public declarations }
    fDmAcabado: TDmAcabado;
  end;

var
  fAcabado: TfAcabado;

implementation

uses uConsulta;

{$R *.dfm}

procedure TfAcabado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfAcabado.BitBtn1Click(Sender: TObject);
begin
//  fDmAcabado.cdsAcabadoFACA.AsString := RxDBLookupCombo1.Text;
//  fDmAcabado.cdsAcabadoFICHA_TECNICA.AsString := RxDBLookupCombo2.Text;
  fDmAcabado.cdsProduto.Post;
  fDmAcabado.prc_Gravar;
  fDmAcabado.cdsAcabado.Close;
  fDmAcabado.sdsAcabado.Close;
  Close;
end;

procedure TfAcabado.BitBtn2Click(Sender: TObject);
begin
  fDmAcabado.cdsAcabado.Cancel;
  fDmAcabado.cdsAcabado.Close;
  fDmAcabado.sdsAcabado.Close;
  Close;
end;

procedure TfAcabado.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmAcabado);
  oDBUtils.OpenTables(True,Self);
  PageControl1.ActivePageIndex := 0;
end;

procedure TfAcabado.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmAcabado.cdsAcabado.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

procedure TfAcabado.RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsPasta.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsPasta;
    fConsulta.ShowModal;
    RxDBLookupCombo3.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfAcabado.RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsFaca.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsFaca;
    fConsulta.ShowModal;
    RxDBLookupCombo1.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfAcabado.RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsFichaTecnica.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsFichaTecnica;
    fConsulta.ShowModal;
    RxDBLookupCombo2.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfAcabado.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmAcabado.cdsFaca.IndexFieldNames := 'NOME';
end;

procedure TfAcabado.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmAcabado.cdsFichaTecnica.IndexFieldNames := 'ID';
end;

procedure TfAcabado.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDmAcabado.cdsPasta.IndexFieldNames := 'ID';
end;

procedure TfAcabado.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDmAcabado.cdsUnidade.IndexFieldNames := 'UNIDADE';
end;

procedure TfAcabado.DBEdit3Exit(Sender: TObject);
var
  i: Byte;
begin
  for i := 1 to 8 - Length(fDmAcabado.cdsProdutoREFERENCIA.AsString) do
    fDmAcabado.cdsProdutoREFERENCIA.AsString := '0' + fDmAcabado.cdsProdutoREFERENCIA.AsString;
end;

end.
