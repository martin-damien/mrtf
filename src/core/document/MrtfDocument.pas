unit MrtfDocument;

{$mode ObjFPC}{$H+}

interface

uses
    Classes, Generics.Collections, MrtfBlock;

type
    TDocument = class
        private
            FBlocks: specialize TObjectList<TBlock>;

            function GetBlocksCount: integer;

        public
            constructor Create;
            destructor Destroy; override;

            procedure AddBlock(ABlock: TBlock);

            function Blocks(index: integer): TBlock;

            property BlocksCount: integer read GetBlocksCount;
    end;

implementation

constructor TDocument.Create;
begin
    FBlocks := specialize TObjectList<TBlock>.Create(True);
end;

destructor TDocument.Destroy;
begin
    FBlocks.Free;

    inherited Destroy;
end;

function TDocument.GetBlocksCount: integer;
begin
    Result := FBlocks.Count;
end;

procedure TDocument.AddBlock(ABlock: TBlock);
begin
    FBlocks.Add(ABlock);
end;

function TDocument.Blocks(index: integer): TBlock;
begin
    { @TODO Check if index is correct }
    Result := FBlocks[index];
end;

end.

