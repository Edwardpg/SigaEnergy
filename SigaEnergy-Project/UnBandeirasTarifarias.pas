unit UnBandeirasTarifarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, UnCadastrar;

type
  TFrmBandeiraTarifaria = class(TForm)
    EditTotalGastokWhCadastrada: TEdit;
    LabelTotalGastokWhCadastrada: TLabel;
    ImageBandeiraVerde: TImage;
    ImageBandeiraAmarela: TImage;
    ImageBandeiraVermelhaFraco: TImage;
    ImageBandeiraVermelhaEscura: TImage;
    GroupBoxTotalBandeira: TGroupBox;
    LabelResultadoCalculado: TLabel;
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
    procedure BtnCalcularClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FAtribuirTotalReais : TFrmCadastrar;
    FValorGastokWhCadstrada: Double;
    FValorInteiro: Integer;
    FResultadoQuebrado: Double;
    FValorTaxaTarifaria: Double;
    FResultadoParcial: string;
    procedure Teste;
    function TrunckWh: Integer;
    function FormulaTarifa: Integer;
  private const
    FValorBandeiraVerde = 0;
    FValorBandeiraAmarela = 1;
    FValorBandeiraVermelhaClara = 3;
    FValorBandeiraVermelhaEscura = 5;
  public
    function CalcularBandeira: string;
  end;

var
  FrmBandeiraTarifaria: TFrmBandeiraTarifaria;

implementation

uses
  UnCalculoBandeiras;

{$R *.dfm}

procedure TFrmBandeiraTarifaria.BtnCalcularClick(Sender: TObject);
begin
  CalcularBandeira;
end;

{ TFrmBandeiraTarifaria }

function TFrmBandeiraTarifaria.CalcularBandeira: string;
var
  CalcularBandeira : TCalcularBandeiras;
  ResultadoCalculadokWh : Double;
  SomaFinal : string;
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
  end;
  if (TrunckWh > 300) and (TrunckWh <= 750) then
  begin
  ImageBandeiraAmarela.Visible := True;
  FValorTaxaTarifaria := (FormulaTarifa * FValorBandeiraAmarela).ToExtended;
  EditBandeiraAmarela.Text := (FormatFloat('0.00', FValorTaxaTarifaria));
  EditResultadoCalculado.Text := CalcularBandeira.CalcularTotalTarifa
  (StrToFloat(EditTotalGastoReaisCadastrado.Text), StrToFloat(EditBandeiraAmarela.Text));
  end;
  if (TrunckWh > 750) and (TrunckWh <= 1400) then
  begin
  ImageBandeiraVermelhaFraco.Visible := True;
  FValorTaxaTarifaria := (FormulaTarifa * FValorBandeiraVermelhaClara).ToExtended;
  EditBandeiraVermelhaClara.Text := (FormatFloat('0.00', FValorTaxaTarifaria));
  EditResultadoCalculado.Text := CalcularBandeira.CalcularTotalTarifa
  (StrToFloat(EditTotalGastoReaisCadastrado.Text), StrToFloat(EditBandeiraVermelhaClara.Text));
  end;
  if (TrunckWh > 1400) then
  begin
  ImageBandeiraVermelhaEscura.Visible := True;
  FValorTaxaTarifaria := (FormulaTarifa * FValorBandeiraVermelhaEscura).ToExtended;
  EditBandeiraVermelhaEscuro.Text := (FormatFloat('0.00', FValorTaxaTarifaria));
  EditResultadoCalculado.Text := CalcularBandeira.CalcularTotalTarifa
  (StrToFloat(EditTotalGastoReaisCadastrado.Text), StrToFloat(EditBandeiraVermelhaEscuro.Text));
  end;
  finally
  CalcularBandeira.Free;
  end;
end;

procedure TFrmBandeiraTarifaria.FormClose(Sender: TObject; var Action:
    TCloseAction);

begin
  Teste;
end;

procedure TFrmBandeiraTarifaria.FormShow(Sender: TObject);
begin
  ImageBandeiraVerde.Visible := False;
  ImageBandeiraAmarela.Visible := False;
  ImageBandeiraVermelhaFraco.Visible := False;
  ImageBandeiraVermelhaEscura.Visible := False;
end;

function TFrmBandeiraTarifaria.FormulaTarifa: Integer;
var
  InteiroParaCurrency : string;
begin
  FValorGastokWhCadstrada := StrToFloat(EditTotalGastokWhCadastrada.Text);
  FResultadoQuebrado := FValorGastokWhCadstrada / 100;
  FValorInteiro := Trunc(FResultadoQuebrado);
  Result := (FValorInteiro);
end;

procedure TFrmBandeiraTarifaria.Teste;
begin
  FrmCadastrar.EditGastoTotalAtribuidoTaxaBandeira.Text := EditResultadoCalculado.Text;
end;

function TFrmBandeiraTarifaria.TrunckWh: Integer;
var
  TotalkWh : Double;
begin
  TotalkWh := StrToFloat(EditTotalGastokWhCadastrada.Text);
  Result := Trunc(TotalkWh);
end;

end.
