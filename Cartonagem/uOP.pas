unit uOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, RxLookup, Mask,
  Buttons, ExtCtrls, uDmOP, ToolEdit, RXDBCtrl, rsDBUtils, db, Grids, DBGrids, SMDBGrid, uDmConsulta;

type
  TfOP = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
  private
    { Private declarations }
    ctAcabado: String;
    fDmConsulta: TDmConsulta;
  public
    { Public declarations }
    fDmOp: TDmOp;
  end;

var
  fOP: TfOP;

implementation

uses uOPR, uConsulta;

{$R *.dfm}

procedure TfOP.BitBtn2Click(Sender: TObject);
begin
  fDmOp.cdsOP.Cancel;
  Close;
end;

procedure TfOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  fDmOp.cdsAcabadoCons.Close;
  fDmOp.cdsAcabado.Close;
  fDmOp.cdsCliente.Close;
  Action := caFree;
end;

procedure TfOP.BitBtn1Click(Sender: TObject);
begin
  if fDmOp.cdsOPCLIENTE_ID.IsNull then
  begin
    ShowMessage('Cliente é obrigatório!');
    RxDBLookupCombo2.SetFocus;
    Exit;
  end;
  if fDmOp.cdsOPACABADO_ID.IsNull then
  begin
    ShowMessage('Acabado é obrigatório!');
    RxDBLookupCombo1.SetFocus;
    Exit;
  end;
  fDmOp.cdsOP.Post;
  fDmOp.cdsOP.ApplyUpdates(0);
  Close;
end;

procedure TfOP.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmOp);
  fDmOp.cdsAcabadoCons.Open;
  fDmOp.cdsCliente.Open;
  ctAcabado := fDmOp.sdsAcabado.CommandText;
end;

procedure TfOP.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if fDmOp.cdsOP.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

procedure TfOP.BitBtn3Click(Sender: TObject);
begin
  fOPR := TfOPR.Create(Self);
  fOPR.fDmOp := fDmOp;
  fDmOp.cdsAcabado.Close;
  fDmOp.sdsAcabado.CommandText := ctAcabado + ' AND P.ID = ' + fDmOp.cdsOPACABADO_ID.AsString;
  fDmOp.cdsAcabado.Open;
  fOPR.RlReport1.Preview;
  fOPR.RlReport1.Free;
end;

procedure TfOP.RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsPessoa.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsPessoa;
    fConsulta.ShowModal;
    RxDBLookupCombo2.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfOP.RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if not Assigned(fDmConsulta) then
      fDmConsulta := TDmConsulta.Create(Self);
    fConsulta := TfConsulta.Create(Self);
    fConsulta.fDmConsulta := fDmConsulta;
    fConsulta.fDmConsulta.cdsAcabado.Open;
    fConsulta.SMDBGrid1.DataSource := fDmConsulta.dsAcabado;
    fConsulta.ShowModal;
    RxDBLookupCombo1.KeyValue := fdmConsulta.vId;
    FreeAndNil(fDmConsulta);
  end;
end;

procedure TfOP.RxDBLookupCombo1Enter(Sender: TObject);
begin
 fdmOP.cdsAcabadoCons.IndexFieldNames := 'NOME';
end;

procedure TfOP.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDmOp.cdsCliente.IndexFieldNames := 'NOME';
end;

end.
