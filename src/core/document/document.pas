unit document;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, Generics.Collections, Paragraph;

type
    TDocument = class
        private
            FParagraphs: specialize TObjectList<TParagraph>;

        public
            constructor Create;
            destructor Destroy; override;

            function AddParagraph: TParagraph;

            property Paragraphs: specialize TObjectList<TParagraph> read FParagraphs;
    end;

implementation

constructor TDocument.Create;
begin
    FParagraphs := specialize TObjectList<TParagraph>.Create(True);
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
end;

end.

