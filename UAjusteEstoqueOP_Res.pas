unit UAjusteEstoqueOP_Res;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMBaixaMaterialOP, NxCollection, StdCtrls, Mask, ToolEdit,
  ExtCtrls, Grids, DBGrids, SMDBGrid, UDMEstoque_Res;

type
  TfrmAjusteEstoqueOP_Res = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    btnConfBaixa: TNxButton;
    Panel1: TPanel;
    btnPesquisa: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
    fDMBaixaMaterial: TDMBaixaMaterial;
    fDMEstoque_Res: TDMEstoque_Res;

  public
    { Public declarations }
  end;

var
  frmAjusteEstoqueOP_Res: TfrmAjusteEstoqueOP_Res;

implementation

uses
  rsDBUtils;

{$R *.dfm}

procedure TfrmAjusteEstoqueOP_Res.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAjusteEstoqueOP_Res.FormShow(Sender: TObject);
begin
  fDMBaixaMaterial := TDMBaixaMaterial.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaMaterial);
end;

procedure TfrmAjusteEstoqueOP_Res.btnConfBaixaClick(Sender: TObject);
var
  vID_Estoque_Res : Integer;
  vGravou : Boolean;
begin
  fDMEstoque_Res := TDMEstoque_Res.Create(Self);
  vGravou        := False;

  fDMBaixaMaterial.cdsMatRes.First;
  while not fDMBaixaMaterial.cdsMatRes.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      vID_Estoque_Res := fDMEstoque_Res.fnc_Gravar_Estoque_Res(0,fDMBaixaMaterial.cdsMatResFILIAL.AsInteger,
                                                     fDMBaixaMaterial.cdsMatResID_PRODUTO.AsInteger,
                                                     fDMBaixaMaterial.cdsMatResID_COR.AsInteger,
                                                     fDMBaixaMaterial.cdsMatResNUM_ORDEM.AsInteger,
                                                     fDMBaixaMaterial.cdsMatResTAMANHO.AsString,
                                                     'S', 'AJU',
                                                     fDMBaixaMaterial.cdsMatResQTD.AsFloat,
                                                     DateEdit1.Date ,'');
    end;
    fDMBaixaMaterial.cdsMatRes.Next;
  end;

  ShowMessage('Ajuste Concluído!');

  FreeAndNil(fDMEstoque_Res);
  btnPesquisaClick(Sender);
end;

procedure TfrmAjusteEstoqueOP_Res.btnPesquisaClick(Sender: TObject);
begin
  fDMBaixaMaterial.cdsMatRes.Close;
  fDMBaixaMaterial.cdsMatRes.Open;
end;

end.
