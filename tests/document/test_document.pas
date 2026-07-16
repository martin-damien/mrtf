unit test_document;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, fpcunit, testutils, testregistry, MrtfDocument, MrtfParagraph;

type
    TTestDocument = class(TTestCase)
        published
            procedure CanAddSubClassOfTBlock;
    end;

implementation

procedure TTestDocument.CanAddSubClassOfTBlock;
var
    Document: TDocument;
    Paragraph: TParagraph;
begin
    Document := TDocument.Create;
    try
        Paragraph := TParagraph.Create;
        Document.AddBlock(Paragraph);

        AssertEquals('Document can add any instance of a TBlock sub-class.', 1, Document.BlocksCount);
    finally
        Document.Free
    end;
end;

initialization

RegisterTest(TTestDocument);

end.

