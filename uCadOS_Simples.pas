unit UCadOS_Simples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UCBase, StdCtrls,
  UDMCadOrdemServico, Mask, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, RzEdit, RXDBCtrl, RzDBEdit,
  RxLookup, ToolEdit, CurrEdit, DBXpress, NxEdit, dateUtils, rlTypes, strUtils;

type
  TfrmCadOS_Simples = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlPesquisa: TPanel;
    lblCliente: TLabel;
    lblNumNota: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtCliente: TEdit;
    ceOS: TCurrencyEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnConsultar: TNxButton;
    UCControls2: TUCControls;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    btnImprimir: TNxButton;
    Label21: TLabel;
    Label23: TLabel;
    NxDatePicker3: TNxDatePicker;
    NxDatePicker4: TNxDatePicker;
    CheckBox1: TCheckBox;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel3: TPanel;
    btnInserir_Itens: TNxButton;
    btnExcluir_Itens: TNxButton;
    btnAlterar_Itens: TNxButton;
    btnExecutar: TNxButton;
    SMDBGrid2: TSMDBGrid;
    DBMemo1: TDBMemo;
    Panel7: TPanel;
    Label8: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    TabSheet2: TRzTabSheet;
    Panel4: TPanel;
    Label24: TLabel;
    DBMemo2: TDBMemo;
    pnlAgentes: TPanel;
    Label28: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    pnlCliente: TPanel;
    Label2: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit7: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBDateEdit3: TDBDateEdit;
    pnlNota: TPanel;
    Label16: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    DBText2: TDBText;
    Panel6: TPanel;
    Label29: TLabel;
    DBMemo3: TDBMemo;
    SMDBGrid3: TSMDBGrid;
    Panel5: TPanel;
    Shape5: TShape;
    Label31: TLabel;
    Shape6: TShape;
    Label32: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnInserir_ItensClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAlterar_ItensClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Posiciona_OS;
    procedure prc_Habilitar_Campos;
    procedure prc_Consultar(ID: Integer);
    function fnc_Verifica_Registro: Boolean;
    procedure prc_Calcular;
  public
    { Public declarations }
  end;

var
  frmCadOS_Simples: TfrmCadOS_Simples;

implementation

uses rsDBUtils, USel_Pessoa, uUtilPadrao, UEscolhe_Filial, UCadOS_Simples_Item, uRelOSSimples, uRelOSSimplesB, UCadOS_Simples_Exec;

{$R *.dfm}

procedure TfrmCadOS_Simples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOS_Simples.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDMCadOrdemServico := TDMCadOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMCadOrdemServico);

  fDMCadOrdemServico.prc_Abrir_cdsCliente;

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;

  NxDatePicker3.Clear;
  NxDatePicker4.Date := Date + 7;
  btnConsultarClick(Sender);

  pnlAgentes.Visible := fDMCadOrdemServico.cdsOSParametrosLAYOUT_IMPRESSAO.AsString = '2';
end;

procedure TfrmCadOS_Simples.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOS_Simples.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOrdemServico);
end;

procedure TfrmCadOS_Simples.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtCliente.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadOS_Simples.prc_Limpar_Edit_Consulta;
begin
  ceOS.Clear;
  edtCliente.Clear;
  NxDatePicker1.Clear;
  NxDatePicker2.Clear;
end;

procedure TfrmCadOS_Simples.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
      CanClose := False
    else
    begin
      fDMCadOrdemServico.cdsOrdemServico.CancelUpdates;
      CanClose := True;
    end;
  end;
end;

procedure TfrmCadOS_Simples.RxDBLookupCombo3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
  if (Key = Vk_F5) then
  begin
    fDMCadOrdemServico.cdsCliente.Close;
    fDMCadOrdemServico.cdsCliente.Open;
  end;
end;

procedure TfrmCadOS_Simples.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOS_Simples.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    Exit;

  prc_Posiciona_OS;

  if fDMCadOrdemServico.cdsOrdemServico.IsEmpty then
    Exit;

  if (fDMCadOrdemServico.cdsOrdemServicoFATURADO.AsString = 'P') or (fDMCadOrdemServico.cdsOrdemServicoFATURADO.AsString = 'S') then
  begin
    MessageDlg('*** OS já faturada, não pode ser excluida!', mtInformation, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    Exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadOS_Simples.prc_Inserir_Registro;
begin
  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;
  if fDMCadOrdemServico.cdsFilial.RecordCount > 1 then
  begin
    frmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    frmEscolhe_Filial.ShowModal;
    FreeAndNil(frmEscolhe_Filial);
  end
  else
  begin
    fDMCadOrdemServico.cdsFilial.Last;
    vFilial      := fDMCadOrdemServico.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;
  fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  fDMCadOrdemServico.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse] then
    exit;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger    := vFilial;
  fDMCadOrdemServico.cdsOrdemServicoTP_SIMPLES.AsString := 'S';
  fDMCadOrdemServico.cdsOrdemServicoOBS.AsString        := fDMCadOrdemServico.cdsOSParametrosINFO_ADICIONAIS.AsString;
end;

function TfrmCadOS_Simples.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or
        (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger < 1) then
    Exit;
  Result := True;
end;

procedure TfrmCadOS_Simples.prc_Posiciona_OS;
begin
  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);
  fDMCadOrdemServico.cdsOrdemServico_Simples.Close;
  fDMCadOrdemServico.cdsOrdemServico_Simples.Open;
  vFilial      := fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;
end;

procedure TfrmCadOS_Simples.prc_Excluir_Registro;
begin
  fDMCadOrdemServico.prc_Excluir;
end;

procedure TfrmCadOS_Simples.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadOS_Simples.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  pnlCliente.Enabled       := not(pnlCliente.Enabled);
  pnlAgentes.Enabled       := not(pnlAgentes.Enabled);
  btnInserir_Itens.Enabled := not(btnInserir_Itens.Enabled);
  btnAlterar_Itens.Enabled := not(btnAlterar_Itens.Enabled);
  btnExcluir_Itens.Enabled := not(btnExcluir_Itens.Enabled);
  btnExecutar.Enabled      := not(btnExecutar.Enabled);
end;

procedure TfrmCadOS_Simples.prc_Consultar(ID: Integer);
begin
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Close;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := 'NUM_OS';
  fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText     := fDMCadOrdemServico.ctConsulta +
                                                                 ' WHERE OS.TP_SIMPLES = ''S''';
  if ID > 0 then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.ID = ' + IntToStr(ID);

  if not(RxDBLookupCombo2.Text = '') then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  if ceOS.AsInteger > 0 then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.NUM_OS = ' + ceOS.Text;
  if Trim(edtCliente.Text) <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND (OS.SOLICITANTE_NOME LIKE ' + QuotedStr('%'+edtCliente.Text+'%') + ')';
  if NxDatePicker1.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date));
  if NxDatePicker2.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.Date));
  if NxDatePicker3.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker3.Date));
  if NxDatePicker4.Text <> '' then
    fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker4.Date));
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Open;
end;

procedure TfrmCadOS_Simples.btnInserir_ItensClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger <= 0) and
     (fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_NOME.IsNull) then
  begin
    MessageDlg('*** Cliente não foi informado!', mtInformation, [mbOk], 0);
    RxDBLookupCombo3.SetFocus;
    exit;
  end;
  fDMCadOrdemServico.prc_Inserir_Simples;
  frmCadOS_Simples_Item := TfrmCadOS_Simples_Item.Create(self);
  frmCadOS_Simples_Item.fDMCadOrdemServico := fDMCadOrdemServico;
  frmCadOS_Simples_Item.vExecutando        := False;
  frmCadOS_Simples_Item.ShowModal;

  prc_Calcular;
end;

procedure TfrmCadOS_Simples.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse]) or not(fDMCadOrdemServico.cdsOrdemServico.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico.CancelUpdates;

  prc_Habilitar_Campos;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadOS_Simples.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
begin
  if fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger <= 0 then
  begin
    fDMCadOrdemServico.qProximo_Num.Close;
    fDMCadOrdemServico.qProximo_Num.Open;
    fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger := fDMCadOrdemServico.qProximo_NumNUM_OS.AsInteger + 1;
    fDMCadOrdemServico.qProximo_Num.Close;
  end;

  fDMCadOrdemServico.prc_Gravar;
  vIDAux := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  TS_Consulta.TabEnabled := True;
  prc_Habilitar_Campos;

  prc_Consultar(vIDAux);
end;

procedure TfrmCadOS_Simples.btnConfirmarClick(Sender: TObject);
begin
  prc_Calcular;
  prc_Gravar_Registro;
end;

procedure TfrmCadOS_Simples.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDMCadOrdemServico.cdsFuncionario.Close;
    fDMCadOrdemServico.cdsFuncionario.Open;
  end;
end;

procedure TfrmCadOS_Simples.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico.IsEmpty) or
    not(fDMCadOrdemServico.cdsOrdemServico.Active) or
    (fDMCadOrdemServico.cdsOrdemServicoID.AsInteger < 1) then
    exit;

  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;

  if (fDMCadOrdemServico.cdsOrdemServicoFATURADO.AsString = 'S') then
  begin
    MessageDlg('*** OS já faturada, não pode ser alterada!', mtInformation, [mbOk], 0);
    Exit;
  end;

  fDMCadOrdemServico.cdsOrdemServico.Edit;

  if fDMCadOrdemServico.cdsClienteCODIGO.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger then
    fDMCadOrdemServico.cdsCliente.Locate('CODIGO',fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadOrdemServico.cdsFilialID.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger) then
    fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger,[loCaseInsensitive]);

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadOS_Simples.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or
    (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
    (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
    Exit;
  vTipo_Config_Email := 5;

  fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);

  fDMCadOrdemServico.cdsOSImp.Close;
  fDMCadOrdemServico.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOSImp.Open;
  fDMCadOrdemServico.cdsOS_ItemImp.Close;
  fDMCadOrdemServico.sdsOS_ItemImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.cdsOS_ItemImp.Open;

  case fDMCadOrdemServico.cdsOSParametrosLAYOUT_IMPRESSAO.AsInteger of
    1: begin
         fRelOSSimples := TfRelOSSimples.Create(Self);
         fRelOSSimples.fDMCadOrdemServico := fDMCadOrdemServico;

           case AnsiIndexStr(fDMCadOrdemServico.cdsOSParametrosTAMANHO_PAPEL.AsString,['fpA5','fpA4']) of
             0: begin
                  fRelOSSimples.RLReport1.PageSetup.PaperSize   := fpCustom;    //rlTypes
                  fRelOSSimples.RLReport1.PageSetup.PaperWidth  := 210;
                  fRelOSSimples.RLReport1.PageSetup.PaperHeight := 148;
                end;
             1: begin
                  fRelOSSimples.RLReport1.PageSetup.PaperSize   := fpA4;
//                  fRelOSSimples.RLReport1.PageSetup.Orientation := poPortrait;
                end;
           end;

         fRelOSSimples.RLReport1.PreviewModal;
         fRelOSSimples.RLReport1.Free;
         FreeAndNil(fRelOSSimples);
       end;
    2: begin
         if fDMCadOrdemServico.cdsFilialRelatorios.Locate('TIPO',4,([loCaseInsensitive])) then //tipo 4 = ordem serviço
         begin
           vArq := fDMCadOrdemServico.cdsFilialRelatoriosCAMINHO.AsString;
           if FileExists(vArq) then
             fDMCadOrdemServico.frxReport1.Report.LoadFromFile(vArq)
           else
           begin
             ShowMessage('Relatório não localizado! ' + vArq);
             Exit;
           end;
           fDMCadOrdemServico.frxReport1.ShowReport;
         end
         else
           ShowMessage('Relatório não definido no cadastro da empresa (filial)!');
       end;
  end;
end;

procedure TfrmCadOS_Simples.btnAlterar_ItensClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico_Simples.IsEmpty) or
     (fDMCadOrdemServico.cdsOrdemServico_SimplesITEM.AsInteger <= 0) then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_SimplesFATURADO.AsString = 'S' then
  begin
    MessageDlg('*** Item já faturado!', mtInformation, [mbok], 0);
    exit;
  end;

{  if fDMCadOrdemServico.cdsOrdemServico_SimplesDTCONCLUIDO.AsDateTime > 10 then
  begin
    MessageDlg('*** Item não pode ser alterado pois já foi concluído!', mtInformation, [mbok], 0);
    exit;
  end;
}

  fDMCadOrdemServico.cdsOrdemServico_Simples.Edit;

  frmCadOS_Simples_Item := TfrmCadOS_Simples_Item.Create(self);
  frmCadOS_Simples_Item.fDMCadOrdemServico := fDMCadOrdemServico;
  frmCadOS_Simples_Item.vExecutando        := False;
  frmCadOS_Simples_Item.ShowModal;
  FreeAndNil(frmCadOS_Simples_Item);

  prc_Calcular;
end;

procedure TfrmCadOS_Simples.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit, dsInsert]) then
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or
        (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_OS;
    end;
end;

procedure TfrmCadOS_Simples.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.KeyValue > 0 then
  begin
    fDMCadOrdemServico.cdsCliente.Locate('Codigo',RxDBLookupCombo3.KeyValue,[loCaseInsensitive]);
    fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_NOME.AsString := RxDBLookupCombo3.Text;
    fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_FONE.AsString := fDMCadOrdemServico.cdsClienteTELEFONE1.AsString;
  end;
end;

procedure TfrmCadOS_Simples.btnExecutarClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico_Simples.IsEmpty) or
     (fDMCadOrdemServico.cdsOrdemServico_SimplesITEM.AsInteger <= 0) then
    Exit;

  fDmCadOrdemServico.prc_Inserir_Exec;

  frmCadOS_Simples_Exec := TfrmCadOS_Simples_Exec.Create(self);
  frmCadOS_Simples_Exec.fDMCadOrdemServico := fDMCadOrdemServico;
  frmCadOS_Simples_Exec.ShowModal;
  FreeAndNil(frmCadOS_Simples_Exec);
end;

procedure TfrmCadOS_Simples.prc_Calcular;
var
  vTotal: Currency;
begin
  vTotal := 0;
  fDMCadOrdemServico.cdsOrdemServico_Simples.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Simples.Eof do
  begin
    vTotal := vTotal + fDMCadOrdemServico.cdsOrdemServico_SimplesVLR_TOTAL.AsCurrency;
    fDMCadOrdemServico.cdsOrdemServico_Simples.Next;
  end;
  fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsCurrency := vTotal;

  fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsCurrency := fDMCadOrdemServico.cdsOrdemServicoVLR_TOTAL.AsCurrency -
                                                            fDMCadOrdemServico.cdsOrdemServicoVLR_ENTRADA.AsCurrency;
end;

procedure TfrmCadOS_Simples.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F5) then
  begin
    fDMCadOrdemServico.CdsCondPgto.Close;
    fDMCadOrdemServico.CdsCondPgto.Open;
  end;
end;

procedure TfrmCadOS_Simples.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadOrdemServico.CdsCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOS_Simples.DBEdit6Exit(Sender: TObject);
begin
  prc_Calcular;
end;

procedure TfrmCadOS_Simples.btnExcluir_ItensClick(Sender: TObject);
begin
  if (not fDMCadOrdemServico.cdsOrdemServico_Simples.Active) and (fDMCadOrdemServico.cdsOrdemServico_Simples.IsEmpty) or
     (fDMCadOrdemServico.cdsOrdemServico_SimplesITEM.AsInteger < 1) then
    Exit;
  if fDMCadOrdemServico.cdsOrdemServico_SimplesFATURADO.AsString = 'S' then
  begin
    MessageDlg('*** Item já faturado!', mtInformation, [mbok], 0);
    exit;
  end;

{
  if fDMCadOrdemServico.cdsOrdemServico_SimplesDT_CONCLUIDO.AsDateTime > 10 then
  begin
    MessageDlg('*** Item não pode ser excluído pois já foi concluído!', mtInformation, [mbok], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir o item selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
}

  fDMCadOrdemServico.prc_Excluir_Simples;
end;

procedure TfrmCadOS_Simples.RxDBComboBox1Change(Sender: TObject);
begin
  case RxDBComboBox1.ItemIndex of
    0,1: begin
           DBEdit2.Visible := True;
           DBEdit3.Visible := True;
           DBEdit4.Visible := True;
           DBEdit7.Visible := True;

           Label3.Visible  := True;
           Label4.Visible  := True;
           Label5.Visible  := True;
           Label19.Visible := True;
           Label25.Visible := True;
           Label27.Visible := True;
         end;
    2: begin
           DBEdit2.Visible := False;
           DBEdit3.Visible := False;
           DBEdit4.Visible := False;
           DBEdit7.Visible := False;

           Label3.Visible  := False;
           Label4.Visible  := False;
           Label5.Visible  := False;
           Label19.Visible := False;
           Label25.Visible := False;
           Label27.Visible := False;
       end;
  end;
end;

procedure TfrmCadOS_Simples.Button1Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico.Open;
end;

procedure TfrmCadOS_Simples.Button2Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOS_Exec.Post;
  fDMCadOrdemServico.cdsOrdemServico.ApplyUpdates(0);

end;

procedure TfrmCadOS_Simples.SMDBGrid3DblClick(Sender: TObject);
begin
  if not btnConfirmar.Enabled then
    Exit;
  if (fDMCadOrdemServico.cdsOS_Exec.IsEmpty) or
     (fDMCadOrdemServico.cdsOS_ExecITEM_EXEC.AsInteger <= 0) then
    Exit;

  fDMCadOrdemServico.cdsOS_Exec.Edit;
  frmCadOS_Simples_Exec := TfrmCadOS_Simples_Exec.Create(self);
  frmCadOS_Simples_Exec.fDMCadOrdemServico := fDMCadOrdemServico;
  frmCadOS_Simples_Exec.ShowModal;
  FreeAndNil(frmCadOS_Simples_Exec);
end;

procedure TfrmCadOS_Simples.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaFATURADO.AsString = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaFATURADO.AsString = 'P' then
    Background  := clAqua;
end;

procedure TfrmCadOS_Simples.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsOrdemServico_SimplesFATURADO.AsString = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;
end;

end.
