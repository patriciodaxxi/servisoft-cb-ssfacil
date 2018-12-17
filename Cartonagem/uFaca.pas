unit uFaca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, Buttons,
  ComCtrls, rsDBUtils, uDmFaca, db, DBTables, RxDBComb, ExtCtrls, FMTBcd, RxLookup, DBClient, Provider, SqlExpr, Grids,
  ToolEdit, RXDBCtrl, DBGrids, SMDBGrid, StrUtils;

type
  TfFaca = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Shape3: TShape;
    Shape2: TShape;
    Shape1: TShape;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
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
    Label28: TLabel;
    Label29: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label39: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
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
    BitBtn10: TBitBtn;
    RxDBComboBox5: TRxDBComboBox;
    RxDBComboBox11: TRxDBComboBox;
    RxDBComboBox13: TRxDBComboBox;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    RxDBComboBox4: TRxDBComboBox;
    RxDBComboBox6: TRxDBComboBox;
    RxDBComboBox7: TRxDBComboBox;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    RxDBComboBox10: TRxDBComboBox;
    RxDBComboBox9: TRxDBComboBox;
    RxDBComboBox12: TRxDBComboBox;
    RxDBComboBox14: TRxDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    RxDBComboBox16: TRxDBComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    Label10: TLabel;
    Label79: TLabel;
    Label40: TLabel;
    DBEdit8: TDBEdit;
    RxDBComboBox8: TRxDBComboBox;
    RxDBComboBox15: TRxDBComboBox;
    DBText1: TDBText;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBComboBox8Change(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit9DblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit12DblClick(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit14DblClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    procedure calcula;
    procedure marcaFibra;
    procedure incluirProcesso(vPosicao, vObs: String; vProcID: Integer);
  public
    { Public declarations }
    fdmFaca: TdmFaca;
  end;

var
  fFaca: TfFaca;

implementation

uses uFacaSel, uFacaPDF;

{$R *.dfm}

procedure TfFaca.calcula;
begin
  if fdmFaca.cdsCartoFacaTIPO.AsString = '2' then
  begin
    fdmFaca.cdsCartoFacaFD_FIO_L.AsFloat := (fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat * 2 +
                                                0.3 + fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat +
                                                fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat;
    fdmFaca.cdsCartoFacaFD_DIMENSAO2.AsFloat := ((fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                   fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat * 2 +
                                                   0.3 + fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat +
                                                   fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat) *
                                                   fdmFaca.cdsCartoFacaFD_COPIAS_L.AsFloat +
                                                   (fdmFaca.cdsCartoFacaFD_INT_L.AsFloat *
                                                   (fdmFaca.cdsCartoFacaFD_COPIAS_L.AsFloat - 1));

    fdmFaca.cdsCartoFacaFD_FIO_C.AsFloat     := (fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                   (fdmFaca.cdsCartoFacaFD_ABA_INT_LAT.AsFloat * 2) +
                                                   (fdmFaca.cdsCartoFacaFD_ABA_INT_CAB.AsFloat * 2) +
                                                    fdmFaca.cdsCartoFacaFD_COMPR.AsFloat;
    fdmFaca.cdsCartoFacaFD_DIMENSAO1.AsFloat := ((fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                   (fdmFaca.cdsCartoFacaFD_ABA_INT_LAT.AsFloat * 2) +
                                                   (fdmFaca.cdsCartoFacaFD_ABA_INT_CAB.AsFloat * 2) +
                                                    fdmFaca.cdsCartoFacaFD_COMPR.AsFloat) *
                                                    fdmFaca.cdsCartoFacaFD_COPIAS_C.AsFloat +
                                                   (fdmFaca.cdsCartoFacaFD_INT_C.AsFloat *
                                                   (fdmFaca.cdsCartoFacaFD_COPIAS_C.AsFloat - 1));

    fdmFaca.cdsCartoFacaTP_FIO_C.AsFloat     := 0;
    fdmFaca.cdsCartoFacaTP_FIO_L.AsFloat     := 0;
    fdmFaca.cdsCartoFacaTP_DIMENSAO1.AsFloat := 0;
    fdmFaca.cdsCartoFacaTP_DIMENSAO2.AsFloat := 0;
    fdmFaca.cdsCartoFacaTP_INT_C.AsFloat     := 0;
    fdmFaca.cdsCartoFacaTP_INT_L.AsFloat     := 0;
    fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat  := 0;
    fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat  := 0;
    Exit;
  end;

  fdmFaca.cdsCartoFacaFD_FIO_C.AsFloat     := (fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                 (fdmFaca.cdsCartoFacaFD_ABA_INT_CAB.AsFloat * 2) +
                                                  fdmFaca.cdsCartoFacaFD_COMPR.AsFloat;
  fdmFaca.cdsCartoFacaFD_DIMENSAO1.AsFloat := ((fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                  (fdmFaca.cdsCartoFacaFD_ABA_INT_CAB.AsFloat * 2) +
                                                   fdmFaca.cdsCartoFacaFD_COMPR.AsFloat) *
                                                   fdmFaca.cdsCartoFacaFD_COPIAS_C.AsFloat +
                                                  (fdmFaca.cdsCartoFacaFD_INT_C.AsFloat *
                                                  (fdmFaca.cdsCartoFacaFD_COPIAS_C.AsFloat - 1));

  fdmFaca.cdsCartoFacaFD_FIO_L.AsFloat     := (fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                 (fdmFaca.cdsCartoFacaFD_ABA_INT_LAT.AsFloat * 2) +
                                                  fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat;
  fdmFaca.cdsCartoFacaFD_DIMENSAO2.AsFloat := ((fdmFaca.cdsCartoFacaFD_ALTURA.AsFloat * 2) +
                                                 (fdmFaca.cdsCartoFacaFD_ABA_INT_LAT.AsFloat * 2) +
                                                  fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat) *
                                                  fdmFaca.cdsCartoFacaFD_COPIAS_L.AsFloat +
                                                 (fdmFaca.cdsCartoFacaFD_INT_L.AsFloat *
                                                 (fdmFaca.cdsCartoFacaFD_COPIAS_L.AsFloat - 1));

  if (fdmFaca.cdsCartoFacaTIPO.AsInteger < 3) then //se for cartucho ou sacola, nao calcula tampa
    case RxDBComboBox5.ItemIndex of
      0: begin  //duplex
           fdmFaca.cdsCartoFacaTP_FIO_C.AsFloat := (fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.4) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_FIO_L.AsFloat := (fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.3) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_DIMENSAO1.AsFloat := ((fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.4) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_C.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat - 1));
           fdmFaca.cdsCartoFacaTP_DIMENSAO2.AsFloat := ((fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.3) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_L.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat - 1));
         end;
      1: begin  //micro
           fdmFaca.cdsCartoFacaTP_FIO_C.AsFloat := (fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.7) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_FIO_L.AsFloat := (fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.5) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_DIMENSAO1.AsFloat := ((fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.7) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_C.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat - 1));
           fdmFaca.cdsCartoFacaTP_DIMENSAO2.AsFloat := ((fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.5) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_L.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat - 1));
         end;
      2: begin  //cartao/cartao
           fdmFaca.cdsCartoFacaTP_FIO_C.AsFloat := (fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.5) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_FIO_L.AsFloat := (fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.5) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_DIMENSAO1.AsFloat := ((fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.5) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_C.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat - 1));
           fdmFaca.cdsCartoFacaTP_DIMENSAO2.AsFloat := ((fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.5) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_L.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat - 1));
         end;
      3: begin  //micro / abas internas
           fdmFaca.cdsCartoFacaTP_FIO_C.AsFloat := (fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.7) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_FIO_L.AsFloat := (fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.5) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                      (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2);
           fdmFaca.cdsCartoFacaTP_DIMENSAO1.AsFloat := ((fdmFaca.cdsCartoFacaFD_COMPR.AsFloat + 0.7) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_CAB.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_CAB.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_C.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_C.AsFloat - 1));
           fdmFaca.cdsCartoFacaTP_DIMENSAO2.AsFloat := ((fdmFaca.cdsCartoFacaFD_LARGURA.AsFloat + 0.5) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_EXT_LAT.AsFloat * 2) +
                                                          (fdmFaca.cdsCartoFacaTP_ABA_INT_LAT.AsFloat * 2)) *
                                                           fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat +
                                                          (fdmFaca.cdsCartoFacaTP_INT_L.AsFloat *
                                                          (fdmFaca.cdsCartoFacaTP_COPIAS_L.AsFloat - 1));
         end;
    end;
end;

procedure TfFaca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfFaca.BitBtn10Click(Sender: TObject);
begin
  //se for cartucho ou sacola, nao calcula tampa
  if (fdmFaca.cdsCartoFacaTIPO.AsInteger < 3) and (RxDBComboBox5.ItemIndex < 0) then
  begin
    ShowMessage('Selecione o material da tampa!');
    RxDBComboBox5.SetFocus;
    Exit;
  end;
  calcula;
end;

procedure TfFaca.BitBtn1Click(Sender: TObject);
begin
  fdmFaca.cdsCartoFacaFACA_ID.AsInteger := fdmFaca.cdsCartoFacaID.AsInteger;
  if (fdmFaca.cdsCartoFacaNOME.IsNull) then
  begin
    ShowMessage('Nome deve ser preenchido!');
    DBEdit8.SetFocus;
    Exit;
  end;
  if (fdmFaca.cdsCartoFacaSITUACAO.IsNull) then
  begin
    ShowMessage('Situação deve ser preenchida!');
    RxDBComboBox15.SetFocus;
    Exit;
  end;
  if fdmFaca.cdsCartoFacaTIPO.IsNull then
  begin
    ShowMessage('Tipo deve ser preenchido!');
    RxDBComboBox8.SetFocus;
    Exit;
  end;
  fdmFaca.cdsCartoFaca.Post;
  fdmFaca.cdsCartoFaca.ApplyUpdates(0);
  Close;
end;

procedure TfFaca.BitBtn2Click(Sender: TObject);
begin
  fdmFaca.cdsCartoFaca.Cancel;
  Close;
end;

procedure TfFaca.BitBtn5Click(Sender: TObject);
begin
  fFacaPdf := TfFacaPdf.Create(Self);
  fFacaPdf.fdmFaca := fdmFaca;
  fFacaPdf.Tag := 3;
  fFacaPdf.FilenameEdit1.Text := fdmFaca.cdsCartoFacaARQUIVO_SP.AsString;
  fFacaPdf.ShowModal;
end;

procedure TfFaca.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fdmFaca.cdsCartoFaca.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

procedure TfFaca.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfFaca.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmFaca);
  if RxDBComboBox11.ItemIndex > -1 then
    fdmFaca.procuraFacaFD(RxDBComboBox11.ItemIndex);
  if RxDBComboBox5.ItemIndex > -1 then
    fdmFaca.procuraFacaTP(RxDBComboBox5.ItemIndex);
  RxDBComboBox15.SetFocus;
  RxDBComboBox8.OnChange(Self);

  PageControl1.ActivePageIndex := 0;

  oDBUtils.ActiveDataSet(True,fdmFaca.cdsCartoProcesso,Name);

  marcaFibra;
end;

procedure TfFaca.SpeedButton1Click(Sender: TObject);
begin
  fdmFaca.procuraFacaFD(RxDBComboBox11.ItemIndex);
  fdmFaca.procuraFacaTP(RxDBComboBox5.ItemIndex);

  fFacaSel := TfFacaSel.Create(Self);
  fFacaSel.fDmFaca := fDmFaca;
  fFacaSel.RzPageControl1.ActivePageIndex := 0;
  fFacaSel.RzTabSheet2.TabVisible := False;
  fFacaSel.RzTabSheet3.TabVisible := False;
  fFacaSel.ShowModal;
end;

procedure TfFaca.SpeedButton2Click(Sender: TObject);
begin
  fdmFaca.procuraFacaFD(RxDBComboBox11.ItemIndex);
  fdmFaca.procuraFacaTP(RxDBComboBox5.ItemIndex);

  fFacaSel := TfFacaSel.Create(Self);
  fFacaSel.fDmFaca := fDmFaca;
  fFacaSel.RzPageControl1.ActivePageIndex := 1;
  fFacaSel.RzTabSheet1.TabVisible := False;
  fFacaSel.RzTabSheet3.TabVisible := False;
  fFacaSel.ShowModal;
end;

procedure TfFaca.SpeedButton3Click(Sender: TObject);
begin
  fFacaSel := TfFacaSel.Create(Self);
  fFacaSel.fDmFaca := fDmFaca;
  fFacaSel.RzPageControl1.ActivePageIndex := 2;
  fFacaSel.RzTabSheet1.TabVisible := False;
  fFacaSel.RzTabSheet2.TabVisible := False;
  fFacaSel.ShowModal;
end;

procedure TfFaca.BitBtn3Click(Sender: TObject);
begin
  fFacaPdf := TfFacaPdf.Create(Self);
  fFacaPdf.fdmFaca := fdmFaca;
  fFacaPdf.Tag := 1;
  fFacaPdf.FilenameEdit1.Text := fdmFaca.cdsCartoFacaARQUIVO_FD.AsString;
  fFacaPdf.ShowModal;
end;

procedure TfFaca.BitBtn4Click(Sender: TObject);
begin
  fFacaPdf := TfFacaPdf.Create(Self);
  fFacaPdf.fdmFaca := fdmFaca;
  fFacaPdf.Tag := 2;
  fFacaPdf.FilenameEdit1.Text := fdmFaca.cdsCartoFacaARQUIVO_TP.AsString;
  fFacaPdf.ShowModal;
end;

procedure TfFaca.RxDBComboBox8Change(Sender: TObject);
begin
  case RxDBComboBox8.ItemIndex of
    0,1,3: begin
             RxDBComboBox9.Visible  := False;
             RxDBComboBox10.Visible := True;
             Label23.Visible        := False;
             Label24.Visible        := True;
           end;
    2:     begin
             RxDBComboBox9.Visible  := True;
             RxDBComboBox10.Visible := False;
             Label24.Visible        := False;
             Label23.Visible        := True;
           end;
  end;
end;

procedure TfFaca.DBEdit8Exit(Sender: TObject);
var
  i: Word;
begin
  for i := 1 to 6 - Length(fDmFaca.cdsCartoFacaNOME.AsString) do
    fDmFaca.cdsCartoFacaNOME.AsString := '0' + fDmFaca.cdsCartoFacaNOME.AsString;

  fdmFaca.cdsFacaNome.Close;
  fdmFaca.sdsFacaNome.ParamByName('N1').AsString := DBEdit8.Text;
  fdmFaca.cdsFacaNome.Open;
  if (not fdmFaca.cdsFacaNome.IsEmpty) and (fdmFaca.cdsFacaNomeID.AsString <> DBEdit8.Text) then
    ShowMessage('Já existe uma faca com este nome! (ID = ' + fdmFaca.cdsFacaNomeId.AsString + ')');
end;

procedure TfFaca.marcaFibra;
begin
  DBEdit1.Color  := clWindow;
  DBEdit9.Color  := clWindow;
  DBEdit11.Color := clWindow;
  DBEdit12.Color := clWindow;
  DBEdit13.Color := clWindow;
  DBEdit14.Color := clWindow;

  if fdmFaca.cdsCartoFacaFD_FIBRA.AsString = 'C' then
    DBEdit1.Color := $0080FFFF;
  if fdmFaca.cdsCartoFacaFD_FIBRA.AsString = 'L' then
    DBEdit9.Color := $0080FFFF;

  if fdmFaca.cdsCartoFacaTP_FIBRA.AsString = 'C' then
    DBEdit11.Color := $0080FFFF;
  if fdmFaca.cdsCartoFacaTp_FIBRA.AsString = 'L' then
    DBEdit12.Color := $0080FFFF;

  if fdmFaca.cdsCartoFacaSP_FIBRA.AsString = 'C' then
    DBEdit13.Color := $0080FFFF;
  if fdmFaca.cdsCartoFacaSP_FIBRA.AsString = 'L' then
    DBEdit14.Color := $0080FFFF;
end;

procedure TfFaca.DBEdit1DblClick(Sender: TObject);
begin
  if fdmFaca.cdsCartoFacaFD_FIBRA.AsString = 'C' then
    fdmFaca.cdsCartoFacaFD_FIBRA.Clear
  else
    fdmFaca.cdsCartoFacaFD_FIBRA.AsString := 'C';
  DBEdit1.SelStart := Length(DBEdit1.Text);
  marcaFibra;
end;

procedure TfFaca.DBEdit9DblClick(Sender: TObject);
begin
  if fdmFaca.cdsCartoFacaFD_FIBRA.AsString = 'L' then
    fdmFaca.cdsCartoFacaFD_FIBRA.Clear
  else
    fdmFaca.cdsCartoFacaFD_FIBRA.AsString := 'L';
  DBEdit9.SelStart := Length(DBEdit9.Text);
  marcaFibra;
end;

procedure TfFaca.DBEdit11DblClick(Sender: TObject);
begin
  if fdmFaca.cdsCartoFacaTP_FIBRA.AsString = 'C' then
    fdmFaca.cdsCartoFacaTP_FIBRA.Clear
  else
    fdmFaca.cdsCartoFacaTP_FIBRA.AsString := 'C';
  DBEdit11.SelStart := Length(DBEdit11.Text);
  marcaFibra;
end;

procedure TfFaca.DBEdit12DblClick(Sender: TObject);
begin
  if fdmFaca.cdsCartoFacaTP_FIBRA.AsString = 'L' then
    fdmFaca.cdsCartoFacaTP_FIBRA.Clear
  else
    fdmFaca.cdsCartoFacaTP_FIBRA.AsString := 'L';
  DBEdit12.SelStart := Length(DBEdit12.Text);
  marcaFibra;
end;

procedure TfFaca.DBEdit13Change(Sender: TObject);
begin
  if fdmFaca.cdsCartoFacaSP_FIBRA.AsString = 'C' then
    fdmFaca.cdsCartoFacaSP_FIBRA.Clear
  else
    fdmFaca.cdsCartoFacaSP_FIBRA.AsString := 'C';
  DBEdit13.SelStart := Length(DBEdit13.Text);
  marcaFibra;
end;

procedure TfFaca.DBEdit14DblClick(Sender: TObject);
begin
  if fdmFaca.cdsCartoFacaSP_FIBRA.AsString = 'L' then
    fdmFaca.cdsCartoFacaSP_FIBRA.Clear
  else
    fdmFaca.cdsCartoFacaSP_FIBRA.AsString := 'L';
  DBEdit14.SelStart := Length(DBEdit14.Text);
  marcaFibra;
end;

procedure TfFaca.BitBtn6Click(Sender: TObject);
begin
  case fdmFaca.cdsCartoFacaFD_TIPO_MAT.AsInteger of
    1: ;
    2, 3, 4: incluirProcesso('FD','',11);//ACOPLADEIRA
  end;

  incluirProcesso('FD','',12);//CORTE-VINCO
  incluirProcesso('FD','',13);//DESPENCA + PRENSA

  case AnsiIndexStr(fdmFaca.cdsCartoFacaFECHAMENTO_FD.AsString,['N','AA','AAA','ME','MM','SAC']) of
    0: ;
    1: incluirProcesso('FD','',4);  //CONTACT
    2: begin
         incluirProcesso('FD','',4); //CONTACT
         incluirProcesso('FD','',5); //COLADEIRA ABAS
       end;
    3: incluirProcesso('FD','',5); //COLADEIRA ABAS
    4: incluirProcesso('FD','',14); //MONTAGEM MANUAL
    5: incluirProcesso('FD','',7); //COLAGEM MANUAL
  end;

  case AnsiIndexStr(fdmFaca.cdsCartoFacaFECHAMENTO_CT.AsString,
     ['N','FN','FNT','FA','FAT','FAM','FAMT','ME','MET','MM','MMT','4P','6P','8P','DIS','ENV']) of
     0: ;
     1: incluirProcesso('FD','1 PONTO DE COLA',6); //CARUCHEIRA;
     3: incluirProcesso('FD','3 PONTOS DE COLA',6); //CARUCHEIRA;
     4: incluirProcesso('FD','1 PONTO DE COLA',6); //CARUCHEIRA;
     5: incluirProcesso('FD','',6); //CARUCHEIRA;
     6: incluirProcesso('FD','',6); //CARUCHEIRA;
     7: incluirProcesso('FD','',6); //CARUCHEIRA;
     8: incluirProcesso('FD','',6); //CARUCHEIRA;
     9: incluirProcesso('FD','',6); //CARUCHEIRA;
    10: incluirProcesso('FD','',6); //CARUCHEIRA;
    11: incluirProcesso('FD','4 PONTOS DE COLA',6); //CARUCHEIRA;
    12: incluirProcesso('FD','6 PONTOS DE COLA',6); //CARUCHEIRA;
    13: incluirProcesso('FD','8 PONTOS DE COLA',6); //CARUCHEIRA;
    14: incluirProcesso('FD','',6); //CARUCHEIRA;
    15: incluirProcesso('FD','',6); //CARUCHEIRA;
  end;
end;

procedure TfFaca.incluirProcesso(vPosicao, vObs: String; vProcID: Integer);
var
  vItem: Integer;
begin
  fdmFaca.cdsCartoFacaProcesso.Last;
  vItem := fdmFaca.cdsCartoFacaProcessoID.AsInteger + 1;

  fdmFaca.cdsCartoFacaProcesso.Insert;
  fdmFaca.cdsCartoFacaProcessoFACA_ID.AsInteger     := fdmFaca.cdsCartoFacaID.AsInteger;
  fdmFaca.cdsCartoFacaProcessoID.AsInteger          := vItem;
  fdmFaca.cdsCartoFacaProcessoPOSICAO.AsString      := vPosicao;
  fdmFaca.cdsCartoFacaProcessoPROCESSO_ID.AsInteger := vProcID;
  fdmFaca.cdsCartoFacaProcessoOBSERVACAO.AsString   := vObs;

  fdmFaca.cdsCartoProcesso.IndexFieldNames := 'ID';
  fdmFaca.cdsCartoProcesso.FindKey([vProcID]);
  fdmFaca.cdsCartoFacaProcessoPROCESSO.AsString := fdmFaca.cdsCartoProcessoDESCRICAO.AsString;

  fdmFaca.cdsCartoFacaProcesso.Post;
end;

end.
