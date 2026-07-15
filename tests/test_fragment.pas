unit test_fragment;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, fpcunit, testutils, testregistry, MrtfFragment;

type
    TTestFragment = class(TTestCase)
        procedure ConstructorCopiesText;
    end;

implementation

procedure TTestFragment.ConstructorCopiesText;
var
    Fragment: TFragment;
    Text: string;
begin
    Text := 'Hello World';
    Fragment := TFragment.Create(Text);
    try
        Text := 'Goodbye World';

        AssertEquals('Fragment must keep it initial text.', 'Hello World', Fragment.Text);
    finally
        Fragment.Free;
    end;
end;

initialization

RegisterTest(TTestFragment);

end.

