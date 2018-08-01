unit textdrawer;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics, fontloader, textliner;

procedure drawLinkValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawAtkValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawDefValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawScaleLeftValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: Integer);
procedure drawScaleRightValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: Integer);
procedure drawRaceValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawEffectValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawPendulumEffect(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawMTEffect(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);


implementation

procedure baseCanvasConfig(base: TPortableNetworkGraphic);
begin
  with base.Canvas do begin
    Pen.Color:= clBlack;
    Brush.Style:= bsClear;
  end;
end;

procedure drawLinkValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.LinkValue.Font;
    Font.Size:= afont.LinkValue.Size;
    TextOut(afont.LinkValue.X, afont.LinkValue.Y, value);
  end;
end;

procedure drawAtkValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.AtkValue.Font;
    Font.Size:= afont.AtkValue.Size;
    TextOut(afont.AtkValue.X, afont.AtkValue.Y, value);
  end;
end;

procedure drawDefValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.DefValue.Font;
    Font.Size:= afont.DefValue.Size;
    TextOut(afont.DefValue.X, afont.DefValue.Y, value);
  end;
end;

procedure drawScaleLeftValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: Integer);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.ScaleLeft.Font;
    Font.Size:= afont.ScaleLeft.Size;
    TextOut(afont.ScaleLeft.X, afont.ScaleLeft.Y, value.ToString);
  end;
end;

procedure drawScaleRightValue(base: TPortableNetworkGraphic;
  afont: TFontLoader; value: Integer);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.ScaleRight.Font;
    Font.Size:= afont.ScaleRight.Size;
    TextOut(afont.ScaleRight.X, afont.ScaleRight.Y, value.ToString);
  end;
end;

procedure drawRaceValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.RaceValue.Font;
    Font.Size:= afont.RaceValue.Size;
    TextOut(afont.RaceValue.X, afont.RaceValue.Y, value);
  end;
end;

procedure drawEffectValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
var
  lines: TStringArray;
  i: Integer;
  len: Integer;
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.EffectValue.Font;
    Font.Size:= afont.EffectValue.Size;
    lines := text2Lines(base.Canvas, value, afont.EffectValue.Right - afont.EffectValue.X);
    len := Length(lines);
    if (len > 7) then len := 7;
    for i:= 0 to len - 1 do begin
      TextOut(afont.EffectValue.X, afont.EffectValue.Y + afont.EffectValue.LineHeight * i, lines[i]);
    end;
  end;
end;

procedure drawPendulumEffect(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
var
  lines: TStringArray;
  i: Integer;
  len: Integer;
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.PendulumEffectValue.Font;
    Font.Size:= afont.PendulumEffectValue.Size;
    lines := text2Lines(base.Canvas, value, afont.PendulumEffectValue.Right - afont.PendulumEffectValue.X);
    len := Length(lines);
    if (len > 6) then len := 6;
    for i:= 0 to len - 1 do begin
      TextOut(afont.PendulumEffectValue.X, afont.PendulumEffectValue.Y + afont.PendulumEffectValue.LineHeight * i, lines[i]);
    end;
  end;
end;

procedure drawMTEffect(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
var
  lines: TStringArray;
  i: Integer;
  len: Integer;
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.MTEffect.Font;
    Font.Size:= afont.MTEffect.Size;
    lines := text2Lines(base.Canvas, value, afont.MTEffect.Right - afont.MTEffect.X);
    len := Length(lines);
    if (len > 10) then len := 10;
    for i:= 0 to len - 1 do begin
      TextOut(afont.MTEffect.X, afont.MTEffect.Y + afont.MTEffect.LineHeight * i, lines[i]);
    end;
  end;
end;

end.

