unit UGerar_Necessidade_Compras_Forn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RxLookup,
  StdCtrls, NxCollection, ExtCtrls, Buttons, UDMCadNecessidade_Compras;

type
  TfrmGerar_Necessidade_Compras_Forn = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    SpeedButton4: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadNecessidade_Compras: TDMCadNecessidade_Compras;
  end;

var
  frmGerar_Necessidade_Compras_Forn: TfrmGerar_Necessidade_Compras_Forn;

implementation

uses USel_Pessoa, uUtilPadrao;

{$R *.dfm}

procedure TfrmGerar_Necessidade_Compras_Forn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_Necessidade_Compras_Forn.btnConfirmarClick(Sender: TObject);
var
  vNum_Mapa: Integer;
  vID_Material: Integer;
  vID_Cor: Integer;
  vGravar: Boolean;
begin
  vNum_Mapa    := fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger;
  vID_Material := fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger;
  vID_Cor      := fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger;
  fDMCadNecessidade_Compras.mMaterial.First;
  while not fDMCadNecessidade_Compras.mMaterial.Eof do
  begin
    if (vNum_Mapa = fDMCadNecessidade_Compras.mMaterialNum_Mapa.AsInteger) and (vID_Material = fDMCadNecessidade_Compras.mMaterialID_Material.AsInteger) then
    begin
      vGravar := True;
      if (vID_Cor <> fDMCadNecessidade_Compras.mMaterialID_Cor.AsInteger) and not(CheckBox1.Checked) then
        vGravar := False;
      if vGravar then
      begin
        fDMCadNecessidade_Compras.mMaterial.Edit;
        if RxDBLookupCombo1.Text <> '' then
        begin
          fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger  := RxDBLookupCombo1.KeyValue;
          fDMCadNecessidade_Compras.mMaterialNome_Fornecedor.AsString := RxDBLookupCombo1.Text;
        end
        else
        begin
          fDMCadNecessidade_Compras.mMaterialID_Fornecedor.AsInteger  := 0;
          fDMCadNecessidade_Compras.mMaterialNome_Fornecedor.AsString := '';
        end;
        fDMCadNecessidade_Compras.mMaterial.Post;
      end;
    end;
    fDMCadNecessidade_Compras.mMaterial.Next;
  end;
  Close;
end;

procedure TfrmGerar_Necessidade_Compras_Forn.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGerar_Necessidade_Compras_Forn.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodPessoa_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'F';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodPessoa_Pos;
    RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmGerar_Necessidade_Compras_Forn.SpeedButton4Click(Sender: TObject);
begin
  fDMCadNecessidade_Compras.cdsFornecedor.Close;
  fDMCadNecessidade_Compras.cdsFornecedor.Open;
end;

end.
