unit UConsMetas_Pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, UDMConsMetas, RxLookup, UCBase, Mask, ToolEdit,
  RzPanel, RzTabs, CurrEdit, NxEdit, NxCollection, ComObj;

type
  TfrmConsMetas_Pedido = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    btnConsultar: TNxButton;
    Label8: TLabel;
    Shape3: TShape;
    ComboBox1: TComboBox;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    ComboBox2: TComboBox;
    CurrencyEdit2: TCurrencyEdit;
    btnImprimir: TNxButton;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ComboBox1Exit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    fDMConsMetas: TDMConsMetas;
    vDesc_Mes : array[1..12] of String;
    procedure prc_Le_Vendedor_Metas;

  public
    { Public declarations }
  end;

var
  frmConsMetas_Pedido: TfrmConsMetas_Pedido;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, StrUtils;

{$R *.dfm}

procedure TfrmConsMetas_Pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsMetas_Pedido.FormShow(Sender: TObject);
begin
  fDMConsMetas := TDMConsMetas.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsMetas);
  fDMConsMetas.cdsVendedor.Open;
  vDesc_Mes[1]  := 'Janeiro';
  vDesc_Mes[2]  := 'Fevereiro';
  vDesc_Mes[3]  := 'Março';
  vDesc_Mes[4]  := 'Abril';
  vDesc_Mes[5]  := 'Maio';
  vDesc_Mes[6]  := 'Junho';
  vDesc_Mes[7]  := 'Julho';
  vDesc_Mes[8]  := 'Agosto';
  vDesc_Mes[9]  := 'Setembro';
  vDesc_Mes[10] := 'Outubro';
  vDesc_Mes[11] := 'Novembro';
  vDesc_Mes[12] := 'Dezembro';
end;

procedure TfrmConsMetas_Pedido.btnConsultarClick(Sender: TObject);
begin
  if (ComboBox1.ItemIndex < 0) or (ComboBox2.ItemIndex < 0) then
  begin
    MessageDlg('*** Mês inicial ou final, não informado!!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (CurrencyEdit1.AsInteger <= 0) or (CurrencyEdit2.AsInteger <= 0) then
  begin
    MessageDlg('*** Ano inicial ou final, não informado!!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit1.AsInteger > CurrencyEdit2.AsInteger then
  begin
    MessageDlg('*** Ano final menor que ano inicial!!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit1.AsInteger < 2000 then
  begin
    MessageDlg('*** Ano inválido!!', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Le_Vendedor_Metas;
  fDMConsMetas.mMetasAux.IndexFieldNames := 'Ano_Mes';
end;

procedure TfrmConsMetas_Pedido.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMConsMetas.mMetasAux.IsEmpty) then
    exit;
  if StrToFloat(FormatFloat('0.00',fDMConsMetas.mMetasAuxVlr_Meta.AsFloat)) > StrToFloat(FormatFloat('0.00',fDMConsMetas.mMetasAuxVlr_Pedidos.AsFloat)) then
    AFont.Color := clRed;
end;

procedure TfrmConsMetas_Pedido.ComboBox1Exit(Sender: TObject);
begin
  ComboBox2.ItemIndex     := ComboBox1.ItemIndex;
end;

procedure TfrmConsMetas_Pedido.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Metas_Pedidos.fr3';
  if FileExists(vArq) then
    fDMConsMetas.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsMetas.frxReport1.ShowReport;
end;

procedure TfrmConsMetas_Pedido.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit2.AsInteger := CurrencyEdit1.AsInteger;
end;

procedure TfrmConsMetas_Pedido.prc_Le_Vendedor_Metas;
var
  vAno1, vMes1, vAno2, vMes2 : Integer;
  vFlag : Boolean;
  vAno_Mes : String;
  vAno_Mes_Aux : String; 
begin
  fDMConsMetas.cdsVendedor_Metas.Close;
  fDMConsMetas.sdsVendedor_Metas.CommandText := fDMConsMetas.ctVendedor_Metas;
  if CheckBox1.Checked then
    fDMConsMetas.sdsVendedor_Metas.CommandText := fDMConsMetas.sdsVendedor_Metas.CommandText
                                                + ' INNER JOIN metas_vendedor MV  ON VEND.codigo = MV.id_vendedor ';
  fDMConsMetas.sdsVendedor_Metas.CommandText := fDMConsMetas.sdsVendedor_Metas.CommandText
                                              + ' WHERE VEND.TP_VENDEDOR = ' + QuotedStr('S')
                                              + '   AND VEND.INATIVO = ' + QuotedStr('N');
  if RxDBLookupCombo2.Text <> '' then
    fDMConsMetas.sdsVendedor_Metas.CommandText := fDMConsMetas.sdsVendedor_Metas.CommandText + ' AND VEND.CODIGO = ' + RxDBLookupCombo2.KeyValue;

  fDMConsMetas.cdsVendedor_Metas.Open;
  fDMConsMetas.mMetasAux.EmptyDataSet;
  fDMConsMetas.cdsVendedor_Metas.First;
  vAno_Mes := CurrencyEdit2.Text + FormatFloat('00',ComboBox2.ItemIndex + 1);
  while not fDMConsMetas.cdsVendedor_Metas.Eof do
  begin
    vFlag := True;
    vAno1 := CurrencyEdit1.AsInteger;
    vMes1 := ComboBox1.ItemIndex + 1;
    while vFlag do
    begin
      vAno_Mes_Aux := IntToStr(vAno1) + FormatFloat('00',vMes1);
      if vAno_Mes_Aux > vAno_Mes then
        vFlag := False
      else
      if vAno_Mes_Aux <= vAno_Mes then
      begin
        if fDMConsMetas.mMetasAux.Locate('ID_Vendedor;Ano_Mes',VarArrayOf([fDMConsMetas.cdsVendedor_MetasID_VENDEDOR.AsInteger,vAno_Mes_Aux]),([loCaseInsensitive])) then
          fDMConsMetas.mMetasAux.Edit
        else
        begin
          fDMConsMetas.mMetasAux.Insert;
          fDMConsMetas.mMetasAuxID_Vendedor.AsInteger  := fDMConsMetas.cdsVendedor_MetasID_VENDEDOR.AsInteger;
          fDMConsMetas.mMetasAuxNome_Vendedor.AsString := fDMConsMetas.cdsVendedor_MetasNOME_VENDEDOR.AsString;
          fDMConsMetas.mMetasAuxAno.AsInteger          := vAno1;
          fDMConsMetas.mMetasAuxMes.AsInteger          := vMes1;
          fDMConsMetas.mMetasAuxAno_Mes.AsString       := vAno_Mes_Aux;
          fDMConsMetas.mMetasAuxNome_Mes.AsString      := vDesc_Mes[vMes1];
          fDMConsMetas.mMetasAuxVlr_Meta.AsFloat       := 0;
          fDMConsMetas.mMetasAuxVlr_Pedidos.AsFloat    := 0;
        end;
        fDMConsMetas.mMetasAuxVlr_Meta.AsFloat       := StrToFloat(FormatFloat('0.00',fDMConsMetas.mMetasAuxVlr_Meta.AsFloat + fnc_Busca_Metas(vAno1,vMes1,fDMConsMetas.cdsVendedor_MetasID_VENDEDOR.AsInteger)));
        fDMConsMetas.mMetasAuxVlr_Pedidos.AsFloat    := StrToFloat(FormatFloat('0.00',fDMConsMetas.mMetasAuxVlr_Pedidos.AsFloat + fnc_Busca_Vendas(vAno1,vMes1,fDMConsMetas.cdsVendedor_MetasID_VENDEDOR.AsInteger)));
        fDMConsMetas.mMetasAuxVlr_Resultado.AsFloat  := StrToFloat(FormatFloat('0.00',fDMConsMetas.mMetasAuxVlr_Meta.AsFloat - fDMConsMetas.mMetasAuxVlr_Pedidos.AsFloat));
        if StrToFloat(FormatFloat('0.00',fDMConsMetas.mMetasAuxVlr_Resultado.AsFloat)) < 0 then
          fDMConsMetas.mMetasAuxVlr_Resultado.AsFloat := StrToFloat(FormatFloat('0.00',fDMConsMetas.mMetasAuxVlr_Resultado.AsFloat * -1));
        vMes1 := vMes1 + 1;
        if vMes1 > 12 then
        begin
          vMes1 := 01;
          vAno1 := vAno1 + 1;
        end;
      end;
    end;
    fDMConsMetas.cdsVendedor_Metas.Next;
  end;
end;

end.
