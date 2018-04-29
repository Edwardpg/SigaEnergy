unit UnCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TFrmCadastrar = class(TForm)
    GroupBoxAparelhos: TGroupBox;
    SpinEditArCondicionadoQtd: TSpinEdit;
    SpinEditVentiladorQtd: TSpinEdit;
    SpinEditTvQtd: TSpinEdit;
    SpinEditGeladeiraQtd: TSpinEdit;
    SpinEditChuveiroQtd: TSpinEdit;
    SpinEditSecadorCabeloQtd: TSpinEdit;
    SpinEditComputadorQtd: TSpinEdit;
    SpinEditFerroPassarQtd: TSpinEdit;
    SpinEditLampadaQtd: TSpinEdit;
    SpinEditMicroondasQtd: TSpinEdit;
    LabelArCondicionado: TLabel;
    LabelVentilador: TLabel;
    LabelTv: TLabel;
    LabelGeladeira: TLabel;
    LabelChuveiro: TLabel;
    LabelSecadorCabelo: TLabel;
    LabelComputador: TLabel;
    LabelFerroPassar: TLabel;
    LabelLampada: TLabel;
    LabelMicroondas: TLabel;
    EditArCondicionadoCusto: TEdit;
    EditVentiladorCusto: TEdit;
    EditTvCusto: TEdit;
    Edit14: TEdit;
    EditChuveiroCusto: TEdit;
    EditSecadorCabeloCusto: TEdit;
    EditComputadorCusto: TEdit;
    EditFerroPassarCusto: TEdit;
    EditlLampadaCusto: TEdit;
    EditMicroondasCusto: TEdit;
    EditArCondicionadokWh: TEdit;
    EditVentiladorkWh: TEdit;
    EditTvkWh: TEdit;
    EditGeladeirakWh: TEdit;
    EditChuveirokWh: TEdit;
    EditkWh: TEdit;
    EditComputadorkWh: TEdit;
    EditFerroPassarkWh: TEdit;
    EditlLampadakWh: TEdit;
    EditMicroondaskWh: TEdit;
    SpinEditArCondicionadoPoten: TSpinEdit;
    SpinEditVentiladorPoten: TSpinEdit;
    SpinEditTvPoten: TSpinEdit;
    SpinEditGeladeiraPoten: TSpinEdit;
    SpinEditChuveiroPoten: TSpinEdit;
    SpinEditSecadorCabeloPoten: TSpinEdit;
    SpinEditComputadorPoten: TSpinEdit;
    SpinEditFerroPassarPoten: TSpinEdit;
    SpinEditlLampadaPoten: TSpinEdit;
    SpinEditMicroondasPoten: TSpinEdit;
    LabelPotencia: TLabel;
    LabelTempoUsoHoraOuDia: TLabel;
    LabelQtd: TLabel;
    LabelkWh: TLabel;
    LabelCusto: TLabel;
    SpinEditArCondicionadoTempoHD: TSpinEdit;
    SpinEditVentiladorTempHD: TSpinEdit;
    SpinEditTvTempHD: TSpinEdit;
    SpinEditGeladeiraTempHD: TSpinEdit;
    SpinEditChuveiroTempHD: TSpinEdit;
    SpinEditSecadorCabeloTempHD: TSpinEdit;
    SpinEditComputadorTempHD: TSpinEdit;
    SpinEditFerroPassarTempHD: TSpinEdit;
    SpinEditlLampadaTempHD: TSpinEdit;
    SpinEditMicroondasTempHD: TSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrar: TFrmCadastrar;

implementation

{$R *.dfm}

end.
