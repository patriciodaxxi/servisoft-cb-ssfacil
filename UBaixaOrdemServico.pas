unit UBaixaOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls,
  NxCollection, RxLookup, Mask, ToolEdit, CurrEdit, StdCtrls, DBCtrls, Grids, DBGrids, SMDBGrid, RzPanel, RzTabs,
  UBaixaOrdemServico_Itens, DB;

type
  TfrmBaixaOrdemServico = class(TForm)
    pnlPesquisa: TPanel;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBText6: TDBText;
    Label5: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    pnlDados: TPanel;
    SMDBGrid5: TSMDBGrid;
    RzPageControl3: TRzPageControl;
    TS_Defeito: TRzTabSheet;
    DBMemo3: TDBMemo;
    RzGroupBox4: TRzGroupBox;
    DBMemo4: TDBMemo;
    TabSheet1: TRzTabSheet;
    DBMemo1: TDBMemo;
    TS_Servico: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    TabSheet5: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    StaticText1: TStaticText;
    Label2: TLabel;
    btnConfirmar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid5DblClick(Sender: TObject);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure CurrencyEdit1Change(Sender: TObject);
  private
    { Private declarations }
    ffrmBaixaOrdemServico_Itens: TfrmBaixaOrdemServico_Itens;
    procedure prc_Posiciona_OS;    

  public
    fDMCadOrdemServico: TDMCadOrdemServico;
    { Public declarations }
  end;

var
  frmBaixaOrdemServico: TfrmBaixaOrdemServico;

implementation

uses rsDBUtils, uUtilPadrao, uSel_OS_Servico2;

{$R *.dfm}

procedure TfrmBaixaOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Tag    := 0;
  Action := Cafree;
end;

procedure TfrmBaixaOrdemServico.FormShow(Sender: TObject);
begin
  if Tag <> 1 then
    fDMCadOrdemServico := TDMCadOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  if (Tag = 1) and (CurrencyEdit1.AsInteger > 0) then
    prc_Posiciona_OS;
end;

procedure TfrmBaixaOrdemServico.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    prc_Posiciona_OS;
end;

procedure TfrmBaixaOrdemServico.SMDBGrid5DblClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Itens.IsEmpty then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 0 then
  begin
    MessageDlg('*** Item já concluído!', mtInformation, [mbok], 0);
    exit;
  end;

  ffrmBaixaOrdemServico_Itens := TfrmBaixaOrdemServico_Itens.Create(self);
  ffrmBaixaOrdemServico_Itens.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmBaixaOrdemServico_Itens.ShowModal;
  FreeAndNil(ffrmBaixaOrdemServico_Itens);
end;

procedure TfrmBaixaOrdemServico.SMDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO.AsDateTime > 0 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
  if (Field = fDMCadOrdemServico.cdsOrdemServico_ItensDTCONCLUIDO) or
     (Field = fDMCadOrdemServico.cdsOrdemServico_ItensDTENTRADA) then
  begin
    Background  := $0080FFFF;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmBaixaOrdemServico.CurrencyEdit1Change(Sender: TObject);
begin
  pnlDados.Visible := False;
end;

procedure TfrmBaixaOrdemServico.prc_Posiciona_OS;
var
  ffrmSel_OS_Servico2: TfrmSel_OS_Servico2;
begin
  if (CurrencyEdit1.AsInteger > 0) then
  begin
    fDMCadOrdemServico.qOS.Close;
    fDMCadOrdemServico.qOS.ParamByName('NUM_OS').AsInteger := CurrencyEdit1.AsInteger;
    fDMCadOrdemServico.qOS.Open;
    if fDMCadOrdemServico.qOS.IsEmpty then
    begin
      MessageDlg('*** OS não encontrada!', mtInformation, [mbok], 0);
      exit;
    end;
    fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.qOSID.AsInteger);
    if fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime > 10 then
      Label5.Caption := 'Entregue'
    else
    if fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime > 10 then
      Label5.Caption := 'Concluída';
    Label5.Visible   := ((fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime > 10) or (fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime > 10));
    pnlDados.Visible := ((fDMCadOrdemServico.cdsOrdemServicoDTENTREGA.AsDateTime < 10) and (fDMCadOrdemServico.cdsOrdemServicoDTCONCLUIDO.AsDateTime < 10));
  end
  else
  begin
    ffrmSel_OS_Servico2 := TfrmSel_OS_Servico2.Create(self);
    ffrmSel_OS_Servico2.btnConsultarClick(ffrmSel_OS_Servico2);
    ffrmSel_OS_Servico2.ShowModal;
    FreeAndNil(ffrmSel_OS_Servico2);
    CurrencyEdit1.AsInteger := vNum_OS_Pos;
  end;
end;

end.
