unit UnBandeirasTarifarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UnGravarTXT,
  Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TFrmBandeiraTarifaria = class(TForm)
    EditTotalGastokWhCadastrada: TEdit;
    LabelTotalGastokWhCadastrada: TLabel;
    ImageBandeiraVerde: TImage;
    ImageBandeiraAmarela: TImage;
    ImageBandeiraVermelhaFraco: TImage;
    ImageBandeiraVermelhaEscura: TImage;
    GroupBoxTotalBandeira: TGroupBox;
    LabelResultadoBandeiraCor: TLabel;
    EditResultadoCalculado: TEdit;
    GroupBoxBandeiraVerde: TGroupBox;
    EditBandeiraVerde: TEdit;
    LabelBandeiraVerde: TLabel;
    GroupBoxBandeiraAmarela: TGroupBox;
    LabelBandeiraAmarela: TLabel;
    EditBandeiraAmarela: TEdit;
    GroupBoxBandeiraVermelhaClara: TGroupBox;
    LabelBandeiraClara: TLabel;
    EditBandeiraVermelhaClara: TEdit;
    GroupBoxBandeiraVermelhaEscuro: TGroupBox;
    LabelVermelhoEscuro: TLabel;
    EditBandeiraVermelhaEscuro: TEdit;
    GroupBoxDetalhesTotasBandeira: TGroupBox;
    GroupBoxkWh_E_Calcular: TGroupBox;
    EditTotalGastoReaisCadastrado: TEdit;
    LabelTotalGastoReaisCadastrado: TLabel;
    BtnCalcular: TBitBtn;
    BtnSalvarTXT: TBitBtn;
    LbCorBandeira: TLabel;
    LabelResultadoCalculadoRS: TLabel;
    procedure BtnCalcularClick(Sender: TObject);
    procedure BtnSalvarTXTClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FGravarTarifa : TGravar;
    FValorGastokWhCadstrada: Double;
    FValorInteiro: Integer;
    FResultadoQuebrado: Double;
    FValorTaxaTarifaria: Double;
    FBandeira : string;
    procedure AtivarBotaoSalvarTxtTarifa;
    function TrunckWh: Integer;
    function FormulaTarifa: Integer;
  private const
    FValorBandeiraVerde = 0;
    FValorBandeiraAmarela = 1;
    FValorBandeiraVermelhaClara = 3;
    FValorBandeiraVermelhaEscura = 5;
    FPathArquivo = 'D:\Desenvolvimento-Delphi(Edward)\SigaEnergy\ConsultaTXT\ConsultaGasto.txt';
    FErroAoGravar = 'Desculpe mas não foi possivel gravar o arquivo no diretório : ';
  public
    procedure GravarTxtComTarifa;
    function CalcularBandeira: string;
    function DefineParãoSalvaTxtComTarifa: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  FrmBandeiraTarifaria: TFrmBandeiraTarifaria;

implementation

uses
  UnCalculoBandeiras, System.UITypes;

{$R *.dfm}

function TFrmBandeiraTarifaria.DefineParãoSalvaTxtComTarifa: string;
var
 PadrãoSalvarTarifa : string;
begin
  PadrãoSalvarTarifa := 'COM TARIFA BANDEIRA: '+ FBandeira + sLineBreak + 'Gasto em Khw: ' + EditTotalGastokWhCadastrada.Text +
  sLineBreak + 'Gasto em reais (R$): ' + EditTotalGastoReaisCadastrado.Text;
  Result := PadrãoSalvarTarifa;
end;

procedure TFrmBandeiraTarifaria.BtnCalcularClick(Sender: TObject);
begin
  CalcularBandeira;
  AtivarBotaoSalvarTxtTarifa;
end;

{ TFrmBandeiraTarifaria }

function TFrmBandeiraTarifaria.CalcularBandeira: string;
var
  CalcularBandeira : TCalcularBandeiras;
begin
  CalcularBandeira := TCalcularBandeiras.Create;
  try
  if (TrunckWh >= 0) and (TrunckWh <= 300) then
  begin
  ImageBandeiraVerde.Visible := True;
  FValorTaxaTarifaria := (FormulaTarifa * FValorBandeiraVerde).ToExtended;
  EditBandeiraVerde.Text := (FormatFloat('0.00' , FValorTaxaTarifaria));
  EditResultadoCalculado.Text := CalcularBandeira.CalcularTotalTarifa
  (StrToFloat(EditTotalGastoReaisCadastrado.Text),
    StrToFloat(EditBandeiraVerde.Text));
  FBandeira:= 'Verde';
  LbCorBandeira.Caption := FBandeira;
  LbCorBandeira.Font.Color := clGreen;
  end;
  if (TrunckWh > 300) and (TrunckWh <= 750) then
  begin
  ImageBandeiraAmarela.Visible := True;
  FValorTaxaTarifaria := (FormulaTarifa * FValorBandeiraAmarela).ToExtended;
  EditBandeiraAmarela.Text := (FormatFloat('0.00', FValorTaxaTarifaria));
  EditResultadoCalculado.Text := CalcularBandeira.CalcularTotalTarifa
  (StrToFloat(EditTotalGastoReaisCadastrado.Text), StrToFloat(EditBandeiraAmarela.Text));
  FBandeira:= 'Amarela';
  LbCorBandeira.Caption := FBandeira;
  LbCorBandeira.Font.Color := clYellow;
  end;
  if (TrunckWh > 750) and (TrunckWh <= 1400) then
  begin
  ImageBandeiraVermelhaFraco.Visible := True;
  FValorTaxaTarifaria := (FormulaTarifa * FValorBandeiraVermelhaClara).ToExtended;
  EditBandeiraVermelhaClara.Text := (FormatFloat('0.00', FValorTaxaTarifaria));
  EditResultadoCalculado.Text := CalcularBandeira.CalcularTotalTarifa
  (StrToFloat(EditTotalGastoReaisCadastrado.Text), StrToFloat(EditBandeiraVermelhaClara.Text));
  FBandeira:= 'Vermelha - Patamar I';
  LbCorBandeira.Caption := FBandeira;
  LbCorBandeira.Font.Color := clMaroon;
  end;
  if (TrunckWh > 1400) then
  begin
  ImageBandeiraVermelhaEscura.Visible := True;
  FValorTaxaTarifaria := (FormulaTarifa * FValorBandeiraVermelhaEscura).ToExtended;
  EditBandeiraVermelhaEscuro.Text := (FormatFloat('0.00', FValorTaxaTarifaria));
  EditResultadoCalculado.Text := CalcularBandeira.CalcularTotalTarifa
  (StrToFloat(EditTotalGastoReaisCadastrado.Text), StrToFloat(EditBandeiraVermelhaEscuro.Text));
  FBandeira:= 'Vermelha - Patamar II';
  LbCorBandeira.Caption := FBandeira;
  LbCorBandeira.Font.Color := clRed;
  end;
  finally
  CalcularBandeira.Free;
  end;
end;

constructor TFrmBandeiraTarifaria.Create(AOwner: TComponent);
begin
  inherited;
  FGravarTarifa := TGravar.Create;
end;

destructor TFrmBandeiraTarifaria.Destroy;
begin
  FGravarTarifa.Free;
  inherited;
end;

procedure TFrmBandeiraTarifaria.AtivarBotaoSalvarTxtTarifa;
begin
  if BtnSalvarTXT.Enabled = False then
    BtnSalvarTXT.Enabled := True;
end;

procedure TFrmBandeiraTarifaria.BtnSalvarTXTClick(Sender: TObject);
begin
  GravarTxtComTarifa;
end;

procedure TFrmBandeiraTarifaria.FormShow(Sender: TObject);
begin
  ImageBandeiraVerde.Visible := False;
  ImageBandeiraAmarela.Visible := False;
  ImageBandeiraVermelhaFraco.Visible := False;
  ImageBandeiraVermelhaEscura.Visible := False;
end;

function TFrmBandeiraTarifaria.FormulaTarifa: Integer;
begin
  FValorGastokWhCadstrada := StrToFloat(EditTotalGastokWhCadastrada.Text);
  FResultadoQuebrado := FValorGastokWhCadstrada / 100;
  FValorInteiro := Trunc(FResultadoQuebrado);
  Result := (FValorInteiro);
end;

procedure TFrmBandeiraTarifaria.GravarTxtComTarifa;
begin
  if (EditResultadoCalculado.Text <> '') and (EditResultadoCalculado.Text <> IntToStr(0)) then
  FGravarTarifa.GravarTXT(FPathArquivo, DefineParãoSalvaTxtComTarifa)
  else
  MessageDlg((FErroAoGravar + FPathArquivo), mtError, mbOKCancel, 1);
end;

function TFrmBandeiraTarifaria.TrunckWh: Integer;
var
  TotalkWh : Double;
begin
  TotalkWh := StrToFloat(EditTotalGastokWhCadastrada.Text);
  Result := Trunc(TotalkWh);
end;

end.
