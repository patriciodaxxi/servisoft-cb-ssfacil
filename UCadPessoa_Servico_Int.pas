unit UCadPessoa_Servico_Int;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadPessoa, ExtCtrls, StdCtrls,
  Mask, DBCtrls, RxLookup, Buttons, ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid, DB;

  //Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxDBComb,
  //RxLookup, db, Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadPessoa, UNFe_ConsultaCadastro,


type
  TfrmCadPessoa_Servico_Int = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    ComboBox1: TComboBox;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    fDMCadPessoa: TDMCadPessoa;         
  end;

var
  frmCadPessoa_Servico_Int: TfrmCadPessoa_Servico_Int;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadPessoa_Servico_Int.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPessoa_Servico_Int.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
end;

procedure TfrmCadPessoa_Servico_Int.BitBtn1Click(Sender: TObject);
var
  vSoma_Diminuir, vCalc_INSS: String;
  vCalc_ISSQN, vCalc_PISCOFINS, vCalc_CSLL, vCalc_IR: String;
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Serviço não informado', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadPessoa.cdsPessoa_Servico_Int.Locate('ID_SERVICO_INT',RxDBLookupCombo1.KeyValue,([Locaseinsensitive])) then
  begin
    MessageDlg('*** Serviço já lançado', mtError, [mbOk], 0);
    exit;
  end;

  try
    case ComboBox1.ItemIndex of
      0: vSoma_Diminuir := 'S';
      1: vSoma_Diminuir := 'D';
    end;
    if CheckBox1.Checked then
      vCalc_INSS := 'S'
    else
      vCalc_INSS := 'N';

    if CheckBox2.Checked then
      vCalc_ISSQN := 'S'
    else
      vCalc_ISSQN := 'N';

    if CheckBox3.Checked then
      vCalc_PISCOFINS := 'S'
    else
      vCalc_PISCOFINS := 'N';

    if CheckBox4.Checked then
      vCalc_CSLL := 'S'
    else
      vCalc_CSLL := 'N';

    if CheckBox5.Checked then
      vCalc_IR := 'S'
    else
      vCalc_IR := 'N';

    fDMCadPessoa.prc_Gravar_Pessoa_Servico_Int(RxDBLookupCombo1.KeyValue,vSoma_Diminuir,vCalc_INSS,vCalc_ISSQN,vCalc_PISCOFINS,vCalc_CSLL,vCalc_IR,CurrencyEdit1.Value);
    RxDBLookupCombo1.ClearValue;
    RxDBLookupCombo1.SetFocus;
  except
    on e: Exception do
      ShowMessage('*** Erro ao gravar o serviço no cliente: ' + #13 + e.Message);
  end;
end;

procedure TfrmCadPessoa_Servico_Int.BitBtn3Click(Sender: TObject);
begin
  if fDMCadPessoa.cdsPessoa_Servico_Int.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o serviço selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPessoa.cdsPessoa_Servico_Int.Delete;
end;

end.
