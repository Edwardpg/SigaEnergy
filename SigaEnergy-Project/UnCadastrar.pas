unit UnCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Buttons, UnCalcularABS, UnGravarTXT, UnSingleton,
  UnCalculos, System.UITypes, UnEvalidationError, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

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
    EditGeladeiraCusto: TEdit;
    EditChuveiroCusto: TEdit;
    EditSecadorCabeloCusto: TEdit;
    EditComputadorCusto: TEdit;
    EditFerroPassarCusto: TEdit;
    EditLampadaCusto: TEdit;
    EditMicroondasCusto: TEdit;
    SpinEditArCondicionadoPoten: TSpinEdit;
    SpinEditVentiladorPoten: TSpinEdit;
    SpinEditTvPoten: TSpinEdit;
    SpinEditGeladeiraPoten: TSpinEdit;
    SpinEditChuveiroPoten: TSpinEdit;
    SpinEditSecadorCabeloPoten: TSpinEdit;
    SpinEditComputadorPoten: TSpinEdit;
    SpinEditFerroPassarPoten: TSpinEdit;
    SpinEditLampadaPoten: TSpinEdit;
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
    SpinEditLampadaTempHD: TSpinEdit;
    SpinEditMicroondasTempHD: TSpinEdit;
    RadioGroupTpSimulacao: TRadioGroup;
    RadioBtnDiario: TRadioButton;
    RadioBtnMensal: TRadioButton;
    RadioBtnPersonalizado: TRadioButton;
    BtnCalcular: TBitBtn;
    SpinEditArCondicionadoComodos: TSpinEdit;
    SpinEditVentiladorComodos: TSpinEdit;
    SpinEditTvComodos: TSpinEdit;
    SpinEditGeladeiraComodos: TSpinEdit;
    SpinEditChuveiroComodos: TSpinEdit;
    SpinEditSecadorCabeloComodos: TSpinEdit;
    SpinEditComputadorComodos: TSpinEdit;
    SpinEditFerroPassarComodos: TSpinEdit;
    SpinEditLampadaComodos: TSpinEdit;
    SpinEditMicroondasComodos: TSpinEdit;
    LabelComodosQtd: TLabel;
    GroupBoxFuncionalidades: TGroupBox;
    BtnSalvarTXT: TBitBtn;
    BtnBandeiraTarifaria: TBitBtn;
    EditTotalCusto: TEdit;
    GroupBoxGastoTotal: TGroupBox;
    EditTotalkWh: TEdit;
    LabelTotalGasto: TLabel;
    BtnConsultar: TBitBtn;
    GroupBoxResultadoConsulta: TGroupBox;
    LabelValorFinalConsulta: TLabel;
    LabelValorRS: TLabel;
    LabelkWhTotal: TLabel;
    EditArCondicionadokWh: TEdit;
    EditVentiladorkWh: TEdit;
    EditTvkWh: TEdit;
    EditGeladeirakWh: TEdit;
    EditChuveirokWh: TEdit;
    EditSecadorDeCabelokWh: TEdit;
    EditComputadorkWh: TEdit;
    EditFerroDePassarkWh: TEdit;
    EditLampadakWh: TEdit;
    EditMicroondaskWh: TEdit;
    MemoConsulta: TMemo;
    GroupBoxAoAbrir: TGroupBox;
    Label1: TLabel;
    ImageLogoInicial: TImage;
    procedure BtnBandeiraTarifariaClick(Sender: TObject);
    procedure RadioBtnDiarioClick(Sender: TObject);
    procedure RadioBtnMensalClick(Sender: TObject);
    procedure RadioBtnPersonalizadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnSalvarTXTClick(Sender: TObject);
  private
    FCalcularGasto : TCalculo;
    FGravar : TGravar;
    FQtdHora : Integer;
    FComodos : Integer;
    FQuantidade: Integer;
  public
    procedure AtribuirTempoDiario24H;
    procedure AtribuirTempoMensa710H;
    procedure AtribuirTempoPersonalizado;
    procedure DesabilitarAlterarTempo;
    procedure AtivarAlterarTempo;
    procedure AtivarGroupBoxAparelhos;
    procedure DesativarGropoAparelhos;
    procedure SetarDefaultValorPotencia;
    procedure DesabilitarAlterarPotencia;
    procedure DesabilitarAlterarkWh;
    procedure LimparCampos;
    procedure CriarFormConsultarBandeira;
    procedure AtivaBotoes;
    procedure DesativaBotoes;
    procedure DesativarGroupBoxAoAbrir;
    procedure NegritoTipoSimulacao;
    function CalcularGasto: string;
    function DefineParãoSalvaTXT: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private const
    FQuantidadeInvalida = 'Por favor digite uma quantidade válida !';
    FNaoPermitirConsultaBandeira = 'Desculpa mas para efetuar uma consulta de bandeira Tarifarias' +
    'é necessário ' + ' efetuar uma simulação de gasto antes';
    FPathArquivo = 'D:\Desenvolvimento-Delphi(Edward)\SigaEnergy\ConsultaTXT\ConsultaGasto.txt';
    FErroAoGravar = 'Desculpe mas não foi possivel gravar o arquivo no diretório : ';
    procedure ConsultarTXT;
    procedure GravarTxt;
  end;

var
  FrmCadastrar: TFrmCadastrar;
  Singleton: TSingleton;

implementation

{$R *.dfm}

uses
 UnBandeirasTarifarias ;

{ TFrmCadastrar }

procedure TFrmCadastrar.AtivaBotoes;
begin
  BtnCalcular.Enabled := True;
  BtnSalvarTXT.Enabled := True;
  BtnBandeiraTarifaria.Enabled := True;
  BtnConsultar.Enabled := True;
end;

procedure TFrmCadastrar.AtivarAlterarTempo;
begin
  SpinEditArCondicionadoTempoHD.ReadOnly := False;
  SpinEditVentiladorTempHD.ReadOnly := False;
  SpinEditTvTempHD.ReadOnly := False;
  SpinEditGeladeiraTempHD.ReadOnly := False;
  SpinEditChuveiroTempHD.ReadOnly := False;
  SpinEditSecadorCabeloTempHD.ReadOnly := False;
  SpinEditComputadorTempHD.ReadOnly := False;
  SpinEditFerroPassarTempHD.ReadOnly := False;
  SpinEditLampadaTempHD.ReadOnly := False;
  SpinEditMicroondasTempHD.ReadOnly := False;
end;

procedure TFrmCadastrar.AtivarGroupBoxAparelhos;
begin
  GroupBoxAparelhos.Enabled := True;
end;

procedure TFrmCadastrar.AtribuirTempoDiario24H;
begin
  FQtdHora := 24;
  SpinEditArCondicionadoTempoHD.Value := FQtdHora;
  SpinEditVentiladorTempHD.Value := FQtdHora;
  SpinEditTvTempHD.Value := FQtdHora;
  SpinEditGeladeiraTempHD.Value := FQtdHora;
  SpinEditChuveiroTempHD.Value := FQtdHora;
  SpinEditSecadorCabeloTempHD.Value := FQtdHora;
  SpinEditComputadorTempHD.Value := FQtdHora;
  SpinEditFerroPassarTempHD.Value := FQtdHora;
  SpinEditLampadaTempHD.Value := FQtdHora;
  SpinEditMicroondasTempHD.Value:= FQtdHora;
  BtnCalcular.Caption := 'Cálculo'#13'Diário';
end;

procedure TFrmCadastrar.AtribuirTempoMensa710H;
begin
  FQtdHora := 710; // Média entre: 24H (Hora por Dia) * 31 quantidade(Dias)
  SpinEditArCondicionadoTempoHD.Value := FQtdHora;
  SpinEditVentiladorTempHD.Value := FQtdHora;
  SpinEditTvTempHD.Value := FQtdHora;
  SpinEditGeladeiraTempHD.Value := FQtdHora;
  SpinEditChuveiroTempHD.Value := FQtdHora;
  SpinEditSecadorCabeloTempHD.Value := FQtdHora;
  SpinEditComputadorTempHD.Value := FQtdHora;
  SpinEditFerroPassarTempHD.Value := FQtdHora;
  SpinEditLampadaTempHD.Value := FQtdHora;
  SpinEditMicroondasTempHD.Value:= FQtdHora;
  BtnCalcular.Caption := 'Cálculo'#13'Mensal';
end;

procedure TFrmCadastrar.AtribuirTempoPersonalizado;
begin
  FQtdHora := 0;
  SpinEditArCondicionadoTempoHD.Value := FQtdHora;
  SpinEditVentiladorTempHD.Value := FQtdHora;
  SpinEditTvTempHD.Value := FQtdHora;
  SpinEditGeladeiraTempHD.Value := FQtdHora;
  SpinEditChuveiroTempHD.Value := FQtdHora;
  SpinEditSecadorCabeloTempHD.Value := FQtdHora;
  SpinEditComputadorTempHD.Value := FQtdHora;
  SpinEditFerroPassarTempHD.Value := FQtdHora;
  SpinEditLampadaTempHD.Value := FQtdHora;
  SpinEditMicroondasTempHD.Value:= FQtdHora;
  BtnCalcular.Caption := 'Cálculo'#13'Personalizado';
end;

procedure TFrmCadastrar.BtnBandeiraTarifariaClick(Sender: TObject);
begin
  CriarFormConsultarBandeira;
end;

procedure TFrmCadastrar.BtnCalcularClick(Sender: TObject);
begin
  if RadioBtnDiario.Checked then
  begin
   CalcularGasto;
  end;
  if RadioBtnMensal.Checked then
  begin
   CalcularGasto;
  end;
  if RadioBtnPersonalizado.Checked then
  begin
    CalcularGasto;
  end;
end;

procedure TFrmCadastrar.BtnSalvarTXTClick(Sender: TObject);
begin
  GravarTxt;
end;

function TFrmCadastrar.CalcularGasto: string;
var
  GastoArCondicionadokWh, GastoEmDinheiroArCondicionado :string;
  GastoVentiladorkWh, GastoEmDinheiroVentilador: string;
  GastoTvkWh, GastoEmDinheiroTv: string;
  GastoGeladeirakWh, GastoEmDinheiroGeladeira: string;
  GastoChuveirokWh, GastoEmDinheiroChuveiro: string;
  GastoSecadorDeCabelokWh, GastoEmDinheiroSecadorDeCabelo: string;
  GastoComputadorkWh, GastoEmDinheiroComputador: string;
  GastoFerroDePassarkWh, GastoEmDinheiroFerroDePassar: string;
  GastoLampadakWh, GastoEmDinheiroLampada: string;
  GastoMicroondaskWh, GastoEmDinheiroMicroondas: string;
  SomakWh, SomaEmDinheiro: Double;
begin
  begin
    FCalcularGasto := TCalculo.Create;
    SomakWh := 0.00;
    SomaEmDinheiro := 0.00;
    try
      if (SpinEditArCondicionadoPoten.Value >= 0) and (SpinEditArCondicionadoQtd.Value >= 0)
      and (SpinEditArCondicionadoTempoHD.Value >= 0) and (SpinEditArCondicionadoComodos.Value >= 0)then
       begin
       GastoArCondicionadokWh := FCalcularGasto.CalcularArCondicionado(SpinEditArCondicionadoPoten.Value, SpinEditArCondicionadoQtd.Value,
       SpinEditArCondicionadoTempoHD.Value, SpinEditArCondicionadoComodos.Value);
       GastoEmDinheiroArCondicionado := FCalcularGasto.CalcularGastoEmDinheiro(GastoArCondicionadokWh);
       EditArCondicionadokWh.Text := GastoArCondicionadokWh;
         SomakWh := StrToFloat(GastoArCondicionadokWh);
       EditArCondicionadoCusto.Text := GastoEmDinheiroArCondicionado;
         SomaEmDinheiro := StrToFloat(GastoEmDinheiroArCondicionado);
       end
       else
          MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditVentiladorPoten.Value >= 0) and (SpinEditVentiladorQtd.Value >= 0) and (SpinEditVentiladorTempHD.Value >= 0)
      and(SpinEditVentiladorComodos.Value >= 0) then
      begin
      GastoVentiladorkWh := FCalcularGasto.CalcularVentilador(SpinEditVentiladorPoten.Value, SpinEditVentiladorQtd.Value, SpinEditVentiladorTempHD.Value,
      SpinEditVentiladorComodos.Value);
      EditVentiladorkWh.Text := GastoVentiladorkWh;
        SomakWh := SomakWh + StrToFloat(GastoVentiladorkWh);
      GastoEmDinheiroVentilador := FCalcularGasto.CalcularGastoEmDinheiro(GastoVentiladorkWh);
      EditVentiladorCusto.Text := GastoEmDinheiroVentilador;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroVentilador);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditTvPoten.Value >= 0) and (SpinEditTvQtd.Value >= 0) and (SpinEditTvTempHD.Value >= 0)
      and (SpinEditTvComodos.Value >= 0) then
      begin
      GastoTvkWh := FCalcularGasto.CalcularTv(SpinEditTvPoten.Value, SpinEditTvQtd.Value, SpinEditTvTempHD.Value,
      SpinEditTvComodos.Value);
      EditTvkWh.Text := GastoTvkWh;
        SomakWh := SomakWh + StrToFloat(GastoTvkWh);
      GastoEmDinheiroTv := FCalcularGasto.CalcularGastoEmDinheiro(GastoTvkWh);
      EditTvCusto.Text := GastoEmDinheiroTv;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroTv);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditGeladeiraPoten.Value >= 0) and (SpinEditGeladeiraQtd.Value >= 0) and (SpinEditGeladeiraTempHD.Value >= 0)
      and (SpinEditGeladeiraComodos.Value >= 0) then
      begin
      GastoGeladeirakWh := FCalcularGasto.CalcularGeladeira(SpinEditGeladeiraPoten.Value, SpinEditGeladeiraQtd.Value, SpinEditGeladeiraTempHD.Value,
      SpinEditGeladeiraComodos.Value);
        EditGeladeirakWh.Text := GastoGeladeirakWh;
          SomakWh := SomakWh + StrToFloat(GastoGeladeirakWh);
      GastoEmDinheiroGeladeira := FCalcularGasto.CalcularGastoEmDinheiro(GastoGeladeirakWh);
      EditGeladeiraCusto.Text := GastoEmDinheiroGeladeira;
         SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroGeladeira);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditChuveiroPoten.Value >= 0) and (SpinEditChuveiroQtd.Value >= 0) and (SpinEditChuveiroTempHD.Value >= 0)
      and (SpinEditChuveiroComodos.Value >= 0) then
      begin
      GastoChuveirokWh := FCalcularGasto.CalcularChuveiro(SpinEditChuveiroPoten.Value, SpinEditChuveiroQtd.Value, SpinEditChuveiroTempHD.Value,
      SpinEditChuveiroComodos.Value);
        EditChuveirokWh.Text := GastoChuveirokWh;
          SomakWh := SomakWh + StrToFloat(GastoChuveirokWh);
      GastoEmDinheiroChuveiro := FCalcularGasto.CalcularGastoEmDinheiro(GastoChuveirokWh);
      EditChuveiroCusto.Text := GastoEmDinheiroChuveiro;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroChuveiro);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditSecadorCabeloPoten.Value >= 0) and (SpinEditSecadorCabeloQtd.Value >= 0) and (SpinEditSecadorCabeloTempHD.Value >= 0)
      and (SpinEditSecadorCabeloComodos.Value >= 0) then
      begin
      GastoSecadorDeCabelokWh := FCalcularGasto.CalcularSecadorDeCabelo(SpinEditSecadorCabeloPoten.Value, SpinEditSecadorCabeloQtd.Value, SpinEditSecadorCabeloTempHD.Value,
      SpinEditSecadorCabeloComodos.Value);
        EditSecadorDeCabelokWh.Text := GastoSecadorDeCabelokWh;
          SomakWh := SomakWh + StrToFloat(GastoSecadorDeCabelokWh);
      GastoEmDinheiroSecadorDeCabelo := FCalcularGasto.CalcularGastoEmDinheiro(GastoSecadorDeCabelokWh);
      EditSecadorCabeloCusto.Text := GastoEmDinheiroSecadorDeCabelo;
          SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroSecadorDeCabelo);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditComputadorPoten.Value >= 0) and (SpinEditComputadorQtd.Value >= 0) and (SpinEditComputadorTempHD.Value >= 0)
      and (SpinEditComputadorComodos.Value >= 0) then
      begin
      GastoComputadorkWh := FCalcularGasto.CalcularComputador(SpinEditComputadorPoten.Value, SpinEditComputadorQtd.Value, SpinEditComputadorTempHD.Value,
      SpinEditComputadorComodos.Value);
        EditComputadorkWh.Text := GastoComputadorkWh;
          SomakWh := SomakWh + StrToFloat(GastoComputadorkWh);
      GastoEmDinheiroComputador := FCalcularGasto.CalcularGastoEmDinheiro(GastoComputadorkWh);
      EditComputadorCusto.Text := GastoEmDinheiroComputador;
          SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroComputador);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditFerroPassarPoten.Value >= 0) and (SpinEditFerroPassarQtd.Value >= 0) and (SpinEditFerroPassarTempHD.Value >= 0)
      and (SpinEditFerroPassarComodos.Value >= 0) then
      begin
      GastoFerroDePassarkWh := FCalcularGasto.CalcularFerroDePassar(SpinEditFerroPassarPoten.Value, SpinEditFerroPassarQtd.Value, SpinEditFerroPassarTempHD.Value,
      SpinEditFerroPassarComodos.Value);
        EditFerroDePassarkWh.Text := GastoFerroDePassarkWh;
        SomakWh := SomakWh + StrToFloat(GastoFerroDePassarkWh);
      GastoEmDinheiroFerroDePassar := FCalcularGasto.CalcularGastoEmDinheiro(GastoFerroDePassarkWh);
      EditFerroPassarCusto.Text := GastoEmDinheiroFerroDePassar;
         SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroFerroDePassar);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditLampadaPoten.Value >= 0) and (SpinEditLampadaQtd.Value >= 0) and (SpinEditLampadaTempHD.Value >= 0)
      and (SpinEditLampadaComodos.Value >= 0) then
      begin
      GastoLampadakWh := FCalcularGasto.CalcularLampada(SpinEditLampadaPoten.Value, SpinEditLampadaQtd.Value, SpinEditLampadaTempHD.Value,
      SpinEditLampadaComodos.Value);
        EditLampadakWh.Text := GastoLampadakWh;
        SomakWh := SomakWh + StrToFloat(GastoLampadakWh);
      GastoEmDinheiroLampada := FCalcularGasto.CalcularGastoEmDinheiro(GastoLampadakWh);
      EditLampadaCusto.Text := GastoEmDinheiroLampada;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroLampada);
      end
      else
         MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);
      if (SpinEditMicroondasPoten.Value >= 0) and (SpinEditMicroondasQtd.Value >= 0) and (SpinEditMicroondasTempHD.Value >= 0)
      and (SpinEditMicroondasComodos.Value >= 0) then
      begin
      GastoMicroondaskWh := FCalcularGasto.CalcularMicroondas(SpinEditMicroondasPoten.Value, SpinEditMicroondasQtd.Value, SpinEditMicroondasTempHD.Value,
      SpinEditMicroondasComodos.Value);
        EditMicroondaskWh.Text := GastoMicroondaskWh;
        SomakWh := SomakWh + StrToFloat(GastoMicroondaskWh);
      GastoEmDinheiroMicroondas := FCalcularGasto.CalcularGastoEmDinheiro(GastoMicroondaskWh);
      EditMicroondasCusto.Text := GastoEmDinheiroMicroondas;
         SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroMicroondas);
      end
      else
        MessageDlg(FQuantidadeInvalida, mtWarning, mbOKCancel, 1);

      EditTotalkWh.Text := FloatToStr(SomakWh);
      EditTotalCusto.Text := FloatToStr(SomaEmDinheiro);
    finally
      FCalcularGasto.Free;
    end;
  end;


end;

constructor TFrmCadastrar.Create(AOwner: TComponent);
begin
  inherited;
  FGravar := TGravar.Create;
end;

procedure TFrmCadastrar.CriarFormConsultarBandeira;
var
  NewForm : TFrmBandeiraTarifaria;
begin
  if (EditTotalkWh.Text <> '') and (EditTotalkWh.Text <> IntToStr(0))then
  begin
  NewForm := TFrmBandeiraTarifaria.Create(self);
  try
  NewForm.EditTotalGastokWhCadastrada.Text := EditTotalkWh.Text;
  NewForm.EditTotalGastoReaisCadastrado.Text := EditTotalCusto.Text;
  NewForm.ShowModal;
  finally
  NewForm.Free;
  end;
  end
  else
  MessageDlg(FNaoPermitirConsultaBandeira, mtError, mbOKCancel, 1);
end;

function TFrmCadastrar.DefineParãoSalvaTXT: string;
var
 PadrãoSalvar : string;
begin
  PadrãoSalvar := 'SEM TARIFA' + sLineBreak + 'Gasto em Khw: ' + EditTotalkWh.Text +
  sLineBreak + 'Gasto em reais (R$): ' + EditTotalCusto.Text;
  Result := PadrãoSalvar;
end;

procedure TFrmCadastrar.DesabilitarAlterarkWh;
begin
  EditArCondicionadokWh.ReadOnly := true;
  EditVentiladorkWh.ReadOnly := true;
  EditTvkWh.ReadOnly := true;
  EditGeladeirakWh.ReadOnly := true;
  EditChuveirokWh.ReadOnly := true;
  EditSecadorDeCabelokWh.ReadOnly := true;
  EditComputadorkWh.ReadOnly := true;
  EditFerroDePassarkWh.ReadOnly := true;
  EditLampadakWh.ReadOnly := true;
  EditMicroondaskWh.ReadOnly := true;
end;

procedure TFrmCadastrar.DesabilitarAlterarPotencia;
begin
  SpinEditArCondicionadoPoten.ReadOnly := true;
  SpinEditVentiladorPoten.ReadOnly := true;
  SpinEditTvPoten.ReadOnly := true;
  SpinEditGeladeiraPoten.ReadOnly := true;
  SpinEditChuveiroPoten.ReadOnly := true;
  SpinEditSecadorCabeloPoten.ReadOnly := true;
  SpinEditComputadorPoten.ReadOnly := true;
  SpinEditFerroPassarPoten.ReadOnly := true;
  SpinEditLampadaPoten.ReadOnly := true;
  SpinEditMicroondasPoten.ReadOnly := true;

end;

procedure TFrmCadastrar.DesabilitarAlterarTempo;
begin
  SpinEditArCondicionadoTempoHD.ReadOnly := True;
  SpinEditVentiladorTempHD.ReadOnly := True;
  SpinEditTvTempHD.ReadOnly := True;
  SpinEditGeladeiraTempHD.ReadOnly := True;
  SpinEditChuveiroTempHD.ReadOnly := True;;
  SpinEditSecadorCabeloTempHD.ReadOnly := True;
  SpinEditComputadorTempHD.ReadOnly := True;
  SpinEditFerroPassarTempHD.ReadOnly := True;
  SpinEditLampadaTempHD.ReadOnly := True;
  SpinEditMicroondasTempHD.ReadOnly := True;
end;

procedure TFrmCadastrar.DesativaBotoes;
begin
  BtnCalcular.Enabled := False;
  BtnSalvarTXT.Enabled := False;
  BtnBandeiraTarifaria.Enabled := False;
  BtnConsultar.Enabled := False;
end;

procedure TFrmCadastrar.DesativarGropoAparelhos;
begin
  GroupBoxAparelhos.Enabled := False;
end;

procedure TFrmCadastrar.DesativarGroupBoxAoAbrir;
begin
  GroupBoxAoAbrir.Visible := False;
end;

destructor TFrmCadastrar.Destroy;
begin
  FGravar.Free;
  inherited;
end;

procedure TFrmCadastrar.BtnConsultarClick(Sender: TObject);
begin
  ConsultarTXT;
end;

procedure TFrmCadastrar.ConsultarTXT;
begin
  MemoConsulta.Clear;
  try
  MemoConsulta.Lines.LoadFromFile(FPathArquivo);
  except
  MemoConsulta.Lines.Add('Erro na abertura do arquivo de consulta !');
  end;
  Singleton := TSingleton.GetInstance;
  Singleton.GetFilePath(MemoConsulta.Text);
end;

procedure TFrmCadastrar.FormShow(Sender: TObject);
begin
  NegritoTipoSimulacao;
  DesabilitarAlterarPotencia;
  DesabilitarAlterarkWh;
  DesativarGropoAparelhos;
  DesativarGropoAparelhos;
  DesativaBotoes;
  SetarDefaultValorPotencia;
end;

procedure TFrmCadastrar.GravarTxt;
begin
  if (EditTotalkWh.Text <> '') and (EditTotalkWh.Text <> IntToStr(0)) then
  FGravar.GravarTXT(FPathArquivo, DefineParãoSalvaTXT)
  else
  MessageDlg((FErroAoGravar + FPathArquivo), mtError, mbOKCancel, 1);
end;

procedure TFrmCadastrar.LimparCampos;
begin
  FQuantidade := 0;
  SpinEditArCondicionadoQtd.Value := FQuantidade;
  SpinEditVentiladorQtd.Value := FQuantidade;
  SpinEditTvQtd.Value := FQuantidade;
  SpinEditGeladeiraQtd.Value := FQuantidade;
  SpinEditChuveiroQtd.Value := FQuantidade;
  SpinEditSecadorCabeloQtd.Value := FQuantidade;
  SpinEditComputadorQtd.Value := FQuantidade;
  SpinEditFerroPassarQtd.Value := FQuantidade;
  SpinEditLampadaQtd.Value := FQuantidade;
  SpinEditMicroondasQtd.Value := FQuantidade;

  FComodos := 0;
  SpinEditArCondicionadoComodos.Value := FComodos;
  SpinEditVentiladorComodos.Value := FComodos;
  SpinEditTvComodos.Value := FComodos;
  SpinEditGeladeiraComodos.Value := FComodos;
  SpinEditChuveiroComodos.Value := FComodos;
  SpinEditSecadorCabeloComodos.Value := FComodos;
  SpinEditComputadorComodos.Value := FComodos;
  SpinEditFerroPassarComodos.Value := FComodos;
  SpinEditLampadaComodos.Value := FComodos;
  SpinEditMicroondasComodos.Value := FComodos;

  EditArCondicionadokWh.Clear;
  EditVentiladorkWh.Clear;
  EditTvkWh.Clear;
  EditGeladeirakWh.Clear;
  EditChuveirokWh.Clear;
  EditSecadorDeCabelokWh.Clear;
  EditComputadorkWh.Clear;
  EditFerroDePassarkWh.Clear;
  EditLampadakWh.Clear;
  EditMicroondaskWh.Clear;

  EditArCondicionadoCusto.Clear;
  EditVentiladorCusto.Clear;
  EditTvCusto.Clear;
  EditGeladeiraCusto.Clear;
  EditChuveiroCusto.Clear;
  EditSecadorCabeloCusto.Clear;
  EditComputadorCusto.Clear;
  EditFerroPassarCusto.Clear;
  EditLampadaCusto.Clear;
  EditMicroondasCusto.Clear;

  EditTotalkWh.Clear;
  EditTotalCusto.Clear;
end;

procedure TFrmCadastrar.NegritoTipoSimulacao;
begin
  RadioGroupTpSimulacao.Font.Style := [fsBold];
  RadioBtnDiario.Font.Style := [fsBold];
  RadioBtnMensal.Font.Style := [fsBold];
  RadioBtnPersonalizado.Font.Style := [fsBold];
end;

procedure TFrmCadastrar.RadioBtnDiarioClick(Sender: TObject);
begin
  DesativarGroupBoxAoAbrir;
  AtribuirTempoDiario24H;
  LimparCampos;
  DesabilitarAlterarTempo;
  AtivarGroupBoxAparelhos;
  AtivaBotoes;
  NegritoTipoSimulacao;
end;

procedure TFrmCadastrar.RadioBtnPersonalizadoClick(Sender: TObject);
begin
  DesativarGroupBoxAoAbrir;
  AtribuirTempoPersonalizado;
  LimparCampos;
  AtivarAlterarTempo;
  AtivarGroupBoxAparelhos;
  AtivaBotoes;
  NegritoTipoSimulacao;
end;

procedure TFrmCadastrar.RadioBtnMensalClick(Sender: TObject);
begin
  DesativarGroupBoxAoAbrir;
  AtribuirTempoMensa710H;
  LimparCampos;
  DesabilitarAlterarTempo;
  AtivarGroupBoxAparelhos;
  AtivaBotoes;
  NegritoTipoSimulacao;
end;

procedure TFrmCadastrar.SetarDefaultValorPotencia;
begin
  SpinEditArCondicionadoPoten.Value := 950;
  SpinEditVentiladorPoten.Value := 200;
  SpinEditTvPoten.Value := 175;
  SpinEditGeladeiraPoten.Value := 350;
  SpinEditChuveiroPoten.Value := 850;
  SpinEditSecadorCabeloPoten.Value := 265;
  SpinEditComputadorPoten.Value := 330;
  SpinEditFerroPassarPoten.Value := 190;
  SpinEditLampadaPoten.Value := 110;
  SpinEditMicroondasPoten.Value := 220;
end;

 {Desenvolvido por Edward Moreira do Nascimento, GitHub: EdwardPG
 Grupo HigTech -}
end.
