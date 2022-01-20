tableextension 60008 "BBC WOSF Purch. Header" extends "Purchase Header"
{
    fields
    {
        field(60000; "BBC WOSF Notes"; Blob)
        {
            DataClassification = CustomerContent;
            Caption = 'Notes';
        }
        field(60010; "BBC WOSF Internal Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Internal Comments';
        }
        field(60011; "BBC WOSF External Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'External Comments';
        }
    }

    procedure WriteToNotes(Input: Text)
    var
        OStream: OutStream;
    begin
        Clear(Rec."BBC WOSF Notes");
        Rec."BBC WOSF Notes".CreateOutStream(OStream, TextEncoding::UTF8);
        OStream.WriteText(Input);
    end;

    procedure ReadFromNotes(): Text
    var
        IStream: InStream;
    begin
        Rec.CalcFields("BBC WOSF Notes");
        Rec."BBC WOSF Notes".CreateInStream(IStream, TextEncoding::UTF8);
        Clear(TypeHelper);
        exit(TypeHelper.ReadAsTextWithSeparator(IStream, TypeHelper.LFSeparator()));
    end;

    var
        TypeHelper: Codeunit "Type Helper";
}