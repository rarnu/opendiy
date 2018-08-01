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
begin
  p := TPortableNetworkGraphic.Create;
  tmp:= TPortableNetworkGraphic.Create;
  if (info.CardType = ctMonster) then begin
    if (info.PendulumType = ptNone) then begin
      p.LoadFromFile(src.Monster[monsterType2Int(info.MonsterType)]);
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
      p.LoadFromFile(src.PendulumMonster[pendulumType2Int(info.PendulumType)]);
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
    end;
    drawAtkValue(p, font, info.CardAtk);
    drawRaceValue(p, font, info.CardRace);
    drawEffectValue(p, font, info.CardEffect);

  end else begin
    if (info.IsLink) then begin
      // link magic and trap
      if (info.CardType = ctMagic) then begin
        p.LoadFromFile(src.MagicLink);
      end else begin
        p.LoadFromFile(src.TrapLink);
      end;
      drawLinkmark(p, info.LinkPosition, src, True);

    end else begin
      // normal magic and trap
      if (info.CardType = ctMagic) then begin
        p.LoadFromFile(src.Magic);
        tmp.LoadFromFile(src.MagicType[magicType2Int(info.MagicType)]);
        p.Canvas.Draw(0, 0, tmp);
      end else begin
        p.LoadFromFile(src.Trap);
        tmp.LoadFromFile(src.TrapType[trapType2Int(info.TrapType)]);
        p.Canvas.Draw(0, 0, tmp);
      end;

    end;
    drawMTEffect(p, font, info.CardEffect);
  end;

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

