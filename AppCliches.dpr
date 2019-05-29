program AppCliches;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'uPrincipal.pas' {Principal},
  uEspecificacao in 'uEspecificacao.pas' {Especificacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TEspecificacao, Especificacao);
  Application.Run;
end.
