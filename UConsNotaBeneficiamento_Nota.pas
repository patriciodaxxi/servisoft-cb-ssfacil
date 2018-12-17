unit UConsNotaBeneficiamento_Nota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  Buttons, Grids, DBGrids, SMDBGrid, DB, UDMConsNotaBeneficiamento, DBCtrls,
  RzButton, RzPanel;

type
  TfrmConsNotaBeneficiamento_Nota = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    RzGroupBox4: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    Panel5: TPanel;
    RzBitBtn1: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Calcular;

  public
    { Public declarations }
    fDMConsNotaBeneficiamento : TDMConsNotaBeneficiamento;

  end;

var
  frmConsNotaBeneficiamento_Nota: TfrmConsNotaBeneficiamento_Nota;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmConsNotaBeneficiamento_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsNotaBeneficiamento_Nota.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMConsNotaBeneficiamento);
  prc_Calcular;
  fDMConsNotaBeneficiamento.prc_Abrir_Baixa_NFDevolvida(0,fDMConsNotaBeneficiamento.cdsNotaEntradaID_NTE.AsInteger);
end;

procedure TfrmConsNotaBeneficiamento_Nota.FormCreate(Sender: TObject);
begin
  fDMConsNotaBeneficiamento := TDMConsNotaBeneficiamento.Create(Self);
end;

procedure TfrmConsNotaBeneficiamento_Nota.prc_Calcular;
var
  vQtd : Real;
begin
  vQtd := 0;
  fDMConsNotaBeneficiamento.cdsNotaDevolvida.First;
  while not fDMConsNotaBeneficiamento.cdsNotaDevolvida.Eof do
  begin
    if fDMConsNotaBeneficiamento.cdsNotaDevolvidaTIPO_NOTA_NF.AsString = 'S' then
      vQtd := StrToFloat(FormatFloat('0.000000',vQtd + fDMConsNotaBeneficiamento.cdsNotaDevolvidaQTD.AsFloat))
    else
      vQtd := StrToFloat(FormatFloat('0.000000',vQtd - fDMConsNotaBeneficiamento.cdsNotaDevolvidaQTD.AsFloat));
    fDMConsNotaBeneficiamento.cdsNotaDevolvida.Next;
  end;
  Label3.Caption := FormatFloat('0.000###',vQtd);
end;

procedure TfrmConsNotaBeneficiamento_Nota.RzBitBtn1Click(Sender: TObject);
begin
  if not fDMConsNotaBeneficiamento.cdsNotaDevolvida.IsEmpty then
  begin
    MessageDlg('*** Já existe notas para este item!', mtError, [mbOk], 0);
    exit;
  end;
  if (fDMConsNotaBeneficiamento.cdsBaixa_NFDevolvida.IsEmpty) or (fDMConsNotaBeneficiamento.cdsBaixa_NFDevolvidaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe baixa para ser excluida!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir a baixa selecionada?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  try
    fDMConsNotaBeneficiamento.cdsBaixa_NFDevolvida.Delete;
    fDMConsNotaBeneficiamento.cdsBaixa_NFDevolvida.ApplyUpdates(0);
    MessageDlg('Baixa excluida!', mtInformation, [mbOk], 0);
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao excluir a baixa manual: ' + e.Message);
    end;
  end;

//  fDMConsPedido.prc_Abre_Baixar_Pedido(vID_Pedido_Cons,vItem_Pedido_Cons);

end;

end.
