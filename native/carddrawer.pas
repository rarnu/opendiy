unit carddrawer;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, carddata, Graphics, sourceloader, fontloader, textdrawer;

type

  { TCardDrawer }

  TCardDrawer = class
  public
    class function drawCard(info: TCardData; src: TSources; font: TFontLoader): TPortableNetworkGraphic;
    class procedure drawCard(info: TCardData; src: TSources; font: TFontLoader; AFilePath: string);
  end;

implementation

{ TCardDrawer }

procedure drawLinkmark(base: TPortableNetworkGraphic; link: TLinkPositions; src: TSources; isMT: Boolean);
  procedure drawLinkmark(base: TPortableNetworkGraphic; src: TSources; isMT: Boolean; AIndex: Integer);
  var
    tmp: TPortableNetworkGraphic;
  begin
    tmp := TPortableNetworkGraphic.Create;
    if (isMT) then begin
      tmp.LoadFromFile(src.MTLinkMark[AIndex]);
    end else begin
      tmp.LoadFromFile(src.LinkMark[AIndex]);
    end;
    base.Canvas.Draw(0, 0, tmp);
    tmp.Free;
  end;
begin
  if (lp1 in link) then drawLinkmark(base, src, isMT, 1);
  if (lp2 in link) then drawLinkmark(base, src, isMT, 2);
  if (lp3 in link) then drawLinkmark(base, src, isMT, 3);
  if (lp4 in link) then drawLinkmark(base, src, isMT, 4);
  if (lp6 in link) then drawLinkmark(base, src, isMT, 6);
  if (lp7 in link) then drawLinkmark(base, src, isMT, 7);
  if (lp8 in link) then drawLinkmark(base, src, isMT, 8);
  if (lp9 in link) then drawLinkmark(base, src, isMT, 9);
end;

class function TCardDrawer.drawCard(info: TCardData; src: TSources; font: TFontLoader
  ): TPortableNetworkGraphic;
var
  p, tmp : TPortableNetworkGraphic;
  r: TRect;
begin
  p := TPortableNetworkGraphic.Create;
  p.LoadFromFile(src.Board);
  tmp:= TPortableNetworkGraphic.Create;
  if (FileExists(info.CardImage)) then begin
    tmp.LoadFromFile(info.CardImage);
    if (info.PendulumType = ptNone) then begin
      // normal
      if (info.IsStretch) then begin
        r := Rect(240, 600, 2130, 2480);
        p.Canvas.StretchDraw(r, tmp);
      end else begin
        p.Canvas.Draw(240, 600, tmp);
      end;
    end else begin
      // pendulum
      if (info.IsStretch) then begin
        r := Rect(120, 580, 2250, 2180);
        p.Canvas.StretchDraw(r, tmp);
      end else begin
        p.Canvas.Draw(120, 580, tmp);
      end;
    end;
  end;

  if (info.CardType = ctMonster) then begin
    if (info.PendulumType = ptNone) then begin
      tmp.LoadFromFile(src.Monster[monsterType2Int(info.MonsterType)]);
      p.Canvas.Draw(0, 0, tmp);
      tmp.LoadFromFile(src.Attribute[attribute2Int(info.Attribute)]);
      p.Canvas.Draw(0, 0, tmp);
      if (info.MonsterType <> otLink) then begin
        if (info.MonsterType <> otXyz) then begin
          // normal
          tmp.LoadFromFile(src.Level[info.CardLevel]);
          p.Canvas.Draw(0, 0, tmp);
        end else begin
          // xyz
          tmp.LoadFromFile(src.Rank[info.CardLevel]);
          p.Canvas.Draw(0, 0, tmp);
        end;
        drawDefValue(p, font, info.CardDef);
      end else begin
        // link
        drawLinkmark(p, info.LinkPosition, src, False);
        // link value
        drawLinkValue(p, font, info.LinkValue);
      end;
    end else begin
        // pendulum
      tmp.LoadFromFile(src.PendulumMonster[pendulumType2Int(info.PendulumType)]);
      p.Canvas.Draw(0, 0, tmp);
      tmp.LoadFromFile(src.Attribute[attribute2Int(info.Attribute)]);
      p.Canvas.Draw(0, 0, tmp);
      if (info.PendulumType <> ptXyz) then begin
        // pendulum normal
        tmp.LoadFromFile(src.Level[info.CardLevel]);
        p.Canvas.Draw(0, 0, tmp);
      end else begin
        // pendulum xyz
        tmp.LoadFromFile(src.Rank[info.CardLevel]);
        p.Canvas.Draw(0, 0, tmp);
      end;

      drawDefValue(p, font, info.CardDef);
      drawScaleLeftValue(p, font, info.CardScaleLeft);
      drawScaleRightValue(p, font, info.CardScaleRight);
      drawPendulumEffect(p, font, info.CardPendulumEffect);
      drawPendulumPackValue(p, font, info.CardPack);
    end;
    drawAtkValue(p, font, info.CardAtk);
    drawRaceValue(p, font, info.CardRace);
    drawEffectValue(p, font, info.CardEffect);

  end else begin
    if (info.IsLink) then begin
      // link magic and trap
      if (info.CardType = ctMagic) then begin
        tmp.LoadFromFile(src.MagicLink);
      end else begin
        tmp.LoadFromFile(src.TrapLink);
      end;
      p.Canvas.Draw(0, 0, tmp);
      drawLinkmark(p, info.LinkPosition, src, True);

    end else begin
      // normal magic and trap
      if (info.CardType = ctMagic) then begin
        tmp.LoadFromFile(src.Magic);
        p.Canvas.Draw(0, 0, tmp);
        tmp.LoadFromFile(src.MagicType[magicType2Int(info.MagicType)]);
        p.Canvas.Draw(0, 0, tmp);
      end else begin
        tmp.LoadFromFile(src.Trap);
        p.Canvas.Draw(0, 0, tmp);
        tmp.LoadFromFile(src.TrapType[trapType2Int(info.TrapType)]);
        p.Canvas.Draw(0, 0, tmp);
      end;

    end;
    drawMTEffect(p, font, info.CardEffect);
  end;

  if (info.PendulumType = ptNone) and (info.MonsterType <> otLink) and (not info.IsLink) then begin
    // not pendulum, not link monster, not link magic or trap
    drawPackValue(p, font, info.CardPack);
    drawTermValue(p, font, info.CardTerm);
  end;

  drawNameValue(p, font, info.CardName, info.RareType);
  drawPasswordValue(p, font, info.CardPassword);
  drawCopyrightValue(p, font, info.CardCopyright);

  if (info.FaceType = ftPR) then begin
    if (info.PendulumType = ptNone) then begin
      tmp.LoadFromFile(src.PR);
    end else begin
      tmp.LoadFromFile(src.PendulumPR);
    end;
    p.Canvas.Draw(0, 0, tmp);
  end;

  tmp.LoadFromFile(src.LicTypeMark[licType2Int(info.LicType)]);
  p.Canvas.Draw(0, 0, tmp);
  tmp.Free;

  Exit(p);
end;

class procedure TCardDrawer.drawCard(info: TCardData; src: TSources; font: TFontLoader;
  AFilePath: string);
var
  p: TPortableNetworkGraphic;
begin
  p := drawCard(info, src, font);
  p.SaveToFile(AFilePath);
  p.Free;
end;

end.

