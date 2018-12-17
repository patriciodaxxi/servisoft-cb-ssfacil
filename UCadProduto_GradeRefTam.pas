unit UCadProduto_GradeRefTam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadProduto, NxCollection, Grids,
  DBGrids, SMDBGrid, RxLookup, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DBVGrids, DB;

type
  TfrmCadProduto_GradeRefTam = class(TForm)
    pnlDados: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel1: TPanel;
    Panel2: TPanel;
    VDBGrid1: TVDBGrid;
    SMDBGrid1: TSMDBGrid;
    btnMontaGrade: TNxButton;
    NxPanel1: TNxPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    btnAlterar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure btnMontaGradeClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    procedure MontaGrade;
    procedure prc_Abrir_qGradeItem(ID : Integer);

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    
  end;

var
  frmCadProduto_GradeRefTam: TfrmCadProduto_GradeRefTam;

implementation

uses rsDBUtils, Math;

{$R *.dfm}

procedure TfrmCadProduto_GradeRefTam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProduto_GradeRefTam.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  fDMCadProduto.mGradeRefTam.EmptyDataSet;
  pnlDados.Enabled      := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnMontaGrade.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  VDBGrid1.Enabled      := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  if pnlDados.Enabled then
    RxDBLookupCombo1.SetFocus;
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadProduto_GradeRefTam.btnConfirmarClick(Sender: TObject);
var
  x : String;
begin
  fDMCadProduto.mGradeRefTam.First;
  x := '';
  while not fDMCadProduto.mGradeRefTam.Eof do
  begin
    if fDMCadProduto.mGradeRefTamTamMaterial.AsString > '' then
    begin
      if not fDMCadProduto.cdsProduto_Tam.Locate('ID;TAMANHO',VarArrayOf([fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto.mGradeRefTamTamMaterial.AsString]),[locaseinsensitive]) then
      begin
        x := x + fDMCadProduto.mGradeRefTamTamanho.AsString + #13;
        fDMCadProduto.mGradeRefTam.Last;
      end;
    end;
    fDMCadProduto.mGradeRefTam.Next;
  end;
  if x <> '' then
  begin
    MessageDlg('Tamanhos não constam no produto: ' + x,mtInformation,[mbOK],0);
    exit;
  end;
  fDMCadProduto.mGradeRefTam.First;
  while not fDMCadProduto.mGradeRefTam.Eof do
  begin
    if fDMCadProduto.mGradeRefTamTamMaterial.AsString > '' then
    begin
      if fDMCadProduto.cdsProduto_MatTam.Locate('ID;ID_GRADE;TAMANHO',VarArrayOf([fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto.cdsGradeID.AsInteger,fDMCadProduto.mGradeRefTamTamanho.AsString]),[locaseinsensitive]) then
        fDMCadProduto.cdsProduto_MatTam.Edit
      else
      begin
        fDMCadProduto.cdsProduto_MatTam.Insert;
        fDMCadProduto.cdsProduto_MatTamID.AsInteger       := fDMCadProduto.cdsProdutoID.AsInteger;
        fDMCadProduto.cdsProduto_MatTamID_GRADE.AsInteger := fDMCadProduto.cdsGradeID.AsInteger;
        fDMCadProduto.cdsProduto_MatTamTAMANHO.AsString   := fDMCadProduto.mGradeRefTamTamanho.AsString;
      end;
      fDMCadProduto.cdsProduto_MatTamTAM_MATERIAL.AsString  := fDMCadProduto.mGradeRefTamTamMaterial.AsString;
      fDMCadProduto.cdsProduto_MatTamID_GRADE_MAT.AsInteger := fDMCadProduto.cdsProdutoID_GRADE.AsInteger;
      fDMCadProduto.cdsProduto_MatTam.Post;
    end;
    fDMCadProduto.mGradeRefTam.Next;
  end;
  RxDBLookupCombo1.ClearValue;
  fDMCadProduto.mGradeRefTam.EmptyDataSet;
  RxDBLookupCombo1.SetFocus;

  btnConfirmar.Enabled  := False;
  btnCancelar.Enabled   := False;
  btnMontaGrade.Enabled := False;
end;

procedure TfrmCadProduto_GradeRefTam.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  RxDBLookupCombo1.ClearValue;
  fDMCadProduto.mGradeRefTam.EmptyDataSet;
  btnConfirmar.Enabled  := False;
  btnCancelar.Enabled   := False;
  btnMontaGrade.Enabled := False;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfrmCadProduto_GradeRefTam.MontaGrade;
begin
  fDMCadProduto.mGradeRefTam.EmptyDataSet;
  prc_Abrir_qGradeItem(fDMCadProduto.cdsGradeID.AsInteger);
  while not fDMCadProduto.qGrade_Itens.Eof do
  begin
    fDMCadProduto.mGradeRefTam.Insert;
    fDMCadProduto.mGradeRefTamID.AsInteger := fDMCadProduto.qGrade_ItensID.AsInteger;
    fDMCadProduto.mGradeRefTamTamanho.AsString := fDMCadProduto.qGrade_ItensTAMANHO.AsString;
    fDMCadProduto.mGradeRefTamTamMaterial.AsString := '';
    fDMCadProduto.mGradeRefTam.Post;
    fDMCadProduto.qGrade_Itens.Next;
  end;
  fDMCadProduto.mGradeRefTam.First;
end;

procedure TfrmCadProduto_GradeRefTam.prc_Abrir_qGradeItem(ID: Integer);
begin
  fDMCadProduto.qGrade_Itens.Close;
  fDMCadProduto.qGrade_Itens.ParamByName('ID').AsInteger := ID;
  fDMCadProduto.qGrade_Itens.Open;
end;

procedure TfrmCadProduto_GradeRefTam.VDBGrid1Enter(Sender: TObject);
begin
 if VDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfrmCadProduto_GradeRefTam.btnMontaGradeClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
    exit;
  fDMCadProduto.cdsGrade.Locate('ID',RxDBLookupCombo1.KeyValue,([Locaseinsensitive]));

  MontaGrade;
  btnCancelar.Enabled   := True;
  btnConfirmar.Enabled  := True;
end;

procedure TfrmCadProduto_GradeRefTam.RxDBLookupCombo1Change(
  Sender: TObject);
begin
  btnMontaGrade.Enabled := (trim(RxDBLookupCombo1.Text) <> '');
  btnCancelar.Enabled   := False;
  btnConfirmar.Enabled  := False;
end;

procedure TfrmCadProduto_GradeRefTam.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_MatTam.IsEmpty then
    exit;
  if MessageDlg('Deseja alterar a Grade?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  RxDBLookupCombo1.KeyValue := fDMCadProduto.cdsProduto_MatTamID_GRADE.AsInteger;
  btnMontaGradeClick(Sender);
  
  fDMCadProduto.mGradeRefTam.First;
  while not fDMCadProduto.mGradeRefTam.Eof do
  begin
    if fDMCadProduto.cdsProduto_MatTam.Locate('ID;ID_GRADE;TAMANHO',VarArrayOf([fDMCadProduto.cdsProdutoID.AsInteger,fDMCadProduto.cdsGradeID.AsInteger,fDMCadProduto.mGradeRefTamTamanho.AsString]),[locaseinsensitive]) then
    begin
      fDMCadProduto.mGradeRefTam.Edit;
      fDMCadProduto.mGradeRefTamTamMaterial.AsString := fDMCadProduto.cdsProduto_MatTamTAM_MATERIAL.AsString;
      fDMCadProduto.mGradeRefTam.Post;
    end;
    fDMCadProduto.mGradeRefTam.Next;
  end;
end;

end.
