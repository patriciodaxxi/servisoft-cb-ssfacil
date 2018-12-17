unit UAltEstoque_Mov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMEstoque, StdCtrls, DBCtrls, Mask,
  NxCollection, ExtCtrls;

type
  TfrmAltEstoque_Mov = class(TForm)
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    fDMEstoque: TDMEstoque;
    vVlr_Unitario_Ant: Real;
    vGerar_Custo_Ant: String;

  public
    { Public declarations }
    vID_Estoque_Mov_Local: Integer;
    vPreco_Local : Real;
  end;

var
  frmAltEstoque_Mov: TfrmAltEstoque_Mov;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmAltEstoque_Mov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAltEstoque_Mov.FormShow(Sender: TObject);
begin
  fDMEstoque := TDMEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMEstoque);
  fDMEstoque.prc_Abrir_Estoque_Mov(vID_Estoque_Mov_Local);
  Panel2.Enabled := not(fDMEstoque.cdsEstoque_Mov.IsEmpty);
  btnConfirmar.Enabled := not(fDMEstoque.cdsEstoque_Mov.IsEmpty);
  if not fDMEstoque.cdsEstoque_Mov.IsEmpty then
    fDMEstoque.cdsEstoque_Mov.Edit;
  vVlr_Unitario_Ant := StrToFloat(FormatFloat('0.000000',fDMEstoque.cdsEstoque_MovVLR_UNITARIO.AsFloat));
  vGerar_Custo_Ant  := fDMEstoque.cdsEstoque_MovGERAR_CUSTO.AsString;
  if StrToFloat(FormatFloat('0.0000',vPreco_Local)) > 0 then
    fDMEstoque.cdsEstoque_MovVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000#',vPreco_Local));
  if fDMEstoque.cdsEstoque_MovTIPO_ES.AsString = 'E' then
    fDMEstoque.cdsEstoque_MovGERAR_CUSTO.AsString := 'S';
end;

procedure TfrmAltEstoque_Mov.btnCancelarClick(Sender: TObject);
begin
  fDMEstoque.cdsEstoque_Mov.CancelUpdates;
  Close;
end;

procedure TfrmAltEstoque_Mov.btnConfirmarClick(Sender: TObject);
begin
  //if MessageDlg('Deseja confirmar a alteração do movimento do estoque?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
  //  Exit;

  if (fDMEstoque.cdsEstoque_MovGERAR_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.000000',fDMEstoque.cdsEstoque_MovVLR_UNITARIO.AsFloat)) <= 0) then
  begin
    MessageDlg('*** Valor Unitário não pode ser zerado, quando estiver marcado para Gerar Custo!', mtError, [mbOk], 0);
    Exit;
  end;

  fDMEstoque.cdsEstoque_Mov.Post;
  if (StrToFloat(FormatFloat('0.000000',fDMEstoque.cdsEstoque_MovVLR_UNITARIO.AsFloat)) <> StrToFloat(FormatFloat('0.000000',vVlr_Unitario_Ant))) or
     (fDMEstoque.cdsEstoque_MovGERAR_CUSTO.AsString <> vGerar_Custo_Ant) then
    vRefazer_Cons := True;
  fDMEstoque.cdsEstoque_Mov.ApplyUpdates(0);
  Close;

end;

procedure TfrmAltEstoque_Mov.DBEdit3Exit(Sender: TObject);
begin
  if fDMEstoque.cdsEstoque_MovTIPO_ES.AsString = 'E' then
    fDMEstoque.cdsEstoque_MovQTD2.AsFloat := fDMEstoque.cdsEstoque_MovQTD.AsFloat
  else
    fDMEstoque.cdsEstoque_MovQTD2.AsFloat := fDMEstoque.cdsEstoque_MovQTD.AsFloat * -1;
end;

end.
