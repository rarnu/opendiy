unit dlgControl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, frmBase, orca_scene2d;

type

  { TDialogControl }

  TDialogControl = class(TFormBase)
    procedure FormCreate(Sender: TObject);
  private
    FBtnUp: TD2HudCornerButton;
    FBtnDown: TD2HudCornerButton;
    FBtnLeft: TD2HudCornerButton;
    FBtnRight: TD2HudCornerButton;
    FBtnResetPos: TD2HudCornerButton;
    FBtnBigger: TD2HudCornerButton;
    FBtnSmaller: TD2HudCornerButton;
    FBtnResetSize: TD2HudCornerButton;
    FDText: TD2Text;
    FDefX: Integer;
    FDefY: Integer;
    FDefSize: Integer;
    procedure onBtnBiggerClicked(Sender: TObject);
    procedure onBtnDownClicked(Sender: TObject);
    procedure onBtnLeftClicked(Sender: TObject);
    procedure onBtnResetPosClicked(Sender: TObject);
    procedure onBtnResetSizeClicked(Sender: TObject);
    procedure onBtnRightClicked(Sender: TObject);
    procedure onBtnSmallerClicked(Sender: TObject);
    procedure onBtnUpClicked(Sender: TObject);
    procedure countTextSize();
  public
    property DefX: Integer read FDefX write FDefX;
    property DefY: Integer read FDefY write FDefY;
    property DefSize: Integer read FDefSize write FDefSize;
    property DText: TD2Text read FDText write FDText;
  end;

var
  DialogControl: TDialogControl;

procedure showHandle(ATitle: string; ADText: TD2Text; ADefX, ADefY, ADefSize: Integer);

implementation

uses
  orcautils;

procedure showHandle(ATitle: string; ADText: TD2Text; ADefX, ADefY, ADefSize: Integer);
begin
  with TDialogControl.Create(nil) do begin
    Window.Text:= ATitle;
    DText := ADText;
    DefX:= ADefX;
    DefY:= ADefY;
    DefSize:= ADefSize;
    ShowModal;
    Free;
  end;
end;

{$R *.frm}

{ TDialogControl }

procedure TDialogControl.FormCreate(Sender: TObject);
begin
  inherited;
  //
  Width:= 220;
  Height:= 190;

  FBtnUp:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 48, 8, 40, 40));
  FBtnUp.Corners:= [];
  FBtnUp.Text:= '↑';
  FBtnDown:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 48, 88, 40, 40));
  FBtnDown.Corners:= [];
  FBtnDown.Text:= '↓';
  FBtnLeft:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 8, 48, 40, 40));
  FBtnLeft.Corners:= [];
  FBtnLeft.Text:= '←';
  FBtnRight:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 88, 48, 40, 40));
  FBtnRight.Corners:= [];
  FBtnRight.Text:= '→';
  FBtnResetPos:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 48, 48, 40, 40));
  FBtnResetPos.Corners:= [];
  FBtnResetPos.Text:= 'O';

  FBtnBigger:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 140, 8, 40, 40));
  FBtnBigger.Corners:= [];
  FBtnBigger.Text:= '+';
  FBtnSmaller:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 140, 88, 40, 40));
  FBtnSmaller.Corners:= [];
  FBtnSmaller.Text:= '-';
  FBtnResetSize:= TD2HudCornerButton(createD2VO(Root, TD2HudCornerButton, 140, 48, 40, 40));
  FBtnResetSize.Corners:= [];
  FBtnResetSize.Text := 'O';

  FBtnUp.OnClick:= @onBtnUpClicked;
  FBtnDown.OnClick:= @onBtnDownClicked;
  FBtnLeft.OnClick:= @onBtnLeftClicked;
  FBtnRight.OnClick:= @onBtnRightClicked;
  FBtnResetPos.OnClick:= @onBtnResetPosClicked;

  FBtnBigger.OnClick:=@onBtnBiggerClicked;
  FBtnSmaller.OnClick:=@onBtnSmallerClicked;
  FBtnResetSize.OnClick:=@onBtnResetSizeClicked;

end;

procedure TDialogControl.onBtnResetPosClicked(Sender: TObject);
begin
  FDText.Position.X:= FDefX;
  FDText.Position.Y:= FDefY;
end;

procedure TDialogControl.onBtnResetSizeClicked(Sender: TObject);
begin
  FDText.Font.Size:= FDefSize;
  countTextSize();
end;

procedure TDialogControl.onBtnRightClicked(Sender: TObject);
begin
  FDText.Position.X:= FDText.Position.X + 1;
end;

procedure TDialogControl.onBtnSmallerClicked(Sender: TObject);
begin
  FDText.Font.Size:= FDText.Font.Size - 1;
  countTextSize();
end;

procedure TDialogControl.onBtnDownClicked(Sender: TObject);
begin
  FDText.Position.Y:= FDText.Position.Y + 1;
end;

procedure TDialogControl.onBtnBiggerClicked(Sender: TObject);
begin
  FDText.Font.Size:= FDText.Font.Size + 1;
  countTextSize();
end;

procedure TDialogControl.onBtnLeftClicked(Sender: TObject);
begin
  FDText.Position.X:= FDText.Position.X - 1;
end;

procedure TDialogControl.onBtnUpClicked(Sender: TObject);
begin
  FDText.Position.Y:= FDText.Position.Y - 1;
end;

procedure TDialogControl.countTextSize();
var
  idx: Integer = 0;
begin
  // wait 100ms for letting UI refreshing itself.
  while idx < 100 do begin
    Application.ProcessMessages;
    Inc(idx);
    Sleep(1);
  end;
  FDText.Width:= FDText.Canvas.TextWidth(FDText.TextW);
  FDText.Height:= FDText.Canvas.TextHeight(FDText.TextW);
end;

end.

