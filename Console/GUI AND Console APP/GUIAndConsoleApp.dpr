program GUIAndConsoleApp;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {FormMain} ,
  System.Console in '..\System.Console.pas';

{$R *.res}

begin
  if Console.IsAttached then
  begin
    Console.WriteLine('Print text in current Console Window.');

    if Console.IsAttached then
      Console.WriteLine('Attaching twice to the same console returns true')
    else
      Console.WriteLine('I''m sad');
  end
  else
  begin // Start GUI
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TFormMain, FormMain);
    Application.Run;
  end;

end.


