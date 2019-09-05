unit UCadDocEstoque_Copia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadDocEstoque, UDMCopiaDoc, StdCtrls,
  Mask, ToolEdit, CurrEdit, Buttons, ExtCtrls, ComCtrls;

type
  TfrmCadDocEstoque_Copia = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    btnCopiar: TBitBtn;
    btnCancelar: TBitBtn;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vCodCFOP_COP: String;

    procedure prc_Abrir_Pedido(ID_Pedido: Integer);

    procedure prc_Copiar_Pedido;
    procedure prc_Copiar_Pedido_Itens;
    procedure prc_Inicio_Tela;
  public
    { Public declarations }
    fDMCopiaDoc: TDMCopiaDoc;
    fDMCadDocEstoque: TDMCadDocEstoque;
    vID_DocEstoque: Integer;

  end;

var
  frmCadDocEstoque_Copia: TfrmCadDocEstoque_Copia;

implementation

uses DB, uUtilPadrao, uGrava_Pedido, classe.CalcularPeso;

{$R *.dfm}

procedure TfrmCadDocEstoque_Copia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadDocEstoque_Copia.prc_Abrir_Pedido(ID_Pedido: Integer);
begin
  fDMCopiaDoc.cdsDocEstoque.Close;
  fDMCopiaDoc.sdsDocEstoque.ParamByName('ID').AsInteger := ID_Pedido;
  fDMCopiaDoc.cdsDocEstoque.Open;

  fDMCopiaDoc.cdsDocEstoque_Itens.Close;
  fDMCopiaDoc.cdsDocEstoque_Itens.Open;
end;

procedure TfrmCadDocEstoque_Copia.btnCopiarClick(Sender: TObject);
var
  vIDAux: Integer;
  vNumNota: Integer;
begin
  if fDMCopiaDoc.cdsDocEstoque.IsEmpty then
  begin
    MessageDlg('*** Pedido não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadDocEstoque.Tag := 1;
  prc_Copiar_Pedido;
  prc_Copiar_Pedido_Itens;
  Close;
end;

procedure TfrmCadDocEstoque_Copia.prc_Copiar_Pedido;
var
  i: Integer;
begin
  fDMCadDocEstoque.prc_Inserir;
  for i := 0 to ( fDMCopiaDoc.cdsDocEstoque.FieldCount - 1) do
  begin
    if (fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName <> 'ID') and (fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName <> 'DTEMISSAO') and
       (fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName <> 'NUM_PEDIDO') and (fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName <> 'PEDIDO_CLIENTE') and
       (fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName <> 'GEROU_PRODUCAO') and (fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName <> 'NUM_ORCAMENTO') and
       (fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName <> 'APROVADO_ORC') then
      fDMCadDocEstoque.cdsDocEstoque.FieldByName(fDMCopiaDoc.cdsDocEstoque.Fields[i].FieldName).AsVariant := fDMCopiaDoc.cdsDocEstoque.Fields[i].Value;
  end;
  fDMCadDocEstoque.cdsDocEstoqueDTMOVIMENTO.AsDateTime := Date;
end;

procedure TfrmCadDocEstoque_Copia.prc_Copiar_Pedido_Itens;
var
  i: Integer;
begin
  ProgressBar1.Max      := fDMCopiaDoc.cdsDocEstoque_Itens.RecordCount;
  ProgressBar1.Position := 0;
  fDMCopiaDoc.cdsDocEstoque_Itens.First;
  while not fDMCopiaDoc.cdsDocEstoque_Itens.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    fDMCadDocEstoque.prc_Inserir_Itens;
    for i := 0 to ( fDMCopiaDoc.cdsDocEstoque_Itens.FieldCount - 1) do
    begin
      if (fDMCopiaDoc.cdsDocEstoque_Itens.Fields[i].FieldName <> 'ID') and (fDMCopiaDoc.cdsDocEstoque_Itens.Fields[i].FieldName <> 'sdsDocEstoque_Item_Tipo') then
        fDMCadDocEstoque.cdsDocEstoque_Itens.FieldByName(fDMCopiaDoc.cdsDocEstoque_Itens.Fields[i].FieldName).AsVariant := fDMCopiaDoc.cdsDocEstoque_Itens.Fields[i].Value;
    end;
    fDMCadDocEstoque.cdsDocEstoque_ItensID_MOVESTOQUE.AsInteger := 0;
    fDMCadDocEstoque.cdsDocEstoque_Itens.Post;

    fDMCopiaDoc.cdsDocEstoque_Itens.Next;
  end;
end;

procedure TfrmCadDocEstoque_Copia.btnCancelarClick(Sender: TObject);
begin
  fDMCadDocEstoque.Tag := 0;
  Close;
end;

procedure TfrmCadDocEstoque_Copia.prc_Inicio_Tela;
begin
  prc_Abrir_Pedido(fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger);
end;

procedure TfrmCadDocEstoque_Copia.FormShow(Sender: TObject);
begin
  fDMCadDocEstoque.Tag := 0;
  CurrencyEdit1.AsInteger := vID_DocEstoque;
  prc_Abrir_Pedido(fDMCadDocEstoque.cdsDocEstoque_ConsultaID.AsInteger);
end;

procedure TfrmCadDocEstoque_Copia.FormCreate(Sender: TObject);
begin
  fDMCopiaDoc := TDMCopiaDoc.Create(Self);
end;

end.
