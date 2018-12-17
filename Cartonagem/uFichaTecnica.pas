unit uFichaTecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, Buttons,
  ComCtrls, ExtCtrls, RxLookup, rsDBUtils, Grids, DBGrids, SMDBGrid, RxDBComb, uDmFichaTecnica, db, FMTBcd, DBTables,
  DBClient, Provider, SqlExpr, ToolEdit, CurrEdit;

type
  TfFichaTecnica = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox38: TDBCheckBox;
    Label79: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label2: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    BitBtn10: TBitBtn;
    DBText2: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label10: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label11: TLabel;
    Label81: TLabel;
    Label3: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    RxDBComboBox14: TRxDBComboBox;
    RxDBLookupCombo11: TRxDBLookupCombo;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    RxDBComboBox15: TRxDBComboBox;
    RxDBLookupCombo12: TRxDBLookupCombo;
    RxDBComboBox18: TRxDBComboBox;
    RxDBComboBox19: TRxDBComboBox;
    RxDBLookupCombo24: TRxDBLookupCombo;
    RxDBLookupCombo26: TRxDBLookupCombo;
    RxDBLookupCombo28: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Label15: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label20: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    RxDBComboBox6: TRxDBComboBox;
    RxDBLookupCombo13: TRxDBLookupCombo;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    RxDBComboBox16: TRxDBComboBox;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxDBComboBox17: TRxDBComboBox;
    RxDBComboBox29: TRxDBComboBox;
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
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit46: TDBEdit;
    RxDBComboBox39: TRxDBComboBox;
    RxDBComboBox40: TRxDBComboBox;
    RxDBLookupCombo18: TRxDBLookupCombo;
    RxDBLookupCombo20: TRxDBLookupCombo;
    RxDBLookupCombo22: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    RxDBLookupCombo43: TRxDBLookupCombo;
    RxDBLookupCombo44: TRxDBLookupCombo;
    RxDBLookupCombo45: TRxDBLookupCombo;
    RxDBLookupCombo46: TRxDBLookupCombo;
    RxDBLookupCombo47: TRxDBLookupCombo;
    RxDBLookupCombo48: TRxDBLookupCombo;
    RxDBLookupCombo49: TRxDBLookupCombo;
    RxDBLookupCombo50: TRxDBLookupCombo;
    RxDBLookupCombo51: TRxDBLookupCombo;
    DBCheckBox5: TDBCheckBox;
    Panel6: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label43: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label82: TLabel;
    Label5: TLabel;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    RxDBComboBox12: TRxDBComboBox;
    RxDBLookupCombo15: TRxDBLookupCombo;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    RxDBComboBox41: TRxDBComboBox;
    RxDBLookupCombo16: TRxDBLookupCombo;
    RxDBComboBox42: TRxDBComboBox;
    RxDBComboBox43: TRxDBComboBox;
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
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    RxDBComboBox53: TRxDBComboBox;
    RxDBComboBox54: TRxDBComboBox;
    RxDBLookupCombo30: TRxDBLookupCombo;
    RxDBLookupCombo32: TRxDBLookupCombo;
    RxDBLookupCombo34: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    RxDBLookupCombo52: TRxDBLookupCombo;
    RxDBLookupCombo53: TRxDBLookupCombo;
    RxDBLookupCombo54: TRxDBLookupCombo;
    RxDBLookupCombo55: TRxDBLookupCombo;
    RxDBLookupCombo56: TRxDBLookupCombo;
    RxDBLookupCombo57: TRxDBLookupCombo;
    RxDBLookupCombo58: TRxDBLookupCombo;
    RxDBLookupCombo59: TRxDBLookupCombo;
    RxDBLookupCombo60: TRxDBLookupCombo;
    DBCheckBox20: TDBCheckBox;
    Panel8: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    SMDBGrid3: TSMDBGrid;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label7: TLabel;
    Label8: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label14: TLabel;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    Label18: TLabel;
    Label21: TLabel;
    Panel9: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    SMDBGrid4: TSMDBGrid;
    Label6: TLabel;
    Label19: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure RxDBComboBox5Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo9Enter(Sender: TObject);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SMDBGrid4DblClick(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
  private
    { Private declarations }
    ctFacaFD, ctFacaTP, ctFacaSP: String;
  public
    { Public declarations }
    vItemFD, vItemTP, vItemSP: Integer;
    fDmFichaTecnica: TDmFichaTecnica;
  end;

var
  fFichaTecnica: TfFichaTecnica;

implementation

uses uAcabPosicao, uFichaTecnicaCor, uFichaTecnicaAcab;

{$R *.dfm}

procedure TfFichaTecnica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfFichaTecnica.FormShow(Sender: TObject);
var
  vSql: String;
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.SetDataSourceProperties(Self,fDmFichaTecnica);
  fDmFichaTecnica.cdsGrupo.Open;
  fDmFichaTecnica.cdsMaterial.Open;

  PageControl1.ActivePageIndex := 0;
  if fDmFichaTecnica.cdsCartoFT.State in [dsEdit] then
  begin
    RxDBLookupCombo2Enter(Sender);
    RxDBLookupCombo3Enter(Sender);
    RxDBLookupCombo4Enter(Sender);
    RxDBLookupCombo5Enter(Sender);
    RxDBLookupCombo6Enter(Sender);
    RxDBLookupCombo7Enter(Sender);
    RxDBLookupCombo8Enter(Sender);
    RxDBLookupCombo9Enter(Sender);
    RxDBLookupCombo10Enter(Sender);
  end;

  vSql := 'SELECT MAX(ITEM) FROM CARTO_FT_COR WHERE 1 = 1 AND ID = ';
  fDmFichaTecnica.sqlCorItem.Close;
  fDmFichaTecnica.sqlCorItem.SQL.Text := vSql + fDmFichaTecnica.cdsCartoFTID.AsString;
  fDmFichaTecnica.sqlCorItem.SQL.Add(' AND POSICAO = ''FD''');
  fDmFichaTecnica.sqlCorItem.Open;
  vItemFD := fDmFichaTecnica.sqlCorItemMAX.AsInteger;

  fDmFichaTecnica.sqlCorItem.Close;
  fDmFichaTecnica.sqlCorItem.SQL.Text := vSql + fDmFichaTecnica.cdsCartoFTID.AsString;
  fDmFichaTecnica.sqlCorItem.SQL.Add(' AND POSICAO = ''TP''');
  fDmFichaTecnica.sqlCorItem.Open;
  vItemTP := fDmFichaTecnica.sqlCorItemMAX.AsInteger;

  fDmFichaTecnica.sqlCorItem.Close;
  fDmFichaTecnica.sqlCorItem.SQL.Text := vSql + fDmFichaTecnica.cdsCartoFTID.AsString;
  fDmFichaTecnica.sqlCorItem.SQL.Add(' AND POSICAO = ''SP''');
  fDmFichaTecnica.sqlCorItem.Open;
  vItemSP := fDmFichaTecnica.sqlCorItemMAX.AsInteger;
  fDmFichaTecnica.sqlCorItem.Close;
end;

procedure TfFichaTecnica.BitBtn1Click(Sender: TObject);
begin
  fDMFichaTecnica.prc_Gravar;
  if fDMFichaTecnica.cdsCartoFT.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMFichaTecnica.vMsgErro, mtError, [mbno], 0);
    Exit;
  end;

  Close;
end;

procedure TfFichaTecnica.BitBtn2Click(Sender: TObject);
begin
  fDmFichaTecnica.cdsCartoFT.Cancel;
  Close;
end;

procedure TfFichaTecnica.DBCheckBox15Click(Sender: TObject);
begin
  if not DBCheckBox15.Checked then
    RxDBLookupCombo43.ClearValue;
end;

procedure TfFichaTecnica.DBCheckBox16Click(Sender: TObject);
begin
  if not DBCheckBox16.Checked then
    RxDBLookupCombo44.ClearValue;
end;

procedure TfFichaTecnica.DBCheckBox17Click(Sender: TObject);
begin
  if not DBCheckBox17.Checked then
    RxDBLookupCombo45.ClearValue;
end;

procedure TfFichaTecnica.DBCheckBox18Click(Sender: TObject);
begin
  if not DBCheckBox18.Checked then
    RxDBLookupCombo46.ClearValue;
end;

procedure TfFichaTecnica.DBCheckBox43Click(Sender: TObject);
begin
  if not DBCheckBox43.Checked then
    RxDBLookupCombo47.ClearValue;
end;

procedure TfFichaTecnica.DBCheckBox40Click(Sender: TObject);
begin
  if not DBCheckBox40.Checked then
  begin
    RxDBLookupCombo51.ClearValue;
    RxDBComboBox40.ItemIndex := -1;
  end;
end;

procedure TfFichaTecnica.DBCheckBox41Click(Sender: TObject);
begin
  if not DBCheckBox41.Checked then
  begin
    RxDBLookupCombo50.ClearValue;
    RxDBComboBox39.ItemIndex := -1;
  end;
end;

procedure TfFichaTecnica.DBCheckBox42Click(Sender: TObject);
begin
  if not DBCheckBox42.Checked then
    RxDBLookupCombo49.ClearValue;
end;

procedure TfFichaTecnica.DBCheckBox39Click(Sender: TObject);
begin
  if not DBCheckBox39.Checked then
    RxDBLookupCombo48.ClearValue;
end;

procedure TfFichaTecnica.RxDBComboBox6Change(Sender: TObject);
begin
  if RxDBComboBox6.ItemIndex < 1 then
  begin
    RxDBLookupCombo13.ClearValue;
    RxDBComboBox17.ItemIndex := -1;
    DBCheckBox8.Checked      := False;
    DBCheckBox9.Checked      := False;
    RxDBLookupCombo13.ReadOnly := True;
    RxDBComboBox17.Enabled   := False;
    DBCheckBox8.ReadOnly     := True;
    DBCheckBox9.ReadOnly     := True;
  end
  else
  begin
    RxDBLookupCombo13.ReadOnly := False;
    RxDBComboBox17.Enabled   := True;
    DBCheckBox8.ReadOnly     := False;
    DBCheckBox9.ReadOnly     := False;
  end;
end;

procedure TfFichaTecnica.RxDBComboBox16Change(Sender: TObject);
begin
  if RxDBComboBox16.ItemIndex < 1 then
  begin
    RxDBLookupCombo14.ClearValue;
    RxDBComboBox29.ItemIndex := -1;
    DBCheckBox13.Checked     := False;
    DBCheckBox14.Checked     := False;
    RxDBLookupCombo14.ReadOnly := True;
    RxDBComboBox29.Enabled   := False;
    DBCheckBox13.ReadOnly    := True;
    DBCheckBox14.ReadOnly    := True;
  end
  else
  begin
    RxDBLookupCombo14.ReadOnly := False;
    RxDBComboBox29.Enabled   := True;
    DBCheckBox13.ReadOnly    := False;
    DBCheckBox14.ReadOnly    := False;
  end;
end;

procedure TfFichaTecnica.RxDBComboBox14Change(Sender: TObject);
begin
  if RxDBComboBox14.ItemIndex < 1 then
  begin
    RxDBLookupCombo11.ClearValue;
    RxDBComboBox18.ItemIndex := -1;
    DBCheckBox6.Checked      := False;
    DBCheckBox7.Checked      := False;
    RxDBLookupCombo11.ReadOnly := True;
    RxDBComboBox18.Enabled   := False;
    DBCheckBox6.ReadOnly     := True;
    DBCheckBox7.ReadOnly     := True;
  end
  else
  begin
    RxDBLookupCombo11.ReadOnly := False;
    RxDBComboBox18.Enabled   := True;
    DBCheckBox6.ReadOnly     := False;
    DBCheckBox7.ReadOnly     := False;
  end;
end;

procedure TfFichaTecnica.RxDBComboBox15Change(Sender: TObject);
begin
  if RxDBComboBox15.ItemIndex < 1 then
  begin
    RxDBLookupCombo12.ClearValue;
    RxDBComboBox19.ItemIndex := -1;
    DBCheckBox10.Checked     := False;
    DBCheckBox11.Checked     := False;
    RxDBLookupCombo12.ReadOnly := True;
    RxDBComboBox19.Enabled   := False;
    DBCheckBox10.ReadOnly    := True;
    DBCheckBox11.ReadOnly    := True;
  end
  else
  begin
    RxDBLookupCombo12.ReadOnly := False;
    RxDBComboBox19.Enabled   := True;
    DBCheckBox10.ReadOnly    := False;
    DBCheckBox11.ReadOnly    := False;
  end;
end;

procedure TfFichaTecnica.BitBtn12Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este acabamento?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    fDmFichaTecnica.cdsAcabamentoFD.Delete;
end;

procedure TfFichaTecnica.BitBtn13Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!');
end;

procedure TfFichaTecnica.BitBtn10Click(Sender: TObject);
begin
  fAcabPosicao := TfAcabPosicao.Create(Self);
  fAcabPosicao.ShowModal;
  fDmFichaTecnica.cdsAcabPosicao.Close;
  fDmFichaTecnica.cdsAcabPosicao.Open;
end;

procedure TfFichaTecnica.BitBtn8Click(Sender: TObject);
begin
  fDmFichaTecnica.cdsCorSP.Insert;
  fDmFichaTecnica.cdsCorSPID.AsInteger     := fDmFichaTecnica.cdsCartoFTID.AsInteger;
  fDmFichaTecnica.cdsCorSPPOSICAO.AsString := 'SP';
  inc(fFichaTecnica.vItemSP);
  fDmFichaTecnica.cdsCorSPITEM.AsInteger   := vItemSP;
  fFichaTecnicaCor := TfFichaTecnicaCor.Create(Self);
  fFichaTecnicaCor.vPosicao                := 'SP';
  fFichaTecnicaCor.fDmFichaTecnica         := fDmFichaTecnica;
  fFichaTecnicaCor.ShowModal;
end;

procedure TfFichaTecnica.BitBtn4Click(Sender: TObject);
begin
  fDmFichaTecnica.cdsCorFD.Insert;
  fDmFichaTecnica.cdsCorFDID.AsInteger     := fDmFichaTecnica.cdsCartoFTID.AsInteger;
  fDmFichaTecnica.cdsCorFDPOSICAO.AsString := 'FD';
  inc(fFichaTecnica.vItemFD);
  fDmFichaTecnica.cdsCorFDITEM.AsInteger   := vItemFD;
  fFichaTecnicaCor := TfFichaTecnicaCor.Create(Self);
  fFichaTecnicaCor.vPosicao                := 'FD';
  fFichaTecnicaCor.fDmFichaTecnica         := fDmFichaTecnica;
  fFichaTecnicaCor.ShowModal;
end;

procedure TfFichaTecnica.BitBtn6Click(Sender: TObject);
begin
  fDmFichaTecnica.cdsCorTP.Insert;
  fDmFichaTecnica.cdsCorTPID.AsInteger     := fDmFichaTecnica.cdsCartoFTID.AsInteger;
  fDmFichaTecnica.cdsCorTPPOSICAO.AsString := 'TP';
  inc(fFichaTecnica.vItemTP);
  fDmFichaTecnica.cdsCorTPITEM.AsInteger   := vItemTP;
  fFichaTecnicaCor := TfFichaTecnicaCor.Create(Self);
  fFichaTecnicaCor.vPosicao                := 'TP';
  fFichaTecnicaCor.fDmFichaTecnica         := fDmFichaTecnica;
  fFichaTecnicaCor.ShowModal;
end;

procedure TfFichaTecnica.SMDBGrid1DblClick(Sender: TObject);
begin
  fFichaTecnicaCor := TfFichaTecnicaCor.Create(Self);
  fFichaTecnicaCor.vPosicao        := 'FD';
  fFichaTecnicaCor.fDmFichaTecnica := fDmFichaTecnica;
  fFichaTecnicaCor.ShowModal;
end;

procedure TfFichaTecnica.SMDBGrid2DblClick(Sender: TObject);
begin
  fFichaTecnicaCor := TfFichaTecnicaCor.Create(Self);
  fFichaTecnicaCor.vPosicao        := 'TP';
  fFichaTecnicaCor.fDmFichaTecnica := fDmFichaTecnica;
  fFichaTecnicaCor.ShowModal;
end;

procedure TfFichaTecnica.SMDBGrid3DblClick(Sender: TObject);
begin
  fFichaTecnicaCor := TfFichaTecnicaCor.Create(Self);
  fFichaTecnicaCor.vPosicao        := 'SP';
  fFichaTecnicaCor.fDmFichaTecnica := fDmFichaTecnica;
  fFichaTecnicaCor.ShowModal;
end;

procedure TfFichaTecnica.RxDBComboBox5Change(Sender: TObject);
begin
  case RxDBComboBox5.ItemIndex of
    0,1,3: begin
           end;
    2:     begin
           end;
  end;
end;

procedure TfFichaTecnica.BitBtn3Click(Sender: TObject);
begin
{  fProutoCartoR := TfProdutoCartoR.Create(Self);
  fProdutoCartoR.fDmFichaTecnica := fDmFichaTecnica;
  fProdutoCartoR.RLReport1.Preview;
}
end;

procedure TfFichaTecnica.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if RxDBLookupCombo24.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialFD1',
                                   RxDBLookupCombo24.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTFDGRAM1_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTFDGRAM1_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo5Enter(Sender: TObject);
begin
  if RxDBLookupCombo26.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialFD2',
                                   RxDBLookupCombo26.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTFDGRAM2_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTFDGRAM2_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo6Enter(Sender: TObject);
begin
  if RxDBLookupCombo28.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialFD3',
                                   RxDBLookupCombo28.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTFDGRAM3_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTFDGRAM3_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo3Enter(Sender: TObject);
begin
  if RxDBLookupCombo18.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialTP1',
                                   RxDBLookupCombo18.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTTPGRAM1_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTTPGRAM1_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo7Enter(Sender: TObject);
begin
  if RxDBLookupCombo20.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialTP2',
                                   RxDBLookupCombo20.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTTPGRAM2_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTTPGRAM2_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo8Enter(Sender: TObject);
begin
  if RxDBLookupCombo22.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialTP3',
                                   RxDBLookupCombo22.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTTPGRAM3_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTTPGRAM3_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo4Enter(Sender: TObject);
begin
  if RxDBLookupCombo30.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialSP1',
                                   RxDBLookupCombo30.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTSPGRAM1_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTSPGRAM1_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo9Enter(Sender: TObject);
begin
  if RxDBLookupCombo32.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialSP2',
                                   RxDBLookupCombo32.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTSPGRAM2_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTSPGRAM2_MAX.AsInteger);
end;

procedure TfFichaTecnica.RxDBLookupCombo10Enter(Sender: TObject);
begin
  if RxDBLookupCombo34.KeyValue > 0 then
    fDmFichaTecnica.filtraMaterial('MaterialSP3',
                                   RxDBLookupCombo32.KeyValue,
                                   fDmFichaTecnica.cdsCartoFTSPGRAM3_MIN.AsInteger,
                                   fDmFichaTecnica.cdsCartoFTSPGRAM3_MAX.AsInteger);
end;

procedure TfFichaTecnica.BitBtn11Click(Sender: TObject);
var
  vItem: Integer;
begin
  fFichaTecnicaAcab := TfFichaTecnicaAcab.Create(Self);
  fFichaTecnicaAcab.fDmFichaTecnica := fDmFichaTecnica;
  fDmFichaTecnica.cdsAcabamentoFD.Last;
  vItem := fDmFichaTecnica.cdsAcabamentoFDITEM.AsInteger + 1;
  fDmFichaTecnica.cdsAcabamentoFD.Insert;
  fDmFichaTecnica.cdsAcabamentoFDPOSICAO.AsString := 'FD';
  fDmFichaTecnica.cdsAcabamentoFDID.AsInteger     := fDmFichaTecnica.cdsCartoFTFDID.AsInteger;
  fDmFichaTecnica.cdsAcabamentoFDITEM.AsInteger   := vItem;
  fFichaTecnicaAcab.vPosicao                      := 'FD';
  fFichaTecnicaAcab.ShowModal;
end;

procedure TfFichaTecnica.SMDBGrid4DblClick(Sender: TObject);
begin
  fFichaTecnicaAcab := TfFichaTecnicaAcab.Create(Self);
  fFichaTecnicaAcab.fDmFichaTecnica := fDmFichaTecnica;
  fDmFichaTecnica.cdsAcabamentoFD.Edit;
  fFichaTecnicaAcab.vPosicao := 'FD';
  fFichaTecnicaAcab.ShowModal;
end;

procedure TfFichaTecnica.DBCheckBox4Click(Sender: TObject);
begin
  SMDBGrid1.Visible := DBCheckBox4.Checked;
  Panel4.Visible    := DBCheckBox4.Checked;
end;

end.
