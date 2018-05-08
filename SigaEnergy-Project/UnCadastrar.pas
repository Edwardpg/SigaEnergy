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
begin
  begin
    TCalcularGasto := TCalculo.Create;
    try
      GastoArCondicionadokWh := TCalcularGasto.CalcularArCondicionado(SpinEditArCondicionadoPoten.Value, SpinEditArCondicionadoQtd.Value,
      SpinEditArCondicionadoTempoHD.Value, SpinEditArCondicionadoComodos.Value);
        EditArCondicionadokWh.Text := GastoArCondicionadokWh;
        
      GastoVentiladorkWh := TCalcularGasto.CalcularVentilador(SpinEditVentiladorPoten.Value, SpinEditVentiladorQtd.Value, SpinEditVentiladorTempHD.Value,
      SpinEditVentiladorComodos.Value);
        EditVentiladorkWh.Text := GastoVentiladorkWh;

     GastoTvkWh := TCalcularGasto.CalcularTv(SpinEditTvPoten.Value, SpinEditTvQtd.Value, SpinEditTvTempHD.Value,
      SpinEditTvComodos.Value);
        EditTvkWh.Text := GastoTvkWh;

      GastoGeladeirakWh := TCalcularGasto.CalcularGeladeira(SpinEditGeladeiraPoten.Value, SpinEditGeladeiraQtd.Value, SpinEditGeladeiraTempHD.Value,
      SpinEditGeladeiraComodos.Value);
        EditGeladeirakWh.Text := GastoGeladeirakWh;

      GastoChuveirokWh := TCalcularGasto.CalcularChuveiro(SpinEditChuveiroPoten.Value, SpinEditChuveiroQtd.Value, SpinEditChuveiroTempHD.Value,
      SpinEditChuveiroComodos.Value);
        EditChuveirokWh.Text := GastoChuveirokWh;

      GastoSecadorDeCabelokWh := TCalcularGasto.CalcularSecadorDeCabelo(SpinEditSecadorCabeloPoten.Value, SpinEditSecadorCabeloQtd.Value, SpinEditSecadorCabeloTempHD.Value,
      SpinEditSecadorCabeloComodos.Value);
        EditSecadorDeCabelokWh.Text := GastoSecadorDeCabelokWh;

      GastoComputadorkWh := TCalcularGasto.CalcularComputador(SpinEditComputadorPoten.Value, SpinEditComputadorQtd.Value, SpinEditComputadorTempHD.Value,
      SpinEditComputadorComodos.Value);
        EditComputadorkWh.Text := GastoComputadorkWh;

      GastoFerroDePassarkWh := TCalcularGasto.CalcularFerroDePassar(SpinEditFerroPassarPoten.Value, SpinEditFerroPassarQtd.Value, SpinEditFerroPassarTempHD.Value,
      SpinEditFerroPassarComodos.Value);
        EditFerroDePassarkWh.Text := GastoFerroDePassarkWh;

      GastoLampadakWh := TCalcularGasto.CalcularLampada(SpinEditLampadaPoten.Value, SpinEditLampadaQtd.Value, SpinEditLampadaTempHD.Value,
      SpinEditLampadaComodos.Value);
        EditLampadakWh.Text := GastoLampadakWh;

      GastoMicroondaskWh := TCalcularGasto.CalcularMicroondas(SpinEditMicroondasPoten.Value, SpinEditMicroondasQtd.Value, SpinEditMicroondasTempHD.Value,
      SpinEditMicroondasComodos.Value);
        EditMicroondaskWh.Text := GastoMicroondaskWh;

      TotalCustokWh := TCalcularGasto.CalcularTotal(GastoArCondicionadokWh, GastoVentiladorkWh, GastoTvkWh, GastoGeladeirakWh, GastoChuveirokWh, GastoSecadorDeCabelokWh,
        GastoComputadorkWh, GastoFerroDePassarkWh, GastoLampadakWh, GastoMicroondaskWh); // Colocar o que faltou aq
      EditTotalkWh.Text := TotalCustokWh;

      GastoEmDinheiroArCondicionado := TCalcularGasto.CalcularGastoEmDinheiro(GastoArCondicionadokWh);
      EditArCondicionadoCusto.Text := GastoEmDinheiroArCondicionado;
      
      GastoEmDinheiroVentilador := TCalcularGasto.CalcularGastoEmDinheiro(GastoVentiladorkWh);
      EditVentiladorCusto.Text := GastoEmDinheiroVentilador;
      
      GastoEmDinheiroTv := TCalcularGasto.CalcularGastoEmDinheiro(GastoTvkWh);
      EditTvCusto.Text := GastoEmDinheiroTv;
      
      GastoEmDinheiroGeladeira := TCalcularGasto.CalcularGastoEmDinheiro(GastoGeladeirakWh);
      EditGeladeiraCusto.Text := GastoEmDinheiroGeladeira;
      
      GastoEmDinheiroChuveiro := TCalcularGasto.CalcularGastoEmDinheiro(GastoChuveirokWh);
      EditChuveiroCusto.Text := GastoEmDinheiroChuveiro;
      
      GastoEmDinheiroSecadorDeCabelo := TCalcularGasto.CalcularGastoEmDinheiro(GastoSecadorDeCabelokWh);
      EditSecadorCabeloCusto.Text := GastoEmDinheiroSecadorDeCabelo;
      
      GastoEmDinheiroComputador := TCalcularGasto.CalcularGastoEmDinheiro(GastoComputadorkWh);
      EditComputadorCusto.Text := GastoEmDinheiroComputador;
      
      GastoEmDinheiroFerroDePassar := TCalcularGasto.CalcularGastoEmDinheiro(GastoFerroDePassarkWh);
      EditFerroPassarCusto.Text := GastoEmDinheiroFerroDePassar;
      
      GastoEmDinheiroLampada := TCalcularGasto.CalcularGastoEmDinheiro(GastoLampadakWh);
      EditLampadaCusto.Text := GastoEmDinheiroLampada;
      
      GastoEmDinheiroMicroondas := TCalcularGasto.CalcularGastoEmDinheiro(GastoMicroondaskWh);
      EditMicroondasCusto.Text := GastoEmDinheiroMicroondas;
      
      TotalCustoEmDinheiro := TCalcularGasto.CalcularTotal(GastoArCondicionadokWh, GastoVentiladorkWh, GastoTvkWh, GastoGeladeirakWh, GastoChuveirokWh, GastoSecadorDeCabelokWh,
        GastoComputadorkWh, GastoFerroDePassarkWh, GastoLampadakWh, GastoMicroondaskWh); 
      EditTotalCusto.Text := TotalCustoEmDinheiro;

      //Verificar porque não está somando
    finally
      TCalcularGasto.Free;
    end;
  end;


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
