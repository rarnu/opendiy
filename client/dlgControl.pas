unit dlgControl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type

  { TDialogControl }

  TDialogControl = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    FDefSize: Integer;
    FDefX: Integer;
    FDefY: Integer;

  public
    property DefX: Integer read FDefX write FDefX;
    property DefY: Integer read FDefY write FDefY;
    property DefSize: Integer read FDefSize write FDefSize;

  end;

var
  DialogControl: TDialogControl;

implementation


{$R *.frm}

{ TDialogControl }

procedure TDialogControl.FormCreate(Sender: TObject);
begin
  inherited;
  //
  Width:= 220;
  Height:= 190;


end;


end.

