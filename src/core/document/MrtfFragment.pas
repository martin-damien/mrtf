unit MrtfFragment;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils;

type
    TFragment = class
        private
            FText: string;

        public
            constructor Create(const AText: string);

            property Text: string read FText;
    end;

implementation

constructor TFragment.Create(const AText: string);
begin
    FText := AText;
end;

end.

