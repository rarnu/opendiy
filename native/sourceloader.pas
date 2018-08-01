unit sourceloader;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TSources }

  TSources = class
  private
    FMonsterList: TStringList;
    FPendulumMonsterList: TStringList;
    FAttributeList: TStringList;
    FLevelList: TStringList;
    FRankList: TStringList;
    FLinkMarkList: TStringList;
    FMTLinkMarkList: TStringList;
    FMagic: string;
    FTrap: string;
    FMagicLink: string;
    FTrapLink: string;
    FMagicTypeList: TStringList;
    FTrapTypeList: TStringList;

    function GetAttribute(AIndex: Integer): string;
    function GetLevel(AIndex: Integer): string;
    function GetLinkMark(AIndex: Integer): string;
    function GetMagic: string;
    function GetMagicLink: string;
    function GetMagicType(AIndex: Integer): string;
    function GetMonster(AIndex: Integer): string;
    function GetMTLinkMark(AIndex: Integer): string;
    function GetPendulumMonster(AIndex: Integer): string;
    function GetRank(AIndex: Integer): string;
    function GetTrap: string;
    function GetTrapLink: string;
    function GetTrapType(AIndex: Integer): string;

  public
    constructor Create(APath: string); reintroduce;
    destructor Destroy; override;
    class function loadFromDir(APath: string): TSources;
  public
    property Monster[AIndex: Integer]: string read GetMonster;
    property PendulumMonster[AIndex: Integer]: string read GetPendulumMonster;
    property Attribute[AIndex: Integer]: string read GetAttribute;
    property Level[AIndex: Integer]: string read GetLevel;
    property Rank[AIndex: Integer]: string read GetRank;
    property LinkMark[AIndex: Integer]: string read GetLinkMark;
    property MTLinkMark[AIndex: Integer]: string read GetMTLinkMark;

    property Magic: string read GetMagic;
    property Trap: string read GetTrap;
    property MagicLink: string read GetMagicLink;
    property TrapLink: string read GetTrapLink;
    property MagicType[AIndex: Integer]: string read GetMagicType;
    property TrapType[AIndex: Integer]: string read GetTrapType;
  end;

implementation

{ TSources }


function TSources.GetMonster(AIndex: Integer): string;
begin
  Exit(FMonsterList[AIndex]);
end;

function TSources.GetMTLinkMark(AIndex: Integer): string;
begin
  Exit(FMTLinkMarkList[AIndex]);
end;

function TSources.GetAttribute(AIndex: Integer): string;
begin
  Exit(FAttributeList[AIndex]);
end;

function TSources.GetLevel(AIndex: Integer): string;
begin
  Exit(FLevelList[AIndex]);
end;

function TSources.GetLinkMark(AIndex: Integer): string;
begin
  Exit(FLinkMarkList[AIndex]);
end;

function TSources.GetMagic: string;
begin
  Exit(FMagic);
end;

function TSources.GetMagicLink: string;
begin
  Exit(FMagicLink);
end;

function TSources.GetMagicType(AIndex: Integer): string;
begin
  Exit(FMagicTypeList[AIndex]);
end;

function TSources.GetPendulumMonster(AIndex: Integer): string;
begin
  Exit(FPendulumMonsterList[AIndex]);
end;

function TSources.GetRank(AIndex: Integer): string;
begin
  Exit(FRankList[AIndex]);
end;

function TSources.GetTrap: string;
begin
  Exit(FTrap);
end;

function TSources.GetTrapLink: string;
begin
  Exit(FTrapLink);
end;

function TSources.GetTrapType(AIndex: Integer): string;
begin
  Exit(FTrapTypeList[AIndex]);
end;

constructor TSources.Create(APath: string);
begin
  if (not APath.EndsWith('/')) then APath += '/';
  FMonsterList := TStringList.Create;
  FMonsterList.Add(APath + 'monster_normal.png');
  FMonsterList.Add(APath + 'monster_effect.png');
  FMonsterList.Add(APath + 'monster_ritual.png');
  FMonsterList.Add(APath + 'monster_fusion.png');
  FMonsterList.Add(APath + 'monster_sync.png');
  FMonsterList.Add(APath + 'monster_xyz.png');
  FMonsterList.Add(APath + 'monster_link.png');
  FMonsterList.Add(APath + 'monster_token.png');

  FPendulumMonsterList := TStringList.Create;
  FPendulumMonsterList.Add(APath + 'empty.png');
  FPendulumMonsterList.Add(APath + 'monster_pendulum_normal.png');
  FPendulumMonsterList.Add(APath + 'monster_pendulum_effect.png');
  FPendulumMonsterList.Add(APath + 'monster_pendulum_ritual.png');
  FPendulumMonsterList.Add(APath + 'monster_pendulum_fusion.png');
  FPendulumMonsterList.Add(APath + 'monster_pendulum_sync.png');
  FPendulumMonsterList.Add(APath + 'monster_pendulum_xyz.png');

  FAttributeList:= TStringList.Create;
  FAttributeList.Add(APath + 'attr_god.png');
  FAttributeList.Add(APath + 'attr_light.png');
  FAttributeList.Add(APath + 'attr_dark.png');
  FAttributeList.Add(APath + 'attr_wind.png');
  FAttributeList.Add(APath + 'attr_fire.png');
  FAttributeList.Add(APath + 'attr_water.png');
  FAttributeList.Add(APath + 'attr_earth.png');

  FLevelList:= TStringList.Create;
  FLevelList.Add(APath + 'empty.png');
  FLevelList.Add(APath + 'level_1.png');
  FLevelList.Add(APath + 'level_2.png');
  FLevelList.Add(APath + 'level_3.png');
  FLevelList.Add(APath + 'level_4.png');
  FLevelList.Add(APath + 'level_5.png');
  FLevelList.Add(APath + 'level_6.png');
  FLevelList.Add(APath + 'level_7.png');
  FLevelList.Add(APath + 'level_8.png');
  FLevelList.Add(APath + 'level_9.png');
  FLevelList.Add(APath + 'level_10.png');
  FLevelList.Add(APath + 'level_11.png');
  FLevelList.Add(APath + 'level_12.png');

  FRankList:= TStringList.Create;
  FRankList.Add(APath + 'empty.png');
  FRankList.Add(APath + 'rank_1.png');
  FRankList.Add(APath + 'rank_2.png');
  FRankList.Add(APath + 'rank_3.png');
  FRankList.Add(APath + 'rank_4.png');
  FRankList.Add(APath + 'rank_5.png');
  FRankList.Add(APath + 'rank_6.png');
  FRankList.Add(APath + 'rank_7.png');
  FRankList.Add(APath + 'rank_8.png');
  FRankList.Add(APath + 'rank_9.png');
  FRankList.Add(APath + 'rank_10.png');
  FRankList.Add(APath + 'rank_11.png');
  FRankList.Add(APath + 'rank_12.png');

  FLinkMarkList:= TStringList.Create;
  FLinkMarkList.Add(APath + 'empty.png');
  FLinkMarkList.Add(APath + 'link_mark_1.png');
  FLinkMarkList.Add(APath + 'link_mark_2.png');
  FLinkMarkList.Add(APath + 'link_mark_3.png');
  FLinkMarkList.Add(APath + 'link_mark_4.png');
  FLinkMarkList.Add(APath + 'empty.png');
  FLinkMarkList.Add(APath + 'link_mark_6.png');
  FLinkMarkList.Add(APath + 'link_mark_7.png');
  FLinkMarkList.Add(APath + 'link_mark_8.png');
  FLinkMarkList.Add(APath + 'link_mark_9.png');

  FMTLinkMarkList:= TStringList.Create;
  FMTLinkMarkList.Add(APath + 'empty.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_1.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_2.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_3.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_4.png');
  FMTLinkMarkList.Add(APath + 'empty.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_6.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_7.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_8.png');
  FMTLinkMarkList.Add(APath + 'link_mark_mt_9.png');

  FMagic := APath + 'magic.png';
  FTrap:= APath + 'trap.png';
  FMagicLink:= APath + 'magic_link.png';
  FTrapLink:= APath + 'trap_link.png';

  FMagicTypeList := TStringList.Create;
  FMagicTypeList.Add(APath + 'empty.png');
  FMagicTypeList.Add(APath + 'magic_normal.png');
  FMagicTypeList.Add(APath + 'magic_cont.png');
  FMagicTypeList.Add(APath + 'magic_equip.png');
  FMagicTypeList.Add(APath + 'magic_quick.png');
  FMagicTypeList.Add(APath + 'magic_field.png');
  FMagicTypeList.Add(APath + 'magic_ritual.png');

  FTrapTypeList := TStringList.Create;
  FTrapTypeList.Add(APath + 'empty.png');
  FTrapTypeList.Add(APath + 'trap_normal.png');
  FTrapTypeList.Add(APath + 'trap_cont.png');
  FTrapTypeList.Add(APath + 'trap_counter.png');
end;

destructor TSources.Destroy;
begin
  FMonsterList.Free;
  FPendulumMonsterList.Free;
  FAttributeList.Free;
  FLevelList.Free;
  FRankList.Free;
  FLinkMarkList.Free;
  FMTLinkMarkList.Free;
  FMagicTypeList.Free;
  FTrapTypeList.Free;

  inherited Destroy;
end;

class function TSources.loadFromDir(APath: string): TSources;
begin
  Exit(TSources.Create(APath));
end;

end.

