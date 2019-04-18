unit Snake.Pixel;

interface

uses
  System.Console, System.Types;

type
  PPixel = ^TPixel;
  TPixel = record
  strict private
    FForegroundColor: TConsoleColor;
    FForegroundColorCopy: TConsoleColor;
    FBackgroundColor: TConsoleColor;
    FXPos: Integer;
    FYPos: Integer;
    FValue: Char;
    FVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
  public
    constructor Create(AxPos, AyPos: Integer); overload;
    class operator Implicit(Point: TPoint): TPixel;
    class operator Equal(APixel: TPixel; APoint: TPoint): Boolean;
    class operator Equal(APixelLeft: TPixel; APixelRight: TPixel): Boolean;
    procedure SetPos(AxPos, AyPos: Integer);
    procedure Draw;

    property BackgroundColor: TConsoleColor read FBackgroundColor write FBackgroundColor;
    property ForegroundColor: TConsoleColor read FForegroundColor write FForegroundColor;
    property Value: Char read FValue write FValue;
    property Visible: Boolean read FVisible write SetVisible;
    property XPos: Integer read FXPos write FXPos;
    property YPos: Integer read FYPos write FYPos;
  end;

  { TPixel }
implementation

constructor TPixel.Create(AxPos, AyPos: Integer);
begin
  SetPos(AxPos, AyPos);
  FForegroundColor := TConsoleColor.Green;
  FBackgroundColor := TConsoleColor.Black;
  Visible := False;
end;

procedure TPixel.SetPos(AxPos, AyPos: Integer);
var
  OldVisible: Boolean;
begin
  OldVisible := Visible;

  try
    Visible := False;
  except

  end;

  FXPos := AxPos;
  FYPos := AyPos;

  if OldVisible then
    Visible := OldVisible;
end;

procedure TPixel.SetVisible(const Value: Boolean);
begin
  FVisible := Value;

  if FVisible then
    FForegroundColor := FForegroundColorCopy
  else
  begin
    FForegroundColorCopy := FForegroundColor;
    FForegroundColor := FBackgroundColor;
  end;

  Draw;
end;

procedure TPixel.Draw;
begin
  Console.SetCursorPosition(XPos, YPos);
  Console.ForegroundColor := FForegroundColor;
  Console.BackgroundColor := FBackgroundColor;
  Console.Write(FValue);
end;

class operator TPixel.Equal(APixel: TPixel; APoint: TPoint): Boolean;
begin
  Result := (APixel.XPos = APoint.X) and (APixel.YPos = APoint.Y);
end;

class operator TPixel.Equal(APixelLeft: TPixel; APixelRight: TPixel): Boolean;
begin
  Result := (APixelLeft.XPos = APixelRight.XPos) and (APixelLeft.YPos = APixelRight.YPos);
end;

class operator TPixel.Implicit(Point: TPoint): TPixel;
begin
  Result := TPixel.Create(Point.X, Point.Y);
end;

end.
