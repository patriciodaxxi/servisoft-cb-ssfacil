unit UCadFechamento_Sangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, NxCollection, ExtCtrls, Grids,
  DBGrids, SMDBGrid, UDMCadFechamento, DB, StdCtrls, Mask, ToolEdit, CurrEdit, DBCtrls;

type
  TfrmCadFechamento_Sangria = class(TForm)
    SMDBGrid4: TSMDBGrid;
    Panel1: TPanel;
    btnCancelar: TNxButton;
    btnExcluir: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnConfirmar: TNxButton;
    Label2: TLabel;
    Edit1: TEdit;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadFechamento: TDMCadFechamento;
    vES: String;
  end;

var
  frmCadFechamento_Sangria: TfrmCadFechamento_Sangria;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadFechamento_Sangria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MessageDlg('Imprimir recibo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    case fDMCadFechamento.qCupomParametrosIMPRESSORA_FISCAL.AsInteger of
      5: fDMCadFechamento.prc_Imprime_ReciboW(fDMCadFechamento.cdsFechamento_RetITEM.AsInteger,
                                        fDMCadFechamento.cdsFechamento_RetES.AsString);
      6: begin
           if vPorta <> vImpressora_Padrao then
             SetDefaultPrinter(vPorta);
           fDMCadFechamento.prc_Imprime_ReciboC(fDMCadFechamento.cdsFechamento_RetITEM.AsInteger,
                                                fDMCadFechamento.cdsFechamento_RetES.AsString);
           if vPorta <> vImpressora_Padrao then
             SetDefaultPrinter(vImpressora_Padrao);
         end;
    end;
  end;
  vID_Fechamento_Pos := 0;
  Action := Cafree;
end;

procedure TfrmCadFechamento_Sangria.btnCancelarClick(Sender: TObject);
begin
  if fDMCadFechamento.cdsFechamento_Ret.State in [dsEdit,dsInsert] then
    fDMCadFechamento.cdsFechamento.CancelUpdates;
  Close;
end;

procedure TfrmCadFechamento_Sangria.FormShow(Sender: TObject);
begin
  if not Assigned(fDMCadFechamento) then
    fDmCadFechamento := TDmCadFechamento.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFechamento);

  if vID_Fechamento_Pos > 0 then
    fDMCadFechamento.prc_Localizar(vID_Fechamento_Pos);

  if not fDMCadFechamento.cdsFechamento_Ret.Active then
  begin
    fDMCadFechamento.cdsFechamento_Ret.Open;
    
  end;
  fDMCadFechamento.cdsFechamento_Ret.Last;
  fDMCadFechamento.vItem_Sangria := fDMCadFechamento.cdsFechamento_RetITEM.AsInteger;
  if vES = 'E' then
    Label1.Caption := 'Valor de Suprimento:'
  else
    Label1.Caption := 'Valor de Sangria:';

  if vUsaGaveta then
    prc_AbreGaveta(1);
end;

procedure TfrmCadFechamento_Sangria.btnConfirmarClick(Sender: TObject);
begin
  if CurrencyEdit1.Value = 0 then
    Exit;
  fDMCadFechamento.cdsFechamento_Ret.Insert;
  fDMCadFechamento.cdsFechamento_RetDATA.AsDateTime    := Now;
  fDMCadFechamento.cdsFechamento_RetVALOR.AsCurrency   := CurrencyEdit1.Value;
  fDMCadFechamento.cdsFechamento_RetDESCRICAO.AsString := Edit1.Text;
  fDMCadFechamento.cdsFechamento_RetES.AsString        := vES;
  fDMCadFechamento.cdsFechamento_Ret.Post;
  fDMCadFechamento.cdsFechamento.ApplyUpdates(0);
  Edit1.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit1.SetFocus;
  btnCancelar.Caption := '(F10) Fechar';

  fDMCadFechamento.cdsFechamento_Ret.Last;
end;

procedure TfrmCadFechamento_Sangria.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadFechamento.cdsFechamento_Ret.Delete;
  fDMCadFechamento.cdsFechamento_Ret.ApplyUpdates(0);
end;

procedure TfrmCadFechamento_Sangria.SMDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadFechamento.cdsFechamento_RetES.AsString = 'S' then
    AFont.Color := clRed
  else
    AFont.Color := clBlue;
end;

procedure TfrmCadFechamento_Sangria.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    btnCancelarClick(Sender);
end;

end.
