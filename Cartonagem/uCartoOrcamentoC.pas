unit uCartoOrcamentoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, ExtCtrls, uDmCartoOrcamento, NxEdit, NxCollection, rsDBUtils;

type
  TfCartoOrcamentoC = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxButton1: TNxButton;
    NxComboBox1: TNxComboBox;
    BitBtn2: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    fDmCartoOrcamento: TDmCartoOrcamento;
  public
    { Public declarations }
  end;

var
  fCartoOrcamentoC: TfCartoOrcamentoC;

implementation

uses uCartoOrcamento, uCartoOrcamentoR;

{$R *.dfm}

procedure TfCartoOrcamentoC.BitBtn4Click(Sender: TObject);
begin
  fDmCartoOrcamento.prc_Inserir;
  fCartoOrcamento := TfCartoOrcamento.Create(Self);
  fCartoOrcamento.fDmCartoOrcamento := fDmCartoOrcamento;
  fCartoOrcamento.ShowModal;
end;

procedure TfCartoOrcamentoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfCartoOrcamentoC.FormShow(Sender: TObject);
begin
  if not Assigned(fDmCartoOrcamento) then
    fDmCartoOrcamento := TDmCartoOrcamento.Create(Self);
  fDmCartoOrcamento.ctConsOrcamento := fDmCartoOrcamento.sdsCartoOrcamentoCons.CommandText;
  fDmCartoOrcamento.ctOrcamento     := fDmCartoOrcamento.sdsCartoOrcamento.CommandText;
  fDmCartoOrcamento.ctMaterial      := fdmCartoOrcamento.sdsMaterial.CommandText;

  NxDatePicker2.Date := Date;
  NxDatePicker1.Date := IncMonth(Date,-1);
end;

procedure TfCartoOrcamentoC.BitBtn5Click(Sender: TObject);
begin
  if fdmCartoOrcamento.cdsCartoOrcamentoCons.IsEmpty then
    Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDmCartoOrcamento.prc_Excluir(fDmCartoOrcamento.cdsCartoOrcamentoConsID.AsInteger);
    BitBtn1.Click;
  end;
end;

procedure TfCartoOrcamentoC.BitBtn1Click(Sender: TObject);
begin
  Panel2.Visible := not(Panel2.Visible);
end;

procedure TfCartoOrcamentoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmCartoOrcamento.cdsCartoOrcamentoCons.IsEmpty then
    Exit;

  fDmCartoOrcamento.prc_Localizar(fDmCartoOrcamento.cdsCartoOrcamentoConsID.AsInteger);
  fDmCartoOrcamento.cdsCartoOrcamento.Edit;

  fCartoOrcamento := TfCartoOrcamento.Create(Self);
  fCartoOrcamento.fDmCartoOrcamento := fDmCartoOrcamento;
  fCartoOrcamento.ShowModal;

  fDmCartoOrcamento.cdsCartoOrcamentoCons.Close;
  fDmCartoOrcamento.cdsCartoOrcamentoCons.Open;
end;

procedure TfCartoOrcamentoC.NxButton1Click(Sender: TObject);
begin
  fDmCartoOrcamento.cdsCartoOrcamentoCons.Close;
  fDmCartoOrcamento.sdsCartoOrcamentoCons.CommandText := fDmCartoOrcamento.ctConsOrcamento;
  if (NxDatePicker1.Date > 1) then
    fDmCartoOrcamento.sdsCartoOrcamentoCons.CommandText := fDmCartoOrcamento.sdsCartoOrcamentoCons.CommandText +
                                                           ' AND DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date));
  if (NxDatePicker2.Date > 1) then
    fDmCartoOrcamento.sdsCartoOrcamentoCons.CommandText := fDmCartoOrcamento.sdsCartoOrcamentoCons.CommandText +
                                                           ' AND DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.Date));
  fDmCartoOrcamento.cdsCartoOrcamentoCons.Open;
end;

procedure TfCartoOrcamentoC.BitBtn2Click(Sender: TObject);
begin
  if fDmCartoOrcamento.cdsCartoOrcamentoCons.IsEmpty then
    Exit;

  fDmCartoOrcamento.prc_Localizar(fDmCartoOrcamento.cdsCartoOrcamentoConsID.AsInteger);

  fCartoOrcamentoR := TfCartoOrcamentoR.Create(Self);
  fCartoOrcamentoR.fDmCartoOrcamento := fDmCartoOrcamento;
  fCartoOrcamentoR.RLReport1.Preview;
end;

end.
