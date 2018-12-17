unit uOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, Buttons,
  ComCtrls, ExtCtrls, RxLookup, rsDBUtils, Grids, DBGrids, SMDBGrid, RxDBComb, uDmOrcamento, db, FMTBcd, DBTables, DBClient,
  Provider, SqlExpr, ToolEdit, CurrEdit;

type
  TfOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    TabSheet1: TTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel4: TPanel;
    Label14: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Label15: TLabel;
    DBCheckBox12: TDBCheckBox;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel6: TPanel;
    Label21: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Label27: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    SMDBGrid3: TSMDBGrid;
    Label28: TLabel;
    Label29: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    BitBtn10: TBitBtn;
    Label30: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label31: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label32: TLabel;
    RxDBComboBox13: TRxDBComboBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit15: TDBEdit;
    Label38: TLabel;
    DBEdit16: TDBEdit;
    Label39: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label40: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label41: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Panel3: TPanel;
    Label10: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBComboBox14: TRxDBComboBox;
    RxDBLookupCombo11: TRxDBLookupCombo;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    RxDBComboBox15: TRxDBComboBox;
    RxDBLookupCombo12: TRxDBLookupCombo;
    RxDBComboBox18: TRxDBComboBox;
    RxDBComboBox19: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    RxDBComboBox8: TRxDBComboBox;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    RxDBComboBox20: TRxDBComboBox;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    RxDBComboBox21: TRxDBComboBox;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    RxDBComboBox22: TRxDBComboBox;
    RxDBComboBox23: TRxDBComboBox;
    RxDBComboBox24: TRxDBComboBox;
    RxDBComboBox25: TRxDBComboBox;
    RxDBComboBox26: TRxDBComboBox;
    RxDBComboBox27: TRxDBComboBox;
    RxDBComboBox28: TRxDBComboBox;
    Label48: TLabel;
    DBCheckBox38: TDBCheckBox;
    DBEdit34: TDBEdit;
    Label9: TLabel;
    Label20: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox6: TRxDBComboBox;
    RxDBLookupCombo13: TRxDBLookupCombo;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    RxDBComboBox16: TRxDBComboBox;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxDBComboBox17: TRxDBComboBox;
    RxDBComboBox29: TRxDBComboBox;
    RxDBComboBox30: TRxDBComboBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    RxDBComboBox31: TRxDBComboBox;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    RxDBComboBox32: TRxDBComboBox;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    RxDBComboBox33: TRxDBComboBox;
    DBEdit43: TDBEdit;
    DBEdit46: TDBEdit;
    RxDBComboBox34: TRxDBComboBox;
    RxDBComboBox35: TRxDBComboBox;
    RxDBComboBox36: TRxDBComboBox;
    RxDBComboBox37: TRxDBComboBox;
    RxDBComboBox38: TRxDBComboBox;
    RxDBComboBox39: TRxDBComboBox;
    RxDBComboBox40: TRxDBComboBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label43: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    DBCheckBox19: TDBCheckBox;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    RxDBComboBox9: TRxDBComboBox;
    RxDBComboBox12: TRxDBComboBox;
    RxDBLookupCombo15: TRxDBLookupCombo;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    RxDBComboBox41: TRxDBComboBox;
    RxDBLookupCombo16: TRxDBLookupCombo;
    RxDBComboBox42: TRxDBComboBox;
    RxDBComboBox43: TRxDBComboBox;
    RxDBComboBox44: TRxDBComboBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    RxDBComboBox45: TRxDBComboBox;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    RxDBComboBox46: TRxDBComboBox;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    RxDBComboBox47: TRxDBComboBox;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    RxDBComboBox48: TRxDBComboBox;
    RxDBComboBox49: TRxDBComboBox;
    RxDBComboBox50: TRxDBComboBox;
    RxDBComboBox51: TRxDBComboBox;
    RxDBComboBox52: TRxDBComboBox;
    RxDBComboBox53: TRxDBComboBox;
    RxDBComboBox54: TRxDBComboBox;
    DBEdit57: TDBEdit;
    DBEdit59: TDBEdit;
    RxDBLookupCombo17: TRxDBLookupCombo;
    RxDBLookupCombo18: TRxDBLookupCombo;
    RxDBLookupCombo19: TRxDBLookupCombo;
    RxDBLookupCombo20: TRxDBLookupCombo;
    RxDBLookupCombo21: TRxDBLookupCombo;
    RxDBLookupCombo22: TRxDBLookupCombo;
    Label16: TLabel;
    Label42: TLabel;
    RxDBLookupCombo23: TRxDBLookupCombo;
    RxDBLookupCombo24: TRxDBLookupCombo;
    RxDBLookupCombo25: TRxDBLookupCombo;
    RxDBLookupCombo26: TRxDBLookupCombo;
    RxDBLookupCombo27: TRxDBLookupCombo;
    RxDBLookupCombo28: TRxDBLookupCombo;
    Label80: TLabel;
    Label81: TLabel;
    RxDBLookupCombo29: TRxDBLookupCombo;
    RxDBLookupCombo30: TRxDBLookupCombo;
    RxDBLookupCombo31: TRxDBLookupCombo;
    RxDBLookupCombo32: TRxDBLookupCombo;
    RxDBLookupCombo33: TRxDBLookupCombo;
    RxDBLookupCombo34: TRxDBLookupCombo;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    RxDBLookupCombo35: TRxDBLookupCombo;
    Label87: TLabel;
    DBMemo1: TDBMemo;
    Label85: TLabel;
    Label86: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label92: TLabel;
    RxDBLookupCombo36: TRxDBLookupCombo;
    Label93: TLabel;
    RxDBLookupCombo37: TRxDBLookupCombo;
    RxDBLookupCombo38: TRxDBLookupCombo;
    Label13: TLabel;
    Label58: TLabel;
    RxDBLookupCombo39: TRxDBLookupCombo;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBEdit58: TDBEdit;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label79: TLabel;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    Label98: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBCheckBox28Click(Sender: TObject);
    procedure DBCheckBox30Click(Sender: TObject);
    procedure DBCheckBox29Click(Sender: TObject);
    procedure DBCheckBox31Click(Sender: TObject);
    procedure DBCheckBox36Click(Sender: TObject);
    procedure DBCheckBox33Click(Sender: TObject);
    procedure DBCheckBox34Click(Sender: TObject);
    procedure DBCheckBox35Click(Sender: TObject);
    procedure DBCheckBox32Click(Sender: TObject);
    procedure DBCheckBox15Click(Sender: TObject);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure DBCheckBox18Click(Sender: TObject);
    procedure DBCheckBox43Click(Sender: TObject);
    procedure DBCheckBox40Click(Sender: TObject);
    procedure DBCheckBox41Click(Sender: TObject);
    procedure DBCheckBox42Click(Sender: TObject);
    procedure DBCheckBox39Click(Sender: TObject);
    procedure RxDBComboBox6Change(Sender: TObject);
    procedure RxDBComboBox16Change(Sender: TObject);
    procedure RxDBComboBox14Change(Sender: TObject);
    procedure RxDBComboBox15Change(Sender: TObject);
    procedure RxDBLookupCombo23Change(Sender: TObject);
    procedure RxDBLookupCombo25Change(Sender: TObject);
    procedure RxDBLookupCombo27Change(Sender: TObject);
    procedure RxDBLookupCombo17Change(Sender: TObject);
    procedure RxDBLookupCombo19Change(Sender: TObject);
    procedure RxDBLookupCombo21Change(Sender: TObject);
    procedure RxDBLookupCombo29Change(Sender: TObject);
    procedure RxDBLookupCombo31Change(Sender: TObject);
    procedure RxDBLookupCombo33Change(Sender: TObject);
    procedure RxDBLookupCombo24Change(Sender: TObject);
    procedure RxDBLookupCombo26Change(Sender: TObject);
    procedure RxDBLookupCombo28Change(Sender: TObject);
    procedure RxDBLookupCombo18Change(Sender: TObject);
    procedure RxDBLookupCombo20Change(Sender: TObject);
    procedure RxDBLookupCombo22Change(Sender: TObject);
    procedure RxDBLookupCombo30Change(Sender: TObject);
    procedure RxDBLookupCombo32Change(Sender: TObject);
    procedure RxDBLookupCombo34Change(Sender: TObject);
  private
    { Private declarations }
//    fDmFaca: TdmProdutoCarto;
    ctFacaFD, ctFacaTP, ctFacaSP: String;
  public
    { Public declarations }
    fDmOrcamento: TdmOrcamento;
  end;

var
  fOrcamento: TfOrcamento;

implementation

uses uOrcamentoR;

{$R *.dfm}

procedure TfOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfOrcamento.FormShow(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.SetDataSourceProperties(Self,fDmOrcamento);
  fdmOrcamento.cdsGrupo.Open;
  fdmOrcamento.cdsMaterial.Open;

  PageControl1.ActivePageIndex := 0;
  if fdmOrcamento.cdsProduto.State in [dsEdit] then
  begin
    RxDBLookupCombo23Change(Sender);
    RxDBLookupCombo25Change(Sender);
    RxDBLookupCombo27Change(Sender);
    RxDBLookupCombo24Change(Sender);
    RxDBLookupCombo26Change(Sender);
    RxDBLookupCombo28Change(Sender);
    RxDBLookupCombo17Change(Sender);
    RxDBLookupCombo19Change(Sender);
    RxDBLookupCombo21Change(Sender);
    RxDBLookupCombo18Change(Sender);
    RxDBLookupCombo20Change(Sender);
    RxDBLookupCombo22Change(Sender);
    RxDBLookupCombo29Change(Sender);
    RxDBLookupCombo30Change(Sender);
    RxDBLookupCombo31Change(Sender);
    RxDBLookupCombo32Change(Sender);
    RxDBLookupCombo33Change(Sender);
    RxDBLookupCombo34Change(Sender);
  end;

  ctFacaFd := fDmOrcamento.sdsFacaFD.CommandText;
  ctFacaTp := fDmOrcamento.sdsFacaTP.CommandText;
  ctFacaSp := fDmOrcamento.sdsFacaSP.CommandText;

  PageControl1.ActivePageIndex := 0;
end;

procedure TfOrcamento.BitBtn1Click(Sender: TObject);
begin
  fDmOrcamento.cdsProduto.Post;
  fDmOrcamento.cdsProduto.ApplyUpdates(0);
  Close;
end;

procedure TfOrcamento.BitBtn2Click(Sender: TObject);
begin
  fDmOrcamento.cdsProduto.Cancel;
  Close;
end;

procedure TfOrcamento.BitBtn4Click(Sender: TObject);
begin
{  fProdutoCartoCor := TfProdutoCartoCor.Create(Self);
  fOrcamento.dmProdutoCarto := fdmProdutoCarto;
  fProdutoCartoCor.ShowModal;}
end;

procedure TfOrcamento.BitBtn5Click(Sender: TObject);
begin
//  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  //  fDmOrcamento.cdsProdutoCartoCor.Post;
end;

procedure TfOrcamento.BitBtn3Click(Sender: TObject);
begin
  fOrcamentoR := TfOrcamentoR.Create(Self);
  fOrcamentoR.fDmOrcamento := fDmOrcamento;
  fOrcamentoR.RLReport1.Preview;
  Close;
end;

procedure TfOrcamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//  if dmOrcamento.cdsProduto.State in [dsEdit] then
//    BitBtn1Click(Sender);
end;

procedure TfOrcamento.DBCheckBox28Click(Sender: TObject);
begin
  if not DBCheckBox28.Checked then
    RxDBComboBox2.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox30Click(Sender: TObject);
begin
  if not DBCheckBox30.Checked then
    RxDBComboBox20.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox29Click(Sender: TObject);
begin
  if not DBCheckBox29.Checked then
    RxDBComboBox8.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox31Click(Sender: TObject);
begin
  if not DBCheckBox31.Checked then
    RxDBComboBox21.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox36Click(Sender: TObject);
begin
  if not DBCheckBox36.Checked then
    RxDBComboBox22.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox33Click(Sender: TObject);
begin
  if not DBCheckBox31.Checked then
  begin
    RxDBComboBox23.ItemIndex := -1;
    RxDBComboBox28.ItemIndex := -1;
  end;
end;

procedure TfOrcamento.DBCheckBox34Click(Sender: TObject);
begin
  if not DBCheckBox34.Checked then
  begin
    RxDBComboBox24.ItemIndex := -1;
    RxDBComboBox27.ItemIndex := -1;
  end;
end;

procedure TfOrcamento.DBCheckBox35Click(Sender: TObject);
begin
  if not DBCheckBox35.Checked then
    RxDBComboBox25.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox32Click(Sender: TObject);
begin
  if not DBCheckBox32.Checked then
    RxDBComboBox26.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox15Click(Sender: TObject);
begin
  if not DBCheckBox15.Checked then
    RxDBComboBox30.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox16Click(Sender: TObject);
begin
  if not DBCheckBox16.Checked then
    RxDBComboBox31.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox17Click(Sender: TObject);
begin
  if not DBCheckBox17.Checked then
    RxDBComboBox32.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox18Click(Sender: TObject);
begin
  if not DBCheckBox18.Checked then
    RxDBComboBox33.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox43Click(Sender: TObject);
begin
  if not DBCheckBox43.Checked then
    RxDBComboBox32.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox40Click(Sender: TObject);
begin
  if not DBCheckBox40.Checked then
  begin
    RxDBComboBox35.ItemIndex := -1;
    RxDBComboBox40.ItemIndex := -1;
  end;
end;

procedure TfOrcamento.DBCheckBox41Click(Sender: TObject);
begin
  if not DBCheckBox41.Checked then
  begin
    RxDBComboBox36.ItemIndex := -1;
    RxDBComboBox39.ItemIndex := -1;
  end;
end;

procedure TfOrcamento.DBCheckBox42Click(Sender: TObject);
begin
  if not DBCheckBox42.Checked then
    RxDBComboBox37.ItemIndex := -1;
end;

procedure TfOrcamento.DBCheckBox39Click(Sender: TObject);
begin
  if not DBCheckBox39.Checked then
    RxDBComboBox38.ItemIndex := -1;
end;

procedure TfOrcamento.RxDBComboBox6Change(Sender: TObject);
begin
  if RxDBComboBox6.ItemIndex < 1 then
  begin
    RxDBLookupCombo13.ClearValue;
    RxDBComboBox17.ItemIndex := -1;
    DBCheckBox8.Checked      := False;
    DBCheckBox9.Checked      := False;
    RxDBLookupCombo13.ReadOnly := True;
    RxDBComboBox17.Enabled     := False;
    DBCheckBox8.ReadOnly       := True;
    DBCheckBox9.ReadOnly       := True;
  end
  else
  begin
    RxDBLookupCombo13.ReadOnly := False;
    RxDBComboBox17.Enabled     := True;
    DBCheckBox8.ReadOnly       := False;
    DBCheckBox9.ReadOnly       := False;
  end;
end;

procedure TfOrcamento.RxDBComboBox16Change(Sender: TObject);
begin
  if RxDBComboBox16.ItemIndex < 1 then
  begin
    RxDBLookupCombo14.ClearValue;
    RxDBComboBox29.ItemIndex := -1;
    DBCheckBox13.Checked      := False;
    DBCheckBox14.Checked      := False;
    RxDBLookupCombo14.ReadOnly := True;
    RxDBComboBox29.Enabled     := False;
    DBCheckBox13.ReadOnly       := True;
    DBCheckBox14.ReadOnly       := True;
  end
  else
  begin
    RxDBLookupCombo14.ReadOnly := False;
    RxDBComboBox29.Enabled     := True;
    DBCheckBox13.ReadOnly      := False;
    DBCheckBox14.ReadOnly      := False;
  end;
end;

procedure TfOrcamento.RxDBComboBox14Change(Sender: TObject);
begin
  if RxDBComboBox14.ItemIndex < 1 then
  begin
    RxDBLookupCombo11.ClearValue;
    RxDBComboBox18.ItemIndex := -1;
    DBCheckBox6.Checked      := False;
    DBCheckBox7.Checked      := False;
    RxDBLookupCombo11.ReadOnly := True;
    RxDBComboBox18.Enabled     := False;
    DBCheckBox6.ReadOnly       := True;
    DBCheckBox7.ReadOnly       := True;
  end
  else
  begin
    RxDBLookupCombo11.ReadOnly := False;
    RxDBComboBox18.Enabled     := True;
    DBCheckBox6.ReadOnly       := False;
    DBCheckBox7.ReadOnly       := False;
  end;
end;

procedure TfOrcamento.RxDBComboBox15Change(Sender: TObject);
begin
  if RxDBComboBox15.ItemIndex < 1 then
  begin
    RxDBLookupCombo12.ClearValue;
    RxDBComboBox19.ItemIndex  := -1;
    DBCheckBox10.Checked      := False;
    DBCheckBox11.Checked      := False;
    RxDBLookupCombo12.ReadOnly := True;
    RxDBComboBox19.Enabled     := False;
    DBCheckBox10.ReadOnly      := True;
    DBCheckBox11.ReadOnly      := True;
  end
  else
  begin
    RxDBLookupCombo12.ReadOnly := False;
    RxDBComboBox19.Enabled     := True;
    DBCheckBox10.ReadOnly      := False;
    DBCheckBox11.ReadOnly      := False;
  end;
end;

procedure TfOrcamento.RxDBLookupCombo23Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemFD1.Close;
  fDmOrcamento.sdsGrupoItemFD1.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoFDGRUPO1.AsInteger;
  fDmOrcamento.sdsGrupoItemFD1.Open;
end;

procedure TfOrcamento.RxDBLookupCombo25Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemFD2.Close;
  fDmOrcamento.sdsGrupoItemFD2.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoFDGRUPO2.AsInteger;
  fDmOrcamento.sdsGrupoItemFD2.Open;
end;

procedure TfOrcamento.RxDBLookupCombo27Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemFD3.Close;
  fDmOrcamento.sdsGrupoItemFD3.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoFDGRUPO3.AsInteger;
  fDmOrcamento.sdsGrupoItemFD3.Open;
end;

procedure TfOrcamento.RxDBLookupCombo17Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemTP1.Close;
  fDmOrcamento.sdsGrupoItemTP1.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoTPGRUPO1.AsInteger;
  fDmOrcamento.sdsGrupoItemTP1.Open;
end;

procedure TfOrcamento.RxDBLookupCombo19Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemTP2.Close;
  fDmOrcamento.sdsGrupoItemTP2.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoTPGRUPO2.AsInteger;
  fDmOrcamento.sdsGrupoItemTP2.Open;
end;

procedure TfOrcamento.RxDBLookupCombo21Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemTP3.Close;
  fDmOrcamento.sdsGrupoItemTP3.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoTPGRUPO3.AsInteger;
  fDmOrcamento.sdsGrupoItemTP3.Open;
end;

procedure TfOrcamento.RxDBLookupCombo29Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemSP1.Close;
  fDmOrcamento.sdsGrupoItemSP1.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoSPGRUPO1.AsInteger;
  fDmOrcamento.sdsGrupoItemSP1.Open;
end;

procedure TfOrcamento.RxDBLookupCombo31Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemSP2.Close;
  fDmOrcamento.sdsGrupoItemSP2.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoSPGRUPO2.AsInteger;
  fDmOrcamento.sdsGrupoItemSP2.Open;
end;

procedure TfOrcamento.RxDBLookupCombo33Change(Sender: TObject);
begin
  fDmOrcamento.sdsGrupoItemSP3.Close;
  fDmOrcamento.sdsGrupoItemSP3.ParamByName('G1').AsInteger := fDmOrcamento.cdsProdutoCartoSPGRUPO3.AsInteger;
  fDmOrcamento.sdsGrupoItemSP3.Open;
end;

procedure TfOrcamento.RxDBLookupCombo24Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialFD1.Close;
  fDmOrcamento.sdsMaterialFD1.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoFDGRUPO1.AsInteger;
  fDmOrcamento.sdsMaterialFD1.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoFDSUBGRUPO1.AsInteger;
  fDmOrcamento.sdsMaterialFD1.Open;
end;

procedure TfOrcamento.RxDBLookupCombo26Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialFD2.Close;
  fDmOrcamento.sdsMaterialFD2.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoFDGRUPO2.AsInteger;
  fDmOrcamento.sdsMaterialFD2.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoFDSUBGRUPO2.AsInteger;
  fDmOrcamento.sdsMaterialFD2.Open;
end;

procedure TfOrcamento.RxDBLookupCombo28Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialFD3.Close;
  fDmOrcamento.sdsMaterialFD3.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoFDGRUPO3.AsInteger;
  fDmOrcamento.sdsMaterialFD3.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoFDSUBGRUPO3.AsInteger;
  fDmOrcamento.sdsMaterialFD3.Open;
end;

procedure TfOrcamento.RxDBLookupCombo18Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialTP1.Close;
  fDmOrcamento.sdsMaterialTP1.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoTPGRUPO1.AsInteger;
  fDmOrcamento.sdsMaterialTP1.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoTPSUBGRUPO1.AsInteger;
  fDmOrcamento.sdsMaterialTP1.Open;
end;

procedure TfOrcamento.RxDBLookupCombo20Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialTP2.Close;
  fDmOrcamento.sdsMaterialTP2.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoTPGRUPO2.AsInteger;
  fDmOrcamento.sdsMaterialTP2.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoTPSUBGRUPO2.AsInteger;
  fDmOrcamento.sdsMaterialTP2.Open;
end;

procedure TfOrcamento.RxDBLookupCombo22Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialTP3.Close;
  fDmOrcamento.sdsMaterialTP3.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoTPGRUPO3.AsInteger;
  fDmOrcamento.sdsMaterialTP3.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoTPSUBGRUPO3.AsInteger;
  fDmOrcamento.sdsMaterialTP3.Open;
end;

procedure TfOrcamento.RxDBLookupCombo30Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialSP1.Close;
  fDmOrcamento.sdsMaterialSP1.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoSPGRUPO1.AsInteger;
  fDmOrcamento.sdsMaterialSP1.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoSPSUBGRUPO1.AsInteger;
  fDmOrcamento.sdsMaterialSP1.Open;
end;

procedure TfOrcamento.RxDBLookupCombo32Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialSP2.Close;
  fDmOrcamento.sdsMaterialSP2.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoSPGRUPO2.AsInteger;
  fDmOrcamento.sdsMaterialSP2.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoSPSUBGRUPO2.AsInteger;
  fDmOrcamento.sdsMaterialSP2.Open;
end;

procedure TfOrcamento.RxDBLookupCombo34Change(Sender: TObject);
begin
  fDmOrcamento.sdsMaterialSP3.Close;
  fDmOrcamento.sdsMaterialSP3.ParamByName('G1').AsInteger  := fDmOrcamento.cdsProdutoCartoSPGRUPO3.AsInteger;
  fDmOrcamento.sdsMaterialSP3.ParamByName('SG1').AsInteger := fDmOrcamento.cdsProdutoCartoSPSUBGRUPO3.AsInteger;
  fDmOrcamento.sdsMaterialSP3.Open;
end;

end.
