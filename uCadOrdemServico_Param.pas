unit uCadOrdemServico_Param;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, RxDBComb, Mask, DBCtrls,
  db, Buttons, ExtCtrls, uDmCadOrdemServico, rsDBUtils, RxLookup, ComCtrls;

type
  TfrmCadOrdemServico_Param = class(TForm)
    Panel3: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label22: TLabel;
    Label15: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    fDmCadOrdemServico: TDmCadOrdemServico;
    procedure prcHabilita;
  public
  end;

var
  frmCadOrdemServico_Param: TfrmCadOrdemServico_Param;

implementation

{$R *.dfm}

procedure TfrmCadOrdemServico_Param.FormShow(Sender: TObject);
begin
  fDmCadOrdemServico := TDmCadOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmCadOrdemServico);
end;

procedure TfrmCadOrdemServico_Param.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadOrdemServico_Param.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCadOrdemServico);
end;

procedure TfrmCadOrdemServico_Param.btnAlterarClick(Sender: TObject);
begin
  fDmCadOrdemServico.cdsOSParametros.Edit;
  prcHabilita;
end;

procedure TfrmCadOrdemServico_Param.btnConfirmarClick(Sender: TObject);
begin
  fDmCadOrdemServico.cdsOSParametros.Post;
  fDmCadOrdemServico.cdsOSParametros.ApplyUpdates(0);
  prcHabilita;
end;

procedure TfrmCadOrdemServico_Param.btnCancelarClick(Sender: TObject);
begin
  fDmCadOrdemServico.cdsOSParametros.Cancel;
  prcHabilita;
end;

procedure TfrmCadOrdemServico_Param.prcHabilita;
begin
  btnAlterar.Enabled   := not btnAlterar.Enabled;
  btnCancelar.Enabled  := not btnCancelar.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  Panel1.Enabled       := not Panel1.Enabled;
end;

end.
