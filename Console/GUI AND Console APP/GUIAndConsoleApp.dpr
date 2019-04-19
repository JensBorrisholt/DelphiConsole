program GUIAndConsoleApp;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {FormMain} ,
  System.Console in '..\System.Console.pas';

{$R *.res}

begin
  if Console.AttatchConsole then
  begin
    Console.WriteLine('Print text in current Console Window.');
  end
  else
  begin // Start GUI
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TFormMain, FormMain);
    Application.Run;
  end;

end.


