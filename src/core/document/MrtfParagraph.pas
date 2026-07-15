unit MrtfParagraph;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils;

type
    TParagraphStyle = (
        psNormal,
        psHeading1,
        psHeading2,
        psHeading3
    );

    TParagraph = class
        private
            FStyle: TParagraphStyle;

        public
            constructor Create;

            property Style: TParagraphStyle read FStyle write FStyle;
    end;

implementation

constructor TParagraph.Create;
begin
    FStyle := psNormal;
end;

end.

