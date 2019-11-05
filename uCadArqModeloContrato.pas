unit uCadArqModeloContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  Mask, ToolEdit, RxDBComb, UDmCadServico_Int;

type
  TfrmCadArqModeloContrato = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    FilenameEdit1: TFilenameEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadServico_Int: TDMCadServico_Int;
  end;

var
  frmCadArqModeloContrato: TfrmCadArqModeloContrato;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadArqModeloContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadArqModeloContrato.BitBtn2Click(Sender: TObject);
begin
  fDMCadServico_Int.cdsServico_Int_Mod_Contrato.Cancel;
  Close;
end;

procedure TfrmCadArqModeloContrato.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadServico_Int);
  fDMCadServico_Int.cdsFilial.Open;
  FilenameEdit1.Text := fDMCadServico_Int.cdsServico_Int_Mod_ContratoARQ_MODELO_CONTRATO.AsString;
end;

procedure TfrmCadArqModeloContrato.BitBtn1Click(Sender: TObject);
begin
  fDMCadServico_Int.cdsServico_Int_Mod_ContratoARQ_MODELO_CONTRATO.AsString := FilenameEdit1.Text;

  if fDMCadServico_Int.cdsServico_Int_Mod_ContratoFILIAL.IsNull then
    fDMCadServico_Int.vMsgErro := fDMCadServico_Int.vMsgErro + #13 + '*** Filial não selecionada!';

  if fDMCadServico_Int.cdsServico_Int_Mod_ContratoARQ_MODELO_CONTRATO.IsNull then
    fDMCadServico_Int.vMsgErro := fDMCadServico_Int.vMsgErro + #13 + '*** Arquivo não selecionado!';

  if trim(fDMCadServico_Int.vMsgErro) <> '' then
  begin
    MessageDlg(fDMCadServico_Int.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  try                                           
    fDMCadServico_Int.cdsServico_Int_Mod_Contrato.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

end.
