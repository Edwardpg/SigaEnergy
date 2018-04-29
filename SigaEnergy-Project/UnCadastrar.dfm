object FrmCadastrar: TFrmCadastrar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastrar Eletrodom'#233'sticos'
  ClientHeight = 547
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxAparelhos: TGroupBox
    Left = 8
    Top = 58
    Width = 753
    Height = 481
    Caption = 'Aparelhos'
    Enabled = False
    TabOrder = 0
    object LabelArCondicionado: TLabel
      Left = 15
      Top = 65
      Width = 78
      Height = 13
      Caption = 'Ar Condicionado'
    end
    object LabelVentilador: TLabel
      Left = 15
      Top = 108
      Width = 48
      Height = 13
      Caption = 'Ventilador'
    end
    object LabelTv: TLabel
      Left = 15
      Top = 156
      Width = 12
      Height = 13
      Caption = 'Tv'
    end
    object LabelGeladeira: TLabel
      Left = 15
      Top = 196
      Width = 45
      Height = 13
      Caption = 'Geladeira'
    end
    object LabelChuveiro: TLabel
      Left = 15
      Top = 240
      Width = 43
      Height = 13
      Caption = 'Chuveiro'
    end
    object LabelSecadorCabelo: TLabel
      Left = 15
      Top = 283
      Width = 90
      Height = 13
      Caption = 'Secador de Cabelo'
    end
    object LabelComputador: TLabel
      Left = 17
      Top = 322
      Width = 59
      Height = 13
      Caption = 'Computador'
    end
    object LabelFerroPassar: TLabel
      Left = 15
      Top = 366
      Width = 76
      Height = 13
      Caption = 'Ferro de Passar'
    end
    object LabelLampada: TLabel
      Left = 15
      Top = 412
      Width = 43
      Height = 13
      Caption = 'L'#226'mpada'
    end
    object LabelMicroondas: TLabel
      Left = 15
      Top = 451
      Width = 54
      Height = 13
      Caption = 'Microondas'
    end
    object LabelPotencia: TLabel
      Left = 147
      Top = 21
      Width = 62
      Height = 13
      Caption = 'Potencia (W)'
    end
    object LabelTempoUsoHoraOuDia: TLabel
      Left = 327
      Top = 20
      Width = 86
      Height = 13
      Caption = 'Tempo horas / dia'
    end
    object LabelQtd: TLabel
      Left = 242
      Top = 20
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object LabelkWh: TLabel
      Left = 523
      Top = 20
      Width = 21
      Height = 13
      Caption = 'kWh'
    end
    object LabelCusto: TLabel
      Left = 616
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Custo R$'
    end
    object LabelComodosQtd: TLabel
      Left = 427
      Top = 20
      Width = 73
      Height = 13
      Caption = 'C'#244'modos (Qtd)'
    end
    object SpinEditArCondicionadoQtd: TSpinEdit
      Left = 246
      Top = 56
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object SpinEditVentiladorQtd: TSpinEdit
      Left = 247
      Top = 105
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object SpinEditTvQtd: TSpinEdit
      Left = 249
      Top = 153
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object SpinEditGeladeiraQtd: TSpinEdit
      Left = 248
      Top = 193
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object SpinEditChuveiroQtd: TSpinEdit
      Left = 249
      Top = 236
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object SpinEditSecadorCabeloQtd: TSpinEdit
      Left = 247
      Top = 281
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object SpinEditComputadorQtd: TSpinEdit
      Left = 250
      Top = 319
      Width = 46
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 0
    end
    object SpinEditFerroPassarQtd: TSpinEdit
      Left = 247
      Top = 363
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Value = 0
    end
    object SpinEditLampadaQtd: TSpinEdit
      Left = 247
      Top = 403
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 8
      Value = 0
    end
    object SpinEditMicroondasQtd: TSpinEdit
      Left = 250
      Top = 448
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 9
      Value = 0
    end
    object EditArCondicionadoCusto: TEdit
      Left = 616
      Top = 56
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 10
    end
    object EditVentiladorCusto: TEdit
      Left = 616
      Top = 106
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 11
    end
    object EditTvCusto: TEdit
      Left = 616
      Top = 153
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
    object Edit14: TEdit
      Left = 616
      Top = 193
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 13
    end
    object EditChuveiroCusto: TEdit
      Left = 616
      Top = 237
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 14
    end
    object EditSecadorCabeloCusto: TEdit
      Left = 616
      Top = 280
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 15
    end
    object EditComputadorCusto: TEdit
      Left = 616
      Top = 322
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 16
    end
    object EditFerroPassarCusto: TEdit
      Left = 616
      Top = 361
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 17
    end
    object EditlLampadaCusto: TEdit
      Left = 616
      Top = 403
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 18
    end
    object EditMicroondasCusto: TEdit
      Left = 616
      Top = 448
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 19
    end
    object EditArCondicionadokWh: TEdit
      Left = 522
      Top = 56
      Width = 70
      Height = 21
      TabOrder = 20
    end
    object EditVentiladorkWh: TEdit
      Left = 522
      Top = 106
      Width = 70
      Height = 21
      TabOrder = 21
    end
    object EditTvkWh: TEdit
      Left = 522
      Top = 153
      Width = 70
      Height = 21
      TabOrder = 22
    end
    object EditGeladeirakWh: TEdit
      Left = 522
      Top = 193
      Width = 70
      Height = 21
      TabOrder = 23
    end
    object EditChuveirokWh: TEdit
      Left = 522
      Top = 237
      Width = 70
      Height = 21
      TabOrder = 24
    end
    object EditkWh: TEdit
      Left = 522
      Top = 281
      Width = 70
      Height = 21
      TabOrder = 25
    end
    object EditComputadorkWh: TEdit
      Left = 522
      Top = 322
      Width = 70
      Height = 21
      TabOrder = 26
    end
    object EditFerroPassarkWh: TEdit
      Left = 522
      Top = 361
      Width = 70
      Height = 21
      TabOrder = 27
    end
    object EditlLampadakWh: TEdit
      Left = 522
      Top = 403
      Width = 70
      Height = 21
      TabOrder = 28
    end
    object EditMicroondaskWh: TEdit
      Left = 522
      Top = 448
      Width = 70
      Height = 21
      TabOrder = 29
    end
    object SpinEditArCondicionadoPoten: TSpinEdit
      Left = 159
      Top = 56
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 30
      Value = 0
    end
    object SpinEditVentiladorPoten: TSpinEdit
      Left = 159
      Top = 105
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 31
      Value = 0
    end
    object SpinEditTvPoten: TSpinEdit
      Left = 161
      Top = 153
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 32
      Value = 0
    end
    object SpinEditGeladeiraPoten: TSpinEdit
      Left = 160
      Top = 193
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 33
      Value = 0
    end
    object SpinEditChuveiroPoten: TSpinEdit
      Left = 161
      Top = 236
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 34
      Value = 0
    end
    object SpinEditSecadorCabeloPoten: TSpinEdit
      Left = 159
      Top = 281
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 35
      Value = 0
    end
    object SpinEditComputadorPoten: TSpinEdit
      Left = 161
      Top = 322
      Width = 46
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 36
      Value = 0
    end
    object SpinEditFerroPassarPoten: TSpinEdit
      Left = 159
      Top = 363
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 37
      Value = 0
    end
    object SpinEditLampadaPoten: TSpinEdit
      Left = 159
      Top = 403
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 38
      Value = 0
    end
    object SpinEditMicroondasPoten: TSpinEdit
      Left = 161
      Top = 448
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 39
      Value = 0
    end
    object SpinEditArCondicionadoTempoHD: TSpinEdit
      Left = 344
      Top = 56
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 40
      Value = 0
    end
    object SpinEditVentiladorTempHD: TSpinEdit
      Left = 343
      Top = 105
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 41
      Value = 0
    end
    object SpinEditTvTempHD: TSpinEdit
      Left = 345
      Top = 153
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 42
      Value = 0
    end
    object SpinEditGeladeiraTempHD: TSpinEdit
      Left = 344
      Top = 193
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 43
      Value = 0
    end
    object SpinEditChuveiroTempHD: TSpinEdit
      Left = 345
      Top = 235
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 44
      Value = 0
    end
    object SpinEditSecadorCabeloTempHD: TSpinEdit
      Left = 343
      Top = 280
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 45
      Value = 0
    end
    object SpinEditComputadorTempHD: TSpinEdit
      Left = 345
      Top = 322
      Width = 46
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 46
      Value = 0
    end
    object SpinEditFerroPassarTempHD: TSpinEdit
      Left = 343
      Top = 363
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 47
      Value = 0
    end
    object SpinEditlLampadaTempHD: TSpinEdit
      Left = 343
      Top = 403
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 48
      Value = 0
    end
    object SpinEditMicroondasTempHD: TSpinEdit
      Left = 344
      Top = 448
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 49
      Value = 0
    end
    object SpinEditArCondicionadoComodos: TSpinEdit
      Left = 432
      Top = 56
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 50
      Value = 0
    end
    object SpinEditVentiladorComodos: TSpinEdit
      Left = 431
      Top = 105
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 51
      Value = 0
    end
    object SpinEditTvComodos: TSpinEdit
      Left = 433
      Top = 153
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 52
      Value = 0
    end
    object SpinEditGeladeiraComodos: TSpinEdit
      Left = 432
      Top = 193
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 53
      Value = 0
    end
    object SpinEditChuveiroComodos: TSpinEdit
      Left = 433
      Top = 235
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 54
      Value = 0
    end
    object SpinEdiSecadorCabeloComodos: TSpinEdit
      Left = 431
      Top = 280
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 55
      Value = 0
    end
    object SpinEditComputadorComodos: TSpinEdit
      Left = 433
      Top = 322
      Width = 46
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 56
      Value = 0
    end
    object SpinEditFerroPassarComodos: TSpinEdit
      Left = 431
      Top = 363
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 57
      Value = 0
    end
    object SpinEditLampadaComodos: TSpinEdit
      Left = 431
      Top = 403
      Width = 50
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 58
      Value = 0
    end
    object SpinEditMicroondasComodos: TSpinEdit
      Left = 432
      Top = 448
      Width = 48
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 59
      Value = 0
    end
  end
  object RadioGroupTpSimulacao: TRadioGroup
    Left = 8
    Top = 8
    Width = 211
    Height = 41
    Caption = 'Tipo de Simula'#231#227'o'
    TabOrder = 1
  end
  object RadioBtnDiario: TRadioButton
    Left = 16
    Top = 24
    Width = 47
    Height = 17
    Caption = 'Di'#225'rio'
    TabOrder = 2
    OnClick = RadioBtnDiarioClick
  end
  object RadioButton2: TRadioButton
    Left = 67
    Top = 24
    Width = 60
    Height = 17
    Caption = 'Mensal'
    TabOrder = 3
    OnClick = RadioButton2Click
  end
  object RadioBtnPersonalizado: TRadioButton
    Left = 126
    Top = 24
    Width = 89
    Height = 17
    Caption = 'Personalizado'
    TabOrder = 4
    OnClick = RadioBtnPersonalizadoClick
  end
  object BtnCalcular: TBitBtn
    Left = 680
    Top = 8
    Width = 75
    Height = 44
    Caption = 'C'#225'lcular'
    TabOrder = 5
    OnClick = BtnCalcularClick
  end
end
