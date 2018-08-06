unit fontloader;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IniFiles, Forms;

type

  TFontBase = class
  private
    FFont: string;
    FSize: Integer;
    FX: Integer;
    FY: Integer;
  public
    property Font: string read FFont write FFont;
    property X: Integer read FX write FX;
    property Y: Integer read FY write FY;
    property Size: Integer read FSize write FSize;
  end;

  { TRightFontBase }

  TRightFontBase = class(TFontBase)
  private
    FRight: Integer;
  public
    property Right: Integer read FRight write FRight;
  end;

  { TEffectValue }

  TEffectValue = class(TRightFontBase)
  private
    FLineHeight: Integer;
  public
    property LineHeight: Integer read FLineHeight write FLineHeight;
  end;

  { TFontLoader }

  TFontLoader = class
  private
    FAtkValue: TFontBase;
    FCopyrightValue: TRightFontBase;
    FDefValue: TFontBase;
    FEffectValue: TEffectValue;
    FLinkValue: TFontBase;
    FMTEffect: TEffectValue;
    FNameValue: TFontBase;
    FPackValue: TRightFontBase;
    FPasswordValue: TFontBase;
    FPendulumEffectValue: TEffectValue;
    FPendulumPack: TFontBase;
    FRaceValue: TFontBase;
    FScaleLeft: TFontBase;
    FScaleRight: TFontBase;
    FTermValue: TFontBase;
  public
    constructor Create(AUseComment: Boolean);
    destructor Destroy; override;
    class function validate(): Boolean;
  public
    property LinkValue: TFontBase read FLinkValue write FLinkValue;
    property AtkValue: TFontBase read FAtkValue write FAtkValue;
    property DefValue: TFontBase read FDefValue write FDefValue;
    property ScaleLeft: TFontBase read FScaleLeft write FScaleLeft;
    property ScaleRight: TFontBase read FScaleRight write FScaleRight;
    property RaceValue: TFontBase read FRaceValue write FRaceValue;
    property EffectValue: TEffectValue read FEffectValue write FEffectValue;
    property PendulumEffectValue: TEffectValue read FPendulumEffectValue write FPendulumEffectValue;
    property MTEffect: TEffectValue read FMTEffect write FMTEffect;
    property PackValue: TRightFontBase read FPackValue write FPackValue;
    property PendulumPack: TFontBase read FPendulumPack write FPendulumPack;
    property TermValue: TFontBase read FTermValue write FTermValue;
    property PasswordValue: TFontBase read FPasswordValue write FPasswordValue;
    property CopyrightValue: TRightFontBase read FCopyrightValue write FCopyrightValue;
    property NameValue: TFontBase read FNameValue write FNameValue;
  end;

  { TFontConfig }

  TFontConfig = class
  private
    ini: TIniFile;
    function GetAtkDefScale: string;
    function GetAtkDefSize: Integer;
    function GetAtkX: Integer;
    function GetAtkY: Integer;
    function GetCopyright: string;
    function GetCopyrightRight: Integer;
    function GetCopyrightSize: Integer;
    function GetCopyrightY: Integer;
    function GetDefX: Integer;
    function GetDefY: Integer;
    function GetEffectJp: string;
    function GetEffectLineHeight: Integer;
    function GetEffectRight: Integer;
    function GetEffectSize: Integer;
    function GetEffectX: Integer;
    function GetEffectY: Integer;
    function GetEffectZh: string;
    function GetLink: string;
    function GetLinkSize: Integer;
    function GetLinkX: Integer;
    function GetLinkY: Integer;
    function GetMTEffectLineHeight: Integer;
    function GetMTEffectRight: Integer;
    function GetMTEffectSize: Integer;
    function GetMTEffectX: Integer;
    function GetMTEffectY: Integer;
    function GetNameJp: string;
    function GetNameSize: Integer;
    function GetNameX: Integer;
    function GetNameY: Integer;
    function GetNameZh: string;
    function GetPackPass: string;
    function GetPackRight: Integer;
    function GetPackSize: Integer;
    function GetPackY: Integer;
    function GetPasswordSize: Integer;
    function GetPasswordX: Integer;
    function GetPasswordY: Integer;
    function GetPEffectLineHeight: Integer;
    function GetPEffectRight: Integer;
    function GetPEffectSize: Integer;
    function GetPEffectX: Integer;
    function GetPEffectY: Integer;
    function GetPPackSize: Integer;
    function GetPPackX: Integer;
    function GetPPackY: Integer;
    function GetRaceSize: Integer;
    function GetRaceX: integer;
    function GetRaceY: Integer;
    function GetScaleLeftX: Integer;
    function GetScaleLeftY: Integer;
    function GetScaleRightX: Integer;
    function GetScaleRightY: Integer;
    function GetScaleSize: Integer;
    function GetTerm: string;
    function GetTermSisz: Integer;
    function GetTermX: Integer;
    function GetTermY: Integer;
    procedure SetAtkDefScale(AValue: string);
    procedure SetAtkDefSize(AValue: Integer);
    procedure SetAtkX(AValue: Integer);
    procedure SetAtkY(AValue: Integer);
    procedure SetCopyright(AValue: string);
    procedure SetCopyrightRight(AValue: Integer);
    procedure SetCopyrightSize(AValue: Integer);
    procedure SetCopyrightY(AValue: Integer);
    procedure SetDefX(AValue: Integer);
    procedure SetDefY(AValue: Integer);
    procedure SetEffectJp(AValue: string);
    procedure SetEffectLineHeight(AValue: Integer);
    procedure SetEffectRight(AValue: Integer);
    procedure SetEffectSize(AValue: Integer);
    procedure SetEffectX(AValue: Integer);
    procedure SetEffectY(AValue: Integer);
    procedure SetEffectZh(AValue: string);
    procedure SetLink(AValue: string);
    procedure SetLinkSize(AValue: Integer);
    procedure SetLinkX(AValue: Integer);
    procedure SetLinkY(AValue: Integer);
    procedure SetMTEffectLineHeight(AValue: Integer);
    procedure SetMTEffectRight(AValue: Integer);
    procedure SetMTEffectSize(AValue: Integer);
    procedure SetMTEffectX(AValue: Integer);
    procedure SetMTEffectY(AValue: Integer);
    procedure SetNameJp(AValue: string);
    procedure SetNameSize(AValue: Integer);
    procedure SetNameX(AValue: Integer);
    procedure SetNameY(AValue: Integer);
    procedure SetNameZh(AValue: string);
    procedure SetPackPass(AValue: string);
    procedure SetPackRight(AValue: Integer);
    procedure SetPackSize(AValue: Integer);
    procedure SetPackY(AValue: Integer);
    procedure SetPasswordSize(AValue: Integer);
    procedure SetPasswordX(AValue: Integer);
    procedure SetPasswordY(AValue: Integer);
    procedure SetPEffectLineHeight(AValue: Integer);
    procedure SetPEffectRight(AValue: Integer);
    procedure SetPEffectSize(AValue: Integer);
    procedure SetPEffectX(AValue: Integer);
    procedure SetPEffectY(AValue: Integer);
    procedure SetPPackSize(AValue: Integer);
    procedure SetPPackX(AValue: Integer);
    procedure SetPPackY(AValue: Integer);
    procedure SetRaceSize(AValue: Integer);
    procedure SetRaceX(AValue: integer);
    procedure SetRaceY(AValue: Integer);
    procedure SetScaleLeftX(AValue: Integer);
    procedure SetScaleLeftY(AValue: Integer);
    procedure SetScaleRightX(AValue: Integer);
    procedure SetScaleRightY(AValue: Integer);
    procedure SetScaleSize(AValue: Integer);
    procedure SetTerm(AValue: string);
    procedure SetTermSisz(AValue: Integer);
    procedure SetTermX(AValue: Integer);
    procedure SetTermY(AValue: Integer);
  public
    constructor Create;
    destructor Destroy; override;
  public
    property Link: string read GetLink write SetLink;
    property LinkX: Integer read GetLinkX write SetLinkX;
    property LinkY: Integer read GetLinkY write SetLinkY;
    property LinkSize: Integer read GetLinkSize write SetLinkSize;

    property AtkDefScale: string read GetAtkDefScale write SetAtkDefScale;
    property AtkDefSize: Integer read GetAtkDefSize write SetAtkDefSize;
    property ScaleSize: Integer read GetScaleSize write SetScaleSize;
    property AtkX: Integer read GetAtkX write SetAtkX;
    property AtkY: Integer read GetAtkY write SetAtkY;
    property DefX: Integer read GetDefX write SetDefX;
    property DefY: Integer read GetDefY write SetDefY;
    property ScaleLeftX: Integer read GetScaleLeftX write SetScaleLeftX;
    property ScaleLeftY: Integer read GetScaleLeftY write SetScaleLeftY;
    property ScaleRightX: Integer read GetScaleRightX write SetScaleRightX;
    property ScaleRightY: Integer read GetScaleRightY write SetScaleRightY;

    // effect
    property EffectJp: string read GetEffectJp write SetEffectJp;
    property EffectZh: string read GetEffectZh write SetEffectZh;

    property EffectX: Integer read GetEffectX write SetEffectX;
    property EffectY: Integer read GetEffectY write SetEffectY;
    property EffectRight: Integer read GetEffectRight write SetEffectRight;
    property EffectSize: Integer read GetEffectSize write SetEffectSize;
    property EffectLineHeight: Integer read GetEffectLineHeight write SetEffectLineHeight;

    // pendulum effect
    property PEffectX: Integer read GetPEffectX write SetPEffectX;
    property PEffectY: Integer read GetPEffectY write SetPEffectY;
    property PEffectRight: Integer read GetPEffectRight write SetPEffectRight;
    property PEffectSize: Integer read GetPEffectSize write SetPEffectSize;
    property PEffectLineHeight: Integer read GetPEffectLineHeight write SetPEffectLineHeight;

    // mt effect
    property MTEffectX: Integer read GetMTEffectX write SetMTEffectX;
    property MTEffectY: Integer read GetMTEffectY write SetMTEffectY;
    property MTEffectRight: Integer read GetMTEffectRight write SetMTEffectRight;
    property MTEffectSize: Integer read GetMTEffectSize write SetMTEffectSize;
    property MTEffectLineHeight: Integer read GetMTEffectLineHeight write SetMTEffectLineHeight;

    // race
    property RaceX: integer read GetRaceX write SetRaceX;
    property RaceY: Integer read GetRaceY write SetRaceY;
    property RaceSize: Integer read GetRaceSize write SetRaceSize;

    // name
    property NameJp: string read GetNameJp write SetNameJp;
    property NameZh: string read GetNameZh write SetNameZh;
    property NameX: Integer read GetNameX write SetNameX;
    property NameY: Integer read GetNameY write SetNameY;
    property NameSize: Integer read GetNameSize write SetNameSize;

    // pack
    property PackPass: string read GetPackPass write SetPackPass;
    property PackY: Integer read GetPackY write SetPackY;
    property PackRight: Integer read GetPackRight write SetPackRight;
    property PackSize: Integer read GetPackSize write SetPackSize;

    // pendulum pack
    property PPackX: Integer read GetPPackX write SetPPackX;
    property PPackY: Integer read GetPPackY write SetPPackY;
    property PPackSize: Integer read GetPPackSize write SetPPackSize;

    // password
    property PasswordX: Integer read GetPasswordX write SetPasswordX;
    property PasswordY: Integer read GetPasswordY write SetPasswordY;
    property PasswordSize: Integer read GetPasswordSize write SetPasswordSize;

    // term
    property Term: string read GetTerm write SetTerm;
    property TermX: Integer read GetTermX write SetTermX;
    property TermY: Integer read GetTermY write SetTermY;
    property TermSisz: Integer read GetTermSisz write SetTermSisz;

    // copyright
    property Copyright: string read GetCopyright write SetCopyright;
    property CopyrightY: Integer read GetCopyrightY write SetCopyrightY;
    property CopyrightRight: Integer read GetCopyrightRight write SetCopyrightRight;
    property CopyrightSize: Integer read GetCopyrightSize write SetCopyrightSize;

  end;

implementation

const
  SEC_CONFIG = 'Config';
  KEY_FONT_LINK = 'link';
  KEY_FONT_LINK_X = 'link_x';
  KEY_FONT_LINK_Y = 'link_y';
  KEY_FONT_LINK_SIZE = 'link_size';

  KEY_FONT_ATKDEFSCALE = 'atkdefscale';
  KEY_FONT_ATKDEF_SIZE = 'atkdek_size';
  KEY_FONT_SCALE_SIZE = 'cale_size';
  KEY_FONT_ATK_X = 'atk_x';
  KEY_FONT_ATK_Y = 'atk_y';
  KEY_FONT_DEF_X = 'def_x';
  KEY_FONT_DEF_Y = 'def_y';
  KEY_FONT_SCALE_LEFT_X = 'scale_left_x';
  KEY_FONT_SCALE_LEFT_Y = 'scale_left_y';
  KEY_FONT_SCALE_RIGHT_X = 'scale_right_x';
  KEY_FONT_SCALE_RIGHT_Y = 'scale_right_y';

  KEY_FONT_EFFECT_JP = 'effectjp';
  KEY_FONT_EFFECT_ZH = 'effectzh';

  KEY_FONT_RACE_X = 'race_x';
  KEY_FONT_RACE_Y = 'race_y';
  KEY_FONT_RACE_SIZE = 'race_size';

  KEY_FONT_EFFECT_X = 'effect_x';
  KEY_FONT_EFFECT_Y = 'effect_y';
  KEY_FONT_EFFECT_RIGHT = 'effect_right';
  KEY_FONT_EFFECT_SIZE = 'effect_size';
  KEY_FONT_EFFECT_LINEHEIGHT = 'effect_lineheight';

  KEY_FONT_PEFFECT_X = 'peffect_x';
  KEY_FONT_PEFFECT_Y = 'peffect_y';
  KEY_FONT_PEFFECT_RIGHT = 'peffect_right';
  KEY_FONT_PEFFECT_SIZE = 'peffect_size';
  KEY_FONT_PEFFECT_LINEHEIGHT = 'peffect_lineheight';

  KEY_FONT_MTEFFECT_X = 'mteffect_x';
  KEY_FONT_MTEFFECT_Y = 'mteffect_y';
  KEY_FONT_MTEFFECT_RIGHT = 'mteffect_right';
  KEY_FONT_MTEFFECT_SIZE = 'mteffect_size';
  KEY_FONT_MTEFFECT_LINEHEIGHT = 'mteffect_lineheight';

  KEY_FONT_NAME_JP = 'namejp';
  KEY_FONT_NAME_ZH = 'namezh';
  KEY_FONT_NAME_X = 'name_x';
  KEY_FONT_NAME_Y = 'name_y';
  KEY_FONT_NAME_SIZE = 'name_size';

  KEY_FONT_PACKPASS = 'packpass';
  KEY_FONT_PACK_RIGHT = 'pack_right';
  KEY_FONT_PACK_Y = 'pack_y';
  KEY_FONT_PACK_SIZE = 'pack_size';

  KEY_FONT_PPACK_X = 'ppack_x';
  KEY_FONT_PPACK_Y = 'ppack_y';
  KEY_FONT_PPACK_SIZE = 'ppack_size';

  KEY_FONT_PASSWORD_X = 'password_X';
  KEY_FONT_PASSWORD_Y = 'password_y';
  KEY_FONT_PASSWORD_SIZE = 'password_size';

  KEY_FONT_TERM = 'term';
  KEY_FONT_TERM_X = 'term_x';
  KEY_FONT_TERM_Y = 'term_y';
  KEY_FONT_TERM_SIZE = 'term_size';

  KEY_FONT_COPYRIGHT = 'copyright';
  KEY_FONT_COPYRIGHT_Y = 'copyright_y';
  KEY_FONT_COPYRIGHT_RIGHT = 'copyright_right';
  KEY_FONT_COPYRIGHT_SIZE = 'copyright_size';

{ TFontConfig }

function TFontConfig.GetLink: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_LINK, 'EurostileCandyW01-Semibold'));
end;

function TFontConfig.GetAtkDefScale: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_ATKDEFSCALE, 'MatrixBoldSmallCaps'));
end;

function TFontConfig.GetAtkDefSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_ATKDEF_SIZE, 95));
end;

function TFontConfig.GetAtkX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_ATK_X, 1490));
end;

function TFontConfig.GetAtkY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_ATK_Y, 3182));
end;

function TFontConfig.GetCopyright: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_COPYRIGHT, 'Yugioh Copyright'));
end;

function TFontConfig.GetCopyrightRight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_RIGHT, 2170));
end;

function TFontConfig.GetCopyrightSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_SIZE, 54));
end;

function TFontConfig.GetCopyrightY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_Y, 3321));
end;

function TFontConfig.GetDefX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_DEF_X, 1980));
end;

function TFontConfig.GetDefY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_DEF_Y, 3182));
end;

function TFontConfig.GetEffectJp: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_JP, 'YGODIY-JP'));
end;

function TFontConfig.GetEffectLineHeight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_LINEHEIGHT, 64));
end;

function TFontConfig.GetEffectRight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_RIGHT, 2210));
end;

function TFontConfig.GetEffectSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_SIZE, 64));
end;

function TFontConfig.GetEffectX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_X, 154));
end;

function TFontConfig.GetEffectY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_Y, 2702));
end;

function TFontConfig.GetEffectZh: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_ZH, 'DFPLiShuW5-B5'));
end;

function TFontConfig.GetLinkSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_LINK_SIZE, 92));
end;

function TFontConfig.GetLinkX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_LINK_X, 2111));
end;

function TFontConfig.GetLinkY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_LINK_Y, 3170));
end;

function TFontConfig.GetMTEffectLineHeight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_LINEHEIGHT, 64));
end;

function TFontConfig.GetMTEffectRight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_RIGHT, 2210));
end;

function TFontConfig.GetMTEffectSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_SIZE, 64));
end;

function TFontConfig.GetMTEffectX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_X, 154));
end;

function TFontConfig.GetMTEffectY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_Y, 2622));
end;

function TFontConfig.GetNameJp: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_NAME_JP, 'YGODIY-JP'));
end;

function TFontConfig.GetNameSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_NAME_SIZE, 160));
end;

function TFontConfig.GetNameX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_NAME_X, 160));
end;

function TFontConfig.GetNameY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_NAME_Y, 186));
end;

function TFontConfig.GetNameZh: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_NAME_ZH, 'DFLeiSho-SB'));
end;

function TFontConfig.GetPackPass: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_PACKPASS, 'ITC Stone Serif'));
end;

function TFontConfig.GetPackRight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PACK_RIGHT, 2130));
end;

function TFontConfig.GetPackSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PACK_SIZE, 65));
end;

function TFontConfig.GetPackY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PACK_Y, 2504));
end;

function TFontConfig.GetPasswordSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PASSWORD_SIZE, 72));
end;

function TFontConfig.GetPasswordX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PASSWORD_X, 90));
end;

function TFontConfig.GetPasswordY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PASSWORD_Y, 3326));
end;

function TFontConfig.GetPEffectLineHeight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_LINEHEIGHT, 58));
end;

function TFontConfig.GetPEffectRight: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_RIGHT, 2020));
end;

function TFontConfig.GetPEffectSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_SIZE, 56));
end;

function TFontConfig.GetPEffectX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_X, 350));
end;

function TFontConfig.GetPEffectY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_Y, 2200));
end;

function TFontConfig.GetPPackSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PPACK_SIZE, 65));
end;

function TFontConfig.GetPPackX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PPACK_X, 190));
end;

function TFontConfig.GetPPackY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_PPACK_Y, 3195));
end;

function TFontConfig.GetRaceSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_RACE_SIZE, 76));
end;

function TFontConfig.GetRaceX: integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_RACE_X, 152));
end;

function TFontConfig.GetRaceY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_RACE_Y, 2622));
end;

function TFontConfig.GetScaleLeftX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_LEFT_X, 192));
end;

function TFontConfig.GetScaleLeftY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_LEFT_Y, 2390));
end;

function TFontConfig.GetScaleRightX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_RIGHT_X, 2110));
end;

function TFontConfig.GetScaleRightY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_RIGHT_Y, 2390));
end;

function TFontConfig.GetScaleSize: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_SIZE, 150));
end;

function TFontConfig.GetTerm: string;
begin
  Exit(ini.ReadString(SEC_CONFIG, KEY_FONT_TERM, 'BankGothic Md BT'));
end;

function TFontConfig.GetTermSisz: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_TERM_SIZE, 80));
end;

function TFontConfig.GetTermX: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_TERM_X, 240));
end;

function TFontConfig.GetTermY: Integer;
begin
  Exit(ini.ReadInteger(SEC_CONFIG, KEY_FONT_TERM_Y, 2490));
end;

procedure TFontConfig.SetAtkDefScale(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_ATKDEFSCALE, AValue);
end;

procedure TFontConfig.SetAtkDefSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_ATKDEF_SIZE, AValue);
end;

procedure TFontConfig.SetAtkX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_ATK_X, AValue);
end;

procedure TFontConfig.SetAtkY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_ATK_Y, AValue);
end;

procedure TFontConfig.SetCopyright(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_COPYRIGHT, AValue);
end;

procedure TFontConfig.SetCopyrightRight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_RIGHT, AValue);
end;

procedure TFontConfig.SetCopyrightSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_SIZE, AValue);
end;

procedure TFontConfig.SetCopyrightY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_Y, AValue);
end;

procedure TFontConfig.SetDefX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_DEF_X, AValue);
end;

procedure TFontConfig.SetDefY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_DEF_Y, AValue);
end;

procedure TFontConfig.SetEffectJp(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_EFFECT_JP, AValue);
end;

procedure TFontConfig.SetEffectLineHeight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_EFFECT_LINEHEIGHT, AValue);
end;

procedure TFontConfig.SetEffectRight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_EFFECT_RIGHT, AValue);
end;

procedure TFontConfig.SetEffectSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_EFFECT_SIZE, AValue);
end;

procedure TFontConfig.SetEffectX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_EFFECT_X, AValue);
end;

procedure TFontConfig.SetEffectY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_EFFECT_Y, AValue);
end;

procedure TFontConfig.SetEffectZh(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_EFFECT_ZH, AValue);
end;

procedure TFontConfig.SetLink(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_LINK, AValue);
end;

procedure TFontConfig.SetLinkSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_LINK_SIZE, AValue);
end;

procedure TFontConfig.SetLinkX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_LINK_X, AValue);
end;

procedure TFontConfig.SetLinkY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_LINK_Y, AValue);
end;

procedure TFontConfig.SetMTEffectLineHeight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_LINEHEIGHT, AValue);
end;

procedure TFontConfig.SetMTEffectRight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_RIGHT, AValue);
end;

procedure TFontConfig.SetMTEffectSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_SIZE, AValue);
end;

procedure TFontConfig.SetMTEffectX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_X, AValue);
end;

procedure TFontConfig.SetMTEffectY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_Y, AValue);
end;

procedure TFontConfig.SetNameJp(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_NAME_JP, AValue);
end;

procedure TFontConfig.SetNameSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_NAME_SIZE, AValue);
end;

procedure TFontConfig.SetNameX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_NAME_X, AValue);
end;

procedure TFontConfig.SetNameY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_NAME_Y, AValue);
end;

procedure TFontConfig.SetNameZh(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_NAME_ZH, AValue);
end;

procedure TFontConfig.SetPackPass(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_PACKPASS, AValue);
end;

procedure TFontConfig.SetPackRight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PACK_RIGHT, AValue);
end;

procedure TFontConfig.SetPackSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PACK_SIZE, AValue);
end;

procedure TFontConfig.SetPackY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PACK_Y, AValue);
end;

procedure TFontConfig.SetPasswordSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PASSWORD_SIZE, AValue);
end;

procedure TFontConfig.SetPasswordX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PASSWORD_X, AValue);
end;

procedure TFontConfig.SetPasswordY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PASSWORD_Y, AValue);
end;

procedure TFontConfig.SetPEffectLineHeight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PEFFECT_LINEHEIGHT, AValue);
end;

procedure TFontConfig.SetPEffectRight(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PEFFECT_RIGHT, AValue);
end;

procedure TFontConfig.SetPEffectSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PEFFECT_SIZE, AValue);
end;

procedure TFontConfig.SetPEffectX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PEFFECT_X, AValue);
end;

procedure TFontConfig.SetPEffectY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PEFFECT_Y, AValue);
end;

procedure TFontConfig.SetPPackSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PPACK_SIZE, AValue);
end;

procedure TFontConfig.SetPPackX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PPACK_X, AValue);
end;

procedure TFontConfig.SetPPackY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_PPACK_Y, AValue);
end;

procedure TFontConfig.SetRaceSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_RACE_SIZE, AValue);
end;

procedure TFontConfig.SetRaceX(AValue: integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_RACE_X, AValue);
end;

procedure TFontConfig.SetRaceY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_RACE_Y, AValue);
end;

procedure TFontConfig.SetScaleLeftX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_SCALE_LEFT_X, AValue);
end;

procedure TFontConfig.SetScaleLeftY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_SCALE_LEFT_Y, AValue);
end;

procedure TFontConfig.SetScaleRightX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_SCALE_RIGHT_X, AValue);
end;

procedure TFontConfig.SetScaleRightY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_SCALE_RIGHT_Y, AValue);
end;

procedure TFontConfig.SetScaleSize(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_SCALE_SIZE, AValue);
end;

procedure TFontConfig.SetTerm(AValue: string);
begin
  ini.WriteString(SEC_CONFIG, KEY_FONT_TERM, AValue);
end;

procedure TFontConfig.SetTermSisz(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_TERM_SIZE, AValue);
end;

procedure TFontConfig.SetTermX(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_TERM_X, AValue);
end;

procedure TFontConfig.SetTermY(AValue: Integer);
begin
  ini.WriteInteger(SEC_CONFIG, KEY_FONT_TERM_Y, AValue);
end;

constructor TFontConfig.Create;
begin
  ini := TIniFile.Create(ChangeFileExt(ParamStr(0), '.cfg'));
end;

destructor TFontConfig.Destroy;
begin
  ini.Free;
  inherited Destroy;
end;

{ TFontLoader }

destructor TFontLoader.Destroy;
begin
  FLinkValue.Free;
  FAtkValue.Free;
  FDefValue.Free;
  FScaleLeft.Free;
  FScaleRight.Free;
  FRaceValue.Free;
  FEffectValue.Free;
  FPendulumEffectValue.Free;
  FMTEffect.Free;
  FPackValue.Free;
  FTermValue.Free;
  FPasswordValue.Free;
  FCopyrightValue.Free;
  FNameValue.Free;
  FPendulumPack.Free;
  inherited Destroy;
end;

constructor TFontLoader.Create(AUseComment: Boolean);
var
  ini: TIniFile;
  atkdef: string;
  atkdefSize: Integer;
  scaleSize: Integer;
  jp: string;
  zh: string;
  pp: string;
begin
  ini := TIniFile.Create(ChangeFileExt(ParamStr(0), '.cfg'));

  FLinkValue := TFontBase.Create;
  FLinkValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_LINK, 'EurostileCandyW01-Semibold');
  FLinkValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_LINK_X, 2111);
  FLinkValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_LINK_Y, 3170);
  FLinkValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_LINK_SIZE, 92);

  atkdef:= ini.ReadString(SEC_CONFIG, KEY_FONT_ATKDEFSCALE, 'MatrixBoldSmallCaps');
  atkdefSize:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_ATKDEF_SIZE, 95);
  FAtkValue := TFontBase.Create;
  FAtkValue.Font:= atkdef;
  FAtkValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_ATK_X, 1490);
  FAtkValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_ATK_Y, 3182);
  FAtkValue.Size:= atkdefSize;

  FDefValue := TFontBase.Create;
  FDefValue.Font:= atkdef;
  FDefValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_DEF_X, 1980);
  FDefValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_DEF_Y, 3182);
  FDefValue.Size:= atkdefSize;

  scaleSize:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_SIZE, 150);
  FScaleLeft := TFontBase.Create;
  FScaleLeft.Font:= atkdef;
  FScaleLeft.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_LEFT_X, 192);
  FScaleLeft.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_LEFT_Y, 2390);
  FScaleLeft.Size:= scaleSize;

  FScaleRight := TFontBase.Create;
  FScaleRight.Font:= atkdef;
  FScaleRight.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_RIGHT_X, 2110);
  FScaleRight.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_SCALE_RIGHT_Y, 2390);
  FScaleRight.Size:= scaleSize;

  jp := ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_JP, 'YGODIY-JP');
  zh := ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_ZH, 'DFPLiShuW5-B5');
  FRaceValue := TFontBase.Create;
  if (AUseComment) then begin
    FRaceValue.Font:= jp;
  end else begin
    FRaceValue.Font:= zh;
  end;
  FRaceValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_RACE_X, 152);
  FRaceValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_RACE_Y, 2622);
  FRaceValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_RACE_SIZE, 76);

  FEffectValue := TEffectValue.Create;
  if (AUseComment) then begin
    FEffectValue.Font:= jp;
  end else begin
    FEffectValue.Font:= zh;
  end;
  FEffectValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_X, 154);
  FEffectValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_Y, 2702);
  FEffectValue.Right:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_RIGHT, 2210);
  FEffectValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_SIZE, 64);
  FEffectValue.LineHeight:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_EFFECT_LINEHEIGHT, 64);

  FPendulumEffectValue := TEffectValue.Create;
  if (AUseComment) then begin
    FPendulumEffectValue.Font:= jp;
  end else begin
    FPendulumEffectValue.Font:= zh;
  end;
  FPendulumEffectValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_X, 350);
  FPendulumEffectValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_Y, 2200);
  FPendulumEffectValue.Right:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_RIGHT, 2020);
  FPendulumEffectValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_SIZE, 56);
  FPendulumEffectValue.LineHeight:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PEFFECT_LINEHEIGHT, 58);

  FMTEffect := TEffectValue.Create;
  if (AUseComment) then begin
    FMTEffect.Font:= jp;
  end else begin
    FMTEffect.Font:= zh;
  end;
  FMTEffect.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_X, 154);
  FMTEffect.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_Y, 2622);
  FMTEffect.Right:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_RIGHT, 2210);
  FMTEffect.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_MTEFFECT_SIZE, 64);
  FMTEffect.LineHeight:= ini.ReadInt64(SEC_CONFIG, KEY_FONT_MTEFFECT_LINEHEIGHT, 64);

  pp := ini.ReadString(SEC_CONFIG, KEY_FONT_PACKPASS, 'ITC Stone Serif');

  FPackValue := TRightFontBase.Create;
  FPackValue.Font:= pp;
  FPackValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PACK_Y, 2504);
  FPackValue.Right:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PACK_RIGHT, 2130);
  FPackValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PACK_SIZE, 65);

  FPendulumPack := TFontBase.Create;
  FPendulumPack.Font:= pp;
  FPendulumPack.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PPACK_SIZE, 65);
  FPendulumPack.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PPACK_X, 190);
  FPendulumPack.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PPACK_Y, 3195);

  FPasswordValue := TFontBase.Create;
  FPasswordValue.Font:= pp;
  FPasswordValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PASSWORD_X, 90);
  FPasswordValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PASSWORD_Y, 3326);
  FPasswordValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_PASSWORD_SIZE, 72);

  FTermValue := TFontBase.Create;
  FTermValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_TERM, 'BankGothic Md BT');
  FTermValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_TERM_X, 240);
  FTermValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_TERM_Y, 2490);
  FTermValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_TERM_SIZE, 80);

  FCopyrightValue := TRightFontBase.Create;
  FCopyrightValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_COPYRIGHT, 'Yugioh Copyright');
  FCopyrightValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_Y, 3321);
  FCopyrightValue.Right:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_RIGHT, 2170);
  FCopyrightValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_COPYRIGHT_SIZE, 54);

  FNameValue := TFontBase.Create;
  if (AUseComment) then begin
    FNameValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_NAME_JP, 'YGODIY-JP');
  end else begin
    FNameValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_NAME_ZH, 'DFLeiSho-SB');
  end;
  FNameValue.X:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_NAME_X, 160);
  FNameValue.Y:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_NAME_Y, 186);
  FNameValue.Size:= ini.ReadInteger(SEC_CONFIG, KEY_FONT_NAME_SIZE, 160);

  ini.Free;
end;

class function TFontLoader.validate(): Boolean;
const
  FONTS: array[0..7] of string = (
    'EurostileCandyW01-Semibold',
    'MatrixBoldSmallCaps',
    'YGODIY-JP',
    'DFPLiShuW5-B5',
    'ITC Stone Serif',
    'BankGothic Md BT',
    'Yugioh Copyright',
    'DFLeiSho-SB');
var
  ret: Boolean = True;
  s: string;
begin
  for s in FONTS do begin
    if (Screen.Fonts.IndexOf(s) = -1) then begin
      ret := False;
      Break;
    end;
  end;
  Exit(ret);
end;

end.

