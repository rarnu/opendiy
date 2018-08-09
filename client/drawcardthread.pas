unit drawcardthread;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process;

type

  TDrawCardCallback = procedure (Sender: TObject; ASucc: Boolean) of object;
  { TDrawCardThread }

  TDrawCardThread = class(TThread)
  private
    FCallback: TDrawCardCallback;
    FModulePath: string;
    FYgoPAth: string;
    FOutputPath: string;
    FSucc: Boolean;
    procedure innerThreadTerminated(Sender: TObject);
  protected
    procedure Execute; override;
  public
    constructor Create(AModulePath: string; AYgoPath: string; AOutputPath: string);
  public
    property Callback: TDrawCardCallback read FCallback write FCallback;
  end;

implementation

{ TDrawCardThread }

procedure TDrawCardThread.innerThreadTerminated(Sender: TObject);
begin
  if (Assigned(FCallback)) then begin
    FCallback(Self, FSucc);
  end;
end;

procedure TDrawCardThread.Execute;
const
  EXENAME = {$IFDEF WINDOWS}'opendiy.exe'{$ELSE}'opendiy'{$ENDIF};
var
  p: TProcess;
  ret: Boolean = False;
begin
  try
    p := TProcess.Create(nil);
    p.Executable:= ExtractFilePath(ParamStr(0)) + EXENAME;
    p.Parameters.Add(FModulePath);
    p.Parameters.Add(FYgoPAth);
    p.Parameters.Add(FOutputPath);
    p.Options:= [poWaitOnExit, poUsePipes, poStderrToOutPut];
    try
      p.Execute;
      ret := True;
    except
    end;
  finally
    p.Free;
  end;
  FSucc:= ret;
end;

constructor TDrawCardThread.Create(AModulePath: string; AYgoPath: string;
  AOutputPath: string);
begin
  Inherited Create(True);
  FModulePath := AModulePath;
  FYgoPAth:= AYgoPath;
  FOutputPath:= AOutputPath;
  FreeOnTerminate:= True;
  OnTerminate:=@innerThreadTerminated;
end;

end.

