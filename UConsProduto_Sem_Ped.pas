unit UConsProduto_Sem_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, UDMConsPedido, UCBase, Mask, ToolEdit, RzButton, NxCollection,
  RzTabs, UDMCadPessoa;

type
  TfrmConsProduto_Sem_Ped = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    Panel2: TPanel;
    Label1: TLabel;
    RzPageControl1: TRzPageControl;
    TS_Produto: TRzTabSheet;
    TS_Clientes: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    btnInativar: TNxButton;
    UCControls1: TUCControls;
    Label2: TLabel;
    ComboBox1: TComboBox;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnInativarClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsPedido: TDMConsPedido;
    ColunaOrdenada: String;

    procedure prc_Consultar;
    procedure prc_Consultar_Cli;

  public
    { Public declarations }
  end;

var
  frmConsProduto_Sem_Ped: TfrmConsProduto_Sem_Ped;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, StrUtils;

{$R *.dfm}

procedure TfrmConsProduto_Sem_Ped.btnConsultarClick(Sender: TObject);
begin
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data de início da verificação não informada!', mtError, [mbOk], 0);
    Exit;
  end;
  if RzPageControl1.ActivePage = TS_Produto then
    prc_Consultar
  else
    prc_Consultar_Cli;
  Panel2.Visible := False;
  Panel2.Refresh;
  Refresh;
end;

procedure TfrmConsProduto_Sem_Ped.prc_Consultar;
begin
  Panel2.Visible := True;
  Panel2.Refresh;
  fDMConsPedido.cdsProduto_Sem_Venda.Close;
  Refresh;
  fDMConsPedido.sdsProduto_Sem_Venda.ParamByName('Data1').AsDate := DateEdit1.Date;
  //fDMConsPedido.sdsProduto_Sem_Venda.ParamByName('Data2').AsDate := DateEdit2.Date;
  fDMConsPedido.cdsProduto_Sem_Venda.Open;
end;

procedure TfrmConsProduto_Sem_Ped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsProduto_Sem_Ped.FormShow(Sender: TObject);
begin
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);
  Label5.Caption := 'Data início sem vendas, até ' + DateToStr(Date) + ':';
end;

procedure TfrmConsProduto_Sem_Ped.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsProduto_Sem_Venda.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsProduto_Sem_Ped.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  if RzPageControl1.ActivePage = TS_Produto then
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Produto_Sem_Ped.fr3'
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Cliente_Sem_Ped.fr3';
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsPedido.frxReport1.variables['Opcao_Imp'] := QuotedStr(DateEdit1.Text);
  fDMConsPedido.frxReport1.ShowReport;
end;

procedure TfrmConsProduto_Sem_Ped.prc_Consultar_Cli;
var
  vComando : String;
begin
  Panel2.Visible := True;
  Panel2.Refresh;
  fDMConsPedido.cdsCliente_Sem_Venda.Close;
  Refresh;
  if ComboBox1.ItemIndex = 0 then
  begin
    vComando := 'SELECT V.* FROM vult_pedido_pessoa V '
              + 'WHERE not exists (select 1 from vpedido_item vP '
              + '                  where vp.dtemissao >= :DTEMISSAO '
              + '                    and vp.id_cliente = V.codigo '
              + '                    and vp.tipo_reg = ''P'')';
  end
  else
  begin
    vComando := 'SELECT V.* FROM vult_nota_pessoa V '
              + 'WHERE not exists (select 1 from notafiscal vP '
              + '                  where vp.dtemissao >= :DTEMISSAO '
              + '                   and vp.id_cliente = V.codigo '
              + '                   and vp.tipo_reg = ''NTS'''
              + '                   and vp.tipo_nota = ''S'''
              + '                   and vp.cancelada = ''N'''
              + '                   and vp.nfedenegada = ''N'')';
  end;
  fDMConsPedido.sdsCliente_Sem_Venda.CommandText := vComando;
  fDMConsPedido.sdsCliente_Sem_Venda.ParamByName('DTEMISSAO').AsDate := DateEdit1.Date;
  fDMConsPedido.cdsCliente_Sem_Venda.Open;
end;

procedure TfrmConsProduto_Sem_Ped.btnInativarClick(Sender: TObject);
var
  fDMCadPessoa: TDMCadPessoa;
begin
  fDMCadPessoa := TDMCadPessoa.Create(Self);
  try
    fDMConsPedido.cdsCliente_Sem_Venda.First;
    while not fDMConsPedido.cdsCliente_Sem_Venda.Eof do
    begin
      if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      begin
        fDMCadPessoa.prc_Localizar(fDMConsPedido.cdsCliente_Sem_VendaCODIGO.AsInteger);
        if fDMCadPessoa.cdsPessoaCODIGO.AsInteger > 0 then
        begin
          fDMCadPessoa.cdsPessoa.Edit;
          fDMCadPessoa.cdsPessoaINATIVO.AsString := 'S';
          fDMCadPessoa.cdsPessoa.Post;
          fDMCadPessoa.cdsPessoa.ApplyUpdates(0);
        end;
      end;
      fDMConsPedido.cdsCliente_Sem_Venda.Next;
    end;
  finally
    ShowMessage('Concluído o processo de inativar os Clientes!');
    FreeAndNil(fDMCadPessoa);
  end;
end;

procedure TfrmConsProduto_Sem_Ped.SMDBGrid2TitleClick(Column: TColumn);
var
  i : Integer;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPedido.cdsCliente_Sem_Venda.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
