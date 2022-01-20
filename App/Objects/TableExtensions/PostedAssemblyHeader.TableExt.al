tableextension 60012 "BBC WOSF Posted Ass. Hdr." extends "Posted Assembly Header"
{
    fields
    {
        field(60000; "BBC WOSF Internal Comments"; Text[250])
        {
            Caption = 'Internal Comments';
            Editable = true;
        }
        field(60001; "BBC WOSF External Comments"; Text[250])
        {
            Caption = 'External Comments';
            Editable = true;
        }
    }
}
