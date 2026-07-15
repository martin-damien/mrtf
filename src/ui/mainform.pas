unit mainform;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils, Forms, Controls, Graphics, Dialogs, MrtfDocument, LazUTF8;

type

    { TApplicationForm }

    TApplicationForm = class(TForm)
        procedure FormCreate(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure FormPaint(Sender: TObject);

        private

        public

    end;

var
    ApplicationForm: TApplicationForm;
    FText: string;
    FCaret: integer;
    x, y: integer;

implementation

{$R *.lfm}

{ TApplicationForm }

procedure TApplicationForm.FormCreate(Sender: TObject);
begin
    {
        We will use UTF-8 and count in "unicode code points",
        "grapheme" will not be handled (look é  it count as two code points)
    }
    FText := 'Hello World é 🙂 AVAVAVAV ToToToTo';
    FCaret := 0;
    y := 10;
end;

procedure TApplicationForm.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    inc(FCaret);
    Invalidate;
end;

procedure TApplicationForm.FormPaint(Sender: TObject);
var
    textToCaret: string;
    caretX, caretY: integer;
    textHeight: integer;
begin
    Canvas.TextOut(10, 10, FText);

    { Cursor }

    textToCaret := UTF8Copy(FText, 1, FCaret);
    textHeight := Canvas.TextHeight(textToCaret);

    x := 10 + Canvas.TextWidth(textToCaret);

    caretX := 10 + Canvas.TextWidth(textToCaret);
    caretY := y;

    Canvas.MoveTo(caretX, caretY);
    Canvas.LineTo(caretX, caretY + 20);

    Caption := Format('%d %d %d', [FCaret, x, y]);
end;

end.

