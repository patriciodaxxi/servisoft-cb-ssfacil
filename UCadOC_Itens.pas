unit UCadOC_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, RxDBComb, Mask, UCadProduto, ToolEdit, UCadOC_Itens_Cli, RXDBCtrl, UDMInformar_Tam,
  UInformar_Tam, RzButton, NxCollection, uCadUnidade, SqlExpr;

type
  TfrmCadOC_Itens = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    Panel4: TPanel;
    Label2: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    pnlCod_Barras: TPanel;
    Label20: TLabel;
    Edit1: TEdit;
    Label12: TLabel;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    DBMemo2: TDBMemo;
    Label14: TLabel;
    Shape1: TShape;
    Label30: TLabel;
    lblEstoque: TLabel;
    btnCliente: TRzBitBtn;
    btnGrade: TNxButton;
    dblcTamanho: TRxDBLookupCombo;
    lblTamanho: TLabel;
    pnlCor: TPanel;
    Label1: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label9: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure Panel4Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnClienteClick(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadOC_Itens_Cli: TfrmCadOC_Itens_Cli;
    ffrmInformar_Tam: TfrmInformar_Tam;

    vCodProdutoAnt: Integer;
    vState: String;

    vQtd_Loc : Real;
    vQtd_Sobra_Pend : Real;
    vQtd_Usada : Real;

    procedure prc_Calcular_VlrItens;

    function  fnc_Erro: Boolean;

    function fnc_Verificar_Cod_Barras: Boolean;
    function fnc_Verificar_Produto: Boolean;

    procedure prc_Gravar_Tam;
    procedure prc_Gravar_mItens;
    procedure prc_Abrir_Combinacao;
    procedure prc_Estoque(ID_Produto : Integer);

    function fnc_Busca_Sobra_OC : Real;    

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    fDMInformar_Tam: TDMInformar_Tam;

    procedure prc_Move_Dados_Itens;
  end;

var
  frmCadOC_Itens: TfrmCadOC_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, uCalculo_Pedido, DmdDatabase;

{$R *.dfm}

procedure TfrmCadOC_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Itens.Cancel;
  //Tamanhos
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
    FreeAndNil(fDMInformar_Tam);
  Action := Cafree;
end;

procedure TfrmCadOC_Itens.FormShow(Sender: TObject);
var
  vID_CorAux: Integer;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  //Tamanhos
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    fDMInformar_Tam := TDMInformar_Tam.Create(Self);
    if (fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) and (trim(fDMCadPedido.cdsPedido_ItensTAMANHO.AsString) <> '') then
    begin
      fDMInformar_Tam.prc_Abrir_Produto_Tam(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger);
      lblTamanho.Visible       := True;
      oDBUtils.SetDataSourceProperties(dblcTamanho, fDMInformar_Tam);
      dblcTamanho.Visible := True;
      //RxDBLookupCombo8.LookupSource := fDMInformar_Tam.cdsProduto_Tam;
    end;
  end;

  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
    vState := 'E'
  else
  if fDMCadPedido.cdsPedido_Itens.State in [dsInsert] then
    vState := 'I';

  vCodProdutoAnt := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;

  Label13.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');
  DBDateEdit1.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');

  pnlCod_Barras.Visible := (fDMCadPedido.cdsParametrosUSA_COD_BARRAS.AsString = 'S');
  Label21.Visible       := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit15.Visible      := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  btnCliente.Visible    := (fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S');

  //Tamanho
  if (fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) and (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') then
  begin
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    btnGrade.Visible := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    DBEdit2.ReadOnly := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible));
    if (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and not(lblTamanho.Visible) then
      DBEdit2.Color := clSilver
    else
      DBEdit2.Color := clWindow;
  end;
  //***************

  vID_CorAux := fDMCadPedido.cdsPedido_ItensID_COR.AsInteger;
  if fDMCadPedido.cdsPedido_ItensID_COR.AsInteger > 0 then
  begin
    prc_Abrir_Combinacao;
    fDMCadPedido.cdsCombinacao.Locate('ID_COR_COMBINACAO',vID_CorAux,[loCaseInsensitive]);
    RxDBLookupCombo5.KeyValue := vID_CorAux ;
  end;

  pnlCor.Visible := ((fDMCadPedido.cdsParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'C') or (fDMCadPedido.cdsParametrosINFORMAR_COR_PROD.AsString = 'B'));
  Label9.Visible        := (fDMCadPedido.qParametros_OCUSAR_GERAR_COBRANCA.AsString = 'S');
  RxDBComboBox1.Visible := (fDMCadPedido.qParametros_OCUSAR_GERAR_COBRANCA.AsString = 'S');

  //07/02/2018
  vQtd_Loc := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
  vQtd_Sobra_Pend := StrToFloat(FormatFloat('0.00000',0));
  vQtd_Usada      := StrToFloat(FormatFloat('0.00000',0));
  if (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') and (fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
  begin
    vQtd_Sobra_Pend := fnc_Busca_Sobra_OC;
  end;
  //*****
end;

procedure TfrmCadOC_Itens.Panel2Enter(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger < 1) then
    exit;

  if (fDMCadPedido.cdsPedido_Itens.State in [dsInsert]) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) then
    prc_Move_Dados_Itens;
end;

procedure TfrmCadOC_Itens.prc_Move_Dados_Itens;
var
  vPrecoAux: Real;
begin
  if not fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);

  fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat;
  vPrecoAux := 0;
  if fDMCadPedido.cdsParametrosUSA_PRECO_FORN.AsString = 'S' then
  begin
    fDMCadPedido.qProduto_Forn.Close;
    fDMCadPedido.qProduto_Forn.ParamByName('ID').AsInteger            := fDMCadPedido.cdsProdutoID.AsInteger;
    fDMCadPedido.qProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
    fDMCadPedido.qProduto_Forn.Open;
    if StrToFloat(FormatFloat('0.00000',fDMCadPedido.qProduto_FornPRECO_CUSTO.AsFloat)) > 0 then
      vPrecoAux := StrToFloat(FormatFloat('0.00000',fDMCadPedido.qProduto_FornPRECO_CUSTO.AsFloat));
  end;
  if StrToFloat(FormatFloat('0.00000',vPrecoAux)) <= 0 then
  begin
    if (fDMCadPedido.cdsPedido_ItensID_COR.AsInteger > 0) and (fDMCadPedido.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
      if fDMCadPedido.cdsCombinacao.Locate('ID_PRODUTO;ID_COR_COMBINACAO',VarArrayOf([fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedido_ItensID_COR.AsInteger]),[locaseinsensitive]) then
        vPrecoAux := fDMCadPedido.cdsCombinacaoPRECO_CUSTO.AsFloat;
    if StrToFloat(FormatFloat('0.0000',vPrecoAux)) <= 0 then
      vPrecoAux := fDMCadPedido.cdsProdutoPRECO_CUSTO.AsFloat;
  end;
  fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',vPrecoAux));

  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString := fDMCadPedido.cdsProdutoUNIDADE.AsString;

  btnGrade.Visible    := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'I'));
  lblTamanho.Visible  := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  dblcTamanho.Visible := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  DBEdit2.ReadOnly := ((fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S')) ;
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
  //************
end;

procedure TfrmCadOC_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOC_Itens.prc_Calcular_VlrItens;
var
  vAux: Real;
begin
  vAux := 0;
  if (fDMCadPedido.cdsPedido_ItensQTD.AsFloat > 0) and (fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat > 0) then
    vAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadOC_Itens.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOC_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  vQtdAux : Real;
begin
  if fnc_Erro then
    exit;

   if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;  

  try                                             
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';

    if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

    if (fDMCadPedido.qParametros_OCUSA_NOMEPROD_FORN_OC.AsString = 'S') then
    begin
      fDMCadPedido.qProduto_Forn.Close;
      fDMCadPedido.qProduto_Forn.ParamByName('ID').AsInteger            := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
      fDMCadPedido.qProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
      fDMCadPedido.qProduto_Forn.Open;
      if not(fDMCadPedido.qProduto_Forn.IsEmpty) and (trim(fDMCadPedido.qProduto_FornNOME_MATERIAL_FORN.AsString) <> '') then
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.qProduto_FornNOME_MATERIAL_FORN.AsString
      else
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
    end
    else
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
    fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString  := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
    fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    if (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P') and (fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime > 10) then
      fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime;
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL_ATELIER.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
    fDMCadPedido.cdsPedido_ItensNOME_COR_COMBINACAO.AsString := RxDBLookupCombo5.Text;
    fDMCadPedido.cdsPedido_ItensTIPO_REG.AsString := 'C';

    //09/06/2017
    //07/02/2018 aqui
    if (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat - vQtd_Loc));
      fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat + vQtdAux));
    end;
    //************** aqui
    if (fDMCadPedido.cdsPedidoNUM_ORDPROD.AsInteger <= 0) and (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') then
      fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;
    //*******************

    uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                       fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                       fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

    //Tamanho aqui
    if fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S' then
    begin
      //if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
      if vState = 'E' then
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' TAM. ' + fDMCadPedido.cdsPedido_ItensTAMANHO.AsString
      else
      begin
        prc_Gravar_mItens;
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' TAM. ' + fDMInformar_Tam.vTamanho_Ini;
        fDMCadPedido.cdsPedido_ItensTAMANHO.AsString     := fDMInformar_Tam.vTamanho_Ini;
        fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMInformar_Tam.vQtd_Ini;
        fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMInformar_Tam.vQtd_Ini;
        //09/06/2017
        if (fDMCadPedido.cdsPedidoNUM_ORDPROD.AsInteger <= 0) and (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') then
          fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat := fDMInformar_Tam.vQtd_Ini;
        //*******************

        vEditar := True;
      end;
    end;
    //*****

    fDMCadPedido.cdsPedido_Itens.Post;

    //Tamanho aqui
    if (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') then
      prc_Gravar_Tam;

  except
    on E: exception do
    begin
      vFlagErro := True;  
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;                                                    
  end;

  lblEstoque.Caption := '0';

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      fDMCadPedido.prc_Inserir_Itens;
      if pnlCod_Barras.Visible then
      begin
        Edit1.Clear;
        Edit1.SetFocus;
      end
      else
      begin
        if DBEdit15.Visible then
          DBEdit15.SetFocus
        else
          RxDBLookupCombo4.SetFocus;
      end;
    end;
  end;
end;

function TfrmCadOC_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
  vQtdAux: Real;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  vMsgErro := '';
  if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';

  //07/02/2018
  if (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') then
  begin
    vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat - vQtd_Loc));
    vQtdAux := StrToFloat(FormatFloat('0.00000',vQtd_Sobra_Pend + vQtdAux)); 
    if (StrToFloat(FormatFloat('0.00000',vQtd_Usada)) > 0) or (fDMCadPedido.cdsPedidoNUM_ORDPROD.AsInteger > 0)  then
    begin
      //if StrToFloat(FormatFloat('0.00000',vQtdAux)) < StrToFloat(FormatFloat('0.00000',vQtd_Sobra_Pend)) then
      if StrToFloat(FormatFloat('0.00000',vQtdAux)) < StrToFloat(FormatFloat('0.00000',0)) then
      begin
        //vQtdAux := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat - vQtd_Sobra_Pend));
        //if StrToFloat(FormatFloat('0.00000',vQtdAux)) < StrToFloat(FormatFloat('0.00000',0)) then
          vMsgErro := vMsgErro + #13 + '*** Item vai ficar abaixo do que tem na sobra!';
      end;
    end;
  end;
  //********

  if (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0) then
  begin
    if not fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      vMsgErro := vMsgErro + #13 + '*** Produto não encontrado, ID: ' + fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsString + ' !';
  end;
  if fDMCadPedido.cdsPedido_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  //Aqui tamanho
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadPedido.cdsPedido_ItensTAMANHO.AsString) = '') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and
     //(fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
     (vState = 'E') then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';
  if fDMCadPedido.cdsParametrosUSA_PROJETO_OC.AsString = 'S' then
  begin
    vQtdAux := 0;
    fDMCadPedido.cdsPedido_Cli.First;
    while not fDMCadPedido.cdsPedido_Cli.Eof do
    begin
      vQtdAux := vQtdAux + StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_CliQTD.AsFloat));
      fDMCadPedido.cdsPedido_Cli.Next;
    end;
    if StrToFloat(FormatFloat('0.00000',vQtdAux)) > StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) then
      vMsgErro := vMsgErro + #13 + '*** Quantidade por projeto maior que a quantidade do item!';
  end;
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadOC_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadOC_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadOC_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.Close;
  fDMCadPedido.cdsProduto.Open;
end;

procedure TfrmCadOC_Itens.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton6Click(Sender);
end;

procedure TfrmCadOC_Itens.SpeedButton6Click(Sender: TObject);
begin
  fDMCadPedido.cdsUnidade.Close;
  fDMCadPedido.cdsUnidade.Open;
end;

procedure TfrmCadOC_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender)
  else
  if (Key = Vk_F7) then
    BitBtn1Click(Sender)
  else
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
    frmSel_Produto := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0 then
    begin
      if DBEdit15.Visible then
        DBEdit15.SetFocus
      else
        RxDBLookupCombo4.SetFocus;
    end;
    RxDBLookupCombo4Change(Sender);
  end;
end;

procedure TfrmCadOC_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadOC_Itens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOC_Itens.RxDBLookupCombo4Change(Sender: TObject);
begin
  if trim(RxDBLookupCombo4.Text) <> '' then
    prc_Estoque(RxDBLookupCombo4.KeyValue);
end;

procedure TfrmCadOC_Itens.Panel4Exit(Sender: TObject);
begin
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  prc_Abrir_Combinacao;
end;

procedure TfrmCadOC_Itens.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(Edit1.Text) <> '') then
  begin
    if not fnc_Verificar_Cod_Barras then
      MessageDlg('*** Código de Barras não encontrado!', mtError, [mbOk], 0)
    else
    begin
      fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := fDMCadPedido.cdsProdutoID.AsInteger;
      DBEdit2.SetFocus;
    end;
  end;
end;

function TfrmCadOC_Itens.fnc_Verificar_Cod_Barras: Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('COD_BARRA',Edit1.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadOC_Itens.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit15.Text) <> '') then
  begin
    if not fnc_Verificar_Produto then
      MessageDlg('*** Código do Produto não encontrado!', mtError, [mbOk], 0)
    else
      DBEdit2.SetFocus
  end;
end;

function TfrmCadOC_Itens.fnc_Verificar_Produto: Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('ID',DBEdit15.Text,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadOC_Itens.btnClienteClick(Sender: TObject);
begin
  BitBtn1.Enabled := False;
  BitBtn4.Enabled := False;
  try
    ffrmCadOC_Itens_Cli := TfrmCadOC_Itens_Cli.Create(self);
    ffrmCadOC_Itens_Cli.fDMCadPedido := fDMCadPedido;
    ffrmCadOC_Itens_Cli.ShowModal;
  finally
    FreeAndNil(ffrmCadOC_Itens_Cli);
    BitBtn1.Enabled := True;
    BitBtn4.Enabled := True;
  end;
end;

procedure TfrmCadOC_Itens.btnGradeClick(Sender: TObject);
begin
  BitBtn1.Enabled := False;
  BitBtn4.Enabled := False;
  try
    ffrmInformar_Tam := TfrmInformar_Tam.Create(self);
    ffrmInformar_Tam.fDMInformar_Tam := fDMInformar_Tam;
    ffrmInformar_Tam.fDMInformar_Tam.prc_Le_Produto_Tam(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger);
    ffrmInformar_Tam.ShowModal;
    if fDMInformar_Tam.vGravar = 'S' then
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat := fDMInformar_Tam.vQtd_Grade;
  finally
    FreeAndNil(ffrmInformar_Tam);
    BitBtn1.Enabled := True;
    BitBtn4.Enabled := True;
  end;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOC_Itens.prc_Gravar_Tam;
var
  x: Integer;
  vItemAux: Integer;
begin
  fDMInformar_Tam.mItens.First;
  fDMInformar_Tam.mItens_Mat.First;
  fDMInformar_Tam.mTamanho.First;
  while not fDMInformar_Tam.mTamanho.Eof do
  begin
    if (fDMInformar_Tam.mTamanhoTamanho.AsString <> fDMInformar_Tam.vTamanho_Ini) and (StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mTamanhoQtd.AsFloat)) > 0) then
    begin
      fDMCadPedido.prc_Inserir_Itens;
      for x := 0 to (fDMInformar_Tam.mItens.FieldCount - 1) do
      begin
        try
          if (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Item') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_NCM') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_PIS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_COFINS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Perc_Pis') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Perc_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Pis') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Tipo_Pis') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Tipo_Cofins') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Origem_Prod') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Nome_Produto') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_MovEstoque') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Gerar_Duplicata') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Gerar_Estoque') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Numero_OC') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Numero_OS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Item_Pedido') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Perc_Comissao') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Somar_Transf_Icms') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Somar_VlrTotalProduto') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_OutrasDespesas') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Seguro') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_IcmsFrete') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSOUTRASDESPESAS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_IMPORTACAO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ADUANEIRA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_OPERACAO_NOTA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'FINALIDADE') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'IMP_OC_NOTA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Num_Pedido') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_DUPLICATA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_IMPORTACAO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_REDUCAO_ICMSSUBST') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Nome_Produto_Original') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CONTA_ORCAMENTO_ID') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CENTRO_CUSTO_ID') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTDRESTANTE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTDDEVOLVIDA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NCM') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CODCOFINS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CODPIS') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_ADEVOLVER') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_PACOTE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_PEDIDO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TABCSTICMS') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'MAOOBRA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_PRODUTO_FORN') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_BARRA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_NTE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_NTE') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_NOTAATUAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_DEVOL') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'TIPO_NOTA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'TIPO_REG') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_MVA') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_MOVIMENTO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'POSSUI_VALE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_FCI') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_USADO_FCI') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_OBS_LEI_NCM') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_VALE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_VALE') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_VALE') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_ICMSSUBST_INTERNO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSSUBST_INTERNO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_ICMSSUBST_PROPRIO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSSUBST_PROPRIO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'BASE_ICMSSUBST_PROPRIO') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSDESONERADO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_MOTIVO_DESONERADO')  and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COD_DESONERACAO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_ICMSOPERACAO')       and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_PEDIDO_FUT')  and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_PEDIDO_FUT')        and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_OS') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_OS')                and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ITEM_OS_MAT') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'NUM_OSERVICO')           and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VERSAO_TRIBUTO') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'IBPT_CHAVE')             and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'FONTE_TRIBUTO')          and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO_ESTADUAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO_MUNICIPAL') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS_ESTADUAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS_MUNICIPAL') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_TRIBUTOS_FEDERAL') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_TRIBUTO_FEDERAL')   and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_TaxaCiscomex') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'DIFERENCA_ICMS')         and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'CALCULAR_ST') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'COMPLEMENTO_PROD')       and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Num_Lote_Controle') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'ID_EnqIPI')              and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'Vlr_Outros') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'PERC_PIS_COFINS_SUFRAMA') and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'QTD_TRIB') and
             (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'VLR_UNITARIO_TRIB')       and (fDMInformar_Tam.mItens.Fields[x].FieldName <> 'UNIDADE_TRIB') then
            fDMCadPedido.cdsPedido_Itens.FieldByName(fDMInformar_Tam.mItens.Fields[x].FieldName).AsVariant := fDMInformar_Tam.mItens.Fields[x].Value;
        except
        end;
      end;
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMInformar_Tam.mItensNome_Produto_Original.AsString + ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadPedido.cdsPedido_ItensTAMANHO.AsString     := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadPedido.cdsPedido_ItensTIPO_REG.AsString    := 'C';
      if (fDMCadPedido.qParametros_EstUSA_RESERVA.AsString = 'S') and (fDMCadPedido.cdsPedidoNUM_ORDPROD.AsInteger <= 0) then
        fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat := fDMInformar_Tam.mTamanhoQtd.AsFloat
      else
        fDMCadPedido.cdsPedido_ItensQTD_SOBRA_OC.AsFloat := 0;
      fDMCadPedido.cdsPedido_ItensFATURADO.AsString := 'N';

      uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

      fDMCadPedido.cdsPedido_Itens.Post;

      if fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S' then
      begin
        vItemAux := 0;
        fDMInformar_Tam.mItens_Mat.First;
        while not fDMInformar_Tam.mItens_Mat.Eof do
        begin
          vItemAux := vItemAux + 1;
          fDMCadPedido.cdsPedido_Material.Insert;
          fDMCadPedido.cdsPedido_MaterialID.AsInteger          := fDMCadPedido.cdsPedido_ItensID.AsInteger;
          fDMCadPedido.cdsPedido_MaterialITEM.AsInteger        := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
          fDMCadPedido.cdsPedido_MaterialITEM_MAT.AsInteger    := vItemAux;
          fDMCadPedido.cdsPedido_MaterialID_PRODUTO.AsInteger  := fDMInformar_Tam.mItens_MatID_PRODUTO.AsInteger;
          fDMCadPedido.cdsPedido_MaterialQTD_CONSUMO.AsFloat   := StrToFloat(FormatFloat('0.00000',fDMInformar_Tam.mItens_MatQTD_CONSUMO.AsFloat));
          fDMCadPedido.cdsPedido_MaterialVLR_UNITARIO.AsFloat  := StrToFloat(FormatFloat('0.0000',fDMInformar_Tam.mItens_MatVLR_UNITARIO.AsFloat));
          fDMCadPedido.cdsPedido_MaterialVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',fDMInformar_Tam.mItens_MatVLR_TOTAL.AsFloat));
          fDMCadPedido.cdsPedido_MaterialUNIDADE.AsString      := fDMInformar_Tam.mItens_MatUNIDADE.AsString;
          fDMCadPedido.cdsPedido_MaterialNOME_PRODUTO.AsString := fDMInformar_Tam.mItens_MatNOME_PRODUTO.AsString;
          fDMCadPedido.cdsPedido_Material.Post;
          fDMInformar_Tam.mItens_Mat.Next;
        end;
      end;

      fDMInformar_Tam.mPedido_Cli.First;
      while not fDMInformar_Tam.mPedido_Cli.Eof do
      begin
        fDMCadPedido.cdsPedido_Cli.Insert;
        fDMCadPedido.cdsPedido_CliID.AsInteger              := fDMCadPedido.cdsPedido_ItensID.AsInteger;
        fDMCadPedido.cdsPedido_CliITEM.AsInteger            := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
        fDMCadPedido.cdsPedido_CliID_CENTROCUSTO.AsInteger  := fDMInformar_Tam.mPedido_CliID_CentroCusto.AsInteger;
        fDMCadPedido.cdsPedido_CliNOME_CENTROCUSTO.AsString := fDMInformar_Tam.mPedido_CliNOME_CENTROCUSTO.AsString;
        fDMCadPedido.cdsPedido_CliQTD.AsFloat               := fDMInformar_Tam.mPedido_CliQtd.AsFloat;
        fDMCadPedido.cdsPedido_Cli.Post;
        fDMInformar_Tam.mPedido_Cli.Next;
      end;

    end;
    fDMInformar_Tam.mTamanho.Next;
  end;
end;

procedure TfrmCadOC_Itens.prc_Gravar_mItens;
var
  x: Integer;
begin
  fDMInformar_Tam.mItens.EmptyDataSet;
  fDMInformar_Tam.mPedido_Cli.EmptyDataSet;
  fDMInformar_Tam.mItens_Mat.EmptyDataSet;

  fDMInformar_Tam.mItens.Insert;
  for x := 0 to (fDMCadPedido.cdsPedido_Itens.FieldCount - 1) do
  begin
    try
    if (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Cli') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Tam') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Material') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'sdsPedido_Item_Tipo') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'TIPO_ACESSORIO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'COMPRIMENTO_VOLUME') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_LANCAR_ESTOQUE') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'DTEXPEDICAO') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'DTFATURA') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_FCP') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_UF_DEST') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_PARTILHA') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMS_FCP') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_DEST') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMS_UF_REMET') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'PERC_ICMS_INTER') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_DESCONTO_CALC') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_CONFERIDO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'DTCONFERENCIA') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'HRCONFERENCIA') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'USUARIO_CONF') and
       //(fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_SOBRA_OC') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMSFRETE') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_ICMSFRETE') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'TIPO_SERVICO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'ID_SERVICO_INT') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'NOME_SERVICO_INT') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'ID_OS_SERV') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'NUM_OS_SERV')  and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'ID_SERVICO') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'NUM_NOTA_ENT') and  (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'SERIE_NOTA_ENT') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_CAIXA') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'clVlr_Total_Custo') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'clVlr_Diferenca') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'COD_COR_CLIENTE') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'NOME_COR_CLIENTE') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'TAMANHO_CLIENTE') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'FOTO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'VLR_MATERIAL') and
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'TEMPO') and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'DTBAIXA') then
      fDMInformar_Tam.mItens.FieldByName(fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName).AsVariant := fDMCadPedido.cdsPedido_Itens.Fields[x].Value;
    except
    end;
  end;
  fDMInformar_Tam.mItensNome_Produto_Original.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString;
  fDMInformar_Tam.mItens.Post;

  fDMCadPedido.cdsPedido_Material.First;
  while not fDMCadPedido.cdsPedido_Material.Eof do
  begin
    fDMInformar_Tam.mItens_Mat.Insert;
    for x := 0 to (fDMCadPedido.cdsPedido_Material.FieldCount - 1) do
    begin
      if (fDMCadPedido.cdsPedido_Material.Fields[x].FieldName <> 'ID') and (fDMCadPedido.cdsPedido_Material.Fields[x].FieldName <> 'ITEM') and
         (fDMCadPedido.cdsPedido_Material.Fields[x].FieldName <> 'REFERENCIA') then
        fDMInformar_Tam.mItens_Mat.FieldByName(fDMCadPedido.cdsPedido_Material.Fields[x].FieldName).AsVariant := fDMCadPedido.cdsPedido_Material.Fields[x].Value;
    end;
    fDMInformar_Tam.mItens_Mat.Post;
    fDMCadPedido.cdsPedido_Material.Next;
  end;

  if not fDMCadPedido.cdsPedido_Cli.IsEmpty then
  begin
    fDMCadPedido.cdsPedido_Cli.First;
    while not fDMCadPedido.cdsPedido_Cli.Eof do
    begin
      fDMInformar_Tam.mPedido_Cli.Insert;
      for x := 0 to (fDMCadPedido.cdsPedido_Cli.FieldCount - 1) do
      begin
        fDMInformar_Tam.mPedido_Cli.FieldByName(fDMCadPedido.cdsPedido_Cli.Fields[x].FieldName).AsVariant := fDMCadPedido.cdsPedido_Cli.Fields[x].Value;
      end;
      fDMInformar_Tam.mPedido_Cli.Post;
      fDMCadPedido.cdsPedido_Cli.Next;
    end;
  end;
end;

procedure TfrmCadOC_Itens.prc_Abrir_Combinacao;
begin
  fDMCadPedido.cdsCombinacao.Close;
  fDMCadPedido.sdsCombinacao.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  fDMCadPedido.cdsCombinacao.Open;
end;

procedure TfrmCadOC_Itens.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if trim(RxDBLookupCombo4.Text) <> '' then
    fDMCadPedido.cdsProduto.Locate('ID',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]);
end;

procedure TfrmCadOC_Itens.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if trim(RxDBLookupCombo2.Text) <> '' then
    fDMCadPedido.cdsProduto.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]);
end;

procedure TfrmCadOC_Itens.prc_Estoque(ID_Produto: Integer);
var
  vQtdAux: Real;
  vID_Cor : Integer;
  vID_LocalAux : Integer;
begin
  vQtdAux := 0;
  vID_Cor := 0;
  if trim(RxDBLookupCombo5.Text) <> '' then
    vID_Cor := RxDBLookupCombo5.KeyValue;
  vID_LocalAux := fnc_Verificar_Local(fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
  vQtdAux := fnc_Buscar_Estoque(ID_Produto,vID_LocalAux,vID_Cor);
  lblEstoque.Caption := FormatFloat('0.####',vQtdAux);
end;

function TfrmCadOC_Itens.fnc_Busca_Sobra_OC: Real;
var
  sds: TSQLDataSet;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' SELECT QTD_RESTANTE, QTD_USADA FROM PEDIDO_SOBRA_OC WHERE ID = ' + IntToStr(fDMCadPedido.cdsPedidoID.AsInteger)
                     + '  AND ITEM = ' + IntToStr(fDMCadPedido.cdsPedido_ItensITEM.AsInteger);
    sds.Open;
    Result := StrToFloat(FormatFloat('0.00000',sds.FieldByName('QTD_RESTANTE').AsFloat));
    vQtd_Usada := StrToFloat(FormatFloat('0.00000',sds.FieldByName('QTD_USADA').AsFloat));
  finally
    FreeAndNil(sds);
  end;

end;

end.
