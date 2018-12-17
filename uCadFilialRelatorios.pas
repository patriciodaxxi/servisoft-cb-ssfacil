unit uCadFilialRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, ToolEdit, RxDBComb, UDMCadFilial;

type
  TfrmCadFilialRelatorios = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label3: TLabel;
    FilenameEdit1: TFilenameEdit;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadFilial: TDMCadFilial;
  end;

var
  frmCadFilialRelatorios: TfrmCadFilialRelatorios;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadFilialRelatorios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadFilialRelatorios.BitBtn2Click(Sender: TObject);
begin
  fDMCadFilial.cdsFilialRelatorios.Cancel;
  Close;
end;

procedure TfrmCadFilialRelatorios.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadFilial);
end;

procedure TfrmCadFilialRelatorios.BitBtn1Click(Sender: TObject);
begin
  fDMCadFilial.cdsFilialRelatoriosCAMINHO.AsString := FilenameEdit1.Text;

  fDmCadFilial.vMsgFilial := '';
  if fDmCadFilial.cdsFilialRelatoriosTIPO.IsNull then
    fDmCadFilial.vMsgFilial := fDmCadFilial.vMsgFilial + #13 + '*** Tipo não selecionado!';

  if fDmCadFilial.cdsFilialRelatoriosCAMINHO.IsNull then
    fDmCadFilial.vMsgFilial := fDmCadFilial.vMsgFilial + #13 + '*** Caminho não selecionado!';

  if trim(fDmCadFilial.vMsgFilial) <> '' then
  begin
    MessageDlg(fDmCadFilial.vMsgFilial, mtError, [mbOk], 0);
    exit;
  end;
  
  try
    
    fDmCadFilial.cdsFilialRelatorios.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

end.
