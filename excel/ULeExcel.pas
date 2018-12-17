unit ULeExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Grids, Buttons, ExcelXP, ComObj,
  DB, FMTBcd, SMDBGrid, DBGrids, UDMCadPedido,
  ExtCtrls, RzPanel, NxCollection, UDMExcel, UCadPessoa, RxLookup, NxEdit;

type
  TfrmLeExcel = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    btnImp_Exp: TNxButton;
    btnConfirmar: TNxButton;
    Panel2: TPanel;
    gbxCliente: TRzGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SMDBGrid1: TSMDBGrid;
    Label8: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnCancelar: TNxButton;
    Label7: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel4: TPanel;
    Shape1: TShape;
    Label13: TLabel;
    Label14: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    lblFinalidade: TLabel;
    NxComboBox1: TNxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnImp_ExpClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
  private
    StringGrid1: TStringGrid;
    fDMExcel: TDMExcel;
    ffrmCadPessoa: TfrmCadPessoa;
    vID_Cliente: Integer;

    function XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
    function fnc_Verifica_Cliente(CNPJ: String): Boolean;
    procedure prc_Le_StringGrid;
    procedure prc_Importar;
    procedure prc_Exportar;
    procedure prc_Gravar_Pedido;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vID_TabPreco: Integer;
    vNome_Tab_Preco: String;
  end;

var
  frmLeExcel: TfrmLeExcel;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, uCalculo_NotaFiscal,
  uCalculo_Pedido;

{$R *.dfm}

//Terceiro
function TfrmLeExcel.XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
const
	xlCellTypeLastCell = $0000000B;
var
	XLApp, Sheet: OLEVariant;
	RangeMatrix: Variant;
	x, y, k, r: Integer;
begin
  fDMExcel.cdsProduto.Close;
  fDMExcel.cdsProduto.Open;

	Result := False;
	//Cria Excel- OLE Object
	XLApp  := CreateOleObject('Excel.Application');
	try
		//Esconde Excel
		XLApp.Visible:=False;

		//Abre o Workbook
		XLApp.Workbooks.Open(AXLSFile);

		//Setar na planilha desejada
		XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[WorkSheet].Activate;

		// Para saber a dimensão do WorkSheet (o número de linhas e de colunas),
		//selecionamos a última célula não vazia do worksheet
		Sheet :=  XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[WorkSheet];
		Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Select;

    //Pegar o número da última linha
                x:=XLApp.ActiveCell.Row;
    //x:=fDMExcel.cdsProduto.RecordCount;
    //Pegar o número da última coluna
		y:=XLApp.ActiveCell.Column;

		//Seta Stringgrid linha e coluna
		AGrid.RowCount:=x;
		AGrid.ColCount:=y;

		//Associa a variant WorkSheet com a variant do Delphi
		RangeMatrix:=XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;

		//Cria o loop para listar os registros no TStringGrid
		k:=1;
		repeat
		  for r:=1 to y do
		  begin
			 AGrid.Cells[(r - 1),(k - 1)] := RangeMatrix[K, R];

			 //Redimensionar tamanho das colunas do grid dinamicamente
			 If (AGrid.ColWidths[r-1] < (Length(AGrid.Cells[(r - 1),(k - 1)]) * 8)) then
				AGrid.ColWidths[r-1] := Length(AGrid.Cells[(r - 1),(k - 1)]) * 8;

		  end;
		  Inc(k,1);
		until k > x;
		RangeMatrix := Unassigned;
	finally
		//Fecha o Excel
		if not VarIsEmpty(XLApp) then
		   begin
			  XLApp.Quit;
			  XLAPP:=Unassigned;
			  Sheet:=Unassigned;
			  Result:=True;
		   end;
	end;
end;

procedure TfrmLeExcel.prc_Le_StringGrid;
var
  Linha, Coluna: Integer;
  i: Integer;
  vTexto: String;
  vGravar: Boolean;
  vContador: Integer;
  vFinalidadeAux : String;
begin
  vTexto  := '';
  vGravar := False;
  //Gravar Cliente
  Label5.Caption := StringGrid1.Cells[1,1];
  Label6.Caption := StringGrid1.Cells[1,2];
  Label4.Visible := not(fnc_Verifica_Cliente(Label5.Caption));

  //Gravar Representante
  vTexto := StringGrid1.Cells[1,5];
  vTexto := Monta_Numero(vTexto,0);
  if trim(vTexto) <> '' then
  begin
    RxDBLookupCombo3.KeyValue := StrToInt(vTexto);
    fDMExcel.cdsVendedor.Locate('CODIGO',RxDBLookupCombo3.KeyValue,([Locaseinsensitive]));
  end;
  //********
  vFinalidadeAux := 'O';
  case NxComboBox1.ItemIndex of
    0 : vFinalidadeAux := 'C';
    1 : vFinalidadeAux := 'R';
    2 : vFinalidadeAux := 'I';
  end;

  Linha     := 0;
  vContador := 0;
  while Linha < StringGrid1.RowCount -1 do
  begin
    Linha := Linha + 1;
    vTexto:=StringGrid1.Cells[0,Linha];
    if vTexto = '** Grupo' then
      vGravar := True
    else
    if vGravar then
    begin
      vTexto := trim(StringGrid1.Cells[4,Linha]);
      vTexto := Monta_Numero(vTexto,0);
      if (vTexto <> '') and (StrToFloat(vTexto) > 0) then
      begin
        vContador := vContador + 1;
        fDMExcel.mAuxiliar.Insert;
        fDMExcel.mAuxiliarCodigo.AsString     := StringGrid1.Cells[0,Linha];
        fDMExcel.mAuxiliarReferencia.AsString := StringGrid1.Cells[0,Linha];
        fDMExcel.mAuxiliarNome.AsString   := StringGrid1.Cells[1,Linha];
        vTexto                   := trim(StringGrid1.Cells[3,Linha]);
        if copy(vTexto,1,2) ='R$' then
          Delete(vTexto,1,2);
        fDMExcel.mAuxiliarVlr_Unitario.AsFloat := StrToFloat(vTexto);
        vTexto := trim(StringGrid1.Cells[4,Linha]);
        fDMExcel.mAuxiliarQtd.AsFloat := StrToFloat(vTexto);
        fDMExcel.mAuxiliarVlr_Total.AsFloat    := StrToFloat(FormatFloat('0.00',fDMExcel.mAuxiliarQtd.AsFloat * fDMExcel.mAuxiliarVlr_Unitario.AsFloat));
        fDMExcel.mAuxiliarOrigem_Prod.AsString := trim(StringGrid1.Cells[8,Linha]);
        if fDMExcel.mAuxiliarOrigem_Prod.AsString = '2' then
          fDMExcel.mAuxiliarReferencia.AsString := fDMExcel.mAuxiliarReferencia.AsString + ' I'; 

        fDMExcel.qProduto.Close;
        fDMExcel.qProduto.ParamByName('REFERENCIA').AsString := fDMExcel.mAuxiliarReferencia.AsString;
        fDMExcel.qProduto.Open;
        fDMExcel.mAuxiliarExiste_Produto.AsBoolean := not(fDMExcel.qProduto.IsEmpty);
        //04/10/2018
        if fDMExcel.qProdutoID_NCM.AsInteger > 0 then
        begin
          fDMExcel.mAuxiliarID_NCM.AsInteger := fDMExcel.qProdutoID_NCM.AsInteger;
          fDMExcel.mAuxiliarCalc_ST.AsString := fDMExcel.qProdutoGERAR_ST.AsString;
        end;

        if vID_Cliente > 0 then
        begin
          fDMCadPedido.cdsFilial.First;
          if fDMCadPedido.cdsClienteCODIGO.AsInteger <> vID_Cliente then
            fDMCadPedido.cdsCliente.Locate('CODIGO',vID_Cliente,([Locaseinsensitive]));
          if trim(RxDBLookupCombo4.Text) <> '' then
          begin
            if fDMCadPedido.cdsProdutoREFERENCIA.AsString <> fDMExcel.mAuxiliarReferencia.AsString then
              fDMCadPedido.cdsProduto.Locate('REFERENCIA',fDMExcel.mAuxiliarReferencia.AsString,([Locaseinsensitive]));
            uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,RxDBLookupCombo4.KeyValue,vFinalidadeAux);
            if fDMCadPedido.vID_CFOP > 0 then
              fDMExcel.mAuxiliarID_CFOP.AsInteger := fDMCadPedido.vID_CFOP; 
          end;
        end;
        fDMExcel.mAuxiliar.Post;
      end;
    end;
  end;
  Label12.Caption := IntToStr(vContador);
  ShowMessage('*** Final da importação!');
end;

procedure TfrmLeExcel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tag             := 0;
  vID_TabPreco    := 0;
  vNome_Tab_Preco := '';
  FreeAndNil(fDMExcel);
  Action := Cafree;
end;

procedure TfrmLeExcel.Label4Click(Sender: TObject);
begin
  ffrmCadPessoa := TfrmCadPessoa.Create(self);
  ffrmCadPessoa.ShowModal;
  FreeAndNil(ffrmCadPessoa);
  Label4.Visible := not(fnc_Verifica_Cliente(Label5.Caption));
  Label4.Refresh;
end;

function TfrmLeExcel.fnc_Verifica_Cliente(CNPJ: String): Boolean;
begin
  Result      := False;
  vID_Cliente := 0;
  CNPJ := Monta_Numero(cnpj,0);
  if Length(CNPJ) > 11 then
    CNPJ := copy(CNPJ,1,2) + '.' + copy(CNPJ,3,3) + '.' + copy(CNPJ,6,3) + '/' + copy(CNPJ,9,4) + '-' + copy(CNPJ,13,2)
  else
  if Length(CNPJ) > 1 then
    CNPJ := copy(CNPJ,1,3) + '.' + copy(CNPJ,4,3) + '.' + copy(CNPJ,7,3) + '-' + copy(CNPJ,10,2);
  if trim(CNPJ) <> '' then
  begin
    fDMExcel.qCliente.Close;
    fDMExcel.qCliente.ParamByName('CNPJ_CPF').AsString := CNPJ;
    fDMExcel.qCliente.Open;
    vID_Cliente := fDMExcel.qClienteCODIGO.AsInteger;
    Result := (vID_Cliente > 0);


  end;
end;

procedure TfrmLeExcel.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: btnImp_Exp.Caption := 'Importar';
    1: btnImp_Exp.Caption := 'Exportar';
  end;
  Label1.Caption := 'Arquivo para ' + btnImp_Exp.Caption + ':';
  fDMExcel.qParametros.Close;
  fDMExcel.qParametros.Open;
  fDMExcel.cdsVendedor.Close;
  fDMExcel.cdsVendedor.Open;
  if RadioGroup1.ItemIndex = 1 then
    FilenameEdit1.Text := fDMExcel.qParametrosEND_SALVAR_EXCEL_EXP.Value;
  Panel1.Visible       := True;
  btnConfirmar.Enabled := (RadioGroup1.ItemIndex = 0) and (Tag = 99);
  Panel2.Visible       := (RadioGroup1.ItemIndex = 0);
  CheckBox1.Visible    := (RadioGroup1.ItemIndex = 1);
  Label10.Visible      := (RadioGroup1.ItemIndex = 1);
end;

procedure TfrmLeExcel.btnImp_ExpClick(Sender: TObject);
begin
 case RadioGroup1.ItemIndex of
   0: prc_Importar;
   1: prc_Exportar;
 end;
end;

procedure TfrmLeExcel.prc_Exportar;
  var linha, coluna: integer;
  var planilha: variant;
  var valorcampo: string;
  vNome_Grupo: String;
  vFlag: Boolean;
begin
  Screen.Cursor := crHourGlass;

  fDMExcel.cdsProduto.Open;
  fDMExcel.qParametros.Close;
  fDMExcel.qParametros.Open;

  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  //Condiçoes de venda
  planilha.Workbooks[1].WorkSheets[1].Name := 'Condição de Venda';
  Coluna := 1;
  Linha  := 1;
  planilha.cells[linha,coluna] := 'CONDIÇÕES GERAIS DE VENDA:';
  planilha.Range['A1'].font.bold := true; // Negrito
  planilha.Range['A1'].Interior.Color := clYellow;
  planilha.Range['A1'].font.size := 15; // Tamanho da Fonte
  linha := linha + 2;
  planilha.cells[linha,1] := fDMExcel.qParametrosOBS_EXPORTACAO_EXCEL.Value;
  planilha.columns.Autofit;
  ///********

  planilha.Workbooks[1].Sheets.Add;
  planilha.Workbooks[1].WorkSheets[1].Name := 'Produto';

  //Cliente
  Coluna := 1;
  Linha  := 1;
  planilha.cells[linha,2] := 'Dados do Cliente';
  planilha.Range['B1','B1'].font.size := 15; // Tamanho da Fonte
  linha := linha + 1;
  planilha.cells[linha,coluna] := 'CNPJ:';
  planilha.Range['A1','B3'].font.bold := true; // Negrito
  planilha.Range['A1','B3'].Interior.Color := clYellow;
  planilha.Range['A2','B3'].font.size := 13; // Tamanho da Fonte
  Linha := Linha + 1;
  planilha.cells[linha,coluna] := 'Razão Social:';

  //Cliente
  Linha  := Linha + 2;
  planilha.cells[linha,2] := 'Representante:';
  planilha.Range['B5','B5'].font.size := 15; // Tamanho da Fonte
  Linha  := Linha + 1;
  planilha.cells[linha,coluna] := 'Código:';
  Linha  := Linha + 1;
  planilha.cells[linha,coluna] := 'Nome:';
  planilha.Range['A5','B7'].font.bold := true; // Negrito
  planilha.Range['A5','B7'].Interior.Color := clMoneyGreen;
  planilha.Range['A6','B7'].font.size := 13; // Tamanho da Fonte
  Linha := Linha + 1;

  linha := Linha + 2;

  for coluna := 1 to fDMExcel.cdsProduto.FieldCount do
  begin
    if (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'NOME_GRUPO') and (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'COD_GRUPO') and
       (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'ID') then
    begin
      valorcampo := fDMExcel.cdsProduto.Fields[coluna - 1].DisplayLabel;
      planilha.cells[Linha,coluna] := valorcampo;
      planilha.cells[Linha,coluna].font.bold := true; // Negrito
      planilha.cells[Linha,coluna].Interior.Color := clRed;
      planilha.cells[Linha,coluna].font.size := 14; // Tamanho da Fonte
      planilha.cells[Linha,coluna].font.Color := clWhite;
    end;
  end;

  vNome_Grupo := '-Z';
  fDMExcel.cdsProduto.First;
  //while linha <= fDMExcel.cdsProduto.RecordCount - 1 do
  while not fDMExcel.cdsProduto.Eof do
  begin
    vFlag := True;
    if (CheckBox1.Checked) then
    begin
      fDMExcel.qProduto.Close;
      fDMExcel.qProduto.ParamByName('REFERENCIA').AsString := fDMExcel.cdsProdutoREFERENCIA.AsString;
      fDMExcel.qProduto.Open;
      if not fDMExcel.qProduto.IsEmpty then
      begin
        fDMExcel.qTab_Preco.Close;
        fDMExcel.qTab_Preco.ParamByName('ID').AsInteger         := vID_TabPreco;
        fDMExcel.qTab_Preco.ParamByName('ID_PRODUTO').AsInteger := fDMExcel.qProdutoID.AsInteger;
        fDMExcel.qTab_Preco.Open;
        vFlag := not(fDMExcel.qTab_Preco.IsEmpty);
      end
      else
        vFlag := False;
    end;
    if vFlag then
    begin
      linha := Linha + 1;
      if vNome_Grupo <> fDMExcel.cdsProdutoNOME_GRUPO.AsString then
      begin
        for coluna := 1 to fDMExcel.cdsProduto.FieldCount do
        begin
          if fDMExcel.cdsProduto.Fields[coluna - 1].FieldName = 'NOME_GRUPO' then
          begin
            planilha.cells[linha,1] := '** Grupo';
            planilha.cells[linha,1].font.size := 5; // Tamanho da Fonte
            planilha.cells[linha,1].font.Color := clRed;

            planilha.cells[linha,2] := fDMExcel.cdsProduto.Fields[coluna - 1].AsString;
            planilha.cells[linha,2].font.bold := true; // Negrito
            planilha.cells[linha,1].Interior.Color := clRed;
            planilha.cells[linha,2].Interior.Color := clRed;
            planilha.cells[linha,2].font.size := 17; // Tamanho da Fonte
            planilha.cells[linha,2].font.Color := clWhite;
          end;
        end;
        Linha := Linha + 1;
      end;
      for coluna := 1 to fDMExcel.cdsProduto.FieldCount do
      begin
        if (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'NOME_GRUPO') and (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'COD_GRUPO') and
           (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'ID') then
        begin
          valorcampo := fDMExcel.cdsProduto.Fields[coluna - 1].AsString;
          if fDMExcel.cdsProduto.Fields[coluna - 1].FieldName = 'PRECO_VENDA' then
          begin
            if trim(valorcampo) = '' then valorcampo := '0';
            planilha.Cells[linha,coluna].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
            planilha.cells[linha,coluna] := StrToFloat(valorCampo);
          end
          else
          if fDMExcel.cdsProduto.Fields[coluna - 1].FieldName = 'VLR_TOTAL' then
          begin
            planilha.Cells[linha,coluna].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,000##)';
            planilha.Cells[linha,coluna].formula := '=SUM(D'+IntToStr(linha)+'*E'+IntToStr(linha)+')';
          end
          else
            planilha.cells[linha,coluna] := valorCampo;
          planilha.cells[linha,coluna].font.size := 11; // Tamanho da Fonte
        end;
      end;
      vNome_Grupo := fDMExcel.cdsProdutoNOME_GRUPO.AsString;
    end;
    fDMExcel.cdsProduto.Next;
  end;
  {for coluna := 1 to fDMExcel.cdsProduto.FieldCount do
  begin
    if (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'NOME_GRUPO') and (fDMExcel.cdsProduto.Fields[coluna - 1].FieldName <> 'COD_GRUPO') then
    begin
      valorcampo := fDMExcel.cdsProduto.Fields[coluna - 1].DisplayLabel;
      planilha.cells[4,coluna] := valorcampo;
      planilha.cells[4,coluna].font.bold := true; // Negrito
      planilha.cells[4,coluna].Interior.Color := clRed;
      planilha.cells[4,coluna].font.size := 14; // Tamanho da Fonte
      planilha.cells[4,coluna].font.Color := clWhite;
    end;
  end;}
  planilha.columns.Autofit;
  if trim(FilenameEdit1.Text) <> '' then
    //planilha.SaveAs(FilenameEdit1.Text);
    //planilha.SaveToFile(FilenameEdit1.Text+'.XLS' );
   Planilha.ActiveWorkBook.SaveAs(FilenameEdit1.Text+ '_'+ vNome_Tab_Preco +'.XLS' );
  Screen.Cursor := crDefault;
end;

procedure TfrmLeExcel.prc_Importar;
var
  vEnd_Arquivo: String;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Arquivo não foi selecionado!', mtError, [mbOk], 0);
    exit;
  end;
  vEnd_Arquivo := FilenameEdit1.Text;
  if copy(vEnd_Arquivo,1,1) = '"' then
    Delete(vEnd_Arquivo,1,1);
  if copy(vEnd_Arquivo,Length(vEnd_Arquivo),1) = '"' then
    Delete(vEnd_Arquivo,Length(vEnd_Arquivo),1);
  FilenameEdit1.Text := vEnd_Arquivo;
  StringGrid1 := TStringGrid.Create(StringGrid1);
  XlsToStringGrid2(StringGrid1,FilenameEdit1.Text,1);
  prc_Le_StringGrid;
  FreeAndNil(StringGrid1);
end;

procedure TfrmLeExcel.btnConfirmarClick(Sender: TObject);
var
  vErro: String;
begin
  vErro := '';
  if fDMExcel.mAuxiliar.IsEmpty then
    vErro := '*** Não existe produto para gerar pedido!';
  if not fnc_Verifica_Cliente(Label5.Caption) then
    vErro := '*** Cliente não cadastrado!';
  if trim(RxDBLookupCombo1.Text) = '' then
    vErro := '*** CFOP não informada!';
  if trim(vErro) <> '' then
  begin
    MessageDlg(vErro, mtError, [mbOk], 0);
    exit;
  end;
  if (trim(RxDBLookupCombo3.Text) = '') and (MessageDlg('Vendedor não informado, continuar a gravação do pedido?',mtConfirmation,[mbYes,mbNo],0) = mrNo) then
    exit;
  vTipo_Pedido := 'P';
  fDMCadPedido.vFinalidade := 'O';
  case NxComboBox1.ItemIndex of
    0 : fDMCadPedido.vFinalidade := 'C';
    1 : fDMCadPedido.vFinalidade := 'R';
    2 : fDMCadPedido.vFinalidade := 'I';
  end;
  fDMCadPedido.vID_Operacao := 0;
  if RxDBLookupCombo4.Text <> '' then
    fDMCadPedido.vID_Operacao := RxDBLookupCombo4.KeyValue;
  prc_Gravar_Pedido;
  Close;
end;

procedure TfrmLeExcel.prc_Gravar_Pedido;
begin
  fDMCadPedido.mAuxExcel.EmptyDataSet;
  fDMExcel.mAuxiliar.First;
  while not fDMExcel.mAuxiliar.Eof do
  begin
    fDMCadPedido.mAuxExcel.Insert;
    fDMCadPedido.mAuxExcelReferencia.AsString   := fDMExcel.mAuxiliarReferencia.AsString;

    //fDMCadPedido.mAuxExcelCod_Produto.AsInteger := fDMExcel.mAuxiliarCodigo.AsInteger;
    fDMCadPedido.mAuxExcelNome_Produto.AsString := fDMExcel.mAuxiliarNome.AsString;
    fDMCadPedido.mAuxExcelEmbalagem.AsFloat     := StrToFloat(FormatFloat('0.00',fDMExcel.mAuxiliarEmbalagem.AsFloat));
    fDMCadPedido.mAuxExcelQtd.AsFloat           := StrToFloat(FormatFloat('0.000',fDMExcel.mAuxiliarQtd.AsFloat));
    fDMCadPedido.mAuxExcelVlr_Unitario.AsFloat  := StrToFloat(FormatFloat('0.000',fDMExcel.mAuxiliarVlr_Unitario.AsFloat));
    fDMCadPedido.mAuxExcelID_CFOP.AsInteger := fDMExcel.mAuxiliarID_CFOP.AsInteger;
    fDMCadPedido.mAuxExcelCODCFOP.AsString  := fDMExcel.mAuxiliarlkCFOP.AsString;
    if fDMExcel.mAuxiliarID_NCM.AsInteger > 0 then
      fDMCadPedido.mAuxExcelID_NCM.AsInteger  := fDMExcel.mAuxiliarID_NCM.AsInteger;
    fDMCadPedido.mAuxExcel.Post;
    fDMExcel.mAuxiliar.Next;
  end;
  fDMCadPedido.vID_CFOP     := RxDBLookupCombo1.KeyValue;
  if RxDBLookupCombo2.Text <> '' then
    fDMCadPedido.vID_Variacao := RxDBLookupCombo2.KeyValue;
  fDMCadPedido.vID_Cliente  := vID_Cliente;
  if RxDBLookupCombo3.Text <> '' then
    fDMCadPedido.vID_Vendedor := RxDBLookupCombo3.KeyValue
  else
    fDMCadPedido.vID_Vendedor := 0;
end;

procedure TfrmLeExcel.btnCancelarClick(Sender: TObject);
begin
  vTipo_Pedido := '';
  Close;
end;

procedure TfrmLeExcel.FormCreate(Sender: TObject);
begin
  fDMExcel := TDMExcel.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMExcel);
end;

procedure TfrmLeExcel.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMExcel.mAuxiliarExiste_Produto.AsBoolean then
  begin
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;
end;

procedure TfrmLeExcel.FormShow(Sender: TObject);
begin
  if fDMExcel.cdsOperacao_Nota.Locate('ID',1,([Locaseinsensitive])) then
    RxDBLookupCombo4.KeyValue := 1;
end;

end.
