unit Snake.SnakeGame;

interface

uses
  System.Classes, System.Threading, System.Math, System.Types, System.SysUtils, System.Generics.Collections,

  System.Console, Snake.Pixel;

{$M+}
type
  TDirection = (Left, Right, Up, Down);

  TSnakeGame = class
  private
    Direction: TDirection;
    Alive: Boolean;
    FSnakePixels: TList<TPixel>;
    FBerry: TPixel;
    FDelay: Extended;
    FCurrentPos: TPoint;
    FForegroundColor: TConsoleColor;
    FBackgroundColor: TConsoleColor;
    function GetScore: Integer;
    procedure GameOver;
    procedure IncCurrentPos;
    procedure Play;
    procedure SetBackgroundColor(const Value: TConsoleColor);
    procedure SetForegroundColor(const Value: TConsoleColor);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Start;
  published
    property Score: Integer read GetScore;
    property BackgroundColor: TConsoleColor read FBackgroundColor write SetBackgroundColor;
    property ForegroundColor: TConsoleColor read FForegroundColor write SetForegroundColor;
  end;

implementation

{ TSnakeGame }

constructor TSnakeGame.Create;
begin
  inherited;
  FSnakePixels := TList<TPixel>.Create;
end;

destructor TSnakeGame.Destroy;
begin
  FSnakePixels.Free;
  inherited;
end;

procedure TSnakeGame.GameOver;

var
  SoundTask: ITask;
  ConsoleColor: TConsoleColor;
begin
  Console.BackgroundColor := TConsoleColor.Black;
  Console.Clear();

  SoundTask := TTask.Run(
    procedure
    const
      Frequencys: array [0 .. 5] of Integer = (2093, 1319, 1047, 1319, 1760, 1319);
    var

      Frequency: Integer;
    begin
      for Frequency in Frequencys do
        Console.Beep(Frequency, 260);

      Console.Beep(932, 260);
      Console.Beep(784, 260);

      for Frequency in Frequencys do
        Console.Beep(Frequency, 200);

      Console.Beep(831, 250);
      Console.Beep(785, 250);
    end);

  for ConsoleColor := low(TConsoleColor) to high(TConsoleColor) do
  begin
    Console.SetCursorPosition(0, 0);
    Console.ForegroundColor := ConsoleColor;
    Console.Clear();
    Console.WriteLine(sLineBreak + sLineBreak + sLineBreak + sLineBreak + sLineBreak);
    Console.WriteLine(sLineBreak + '                       Game over :(');
    Console.WriteLine(sLineBreak + sLineBreak + '                   Your score was: {0} !', [Score]);
    TThread.Sleep(100);
  end;

  SoundTask.Wait();
  Console.WriteLine(sLineBreak + sLineBreak + sLineBreak + sLineBreak + sLineBreak + sLineBreak + '             -- Press Any Key To Continue --');
  TThread.Sleep(500);
  Console.ReadKey(True);
  Console.ReadKey(True);
end;

procedure TSnakeGame.IncCurrentPos;
begin
  case Direction of
    Left:
      FCurrentPos.X := FCurrentPos.X - 1;
    Right:
      FCurrentPos.X := FCurrentPos.X + 1;
    Up:
      FCurrentPos.Y := FCurrentPos.Y - 1;
    Down:
      FCurrentPos.Y := FCurrentPos.Y + 1;
  end;

end;

function TSnakeGame.GetScore: Integer;
begin
  Result := FSnakePixels.Count - 8;
end;

procedure TSnakeGame.Play;

var
  Collide: Boolean;
  i: Integer;
  Pixel: TPixel;
begin
  while Alive do
  begin
    if not FBerry.Visible then
    begin
      Collide := False;

      FBerry.Visible := True;
      FBerry.SetPos(RandomRange(4, Console.WindowWidth - 4), RandomRange(4, Console.WindowHeight - 4));

      for Pixel in FSnakePixels do
        if Pixel = FBerry then
          Collide := True;

      if Collide then
        FBerry.Visible := False
      else
        FBerry.Draw;
    end;

    TThread.Sleep(Trunc(FDelay));

    if Console.KeyAvailable then
    begin
      case Console.ReadKey(True).Key of
        TConsoleKey.RightArrow:
          if Direction <> TDirection.Left then
            Direction := TDirection.Right;

        TConsoleKey.LeftArrow:
          if Direction <> TDirection.Right then
            Direction := TDirection.Left;

        TConsoleKey.UpArrow:
          if Direction <> TDirection.Down then
            Direction := TDirection.Up;

        TConsoleKey.DownArrow:
          if Direction <> TDirection.Up then
            Direction := TDirection.Down;
      end; // Inputs & direction
    end;

    IncCurrentPos;
    try
      FSnakePixels.Insert(0, FCurrentPos);
    except
      Alive := False;
    end;

    FSnakePixels.Last.Visible := False;
    FSnakePixels.Delete(FSnakePixels.Count - 1);

    for i := 0 to FSnakePixels.Count - 1 do
    begin
      Pixel := FSnakePixels[i];
      Pixel.Visible := False;

      try
        if i mod 2 = 0 then
        begin
          Pixel.BackgroundColor := TConsoleColor.DarkGreen;
          Pixel.ForegroundColor := FForegroundColor;
          Pixel.Value := '*';
        end
        else
        begin
          Pixel.BackgroundColor := TConsoleColor.Green;
          Pixel.ForegroundColor := FForegroundColor;
          Pixel.Value := ' ';
        end;

        if i = 0 then
        begin
          Pixel.BackgroundColor := TConsoleColor.Red;
          Pixel.ForegroundColor := FForegroundColor;
        end;

        Pixel.Visible := True;
      except
        Alive := False;
      end;
    end;

    if FBerry = FCurrentPos then
    begin
      FBerry.Visible := False;
      IncCurrentPos;
      FSnakePixels.Insert(0, FCurrentPos);
      FDelay := FDelay - (FDelay / 16);
      TTask.Run(
        procedure
        begin
          Console.Beep(320, 250)
        end);
    end;

    for i := FSnakePixels.Count - 1 downto 1 do
      if FSnakePixels[i] = FSnakePixels[0] then
        Alive := False;

    Console.SetCursorPosition(2, 2);
    Console.ForegroundColor := TConsoleColor.White;
    Console.BackgroundColor := TConsoleColor.Black;
    Console.Write('Score:  ' + Score.ToString);
  end;

  GameOver;
end;

procedure TSnakeGame.SetBackgroundColor(const Value: TConsoleColor);
begin
  FBackgroundColor := Value;
  Console.BackgroundColor := FBackgroundColor;
end;

procedure TSnakeGame.SetForegroundColor(const Value: TConsoleColor);
begin
  FForegroundColor := Value;
  Console.ForegroundColor := FForegroundColor;
end;

procedure TSnakeGame.Start;

var
  i: Integer;
begin
  FSnakePixels.Clear;

  Console.CursorVisible := False;
  Console.Title := 'Snaaaaake !';
  Console.SetWindowSize(56, 38);
  Console.SetBufferSize(Console.WindowWidth, Console.WindowHeight);

  ForegroundColor := TConsoleColor.Green;
  BackgroundColor := TConsoleColor.Black;
  Console.Clear;
  FDelay := 100;
  Direction := TDirection.Right;

  Alive := True;

  FBerry := TPixel.Create(0, 0);
  FBerry.ForegroundColor := TConsoleColor.Cyan;
  FBerry.BackgroundColor := FBackgroundColor;
  FBerry.Value := '#';
  FBerry.Visible := False;

  for i := 20 downto 13 do
    FSnakePixels.Add(TPixel.Create(i, 20));

  FCurrentPos := Point(20, 20);

  Play;
end;

end.
