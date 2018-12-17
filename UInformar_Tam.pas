unit UInformar_Tam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBVGrids, DB,
  DBClient, NxCollection, UDMInformar_Tam, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit;

type
  TfrmInformar_Tam = class(TForm)
    VDBGrid1: TVDBGrid;
    NxPanel1: TNxPanel;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    btnGerar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Abrir_qQtdGrade_Itens;
    procedure limpa_qtdTamanho;

  public
    { Public declarations }
    fDMInformar_Tam: TDMInformar_Tam;                               
  end;

var
  frmInformar_Tam: TfrmInformar_Tam;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmInformar_Tam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmInformar_Tam.btnConfirmarClick(Sender: TObject);
begin                                                 
  fDMInformar_Tam.vTamanho_Ini := '';
  fDMInformar_Tam.vQtd_Ini     := 0;
  fDMInformar_Tam.vGravar      := 'S';
  fDMInformar_Tam.vQtd_Grade   := 0;
  fDMInformar_Tam.mTamanho.First;
  while not fDMInformar_Tam.mTamanho.Eof do
  begin
    if (StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0) and (trim(fDMInformar_Tam.vTamanho_Ini) = '') then
    begin
      fDMInformar_Tam.vTamanho_Ini := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMInformar_Tam.vQtd_Ini     := StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mTamanhoQtd.AsFloat));
    end;
    fDMInformar_Tam.vQtd_Grade := StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.vQtd_Grade + fDMInformar_Tam.mTamanhoQtd.AsFloat));
    fDMInformar_Tam.mTamanho.Next;
  end;
  Close;
end;

procedure TfrmInformar_Tam.btnCancelarClick(Sender: TObject);
begin
  fDMInformar_Tam.vGravar := 'N';
  Close;
end;

procedure TfrmInformar_Tam.VDBGrid1Enter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfrmInformar_Tam.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfrmInformar_Tam.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfrmInformar_Tam.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMInformar_Tam);
  fDMInformar_Tam.mTamanho.First;

  Panel1.Visible := not(fDMInformar_Tam.cdsQtdGrade.IsEmpty);
  if Panel1.Visible then
  begin
    CurrencyEdit1.SetFocus;
    prc_Abrir_qQtdGrade_Itens;
    Label2.Caption := 'Dividir a quantidade por ' + IntToStr(fDMInformar_Tam.cdsQtdGradeQTD.AsInteger);
  end;
end;

procedure TfrmInformar_Tam.prc_Abrir_qQtdGrade_Itens;
begin
  fDMInformar_Tam.qQtdGrade_Itens.Close;
  fDMInformar_Tam.qQtdGrade_Itens.ParamByName('ID').AsInteger :=  fDMInformar_Tam.cdsQtdGradeID.AsInteger;
  fDMInformar_Tam.qQtdGrade_Itens.Open;
end;

procedure TfrmInformar_Tam.btnGerarClick(Sender: TObject);
var
  vQtdDiv: Integer;
begin
  if CurrencyEdit1.AsInteger <= 0 then
    exit;
  vQtdDiv := CurrencyEdit1.AsInteger div fDMInformar_Tam.cdsQtdGradeQTD.AsInteger;
  limpa_qtdTamanho;
  if CurrencyEdit1.AsInteger mod fDMInformar_Tam.cdsQtdGradeQTD.AsInteger > 0 then
    exit;
  while not fDMInformar_Tam.qQtdGrade_Itens.eof do
  begin
    if (fDMInformar_Tam.mTamanho.Locate('Tamanho',fDMInformar_Tam.qQtdGrade_ItensTAMANHO.AsString,[loCaseInsensitive])) and
       (fDMInformar_Tam.qQtdGrade_ItensQTD.AsInteger > 0) then
    begin
      fDMInformar_Tam.mTamanho.Edit;
      fDMInformar_Tam.mTamanhoQtd.AsInteger := vQtdDiv * fDMInformar_Tam.qQtdGrade_ItensQTD.AsInteger;
      fDMInformar_Tam.mTamanho.Post;
    end;
    fDMInformar_Tam.qQtdGrade_Itens.Next;
  end;
  btnConfirmar.SetFocus;
end;

procedure TfrmInformar_Tam.limpa_qtdTamanho;
begin
  fDMInformar_Tam.mTamanho.First;
  while not fDMInformar_Tam.mTamanho.Eof do
  begin
    fDMInformar_Tam.mTamanho.Edit;
    fDMInformar_Tam.mTamanhoQtd.AsInteger := 0;
    fDMInformar_Tam.mTamanho.Post;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

end.
