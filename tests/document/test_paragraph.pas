unit test_paragraph;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, fpcunit, testutils, testregistry, MrtfParagraph;

type
    TTestParagraph = class(TTestCase)
        procedure NewParagraphUsesNormalStyle;
    end;

implementation

procedure TTestParagraph.NewParagraphUsesNormalStyle;
var
    Paragraph: TParagraph;
begin
    Paragraph := TParagraph.Create;
    try
        AssertEquals('A paragraph must be psNormal by default.', Ord(psNormal), Ord(Paragraph.Style));
    finally
        Paragraph.Free;
    end;
end;

initialization

RegisterTest(TTestParagraph);

end.

