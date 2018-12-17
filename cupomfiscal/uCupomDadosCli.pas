unit uCupomDadosCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, rsDBUtils,
  uDmCupomFiscal, NxCollection, ExtCtrls, RxDBComb, RxLookup, DB;

type
  TfrmCupomDadosCli = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Panel1: TPanel;
    btConfirmar: TNxButton;
    brCancelar: TNxButton;
    Label4: TLabel;
    DBMemo2: TDBMemo;
    Label78: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label89: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure brCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure RxDBComboBox2Exit(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  frmCupomDadosCli: TfrmCupomDadosCli;

implementation

{$R *.dfm}

procedure TfrmCupomDadosCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCupomDadosCli.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCupomFiscal);
  if not fDmCupomFiscal.cdsCidade.Active then
  begin
    fDmCupomFiscal.cdsCidade.Close;
    fDmCupomFiscal.sdsCidade.ParamByName('UF').AsString := fDmCupomFiscal.cdsFilialUF.AsString;
    fDmCupomFiscal.cdsCidade.Open;
  end;

  if fDmCupomFiscal.cdsCupomFiscal_Cli.IsEmpty then
    fDmCupomFiscal.cdsCupomFiscal_Cli.Insert
  else
    fDmCupomFiscal.cdsCupomFiscal_Cli.Edit;
  fDmCupomFiscal.cdsCupomFiscal_CliTIPO_CONTRIBUINTE.AsInteger := 0;
end;

procedure TfrmCupomDadosCli.brCancelarClick(Sender: TObject);
begin
  if fDmCupomFiscal.cdsCupomFiscal_Cli.State in [dsEdit] then
    fDmCupomFiscal.cdsCupomFiscal_Cli.Cancel
  else
    fDmCupomFiscal.cdsCupomFiscal_Cli.CancelUpdates;
  Close;
end;

procedure TfrmCupomDadosCli.btConfirmarClick(Sender: TObject);
begin
  if (trim(fDmCupomFiscal.cdsCupomFiscal_CliENDERECO.AsString) <> '') and ((fDmCupomFiscal.cdsCupomFiscal_CliID_CIDADE.AsInteger <= 0) or
    (trim(fDmCupomFiscal.cdsCupomFiscal_CliBAIRRO.AsString) = '') or (trim(fDmCupomFiscal.cdsCupomFiscal_CliCEP.AsString) = '')
    or (trim(fDmCupomFiscal.cdsCupomFiscal_CliNUM_END.AsString) = ''))  then
  begin
    MessageDlg('*** Não foi informado o Nº Endereço, Bairro, Cidade ou CEP!', mtInformation, [mbOk], 0);
    exit;
  end;   
  if (fDmCupomFiscal.cdsCupomFiscalTIPO_ATENDIMENTO.AsInteger = 4) and (fDmCupomFiscal.cdsCupomFiscalID_TRANSPORTADORA.AsInteger <= 0) then
  begin
    MessageDlg('*** Quando for entrega a domicílio é preciso informar o transportador!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDmCupomFiscal.cdsCupomFiscal_Cli.Post;
  Close;
end;

procedure TfrmCupomDadosCli.RxDBComboBox2Exit(Sender: TObject);
begin
  if (RxDBComboBox2.ItemIndex = 1) and (fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger <>  fDmCupomFiscal.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) then
  begin
    if fDmCupomFiscal.cdsPessoa.Locate('CODIGO',fDmCupomFiscal.cdsCupomFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]) then
    begin
      if trim(fDmCupomFiscal.cdsPessoaENDERECO_ENT.AsString) <> '' then
      begin
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := 'End: ' + fDmCupomFiscal.cdsPessoaENDERECO_ENT.AsString
                                                                + ', ' + fDmCupomFiscal.cdsPessoaNUM_END_ENT.AsString;
        if trim(fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END_ENT.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString +
                                                                    ' - ' + fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END_ENT.AsString;
        if trim(fDmCupomFiscal.cdsPessoaBAIRRO_ENT.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString + ' -Bai: ' +
                                                                    fDmCupomFiscal.cdsPessoaBAIRRO_ENT.AsString;
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString +
                                                                  ' -CEP: ' + fDmCupomFiscal.cdsPessoaCEP_ENT.AsString +
                                                                  ' - ' + fDmCupomFiscal.cdsPessoaCIDADE_ENT.AsString +
                                                                  '/' + fDmCupomFiscal.cdsPessoaUF_ENT.AsString;
      end
      else
      begin
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := 'End: ' + fDmCupomFiscal.cdsPessoaENDERECO.AsString +
                                                                  ', ' + fDmCupomFiscal.cdsPessoaNUM_END.AsString;
        if trim(fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString
                                                                  + ' - ' + fDmCupomFiscal.cdsPessoaCOMPLEMENTO_END.AsString;
        if trim(fDmCupomFiscal.cdsPessoaBAIRRO.AsString) <> '' then
          fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString + ' -Bai: ' +
                                                                    fDmCupomFiscal.cdsPessoaBAIRRO.AsString;
        fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString := fDmCupomFiscal.cdsCupomFiscalCLIENTE_ENDERECO.AsString +
                                                                  ' -CEP: ' + fDmCupomFiscal.cdsPessoaCEP.AsString +
                                                                  ' - ' + fDmCupomFiscal.cdsPessoaCIDADE.AsString + '/' +
                                                                  fDmCupomFiscal.cdsPessoaUF.AsString;
      end;
    end;
  end;
end;

procedure TfrmCupomDadosCli.DBMemo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key = #13) or (Key = #10)) then
    Key := ' ';
end;

end.


