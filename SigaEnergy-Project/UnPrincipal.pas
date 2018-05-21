unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, UnAgradeicimentoAutor;

type
  TFrmSigaEnergy = class(TForm)
    BtnIrParaCadastro: TButton;
    ImageLogoSigaEnergy: TImage;
    Label1: TLabel;
    Label2: TLabel;
    LabelDownload: TLabel;
    Label3: TLabel;
    BtnConsultar: TBitBtn;
    LbGitHub: TLabel;
    BtnCreditos: TBitBtn;
    procedure BtnIrParaCadastroClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnCreditosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure LbGitHubClick(Sender: TObject);
    procedure LbGitHubMouseLeave(Sender: TObject);
    procedure LbGitHubMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private const
  FPerguntaAoSair = 'Deseja mesmo fechar a simulção de Gasto Siga Energy ?';
  FAgradecimento = 'Obrigado por utilizar o Siga Energy, faça um consumo consciente pois'
   + ' a econoimia fará um bem para todos!'+ sLineBreak +'OBRIGADO!';
  FNãoPermitirConsulta = 'Desculpa mas para efetuar uma consulta é necessário ' +
  'fazer um cadastro antes';
    procedure ConfirmaFechar;
    { Private declarations }
  public
    procedure CriarFormCadastrar;
    procedure CriarFormAutor;
  end;

var
  FrmSigaEnergy: TFrmSigaEnergy;

implementation

{$R *.dfm}

uses UnCadastrar, Winapi.ShellAPI, Winapi.UrlMon, System.UITypes;

{ TSigaEnergy }

procedure TFrmSigaEnergy.BtnConsultarClick(Sender: TObject);
begin
 MessageDlg(FNãoPermitirConsulta, mtError, mbOKCancel, 1);
end;

procedure TFrmSigaEnergy.BtnCreditosClick(Sender: TObject);
begin
  CriarFormAutor;
end;

procedure TFrmSigaEnergy.BtnIrParaCadastroClick(Sender: TObject);
begin
  CriarFormCadastrar;
end;

procedure TFrmSigaEnergy.ConfirmaFechar;
begin
 if Application.MessageBox(FPerguntaAoSair,'Saida Do Sistema', MB_YESNO) = idYes then
    ShowMessage(FAgradecimento)
  else
    Abort;
end;

procedure TFrmSigaEnergy.CriarFormAutor;
var
  NewForm : TFrmAutor;
begin
  NewForm := TFrmAutor.Create(self);
  try
  NewForm.ShowModal;
  finally
  NewForm.Free;
  end;
end;

procedure TFrmSigaEnergy.CriarFormCadastrar;
var
  NewForm : TFrmCadastrar;
begin
  NewForm := TFrmCadastrar.Create(self);
  try
  NewForm.ShowModal;
  finally
  NewForm.Free;
  end;
end;

procedure TFrmSigaEnergy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ConfirmaFechar;
end;

procedure TFrmSigaEnergy.FormShow(Sender: TObject);
begin
  BtnIrParaCadastro.SetFocus;
end;

procedure TFrmSigaEnergy.LbGitHubClick(Sender: TObject);
begin
  HlinkNavigateString(Nil, 'https://github.com/Edwardpg/SigaEnergy');
end;

procedure TFrmSigaEnergy.LbGitHubMouseLeave(Sender: TObject);
begin
    TLabel(Sender).Font.Color := clBlack;
    TLabel(Sender).Font.Style := [];
end;

procedure TFrmSigaEnergy.LbGitHubMouseMove(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clBlue;
  TLabel(Sender).Font.Style := [fsUnderline];
end;
end.
