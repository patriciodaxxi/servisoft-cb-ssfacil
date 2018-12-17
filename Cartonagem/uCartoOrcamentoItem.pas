unit uCartoOrcamentoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, ExtCtrls, uDmCartoOrcamento, rsDBUtils, Mask, DBCtrls, db;

type
  TfCartoOrcamentoItem = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCartoOrcamento: TDmCartoOrcamento;
  end;

var
  fCartoOrcamentoItem: TfCartoOrcamentoItem;

implementation

{$R *.dfm}

procedure TfCartoOrcamentoItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCartoOrcamentoItem.BitBtn2Click(Sender: TObject);
begin
  fDmCartoOrcamento.cdsCartoOrcamentoItem.Cancel;
  Close;
end;

procedure TfCartoOrcamentoItem.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfCartoOrcamentoItem.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCartoOrcamento);
end;

procedure TfCartoOrcamentoItem.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmCartoOrcamento.cdsCartoOrcamentoItem.State in [dsEdit,dsInsert] then
    fDmCartoOrcamento.cdsCartoOrcamentoItem.Cancel;
end;

end.
