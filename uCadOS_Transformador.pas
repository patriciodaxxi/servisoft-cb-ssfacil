unit uCadOS_Transformador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Grids, DBGrids,
  SMDBGrid, RzTabs, ExtCtrls, Mask, NxCollection, UDMCadOrdemServico, RSDBUtils, RxDBComb, RxLookup;

type
  TfrmCadOS_Transformador = class(TForm)
    Panel1: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet2: TRzTabSheet;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Label2: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    Label8: TLabel;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    Label10: TLabel;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    Label12: TLabel;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    Label14: TLabel;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    Label16: TLabel;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    Label15: TLabel;
    TabSheet1: TRzTabSheet;
    Label17: TLabel;
    DBEdit7: TDBEdit;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label26: TLabel;
    DBEdit18: TDBEdit;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    Label28: TLabel;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    DBEdit21: TDBEdit;
    Label30: TLabel;
    DBEdit22: TDBEdit;
    Label31: TLabel;
    DBEdit23: TDBEdit;
    Label32: TLabel;
    DBEdit24: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit26: TDBEdit;
    Label35: TLabel;
    DBEdit27: TDBEdit;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    TabSheet3: TRzTabSheet;
    GroupBox1: TGroupBox;
    Label47: TLabel;
    DBEdit38: TDBEdit;
    Label48: TLabel;
    DBEdit39: TDBEdit;
    Label49: TLabel;
    DBEdit40: TDBEdit;
    Label50: TLabel;
    DBEdit41: TDBEdit;
    Label51: TLabel;
    DBEdit42: TDBEdit;
    Label52: TLabel;
    DBEdit43: TDBEdit;
    GroupBox2: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    GroupBox3: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit31: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit61: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit32: TDBEdit;
    DBEdit36: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    GroupBox5: TGroupBox;
    DBEdit57: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit62: TDBEdit;
    Label69: TLabel;
    DBEdit63: TDBEdit;
    Label70: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit56: TDBEdit;
    Label71: TLabel;
    DBEdit64: TDBEdit;
    Label25: TLabel;
    Label72: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCadOrdemServico: TDmCadOrdemServico;
  end;

var
  frmCadOS_Transformador: TfrmCadOS_Transformador;

implementation

{$R *.dfm}

procedure TfrmCadOS_Transformador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadOS_Transformador.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOS_Transformador.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCadOrdemServico);

  if not fDmCadOrdemServico.cdsCsmOsTransformador.Active then
    fDmCadOrdemServico.cdsCsmOsTransformador.Open;
end;

procedure TfrmCadOS_Transformador.btnConfirmarClick(Sender: TObject);
begin
  fDmCadOrdemServico.cdsCsmOsTransformador.Post;
  fDmCadOrdemServico.cdsCsmOsTransformador.ApplyUpdates(0);
  Close;
end;

end.
