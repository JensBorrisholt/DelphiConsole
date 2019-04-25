program WriteLineTest;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  System.Console in '..\System.Console.pas';

type
  TMyEnum = (me_One, me_Two, me_Three);

  TMyRecord = record
    A: Integer;
    b: Extended;
    c: string;
  end;

var
  Enums: array [0 .. 2] of TMyEnum;
  Enums2: array of TMyEnum;
  Enums3: set of TMyEnum;

const
  NegCurrFormats: array [0 .. 1, 0 .. 1, 0 .. 4] of byte = (((4, 5, 7, 6, 7), (15, 8, 10, 13, 10)), ((0, 1, 3, 1, 2), (14, 9, 11, 9, 12)));

procedure WriteHeader(aValue: string);
var
  s, t: string;
  i: Integer;
begin
  if aValue = '' then
    exit;

  s := StringOfChar('*', 40);
  t := s;
  aValue := ' ' + aValue + ' ';
  i := (Length(s) - Length(aValue)) div 2;

  Move(aValue[1], s[i], Length(aValue) * SizeOf(s[1]));

  if Console.CursorTop <> 0 then
    Console.WriteLine;

  Console.WriteLine(t);

  Console.WriteLine(s);
  Console.WriteLine(t);
end;

var
  aConsole: Console;
  MyRecord: TMyRecord;
  Obj: TObject;
begin
  try
    WriteHeader('String');
    Console.WriteLine('me_One');

    WriteHeader('Integer');
    Console.WriteLine(1);

    WriteHeader('Static array');
    Enums[0] := me_One;
    Enums[1] := me_Two;
    Enums[2] := me_Three;
    Console.WriteLine(Enums);

    WriteHeader('Empty array');
    Console.WriteLine(Enums2);

    WriteHeader('Dynamic Array');
    SetLength(Enums2, 2);
    Enums2[0] := me_One;
    Enums2[1] := me_Two;
    Console.WriteLine(Enums2);

    WriteHeader('Class reference');
    Console.WriteLine(Console);

    WriteHeader('Object (nil)');
    aConsole := nil;
    Console.WriteLine(aConsole);

    WriteHeader('Set');
    Enums3 := [me_One, me_Two, me_Three];
    Console.WriteLine(Enums3);

    WriteHeader('Float');
    Console.WriteLine(3.2);

    WriteHeader('DateTime');
    Console.WriteLine(Now);

    WriteHeader('Boolean');
    Console.WriteLine(True);

    WriteHeader('Multidimensional Array');
    Console.WriteLine(NegCurrFormats);

    WriteHeader('Object not nil');
    Obj := TObject.Create;
    try
      Console.WriteLine(Obj);
    finally
      Obj.Free;
    end;

    WriteHeader('Record');
    Console.WriteLine(MyRecord);
    Console.ReadLine;
  except
    on e: Exception do
      Writeln(e.ClassName, ': ', e.Message);
  end;

end.
