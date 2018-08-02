unit carddata;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpjson, jsonparser, jsonscanner;

type

  TCardType = (ctMonster, ctMagic, ctTrap);
  TMonsterType = (otNormal, otEffect, otRitual, otFusion, otSync, otXyz, otLink, otToken);
  TPendulumType = (ptNone, ptNormal, ptEffect, ptRitual, ptFusion, ptSync, ptXyz);
  TMagicType = (mtNone, mtNormal, mtCont, mtEquip, mtQuick, mtField, mtRitual);
  TTrapType = (ttNone, ttNormal, ttCont, ttCounter);
  TLicType = (lt1, lt2, lt3, lt4, lt5);
  TRareType = (rtBlack, rtWhite, rtSilver, rtGod, rtRed);
  TFaceType = (ftNone, ftPR);
  TLinkPosition = (lp1, lp2, lp3, lp4, lp6, lp7, lp8, lp9);
  TLinkPositions = set of TLinkPosition;

  TMonsterAttribute = (maGod, maLight, maDark, maWind, maFire, maWater, maEarth);

  { TCardData }

  TCardData = class

  private
    FAttribute: TMonsterAttribute;
    FCardAtk: string;
    FCardCopyright: string;
    FCardDef: string;
    FCardEffect: string;
    FCardImage: string;
    FCardLevel: Integer;
    FCardName: string;
    FCardPack: string;
    FCardPassword: string;
    FCardPendulumEffect: string;
    FCardRace: string;
    FCardScaleLeft: Integer;
    FCardScaleRight: Integer;
    FCardTerm: string;
    FCardType: TCardType;
    FFaceType: TFaceType;
    FIsCommented: Boolean;
    FIsLink: Boolean;
    FIsStretch: Boolean;
    FLicType: TLicType;
    FLinkPosition: TLinkPositions;
    FLinkValue: string;
    FMagicType: TMagicType;
    FMonsterType: TMonsterType;
    FPendulumType: TPendulumType;
    FRareType: TRareType;
    FTrapType: TTrapType;
  public
    class function fromJsonFile(AFilePath: string): TCardData;
    class function fromJsonString(AJsonString: string): TCardData;
    class function fromJson(AJson: TJSONObject): TCardData;
    procedure toJsonFile(AFilePath: string);
    constructor Create;
  public
    // card info property
    property CardType: TCardType read FCardType write FCardType;
    property IsLink: Boolean read FIsLink write FIsLink;
    property MonsterType: TMonsterType read FMonsterType write FMonsterType;
    property MagicType: TMagicType read FMagicType write FMagicType;
    property TrapType: TTrapType read FTrapType write FTrapType;
    property PendulumType: TPendulumType read FPendulumType write FPendulumType;
    property LicType: TLicType read FLicType write FLicType;
    property RareType: TRareType read FRareType write FRareType;
    property FaceType: TFaceType read FFaceType write FFaceType;
    property Attribute: TMonsterAttribute read FAttribute write FAttribute;
    property LinkPosition: TLinkPositions read FLinkPosition write FLinkPosition;
    // text property
    property CardName: string read FCardName write FCardName;
    property CardLevel: Integer read FCardLevel write FCardLevel;
    property CardPack: string read FCardPack write FCardPack;
    property CardCopyright: string read FCardCopyright write FCardCopyright;
    property CardPassword: string read FCardPassword write FCardPassword;
    property CardTerm: string read FCardTerm write FCardTerm;
    property CardRace: string read FCardRace write FCardRace;
    property CardEffect: string read FCardEffect write FCardEffect;
    property CardPendulumEffect: string read FCardPendulumEffect write FCardPendulumEffect;
    property CardScaleLeft: Integer read FCardScaleLeft write FCardScaleLeft;
    property CardScaleRight: Integer read FCardScaleRight write FCardScaleRight;
    property CardAtk: string read FCardAtk write FCardAtk;
    property CardDef: string read FCardDef write FCardDef;
    property LinkValue: string read FLinkValue write FLinkValue;
    property CardImage: string read FCardImage write FCardImage;
    property IsCommented: Boolean read FIsCommented write FIsCommented;
    property IsStretch: Boolean read FIsStretch write FIsStretch;
  end;

{$I cardconvh.inc}

implementation

{$I cardconv.inc}

{ TCardData }

class function TCardData.fromJsonFile(AFilePath: string): TCardData;
var
  str: string;
begin
  with TStringList.Create do begin
    LoadFromFile(AFilePath);
    str := Text;
    Free;
  end;
  Exit(fromJsonString(str));
end;

class function TCardData.fromJsonString(AJsonString: string): TCardData;
var
  parser: TJSONParser = nil;
  json: TJSONObject = nil;
  cd: TCardData = nil;
begin
  try
    try
      parser := TJSONParser.Create(AJsonString, [joUTF8]);
      json := TJSONObject(parser.Parse);
      cd := fromJson(json);
    except
    end;
  finally
    if (parser <> nil) then parser.Free;
    if (json <> nil) then json.Free;
  end;
  Exit(cd);
end;

class function TCardData.fromJson(AJson: TJSONObject): TCardData;
var
  cd: TCardData;
begin
  cd := TCardData.Create;
  cd.CardType:= int2CardType(AJson.Integers[KEY_CARDTYPE]);
  cd.IsLink:= AJson.Booleans[KEY_ISLINK];
  cd.MonsterType:= int2MonsterType(AJson.Integers[KEY_MONSTERTYPE]);
  cd.MagicType:= int2MagicType(AJson.Integers[KEY_MAGICTYPE]);
  cd.TrapType:= int2TrapType(AJson.Integers[KEY_TRAPTYPE]);
  cd.PendulumType:= int2PendulumType(AJson.Integers[KEY_PENDULUMTYPE]);
  cd.LicType:= int2LicType(AJson.Integers[KEY_LICTYPE]);
  cd.RareType:= int2RareType(AJson.Integers[KEY_RARETYPE]);
  cd.FaceType:= int2FaceType(AJson.Integers[KEY_FACETYPE]);
  cd.Attribute:= int2Attribute(AJson.Integers[KEY_ATTRIBUTE]);
  cd.LinkPosition:= int2LinkPosition(AJson.Integers[KEY_LINKPOSITION]);
  cd.CardName:= AJson.Strings[KEY_CARDNAME];
  cd.CardLevel:= AJson.Integers[KEY_CARDLEVEL];
  cd.CardPack:= AJson.Strings[KEY_CARDPACK];
  cd.CardCopyright:= AJson.Strings[KEY_COPYRIGHT];
  cd.CardPassword:= AJson.Strings[KEY_CARDPASSWWORD];
  cd.CardTerm:= AJson.Strings[KEY_CARDTERM];
  cd.CardRace:= AJson.Strings[KEY_CARDRACE];
  cd.CardEffect:= AJson.Strings[KEY_CARDEFFECT];
  cd.CardPendulumEffect:= AJson.Strings[KEY_CARDPENDULUMEFFECT];
  cd.CardScaleLeft:= AJson.Integers[KEY_CARDSCALELEFT];
  cd.CardScaleRight:= AJson.Integers[KEY_CARDSCALERIGHT];
  cd.CardAtk:= AJson.Strings[KEY_ATK];
  cd.CardDef:= AJson.Strings[KEY_DEF];
  cd.LinkValue:= AJson.Strings[KEY_LINKVALUE];
  cd.CardImage:= AJson.Strings[KEY_CARDIMAGE];
  cd.IsCommented:= AJson.Booleans[KEY_USE_COMMENT];
  cd.IsStretch:= AJson.Booleans[KEY_IMAGE_STRETCH];
  Exit(cd);
end;

procedure TCardData.toJsonFile(AFilePath: string);
var
  s: string;
begin
  s := '{';
  s += Format('"%s":%d,', [KEY_CARDTYPE, cardType2Int(FCardType)]);
  s += Format('"%s":%s,', [KEY_ISLINK, BoolToStr(FIsLink, True)]);
  s += Format('"%s":%d,', [KEY_MONSTERTYPE, monsterType2Int(FMonsterType)]);
  s += Format('"%s":%d,', [KEY_MAGICTYPE, magicType2Int(FMagicType)]);
  s += Format('"%s":%d,', [KEY_TRAPTYPE, trapType2Int(FTrapType)]);
  s += Format('"%s":%d,', [KEY_PENDULUMTYPE, pendulumType2Int(FPendulumType)]);
  s += Format('"%s":%d,', [KEY_LICTYPE, licType2Int(FLicType)]);
  s += Format('"%s":%d,', [KEY_RARETYPE, rareType2Int(FRareType)]);
  s += Format('"%s":%d,', [KEY_FACETYPE, faceType2Int(FFaceType)]);
  s += Format('"%s":%d,', [KEY_ATTRIBUTE, attribute2Int(FAttribute)]);
  s += Format('"%s":%d,', [KEY_LINKPOSITION, linkPosition2Int(FLinkPosition)]);
  s += Format('"%s":"%s",', [KEY_CARDNAME, FCardName]);
  s += Format('"%s":%d,', [KEY_CARDLEVEL, FCardLevel]);
  s += Format('"%s":"%s",', [KEY_CARDPACK, FCardPack]);
  s += Format('"%s":"%s",', [KEY_COPYRIGHT, FCardCopyright]);
  s += Format('"%s":"%s",', [KEY_CARDPASSWWORD, FCardPassword]);
  s += Format('"%s":"%s",', [KEY_CARDTERM, FCardTerm]);
  s += Format('"%s":"%s",', [KEY_CARDRACE, FCardRace]);
  s += Format('"%s":"%s",', [KEY_CARDEFFECT, FCardEffect]);
  s += Format('"%s":"%s",', [KEY_CARDPENDULUMEFFECT, FCardPendulumEffect]);
  s += Format('"%s":%d,', [KEY_CARDSCALELEFT, FCardScaleLeft]);
  s += Format('"%s":%d,', [KEY_CARDSCALERIGHT, FCardScaleRight]);
  s += Format('"%s":"%s",', [KEY_ATK, FCardAtk]);
  s += Format('"%s":"%s",', [KEY_DEF, FCardDef]);
  s += Format('"%s":"%s",', [KEY_LINKVALUE, FLinkValue]);
  s += Format('"%s":"%s",', [KEY_CARDIMAGE, FCardImage]);
  s += Format('"%s":%s,', [KEY_USE_COMMENT, BoolToStr(FIsCommented, True)]);
  s += Format('"%s":%s', [KEY_IMAGE_STRETCH, BoolToStr(FIsStretch, True)]);
  s += '}';
  with TStringList.Create do begin
    Text:= s;
    SaveToFile(AFilePath);
    Free;
  end;
end;

constructor TCardData.Create;
begin
  FAttribute:= maGod;
  FCardAtk:= '';
  FCardCopyright:= '©高桥和希 スタジオ·ダイス/集英社';
  FCardDef:= '';
  FCardEffect:= '';
  FCardLevel:= 0;
  FCardName:= '';
  FCardPack:= '';
  FCardPassword:= '';
  FCardPendulumEffect:= '';
  FCardRace:= '';
  FCardScaleLeft:= 0;
  FCardScaleRight:= 0;
  FCardTerm:= '';
  FCardType:= ctMonster;
  FFaceType:= ftNone;
  FIsLink:= False;
  FLicType:= lt1;
  FLinkPosition:= [];
  FMagicType:= mtNone;
  FMonsterType:= otNormal;
  FPendulumType:= ptNone;
  FRareType:= rtBlack;
  FTrapType:= ttNone;
  FIsCommented:= False;
  FLinkValue:= '';
  FCardImage:= '';
  FIsStretch:= False;
end;

end.

