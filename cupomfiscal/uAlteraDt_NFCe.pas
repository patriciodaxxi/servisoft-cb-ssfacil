unit uAlteraDt_NFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uDmCupomFiscal, ExtCtrls, RzPanel, Mask,
  StdCtrls, DBCtrls, NxCollection, ToolEdit, NxEdit;

type
  TfrmAlteraDt_NFCe = class(TForm)
    gbxVendedor: TRzGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    btnAtualizar: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    btnNaoAtualizar: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxTimePicker1: TNxTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNaoAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  frmAlteraDt_NFCe: TfrmAlteraDt_NFCe;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmAlteraDt_NFCe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAlteraDt_NFCe.btnNaoAtualizarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAlteraDt_NFCe.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  NxDatePicker1.Date := Date;
  NxTimePicker1.Time := Now;
end;

procedure TfrmAlteraDt_NFCe.btnAtualizarClick(Sender: TObject);
begin
  fDmCupomFiscal.cdsCupomFiscal.Edit;
  fDmCupomFiscal.cdsCupomFiscalDTEMISSAO.AsDateTime := NxDatePicker1.Date;
  fDmCupomFiscal.cdsCupomFiscalHREMISSAO.AsDateTime := NxTimePicker1.Time;
  fDmCupomFiscal.cdsCupomFiscal.Post;
  fDmCupomFiscal.cdsCupomFiscal.ApplyUpdates(0);
  Close;
end;

end.
