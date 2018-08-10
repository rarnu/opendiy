unit untCardFace;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms;

procedure resetCardFace(aform: TForm);

implementation

uses
  frmMain;

procedure resetCardFace(aform: TForm);
var
  fm: TFormMain;
begin
  fm := TFormMain(aform);

  fm.xCardName.Font.Name:= 'YGODIY-JP';
  fm.xCardName.Font.Height:= 32;
  fm.xCardName.Left:= 32;
  fm.xCardName.Top:= 31;

  fm.xEffect.Font.Name:= 'YGODIY-JP';
  fm.xEffect.Font.Height:= 13;
  fm.xEffect.Left:= 31;
  fm.xEffect.Top:= 540;
  fm.xEffect.Width:= 411;

  fm.xPendulumEffect.Font.Name:= 'YGODIY-JP';
  fm.xPendulumEffect.Font.Height:= 11;
  fm.xPendulumEffect.Left:= 70;
  fm.xPendulumEffect.Top:= 440;
  fm.xPendulumEffect.Width:= 334;

  fm.xScaleLEft.Font.Name:= 'MatrixBoldSmallCaps';
  fm.xScaleLEft.Font.Height:= 30;
  fm.xScaleLEft.Left:= 30;
  fm.xScaleLEft.Top:= 478;

  fm.xScaleRight.Font.Name:= 'MatrixBoldSmallCaps';
  fm.xScaleRight.Height:= 30;
  fm.xScaleRight.Left:= 414;
  fm.xScaleRight.Top:= 478;

  fm.xCardRace.Font.Name:= 'YGODIY-JP';
  fm.xCardRace.Font.Height:= 15;
  fm.xCardRace.Left:= 30;
  fm.xCardRace.Top := 524;

  fm.xAtk.Font.Name:= 'MatrixBoldSmallCaps';
  fm.xAtk.Font.Height:= 19;
  fm.xAtk.Left:= 298;
  fm.xAtk.Top:= 636;

  fm.xDef.Font.Name:= 'MatrixBoldSmallCaps';
  fm.xDef.Font.Height:= 19;
  fm.xDef.Left:= 396;
  fm.xDef.Top:= 636;

  fm.xLink.Font.Name:= 'EurostileCandyW01-Semibold';
  fm.xLink.Font.Height:= 18;
  fm.xLink.Left:= 422;
  fm.xLink.Top:= 635;

  fm.xPassword.Font.Name:= 'ITC Stone Serif';
  fm.xPassword.Font.Height:= 14;
  fm.xPassword.Left:= 18;
  fm.xPassword.Top:= 665;

  fm.xCopyright.Font.Name:= 'Yugioh Copyright';
  fm.xCopyright.Font.Height:= 11;
  fm.xCopyright.Left:= 400;
  fm.xCopyright.Top:= 665;
  fm.xCopyright.Width:= 56;

  fm.xPack.Font.Name:= 'ITC Stone Serif';
  fm.xPack.Font.Height:= 13;
  fm.xPack.Left:= 380;
  fm.xPack.Top:= 501;
  fm.xPack.Width:= 34;

  fm.xTerm.Font.Name:= 'BankGothic Md BT';
  fm.xTerm.Font.Height:= 16;
  fm.xTerm.Left:= 48;
  fm.xTerm.Top:= 498;

end;

end.

