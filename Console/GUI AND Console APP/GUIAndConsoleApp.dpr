program GUIAndConsoleApp;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {FormMain} ,
  System.SysUtils,
  System.Console in '..\System.Console.pas';

{$R *.res}

procedure RunInConsole(FromGUI: boolean);
begin
  Console.WriteLine('Print text in current Console Window.');

  if Console.IsAttached then
    Console.WriteLine('Attaching twice to the same console returns true')
  else
    Console.WriteLine('I''m sad');

  // If started from GUI prompt user to press a key
  if FromGUI then
  begin
    Console.Write('Press enter to exit');
    Console.ReadLine;
  end;
end;

procedure RunInGUI;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end;

begin
  // Autodetect if the app was started from console or windows
  if Console.IsAttached then
  begin
      // Forced into GUI mode via command line
    if FindCmdLineSwitch('gui') then
      RunInGUI
    else
      RunInConsole(false);
  end
  else
  begin
      // Forced into console mode via command line
    if FindCmdLineSwitch('console') then
    begin
      Console.AutoAllocateConsole := True;
      Console.AllocateConsole;
      RunInConsole(True);
    end
    else
      RunInGUI;
  end;

end.
