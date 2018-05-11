unit UnBandeirasTarifarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons;

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
  private
    { Private declarations }
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
begin
  CalcularBandeira := TCalcularBandeiras.Create;
  try
//    EditBandeiraAmarela.Text := IntToStr(12); assim pega
//  CalcularBandeira.CalcularTarifaBandeiras(StrToFloat(EditTotalGastokWhCadastrada.Text));
  ResultadoCalculadokWh := CalcularBandeira.CalcularTarifaBandeiras(StrToFloat(EditTotalGastokWhCadastrada.Text));
  EditResultadoCalculado.Text := FloatToStr(ResultadoCalculadokWh);

  finally
  CalcularBandeira.Free;
  end;
end;

end.
