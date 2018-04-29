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
    LabelGitHub: TLabel;
    Label3: TLabel;
    BtnConsultar: TBitBtn;
    LinkLabelGitHub: TLinkLabel;
    procedure BtnIrParaCadastroClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LinkLabelGitHubLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
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

uses UnCadastrar;

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

procedure TFrmSigaEnergy.LinkLabelGitHubLinkClick(Sender: TObject;
  const Link: string; LinkType: TSysLinkType);
begin
 {procedure TFrmPrincipal.LinkLabel1LinkClick(Sender: TObject; const Link: string;
LinkType: TSysLinkType);
begin
 Com o Comando ShellExecute, podemos executar a abertura do Brownser padrão no seu
 sistema operacional, e nele já abrir o link clicado
Aqui oque importa -> ShellExecute(0, nil, PChar(Link), nil, nil, 1);
      }
end;

end.
