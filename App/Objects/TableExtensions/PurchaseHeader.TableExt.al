tableextension 60000 "BBC WOSF Purch. Header" extends "Purchase Header"
{
    fields
    {
        field(60000; "BBC WSOF Notes"; Blob)
        {
            DataClassification = CustomerContent;
            Caption = 'Notes';
        }
    }

    procedure WriteToNotes(Input: Text)
    var
        OStream: OutStream;
    begin
        Clear(Rec."BBC WSOF Notes");
        Rec."BBC WSOF Notes".CreateOutStream(OStream, TextEncoding::UTF8);
        OStream.WriteText(Input);
    end;

    procedure ReadFromNotes(): Text
    var
        IStream: InStream;
    begin
        Rec.CalcFields("BBC WSOF Notes");
        Rec."BBC WSOF Notes".CreateInStream(IStream, TextEncoding::UTF8);
        Clear(TypeHelper);
        exit(TypeHelper.ReadAsTextWithSeparator(IStream, TypeHelper.LFSeparator()));
    end;

    var
        TypeHelper: Codeunit "Type Helper";
}