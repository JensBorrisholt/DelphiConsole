unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls;

type
  TFormMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses
  System.Console;
{$R *.dfm}

procedure TFormMain.Button1Click(Sender: TObject);
begin
  Console.AutoAllocateConsole := True;
  Console.AllocateConsole;
  Console.WriteLine('Russian for Good day: добры дзень');
  Console.Title := Console.ReadLine;

  Console.Clear;
  Console.WriteLine('Russian for Good day: добры дзень');
  Console.ReadLine;
  Console.FreeConsole;
end;

end.
