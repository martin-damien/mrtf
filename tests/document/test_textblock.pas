unit test_textblock;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, fpcunit, testutils, testregistry, MrtfTextBlock, MrtfFragment;

type
    TTestTextBlock = class(TTestCase)
        published
            procedure ANewTextBlockIsEmpty;
            procedure AFragmentCanBeAddedToATextBlock;
    end;

implementation

procedure TTestTextBlock.ANewTextBlockIsEmpty;
var
    TextBlock: TTextBlock;
begin
    TextBlock := TTextBlock.Create;
    try
        AssertEquals('A new TextBlock must not have fragments.', 0, TextBlock.FragmentsCount);
    finally
        TextBlock.Free;
    end;
end;

procedure TTestTextBlock.AFragmentCanBeAddedToATextBlock;
var
    TextBlock: TTextBlock;
    Fragment: TFragment;
begin
    TextBlock := TTextBlock.Create;
    try
        Fragment := TFragment.Create('Hello');
        TextBlock.AddFragment(Fragment);

        AssertEquals('A new TextBlock with one added fragment, must return 1 for fragments count.', 1, TextBlock.FragmentsCount);
    finally
        TextBlock.Free;
    end;
end;

initialization

RegisterTest(TTestTextBlock);

end.

