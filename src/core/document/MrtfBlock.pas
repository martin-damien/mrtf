unit MrtfBlock;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils;

type

    TBlock = class
        public
            destructor Destroy; override;
    end;

implementation

destructor TBlock.Destroy;
begin
    inherited Destroy;
end;

end.

