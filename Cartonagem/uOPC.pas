unit uOPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, SMDBGrid,
  Buttons, ExtCtrls, NxEdit, NxCollection, uDmOp, DateUtils, rsDBUtils;

type
  TfOPC = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxButton1: TNxButton;
    NxComboBox1: TNxComboBox;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    fDmOP: TDmOp;
    ctConsOP: String;
    ctAcabado: String;
  public
    { Public declarations }
  end;

var
  fOPC: TfOPC;

implementation

uses uOP, uOPR;

{$R *.dfm}

procedure TfOPC.BitBtn1Click(Sender: TObject);
begin
  Panel2.Visible := not(Panel2.Visible);
end;

procedure TfOPC.FormCreate(Sender: TObject);
begin
  if not Assigned(fDmOP) then
    fDmOP := TDmOP.Create(Self);
  ctConsOP := fDmOP.sdsOPCons.CommandText;
end;

procedure TfOPC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmOp);
  ctAcabado := fDmOp.sdsAcabado.CommandText;
  NxDatePicker2.Date := Date;
  NxDatePicker1.Date := IncMonth(Date,-1);
  NxButton1Click(Sender);
end;

procedure TfOPC.NxButton1Click(Sender: TObject);
begin
  fDmOP.cdsOPCons.Close;
  case NxComboBox1.ItemIndex of
    0: fDmOP.sdsOPCons.CommandText := ctConsOP + ' WHERE DT_EMISSAO BETWEEN ' +
                                                 QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date)) +
                                                 ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.Date));
    1: fDmOP.sdsOPCons.CommandText := ctConsOP + ' WHERE DT_ENTREGA BETWEEN ' +
                                                 QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date)) +
                                                 ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.Date));
  end;
  fDmOP.cdsOPCons.Open;
end;

procedure TfOPC.BitBtn4Click(Sender: TObject);
begin
  fOP := TfOP.Create(Self);
  fDmOP.cdsOP.Open;
  fOP.fDmOp := fDmOp;
  fDmOP.cdsOP.Insert;
  fOP.ShowModal;
  fDmOP.cdsOP.Close;
end;

procedure TfOPC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfOPC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmOP.cdsOPCons.IsEmpty then
    Exit;

  fOP := TfOP.Create(Self);
  fDmOP.prc_Localizar(fDmOP.cdsOPConsID.AsInteger);
  fDmOP.cdsOP.Edit;
  fOP.fDmOp := fDmOp;
  fOP.ShowModal;
  fDmOP.cdsOP.Close;
end;

procedure TfOPC.BitBtn2Click(Sender: TObject);
begin
  if fDmOP.cdsOPCons.IsEmpty then
    Exit;
  fOPR := TfOPR.Create(Self);
  fOPR.fDmOp := fDmOp;
  fDmOP.prc_Localizar(fDmOP.cdsOPConsID.AsInteger);

  fDmOp.cdsAcabado.Close;
  fDmOp.sdsAcabado.CommandText := ctAcabado + ' AND P.ID = ' + fDmOp.cdsOPConsACABADO_ID.AsString;
  fDmOp.cdsAcabado.Open;

  fOPR.RlReport1.Preview;
  fOPR.RlReport1.Free;
end;

end.
