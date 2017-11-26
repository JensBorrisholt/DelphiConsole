program TestConsoleApp;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  System.Console,
  System.Classes,
  System.StrUtils,
  System.RTTI;

var
  Command, CommandParameters: string;
  InputArray: TArray<string>;
begin
  Console.WriteLine('Welcome to test console app, type help to get some help!');

  while True do
  begin
    InputArray := Console.ReadLine.Split([' ']);

    if Length(InputArray) >= 1 then
      Command := InputArray[0].ToUpper
    else
      Command := string.Empty;

    if Length(InputArray) >= 2 then
      CommandParameters := InputArray[1].ToUpper
    else
      CommandParameters := string.Empty;


    case IndexStr(Command, ['EXIT', 'HELP', 'CLS', 'FORECOLOR', 'BACKCOLOR', 'BEEP']) of
      0:
        Exit;

      1:
        begin
          Console.WriteLine('- enter EXIT to exit this application');
          Console.WriteLine('- enter CLS to clear the screen');
          Console.WriteLine('- enter FORECOLOR value to change text fore color (sample: FORECOLOR Red) ');
          Console.WriteLine('- enter BACKCOLOR value to change text back color (sample: FORECOLOR Green) ');
          Console.WriteLine('- enter BEEP to the sound of a beep of a specified frequency and duration, (sample BEEP 220 400 ) ');
        end;

      2:
        Console.Clear();

      3:
        try
          Console.ForegroundColor := TRttiEnumerationType.GetValue<TConsoleColor>(CommandParameters);
        except
          Console.WriteLine('!!! Parameter not valid');
        end;

      4:
        try
          Console.BackgroundColor := TRttiEnumerationType.GetValue<TConsoleColor>(CommandParameters);
        except
          Console.WriteLine('!!! Parameter not valid');
        end;

        5:
        try
          Console.Beep(StrToint(InputArray[1]),  StrToint(InputArray[2]));
        except
          Console.WriteLine('!!! Parameter not valid');
        end;


      -1:
        Console.WriteLine('!!! Bad command');
    end;
  end;

end.
