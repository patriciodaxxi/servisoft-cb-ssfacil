unit UConsReal_Projetado_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsReal, NxCollection, StdCtrls, ExtCtrls, Grids, DBGrids,
  SMDBGrid, Mask, DBCtrls, RxLookup, DB;

type
  TfrmConsReal_Projetado_Det = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    NxButton1: TNxButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    pnlCadastro: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label65: TLabel;
    RxDBLookupCombo19: TRxDBLookupCombo;
    Label3: TLabel;
    NxButton2: TNxButton;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid1Enter(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure RxDBLookupCombo19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlCadastroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMConsReal: TDMConsReal;
    
  end;

var
  frmConsReal_Projetado_Det: TfrmConsReal_Projetado_Det;

implementation

uses rsDBUtils, USel_ContaOrc, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsReal_Projetado_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsReal_Projetado_Det.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsReal);
end;

procedure TfrmConsReal_Projetado_Det.NxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsReal_Projetado_Det.SMDBGrid1Enter(Sender: TObject);
begin
  pnlCadastro.Visible := False;
end;

procedure TfrmConsReal_Projetado_Det.Panel1Enter(Sender: TObject);
begin
  pnlCadastro.Visible := False;
end;

procedure TfrmConsReal_Projetado_Det.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDMConsReal.cdsConDetFornID_FORNECEDOR.AsInteger <= 0 then
    exit;
  fDMConsReal.cdsContaOrcamento.Close;
  fDMConsReal.cdsContaOrcamento.Open;

  fDMConsReal.cdsPessoa.Close;
  fDMConsReal.sdsPessoa.ParamByName('CODIGO').AsInteger := fDMConsReal.cdsConDetFornID_FORNECEDOR.AsInteger;
  fDMConsReal.cdsPessoa.Open;
  if fDMConsReal.cdsPessoa.IsEmpty then
    exit;
  fDMConsReal.cdsPessoa.Edit;  
  pnlCadastro.Visible := True;
  RxDBLookupCombo19.SetFocus;
end;

procedure TfrmConsReal_Projetado_Det.NxButton2Click(Sender: TObject);
begin
  if fDMConsReal.cdsPessoa.State in [dsEdit] then
  begin
    fDMConsReal.cdsPessoa.Post;
    fDMConsReal.cdsPessoa.ApplyUpdates(0);
  end;
  SMDBGrid1.SetFocus;
end;

procedure TfrmConsReal_Projetado_Det.RxDBLookupCombo19KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_ContaOrcamento_Pos := fDMConsReal.cdsPessoaFORNECEDOR_CONTA_ID.AsInteger;
    frmSel_ContaOrc := TfrmSel_ContaOrc.Create(Self);
    frmSel_ContaOrc.ShowModal;
    fDMConsReal.cdsPessoaFORNECEDOR_CONTA_ID.AsInteger := vID_ContaOrcamento_Pos;
    FreeAndNil(frmSel_ContaOrc);
  end;
end;

procedure TfrmConsReal_Projetado_Det.pnlCadastroExit(Sender: TObject);
begin
  if fDMConsReal.cdsPessoa.State in [dsEdit] then
    fDMConsReal.cdsPessoa.Cancel;
end;

end.
