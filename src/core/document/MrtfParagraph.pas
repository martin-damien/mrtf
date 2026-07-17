unit MrtfParagraph;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, MrtfTextBlock;

type
    TParagraphStyle = (
        psNormal,
        psHeading1,
        psHeading2,
        psHeading3
    );

    TParagraph = class(TTextBlock)
        private
            FStyle: TParagraphStyle;

        public
            constructor Create;

            property Style: TParagraphStyle read FStyle write FStyle;
    end;

implementation

constructor TParagraph.Create;
begin
    inherited Create;

    FStyle := psNormal;
end;

end.

