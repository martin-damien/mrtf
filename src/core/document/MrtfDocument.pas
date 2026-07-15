unit MrtfDocument;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, Generics.Collections, Paragraph;

type
    TDocument = class
        private
            FParagraphs: specialize TObjectList<TParagraph>;
            FParagraphsCount: integer;

        public
            constructor Create;
            destructor Destroy; override;

            function AddParagraph: TParagraph;
            function Paragraphs(index: integer): TParagraph;

            property ParagraphsCount: integer read FParagraphsCount;
    end;

implementation

constructor TDocument.Create;
begin
    FParagraphs := specialize TObjectList<TParagraph>.Create(True);
    FParagraphsCount := 0;
end;

destructor TDocument.Destroy;
begin
    FParagraphs.Free;

    inherited Destroy;
end;

function TDocument.AddParagraph: TParagraph;
begin
    Result := TParagraph.Create;
    FParagraphs.Add(Result);
    FParagraphsCount := FParagraphs.Count;
end;

function TDocument.Paragraphs(index: integer): TParagraph;
begin
    { @TODO Check if index is correct }
    Result := FParagraphs[index];
end;

end.

