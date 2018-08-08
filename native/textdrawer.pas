unit textdrawer;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics, fontloader, textliner, carddata;

procedure drawLinkValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawAtkValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawDefValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawScaleLeftValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: Integer);
procedure drawScaleRightValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: Integer);
procedure drawRaceValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawEffectValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawPendulumEffect(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawMTEffect(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);

procedure drawPackValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawPendulumPackValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawTermValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawNameValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string; rare: TRareType);
procedure drawCopyrightValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);
procedure drawPasswordValue(base: TPortableNetworkGraphic; afont: TFontLoader; value: string);


implementation

procedure baseCanvasConfig(base: TPortableNetworkGraphic);
begin
  with base.Canvas do begin
    Font.Color:= clBlack;
    // Pen.Color:= clBlack;
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
var
  left: Integer;
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.ScaleLeft.Font;
    Font.Size:= afont.ScaleLeft.Size;
    left := afont.ScaleLeft.X;
    if (value.ToString.Length = 2) then left -= (afont.ScaleLeft.Size div 4);
    TextOut(left, afont.ScaleLeft.Y, value.ToString);
  end;
end;

procedure drawScaleRightValue(base: TPortableNetworkGraphic;
  afont: TFontLoader; value: Integer);
var
  left: Integer;
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.ScaleRight.Font;
    Font.Size:= afont.ScaleRight.Size;
    left := afont.ScaleRight.X;
    if (value.ToString.Length = 2) then left -= (afont.ScaleRight.Size div 4);
    TextOut(left, afont.ScaleRight.Y, value.ToString);
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

procedure drawPackValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.PackValue.Font;
    Font.Size:= afont.PackValue.Size;
    TextOut(afont.PackValue.Right - TextWidth(value), afont.PackValue.Y, value);
  end;
end;

procedure drawPendulumPackValue(base: TPortableNetworkGraphic;
  afont: TFontLoader; value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.PendulumPack.Font;
    Font.Size:= afont.PendulumPack.Size;
    TextOut(afont.PendulumPack.X, afont.PendulumPack.Y, value);
  end;
end;

procedure drawTermValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.TermValue.Font;
    Font.Size:= afont.TermValue.Size;
    Font.Style:= [fsBold];
    TextOut(afont.TermValue.X, afont.TermValue.Y, value);
  end;
end;

procedure drawNameValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string; rare: TRareType);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.NameValue.Font;
    Font.Size:= afont.NameValue.Size;
    case rare of
    rtBlack:
      begin
        Font.Color:= clBlack;
        TextOut(afont.NameValue.X, afont.NameValue.Y, value);
      end;
    rtWhite:
      begin
        Font.Color:= clWhite;
        TextOut(afont.NameValue.X, afont.NameValue.Y, value);
      end;
    rtSilver:
      begin
        Font.Color:= clSilver;
        TextOut(afont.NameValue.X, afont.NameValue.Y, value);
      end;
    rtGod:
      begin
        Font.Color:= RGBToColor(255, 215, 0);
        TextOut(afont.NameValue.X, afont.NameValue.Y, value);
      end;
    rtRed:
      begin
        Font.Color:= clMaroon;
        TextOut(afont.NameValue.X, afont.NameValue.Y, value);
      end;
    end;
  end;
end;

procedure drawCopyrightValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.CopyrightValue.Font;
    Font.Size:= afont.CopyrightValue.Size;
    TextOut(afont.CopyrightValue.Right - TextWidth(value), afont.CopyrightValue.Y, value);
  end;
end;

procedure drawPasswordValue(base: TPortableNetworkGraphic; afont: TFontLoader;
  value: string);
begin
  baseCanvasConfig(base);
  with base.Canvas do begin
    Font.Name:= afont.PasswordValue.Font;
    Font.Size:= afont.PasswordValue.Size;
    Font.Style := [fsBold];
    TextOut(afont.PasswordValue.X, afont.PasswordValue.Y, value);
  end;
end;

end.

