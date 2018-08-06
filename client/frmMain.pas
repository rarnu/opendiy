unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, frmBase, orca_scene2d, sourceloader;

type

  { TFormMain }

  TFormMain = class(TFormBase)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FImgRoot: TD2Layout;
    FImg: TD2Image;
    FsvRight: TD2ScrollBox;
    FSource: TSources;

    // elements
    FlblCardType: TD2Text;
    FcmbCardType: TD2HudStringComboBox;

    FlayMonster: TD2Layout;
    FlayMagic: TD2Layout;
    FlayTrap: TD2Layout;

    // monster
    FlblMonsterType: TD2Text;
    FcmbMonsterType: TD2HudStringComboBox;
    FlblPendulumType: TD2Text;
    FcmbPendulumType: TD2HudStringComboBox;


    procedure onBtnDemoClicked(Sender: TObject);
    procedure onCardTypeChange(Sender: TObject);
    procedure onMonsterTypeChange(Sender: TObject);
    procedure onPendulumTypeChange(Sender: TObject);

  public

  end;

var
  FormMain: TFormMain;

implementation

uses
  orcautils, dlgControl;

{$R *.frm}



{ TFormMain }

procedure TFormMain.FormCreate(Sender: TObject);
var
  t: string = 'Sample';
begin
  inherited;
  Height:= 922;
  Width:= 1024;

  FSource := TSources.Create('../module/');

  FImgRoot := TD2Layout(createD2VO(Root, TD2Layout, 0, 0, 2379, 3467));
  // vector scale 25%
  FImgRoot.Scale.X:= 0.25;
  FImgRoot.Scale.Y:= 0.25;
  FImg := TD2Image(createD2VO(FImgRoot, TD2Image, 0, 0, 0, 0, vaClient));
  FImg.Bitmap.LoadFromFile(FSource.Monster[0]);
  FsvRight := TD2ScrollBox(createD2VO(Root, TD2ScrollBox, 600, 0, 390, 866));
  FsvRight.UseSmallScrollBars:= True;

  FlblCardType := TD2Text(createD2VO(FsvRight, TD2Text, 0, 0, 80, 32));
  FlblCardType.setup('卡片种类');

  FcmbCardType := TD2HudStringComboBox(createD2VO(FsvRight, TD2HudStringComboBox, 80, 4, 160, 24));
  FcmbCardType.ListBox.UseSmallScrollBars:= True;
  FcmbCardType.Items.Add(UTF8Decode('怪兽'));
  FcmbCardType.Items.Add(UTF8Decode('魔法'));
  FcmbCardType.Items.Add(UTF8Decode('陷阱'));
  FcmbCardType.ItemIndex:= 0;

  FlayMonster := TD2Layout(createD2VO(FsvRight, TD2Layout, 0, 32, 380, 1000));
  FlayMagic := TD2Layout(createD2VO(FsvRight, TD2Layout, 0, 32, 380, 200));
  FlayTrap := TD2Layout(createD2VO(FsvRight, TD2Layout, 0, 32, 380, 200));

  // monster
  FlblMonsterType:= TD2Text(createD2VO(FlayMonster, TD2Text, 0, 0, 80, 32));
  FlblMonsterType.setup('怪兽种类');
  FcmbMonsterType:= TD2HudStringComboBox(createD2VO(FlayMonster, TD2HudStringComboBox, 80, 4, 160, 24));
  FcmbMonsterType.ListBox.UseSmallScrollBars:= True;
  FcmbMonsterType.Items.Add(UTF8Decode('通常怪兽'));
  FcmbMonsterType.Items.Add(UTF8Decode('效果怪兽'));
  FcmbMonsterType.Items.Add(UTF8Decode('仪式怪兽'));
  FcmbMonsterType.Items.Add(UTF8Decode('融合怪兽'));
  FcmbMonsterType.Items.Add(UTF8Decode('同调怪兽'));
  FcmbMonsterType.Items.Add(UTF8Decode('超量怪兽'));
  FcmbMonsterType.Items.Add(UTF8Decode('连接怪兽'));
  FcmbMonsterType.Items.Add(UTF8Decode('代币'));
  FcmbMonsterType.ItemIndex:= 0;

  FlblPendulumType:= TD2Text(createD2VO(FlayMonster, TD2Text, 0, 32, 80, 32));
  FlblPendulumType.setup('灵摆种类');
  FcmbPendulumType:= TD2HudStringComboBox(createD2VO(FlayMonster, TD2HudStringComboBox, 80, 36, 160, 24));
  FcmbPendulumType.ListBox.UseSmallScrollBars:= True;
  FcmbPendulumType.Items.Add(UTF8Decode('无'));
  FcmbPendulumType.Items.Add(UTF8Decode('通常怪兽'));
  FcmbPendulumType.Items.Add(UTF8Decode('效果怪兽'));
  FcmbPendulumType.Items.Add(UTF8Decode('仪式怪兽'));
  FcmbPendulumType.Items.Add(UTF8Decode('融合怪兽'));
  FcmbPendulumType.Items.Add(UTF8Decode('同调怪兽'));
  FcmbPendulumType.Items.Add(UTF8Decode('超量怪兽'));
  FcmbPendulumType.ItemIndex:= 0;

  // magic

  // trap

  FcmbCardType.OnChange:=@onCardTypeChange;
  FcmbMonsterType.OnChange:=@onMonsterTypeChange;
  FcmbPendulumType.OnChange:=@onPendulumTypeChange;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FSource.Free;
end;

procedure TFormMain.onBtnDemoClicked(Sender: TObject);
begin
  // showHandle('Sample', FText, 100, 100, trunc(FText.Font.Size));
end;

procedure TFormMain.onCardTypeChange(Sender: TObject);
begin
  case FcmbCardType.ItemIndex of
  0:
  begin
    FlayMonster.Visible:= True;
    FlayMagic.Visible:= False;
    FlayTrap.Visible:= False;
    FsvRight.Realign;
  end;
  1:
  begin
    FlayMonster.Visible:= False;
    FlayMagic.Visible:= True;
    FlayTrap.Visible:= False;
    FsvRight.Realign;
  end;
  2:
  begin
    FlayMonster.Visible:= False;
    FlayMagic.Visible:= False;
    FlayTrap.Visible:= True;
    FsvRight.Realign;
  end;

  end;
end;

procedure TFormMain.onMonsterTypeChange(Sender: TObject);
begin
  if (FcmbPendulumType.ItemIndex = 0) then begin
    FImg.Bitmap.LoadFromFile(FSource.Monster[FcmbMonsterType.ItemIndex]);
  end;
end;

procedure TFormMain.onPendulumTypeChange(Sender: TObject);
begin
  if (FcmbPendulumType.ItemIndex = 0) then begin
    FImg.Bitmap.LoadFromFile(FSource.Monster[FcmbMonsterType.ItemIndex]);
  end else begin
    FImg.Bitmap.LoadFromFile(FSource.PendulumMonster[FcmbPendulumType.ItemIndex]);
  end;
end;

end.

