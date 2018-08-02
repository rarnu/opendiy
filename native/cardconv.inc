const
  KEY_CARDTYPE = 'cardtype';
  KEY_ISLINK = 'islink';
  KEY_MONSTERTYPE = 'monstertype';
  KEY_MAGICTYPE = 'magictype';
  KEY_TRAPTYPE = 'traptype';
  KEY_PENDULUMTYPE = 'pendulumtype';
  KEY_LICTYPE = 'lictype';
  KEY_RARETYPE = 'raretype';
  KEY_FACETYPE = 'facetype';
  KEY_ATTRIBUTE = 'attribute';
  KEY_LINKPOSITION = 'linkposition';

  KEY_CARDNAME = 'cardname';
  KEY_CARDLEVEL = 'cardlevel';
  KEY_CARDPACK = 'cardpack';
  KEY_COPYRIGHT = 'cardcopyright';
  KEY_CARDPASSWWORD = 'cardpassword';
  KEY_CARDTERM = 'cardterm';
  KEY_CARDRACE = 'cardrace';
  KEY_CARDEFFECT = 'cardeffect';
  KEY_CARDPENDULUMEFFECT = 'cardpendulumeffect';
  KEY_CARDSCALELEFT = 'cardscaleleft';
  KEY_CARDSCALERIGHT = 'cardscaleright';
  KEY_ATK = 'cardatk';
  KEY_DEF = 'carddef';
  KEY_LINKVALUE = 'linkvalue';
  KEY_CARDIMAGE = 'cardimage';

  KEY_USE_COMMENT = 'jpcomment';
  KEY_IMAGE_STRETCH = 'stretch';

function int2CardType(i: Integer): TCardType;
begin
  Result := ctMonster;
  case i of
  1: Result := ctMagic;
  2: Result := ctTrap;
  end;
end;

function cardType2Int(c: TCardType): Integer;
begin
  Result := 0;
  case c of
  ctMagic: Result := 1;
  ctTrap: Result := 2;
  end;
end;

function int2MonsterType(i: Integer): TMonsterType;
begin
  Result := otNormal;
  case i of
  1: Result := otEffect;
  2: Result := otRitual;
  3: Result := otFusion;
  4: Result := otSync;
  5: Result := otXyz;
  6: Result := otLink;
  7: Result := otToken;
  end;
end;

function monsterType2Int(m: TMonsterType): Integer;
begin
  Result := 0;
  case m of
  otEffect: Result := 1;
  otRitual: Result := 2;
  otFusion: Result := 3;
  otSync: Result := 4;
  otXyz: Result := 5;
  otLink: Result := 6;
  otToken: Result := 7;
  end;
end;

function int2MagicType(i: Integer): TMagicType;
begin
  Result := mtNone;
  case i of
  1: Result := mtNormal;
  2: Result := mtCont;
  3: Result := mtEquip;
  4: Result := mtQuick;
  5: Result := mtField;
  6: Result := mtRitual;
  end;
end;

function magicType2Int(m: TMagicType): Integer;
begin
  Result := 0;
  case m of
  mtNormal: Result := 1;
  mtCont: Result := 2;
  mtEquip: Result := 3;
  mtQuick: Result := 4;
  mtField: Result := 5;
  mtRitual: Result := 6;
  end;
end;

function int2TrapType(i: Integer): TTrapType;
begin
  Result := ttNone;
  case i of
  1: Result := ttNormal;
  2: Result := ttCont;
  3: Result := ttCounter;
  end;
end;

function trapType2Int(t: TTrapType): Integer;
begin
  Result := 0;
  case t of
  ttNormal: Result := 1;
  ttCont: Result := 2;
  ttCounter: Result := 3;
  end;
end;

function int2PendulumType(i: Integer): TPendulumType;
begin
  Result := ptNone;
  case i of
  1: Result := ptNormal;
  2: Result := ptEffect;
  3: Result := ptRitual;
  4: Result := ptFusion;
  5: Result := ptSync;
  6: Result := ptXyz;
  end;
end;

function pendulumType2Int(p: TPendulumType): Integer;
begin
  Result := 0;
  case p of
  ptNormal: Result := 1;
  ptEffect: Result := 2;
  ptRitual: Result := 3;
  ptFusion: Result := 4;
  ptSync: Result := 5;
  ptXyz: Result := 6;
  end;
end;

function int2LicType(i: Integer): TLicType;
begin
  Result := lt1;
  case i of
  1: Result := lt2;
  2: Result := lt3;
  3: Result := lt4;
  4: Result := lt5;
  end;
end;

function licType2Int(l: TLicType): Integer;
begin
  Result := 0;
  case l of
  lt2: Result := 1;
  lt3: Result := 2;
  lt4: Result := 3;
  lt5: Result := 4;
  end;
end;

function int2RareType(i: Integer): TRareType;
begin
  Result := rtBlack;
  case i of
  1: Result := rtWhite;
  2: Result := rtSilver;
  3: Result := rtGod;
  4: Result := rtRed;
  end;
end;

function rareType2Int(r: TRareType): Integer;
begin
  Result := 0;
  case r of
  rtWhite: Result := 1;
  rtSilver: Result := 2;
  rtGod: Result := 3;
  rtRed: Result := 4;
  end;

end;

function int2FaceType(i: Integer): TFaceType;
begin
  Result := ftNone;
  case i of
  1: Result := ftPR;
  end;
end;

function faceType2Int(f: TFaceType): Integer;
begin
  Result := 0;
  case f of
  ftPR: Result := 1;
  end;
end;

function int2Attribute(i: Integer): TMonsterAttribute;
begin
  Result := maGod;
  case i of
  1: Result := maLight;
  2: Result := maDark;
  3: Result := maWind;
  4: Result := maFire;
  5: Result := maWater;
  6: Result := maEarth;
  end;
end;

function attribute2Int(a: TMonsterAttribute): Integer;
begin
  Result := 0;
  case a of
  maLight: Result := 1;
  maDark: Result := 2;
  maWind: Result := 3;
  maFire: Result := 4;
  maWater: Result := 5;
  maEarth: Result := 6;
  end;
end;

function int2LinkPosition(i: Integer): TLinkPositions;
begin
  Result := [];
  if (i and 1) = 1 then Result += [lp1];
  if (i and 2) = 2 then Result += [lp2];
  if (i and 4) = 4 then Result += [lp3];
  if (i and 8) = 8 then Result += [lp4];
  if (i and 16) = 16 then Result += [lp6];
  if (i and 32) = 32 then Result += [lp7];
  if (i and 64) = 64 then Result += [lp8];
  if (i and 128) = 128 then Result += [lp9];
end;

function linkPosition2Int(l: TLinkPositions): Integer;
begin
  Result := 0;
  if (lp1 in l) then Result += 1;
  if (lp2 in l) then Result += 2;
  if (lp3 in l) then Result += 4;
  if (lp4 in l) then Result += 8;
  if (lp6 in l) then Result += 16;
  if (lp7 in l) then Result += 32;
  if (lp8 in l) then Result += 64;
  if (lp9 in l) then Result += 128;
end;


