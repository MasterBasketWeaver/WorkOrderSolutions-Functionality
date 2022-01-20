tableextension 60002 "BBC WOSF Purch. Inv. Header" extends "Purch. Inv. Header"
{
    fields
    {
        field(60001; "BBC WOSF Notes"; Blob)
        {
            DataClassification = CustomerContent;
            Caption = 'Notes';
        }

        field(60010; "BBC WOSF Internal Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Internal Comments';
            Editable = false;
        }
        field(60011; "BBC WOSF External Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'External Comments';
            Editable = false;
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