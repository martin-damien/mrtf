program runtests;

{$mode ObjFPC}{$H+}

uses
    Classes, SysUtils, consoletestrunner,
    test_paragraph;

type
    TMyTestRunner = class(TTestRunner)
    end;

var
    Application: TMyTestRunner;

begin
    Application := TMyTestRunner.Create(nil);
    Application.Initialize;
    Application.Run;
    Application.Free;
end.
