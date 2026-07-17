program mrtf;

{$mode objfpc}{$H+}

uses
    {$IFDEF UNIX}
    cthreads,
    {$ENDIF}
    {$IFDEF HASAMIGA}
    athreads,
    {$ENDIF}
    Interfaces, // this includes the LCL widgetset
    Forms, mainform, test_fragment, MrtfDocument, MrtfParagraph,
    MrtfBlock, MrtfFragment, MrtfTextBlock, test_document;

{$R *.res}

begin
    RequireDerivedFormResource:=True;
    Application.Scaled:=True;
    {$PUSH}{$WARN 5044 OFF}
    Application.MainFormOnTaskbar:=True;
    {$POP}
    Application.Initialize;
    Application.CreateForm(TApplicationForm, ApplicationForm);
    Application.Run;
end.

