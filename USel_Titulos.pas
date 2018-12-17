unit USel_Titulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, StdCtrls, NxCollection, UDMCob_Eletronica,
  Mask, ToolEdit, CurrEdit;

type
  TfrmSel_Titulos = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    btnConsultar: TNxButton;
    btnFechar: TNxButton;
    StaticText1: TStaticText;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar;
  public
    { Public declarations }
    fDmCob_Eletronica: TDmCob_Eletronica;
    
  end;

var
  frmSel_Titulos: TfrmSel_Titulos;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfrmSel_Titulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Titulos.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCob_Eletronica);
  if trim(Edit1.Text) <> '' then
    btnConsultarClick(Sender);
end;

procedure TfrmSel_Titulos.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Titulos.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Titulos.prc_Consultar;
begin
  fDmCob_Eletronica.cdsDuplicata.Close;
  fDmCob_Eletronica.sdsDuplicata.CommandText := fDmCob_Eletronica.ctDuplicata + ' WHERE DUP.TIPO_ES = ' + QuotedStr('E')
                                              + ' AND DUP.FILIAL = ' + fDmCob_Eletronica.cdsFilialID.AsString
                                              + ' AND DUP.VLR_RESTANTE > 0 ';
  if trim(Edit1.Text) <> '' then
    fDmCob_Eletronica.sdsDuplicata.CommandText := fDmCob_Eletronica.sdsDuplicata.CommandText + ' AND DUP.NUMDUPLICATA = ' + QuotedStr(Edit1.Text);
  if CurrencyEdit1.AsInteger > 0 then
    fDmCob_Eletronica.sdsDuplicata.CommandText := fDmCob_Eletronica.sdsDuplicata.CommandText + ' AND DUP.PARCELA = ' + IntToStr(CurrencyEdit1.AsInteger);
  if trim(Edit2.Text) <> '' then
    fDmCob_Eletronica.sdsDuplicata.CommandText := fDmCob_Eletronica.sdsDuplicata.CommandText + ' AND DUP.NOSSONUMERO LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  if trim(Edit3.Text) <> '' then
    fDmCob_Eletronica.sdsDuplicata.CommandText := fDmCob_Eletronica.sdsDuplicata.CommandText
                                                + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%') + ')'
                                                + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit3.Text+'%') + '))';
  fDmCob_Eletronica.sdsDuplicata.ParamByName('DCOB1').AsDate := 0;
  fDmCob_Eletronica.sdsDuplicata.ParamByName('DCOB2').AsDate := 0;
  fDmCob_Eletronica.sdsDuplicata.ParamByName('ID_OCORRENCIA').AsInteger := 0;

  fDmCob_Eletronica.cdsDuplicata.Open;
end;

procedure TfrmSel_Titulos.SMDBGrid1DblClick(Sender: TObject);
begin
  if (fDmCob_Eletronica.cdsDuplicata.Active) and (fDmCob_Eletronica.cdsDuplicataID.AsInteger > 0) then
  begin
    fDmCob_Eletronica.vID_Duplicata := fDmCob_Eletronica.cdsDuplicataID.AsInteger;
    Close;
  end;
end;

end.
