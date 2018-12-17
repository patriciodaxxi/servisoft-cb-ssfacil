unit UCadNotaFiscal_Lacre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadNotaFiscal, StdCtrls,
  Buttons, DBCtrls, DB, Grids, DBGrids, SMDBGrid;

type
  TfrmCadNotaFiscal_Lacre = class(TForm)
    Panel2: TPanel;
    Label7: TLabel;
    SMDBGrid1: TSMDBGrid;
    Edit2: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }

    procedure prc_Limpar_Variaveis;

    function  fnc_Erro: Boolean;

  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;

  end;

var
  frmCadNotaFiscal_Lacre: TfrmCadNotaFiscal_Lacre;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Lacre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Lacre.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Lacre.BitBtn1Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  try
    fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Last;
    vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_LacreITEM.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Insert;
    fDMCadNotaFiscal.cdsNotaFiscal_LacreID.AsInteger      := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_LacreITEM.AsInteger    := vItemAux + 1;
    fDMCadNotaFiscal.cdsNotaFiscal_LacreNUMLACRE.AsString := Edit2.Text;
    fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Post;

    prc_Limpar_Variaveis;
    Edit2.SetFocus;

  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

function TfrmCadNotaFiscal_Lacre.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result := False;
  vMsgErro := '';
  if Edit2.Text = '' then
    vMsgErro := vMsgErro + #13 + '*** Nº Lacre não informado!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := True;
end;

procedure TfrmCadNotaFiscal_Lacre.prc_Limpar_Variaveis;
begin
  Edit2.Clear;
end;

procedure TfrmCadNotaFiscal_Lacre.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadNotaFiscal.cdsNotaFiscal_Lacre.Delete;
end;

end.
