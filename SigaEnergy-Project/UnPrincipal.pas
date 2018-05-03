unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons;

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
    procedure BtnIrParaCadastroClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LbGitHubClick(Sender: TObject);
    procedure LbGitHubMouseLeave(Sender: TObject);
    procedure LbGitHubMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private const
  FNãoPermitirConsulta = 'Desculpa mas para efetuar uma consulta é necessário ' +
  'fazer um cadastro antes';
    { Private declarations }
  public
    procedure CriarFormCadastrar;
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

procedure TFrmSigaEnergy.BtnIrParaCadastroClick(Sender: TObject);
begin
  CriarFormCadastrar;
end;

procedure TFrmSigaEnergy.CriarFormCadastrar;
var
  NewForm : TFrmCadastrar;
begin
  NewForm := TFrmCadastrar.Create(nil);
  try
  NewForm.ShowModal;
  finally
  NewForm.Free;
  end;

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
