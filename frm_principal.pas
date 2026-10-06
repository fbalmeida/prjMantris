unit frm_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, System.IniFiles,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, RLReport, Vcl.DBGrids;

type
  Tfrm_mantris = class(TForm)
    Label1: TLabel;
    edt_nome_completo: TEdit;
    edt_cargo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edt_cliente: TEdit;
    edt_unidade: TEdit;
    Label4: TLabel;
    edt_cod_autorizacao_pagamento: TEdit;
    Label5: TLabel;
    edt_numero_crm: TEdit;
    label6: TLabel;
    edt_mes_servico: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edt_empresa_tomadora: TEdit;
    btn_salvar: TButton;
    btn_relatorio: TButton;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    RLReport: TRLReport;
    RLBand1: TRLBand;
    ClientDataSetdata: TStringField;
    ClientDataSetquantidade_horas: TStringField;
    ClientDataSethorario_prestacao_servico: TStringField;
    ClientDataSetvalor_hora: TCurrencyField;
    ClientDataSettotal_data: TCurrencyField;
    DBGrid1: TDBGrid;
    RLBand2: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    rlLabelNome: TRLLabel;
    rlLabelCliente: TRLLabel;
    rlLabelCodAutorizacaoPagto: TRLLabel;
    rlLabelMesPrestacaoServico: TRLLabel;
    rlLabelCargo: TRLLabel;
    rlLabelNumeroCRM: TRLLabel;
    rlLabelUnidade: TRLLabel;
    rlLabelEmpresaTomadora: TRLLabel;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLPanel1: TRLPanel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    procedure SaveToIni;
    procedure FormCreate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_relatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mantris: Tfrm_mantris;

implementation

{$R *.dfm}

procedure Tfrm_mantris.SaveToIni;
var
  Ini: TIniFile;
  IniPath: string;
begin
  IniPath := ChangeFileExt(ParamStr(0), '.ini');

   Ini := TIniFile.Create(IniPath);
  try
    Ini.WriteString('Settings', 'Nome', edt_nome_completo.Text);
    Ini.WriteString('Settings', 'Cargo', edt_cargo.Text);
    Ini.WriteString('Settings', 'Cliente', edt_cliente.Text);
    Ini.WriteString('Settings', 'Unidade', edt_unidade.Text);
    Ini.WriteString('Settings', 'CodAutorizacao', edt_cod_autorizacao_pagamento.Text);
    Ini.WriteString('Settings', 'NumCRM', edt_numero_crm.Text);
    Ini.WriteString('Settings', 'MesServico', edt_mes_servico.Text);
    Ini.WriteString('Settings', 'EmpresaTomadora', edt_empresa_tomadora.Text);
  finally
    Ini.Free;
  end;
end;

procedure Tfrm_mantris.btn_relatorioClick(Sender: TObject);

begin
  if ClientDataSet.State in [dsEdit, dsInsert] then
    ClientDataSet.Post;
  ClientDataSet.First;

  rlLabelNome.Caption                := rlLabelNome.Caption + ' ' + edt_nome_completo.Text;
  rlLabelCliente.Caption             := rlLabelCliente.Caption + ' ' + edt_cliente.Text;
  rlLabelCodAutorizacaoPagto.Caption := rlLabelCodAutorizacaoPagto.Caption + ' ' + edt_cod_autorizacao_pagamento.Text;
  rlLabelMesPrestacaoServico.Caption := rlLabelMesPrestacaoServico.Caption + ' ' + edt_mes_servico.Text;

  rlLabelCargo.Caption                := rlLabelCargo.Caption + ' ' + edt_cargo.Text;
  rlLabelUnidade.Caption              := rlLabelUnidade.Caption + ' ' + edt_unidade.Text;
  rlLabelNumeroCRM.Caption            := rlLabelNumeroCRM.Caption + ' ' + edt_numero_crm.Text;
  rlLabelEmpresaTomadora.Caption      := rlLabelEmpresaTomadora.Caption + ' ' + edt_empresa_tomadora.Text;


  RLReport.PreviewModal;


  rlLabelNome.Caption                := 'NOME COMPLETO PROFISSIONAL:  ';
  rlLabelCliente.Caption             := 'CLIENTE: ';
  rlLabelCodAutorizacaoPagto.Caption := 'CÓD. AUTORIZAÇÃO PAGAMENTO:';
  rlLabelMesPrestacaoServico.Caption := 'MÊS PRESTAÇÃO SERVIÇO: ';

  rlLabelCargo.Caption                := 'CARGO: ';
  rlLabelUnidade.Caption              := 'UNIDADE (CIDADE E UF): ';
  rlLabelNumeroCRM.Caption            := 'NÚMERO CONSELHO:';
  rlLabelEmpresaTomadora.Caption      := 'EMPRESA TOMADORA:';
end;

procedure Tfrm_mantris.btn_salvarClick(Sender: TObject);
begin
  SaveToIni;
  ClientDataSet.SaveToFile('dados.cds', dfBinary);
  ShowMessage('Dados Salvos com Sucesso!');
end;

procedure Tfrm_mantris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Deseja Salvar os dados antes de fechar?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ClientDataSet.SaveToFile('dados.cds', dfBinary);
    ShowMessage('Salvando dados...');
    SaveToIni;
  end;
end;

procedure Tfrm_mantris.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
  IniPath: string;
begin
  IniPath := ChangeFileExt(ParamStr(0), '.ini');

  Ini := TIniFile.Create(IniPath);
  try
    edt_nome_completo.Text             := Ini.ReadString('Settings', 'Nome', '');
    edt_cargo.Text                     := Ini.ReadString('Settings', 'Cargo', '');
    edt_cliente.Text                   := Ini.ReadString('Settings', 'Cliente', '');
    edt_unidade.Text                   := Ini.ReadString('Settings', 'Unidade', '');
    edt_cod_autorizacao_pagamento.Text := Ini.ReadString('Settings', 'CodAutorizacao', '');
    edt_numero_crm.Text                := Ini.ReadString('Settings', 'NumCRM', '');
    edt_mes_servico.Text               := Ini.ReadString('Settings', 'MesServico', '');
    edt_empresa_tomadora.Text          := Ini.ReadString('Settings', 'EmpresaTomadora', '');
  finally
    Ini.Free;
  end;

  ClientDataSet.CreateDataSet;
  ClientDataSet.Append;
  ClientDataSet.Post;

  if FileExists('dados.cds')  then
    ClientDataSet.LoadFromFile('dados.cds');
end;

end.
