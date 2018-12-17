unit UNFe_ConsultaCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadPessoa, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, SMDBGrid, DB;

type
  TfNFe_ConsultaCadastro = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label22: TLabel;
    Label23: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DBEdit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;

  end;

var
  fNFe_ConsultaCadastro: TfNFe_ConsultaCadastro;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfNFe_ConsultaCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree; 
end;

procedure TfNFe_ConsultaCadastro.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
end;

procedure TfNFe_ConsultaCadastro.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfNFe_ConsultaCadastro.BitBtn1Click(Sender: TObject);
begin
  if (trim(fDMCadPessoa.cdsPessoaENDERECO.AsString) <> '') and (trim(fDMCadPessoa.cdsPessoaNUM_END.AsString) <> '') then
  begin
    if MessageDlg('Deseja alterar o endereço?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  if not(fDMCadPessoa.cdsConsultaCadastro.IsEmpty) and (fDMCadPessoa.cdsConsultaCadastrocSit.AsInteger = 0) then
  begin
    if MessageDlg('Registro da empresa não habilitado, Deseja copiar assim mesmo o endereço?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  fDMCadPessoa.prc_Gravar_Dados_Pessoa;
  Close;
end;

procedure TfNFe_ConsultaCadastro.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMCadPessoa.cdsConsultaCadastro.IsEmpty then
  begin
    if fDMCadPessoa.cdsConsultaCadastrocSit.AsInteger = 0 then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TfNFe_ConsultaCadastro.DBEdit5Change(Sender: TObject);
begin
  Label23.Visible := (DBEdit5.Text = '0');
end;

end.
