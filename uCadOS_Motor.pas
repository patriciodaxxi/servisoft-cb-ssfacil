unit uCadOS_Motor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Grids, DBGrids,
  SMDBGrid, RzTabs, ExtCtrls, Mask, NxCollection, UDMCadOrdemServico, RSDBUtils;

type
  TfrmCadOS_Motor = class(TForm)
    Panel1: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    Label20: TLabel;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label29: TLabel;
    DBEdit34: TDBEdit;
    Label34: TLabel;
    DBEdit35: TDBEdit;
    GroupBox7: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Label38: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    GroupBox8: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    GroupBox9: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    GroupBox10: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    GroupBox11: TGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    GroupBox12: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    GroupBox13: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    Label72: TLabel;
    DBEdit76: TDBEdit;
    Label73: TLabel;
    DBEdit77: TDBEdit;
    GroupBox14: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit81: TDBEdit;
    GroupBox15: TGroupBox;
    Label81: TLabel;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBEdit86: TDBEdit;
    TabSheet4: TRzTabSheet;
    GroupBox16: TGroupBox;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Label84: TLabel;
    DBEdit89: TDBEdit;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    Label87: TLabel;
    DBEdit92: TDBEdit;
    Label88: TLabel;
    Label89: TLabel;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    Label90: TLabel;
    DBEdit95: TDBEdit;
    Label91: TLabel;
    Label92: TLabel;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    Label93: TLabel;
    DBEdit98: TDBEdit;
    Label94: TLabel;
    Label95: TLabel;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    Label96: TLabel;
    DBEdit101: TDBEdit;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    Label99: TLabel;
    DBEdit104: TDBEdit;
    Label100: TLabel;
    DBEdit105: TDBEdit;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    Label106: TLabel;
    Label107: TLabel;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    Label108: TLabel;
    DBEdit113: TDBEdit;
    Label109: TLabel;
    Label110: TLabel;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    Label112: TLabel;
    Label113: TLabel;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    Label114: TLabel;
    DBEdit119: TDBEdit;
    Label115: TLabel;
    Label116: TLabel;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    Label118: TLabel;
    Label119: TLabel;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    Label120: TLabel;
    DBEdit125: TDBEdit;
    Label105: TLabel;
    DBEdit110: TDBEdit;
    GroupBox17: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid1Expression(Sender: TObject; Expression: String;
      var Text: String; var Value: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCadOrdemServico: TDmCadOrdemServico;
  end;

var
  frmCadOS_Motor: TfrmCadOS_Motor;

implementation

uses DB;

{$R *.dfm}

procedure TfrmCadOS_Motor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadOS_Motor.btnCancelarClick(Sender: TObject);
begin
  fDmCadOrdemServico.cdsCsmOsMotorServ.Cancel;
  fDmCadOrdemServico.cdsCsmOsMotor.Cancel;
  Close;
end;

procedure TfrmCadOS_Motor.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCadOrdemServico);

  if not fDmCadOrdemServico.cdsCsmMotorServicos.Active then
    fDmCadOrdemServico.cdsCsmMotorServicos.Open;

  fDmCadOrdemServico.cdsCsmOsMotorServ.Close;
  fDmCadOrdemServico.sdsCsmOsMotorServ.CommandText := fDmCadOrdemServico.ctCsmOsMotorServ;
  fDmCadOrdemServico.sdsCsmOsMotorServ.ParamByName('ID').AsInteger := fDmCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDmCadOrdemServico.cdsCsmOsMotorServ.Open;

  fDmCadOrdemServico.cdsCsmOsMotor.Close;
  fDmCadOrdemServico.sdsCsmOsMotor.ParamByName('ID').AsInteger := fDmCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDmCadOrdemServico.cdsCsmOsMotor.Open;

  fDmCadOrdemServico.cdsCsmOsMotorBobinagem.Close;
  fDmCadOrdemServico.sdsCsmOsMotorBobinagem.ParamByName('ID').AsInteger := fDmCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDmCadOrdemServico.cdsCsmOsMotorBobinagem.Open;

  SMDBGrid1.DataSource.Enabled := False;
  while not fDmCadOrdemServico.cdsCsmMotorServicos.Eof do
  begin
    fDmCadOrdemServico.cdsCsmOsMotorServ.IndexFieldNames := 'ID;ID_SERVICO';
    if not fDmCadOrdemServico.cdsCsmOsMotorServ.FindKey([fDmCadOrdemServico.cdsOrdemServicoID.AsInteger,
                                                        fDmCadOrdemServico.cdsCsmMotorServicosID.AsInteger]) then
    begin
      fDmCadOrdemServico.cdsCsmOsMotorServ.Insert;
      fDmCadOrdemServico.cdsCsmOsMotorServID.AsInteger         := fDmCadOrdemServico.cdsOrdemServicoID.AsInteger;
      fDmCadOrdemServico.cdsCsmOsMotorServID_SERVICO.AsInteger := fDmCadOrdemServico.cdsCsmMotorServicosID.AsInteger;
      fDmCadOrdemServico.cdsCsmOsMotorServSERVICO.AsString     := fDmCadOrdemServico.cdsCsmMotorServicosSERVICO.AsString;
      fDmCadOrdemServico.cdsCsmOsMotorServPOSICAO.AsString     := fDmCadOrdemServico.cdsCsmMotorServicosPOSICAO.AsString;
      fDmCadOrdemServico.cdsCsmOsMotorServMARCADO.AsString     := 'N';
      fDmCadOrdemServico.cdsCsmOsMotorServ.Post;
      fDmCadOrdemServico.cdsCsmOsMotorServ.ApplyUpdates(0);
    end;
    fDmCadOrdemServico.cdsCsmMotorServicos.Next;
  end;
  fDmCadOrdemServico.cdsCsmOsMotorServ.IndexFieldNames := 'POSICAO;FLAG';
  SMDBGrid1.DataSource.Enabled := True;
end;

procedure TfrmCadOS_Motor.btnConfirmarClick(Sender: TObject);
begin
  if fDmCadOrdemServico.cdsCsmOsMotor.State in [dsEdit, dsInsert] then
  begin
    fDmCadOrdemServico.cdsCsmOsMotor.Post;
    fDmCadOrdemServico.cdsCsmOsMotor.ApplyUpdates(0);
  end;
  if fDmCadOrdemServico.cdsCsmOsMotorBobinagem.State in [dsEdit, dsInsert] then
  begin
    fDmCadOrdemServico.cdsCsmOsMotorBobinagem.Post;
    fDmCadOrdemServico.cdsCsmOsMotorBobinagem.ApplyUpdates(0);
  end;
  fDmCadOrdemServico.cdsCsmOsMotorServ.ApplyUpdates(0);
  Close;
end;

procedure TfrmCadOS_Motor.SMDBGrid1Expression(Sender: TObject;
  Expression: String; var Text: String; var Value: Boolean);
begin
  if (fDmCadOrdemServico.cdsCsmOsMotorServ.FieldByName(Expression).AsInteger = 1) then
  begin
    Value := True;
    Text  := '-=-=-=- ' + fDmCadOrdemServico.cdsCsmOsMotorServPOSICAO.AsString + '-=-=-=- ';
  end;
end;

end.
