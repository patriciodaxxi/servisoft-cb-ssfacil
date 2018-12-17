unit uCupomParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, RxDBComb, Mask, DBCtrls,
  db, Buttons, ExtCtrls, uDmCupomFiscal, rsDBUtils, RxLookup, ComCtrls, IniFiles, uUtilPadrao, ToolEdit,uDmParametros,
  Grids, DBGrids, StrUtils;

type
  TfCupomParametros = class(TForm)
    Panel3: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label31: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label37: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label38: TLabel;
    RxDBComboBox21: TRxDBComboBox;
    Label22: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    Label23: TLabel;
    RxDBComboBox11: TRxDBComboBox;
    Label6: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    Label34: TLabel;
    RxDBComboBox18: TRxDBComboBox;
    Label35: TLabel;
    RxDBComboBox19: TRxDBComboBox;
    Label32: TLabel;
    RxDBComboBox16: TRxDBComboBox;
    Label29: TLabel;
    RxDBComboBox15: TRxDBComboBox;
    RxDBComboBox14: TRxDBComboBox;
    Label28: TLabel;
    GroupBox4: TGroupBox;
    Label36: TLabel;
    RxDBComboBox20: TRxDBComboBox;
    Label33: TLabel;
    RxDBComboBox17: TRxDBComboBox;
    Label25: TLabel;
    RxDBComboBox13: TRxDBComboBox;
    Label24: TLabel;
    RxDBComboBox12: TRxDBComboBox;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label40: TLabel;
    RxDBComboBox23: TRxDBComboBox;
    Label41: TLabel;
    RxDBComboBox24: TRxDBComboBox;
    Label42: TLabel;
    RxDBComboBox25: TRxDBComboBox;
    DBEdit6: TDBEdit;
    GroupBox5: TGroupBox;
    Label45: TLabel;
    RxDBComboBox26: TRxDBComboBox;
    Label46: TLabel;
    RxDBComboBox27: TRxDBComboBox;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label47: TLabel;
    RxDBComboBox28: TRxDBComboBox;
    Label48: TLabel;
    RxDBComboBox29: TRxDBComboBox;
    GroupBox7: TGroupBox;
    Label39: TLabel;
    RxDBComboBox22: TRxDBComboBox;
    Label43: TLabel;
    DBEdit5: TDBEdit;
    Label26: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    Label44: TLabel;
    Label76: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label19: TLabel;
    Label27: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label49: TLabel;
    RxDBComboBox30: TRxDBComboBox;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit9: TDBEdit;
    Label52: TLabel;
    RxDBComboBox31: TRxDBComboBox;
    Label53: TLabel;
    RxDBComboBox32: TRxDBComboBox;
    Label54: TLabel;
    ComboBox4: TComboBox;
    lbl1: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label56: TLabel;
    RxDBComboBox33: TRxDBComboBox;
    Label57: TLabel;
    DBEdit10: TDBEdit;
    Label58: TLabel;
    RxDBComboBox34: TRxDBComboBox;
    Label59: TLabel;
    RxDBComboBox35: TRxDBComboBox;
    DBEdit11: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label62: TLabel;
    RxDBComboBox36: TRxDBComboBox;
    TS_Numeracao: TTabSheet;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Label63: TLabel;
    RxDBComboBox37: TRxDBComboBox;
    GroupBox8: TGroupBox;
    Label20: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label55: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    Label30: TLabel;
    Label21: TLabel;
    DirectoryEdit2: TDirectoryEdit;
    DirectoryEdit3: TDirectoryEdit;
    Label64: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label65: TLabel;
    RxDBComboBox38: TRxDBComboBox;
    Label66: TLabel;
    RxDBComboBox39: TRxDBComboBox;
    Label67: TLabel;
    Label68: TLabel;
    RxDBComboBox40: TRxDBComboBox;
    Label69: TLabel;
    DBEdit12: TDBEdit;
    Label70: TLabel;
    RxDBComboBox41: TRxDBComboBox;
    BitBtn1: TBitBtn;
    GroupBox9: TGroupBox;
    Label71: TLabel;
    RxDBComboBox42: TRxDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RxDBComboBox5Change(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBComboBox31Exit(Sender: TObject);
    procedure RxDBComboBox24Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDmCupomFiscal: TDmCupomFiscal;
    procedure prcHabilita;
    procedure gravarIni(Tabela, Campo, Valor: String);
    function lerIni(Tabela, Campo: String): String;
  public
    fDmParametros: TDmParametros;
  published
    property Action;
    { Public declarations }
  end;

var
  fCupomParametros: TfCupomParametros;

implementation

{$R *.dfm}

procedure TfCupomParametros.FormShow(Sender: TObject);
begin
  fDmCupomFiscal := TdmCupomFiscal.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  fDmParametros := TdmParametros.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmParametros);

  fDmCupomFiscal.cdsParametros.Open;
  fDmCupomFiscal.cdsCupomParametros.Open;
  fDmCupomFiscal.cdsCupomTerminal.Open;
  fDmCupomFiscal.cdsSitTribCF.Open;
  fDmCupomFiscal.cdsContas.Open;
  fDmCupomFiscal.cdsLocalEstoque.Open;
  fDmParametros.cdsSequencial.Open;

  if lerIni('IMPRESSORA','Filial') <> '' then
    RxDBLookupCombo8.KeyValue := StrToInt(lerIni('IMPRESSORA','Filial'));
  Edit1.Text             := lerIni('IMPRESSORA','Porta');
  Edit2.Text             := lerIni('IMPRESSORA','Boud');
  RxDBLookupCombo2.Value := lerIni('IMPRESSORA','Terminal');
  if lerIni('IMPRESSORA','IdEstoque') <> '' then
    RxDBLookupCombo7.KeyValue := StrToInt(lerIni('IMPRESSORA','IdEstoque'));
  if lerIni('IMPRESSORA','Gaveta') = 'N' then
    ComboBox4.ItemIndex := 0
  else
    ComboBox4.ItemIndex := 1;

  if fDmCupomFiscal.cdsCupomParametrosUSA_BALANCA.AsString = 'S' then
  begin
    ComboBox1.Text := lerIni('BALANCA','Balanca');
    case AnsiIndexStr(ComboBox1.Text,['URANO','ACBR']) of
    0: begin //urano
         vBalanca       := 'URANO';
         ComboBox3.Text := lerIni('BALANCA','Porta');
         vPortaBalanca  := ComboBox3.Text;
       end;
    1: begin //acbr (toledo)
         vBalanca       := 'ACBR';
         ComboBox3.Text := lerIni('BALANCA','Porta');
         vPortaBalanca  := ComboBox3.Text;
       end;
    end;
  end;
  if RxDBLookupCombo2.KeyValue < 1 then
    RxDBLookupCombo2.KeyValue := 1;

  DirectoryEdit2.Text := fDmCupomFiscal.cdsParametrosENDXMLNFCE.Value;
  DirectoryEdit3.Text := fDmCupomFiscal.cdsParametrosENDPDFNFCE.Value;
  PageControl1.ActivePageIndex := 0;
  TS_Numeracao.TabVisible := not TS_Numeracao.TabVisible;
end;

procedure TfCupomParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDmCupomFiscal.cdsParametros.Close;
  fDmCupomFiscal.cdsCupomParametros.Close;
  fDmCupomFiscal.cdsCupomTerminal.Close;
  fDmCupomFiscal.cdsSitTribCF.Close;
  fDmCupomFiscal.cdsContas.Close;
  fDmCupomFiscal.cdsProduto.Close;

  Action := caFree;
end;

procedure TfCupomParametros.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCupomFiscal);
end;

procedure TfCupomParametros.btnAlterarClick(Sender: TObject);
begin
  prcHabilita;
  fDmCupomFiscal.cdsParametros.Edit;
  if fDmCupomFiscal.cdsCupomParametros.RecordCount = 0 then
  begin
    fDmCupomFiscal.cdsCupomParametros.Insert;
    fDmCupomFiscal.cdsCupomParametrosID.AsInteger := fDmCupomFiscal.cdsParametrosID.AsInteger;
  end
  else
    fDmCupomFiscal.cdsCupomParametros.Edit;
  fDmParametros.cdsSequencial.Edit;
end;

procedure TfCupomParametros.btnConfirmarClick(Sender: TObject);
var
  vMsg: String;
begin
  vMsg := '';
  if RxDBLookupCombo8.Text = '' then
    vMsg := vMsg + ('Filial deve ser definida!') + #13;
  if Edit1.Text = '' then
    vMsg := vMsg + 'Porta deve ser definida!' + #13;
  if RxDBLookupCombo2.Text = '' then
    vMsg := vMsg + ('Terminal deve ser definido!') + #13;
  if RxDBLookupCombo7.Text = '' then
    vMsg := vMsg + ('Local do estoque deve ser definido!') + #13;
  if (fDmCupomFiscal.cdsCupomParametrosMOSTRAR_CONDPGTO.AsString <> 'S') and
     (fDmCupomFiscal.cdsCupomParametrosID_CONDPGTO_PADRAO.AsInteger <= 0) then
    vMsg := vMsg + ('Quando a opção for para não mostrar a condição é obrigatório informar a cond. padrão!');
  if vMsg <> '' then
  begin
    ShowMessage(vMsg);
    Exit;
  end;
  if fDmCupomFiscal.cdsCupomParametrosEXIGE_CAMPO_DESCONTO.AsString = 'S' then
    if fDmCupomFiscal.cdsCupomParametrosUSA_DESCONTO.AsString <> 'I' then
    begin
      ShowMessage('Quando campo de desconto é obrigatório, tipo de desconto deve ser por item!');
      PageControl1.ActivePageIndex := 1;
      RxDBComboBox28.SetFocus;
      Exit;
    end;

  RxDBComboBox31Exit(Sender); //Vendeddor

  if (fDmCupomFiscal.cdsCupomParametrosALTURA_SALTO_LINHA.IsNull) then
    fDmCupomFiscal.cdsCupomParametrosALTURA_SALTO_LINHA.AsInteger := 25;

  vPorta := Edit1.Text;

  if fDmCupomFiscal.cdsParametros.State in [dsEdit] then
  begin
    fDmCupomFiscal.cdsParametrosENDXMLNFCE.Value := DirectoryEdit2.Text;
    fDmCupomFiscal.cdsParametrosENDPDFNFCE.Value := DirectoryEdit3.Text;

    fDmCupomFiscal.cdsParametros.Post;
    fDmCupomFiscal.cdsParametros.ApplyUpdates(0);
  end;
  if fDmCupomFiscal.cdsCupomParametros.State in [dsEdit] then
  begin
    fDmCupomFiscal.cdsCupomParametros.Post;
    fDmCupomFiscal.cdsCupomParametros.ApplyUpdates(0);
  end;

///////////////////////////////
  gravarIni('ACBR','Nome',RxDBComboBox5.Text);

  if RxDBComboBox5.ItemIndex = 5 then
    gravarIni('ACBR','NaoFiscal','S')
  else
    gravarIni('ACBR','NaoFiscal','N');

  gravarIni('IMPRESSORA','Filial',RxDBLookupCombo8.Value);
  gravarIni('IMPRESSORA','Impressora',RxDBComboBox5.Text);
  gravarIni('IMPRESSORA','Porta',Edit1.Text);
  gravarIni('IMPRESSORA','Boud',Edit2.Text);
  gravarIni('IMPRESSORA','Terminal',RxDBLookupCombo2.Value);
  gravarIni('IMPRESSORA','IdEstoque',RxDBLookupCombo7.Value);
  case ComboBox4.ItemIndex of
   -1: begin
         gravarIni('IMPRESSORA','Gaveta','N');
         vUsaGaveta := False;
       end;
    0: begin
         gravarIni('IMPRESSORA','Gaveta','N');
         vUsaGaveta := False;
       end;
    1: begin
         gravarIni('IMPRESSORA','Gaveta','S');
         vUsaGaveta := True;                                 
       end;
  end;
  vFilial   := RxDBLookupCombo8.KeyValue;
  vTerminal := RxDBLookupCombo2.KeyValue;

////////////////////////////////
  gravarIni('BALANCA','Balanca',ComboBox1.Text);
  gravarIni('BALANCA','Modelo',ComboBox2.Text);
  gravarIni('BALANCA','Porta',ComboBox3.Text);
  if fDmParametros.cdsSequencial.State in [dsEdit, dsInsert] then
  begin
    fDmParametros.cdsSequencial.Post;
    fDmParametros.cdsSequencial.ApplyUpdates(0);
  end;
  prcHabilita;
end;

procedure TfCupomParametros.btnCancelarClick(Sender: TObject);
begin
  fDmCupomFiscal.cdsParametros.Cancel;
  fDmCupomFiscal.cdsCupomParametros.Cancel;

  prcHabilita;
end;

procedure TfCupomParametros.prcHabilita;
begin
  btnAlterar.Enabled   := not btnAlterar.Enabled;
  btnCancelar.Enabled  := not btnCancelar.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  Panel1.Enabled       := not Panel1.Enabled;
  GroupBox1.Enabled    := not GroupBox1.Enabled;
  GroupBox2.Enabled    := not GroupBox2.Enabled;
  GroupBox3.Enabled    := not GroupBox3.Enabled;
end;

procedure TfCupomParametros.RxDBComboBox5Change(Sender: TObject);
begin
  fDmCupomFiscal.vTipoCupom := 'NFC';
  if fDmCupomFiscal.cdsParametrosUSA_NFCE.AsString = 'N' then
    fDmCupomFiscal.vTipoCupom := 'CNF';
//  GroupBox6.Enabled := RxDBComboBox5.ItemIndex = 1; //fDmCupomFiscal.cdsParametrosIMPRESSORA_FISCAL.AsInteger = 4;
end;

procedure TfCupomParametros.gravarIni(Tabela, Campo, Valor: String);
var
  ServerIni: TIniFile;
begin
  ServerIni := TIniFile.Create('c:\$Servisoft\Impressora.ini');
  ServerIni.WriteString(Tabela,Campo,Valor);
  ServerIni.UpdateFile;
  ServerIni.Free;
end;

function TfCupomParametros.lerIni(Tabela, Campo: String): String;
var
  ServerIni: TIniFile;
begin
//  ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'c:\$Servisoft\Impressora.ini');
  ServerIni := TIniFile.Create('c:\$Servisoft\Impressora.ini');
  result    := ServerIni.ReadString(Tabela,Campo,'');
  ServerIni.Free;
end;

procedure TfCupomParametros.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsContas.IndexFieldNames := 'NOME';
end;

procedure TfCupomParametros.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDmCupomFiscal.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfCupomParametros.RxDBComboBox31Exit(Sender: TObject);
begin
  if (fDmCupomFiscal.cdsCupomParametrosEXIGE_VENDEDOR.AsString = 'S') and
     (fDmCupomFiscal.cdsParametrosUSA_VENDEDOR.AsString = 'N') then
    ShowMessage('O SSFácil está configurado para não usar vendedor!' + #13);
  RxDBComboBox32.Visible := (fDmCupomFiscal.cdsCupomParametrosEXIGE_VENDEDOR.AsString = 'S');
  Label53.Visible        := RxDBComboBox32.Visible;
  RxDBComboBox41.Visible := (fDmCupomFiscal.cdsCupomParametrosEXIGE_VENDEDOR.AsString = 'S');
  Label70.Visible        := RxDBComboBox41.Visible;
end;

procedure TfCupomParametros.RxDBComboBox24Change(Sender: TObject);
begin
  RxDBComboBox35.Visible := fDmCupomFiscal.cdsCupomParametrosUSA_CARNE.AsString = 'S';
  DBEdit11.Visible       := RxDBComboBox35.Visible;
  Label60.Visible        := RxDBComboBox11.Visible;
  Label59.Visible        := RxDBComboBox11.Visible;
end;

procedure TfCupomParametros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    TS_Numeracao.TabVisible := not TS_Numeracao.TabVisible;
end;

procedure TfCupomParametros.BitBtn1Click(Sender: TObject);
begin
  ShowMessage('Campo *Senha* da tabela *Pessoa_Fisica*!');
end;

end.
