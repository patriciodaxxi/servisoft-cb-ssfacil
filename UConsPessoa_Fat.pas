unit UConsPessoa_Fat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid,
  StdCtrls, Buttons, UDMConsPessoa, RzPanel;

type
  TfrmConsPessoa_Fat = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    gbxServico: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMConsPessoa: TDMConsPessoa;

    procedure prc_Le_NotaFiscal;
  public
    { Public declarations }
    vID_Pessoa_Cons: Integer; 
  end;

var
  frmConsPessoa_Fat: TfrmConsPessoa_Fat;

implementation

uses rsDBUtils, UConsPessoa_Fat_Itens;

{$R *.dfm}

procedure TfrmConsPessoa_Fat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsPessoa_Fat.FormShow(Sender: TObject);
begin
  fDMConsPessoa := TDMConsPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsPessoa);

  gbxServico.Visible := (fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S');
  Label7.Visible     := (fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S');
  Label8.Visible     := (fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S');
  Label9.Visible     := (fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S');
  Label10.Visible    := (fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S');

  if vID_Pessoa_Cons > 0 then
  begin
    fDMConsPessoa.prc_Cons_NotaFiscal(vID_Pessoa_Cons);
    fDMConsPessoa.prc_Cons_NotaServico(vID_Pessoa_Cons);
    prc_Le_NotaFiscal;
  end;
end;                   

procedure TfrmConsPessoa_Fat.prc_Le_NotaFiscal;
var
  vVlrTotal: Real;
  vQtdNota, vQtdServico: Integer;
  vVlrServico: Real;
begin
  vVlrTotal := 0;
  vQtdNota  := 0;
  SMDBGrid1.DisableScroll;
  fDMConsPessoa.cdsNotaFiscal.First;
  while not fDMConsPessoa.cdsNotaFiscal.Eof do
  begin
    vVlrTotal := StrToFloat(FormatFloat('0.00',vVlrTotal + fDMConsPessoa.cdsNotaFiscalVLR_DUPLICATA.AsFloat));
    vQtdNota  := vQtdNota + 1;
    fDMConsPessoa.cdsNotaFiscal.Next;
  end;
  SMDBGrid1.EnableScroll;
  Label4.Caption := FormatFloat('###,###,##0.00',vVlrTotal);
  Label6.Caption := FormatFloat('###,###,##0',vQtdNota);

  if fDMConsPessoa.qParametrosUSA_SERVICO.AsString = 'S' then
  begin
    vVlrServico := 0;
    vQtdServico := 0;
    SMDBGrid2.DisableScroll;
    fDMConsPessoa.cdsNotaServico.First;
    while not fDMConsPessoa.cdsNotaServico.Eof do
    begin
      vVlrServico := StrToFloat(FormatFloat('0.00',vVlrServico + fDMConsPessoa.cdsNotaServicoVLR_DUPLICATA.AsFloat));
      vQtdServico := vQtdServico + 1;
      fDMConsPessoa.cdsNotaServico.Next;
    end;
    Label8.Caption  := FormatFloat('###,###,##0.00',vVlrServico);
    Label10.Caption := FormatFloat('###,###,##0',vQtdServico);
    SMDBGrid2.EnableScroll;
  end;
end;

procedure TfrmConsPessoa_Fat.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsNotaFiscal.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsPessoa_Fat.SMDBGrid1DblClick(Sender: TObject);
var
  ffrmConsPessoa_Fat_Itens: TfrmConsPessoa_Fat_Itens;
begin
  ffrmConsPessoa_Fat_Itens := TfrmConsPessoa_Fat_Itens.Create(self);
  ffrmConsPessoa_Fat_Itens.fDMConsPessoa  := fDMConsPessoa;
  ffrmConsPessoa_Fat_Itens.vTipo_Nota     := 'P';
  ffrmConsPessoa_Fat_Itens.gbxServico.Visible  := False;
  ffrmConsPessoa_Fat_Itens.gbxProdutos.Visible := True;
  ffrmConsPessoa_Fat_Itens.gbxProdutos.Align := alClient;
  ffrmConsPessoa_Fat_Itens.Label2.Caption := fDMConsPessoa.cdsNotaFiscalNUMNOTA.AsString;
  ffrmConsPessoa_Fat_Itens.ShowModal;
  FreeAndNil(ffrmConsPessoa_Fat_Itens);
end;

procedure TfrmConsPessoa_Fat.SMDBGrid2DblClick(Sender: TObject);
var
  ffrmConsPessoa_Fat_Itens: TfrmConsPessoa_Fat_Itens;
begin
  ffrmConsPessoa_Fat_Itens := TfrmConsPessoa_Fat_Itens.Create(self);
  ffrmConsPessoa_Fat_Itens.fDMConsPessoa  := fDMConsPessoa;
  ffrmConsPessoa_Fat_Itens.vTipo_Nota     := 'S';
  ffrmConsPessoa_Fat_Itens.gbxProdutos.Visible := False;
  ffrmConsPessoa_Fat_Itens.gbxServico.Visible  := True;
  ffrmConsPessoa_Fat_Itens.gbxServico.Align := alClient;
  ffrmConsPessoa_Fat_Itens.Label2.Caption := fDMConsPessoa.cdsNotaServicoNUMNOTA.AsString;
  ffrmConsPessoa_Fat_Itens.ShowModal;
  FreeAndNil(ffrmConsPessoa_Fat_Itens);
end;

procedure TfrmConsPessoa_Fat.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsPessoa.cdsNotaServico.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I] = Column) then
      SMDBGrid2.Columns.Items[I].Title.Color := $00D2D2D2;
end;

end.
