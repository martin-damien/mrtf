unit mainform;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils, Forms, Controls, Graphics, Dialogs, MrtfDocument;

type

    { TApplicationForm }

    TApplicationForm = class(TForm)
        procedure FormCreate(Sender: TObject);
    private

    public

    end;

var
    ApplicationForm: TApplicationForm;

implementation

{$R *.lfm}

{ TApplicationForm }

procedure TApplicationForm.FormCreate(Sender: TObject);
var
    doc: TDocument;
begin
    doc := TDocument.Create;
    doc.AddParagraph;
    doc.AddParagraph;
    try
        ShowMessage('Document created with ' + IntToStr(doc.ParagraphsCount) + ' paragraphs');
    finally
        doc.Free;
    end;
end;

end.

