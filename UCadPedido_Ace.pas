unit UCadPedido_Ace;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, NxCollection, UDMCadPedido,
  Grids, Mask, DBCtrls, RzTabs,  ToolEdit, DB, ExtCtrls, Buttons, RxLookup;

type
  TfrmCadPedido_Ace = class(TForm)
    RzPageControl1: TRzPageControl;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    TS_Roldanas: TRzTabSheet;
    TS_Trilhos: TRzTabSheet;
    Label28: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label33: TLabel;
    DBEdit29: TDBEdit;
    Label34: TLabel;
    DBEdit30: TDBEdit;
    Label35: TLabel;
    DBEdit31: TDBEdit;
    Label36: TLabel;
    DBEdit32: TDBEdit;
    Label37: TLabel;
    DBEdit33: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
    vItemMat: Integer;

    procedure prc_Calcular_Vlr_Trilhos;
    procedure prc_Calcular_Vlr_Roldanas;
    procedure prc_Calcular_Vlr;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  frmCadPedido_Ace: TfrmCadPedido_Ace;

implementation

uses uUtilPadrao, rsDBUtils, UDMUtil;

{$R *.dfm}

procedure TfrmCadPedido_Ace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPedido.cdsPedido_Ace.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Ace.Cancel;
  if fDMCadPedido.cdsPedido_Rol.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Rol.Cancel;
  Action := Cafree;
end;

procedure TfrmCadPedido_Ace.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  Tag := 1;
  if TS_Trilhos.TabVisible then
    RzPageControl1.ActivePage := TS_Trilhos
  else
    RzPageControl1.ActivePage := TS_Roldanas;
  if RzPageControl1.ActivePage = TS_Trilhos then
  begin
    fDMCadPedido.prc_Abrir_Acessorios('T');
    RxDBLookupCombo1.SetFocus;
  end
  else
  begin
    fDMCadPedido.prc_Abrir_Acessorios('A');
    RxDBLookupCombo2.SetFocus;
  end;
end;

procedure TfrmCadPedido_Ace.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadPedido_Ace.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPedido_Ace.BitBtn1Click(Sender: TObject);
var
  vMsgAux: String;
begin
  vMsgAux := '';
  if RzPageControl1.ActivePage = TS_Trilhos then
  begin
    if fDMCadPedido.cdsPedido_AceID_PRODUTO.AsInteger <= 0 then
      vMsgAux := '*** Produto não informado!';
    if fDMCadPedido.cdsPedido_AceQTD.AsInteger <= 0 then
      vMsgAux := '*** Quantidade não informada!';
    if fDMCadPedido.cdsPedido_AceCOMPRIMENTO_VOLUME.AsFloat <= 0 then
      vMsgAux := '*** Comprimento não informado!';
  end;
  if RzPageControl1.ActivePage = TS_Roldanas then
  begin
    if fDMCadPedido.cdsPedido_RolID_PRODUTO.AsInteger <= 0 then
      vMsgAux := '*** Produto não informado!';
    if fDMCadPedido.cdsPedido_RolQTD.AsInteger <= 0 then
      vMsgAux := '*** Quantidade não informada!';
  end;
  if trim(vMsgAux) <> '' then
  begin
    MessageDlg(vMsgAux, mtError, [mbOk], 0);
    exit;
  end;
  if RzPageControl1.ActivePage = TS_Trilhos then
  begin
    fDMCadPedido.cdsAcessorios.FindKey([fDMCadPedido.cdsPedido_AceID_PRODUTO.AsInteger]);
    fDMCadPedido.cdsPedido_AceQTD_FATURADO.AsFloat  := 0;
    fDMCadPedido.cdsPedido_AceQTD_RESTANTE.AsFloat  := fDMCadPedido.cdsPedido_AceQTD.AsFloat;
    fDMCadPedido.cdsPedido_AceCANCELADO.AsString    := 'N';
    fDMCadPedido.cdsPedido_AceREFERENCIA.AsString   := fDMCadPedido.cdsAcessoriosREFERENCIA.AsString;
    fDMCadPedido.cdsPedido_AceNOMEPRODUTO.AsString  := fDMCadPedido.cdsAcessoriosNOME.AsString;
    fDMCadPedido.cdsPedido_AceUNIDADE.AsString      := fDMCadPedido.cdsAcessoriosUNIDADE.AsString;
    fDMCadPedido.cdsPedido_AceID_NCM.AsInteger      := fDMCadPedido.cdsAcessoriosID_NCM.AsInteger;
    fDMCadPedido.cdsPedido_AceAPROVADO_ORC.AsString := 'P';
    fDMCadPedido.cdsPedido_Ace.Post
  end
  else
  begin
    fDMCadPedido.cdsAcessorios.FindKey([fDMCadPedido.cdsPedido_RolID_PRODUTO.AsInteger]);
    fDMCadPedido.cdsPedido_RolQTD_FATURADO.AsFloat  := 0;
    fDMCadPedido.cdsPedido_RolQTD_RESTANTE.AsFloat  := fDMCadPedido.cdsPedido_RolQTD.AsFloat;
    fDMCadPedido.cdsPedido_RolCANCELADO.AsString    := 'N';
    fDMCadPedido.cdsPedido_RolREFERENCIA.AsString   := fDMCadPedido.cdsAcessoriosREFERENCIA.AsString;
    fDMCadPedido.cdsPedido_RolNOMEPRODUTO.AsString  := fDMCadPedido.cdsAcessoriosNOME.AsString;
    fDMCadPedido.cdsPedido_RolUNIDADE.AsString      := fDMCadPedido.cdsAcessoriosUNIDADE.AsString;
    fDMCadPedido.cdsPedido_RolID_NCM.AsInteger      := fDMCadPedido.cdsAcessoriosID_NCM.AsInteger;
    fDMCadPedido.cdsPedido_RolAPROVADO_ORC.AsString := 'P';
    fDMCadPedido.cdsPedido_Rol.Post;
  end;
  Close;
end;

procedure TfrmCadPedido_Ace.prc_Calcular_Vlr_Roldanas;
var
  vAux: Real;
  vCalcula_2_Lados: String;
  vVlr_Unitario: Real;
begin
  vVlr_Unitario := 0;
  fDMCadPedido.cdsPedido_RolVLR_TOTAL.AsFloat := 0;
  if trim(RxDBLookupCombo2.Text) <> '' then
  begin
    if (RxDBLookupCombo2.KeyValue <> fDMCadPedido.cdsAcessoriosID.AsInteger) then
      fDMCadPedido.cdsAcessorios.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]);
    vVlr_Unitario := fDMCadPedido.cdsAcessoriosPRECO_VENDA.AsFloat;
  end;
  {if (StrToFloat(FormatFloat('0.0000',vVlr_Unitario)) > 0) and (fDMCadPedido.cdsPedido_AceCOMPRIMENTO_VOLUME.AsFloat > 0) then
  begin
    vAux := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_AceCOMPRIMENTO_VOLUME.AsFloat / 1000));
    vAux := StrToFloat(FormatFloat('0.0000',vAux * vVlr_Unitario));
    vVlr_Unitario := StrToFloat(FormatFloat('0.0000',vAux));
  end;}
  fDMCadPedido.cdsPedido_RolVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',vVlr_Unitario));
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_RolVLR_UNITARIO.AsFloat)) > 0) and (fDMCadPedido.cdsPedido_RolQTD.AsInteger > 0) then
    fDMCadPedido.cdsPedido_RolVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_RolVLR_UNITARIO.AsFloat *
                                                                                 fDMCadPedido.cdsPedido_RolQTD.AsInteger));
end;

procedure TfrmCadPedido_Ace.prc_Calcular_Vlr_Trilhos;
var
  vAux: Real;
  vCalcula_2_Lados: String;
  vVlr_Unitario: Real;
begin
  vVlr_Unitario := 0;
  fDMCadPedido.cdsPedido_AceVLR_TOTAL.AsFloat := 0;
  if trim(RxDBLookupCombo1.Text) <> '' then
  begin
    if (RxDBLookupCombo1.KeyValue <> fDMCadPedido.cdsAcessoriosID.AsInteger) then
      fDMCadPedido.cdsAcessorios.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
    vVlr_Unitario := fDMCadPedido.cdsAcessoriosPRECO_VENDA.AsFloat;
    fDMCadPedido.cdsPedido_AceREFERENCIA.AsString  := fDMCadPedido.cdsAcessoriosREFERENCIA.AsString;
    fDMCadPedido.cdsPedido_AceNOMEPRODUTO.AsString := fDMCadPedido.cdsAcessoriosNOME.AsString;
  end;
  if (StrToFloat(FormatFloat('0.0000',vVlr_Unitario)) > 0) and (fDMCadPedido.cdsPedido_AceCOMPRIMENTO_VOLUME.AsFloat > 0) then
  begin
    vAux := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_AceCOMPRIMENTO_VOLUME.AsFloat / 1000));
    vAux := StrToFloat(FormatFloat('0.0000',vAux * vVlr_Unitario));
    vVlr_Unitario := StrToFloat(FormatFloat('0.0000',vAux));
  end;
  fDMCadPedido.cdsPedido_AceVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',vVlr_Unitario));
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_AceVLR_UNITARIO.AsFloat)) > 0) and (fDMCadPedido.cdsPedido_AceQTD.AsInteger > 0) then
    fDMCadPedido.cdsPedido_AceVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_AceVLR_UNITARIO.AsFloat *
                                                                                 fDMCadPedido.cdsPedido_AceQTD.AsInteger));
end;

procedure TfrmCadPedido_Ace.RxDBLookupCombo1Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Trilhos;
end;

procedure TfrmCadPedido_Ace.DBEdit30Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Trilhos;
end;

procedure TfrmCadPedido_Ace.DBEdit31Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Trilhos;
end;

procedure TfrmCadPedido_Ace.DBEdit32Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

procedure TfrmCadPedido_Ace.prc_Calcular_Vlr;
begin
  if RzPageControl1.ActivePage = TS_Trilhos then
    if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_AceVLR_UNITARIO.AsFloat)) > 0) and (fDMCadPedido.cdsPedido_AceQTD.AsInteger > 0) then
      fDMCadPedido.cdsPedido_AceVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_AceVLR_UNITARIO.AsFloat *
                                                                                   fDMCadPedido.cdsPedido_AceQTD.AsInteger));
  if RzPageControl1.ActivePage = TS_Roldanas then
    if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_RolVLR_UNITARIO.AsFloat)) > 0) and (fDMCadPedido.cdsPedido_RolQTD.AsInteger > 0) then
      fDMCadPedido.cdsPedido_RolVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_RolVLR_UNITARIO.AsFloat *
                                                                                   fDMCadPedido.cdsPedido_RolQTD.AsInteger));
end;

procedure TfrmCadPedido_Ace.RxDBLookupCombo2Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Roldanas;
end;

procedure TfrmCadPedido_Ace.DBEdit3Exit(Sender: TObject);
begin
  prc_Calcular_Vlr_Roldanas;
end;

procedure TfrmCadPedido_Ace.DBEdit4Exit(Sender: TObject);
begin
  prc_Calcular_Vlr;
end;

end.
