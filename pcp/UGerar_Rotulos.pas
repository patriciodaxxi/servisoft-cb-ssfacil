unit UGerar_Rotulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPedido, DB,
  DBGrids, ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl,
  UCBase, Math, DateUtils, NxCollection, Menus, Variants, SMDBFind, SqlExpr;

type
  TfrmGerar_Rotulos = class(TForm)
    pnlPesquisa: TPanel;
    lblCliente: TLabel;
    lblNumNota: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    lblSerie: TLabel;
    edtCliente: TEdit;
    cePedInterno: TCurrencyEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    edtPedCliente: TEdit;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Panel4: TPanel;
    Shape5: TShape;
    Label30: TLabel;
    Shape6: TShape;
    Label31: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    CheckBox1: TCheckBox;
    PopupMenu1: TPopupMenu;
    rmica1: TMenuItem;
    A41: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtPedClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePedInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure rmica1Click(Sender: TObject);
    procedure A41Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadPedido: TDMCadPedido;

    vQtd_Caixa: Integer;
    vQtd_Pares: Integer;
    vImpRot   : Boolean;

    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_Imp;
    procedure prc_Limpar_mRotulos;
    procedure prc_Montar_Rotulos(Perc: Real ; Qtd: Integer = 0); //Por produto  Color Shoes usa este
    procedure prc_Inserir_Rotulos(Num_Volume: Integer = 0 ; Qtd_Volume: Integer = 0);
    procedure prc_Gravar_mRotulos_Prod(Qtd: Real ; Resto: Boolean = False);
    procedure prc_Gravar_mRotulos_Tam(Qtd: Integer);
    procedure prc_Montar_Rotulos2(Perc: Real ; Qtd: Integer = 0); //Por tamanho injetados usam este

    procedure prc_Inserir_Rotulos2(Num_Volume: Integer = 0 ; Qtd_Volume: Integer = 0 ; Qtd: Integer = 0);
    procedure prc_Controle_Imp;

    function fnc_senha: Boolean;

  public
    { Public declarations }

  end;

var
  frmGerar_Rotulos: TfrmGerar_Rotulos;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, USel_Pessoa, UDMUtil,
  VarUtils, URelRotulos, uCalculo_Pedido, USenha;

{$R *.dfm}

procedure TfrmGerar_Rotulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vNum_Pedido_Pos  := 0;
  vTipo_Pedido     := '';
  vTipo_Imp_Rotulo := '';
  Action := Cafree;
end;

procedure TfrmGerar_Rotulos.FormShow(Sender: TObject);
begin
  CheckBox1.Visible := (vTipo_Imp_Rotulo = 'T');
  if vTipo_Imp_Rotulo = 'T' then
    CheckBox1.Checked := True;
  vTipo_Pedido := 'P';
  vRotulo      := True;
  fDMCadPedido := TDMCadPedido.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  vRotulo      := False;

  fDMCadPedido.prc_Abrir_cdsCliente;

  if cePedInterno.AsInteger > 0 then
  begin
    btnConsultarClick(Sender);
    if not fDMCadPedido.cdsPedido_Consulta.IsEmpty then
      SMDBGrid1.SelectAllClick(SMDBGrid1);
  end;
end;

procedure TfrmGerar_Rotulos.prc_Consultar(ID: Integer);
begin
  fDMCadPedido.cdsPedido_Consulta.Close;
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.ctConsulta + ' WHERE PED.TIPO_REG = ' + QuotedStr('P');
  fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.CANCELADO = ' + QuotedStr('N');
  if ID > 0 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.ID = ' + IntToStr(ID)
  else
  if cePedInterno.AsInteger > 0 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.NUM_PEDIDO = ' + cePedInterno.Text;

  if not(RxDBLookupCombo1.Text = '') then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if Trim(edtPedCliente.Text) <> '' then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(edtPedCliente.Text);
  if DateEdit1.Date > 10 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.DTEMISSAO >= ' +
                                                   QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND PED.DTEMISSAO <= ' +
                                                   QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if Trim(edtCliente.Text) <> '' then
    fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText +
                                                   ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + ')' +
                                                   ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + '))';
  case RadioGroup1.ItemIndex of
    0: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO <> ' + QuotedStr('S');
    1: fDMCadPedido.sdsPedido_Consulta.CommandText := fDMCadPedido.sdsPedido_Consulta.CommandText + ' AND PED.FATURADO = ' + QuotedStr('S');
  end;
  fDMCadPedido.cdsPedido_Consulta.Open;
end;

procedure TfrmGerar_Rotulos.btnConsultarClick(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.Close;
  fDMCadPedido.cdsProduto.Open;
  prc_Consultar(0);
end;

procedure TfrmGerar_Rotulos.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPedido);
end;

procedure TfrmGerar_Rotulos.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPedido.cdsPedido_Consulta.IsEmpty then
    Exit;

  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'S') then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'P') then
    Background  := clAqua
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'C') then
  begin
    Background  := clRed;
    AFont.Color := clWhite
  end
  else
  if (fDMCadPedido.cdsPedido_ConsultaFATURADO.AsString = 'X') then
    Background  := $0080FFFF;
end;

procedure TfrmGerar_Rotulos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPedido.cdsPedido);
end;

procedure TfrmGerar_Rotulos.edtPedClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos.cePedInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmGerar_Rotulos.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadPedido.cdsPedido_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerar_Rotulos.prc_Posiciona_Imp;
begin
  fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.cdsPedidoImp.Close;
  fDMCadPedido.sdsPedidoImp.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp.Open;

  fDMCadPedido.cdsPedidoImp_Itens.Close;
  fDMCadPedido.sdsPedidoImp_Itens.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ConsultaID.AsInteger;
  fDMCadPedido.cdsPedidoImp_Itens.Open;
end;

procedure TfrmGerar_Rotulos.prc_Limpar_mRotulos;
begin
  fDMCadPedido.mRotulos.First;
  while not fDMCadPedido.mRotulos.Eof do
  begin
    fDMCadPedido.mRotulos_Prod.First;
    while not fDMCadPedido.mRotulos_Prod.Eof do
    begin
      fDMCadPedido.mRotulos_Tam.First;
      while not fDMCadPedido.mRotulos_Tam.Eof do
        fDMCadPedido.mRotulos_Tam.Delete;
      fDMCadPedido.mRotulos_Prod.Delete;
    end;
    fDMCadPedido.mRotulos.Delete;
  end;
end;

procedure TfrmGerar_Rotulos.prc_Montar_Rotulos(Perc: Real ; Qtd: Integer = 0); //T=Tamanho grade  P=Produto
var
  vQtdAux: Real;
  vQtdAux2: Real;
  vContador: Integer;
  i, i2: Integer;
  vQtdCaixaAux: Integer;
  vQtdAux3: Integer;
  vContadorAux: Integer;
  vResto: Boolean;
begin
  vContador := 1;
  if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
    vContador := Qtd;
  vQtdAux3 := fDMCadPedido.mItensImpQtd.AsInteger div vQtd_Caixa;
  vResto := False;
  if fDMCadPedido.mItensImpQtd.AsInteger mod vQtd_Caixa > 0 then
    vResto := True;
  for i := 1 to vContador do
  begin
    if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
    begin
      if (vResto) and (fDMCadPedido.mItensImpQtd.AsInteger > vQtd_Caixa) then
        Qtd := vQtd_Caixa
      else
        Qtd := fDMCadPedido.mItensImpQtd.AsInteger div vContador;
      if Qtd <= 0 then
        Qtd := 1;
      prc_Inserir_Rotulos(i,vContador);
      prc_Gravar_mRotulos_Prod(Qtd);
      vQtdCaixaAux := 0;
      vContadorAux := 0;
      fDMCadPedido.mItensImp_Tam.First;
      while not fDMCadPedido.mItensImp_Tam.Eof do
      begin
        //16/06/2015
        vContadorAux := vContadorAux + 1;
        if fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger > 0 then
        begin

          Qtd := fDMCadPedido.mItensImp_TamQtd.AsInteger div vContador;
          if Qtd <= 0 then
            Qtd := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger;
          if Qtd > fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger then
            Qtd := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger;
          if (qtd + vQtdCaixaAux) > vQtd_Caixa then
          begin
            Qtd := vQtd_Caixa - vQtdCaixaAux;
            //Qtd := (qtd + vQtdCaixaAux) - vQtd_Caixa;
          end;
          if Qtd > 0 then
          begin
            prc_Gravar_mRotulos_Tam(Qtd);
            fDMCadPedido.mItensImp_Tam.Edit;
            fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger - Qtd;
            fDMCadPedido.mItensImp_Tam.Post;
          end;
          vQtdCaixaAux := vQtdCaixaAux + Qtd;
        end;
        if vQtdCaixaAux >= vQtd_Caixa then
          fDMCadPedido.mItensImp_Tam.Last
        else
        if vContadorAux >= fDMCadPedido.mItensImp_Tam.RecordCount then
        begin
          if vQtdCaixaAux < vQtd_Caixa then
          begin
            if fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger <= 0 then
              fDMCadPedido.mItensImp_Tam.Delete;
            fDMCadPedido.mItensImp_Tam.First;
            vContadorAux := 0;
          end
          else
            fDMCadPedido.mItensImp_Tam.Last;
        end
        else
          fDMCadPedido.mItensImp_Tam.Next;

      end;
      i2 := 0;
      fDMCadPedido.mRotulos_Prod.Edit;
      fDMCadPedido.mRotulos_Tam.First;
      while not fDMCadPedido.mRotulos_Tam.Eof do
      begin
        i2 := i2 + 1;
        fDMCadPedido.mRotulos_Prod.FieldByName('Tam'+IntToStr(i2)).AsString      := fDMCadPedido.mRotulos_TamTamanho.AsString;
        fDMCadPedido.mRotulos_Prod.FieldByName('Qtd_Tam'+IntToStr(i2)).AsInteger := fDMCadPedido.mRotulos_TamQtd.AsInteger;
        fDMCadPedido.mRotulos_Tam.Next;
      end;
      fDMCadPedido.mRotulos_Prod.Post;
    end
    else
    begin
      fDMCadPedido.mItensImp_Tam.First;
      while not fDMCadPedido.mItensImp_Tam.Eof do
      begin
        if fDMCadPedido.mItensImp_TamQtd.AsInteger > 0 then
        begin
          if StrToFloat(FormatFloat('0.00',Perc)) <= 0 then
            vQtdAux := fDMCadPedido.mItensImp_TamQtd.AsInteger
          else
            vQtdAux := StrToFloat(FormatFloat('0',(fDMCadPedido.mItensImp_TamQtd.AsInteger * Perc / 100)));
          if StrToFloat(FormatFloat('0',vQtdAux)) > fDMCadPedido.mItensImp_TamQtd.AsInteger then
            vQtdAux := fDMCadPedido.mItensImp_TamQtd.AsInteger;
          if fDMCadPedido.mRotulosQtd.AsInteger >= vQtd_Caixa then
            prc_Inserir_Rotulos;
          vQtdAux2 := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulosQtd.AsInteger + StrToFloat(FormatFloat('0',vQtdAux))));
          if StrToFloat(FormatFloat('0',vQtdAux2)) > vQtd_Caixa then
            vQtdAux := StrToFloat(FormatFloat('0',vQtdAux2 - vQtd_Caixa));
          if StrToFloat(FormatFloat('0',vQtdAux)) > 0 then
            prc_Gravar_mRotulos_Prod(StrToFloat(FormatFloat('0',vQtdAux)));
        end;
        fDMCadPedido.mItensImp_Tam.Next;
      end;
    end;
  end;
end;

procedure TfrmGerar_Rotulos.prc_Inserir_Rotulos(Num_Volume: Integer = 0 ; Qtd_Volume: Integer = 0);
var
  vID: Integer;
begin
  fDMCadPedido.mRotulos.Last;
  vID := fDMCadPedido.mRotulosID.AsInteger + 1;
  fDMCadPedido.mRotulos.Insert;
  fDMCadPedido.mRotulosID.AsInteger  := vID;
  fDMCadPedido.mRotulosQtd.AsInteger := 0;
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedido_ConsultaID_CLIENTE.AsInteger,[loCaseInsensitive]);

  fDMCadPedido.qPessoa.Close;
  fDMCadPedido.qPessoa.ParamByName('CODIGO').AsInteger := fDMCadPedido.cdsPedido_ConsultaID_CLIENTE.AsInteger;
  fDMCadPedido.qPessoa.Open;

  fDMCadPedido.mRotulosNome_Cliente.AsString := fDMCadPedido.cdsPedido_ConsultaNOME_CLIENTE.AsString;
  if trim(fDMCadPedido.qPessoaENDERECO_ENT.AsString) <> '' then
  begin
    fDMCadPedido.mRotulosEndereco.AsString        := fDMCadPedido.qPessoaENDERECO_ENT.AsString;
    fDMCadPedido.mRotulosNum_Endereco.AsString    := fDMCadPedido.qPessoaNUM_END_ENT.AsString;
    fDMCadPedido.mRotulosBairro.AsString          := fDMCadPedido.qPessoaBAIRRO_ENT.AsString;
    fDMCadPedido.mRotulosCep.AsString             := fDMCadPedido.qPessoaCEP_ENT.AsString;
    fDMCadPedido.mRotulosComplemento_End.AsString := fDMCadPedido.qPessoaCOMPLEMENTO_END_ENT.AsString;
    fDMCadPedido.mRotulosCidade.AsString          := fDMCadPedido.qPessoaCIDADE_ENT.AsString;
    fDMCadPedido.mRotulosUF.AsString              := fDMCadPedido.qPessoaUF_ENT.AsString;
  end
  else
  begin
    fDMCadPedido.mRotulosEndereco.AsString        := fDMCadPedido.qPessoaENDERECO.AsString;
    fDMCadPedido.mRotulosNum_Endereco.AsString    := fDMCadPedido.qPessoaNUM_END.AsString;
    fDMCadPedido.mRotulosBairro.AsString          := fDMCadPedido.qPessoaBAIRRO.AsString;
    fDMCadPedido.mRotulosCep.AsString             := fDMCadPedido.qPessoaCEP.AsString;
    fDMCadPedido.mRotulosComplemento_End.AsString := fDMCadPedido.qPessoaCOMPLEMENTO_END.AsString;
    fDMCadPedido.mRotulosCidade.AsString          := fDMCadPedido.qPessoaCIDADE.AsString;
    fDMCadPedido.mRotulosUF.AsString              := fDMCadPedido.qPessoaUF.AsString;
  end;

  if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
  begin
    if fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger <> fDMCadPedido.cdsFilialID.AsInteger then
      fDMCadPedido.cdsFilial.Locate('ID',fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);
    fDMCadPedido.mRotulosNome_Filial.AsString := fDMCadPedido.cdsFilialNOME.AsString;
    fDMCadPedido.mRotulosNome_Filial_Interno.AsString := fDMCadPedido.cdsFilialNOME_INTERNO.AsString;
    fDMCadPedido.mRotulosEndereco_Filial.AsString     := fDMCadPedido.cdsFilialENDERECO.AsString;
    fDMCadPedido.mRotulosNum_Filial.AsString          := fDMCadPedido.cdsFilialNUM_END.AsString;
    fDMCadPedido.mRotulosBairro_Filial.AsString       := fDMCadPedido.cdsFilialBAIRRO.AsString;
    fDMCadPedido.mRotulosCidade_Filial.AsString       := fDMCadPedido.cdsFilialCIDADE.AsString;
    fDMCadPedido.mRotulosUF_Filial.AsString           := fDMCadPedido.cdsFilialUF.AsString;
    fDMCadPedido.mRotulosPedido_Cliente.AsString      := fDMCadPedido.cdsPedido_ConsultaPEDIDO_CLIENTE.AsString;
    fDMCadPedido.mRotulosNum_Pedido.AsInteger         := fDMCadPedido.cdsPedido_ConsultaNUM_PEDIDO.AsInteger;
    fDMCadPedido.mRotulosID_Transportadora.AsInteger  := fDMCadPedido.cdsPedido_ConsultaID_TRANSPORTADORA.AsInteger;
    fDMCadPedido.mRotulosNome_Transportadora.AsString := fDMCadPedido.cdsPedido_ConsultaNOME_TRANSPORTADORA.AsString;
  end;
  fDMCadPedido.mRotulosNum_Volume.AsInteger   := Num_Volume;
  fDMCadPedido.mRotulosTotal_Volume.AsInteger := Qtd_Volume;
  fDMCadPedido.mRotulos.Post;
end;

procedure TfrmGerar_Rotulos.prc_Gravar_mRotulos_Prod(Qtd: Real ; Resto: Boolean = False);
var
  vExiste: Boolean;
begin
  vExiste := False;
  if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString <> 'S' then
    if (fDMCadPedido.mRotulos_Prod.Locate('ID;ID_Produto',VarArrayOf([fDMCadPedido.mRotulosID.AsInteger,fDMCadPedido.mItensImpID_Produto.AsInteger]),[locaseinsensitive])) then
      vExiste := True;
  if vExiste then
    fDMCadPedido.mRotulos_Prod.Edit
  else
  begin
    fDMCadPedido.mRotulos_Prod.Insert;
    fDMCadPedido.mRotulos_ProdID.AsInteger             := fDMCadPedido.mRotulosID.AsInteger;
    fDMCadPedido.mRotulos_ProdID_Produto.AsInteger     := fDMCadPedido.mItensImpID_Produto.AsInteger;
    fDMCadPedido.mRotulos_ProdReferencia.AsString      := fDMCadPedido.mItensImpReferencia.AsString;
    fDMCadPedido.mRotulos_ProdNome_Produto.AsString    := fDMCadPedido.mItensImpNome_Produto.AsString;
    fDMCadPedido.mRotulos_ProdID_Combinacao.AsInteger  := fDMCadPedido.mItensImpID_Combinacao.AsInteger;
    fDMCadPedido.mRotulos_ProdNome_Combiancao.AsString := fDMCadPedido.mItensImpNome_Combinacao.AsString;
  end;
  fDMCadPedido.mRotulos_ProdQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulos_ProdQtd.AsFloat + Qtd));
  fDMCadPedido.mRotulos_Prod.Post;

  if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString <> 'S' then
  begin
    prc_Gravar_mRotulos_Tam(StrToInt(FormatFloat('0',Qtd)));
    
    if not(fDMCadPedido.mRotulos.State in [dsEdit,dsInsert]) then
      fDMCadPedido.mRotulos.Edit;
    fDMCadPedido.mRotulosQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulosQtd.AsFloat + Qtd));

    //Descontar quantidade
    fDMCadPedido.mItensImp.Edit;
    fDMCadPedido.mItensImpQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mItensImpQtd.AsFloat - Qtd));
    fDMCadPedido.mItensImp.Post;

    fDMCadPedido.mItensImp_Tam.Edit;
    fDMCadPedido.mItensImp_TamQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mItensImp_TamQtd.AsFloat - Qtd));
    fDMCadPedido.mItensImp_Tam.Post;
    //*******************************
  end;
end;

procedure TfrmGerar_Rotulos.prc_Gravar_mRotulos_Tam(Qtd: Integer);
begin
  if (fDMCadPedido.mRotulos_Tam.Locate('ID;ID_Produto;Tamanho',VarArrayOf([fDMCadPedido.mRotulosID.AsInteger,fDMCadPedido.mItensImpID_Produto.AsInteger,fDMCadPedido.mItensImp_TamTamanho.AsString]),[locaseinsensitive])) then
    fDMCadPedido.mRotulos_Tam.Edit
  else
  begin
    fDMCadPedido.mRotulos_Tam.Insert;
    fDMCadPedido.mRotulos_TamID.AsInteger         := fDMCadPedido.mRotulosID.AsInteger;
    fDMCadPedido.mRotulos_TamID_Produto.AsInteger := fDMCadPedido.mRotulos_ProdID_Produto.AsInteger;
    fDMCadPedido.mRotulos_TamTamanho.AsString     := fDMCadPedido.mItensImp_TamTamanho.AsString;
  end;
  fDMCadPedido.mRotulos_TamQtd.AsFloat := StrToFloat(FormatFloat('0',fDMCadPedido.mRotulos_TamQtd.AsFloat + Qtd));
  fDMCadPedido.mRotulos_Tam.Post;
end;

procedure TfrmGerar_Rotulos.prc_Montar_Rotulos2(Perc: Real; Qtd: Integer);
var
  vQtdAux: Real;
  vQtdAux2: Real;
  vContador: Integer;
  i, i2: Integer;
  vQtdCaixaAux: Integer;
  vResto: Boolean;
begin
  //vQtdAux    := fDMCadPedido.mItensImp_TamQtd.AsInteger div vQtd_Caixa;
  //if fDMCadPedido.mItensImp_TamQtd.AsInteger mod vQtd_Caixa > 0 then
  //  vQtdAux := vQtdAux + 1;
  vContador := fDMCadPedido.mItensImp_TamQtd.AsInteger div vQtd_Caixa;
  if fDMCadPedido.mItensImp_TamQtd.AsInteger mod vQtd_Caixa > 0 then
    vContador := vContador + 1;
  //vContador := vQtdAux;
  vResto := False;
  if fDMCadPedido.mItensImp_TamQtd.AsInteger mod vQtd_Caixa > 0 then
    vResto := True;
  vQtdCaixaAux := fDMCadPedido.mItensImp_TamQtd.AsInteger;
  for i := 1 to vContador do
  begin
    if (vResto) and (vQtdCaixaAux > vQtd_Caixa) then
      Qtd := vQtd_Caixa
    else
    if i = vContador then
      Qtd := vQtdCaixaAux
    else
      Qtd := fDMCadPedido.mItensImp_TamQtd.AsInteger div vContador;
    if Qtd <= 0 then
      Qtd := 1;
    prc_Inserir_Rotulos2(i,vContador,Qtd);
    fDMCadPedido.mItensImp_Tam.Edit;
    fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger := fDMCadPedido.mItensImp_TamQtd_Rotulo.AsInteger - Qtd;
    fDMCadPedido.mItensImp_Tam.Post;
    vQtdCaixaAux := vQtdCaixaAux - Qtd;
  end;
end;

procedure TfrmGerar_Rotulos.prc_Inserir_Rotulos2(Num_Volume, Qtd_Volume,Qtd: Integer);
begin
  fDMCadPedido.mRotulos2.Insert;
  fDMCadPedido.mRotulos2Item_Original.AsInteger := fDMCadPedido.mItensImpItem.AsInteger;
  fDMCadPedido.mRotulos2Nome_Filial.AsString    := fDMCadPedido.cdsFilialNOME_INTERNO.AsString;
  fDMCadPedido.mRotulos2DtEntrega.AsDateTime    := fDMCadPedido.mItensImpDtEntrega.AsDateTime;
  fDMCadPedido.mRotulos2Nome_Cliente.AsString   := fDMCadPedido.cdsPedido_ConsultaNOME_CLIENTE.AsString;
  fDMCadPedido.mRotulos2Pedido_Cliente.AsString := fDMCadPedido.cdsPedido_ConsultaPEDIDO_CLIENTE.AsString;
  fDMCadPedido.mRotulos2Num_OS.AsString         := fDMCadPedido.mItensImpNumOS.AsString;
  fDMCadPedido.mRotulos2Referencia.AsString     := fDMCadPedido.mItensImpReferencia.AsString;
  fDMCadPedido.mRotulos2Nome_Cor.AsString       := fDMCadPedido.mItensImpNome_Combinacao.AsString;
  fDMCadPedido.mRotulos2Material.AsString       := fDMCadPedido.mItensImpNome_Material.AsString;
  fDMCadPedido.mRotulos2Tamanho.AsString        := fDMCadPedido.mItensImp_TamTamanho.AsString;
  fDMCadPedido.mRotulos2Tam_Matriz.AsString     := fDMCadPedido.mItensImp_TamTam_Matriz.AsString;
  fDMCadPedido.mRotulos2Qtd.AsInteger           := Qtd;
  fDMCadPedido.mRotulos2Num_Rotulo.AsInteger    := Num_Volume;
  fDMCadPedido.mRotulos2Qtd_Rotulo.AsInteger    := Qtd_Volume;
  fDMCadPedido.mRotulos2Carimbo.AsString        := fDMCadPedido.mItensImpCarimbo.AsString;
  fDMCadPedido.mRotulos2CarimboAux.AsString     := fDMCadPedido.mItensImpCarimboAux.AsString;
  fDMCadPedido.mRotulos2EndLogo_Rotulo.AsString := fDMCadPedido.cdsFilialENDLOGO_ROTULO.AsString;
  fDMCadPedido.mRotulos2Obs_Rotulo.AsString     := fDMCadPedido.cdsPedido_ConsultaOBS_ROTULO.AsString;
  fDMCadPedido.mRotulos2.Post;
end;

function TfrmGerar_Rotulos.fnc_senha: Boolean;
var
  ffrmSenha: TfrmSenha;
begin
  fDMCadPedido.cdsParametros.Close;
  fDMCadPedido.cdsParametros.Open;
  Result := True;
  if trim(fDMCadPedido.cdsParametrosSENHA_PEDIDO.AsString) <> '' then
  begin
    vSenha    := '';
    ffrmSenha := TfrmSenha.Create(self);
    ffrmSenha.Label2.Caption := '';
    ffrmSenha.Label3.Caption := 'Rótulo já impresso';
    ffrmSenha.Label4.Caption := '';
    ffrmSenha.ShowModal;
    FreeAndNil(ffrmSenha);
    if vSenha <> fDMCadPedido.cdsParametrosSENHA_PEDIDO.AsString then
    begin
      Result := False;
      MessageDlg('*** Senha incorreta!', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmGerar_Rotulos.rmica1Click(Sender: TObject);
var
  vArq: String;
begin
  prc_Controle_Imp;

  if not vImpRot then
    exit;

  fDMCadPedido.qFilial_Rel.Close;
  fDMCadPedido.qFilial_Rel.ParamByName('ID').AsInteger      := vFilial;
  if RadioGroup2.ItemIndex = 0 then
    fDMCadPedido.qFilial_Rel.ParamByName('TIPO').AsInteger  := 10
  else
    fDMCadPedido.qFilial_Rel.ParamByName('TIPO').AsInteger    := 7;
  fDMCadPedido.qFilial_Rel.ParamByName('POSICAO').AsInteger := 1;
  fDMCadPedido.qFilial_Rel.Open;
  if (trim(fDMCadPedido.qFilial_RelCAMINHO.AsString) = '') and (RadioGroup2.ItemIndex = 1) then
  begin
    fRelRotulos              := TfRelRotulos.Create(Self);
    fRelRotulos.fDMCadPedido := fDMCadPedido;
    fRelRotulos.RLReport1.PreviewModal;
    fRelRotulos.RLReport1.Free;
    FreeAndNil(fRelRotulos);
  end
  else
  begin
    if fDMCadPedido.qParametros_PedCONTROLAR_ROT_IMPRESSO.AsString = 'S' then
    begin
      fDMCadPedido.mAuxImp.First;
      while not fDMCadPedido.mAuxImp.Eof do
      begin
        if trim(fDMCadPedido.mAuxImpRotulo_Imp.AsString) <> 'S' then
        begin
          fDMCadPedido.prc_Localizar(fDMCadPedido.mAuxImpID_Pedido.AsInteger);
          if not(fDMCadPedido.cdsPedido.IsEmpty) then
          begin
            fDMCadPedido.cdsPedido.Edit;
            fDMCadPedido.cdsPedidoROTULO_IMP.AsString := 'S';
            fDMCadPedido.cdsPedido.Post;
            fDMCadPedido.cdsPedido.ApplyUpdates(0);
          end;
        end;
        fDMCadPedido.mAuxImp.Next;
      end;
      fDMCadPedido.mAuxImp.First;
    end;
    vArq := fDMCadPedido.qFilial_RelCAMINHO.AsString;
    if FileExists(vArq) then
      fDMCadPedido.frxReport1.Report.LoadFromFile(vArq)
    else
    begin
      ShowMessage('Relatorio não localizado! ' + vArq);
      Exit;
    end;
    fDMCadPedido.frxReport1.ShowReport;
  end;
end;

procedure TfrmGerar_Rotulos.prc_Controle_Imp;
var
  vTexto: String;
  vPerc: Real;
  vQtdAux, vQtdAux2: Integer;
  vErro: Boolean;
  vMsgErro: String;
begin
  fDMCadPedido.mRotulos2.EmptyDataSet;
  vErro    := False;
  vMsgErro := '';
  if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString <> 'S' then
  begin
    vTexto := InputBox('Corrugado','Informe a quantidade por caixa: ', '16');
    vTexto := Monta_Numero(vTexto,0);
    if trim(vTexto) = '' then
    begin
      MessageDlg('*** Não foi informada a quantidade por caixa', mtInformation, [mbOk], 0);
      Exit;
    end;
    vQtd_Caixa := StrToInt(vTexto);
    if vQtd_Caixa <= 0 then
      exit;
  end;
  if RadioGroup2.ItemIndex = 0 then
    fDMCadPedido.vTipo_Rel_Ped := 'ROT'
  else
    fDMCadPedido.vTipo_Rel_Ped := '';
  fDMCadPedido.mItensImp.First;
  while not fDMCadPedido.mItensImp.Eof do
  begin
    fDMCadPedido.mItensImp_Tam.First;
    while not fDMCadPedido.mItensImp_Tam.Eof do
      fDMCadPedido.mItensImp_Tam.Delete;
    fDMCadPedido.mItensImp_Mat.First;
    while not fDMCadPedido.mItensImp_Mat.Eof do
      fDMCadPedido.mItensImp_Mat.Delete;
    fDMCadPedido.mItensImp.Delete;
  end;
  fDMCadPedido.mRotulos.First;
  while not fDMCadPedido.mRotulos.Eof do
  begin
    fDMCadPedido.mRotulos_Prod.First;
    while not fDMCadPedido.mRotulos_Prod.Eof do
    begin
      fDMCadPedido.mRotulos_Tam.First;
      while not fDMCadPedido.mRotulos_Tam.Eof do
        fDMCadPedido.mRotulos_Tam.Delete;
      fDMCadPedido.mRotulos_Prod.Delete;
    end;
    fDMCadPedido.mRotulos.Delete;
  end;
  vFilial := 0;
  if RxDBLookupCombo1.Text <> '' then
    vFilial := RxDBLookupCombo1.KeyValue;
  vImpRot := False;
  fDMCadPedido.vItem_Rotulo := 0;
  fDMCadPedido.cdsPedido_Consulta.First;
  while not fDMCadPedido.cdsPedido_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      if (fDMCadPedido.qParametros_PedCONTROLAR_ROT_IMPRESSO.AsString = 'S') and (fDMCadPedido.cdsPedido_ConsultaROTULO_IMP.AsString = 'S') then
      begin
        if MessageDlg('Pedido ' + fDMCadPedido.cdsPedido_ConsultaPEDIDO_CLIENTE.AsString + ' já impresso rótulo, deseja reimprimir?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        begin
          fDMCadPedido.cdsPedido_Consulta.Next;
          continue;
        end
        else
        if not fnc_senha then
        begin
          fDMCadPedido.cdsPedido_Consulta.Next;
          continue;
        end
      end;

      vImpRot := True;
      prc_Posiciona_Imp;
      //fDMCadPedido.prc_Monta_Itens_Imp(True);
      uCalculo_Pedido.prc_Monta_Itens_Imp(fDMCadPedido,True);

      vFilial := fDMCadPedido.cdsPedido_ConsultaFILIAL.AsInteger;

      if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
      begin
        fDMCadPedido.mItensImp.First;
        while not fDMCadPedido.mItensImp.Eof do
        begin
          if fDMCadPedido.mItensImpImp_Rotulo.AsString = 'S' then
          begin
            vQtd_Caixa := fnc_Busca_Embalagem(fDMCadPedido.mItensImpID_Produto.AsInteger);
            if vQtd_Caixa <= 0 then
            begin
              vErro := True;
              vMsgErro := vMsgErro + #13 + ' Produto ' + fDMCadPedido.mItensImpID_Produto.AsString + '  Sem Embalagem no cadastro';
            end
            else
            if not vErro then
            begin
              vQtdAux    := fDMCadPedido.mItensImpQtd.AsInteger div vQtd_Caixa;
              if fDMCadPedido.mItensImpQtd.AsInteger mod vQtd_Caixa > 0 then
                vQtdAux := vQtdAux + 1;
                //aqui 16/04/2016
              if RadioGroup2.ItemIndex = 0 then
              begin
                fDMCadPedido.mItensImp_Tam.First;
                while not fDMCadPedido.mItensImp_Tam.Eof do
                begin
                  prc_Montar_Rotulos2(0,vQtdAux); //Imprime talão por tamanho
                  fDMCadPedido.mItensImp_Tam.Next;
                end;
              end
              else
                prc_Montar_Rotulos(0,vQtdAux);
            end;
          end;
          fDMCadPedido.mItensImp.Next;
        end;
      end;
    end;
    fDMCadPedido.cdsPedido_Consulta.Next;
  end;

  if vErro then
  begin
    MessageDlg('*** Rótulos não gerados, ' + #13 + vMsgErro, mtInformation, [mbOk], 0);
    exit;
  end;

  if RadioGroup2.ItemIndex = 1 then
  begin
    if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString <> 'S' then
    begin
      fDMCadPedido.mItensImp.IndexFieldNames := 'ID_Produto;Item';
      prc_Limpar_mRotulos;
      fDMCadPedido.mItensImp.First;
      while not fDMCadPedido.mItensImp.Eof do
      begin
        vQtdAux := 0;
        if fDMCadPedido.mItensImpImp_Rotulo.AsString = 'S' then
        begin
          if (fDMCadPedido.mRotulos.IsEmpty) or (fDMCadPedido.mRotulosQtd.AsInteger >= vQtd_Caixa) then
            prc_Inserir_Rotulos
          else
          if fDMCadPedido.mRotulosQtd.AsInteger < vQtd_Caixa then
          begin
            fDMCadPedido.mRotulos.Edit;
            vQtdAux := fDMCadPedido.mRotulosQtd.AsInteger;
          end;
          vQtdAux2 := vQtd_Caixa - vQtdAux;
          while fDMCadPedido.mItensImpQtd.AsInteger > 0 do
          begin
            if (fDMCadPedido.mRotulosQtd.AsInteger >= vQtd_Caixa) then
            begin
              prc_Inserir_Rotulos;
              vQtdAux2 := vQtd_Caixa;
            end;
            if fDMCadPedido.mItensImpQtd.AsInteger <= vQtdAux2 then
              vPerc := StrToFloat(FormatFloat('0.00',0))
            else
              vPerc := StrToFloat(FormatFloat('0.00',(vQtdAux2 / fDMCadPedido.mItensImpQtd.AsInteger) * 100));
            prc_Montar_Rotulos(vPerc);
          end;
        end;
        fDMCadPedido.mItensImp.Next;
      end;
    end;

    if fDMCadPedido.cdsParametrosGERAR_ROTULO_EMB.AsString = 'S' then
    begin
      vQtdAux := 0;
      fDMCadPedido.mRotulos.First;
      while not fDMCadPedido.mRotulos.Eof do
      begin
        vQtdAux := vQtdAux + 1;
        fDMCadPedido.mRotulos.Edit;
        fDMCadPedido.mRotulosNum_Volume.AsInteger   := vQtdAux;
        fDMCadPedido.mRotulosTotal_Volume.AsInteger := fDMCadPedido.mRotulos.RecordCount;
        fDMCadPedido.mRotulos.Post;
        fDMCadPedido.mRotulos.Next;
      end;
    end;
  end;
end;

procedure TfrmGerar_Rotulos.A41Click(Sender: TObject);
var
  vArq: String;
begin
  prc_Controle_Imp;

  if not vImpRot then
    exit;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Rotulo_Grade_A4.fr3';
  if FileExists(vArq) then
  begin
    if fDMCadPedido.qParametros_PedCONTROLAR_ROT_IMPRESSO.AsString = 'S' then
    begin
      fDMCadPedido.mAuxImp.First;
      while not fDMCadPedido.mAuxImp.Eof do
      begin
        if trim(fDMCadPedido.mAuxImpRotulo_Imp.AsString) <> 'S' then
        begin
          fDMCadPedido.prc_Localizar(fDMCadPedido.mAuxImpID_Pedido.AsInteger);
          if not(fDMCadPedido.cdsPedido.IsEmpty) then
          begin
            fDMCadPedido.cdsPedido.Edit;
            fDMCadPedido.cdsPedidoROTULO_IMP.AsString := 'S';
            fDMCadPedido.cdsPedido.Post;
            fDMCadPedido.cdsPedido.ApplyUpdates(0);
          end;
        end;
        fDMCadPedido.mAuxImp.Next;
      end;
      fDMCadPedido.mAuxImp.First;
    end;
    fDMCadPedido.frxReport1.Report.LoadFromFile(vArq);
  end
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMCadPedido.frxReport1.ShowReport;
end;

end.
