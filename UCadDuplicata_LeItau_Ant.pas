unit UCadDuplicata_LeItau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadDuplicata, StdCtrls, Buttons, Mask,
  ToolEdit, Grids, DBGrids, SMDBGrid, ExcelXP, ComObj, DB;

type
  TfrmCadDuplicata_LeItau = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    StringGrid1: TStringGrid;
    Linha, vContador: Integer;
    function XlsToStringGrid2(AGrid: TStringGrid; AXLSFile: string; WorkSheet: Integer): Boolean;
    procedure prc_Le_Arq_Itau;

  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  frmCadDuplicata_LeItau: TfrmCadDuplicata_LeItau;

implementation

{$R *.dfm}

procedure TfrmCadDuplicata_LeItau.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadDuplicata_LeItau.BitBtn1Click(Sender: TObject);
begin
  if FilenameEdit1.Text = '' then
    exit;
  StringGrid1 := TStringGrid.Create(StringGrid1);
  XlsToStringGrid2(StringGrid1,FilenameEdit1.Text,1);
  prc_Le_Arq_Itau;
  FreeAndNil(StringGrid1);
end;

function TfrmCadDuplicata_LeItau.XlsToStringGrid2(AGrid: TStringGrid;
  AXLSFile: string; WorkSheet: Integer): Boolean;
const
	xlCellTypeLastCell = $0000000B;
var
	XLApp, Sheet: OLEVariant;
	RangeMatrix: Variant;
	x, y, k, r: Integer;
begin
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

procedure TfrmCadDuplicata_LeItau.prc_Le_Arq_Itau;
begin
  fDMCadDuplicata.mLeItau.EmptyDataSet;
  fDMCadDuplicata.mLeItau2.EmptyDataSet;
  Linha     := 0;
  vContador := 0;
  while Linha < StringGrid1.RowCount -1 do
  begin
    Linha := Linha + 1;
    if linha > 0 then
    begin
      fDMCadDuplicata.mLeItau.Insert;
      fDMCadDuplicata.mLeItauID.AsInteger := 0;
      fDMCadDuplicata.mLeItauNumDuplicata.AsString := '';
      fDMCadDuplicata.mLeItauNome_Cliente.AsString := StringGrid1.Cells[0,Linha];
      fDMCadDuplicata.mLeItauValor.AsString        := StringGrid1.Cells[2,Linha];
      fDMCadDuplicata.mLeItauDtVencimento.AsString := StringGrid1.Cells[1,Linha];
      fDMCadDuplicata.mLeItauSeuNumero.AsString := StringGrid1.Cells[5,Linha];
      fDMCadDuplicata.mLeItauNossoNumero.AsString := StringGrid1.Cells[4,Linha];
      fDMCadDuplicata.mLeItauEncontrou.AsString := 'N';
      fDMCadDuplicata.mLeItau.Post;
    end;
  end;
  

end;

procedure TfrmCadDuplicata_LeItau.BitBtn2Click(Sender: TObject);
var
  vNossoNum: String;
  vSeuNum: String;
  vParc: String;
begin
  fDMCadDuplicata.cdsItau.Close;
  fDMCadDuplicata.cdsItau.Open;
  fDMCadDuplicata.cdsItau.First;
  while not fDMCadDuplicata.cdsItau.Eof do
  begin
    vSeuNum := trim(fDMCadDuplicata.cdsItauNUMDUPLICATA.AsString) + fDMCadDuplicata.cdsItauPARCELA.AsString;
    //fDMCadDuplicata.mLeItau.cdsNotaFiscal_Itens.Locate('ID;Item',VarArrayOf([ ,vItemAux]),[locaseinsensitive]);
    if not fDMCadDuplicata.mLeItau.Locate('SeuNumero',vSeuNum,([Locaseinsensitive])) then
    begin
      fDMCadDuplicata.mLeItau2.Insert;
      fDMCadDuplicata.mLeItau2ID.AsInteger := fDMCadDuplicata.cdsItauID.AsInteger;
      fDMCadDuplicata.mLeItau2NumDuplicata.AsString    := fDMCadDuplicata.cdsItauNUMDUPLICATA.AsString + '/' + fDMCadDuplicata.cdsItauPARCELA.AsString;
      fDMCadDuplicata.mLeItau2NossoNumero.AsString     := fDMCadDuplicata.cdsItauNOSSONUMERO.AsString;
      fDMCadDuplicata.mLeItau2NossoNumeroItau.AsString := '';
      fDMCadDuplicata.mLeItau2Diferente.AsString       := 'N';
      fDMCadDuplicata.mLeItau2.Post;
    end
    else
    begin
      vNossoNum := fDMCadDuplicata.mLeItauNossoNumero.AsString;
      delete(vNossoNum,length(vNossoNum),1);
      if vNossoNum <> fDMCadDuplicata.cdsItauNOSSONUMERO.AsString then
      begin
        fDMCadDuplicata.mLeItau2.Insert;
        fDMCadDuplicata.mLeItau2ID.AsInteger := fDMCadDuplicata.cdsItauID.AsInteger;
        fDMCadDuplicata.mLeItau2NumDuplicata.AsString    := fDMCadDuplicata.cdsItauNUMDUPLICATA.AsString + '/' + fDMCadDuplicata.cdsItauPARCELA.AsString;
        fDMCadDuplicata.mLeItau2NossoNumero.AsString     := fDMCadDuplicata.cdsItauNOSSONUMERO.AsString;
        fDMCadDuplicata.mLeItau2NossoNumeroItau.AsString := fDMCadDuplicata.mLeItauNossoNumero.AsString;
        fDMCadDuplicata.mLeItau2Diferente.AsString       := 'S';
        fDMCadDuplicata.mLeItau2.Post;
      end;
    end;
    fDMCadDuplicata.cdsItau.First;
  end;
end;

end.
