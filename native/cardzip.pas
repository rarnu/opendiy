unit cardzip;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, zipper, carddata;

type

  { TCardZip }

  TCardZip = class
  public
    class function ygoToCardData(AFilePath: string; ATmpPath: string = ''): TCardData;
    class procedure cardDataToYgo(ACardData: TCardData; AFilePath: string);
    class procedure projectToYgo(AProjPath: string; AFilePath: string);
  end;

implementation

{ TCardZip }

class function TCardZip.ygoToCardData(AFilePath: string; ATmpPath: string
  ): TCardData;
var
  z: TUnZipper;
  tmpPath: string;
begin
  if (ATmpPath = '') then begin
    tmpPath:= ExtractFilePath(ParamStr(0)) + '.tmp' + DirectorySeparator;
  end else begin
    tmpPath:= ATmpPath;
  end;
  if (not DirectoryExists(tmpPath)) then ForceDirectories(tmpPath);
  z := TUnZipper.Create;
  z.FileName:= AFilePath;
  z.OutputPath:= tmpPath;
  try
    z.Examine;
    z.UnZipAllFiles;
  except
  end;
  z.Free;
  Result := nil;
  if (FileExists(tmpPath + 'card.data')) then Result := TCardData.fromJsonFile(tmpPath + 'card.data');
end;

class procedure TCardZip.cardDataToYgo(ACardData: TCardData; AFilePath: string);
var
  z: TZipper;
  ze: TZipFileEntries;
  tmpPath: string;
begin
  tmpPath:= ExtractFilePath(ParamStr(0)) + '.tmp' + DirectorySeparator;
  ACardData.toJsonFile(tmpPath + 'card.data');
  z := TZipper.Create;
  z.FileName:= AFilePath;
  z.Clear;
  ze := TZipFileEntries.Create(TZipFileEntry);
  ze.AddFileEntry(tmpPath + 'card.data', 'card.data');
  if (FileExists(tmpPath + 'card.cfg')) then ze.AddFileEntry(tmpPath + 'card.cfg', 'card.cfg');
  if (FileExists(tmpPath + '.card.png')) then ze.AddFileEntry(tmpPath + '.card.png', '.card.png');
  if (FileExists(tmpPath + '.origin.png')) then ze.AddFileEntry(tmpPath + '.origin.png', '.origin.png');
  try
    z.ZipFiles(ze);
  except
  end;
  ze.Free;
  z.Free;
end;

class procedure TCardZip.projectToYgo(AProjPath: string; AFilePath: string);
var
  z: TZipper;
  ze: TZipFileEntries;
begin
  z := TZipper.Create;
  z.FileName:= AFilePath;
  z.Clear;
  ze := TZipFileEntries.Create(TZipFileEntry);
  ze.AddFileEntry(AProjPath + 'card.data', 'card.data');
  if (FileExists(AProjPath + 'card.cfg')) then ze.AddFileEntry(AProjPath + 'card.cfg', 'card.cfg');
  if (FileExists(AProjPath + '.card.png')) then ze.AddFileEntry(AProjPath + '.card.png', '.card.png');
  if (FileExists(AProjPath + '.origin.png')) then ze.AddFileEntry(AProjPath + '.origin.png', '.origin.png');
  try
    z.ZipFiles(ze);
  except
  end;
  ze.Free;
  z.Free;
end;

end.

