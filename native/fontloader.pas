unit fontloader;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IniFiles;

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
    function validate(): Boolean;
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

implementation

const
  SEC_CONFIG = 'Config';
  KEY_FONT_LINK = 'link';
  KEY_FONT_ATKDEFSCALE = 'atkdefscale';
  KEY_FONT_EFFECT_JP = 'effectjp';
  KEY_FONT_EFFECT_ZH = 'effectzh';
  KEY_FONT_NAME = 'namezh';
  KEY_FONT_PACKPASS = 'packpass';
  KEY_FONT_TERM = 'term';
  KEY_FONT_COPYRIGHT = 'copyright';

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
  jp: string;
  zh: string;
  pp: string;
begin
  ini := TIniFile.Create(ChangeFileExt(ParamStr(0), '.cfg'));

  FLinkValue := TFontBase.Create;
  FLinkValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_LINK, 'EurostileCandyW01-Semibold');
  FLinkValue.X:= 2111;
  FLinkValue.Y:= 3170;
  FLinkValue.Size:= 92;

  atkdef:= ini.ReadString(SEC_CONFIG, KEY_FONT_ATKDEFSCALE, 'MatrixBoldSmallCaps');
  FAtkValue := TFontBase.Create;
  FAtkValue.Font:= atkdef;
  FAtkValue.X:= 1490;
  FAtkValue.Y:= 3182;
  FAtkValue.Size:= 95;

  FDefValue := TFontBase.Create;
  FDefValue.Font:= atkdef;
  FDefValue.X:= 1980;
  FDefValue.Y:= 3182;
  FDefValue.Size:= 95;

  FScaleLeft := TFontBase.Create;
  FScaleLeft.Font:= atkdef;
  FScaleLeft.X:= 192;
  FScaleLeft.Y:= 2390;
  FScaleLeft.Size:= 150;

  FScaleRight := TFontBase.Create;
  FScaleRight.Font:= atkdef;
  FScaleRight.X:= 2110;
  FScaleRight.Y:= 2390;
  FScaleRight.Size:= 150;

  jp := ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_JP, 'YGODIY-JP');
  zh := ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_ZH, 'DFPLiShuW5-B5');
  FRaceValue := TFontBase.Create;
  if (AUseComment) then begin
    FRaceValue.Font:= jp;
  end else begin
    FRaceValue.Font:= zh;
  end;
  FRaceValue.X:= 152;
  FRaceValue.Y:= 2622;
  FRaceValue.Size:= 76;

  FEffectValue := TEffectValue.Create;
  if (AUseComment) then begin
    FEffectValue.Font:= jp;
  end else begin
    FEffectValue.Font:= zh;
  end;
  FEffectValue.X:= 154;
  FEffectValue.Y:= 2702;
  FEffectValue.Right:= 2210;
  FEffectValue.Size:= 64;
  FEffectValue.LineHeight:= 64;

  FPendulumEffectValue := TEffectValue.Create;
  if (AUseComment) then begin
    FPendulumEffectValue.Font:= jp;
  end else begin
    FPendulumEffectValue.Font:= zh;
  end;
  FPendulumEffectValue.X:= 350;
  FPendulumEffectValue.Y:= 2200;
  FPendulumEffectValue.Right:= 2020;
  FPendulumEffectValue.Size:= 56;
  FPendulumEffectValue.LineHeight:= 58;

  FMTEffect := TEffectValue.Create;
  if (AUseComment) then begin
    FMTEffect.Font:= jp;
  end else begin
    FMTEffect.Font:= zh;
  end;
  FMTEffect.X:= 154;
  FMTEffect.Y:= 2622;
  FMTEffect.Right:= 2210;
  FMTEffect.Size:= 64;
  FMTEffect.LineHeight:= 64;

  pp := ini.ReadString(SEC_CONFIG, KEY_FONT_PACKPASS, 'ITC Stone Serif');

  FPackValue := TRightFontBase.Create;
  FPackValue.Font:= pp;
  FPackValue.Y:= 2504;
  FPackValue.Right:= 2130;
  FPackValue.Size:= 65;

  FPendulumPack := TFontBase.Create;
  FPendulumPack.Font:= pp;
  FPendulumPack.Size:= 65;
  FPendulumPack.X:= 190;
  FPendulumPack.Y:= 3195;

  FPasswordValue := TFontBase.Create;
  FPasswordValue.Font:= pp;
  FPasswordValue.X:= 90;
  FPasswordValue.Y:= 3326;
  FPasswordValue.Size:= 72;

  FTermValue := TFontBase.Create;
  FTermValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_TERM, 'BankGothic Md BT');
  FTermValue.X:= 240;
  FTermValue.Y:= 2490;
  FTermValue.Size:= 80;

  FCopyrightValue := TRightFontBase.Create;
  FCopyrightValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_COPYRIGHT, 'Yugioh Copyright');
  FCopyrightValue.Y:= 3321;
  FCopyrightValue.Right:= 2170;
  FCopyrightValue.Size:= 54;

  FNameValue := TFontBase.Create;
  if (AUseComment) then begin
    FNameValue.Font:= jp;
  end else begin
    FNameValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_NAME, 'DFLeiSho-SB');
  end;
  FNameValue.X:= 160;
  FNameValue.Y:= 186;
  FNameValue.Size:= 160;

  ini.Free;
end;

function TFontLoader.validate(): Boolean;
begin
  // TODO: validate fonts
  Exit(True);
end;

end.

