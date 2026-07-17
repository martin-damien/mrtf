unit MrtfTextBlock;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, SysUtils, Generics.Collections, MrtfBlock, MrtfFragment;

type
    TTextBlock = class(TBlock)
        private
            FFragments: specialize TObjectList<TFragment>;

            function GetFragmentsCount: integer;

        public
            constructor Create;
            destructor Destroy; override;

            procedure AddFragment(AFragment: TFragment);

            function Fragment(index: integer): TFragment;

            property FragmentsCount: integer read GetFragmentsCount;
    end;

implementation

constructor TTextBlock.Create;
begin
    FFragments := specialize TObjectList<TFragment>.Create(True);
end;

destructor TTextBlock.Destroy;
begin
    FFragments.Free;

    inherited Destroy;
end;

function TTextBlock.GetFragmentsCount: integer;
begin
    Result := FFragments.Count;
end;

procedure TTextBlock.AddFragment(AFragment: TFragment);
begin
    FFragments.Add(AFragment);
end;

function TTextBlock.Fragment(index: integer): TFragment;
begin
    { @TODO Check if index is correct }
    Result := FFragments[index];
end;

end.

