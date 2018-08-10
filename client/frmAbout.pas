unit frmAbout;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TFormAbout }

  TFormAbout = class(TForm)
    btnOK: TButton;
    bv: TBevel;
    imgIcon: TImage;
    lblName: TLabel;
    lblVersion: TLabel;
  private

  public

  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.frm}

end.

