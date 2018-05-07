unit UnCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Buttons, UnCalcularABS;

type
  TEvalidationError = class (Exception);

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
    SpinEditArCondicionadokWh: TSpinEdit;
    SpinEditVentiladorkWh: TSpinEdit;
    SpinEditTvkWh: TSpinEdit;
    SpinEditGeladeirakWh: TSpinEdit;
    SpinEditChuveirokWh: TSpinEdit;
    SpinEditSecadorCabelokWh: TSpinEdit;
    SpinEditComputadorkWh: TSpinEdit;
    SpinEditFerroPassarkWh: TSpinEdit;
    SpinEditLampadakWh: TSpinEdit;
    SpinEditMicroondaskWh: TSpinEdit;
    GroupBoxFuncionalidades: TGroupBox;
    BtnSalvarTXT: TBitBtn;
    BtnBandeiraTarifaria: TBitBtn;
    EditTotalCusto: TEdit;
    GroupBoxGastoTotal: TGroupBox;
    EditTotalkWh: TEdit;
    LabelTotalGasto: TLabel;
    BtnConsultar: TBitBtn;
    GroupBoxResultadoConsulta: TGroupBox;
    EditResultadoConsulta: TEdit;
    LabelValorFinalConsulta: TLabel;
    LabelValorRS: TLabel;
    LabelkWhTotal: TLabel;
    procedure RadioBtnDiarioClick(Sender: TObject);
    procedure RadioBtnMensalClick(Sender: TObject);
    procedure RadioBtnPersonalizadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
  private
    FCalcular : TCalcular;
    FQtdHora : Integer;
    FQtdTodosSpinEdit : Integer;
  public
    procedure AtribuirTempoDiario24H;
    procedure AtribuirTempoMensa710H;
    procedure AtribuirTempoPersonalizado;
    procedure DesabilitarAlterarTempo;
    procedure AtivarAlterarTempo;
    procedure AtivarGroupBoxAparelhos;
    procedure SetarDefaultValorPotencia;
    procedure DesabilitarAlterarPotencia;
    procedure CalcularGasto;
  end;

var
  FrmCadastrar: TFrmCadastrar;

implementation

{$R *.dfm}

uses
 UnCalculos;

{ TFrmCadastrar }

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
//  MessageDlg();
  //YeaAnNo : If Yes show Resultado Bandeira tarifaria e Salva todo resultado em .txt
end;

procedure TFrmCadastrar.CalcularGasto;
var
  GastoArCondicionado :string;
  GastoVentilador: string;
  GastoTv: string;
  GastoGeladeira: string;
  GastoChuveiro: string;
  GastoSecadorDeCabelo: string;
  GastoComputador: string;
  GastoFerroDePassar: string;
  GastoLampada: string;
  GastoMicroondas: string;
  TotalCusto : string;
  TCalcularGasto : TCalculo;
begin
  begin
    TCalcularGasto := TCalculo.Create;
    try
      GastoArCondicionado := TCalcularGasto.CalcularArCondicionado(SpinEditArCondicionadoPoten.Value, SpinEditArCondicionadoQtd.Value,
      SpinEditArCondicionadoTempoHD.Value, SpinEditArCondicionadoComodos.Value, SpinEditArCondicionadokWh.Value);
        EditArCondicionadoCusto.Text := GastoArCondicionado;

      GastoVentilador := TCalcularGasto.CalcularVentilador(SpinEditVentiladorPoten.Value, SpinEditVentiladorQtd.Value, SpinEditVentiladorTempHD.Value,
      SpinEditVentiladorComodos.Value,SpinEditVentiladorkWh.Value);
        EditVentiladorCusto.Text := GastoVentilador;

     GastoTv := TCalcularGasto.CalcularTv(SpinEditTvPoten.Value, SpinEditTvQtd.Value, SpinEditTvTempHD.Value,
      SpinEditTvComodos.Value,SpinEditTvkWh.Value);
        EditTvCusto.Text := GastoTv;

      GastoGeladeira := TCalcularGasto.CalcularGeladeira(SpinEditGeladeiraPoten.Value, SpinEditGeladeiraQtd.Value, SpinEditGeladeiraTempHD.Value,
      SpinEditGeladeiraComodos.Value,SpinEditGeladeirakWh.Value);
        EditGeladeiraCusto.Text := GastoGeladeira;

      GastoChuveiro := TCalcularGasto.CalcularChuveiro(SpinEditChuveiroPoten.Value, SpinEditChuveiroQtd.Value, SpinEditChuveiroTempHD.Value,
      SpinEditChuveiroComodos.Value,SpinEditChuveirokWh.Value);
        EditChuveiroCusto.Text := GastoChuveiro;

      GastoSecadorDeCabelo := TCalcularGasto.CalcularSecadorDeCabelo(SpinEditSecadorCabeloPoten.Value, SpinEditSecadorCabeloQtd.Value, SpinEditSecadorCabeloTempHD.Value,
      SpinEditSecadorCabeloComodos.Value,SpinEditSecadorCabelokWh.Value);
        EditSecadorCabeloCusto.Text := GastoSecadorDeCabelo;

      GastoComputador := TCalcularGasto.CalcularComputador(SpinEditComputadorPoten.Value, SpinEditComputadorQtd.Value, SpinEditComputadorTempHD.Value,
      SpinEditComputadorComodos.Value,SpinEditComputadorkWh.Value);
        EditComputadorCusto.Text := GastoComputador;

      GastoFerroDePassar := TCalcularGasto.CalcularFerroDePassar(SpinEditFerroPassarPoten.Value, SpinEditFerroPassarQtd.Value, SpinEditFerroPassarTempHD.Value,
      SpinEditFerroPassarComodos.Value,SpinEditFerroPassarkWh.Value);
        EditFerroPassarCusto.Text := GastoFerroDePassar;

      GastoLampada := TCalcularGasto.CalcularLampada(SpinEditLampadaPoten.Value, SpinEditLampadaQtd.Value, SpinEditLampadaTempHD.Value,
      SpinEditLampadaComodos.Value,SpinEditLampadakWh.Value);
        EditLampadaCusto.Text := GastoLampada;

      GastoMicroondas := TCalcularGasto.CalcularMicroondas(SpinEditMicroondasPoten.Value, SpinEditMicroondasQtd.Value, SpinEditMicroondasTempHD.Value,
      SpinEditMicroondasComodos.Value,SpinEditMicroondaskWh.Value);
        EditMicroondasCusto.Text := GastoMicroondas;

      TotalCusto := TCalcularGasto.CalcularTotal(GastoArCondicionado, GastoVentilador, GastoTv, GastoGeladeira, GastoChuveiro); // Colocar o que faltou aq
      EditTotalCusto.Text := TotalCusto;
       // Outro edit para receber gasto em kWh;
      // arrumar alguns erros que surgiram
    finally
      TCalcularGasto.Free;
    end;
  end;


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

procedure TFrmCadastrar.FormShow(Sender: TObject);
begin
  DesabilitarAlterarPotencia;
  SetarDefaultValorPotencia;
end;

procedure TFrmCadastrar.RadioBtnDiarioClick(Sender: TObject);
begin
  AtribuirTempoDiario24H;
  DesabilitarAlterarTempo;
  AtivarGroupBoxAparelhos;
end;

procedure TFrmCadastrar.RadioBtnPersonalizadoClick(Sender: TObject);
begin
  AtribuirTempoPersonalizado;
  AtivarAlterarTempo;
  AtivarGroupBoxAparelhos;
end;

procedure TFrmCadastrar.RadioBtnMensalClick(Sender: TObject);
begin
  AtribuirTempoMensa710H;
  DesabilitarAlterarTempo;
  AtivarGroupBoxAparelhos;
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
 {Adiciona um campo para fazer a comparação
 de bandeira tarifaria, com se o edit estiver vazio
 e salvar em txt}
end.
