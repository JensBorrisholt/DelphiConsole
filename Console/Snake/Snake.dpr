program Snake;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Snake.SnakeGame in 'Snake.SnakeGame.pas';


begin
  Randomize;
  with TSnakeGame.Create do
    try
      while True do
        Start;
    finally
      Free;
    end;
end.
