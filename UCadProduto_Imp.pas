unit UCadProduto_Imp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadProduto, ExtCtrls, NxCollection, UCBase, StdCtrls, Mask,
  DBCtrls, ToolEdit, RXDBCtrl, RxLookup, Buttons, RzPanel, RxDBComb, DB;

type
  TfrmCadProduto_Imp = class(TForm)
    Panel1: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    Panel2: TPanel;
    Label5: TLabel;
    Label9: TLabel;
    NxPanel1: TNxPanel;
    DBText1: TDBText;
    Label1: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBDateEdit1: TDBDateEdit;
    gbxVendedor: TRzGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    btnExcluir: TNxButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
   procedure prc_Abrir_Produto_Imp;
   procedure prc_Habilitar;
   
  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;
    
  end;

var
  frmCadProduto_Imp: TfrmCadProduto_Imp;

implementation

uses
  rsDBUtils;

{$R *.dfm}

procedure TfrmCadProduto_Imp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Imp.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Imp.CancelUpdates;

  Action := Cafree;
end;

procedure TfrmCadProduto_Imp.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  prc_Abrir_Produto_Imp;
end;

procedure TfrmCadProduto_Imp.prc_Abrir_Produto_Imp;
begin
    fDMCadProduto.cdsProduto_Imp.Close;
    fDMCadProduto.sdsProduto.ParamByName('ID').AsInteger := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
    fDMCadProduto.cdsProduto_Imp.Open;
end;

procedure TfrmCadProduto_Imp.btnAlterarClick(Sender: TObject);
begin
  prc_Habilitar;
  DBDateEdit1.SetFocus;
  if fDMCadProduto.cdsProduto_Imp.IsEmpty then
  begin
    fDMCadProduto.cdsProduto_Imp.Insert;
    fDMCadProduto.cdsProduto_ImpID.AsInteger := fDMCadProduto.cdsProduto_ConsultaID.AsInteger;
  end
  else
    fDMCadProduto.cdsProduto_Imp.Edit;
end;

procedure TfrmCadProduto_Imp.prc_Habilitar;
begin
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  Panel2.Enabled       := not(Panel2.Enabled);
end;

procedure TfrmCadProduto_Imp.btnConfirmarClick(Sender: TObject);
begin
  fDMCadProduto.cdsProduto_Imp.Post;
  fDMCadProduto.cdsProduto_Imp.ApplyUpdates(0);
  Close;
end;

procedure TfrmCadProduto_Imp.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir a ST do Produto?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Imp.Delete;
  fDMCadProduto.cdsProduto_Imp.ApplyUpdates(0);
  Close;
end;

end.
