unit UnCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Buttons, UnCalcularABS;

type
  EvalidationError = class (Exception);

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
    EditResultadoConsulta: TEdit;
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
    procedure BtnBandeiraTarifariaClick(Sender: TObject);
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
    procedure DesabilitarAlterarkWh;
    procedure CriarFormConsultarBandeira;
    function CalcularGasto: string;
  private const
    FNaoPermitirConsultaBandeira = 'Desculpa mas para efetuar uma consulta de bandeira Tarifarias' +
    'é necessário ' + ' efetuar uma simulação de gasto antes';
  end;

var
  FrmCadastrar: TFrmCadastrar;

implementation

{$R *.dfm}

uses
 UnCalculos, UnBandeirasTarifarias;

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
//  MessageDlg();
  //YeaAnNo : If Yes show Resultado Bandeira tarifaria e Salva todo resultado em .txt
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
  TotalCustokWh, TotalCustoEmDinheiro : string;
  TCalcularGasto : TCalculo;
  SomakWh, SomaEmDinheiro: Double;
begin
  begin
    TCalcularGasto := TCalculo.Create;
    try
      if not(SpinEditArCondicionadoPoten.Value < 0) and not (SpinEditArCondicionadoQtd.Value < 0)
      and not (SpinEditArCondicionadoTempoHD.Value < 0) and not (SpinEditArCondicionadoComodos.Value < 0)then
       try
       GastoArCondicionadokWh := TCalcularGasto.CalcularArCondicionado(SpinEditArCondicionadoPoten.Value, SpinEditArCondicionadoQtd.Value,
       SpinEditArCondicionadoTempoHD.Value, SpinEditArCondicionadoComodos.Value);
       GastoEmDinheiroArCondicionado := TCalcularGasto.CalcularGastoEmDinheiro(GastoArCondicionadokWh);
       Except
        on E: EvalidationError do
       begin
       EvalidationError.Create('Por Favor digite um numero Positivo');
       Exit;
       end;
       end;
       EditArCondicionadokWh.Text := GastoArCondicionadokWh;
         SomakWh := StrToFloat(GastoArCondicionadokWh);
       EditArCondicionadoCusto.Text := GastoEmDinheiroArCondicionado;
         SomaEmDinheiro := StrToFloat(GastoEmDinheiroArCondicionado);
      if (SpinEditVentiladorPoten.Value >= 0) and (SpinEditVentiladorQtd.Value >= 0) and (SpinEditVentiladorTempHD.Value >= 0)
      and(SpinEditVentiladorComodos.Value >= 0) then
      try
      GastoVentiladorkWh := TCalcularGasto.CalcularVentilador(SpinEditVentiladorPoten.Value, SpinEditVentiladorQtd.Value, SpinEditVentiladorTempHD.Value,
      SpinEditVentiladorComodos.Value);
      EditVentiladorkWh.Text := GastoVentiladorkWh;
        SomakWh := SomakWh + StrToFloat(GastoVentiladorkWh);
      GastoEmDinheiroVentilador := TCalcularGasto.CalcularGastoEmDinheiro(GastoVentiladorkWh);
      EditVentiladorCusto.Text := GastoEmDinheiroVentilador;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroVentilador);
      except

      end;
      if (SpinEditTvPoten.Value >= 0) and (SpinEditTvQtd.Value >= 0) and (SpinEditTvTempHD.Value >= 0)
      and (SpinEditTvComodos.Value >= 0) then
      try
      GastoTvkWh := TCalcularGasto.CalcularTv(SpinEditTvPoten.Value, SpinEditTvQtd.Value, SpinEditTvTempHD.Value,
      SpinEditTvComodos.Value);
      EditTvkWh.Text := GastoTvkWh;
        SomakWh := SomakWh + StrToFloat(GastoTvkWh);
      GastoEmDinheiroTv := TCalcularGasto.CalcularGastoEmDinheiro(GastoTvkWh);
      EditTvCusto.Text := GastoEmDinheiroTv;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroTv);
      except

      end;
      if (SpinEditGeladeiraPoten.Value >= 0) and (SpinEditGeladeiraQtd.Value >= 0) and (SpinEditGeladeiraTempHD.Value >= 0)
      and (SpinEditGeladeiraComodos.Value >= 0) then
      try
      GastoGeladeirakWh := TCalcularGasto.CalcularGeladeira(SpinEditGeladeiraPoten.Value, SpinEditGeladeiraQtd.Value, SpinEditGeladeiraTempHD.Value,
      SpinEditGeladeiraComodos.Value);
        EditGeladeirakWh.Text := GastoGeladeirakWh;
          SomakWh := SomakWh + StrToFloat(GastoGeladeirakWh);
      GastoEmDinheiroGeladeira := TCalcularGasto.CalcularGastoEmDinheiro(GastoGeladeirakWh);
      EditGeladeiraCusto.Text := GastoEmDinheiroGeladeira;
         SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroGeladeira);
      except

      end;
      if (SpinEditChuveiroPoten.Value >= 0) and (SpinEditChuveiroQtd.Value >= 0) and (SpinEditChuveiroTempHD.Value >= 0)
      and (SpinEditChuveiroComodos.Value >= 0) then
      try
      GastoChuveirokWh := TCalcularGasto.CalcularChuveiro(SpinEditChuveiroPoten.Value, SpinEditChuveiroQtd.Value, SpinEditChuveiroTempHD.Value,
      SpinEditChuveiroComodos.Value);
        EditChuveirokWh.Text := GastoChuveirokWh;
          SomakWh := SomakWh + StrToFloat(GastoChuveirokWh);
      GastoEmDinheiroChuveiro := TCalcularGasto.CalcularGastoEmDinheiro(GastoChuveirokWh);
      EditChuveiroCusto.Text := GastoEmDinheiroChuveiro;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroChuveiro);
      except

      end;
      if (SpinEditSecadorCabeloPoten.Value >= 0) and (SpinEditSecadorCabeloQtd.Value >= 0) and (SpinEditSecadorCabeloTempHD.Value >= 0)
      and (SpinEditSecadorCabeloComodos.Value >= 0) then
      try
      GastoSecadorDeCabelokWh := TCalcularGasto.CalcularSecadorDeCabelo(SpinEditSecadorCabeloPoten.Value, SpinEditSecadorCabeloQtd.Value, SpinEditSecadorCabeloTempHD.Value,
      SpinEditSecadorCabeloComodos.Value);
        EditSecadorDeCabelokWh.Text := GastoSecadorDeCabelokWh;
          SomakWh := SomakWh + StrToFloat(GastoSecadorDeCabelokWh);
      GastoEmDinheiroSecadorDeCabelo := TCalcularGasto.CalcularGastoEmDinheiro(GastoSecadorDeCabelokWh);
      EditSecadorCabeloCusto.Text := GastoEmDinheiroSecadorDeCabelo;
          SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroSecadorDeCabelo);
      except

      end;
      if (SpinEditComputadorPoten.Value >= 0) and (SpinEditComputadorQtd.Value >= 0) and (SpinEditComputadorTempHD.Value >= 0)
      and (SpinEditComputadorComodos.Value >= 0) then
      try
      GastoComputadorkWh := TCalcularGasto.CalcularComputador(SpinEditComputadorPoten.Value, SpinEditComputadorQtd.Value, SpinEditComputadorTempHD.Value,
      SpinEditComputadorComodos.Value);
        EditComputadorkWh.Text := GastoComputadorkWh;
          SomakWh := SomakWh + StrToFloat(GastoComputadorkWh);
      GastoEmDinheiroComputador := TCalcularGasto.CalcularGastoEmDinheiro(GastoComputadorkWh);
      EditComputadorCusto.Text := GastoEmDinheiroComputador;
          SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroComputador);
      except

      end;
      if (SpinEditFerroPassarPoten.Value >= 0) and (SpinEditFerroPassarQtd.Value >= 0) and (SpinEditFerroPassarTempHD.Value >= 0)
      and (SpinEditFerroPassarComodos.Value >= 0) then
      try
      GastoFerroDePassarkWh := TCalcularGasto.CalcularFerroDePassar(SpinEditFerroPassarPoten.Value, SpinEditFerroPassarQtd.Value, SpinEditFerroPassarTempHD.Value,
      SpinEditFerroPassarComodos.Value);
        EditFerroDePassarkWh.Text := GastoFerroDePassarkWh;
        SomakWh := SomakWh + StrToFloat(GastoFerroDePassarkWh);
      GastoEmDinheiroFerroDePassar := TCalcularGasto.CalcularGastoEmDinheiro(GastoFerroDePassarkWh);
      EditFerroPassarCusto.Text := GastoEmDinheiroFerroDePassar;
         SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroFerroDePassar);
      except

      end;
      if (SpinEditLampadaPoten.Value >= 0) and (SpinEditLampadaQtd.Value >= 0) and (SpinEditLampadaTempHD.Value >= 0)
      and (SpinEditLampadaComodos.Value >= 0) then
      try
      GastoLampadakWh := TCalcularGasto.CalcularLampada(SpinEditLampadaPoten.Value, SpinEditLampadaQtd.Value, SpinEditLampadaTempHD.Value,
      SpinEditLampadaComodos.Value);
        EditLampadakWh.Text := GastoLampadakWh;
        SomakWh := SomakWh + StrToFloat(GastoLampadakWh);
      GastoEmDinheiroLampada := TCalcularGasto.CalcularGastoEmDinheiro(GastoLampadakWh);
      EditLampadaCusto.Text := GastoEmDinheiroLampada;
        SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroLampada);
      except

      end;
      if (SpinEditMicroondasPoten.Value >= 0) and (SpinEditMicroondasQtd.Value >= 0) and (SpinEditMicroondasTempHD.Value >= 0)
      and (SpinEditMicroondasComodos.Value >= 0) then
      try
      GastoMicroondaskWh := TCalcularGasto.CalcularMicroondas(SpinEditMicroondasPoten.Value, SpinEditMicroondasQtd.Value, SpinEditMicroondasTempHD.Value,
      SpinEditMicroondasComodos.Value);
        EditMicroondaskWh.Text := GastoMicroondaskWh;
        SomakWh := SomakWh + StrToFloat(GastoMicroondaskWh);
      GastoEmDinheiroMicroondas := TCalcularGasto.CalcularGastoEmDinheiro(GastoMicroondaskWh);
      EditMicroondasCusto.Text := GastoEmDinheiroMicroondas;
         SomaEmDinheiro := SomaEmDinheiro + StrToFloat(GastoEmDinheiroMicroondas);
      except

      end;

      EditTotalkWh.Text := FloatToStr(SomakWh);
      EditTotalCusto.Text := FloatToStr(SomaEmDinheiro);
    finally
      TCalcularGasto.Free;
    end;
  end;


end;

procedure TFrmCadastrar.CriarFormConsultarBandeira;
var
  NewForm : TFrmBandeiraTarifaria;
begin
  if (EditTotalkWh.Text <> '') and (EditTotalkWh.Text <> IntToStr(0))then
  begin
  NewForm := TFrmBandeiraTarifaria.Create(nil);
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

procedure TFrmCadastrar.FormShow(Sender: TObject);
begin
  DesabilitarAlterarPotencia;
  DesabilitarAlterarkWh;
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
