unit UCadProduto_CBarra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadProduto, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, ToolEdit, RXDBCtrl, SqlExpr, Grids, DBGrids, SMDBGrid, NxCollection,
  UCadProduto_Comb_Mat;

type
  TfrmCadProduto_CBarra = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    pnlDados: TPanel;
    pnlItem: TPanel;
    btnInserir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnInserir: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    SMDBGrid2: TSMDBGrid;
    btnGerar: TNxButton;
    pnlFilial: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto_Comb_Mat: TfrmCadProduto_Comb_Mat;
    vInserir: Boolean;
    vCodPrincipal: Integer;
    vSeq_CBarra: Integer;

    function  fnc_Erro: Boolean;

    procedure prc_Habilita;

    procedure prc_Gerar_CBarra(ID_Produto,ID_Combinacao,Filial: Integer ; Tamanho: String);

    function fnc_CodBarra(Filial: Integer): Integer;

  public
    { Public declarations }
    fDMCadProduto: TDMCadProduto;

  end;

var
  frmCadProduto_CBarra: TfrmCadProduto_CBarra;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmCadProduto_CBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProduto.cdsProduto_Comb.State in [dsEdit,dsInsert] then
    fDMCadProduto.cdsProduto_Comb.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProduto_CBarra.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  btnInserir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnAlterar.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);
  btnExcluir.Enabled := (fDMCadProduto.cdsProduto.State in [dsEdit,dsInsert]);

  fDMCadProduto.cdsFilial.Close;
  fDMCadProduto.cdsFilial.Open;
  if (fDMCadProduto.cdsFilial.RecordCount <= 1) and (fDMCadProduto.cdsFilialID.AsInteger > 0) then
    RxDBLookupCombo1.KeyValue := fDMCadProduto.cdsFilialID.AsInteger;
end;

function TfrmCadProduto_CBarra.fnc_Erro: Boolean;
var
  vMsgErro: String;
begin
  Result   := True;
  vMsgErro := '';
  if fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
    vMsgErro := vMsgErro + #13 + '*** Material não informado!';
  if trim(fDMCadProduto.cdsProduto_CombNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome da combinação não informada!';
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadProduto_CBarra.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    Close;
end;

procedure TfrmCadProduto_CBarra.btnConfirmarClick(Sender: TObject);
begin
  if fnc_Erro then
    exit;
  try
    fDMCadProduto.cdsProduto_Comb.Post;
    prc_Habilita;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
end;

procedure TfrmCadProduto_CBarra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto_Comb);
end;

procedure TfrmCadProduto_CBarra.btnCancelarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb.State in [dsEdit,dsInsert] then
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  if vInserir then
  begin
    fDMCadProduto.cdsProduto_Comb_Mat.First;
    while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
      fDMCadProduto.cdsProduto_Comb_Mat.Delete;
    fDMCadProduto.cdsProduto_Comb.Delete;
  end
  else
    fDMCadProduto.cdsProduto_Comb.Cancel;

  prc_Habilita;
end;

procedure TfrmCadProduto_CBarra.btnInserir_ItensClick(Sender: TObject);
begin
  fDMCadProduto.prc_Inserir_ProdCombMat;
  ffrmCadProduto_Comb_Mat := TfrmCadProduto_Comb_Mat.Create(self);
  ffrmCadProduto_Comb_Mat.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Comb_Mat.ShowModal;
  FreeAndNil(ffrmCadProduto_Comb_Mat);
end;

procedure TfrmCadProduto_CBarra.btnAlterar_ItensClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
    exit;
  fDMCadProduto.cdsProduto_Comb_Mat.Edit;
  ffrmCadProduto_Comb_Mat := TfrmCadProduto_Comb_Mat.Create(self);
  ffrmCadProduto_Comb_Mat.fDMCadProduto := fDMCadProduto;
  ffrmCadProduto_Comb_Mat.ShowModal;
  FreeAndNil(ffrmCadProduto_Comb_Mat);
end;

procedure TfrmCadProduto_CBarra.btnExcluir_ItensClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb_Mat.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o material selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadProduto.cdsProduto_Comb_Mat.Delete;
end;

procedure TfrmCadProduto_CBarra.btnInserirClick(Sender: TObject);
begin
  vInserir := True;
  prc_Habilita;
  fDMCadProduto.prc_Inserir_ProdComb;
end;

procedure TfrmCadProduto_CBarra.prc_Habilita;
begin
  btnInserir.Enabled          := not(btnInserir.Enabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);
  btnExcluir.Enabled          := not(btnExcluir.Enabled);
  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  btnCancelar.Enabled         := not(btnCancelar.Enabled);
  pnlDados.Enabled            := not(pnlDados.Enabled);
  btnInserir_Itens.Enabled    := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled    := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled    := not(btnExcluir_Itens.Enabled);
end;

procedure TfrmCadProduto_CBarra.btnAlterarClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb.IsEmpty then
    exit;
  vInserir := False;
  fDMCadProduto.cdsProduto_Comb.Edit;
  prc_Habilita;
end;

procedure TfrmCadProduto_CBarra.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProduto.cdsProduto_Comb.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a combinação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto_Comb_Mat.First;
  while not fDMCadProduto.cdsProduto_Comb_Mat.Eof do
    fDMCadProduto.cdsProduto_Comb_Mat.Delete;
  fDMCadProduto.cdsProduto_Comb.Delete;
end;

procedure TfrmCadProduto_CBarra.btnGerarClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    MessageDlg('*** Não foi informada a Filial!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMCadProduto.cdsProduto_Comb.IsEmpty) then
  begin
    //aqui 
    //vCodBarra := fnc_CodBarra(RxDBLookupCombo1.KeyValue);
    if not fDMCadProduto.cdsProduto_Tam.IsEmpty then
    begin
      fDMCadProduto.cdsProduto_Tam.First;
      while not fDMCadProduto.cdsProduto_Tam.Eof do
      begin
        prc_Gerar_CBarra(fDMCadProduto.cdsProdutoID.AsInteger,0,RxDBLookupCombo1.KeyValue,fDMCadProduto.cdsProduto_TamTamanho.AsString);
        fDMCadProduto.cdsProduto_Tam.Next;
      end;
    end
    else
      prc_Gerar_CBarra(fDMCadProduto.cdsProdutoID.AsInteger,0,RxDBLookupCombo1.KeyValue,'');
  end;
end;

procedure TfrmCadProduto_CBarra.prc_Gerar_CBarra(ID_Produto, ID_Combinacao,
  Filial: Integer; Tamanho: String);
var
  sds: TSQLDataSet;
begin

  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT C.* FROM CBARRA C '
                       + ' WHERE C.ID_PRODUTO = ' + IntToStr(ID_Produto)
                       + '   AND C.ID_COR = ' + IntToStr(ID_Combinacao)
                       + '   AND C.FILIAL = ' + IntToStr(Filial)
                       + '   AND C.TAMANHO = ' + QuotedStr(Tamanho);
    sds.Open;

    if sds.IsEmpty then
    begin

    end;
  finally
    FreeAndNil(sds);
  end;
end;

function TfrmCadProduto_CBarra.fnc_CodBarra(Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  vFlag: Boolean;
  vSeq: Integer;
begin
  Result := 0;

  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT ULT_SEQUENCIA, MAX_SEQUENCIA, COD_BARRA FROM FILIAL_CBARRA '
                       + ' WHERE ID = ' + IntToStr(Filial)
                       + ' ORDER BY COD_BARRA ';
    sds.Open;
    vFlag := False;
    vSeq  := 0;
    sds.First;
    while not sds.Eof do
    begin
      fDMCadProduto.qProximoCbarra.Close;
      fDMCadProduto.qProximoCbarra.ParamByName('COD_PRINCIPAL').AsString := sds.FieldByName('COD_BARRA').AsString;
      fDMCadProduto.qProximoCbarra.ParamByName('FILIAL').AsInteger       := Filial;
      fDMCadProduto.qProximoCbarra.Open;
      if fDMCadProduto.qProximoCbarraSEQUENCIAL.AsInteger <= sds.FieldByName('MAX_SEQUENCIA').AsInteger then
      begin
        vFlag := True;
        vSeq  := fDMCadProduto.qProximoCbarraSEQUENCIAL.AsInteger;
      end;
      if vFlag then
        sds.Last;
        
      sds.Next;
    end;

    if sds.IsEmpty then
    begin


      //gravar aqui o codigo de barra

    end;


  finally
    FreeAndNil(sds);

  end;


end;

end.
