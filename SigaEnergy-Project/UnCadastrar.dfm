object FrmCadastrar: TFrmCadastrar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastrar Eletrodom'#233'sticos'
  ClientHeight = 547
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxAparelhos: TGroupBox
    Left = 8
    Top = 8
    Width = 753
    Height = 489
    Caption = 'Aparelhos'
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
      Width = 112
      Height = 11
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
      Left = 343
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
      Left = 473
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
      Left = 473
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 20
    end
    object EditVentiladorkWh: TEdit
      Left = 473
      Top = 106
      Width = 121
      Height = 21
      TabOrder = 21
    end
    object EditTvkWh: TEdit
      Left = 473
      Top = 153
      Width = 121
      Height = 21
      TabOrder = 22
    end
    object EditGeladeirakWh: TEdit
      Left = 473
      Top = 193
      Width = 121
      Height = 21
      TabOrder = 23
    end
    object EditChuveirokWh: TEdit
      Left = 473
      Top = 237
      Width = 121
      Height = 21
      TabOrder = 24
    end
    object EditkWh: TEdit
      Left = 473
      Top = 281
      Width = 121
      Height = 21
      TabOrder = 25
    end
    object EditComputadorkWh: TEdit
      Left = 473
      Top = 322
      Width = 121
      Height = 21
      TabOrder = 26
    end
    object EditFerroPassarkWh: TEdit
      Left = 473
      Top = 361
      Width = 121
      Height = 21
      TabOrder = 27
    end
    object EditlLampadakWh: TEdit
      Left = 473
      Top = 403
      Width = 121
      Height = 21
      TabOrder = 28
    end
    object EditMicroondaskWh: TEdit
      Left = 473
      Top = 448
      Width = 121
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
    object SpinEditlLampadaPoten: TSpinEdit
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
  end
end
