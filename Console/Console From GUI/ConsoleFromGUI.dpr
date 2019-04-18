program ConsoleFromGUI;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {FormMain},
  System.Console in '..\System.Console.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
