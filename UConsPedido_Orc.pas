unit UConsPedido_Orc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMPedidoImp, RxLookup, UCBase, Mask, RzPanel, ToolEdit,
  RzButton, RzTabs, UConsPedido_Nota, UDMConsPedido, NxCollection, CurrEdit, Menus, ComCtrls;

type
  TfrmConsPedido_Orc = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Label9: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    RzPageControl1: TRzPageControl;
    TS_Item: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    pnlTotal: TPanel;
    Panel6: TPanel;
    ProgressBar1: TProgressBar;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
//    procedure RzPageControl1Changing(Sender: TObject; NewIndex: Integer;
//      var AllowChange: Boolean);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMPedidoImp: TDMPedidoImp;
    fDMConsPedido : TDMConsPedido;

    vComando, vComando_GroupBy : String;

    vOrdProducao : String;

    procedure prc_Consultar;
    procedure prc_GroupBy(ctTexto : String);
    procedure prc_Imprimir_Personalizado(Opcao : String);
  public
    { Public declarations }
    vOpcao_Rel : String; //H=Horizontal  V=Vertical
  end;

var
  frmConsPedido_Orc: TfrmConsPedido_Orc;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, URelPedido_Det, URelPedido_Res, StrUtils,
  URelPedido_Res2, USel_Produto, URelPedido_Ref, URelPedido_Ref_Acum,
  URelPedido_Cli, URelPedido_Ref_Comb, UInformar_DtExpedicao, USel_Pessoa;

{$R *.dfm}

procedure TfrmConsPedido_Orc.prc_Consultar;
var
  vOpcaoDtEntrega : String;
  vComando : String;
begin
  fDMPedidoImp.cdsPedidoOrcImp.Close;
  fDMPedidoImp.sdsPedidoOrcImp.CommandText := 'select PED.ID_VENDEDOR, iif(PED.ID_VENDEDOR is null, ' + QuotedStr('SEM VENDEDOR')
                                            + ', PES.NOME) NOME, sum(PED.VLR_TOTAL) VALOR_TOTAL, sum(PED.VLR_FRETE) VALOR_FRETE,'
                                            + ' sum(PED.VLR_DESCONTO) VALOR_DESCONTO, count(PED.ID) NUMERO_REGISTROS from '
                                            + ' PEDIDO PED left join PESSOA PES on PED.ID_VENDEDOR = PES.CODIGO where 0 = 0';
  case RadioGroup2.ItemIndex of
    0 : vComando := vComando + ' AND PED.TIPO_REG = ' + QuotedStr('P');
    1 : vComando := vComando + ' AND PED.TIPO_REG = ' + QuotedStr('O');
  end;

  case RadioGroup1.ItemIndex of
    0 : vComando := vComando + ' AND PED.QTD_RESTANTE > 0 ';
    1 : vComando := vComando + ' AND PED.QTD_RESTANTE = 0 ';
    2 : vComando := vComando + ' AND PED.QTD_CANCELADO > 0 ';
  end;

  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);

  if RxDBLookupCombo5.Text <> '' then
    vComando := vComando + ' AND PED.ID_VENDEDOR = ' + IntToStr(RxDBLookupCombo5.KeyValue);

  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND ' + vOpcaoDtEntrega + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  vComando := vComando + ' group by PED.ID_VENDEDOR, PES.NOME';
  fDMPedidoImp.sdsPedidoOrcImp.CommandText := fDMPedidoImp.sdsPedidoOrcImp.CommandText + vComando;
  fDMPedidoImp.cdsPedidoOrcImp.Open;
end;

procedure TfrmConsPedido_Orc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPedido_Orc.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMPedidoImp := TDMPedidoImp.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMPedidoImp);
  fDMConsPedido := TDMConsPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPedido);

  fDMConsPedido.cdsFilial.First;
  if (fDMConsPedido.cdsFilial.RecordCount < 2) and (fDMConsPedido.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMConsPedido.cdsFilialID.AsInteger;
end;

procedure TfrmConsPedido_Orc.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fDMConsPedido.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfrmConsPedido_Orc.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_RESTANTE.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0) then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) > 0) then
    Background  := clAqua
  else
  if (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FATURADO.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_RESTANTE.AsFloat)) <= 0) and
     (StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_CANCELADO.AsFloat)) > 0) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if StrToFloat(FormatFloat('0.0000',fDMConsPedido.cdsPedido_ItemQTD_FUT.AsFloat)) > 0 then
    Background  := clSilver
  else
  if (fDMConsPedido.qParametrosUSA_APROVACAO_PED.AsString = 'S') and (fDMConsPedido.cdsPedido_ItemAPROVADO_PED.AsString = 'P') then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsPedido_Orc.prc_GroupBy(ctTexto : String);
var
  i : Integer;
begin
  i := PosEx('GROUP',ctTexto,0);
  vComando_GroupBy := copy(ctTexto,i,Length(ctTexto) - i + 1);
  vComando         := copy(ctTexto,1,i-1);
end;

procedure TfrmConsPedido_Orc.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsPedido_Orc.btnImprimirClick(Sender: TObject);
var
  vOpcaoAux : String;
  vArq: String;
begin
  vOpcaoAux := '';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Emissão: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if (DateEdit1.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Emissão Ini: ' + DateEdit1.Text + ')'
  else
  if (DateEdit2.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Emissão Fin: ' + DateEdit2.Text + ')';

  if (DateEdit3.Date > 10) and (DateEdit4.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Entrega: ' + DateEdit3.Text + ' a ' + DateEdit4.Text + ')'
  else
  if (DateEdit3.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Entrega Ini: ' + DateEdit3.Text + ')'
  else
  if (DateEdit4.Date > 10) then
    vOpcaoAux := vOpcaoAux + '(Dt.Entrega Fin: ' + DateEdit4.Text + ')';
  if RxDBLookupCombo5.Text <> '' then
    vOpcaoAux := vOpcaoAux + '(Vendedor: ' + RxDBLookupCombo5.Text + ')';
  case RadioGroup2.ItemIndex of
    0 : vOpcaoAux := vOpcaoAux + '(Pendente)';
    1 : vOpcaoAux := vOpcaoAux + '(Faturado)';
    2 : vOpcaoAux := vOpcaoAux + '(Cancelado)';
  end;
  fDMConsPedido.frxReport1.Variables['DataInicial'] := QuotedStr(DateToStr(DateEdit1.Date));

  SMDBGrid1.DisableScroll;
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Pedido_Orcamento.fr3';
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  case RadioGroup2.ItemIndex of
   0 : fDMConsPedido.frxReport1.Variables['Titulo'] := QuotedStr('Pedidos por Vendedor');
   1 : fDMConsPedido.frxReport1.Variables['Titulo'] := QuotedStr('Orçamentos por Vendedor');
  else
    fDMConsPedido.frxReport1.Variables['Titulo'] := QuotedStr('Pedidos/Orçamentos por Vendedor');
  end;

  fDMConsPedido.frxReport1.ShowReport;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsPedido_Orc.prc_Imprimir_Personalizado(Opcao: String);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Cons_Pedido_Orc.fr3';
  if FileExists(vArq) then
    fDMConsPedido.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsPedido.frxReport1.variables['Opcao_Imp'] := QuotedStr(Opcao);
  fDMConsPedido.frxReport1.ShowReport;
end;

end.
