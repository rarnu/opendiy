unit textliner;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics, LazUTF8;

function text2Lines(acanvas: TCanvas; astr: string; awidth: Integer): TStringArray;

implementation

function text2Lines(acanvas: TCanvas; astr: string; awidth: Integer
  ): TStringArray;
var
  len: Integer;
  w: Integer;
  lines: Integer;
  i: Integer;
  j: Integer;
  atmp: string;
  idx: Integer;
begin
  len := UTF8Length(astr);
  w := acanvas.TextWidth(astr);
  lines:= w div awidth;
  if (w mod awidth <> 0) then lines += 1;
  SetLength(Result, lines);
  idx := 0;
  for i:= 0 to lines - 1 do begin
    atmp:= '';
    for j := idx to len - 1 do begin
      atmp += UTF8Copy(astr, j, 1);
      if (acanvas.TextWidth(atmp) > awidth) then begin
        UTF8Delete(atmp, UTF8Length(atmp) , 1);
        Result[i] := atmp;
        idx := j;
        Break;
      end;
    end;
  end;
  if (idx < len) then begin
    if (Result[lines - 1].Trim = '') then begin
      Result[lines - 1] := UTF8Copy(astr, idx, len);
    end else begin
      SetLength(Result, lines + 1);
      Result[lines] := UTF8Copy(astr, idx, len);
    end;
  end;
end;

end.

