unit UGerar_CBarra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Dialogs, UDMCadCBarra, RxLookup, StdCtrls,
  ExtCtrls, Grids, DBGrids, SMDBGrid, NxCollection, DB, SqlExpr, UCBase;

type
  TfrmGerar_CBarra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    btnConsultar: TNxButton;
    btnGerar: TNxButton;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel2: TPanel;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnGerarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadCBarra: TDMCadCBarra;
    vItem_CBarra: Integer;
    vCod_Princial, vCod_Principal_Existe: String;
    vSeq_Maxima: Integer;
    vSeq_Proxima, vSeq_Existe: Integer;
    vContador : Integer;
    procedure prc_Chama_Form_Produto(Ref_Prod: String);
    procedure prc_Abrir_Combinacacao(ID_Produto: Integer);
    procedure prc_Abrir_Produto_Tam(ID_Produto: Integer);
    procedure prc_Gerar_CBarra;
    procedure prc_Le_Combinacao;
    procedure prc_Le_Produto_Tam(ID_Combinacao: Integer ; Nome_Combinacao: String);
    procedure prc_Gravar_mCBarraAux(ID_Produto, ID_Combinacao: Integer; Referencia, Nome_Produto, Tamanho, Nome_Combinacao: String);
    procedure prc_Verifica_CBarra;
    procedure prc_Gravar_Filial_CBarra;
    procedure prc_Gravar_CBarra;
    function fnc_Verifica_Produto: String;
  public
    { Public declarations }
  end;

var
  frmGerar_CBarra: TfrmGerar_CBarra;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, USel_Produto, UMenu;

{$R *.dfm}

procedure TfrmGerar_CBarra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_CBarra.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadCBarra.cdsFilial.Close;
  fDMCadCBarra.cdsFilial.Open;
  fDMCadCBarra.cdsFilial.First;
  if fDMCadCBarra.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo3.KeyValue := fDMCadCBarra.cdsFilialID.AsInteger;
  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo3.Text = '') then
    RxDBLookupCombo3.SetFocus;
  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo3.Text <> '') then
    btnConsultarClick(Sender);
  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'Nome_Combinacao' then
      SMDBGrid1.Columns[i].Visible := ((fDMCadCBarra.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadCBarra.qParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadCBarra.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
    if SMDBGrid1.Columns[i].FieldName = 'Tamanho' then
      SMDBGrid1.Columns[i].Visible := (fDMCadCBarra.qParametrosUSA_GRADE.AsString = 'S');
    if SMDBGrid1.Columns[i].FieldName = 'CBarra' then
      SMDBGrid1.Columns[i].ReadOnly := not(btnConfirmar.Enabled);
    if SMDBGrid1.Columns[i].FieldName = 'Cod_Principal' then
    begin
      SMDBGrid1.Columns[i].ReadOnly := not(btnConfirmar.Enabled);
      SMDBGrid1.Columns[i].Visible  := (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString <> 'S');
    end;
    if SMDBGrid1.Columns[i].FieldName = 'Cod_Sequencial' then
    begin
      SMDBGrid1.Columns[i].ReadOnly := not(btnConfirmar.Enabled);
      SMDBGrid1.Columns[i].Visible  := (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString <> 'S');
    end;
    if SMDBGrid1.Columns[i].FieldName = 'ID_Combinacao' then
      SMDBGrid1.Columns[i].Visible  := (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString <> 'S');
  end;
  Label3.Enabled           := (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString <> 'S');
  RxDBLookupCombo3.Enabled := (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString <> 'S');
  btnGerar.Visible         := (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString <> 'S');
  btnConsultarClick(Sender);
end;

procedure TfrmGerar_CBarra.prc_Chama_Form_Produto(Ref_Prod: String);
begin
  if (Ref_Prod = 'R') and (RxDBLookupCombo1.Text <> '') then
    vCodProduto_Pos := RxDBLookupCombo1.KeyValue
  else
  if (Ref_Prod = 'P') and (RxDBLookupCombo2.Text <> '') then
    vCodProduto_Pos := RxDBLookupCombo2.KeyValue;
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vTipo_Prod := '';
  frmSel_Produto.ShowModal;
  if (vCodProduto_Pos > 0) then
  begin
    RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
    RxDBLookupCombo2.KeyValue := vCodProduto_Pos;
  end;
  if (Ref_Prod = 'R') then
    RxDBLookupCombo1.SetFocus
  else
  if (Ref_Prod = 'P') then
    RxDBLookupCombo2.SetFocus;
end;

procedure TfrmGerar_CBarra.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto('R');
end;

procedure TfrmGerar_CBarra.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto('R');
end;

procedure TfrmGerar_CBarra.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
end;

procedure TfrmGerar_CBarra.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
end;

procedure TfrmGerar_CBarra.btnConsultarClick(Sender: TObject);
begin
  if (trim(RxDBLookupCombo1.Text) = '') and (trim(RxDBLookupCombo2.Text) = '') then
  begin
    MessageDlg('*** Produto não informado!', mtError, [mbOk], 0);
    exit;
  end;
  if (trim(RxDBLookupCombo3.Text) = '') and (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString <> 'S') then
  begin
    MessageDlg('*** Filial não informada!', mtError, [mbOk], 0);
    exit;
  end;

  if not fDMCadCBarra.cdsProduto.Locate('ID',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]) then
  begin
    MessageDlg('*** Produto não encontrado!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadCBarra.mCBarraAux.EmptyDataSet;

  vFilial := 0;
  if trim(RxDBLookupCombo3.Text) <> '' then
    vFilial := RxDBLookupCombo3.KeyValue;
  prc_Abrir_Combinacacao(RxDBLookupCombo1.KeyValue);
  prc_Abrir_Produto_Tam(RxDBLookupCombo1.KeyValue);

  if fDMCadCBarra.cdsCombinacao.RecordCount > 0 then
    prc_Le_Combinacao
  else
  if fDMCadCBarra.cdsProduto_Tam.RecordCount > 0 then
    prc_Le_Produto_Tam(0,'')
  else
  begin
    if vFilial = 0 then
    begin
      fDMCadCBarra.cdsFilial.First;
      while not fDMCadCBarra.cdsFilial.Eof do
      begin
        vFilial := fDMCadCBarra.cdsFilialID.AsInteger;
        prc_Gravar_mCBarraAux(fDMCadCBarra.cdsProdutoID.AsInteger, 0, fDMCadCBarra.cdsProdutoREFERENCIA.AsString,
                              fDMCadCBarra.cdsProdutoNOME.AsString, '', '');

        fDMCadCBarra.cdsFilial.Next;
      end;
    end
    else
      prc_Gravar_mCBarraAux(fDMCadCBarra.cdsProdutoID.AsInteger, 0, fDMCadCBarra.cdsProdutoREFERENCIA.AsString,
                            fDMCadCBarra.cdsProdutoNOME.AsString, '', '');
  end;
end;

procedure TfrmGerar_CBarra.prc_Gerar_CBarra;
begin

end;

procedure TfrmGerar_CBarra.prc_Abrir_Combinacacao(ID_Produto: Integer);
begin
  fDMCadCBarra.cdsCombinacao.Close;
  fDMCadCBarra.sdsCombinacao.ParamByName('ID').AsInteger := ID_Produto;
  fDMCadCBarra.cdsCombinacao.Open;
end;

procedure TfrmGerar_CBarra.prc_Abrir_Produto_Tam(ID_Produto: Integer);
begin
  fDMCadCBarra.cdsProduto_Tam.Close;
  fDMCadCBarra.sdsProduto_Tam.ParamByName('ID').AsInteger := ID_Produto;
  fDMCadCBarra.cdsProduto_Tam.Open;
end;

procedure TfrmGerar_CBarra.prc_Le_Combinacao;
begin
  fDMCadCBarra.cdsCombinacao.First;
  while not fDMCadCBarra.cdsCombinacao.Eof do
  begin
    if fDMCadCBarra.cdsProduto_Tam.RecordCount > 0 then
      prc_Le_Produto_Tam(fDMCadCBarra.cdsCombinacaoID_COMBINACAO_COR.AsInteger,fDMCadCBarra.cdsCombinacaoNOME.AsString)
    else
      prc_Gravar_mCBarraAux(fDMCadCBarra.cdsProdutoID.AsInteger, fDMCadCBarra.cdsCombinacaoID_COMBINACAO_COR.AsInteger, fDMCadCBarra.cdsProdutoREFERENCIA.AsString,
                            fDMCadCBarra.cdsProdutoNOME.AsString, '', fDMCadCBarra.cdsCombinacaoNOME.AsString);
    fDMCadCBarra.cdsCombinacao.Next;
  end;
end;

procedure TfrmGerar_CBarra.prc_Le_Produto_Tam(ID_Combinacao: Integer ; Nome_Combinacao: String);
begin
  fDMCadCBarra.cdsProduto_Tam.First;
  while not fDMCadCBarra.cdsProduto_Tam.Eof do
  begin
    prc_Gravar_mCBarraAux(fDMCadCBarra.cdsProdutoID.AsInteger, ID_Combinacao, fDMCadCBarra.cdsProdutoREFERENCIA.AsString,
                          fDMCadCBarra.cdsProdutoNOME.AsString, fDMCadCBarra.cdsProduto_TamTAMANHO.AsString, Nome_Combinacao);

    fDMCadCBarra.cdsProduto_Tam.Next;
  end;
end;

procedure TfrmGerar_CBarra.prc_Gravar_mCBarraAux(ID_Produto, ID_Combinacao: Integer; Referencia, Nome_Produto, Tamanho, Nome_Combinacao: String);
var
  sds: TSQLDataSet;
  vComando: String;
begin
  sds := TSQLDataSet.Create(nil);
  try
    fDMCadCBarra.mCBarraAux.Insert;
    fDMCadCBarra.mCBarraAuxID_Produto.AsInteger     := ID_Produto;
    fDMCadCBarra.mCBarraAuxReferencia.AsString      := Referencia;
    fDMCadCBarra.mCBarraAuxNome.AsString            := Nome_Produto;
    fDMCadCBarra.mCBarraAuxTamanho.AsString         := Tamanho;
    fDMCadCBarra.mCBarraAuxNome_Combinacao.AsString := Nome_Combinacao;
    fDMCadCBarra.mCBarraAuxID_Combinacao.AsInteger  := ID_Combinacao;
    if trim(RxDBLookupCombo3.Text) = '' then
    begin
      fDMCadCBarra.mCBarraAuxFilial.AsInteger     := vFilial;
      fDMCadCBarra.mCBarraAuxNome_Filial.AsString := fDMCadCBarra.cdsFilialNOME_INTERNO.AsString;
    end
    else
    begin
      fDMCadCBarra.mCBarraAuxFilial.AsInteger         := RxDBLookupCombo3.KeyValue;
      fDMCadCBarra.mCBarraAuxNome_Filial.AsString     := RxDBLookupCombo3.Text;
    end;

    vComando := '';
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT ID, COD_BARRA, COD_PRINCIPAL, COD_SEQUENCIAL FROM CBARRA '
                       + 'WHERE ID_PRODUTO = ' + IntToStr(ID_Produto);
    if ID_Combinacao > 0 then
      vComando := vComando + ' AND ID_COR = ' + IntToStr(ID_Combinacao);
    if trim(Tamanho) <> '' then
      vComando := vComando + ' AND TAMANHO = ' + QuotedStr(Tamanho);
    if trim(RxDBLookupCombo3.Text) <> '' then
      vComando := vComando + ' AND FILIAL = ' + IntToStr(RxDBLookupCombo3.KeyValue)
    else
      vComando := vComando + ' AND FILIAL = ' + IntToStr(vFilial);
    sds.CommandText := sds.CommandText + vComando;
    sds.Open;
    if not sds.IsEmpty then
    begin
      fDMCadCBarra.mCBarraAuxID_CBarra.AsInteger      := sds.FieldByName('ID').AsInteger;
      fDMCadCBarra.mCBarraAuxCBarra.AsString          := sds.FieldByName('COD_BARRA').AsString;
      fDMCadCBarra.mCBarraAuxCod_Principal.AsString   := sds.FieldByName('COD_PRINCIPAL').AsString;
      fDMCadCBarra.mCBarraAuxCod_Sequencial.AsInteger := sds.FieldByName('COD_SEQUENCIAL').AsInteger;
    end
    else
    begin
      fDMCadCBarra.mCBarraAuxID_CBarra.AsInteger      := 0;
      fDMCadCBarra.mCBarraAuxCBarra.AsString          := '';
      fDMCadCBarra.mCBarraAuxCod_Principal.AsString   := '';
      fDMCadCBarra.mCBarraAuxCod_Sequencial.AsInteger := 0;
    end;
    fDMCadCBarra.mCBarraAux.Post;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmGerar_CBarra.FormCreate(Sender: TObject);
begin
  fDMCadCBarra := TDMCadCBarra.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCBarra);
end;

procedure TfrmGerar_CBarra.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadCBarra.mCBarraAux.RecordCount > 0 then
  begin
    if trim(fDMCadCBarra.mCBarraAuxCBarra.AsString) = '' then
      AFont.Color := clRed;
  end;
end;

procedure TfrmGerar_CBarra.btnGerarClick(Sender: TObject);
var
  vCodAux: String;
  vDig: Integer;
  i: Integer;
  vAux: Integer;
begin
  if MessageDlg('Deseja gerar Código de Barra dos registros selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadCBarra.mCBarraAux.First;

  fDMCadCBarra.cdsFilial_CBarra.Close;
  fDMCadCBarra.sdsFilial_CBarra.ParamByName('ID').AsInteger := RxDBLookupCombo3.KeyValue;
  fDMCadCBarra.cdsFilial_CBarra.Open;

  prc_Verifica_CBarra;
  if trim(vCod_Princial) = '' then
    exit;

  fDMCadCBarra.mCBarraAux.First;
  while not fDMCadCBarra.mCBarraAux.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (trim(fDMCadCBarra.mCBarraAuxCBarra.AsString) = '') then
    begin
      vCodAux := fnc_Verifica_Produto;
      if vCodAux <> '' then
      begin
        fDMCadCBarra.mCBarraAux.Edit;
        fDMCadCBarra.mCBarraAuxCBarra.AsString          := vCodAux;
        fDMCadCBarra.mCBarraAuxCod_Principal.AsString   := vCod_Principal_Existe;
        fDMCadCBarra.mCBarraAuxCod_Sequencial.AsInteger := vSeq_Existe;
        fDMCadCBarra.mCBarraAux.Post;
      end
      else
      begin
        vSeq_Proxima := vSeq_Proxima + 1;
        prc_Gravar_Filial_CBarra;
        if vSeq_Proxima <= 0 then
        begin
          prc_Verifica_CBarra;
          if trim(vCod_Princial) = '' then
            fDMCadCBarra.mCBarraAux.Last
          else
            vSeq_Proxima := vSeq_Proxima + 1;
        end;
        if trim(vCod_Princial) <> '' then
        begin
          vDig := fnc_Calcula_DigitoEAN13(vSeq_Maxima,vSeq_Proxima,vCod_Princial);
          vAux := 12 - Length(vCod_Princial);
          vCodAux := IntToStr(vSeq_Proxima);
          for i := 1 to vAux - Length(vCodAux) do
            vCodAux := '0' + vCodAux;
          vCodAux := vCod_Princial + vCodAux + FormatFloat('0',vDig);
          fDMCadCBarra.mCBarraAux.Edit;
          fDMCadCBarra.mCBarraAuxCBarra.AsString          := vCodAux;
          fDMCadCBarra.mCBarraAuxCod_Principal.AsString   := vCod_Princial;
          fDMCadCBarra.mCBarraAuxCod_Sequencial.AsInteger := vSeq_Proxima;
          fDMCadCBarra.mCBarraAux.Post;
          prc_Gravar_CBarra;
        end;
      end;
    end;
    fDMCadCBarra.mCBarraAux.Next;
  end;
  MessageDlg('*** Código de Barra gerado!', mtConfirmation, [mbOk], 0);
  Close;
end;

procedure TfrmGerar_CBarra.prc_Verifica_CBarra;
begin
  vCod_Princial := '';
  vSeq_Maxima   := 0;
  vItem_CBarra  := 0;
  vSeq_Proxima  := 0;
  fDMCadCBarra.cdsFilial_CBarra.First;
  while not fDMCadCBarra.cdsFilial_CBarra.Eof do
  begin
    if fDMCadCBarra.cdsFilial_CBarraENCERRADO.AsString <> 'S' then
    begin
      if fDMCadCBarra.cdsFilial_CBarraULT_SEQUENCIA.AsInteger < fDMCadCBarra.cdsFilial_CBarraMAX_SEQUENCIA.AsInteger then
      begin
        vCod_Princial := fDMCadCBarra.cdsFilial_CBarraCOD_BARRA.AsString;
        vItem_CBarra  := fDMCadCBarra.cdsFilial_CBarraITEM.AsInteger;
        vSeq_Maxima   := fDMCadCBarra.cdsFilial_CBarraMAX_SEQUENCIA.AsInteger;
        vSeq_Proxima  := fDMCadCBarra.cdsFilial_CBarraULT_SEQUENCIA.AsInteger;
        fDMCadCBarra.cdsFilial_CBarra.Last;
      end
      else
      begin
        fDMCadCBarra.cdsFilial_CBarra.Edit;
        fDMCadCBarra.cdsFilial_CBarraENCERRADO.AsString := 'S';
        fDMCadCBarra.cdsFilial_CBarra.Post;
        fDMCadCBarra.cdsFilial_CBarra.ApplyUpdates(0);
      end;
    end;
    fDMCadCBarra.cdsFilial_CBarra.Next;
  end;
  if trim(vCod_Princial) = '' then
    MessageDlg('*** Não existe código de barra lançado na Filial ou código já excedeu a sequência máxima!', mtError, [mbOk], 0);
end;

procedure TfrmGerar_CBarra.prc_Gravar_Filial_CBarra;
begin
  if fDMCadCBarra.cdsFilial_CBarra.Locate('ID;ITEM',VarArrayOf([vFilial,vItem_CBarra]),[locaseinsensitive]) then
  begin
    fDMCadCBarra.cdsFilial_CBarra.Edit;
    if vSeq_Proxima <= fDMCadCBarra.cdsFilial_CBarraMAX_SEQUENCIA.AsInteger then
    begin
      fDMCadCBarra.cdsFilial_CBarraULT_SEQUENCIA.AsInteger := vSeq_Proxima;
      if vSeq_Proxima = fDMCadCBarra.cdsFilial_CBarraMAX_SEQUENCIA.AsInteger then
        fDMCadCBarra.cdsFilial_CBarraENCERRADO.AsString := 'S';
    end;
    if vSeq_Proxima > fDMCadCBarra.cdsFilial_CBarraMAX_SEQUENCIA.AsInteger then
    begin
      fDMCadCBarra.cdsFilial_CBarraENCERRADO.AsString := 'S';
      vSeq_Proxima := 0;
    end;
    fDMCadCBarra.cdsFilial_CBarra.Post;
    fDMCadCBarra.cdsFilial_CBarra.ApplyUpdates(0);
  end;
end;

procedure TfrmGerar_CBarra.prc_Gravar_CBarra;
var
  vCodAux: String;
begin
  vCodAux := fnc_Verifica_Produto;
  if trim(vCodAux) <> '' then
    exit;
  fDMCadCBarra.prc_Inserir;
  fDMCadCBarra.cdsCBarraCOD_BARRA.AsString   := fDMCadCBarra.mCBarraAuxCBarra.AsString;
  fDMCadCBarra.cdsCBarraID_PRODUTO.AsInteger := fDMCadCBarra.mCBarraAuxID_Produto.AsInteger;
  if fDMCadCBarra.mCBarraAuxID_Combinacao.AsInteger > 0 then
    fDMCadCBarra.cdsCBarraID_COR.AsInteger := fDMCadCBarra.mCBarraAuxID_Combinacao.AsInteger
  else
    fDMCadCBarra.cdsCBarraID_COR.AsInteger := 0;
  if trim(fDMCadCBarra.mCBarraAuxTamanho.AsString) <> '' then
    fDMCadCBarra.cdsCBarraTAMANHO.AsString := fDMCadCBarra.mCBarraAuxTamanho.AsString;
  fDMCadCBarra.cdsCBarraCOD_PRINCIPAL.AsString   := vCod_Princial;
  fDMCadCBarra.cdsCBarraCOD_SEQUENCIAL.AsInteger := vSeq_Proxima;
  fDMCadCBarra.cdsCBarraFILIAL.AsInteger         := fDMCadCBarra.mCBarraAuxFilial.AsInteger;
  fDMCadCBarra.cdsCBarra.Post;
  fDMCadCBarra.cdsCBarra.ApplyUpdates(0);

  vContador := vContador + 1;
end;

procedure TfrmGerar_CBarra.btnConfirmarClick(Sender: TObject);
begin
  vCod_Princial := '';
  vSeq_Maxima   := 0;
  vSeq_Proxima  := 0;
  vContador     := 0;
  fDMCadCBarra.mCBarraAux.First;
  while not fDMCadCBarra.mCBarraAux.Eof do
  begin
    vFilial := fDMCadCBarra.mCBarraAuxFilial.AsInteger;
    if (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') and (trim(fDMCadCBarra.mCBarraAuxCBarra.AsString) <> '') then
      prc_Gravar_CBarra
    else
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (trim(fDMCadCBarra.mCBarraAuxCBarra.AsString) <> '') then
      prc_Gravar_CBarra;
    fDMCadCBarra.mCBarraAux.Next;
  end;
  if vContador <= 0 then
    MessageDlg('*** Código de Barras não gerado!', mtConfirmation, [mbOk], 0)
  else
    MessageDlg('*** ' + IntToStr(vContador) + ' Cód. de Barras gerados!' , mtConfirmation, [mbOk], 0);
  if (fDMCadCBarra.qParametros_ProdINF_CBARRA_MANUAL.AsString = 'S') then
    Close;
end;

function TfrmGerar_CBarra.fnc_Verifica_Produto: String;
var
  sds: TSQLDataSet;
  vComando: String;
begin
  Result := '';
  vCod_Principal_Existe := '';
  vSeq_Existe           := 0;
  sds := TSQLDataSet.Create(nil);
  try
    vComando := '';
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT ID, COD_BARRA, COD_PRINCIPAL, COD_SEQUENCIAL FROM CBARRA ' +
                         'WHERE ID_PRODUTO = ' + IntToStr(fDMCadCBarra.mCBarraAuxID_Produto.AsInteger);
    if fDMCadCBarra.mCBarraAuxID_Combinacao.AsInteger > 0 then
      vComando := vComando + ' AND ID_COR = ' + IntToStr(fDMCadCBarra.mCBarraAuxID_Combinacao.AsInteger);
    if trim(fDMCadCBarra.mCBarraAuxTamanho.AsString) <> '' then
      vComando := vComando + ' AND TAMANHO = ' + QuotedStr(fDMCadCBarra.mCBarraAuxTamanho.AsString);
    vComando := vComando + ' AND FILIAL = ' + IntToStr(fDMCadCBarra.mCBarraAuxFilial.AsInteger);
    sds.CommandText := sds.CommandText + vComando;
    sds.Open;
    if not sds.IsEmpty then
    begin
      Result := sds.FieldByName('COD_BARRA').AsString;
      vCod_Principal_Existe := sds.FieldByName('COD_PRINCIPAL').AsString;
      vSeq_Existe           := sds.FieldByName('COD_SEQUENCIAL').AsInteger;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

end.
