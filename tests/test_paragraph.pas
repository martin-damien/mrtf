unit test_paragraph;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, fpcunit, testutils, testregistry, paragraph;

type
    TTestParagraph = class(TTestCase)
        procedure DefaultStyleIsNormal;
    end;

implementation

procedure TTestParagraph.DefaultStyleIsNormal;
var
    paragraph: TParagraph;
begin
    paragraph := TParagraph.Create;
    try
        AssertEquals('A paragraph must be psNormal by default.', Ord(psNormal), Ord(paragraph.Style));
    finally
        paragraph.Free;
    end;
end;

initialization

RegisterTest(TTestParagraph);

end.

