tableextension 60001 "BBC WOSF Purch. Rcpt. Header" extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50101; "BBC WOSF Notes"; Blob)
        {
            DataClassification = CustomerContent;
            Caption = 'Notes';
        }
    }

    procedure WriteToNotes(Input: Text)
    var
        OStream: OutStream;
    begin
        Clear("BBC WOSF Notes");
        "BBC WOSF Notes".CreateOutStream(OStream, TextEncoding::UTF8);
        OStream.WriteText(Input);
    end;

    procedure ReadFromNotes(): Text
    var
        IStream: InStream;
    begin
        CalcFields("BBC WOSF Notes");
        "BBC WOSF Notes".CreateInStream(IStream, TextEncoding::UTF8);
        Clear(TypeHelper);
        exit(TypeHelper.ReadAsTextWithSeparator(IStream, TypeHelper.LFSeparator()));
    end;

    var
        TypeHelper: Codeunit "Type Helper";
}