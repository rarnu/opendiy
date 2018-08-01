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

  { TLinkValue }

  TLinkValue = class(TFontBase)
  end;

  { TAtkValue }

  TAtkDefValue = class(TFontBase)
  end;

  TScaleValue = class(TFontBase)
  end;

  TRaceValue = class(TFontBase)
  end;

  { TEffectValue }

  TEffectValue = class(TFontBase)
  private
    FLineHeight: Integer;
    FRight: Integer;
  public
    property Right: Integer read FRight write FRight;
    property LineHeight: Integer read FLineHeight write FLineHeight;
  end;

  { TFontLoader }

  TFontLoader = class
  private
    FAtkValue: TAtkDefValue;
    FDefValue: TAtkDefValue;
    FEffectValue: TEffectValue;
    FLinkValue: TLinkValue;
    FMTEffect: TEffectValue;
    FPendulumEffectValue: TEffectValue;
    FRaceValue: TRaceValue;
    FScaleLeft: TScaleValue;
    FScaleRight: TScaleValue;
  public
    constructor Create(AUseComment: Boolean);
    destructor Destroy; override;
    function validate(): Boolean;
  public
    property LinkValue: TLinkValue read FLinkValue write FLinkValue;
    property AtkValue: TAtkDefValue read FAtkValue write FAtkValue;
    property DefValue: TAtkDefValue read FDefValue write FDefValue;
    property ScaleLeft: TScaleValue read FScaleLeft write FScaleLeft;
    property ScaleRight: TScaleValue read FScaleRight write FScaleRight;
    property RaceValue: TRaceValue read FRaceValue write FRaceValue;
    property EffectValue: TEffectValue read FEffectValue write FEffectValue;
    property PendulumEffectValue: TEffectValue read FPendulumEffectValue write FPendulumEffectValue;
    property MTEffect: TEffectValue read FMTEffect write FMTEffect;
  end;

implementation

const
  SEC_CONFIG = 'Config';
  KEY_FONT_LINK = 'link';
  KEY_FONT_ATKDEFSCALE = 'atkdefscale';
  KEY_FONT_EFFECT_JP = 'effectjp';
  KEY_FONT_EFFECT_ZH = 'effectzh';

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
  inherited Destroy;
end;

constructor TFontLoader.Create(AUseComment: Boolean);
var
  ini: TIniFile;
  atkdef: string;
  jp: string;
  zh: string;
begin
  ini := TIniFile.Create(ChangeFileExt(ParamStr(0), '.cfg'));

  FLinkValue := TLinkValue.Create;
  FLinkValue.Font:= ini.ReadString(SEC_CONFIG, KEY_FONT_LINK, 'EurostileCandyW01-Semibold');
  FLinkValue.X:= 2111;
  FLinkValue.Y:= 3170;
  FLinkValue.Size:= 92;

  atkdef:= ini.ReadString(SEC_CONFIG, KEY_FONT_ATKDEFSCALE, 'MatrixBoldSmallCaps');
  FAtkValue := TAtkDefValue.Create;
  FAtkValue.Font:= atkdef;
  FAtkValue.X:= 1490;
  FAtkValue.Y:= 3182;
  FAtkValue.Size:= 95;

  FDefValue := TAtkDefValue.Create;
  FDefValue.Font:= atkdef;
  FDefValue.X:= 1980;
  FDefValue.Y:= 3182;
  FDefValue.Size:= 95;

  FScaleLeft := TScaleValue.Create;
  FScaleLeft.Font:= atkdef;
  FScaleLeft.X:= 192;
  FScaleLeft.Y:= 2390;
  FScaleLeft.Size:= 150;

  FScaleRight := TScaleValue.Create;
  FScaleRight.Font:= atkdef;
  FScaleRight.X:= 2110;
  FScaleRight.Y:= 2390;
  FScaleRight.Size:= 150;

  jp := ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_JP, 'YGODIY-JP');
  zh := ini.ReadString(SEC_CONFIG, KEY_FONT_EFFECT_ZH, 'DFPLiShuW5-B5');
  FRaceValue := TRaceValue.Create;
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

  ini.Free;
end;

function TFontLoader.validate(): Boolean;
begin
  // TODO: validate fonts
  Exit(True);
end;

end.

