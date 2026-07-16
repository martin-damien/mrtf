unit test_fragment;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, fpcunit, testutils, testregistry, MrtfFragment;

type
    TTestFragment = class(TTestCase)
        published
            procedure ConstructorCopiesText;
            procedure ConstructorCanBeInstanciatedWithEmptyText;
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

procedure TTestFragment.ConstructorCanBeInstanciatedWithEmptyText;
var
    Fragment: TFragment;
begin
    Fragment := TFragment.Create('');
    try
        AssertEquals('Fragment can be instanciated with empty text.', '', Fragment.Text);
    finally
        Fragment.Free;
    end;
end;

initialization

RegisterTest(TTestFragment);

end.

