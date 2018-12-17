unit uMaquina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmMaquina, Dialogs, StdCtrls, Buttons, db,
  ExtCtrls, Mask, DBCtrls, rsDBUtils, RxDBComb, Grids, DBGrids, SMDBGrid, ToolEdit, CurrEdit, RxLookup,
  RzTabs;

type
  TfMaquina = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label14: TLabel;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    BitBtn5: TBitBtn;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Panel3: TPanel;
    Label13: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit18: TDBEdit;
    SMDBGrid1: TSMDBGrid;
    TabSheet3: TRzTabSheet;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label31: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit25: TDBEdit;
    Label32: TLabel;
    DBEdit26: TDBEdit;
    Label34: TLabel;
    DBEdit27: TDBEdit;
    Panel4: TPanel;
    Label36: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    Label33: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    Label40: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmMaquina: TDmMaquina;
  end;

var
  fMaquina: TfMaquina;

implementation

{$R *.dfm}

procedure TfMaquina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfMaquina.BitBtn1Click(Sender: TObject);
begin
  fDmMaquina.cdsMaquina.Post;
  fDmMaquina.cdsMaquina.ApplyUpdates(0);
  Close;
end;

procedure TfMaquina.BitBtn2Click(Sender: TObject);
begin
  fDmMaquina.cdsMaquina.Cancel;
  Close;
end;

procedure TfMaquina.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmMaquina);
  oDBUtils.OpenTables(True,Self);
  fDmMaquina.cdsFuncionario.Open;
  fDmMaquina.cdsSetor.Open;
  fDmMaquina.cdsMaquinaOper.Close;
  fDmMaquina.cdsMaquinaOper.Open;
  fDmMaquina.cdsUnidade.Open;
end;

procedure TfMaquina.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if fDmMaquina.cdsMaquina.State in [dsEdit,dsInsert] then
    BitBtn2Click(Sender);
end;

procedure TfMaquina.BitBtn3Click(Sender: TObject);
var
  vEncargos: Currency;
begin
  vEncargos := 0;
  fDmMaquina.cdsFolhaEncargo.Open;
  while not fDmMaquina.cdsFolhaEncargo.Eof do
  begin
    vEncargos := vEncargos + fDmMaquina.cdsFolhaEncargoVALOR_PERC.AsCurrency;
    fDmMaquina.cdsFolhaEncargo.Next;
  end;
  fDmMaquina.cdsFolhaEncargo.Close;


  if RxDBLookupCombo1.Value = '' then
  begin
    ShowMessage('Funcionário deve ser selecionado!');
    RxDBLookupCombo1.SetFocus;
    Exit;
  end;
  fDmMaquina.cdsMaquinaOper.Insert;
  fDmMaquina.cdsMaquinaOperMAQUINA_ID.AsInteger    := fDmMaquina.cdsMaquinaID.AsInteger;
  fDmMaquina.cdsMaquinaOperFUNCIONARIO_ID.AsString := RxDBLookupCombo1.KeyValue;
  fDmMaquina.cdsMaquinaOperNOME.AsString           := RxDBLookupCombo1.Text;
  fDmMaquina.cdsMaquinaOperSALARIO.AsCurrency      := fDmMaquina.cdsFuncionarioVLR_SALARIO.Value;
  fDmMaquina.cdsMaquinaOperENCARGOS.AsCurrency     := fDmMaquina.cdsFuncionarioVLR_SALARIO.Value * (vEncargos / 100);
  fDmMaquina.cdsMaquinaOperTOTAL.AsCurrency        := fDmMaquina.cdsMaquinaOperENCARGOS.AsCurrency  +
                                                      fDmMaquina.cdsMaquinaOperSALARIO.AsCurrency;
  fDmMaquina.cdsMaquinaOper.Post;

  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfMaquina.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = MrOk then
  begin
    fDmMaquina.cdsMaquinaOper.Delete;
    fDmMaquina.cdsMaquinaOper.ApplyUpdates(0);
  end;
end;

procedure TfMaquina.DBEdit6Enter(Sender: TObject);
begin
  if (fDmMaquina.cdsMaquinaVIDAUTIL.AsCurrency > 0) and
     (fDmMaquina.cdsMaquinaHORASPRODUTIVAS.AsCurrency > 0) then
    fDmMaquina.cdsMaquinaDEPRECIACAO.AsCurrency := StrToFloat(FormatCurr('0.00',
                                                   fDmMaquina.cdsMaquinaVALORMERCADO.AsCurrency /
                                                   fDmMaquina.cdsMaquinaVIDAUTIL.AsCurrency /
                                                   fDmMaquina.cdsMaquinaHORASPRODUTIVAS.AsCurrency));
end;

procedure TfMaquina.BitBtn5Click(Sender: TObject);
begin
  DBEdit6Enter(Sender);
  fDmMaquina.cdsMaquinaOper.First;
  fDmMaquina.cdsMaquinaCUSTOOPERACIONAL.AsCurrency := 0;
  while not fDmMaquina.cdsMaquinaOper.Eof do
  begin
    fDmMaquina.cdsMaquinaCUSTOOPERACIONAL.AsCurrency := fDmMaquina.cdsMaquinaCUSTOOPERACIONAL.AsCurrency +
                                                        fDmMaquina.cdsMaquinaOperTOTAL.AsCurrency * 220;
    fDmMaquina.cdsMaquinaOper.Next;
  end;
  if fDmMaquina.cdsMaquinaHORASPRODUTIVAS.AsCurrency > 0 then
    fDmMaquina.cdsMaquinaCUSTOOPERACIONAL.AsCurrency := StrToFloat(FormatCurr('0.00',
                                                        fDmMaquina.cdsMaquinaCUSTOOPERACIONAL.AsCurrency /
                                                        fDmMaquina.cdsMaquinaHORASPRODUTIVAS.AsCurrency));

  fDmMaquina.cdsMaquinaVALORHORACALC.AsCurrency := fDmMaquina.cdsMaquinaDEPRECIACAO.AsCurrency +
                                                   fDmMaquina.cdsMaquinaCUSTOOPERACIONAL.AsCurrency +
                                                   fDmMaquina.cdsMaquinaCUSTODESPESAS.AsCurrency;
  if (fDmMaquina.cdsMaquinaVALORHORAEFETIVO.IsNull) or (fDmMaquina.cdsMaquinaVALORHORAEFETIVO.AsFloat = 0) then
    fDmMaquina.cdsMaquinaVALORHORAEFETIVO.AsCurrency := fDmMaquina.cdsMaquinaVALORHORACALC.AsCurrency;
end;

procedure TfMaquina.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDmMaquina.cdsUnidade.IndexFieldNames := 'UNIDADE';
end;

procedure TfMaquina.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fdmMaquina.cdsMaterial.IndexFieldNames := 'NOME';
end;

procedure TfMaquina.BitBtn6Click(Sender: TObject);
var
  i: Byte;
begin
  fDmMaquina.cdsMaquinaQuebra.Insert;
  fDmMaquina.cdsMaquinaQuebraMAQUINA_ID.AsInteger := fDmMaquina.cdsMaquinaID.AsInteger;
//fDmMaquina.cdsMaquinaQuebraID.AsInteger         := fDmMaquina.cdsMaquinaID.AsInteger;
  fDmMaquina.cdsMaquinaQuebraQTD_MIN.AsInteger    := CurrencyEdit1.AsInteger;
  fDmMaquina.cdsMaquinaQuebraQTD_MAX.AsInteger    := CurrencyEdit2.AsInteger;
  fDmMaquina.cdsMaquinaQuebraCOR_0.AsInteger      := CurrencyEdit3.AsInteger;
  fDmMaquina.cdsMaquinaQuebraCOR_1.AsInteger      := CurrencyEdit4.AsInteger;
  fDmMaquina.cdsMaquinaQuebraCOR_2_3.AsInteger    := CurrencyEdit5.AsInteger;
  fDmMaquina.cdsMaquinaQuebraCOR_4.AsInteger      := CurrencyEdit6.AsInteger;
  fDmMaquina.cdsMaquinaQuebra.Post;

  for i := 1 to 6 do
    TCurrencyEdit(FindComponent('CurrencyEdit' + IntToStr(i))).AsInteger := 0;

  CurrencyEdit1.SetFocus;
end;

procedure TfMaquina.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDmMaquina.cdsCartoProcesso.IndexFieldNames := 'DESCRICAO';
end;

end.
