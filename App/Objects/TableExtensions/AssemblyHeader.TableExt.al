tableextension 60007 "BBC WOSF Assembly Header" extends "Assembly Header"
{
    fields
    {
        field(60000; "BBC WOSF Internal Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Internal Comments';
        }
        field(60001; "BBC WOSF External Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'External Comments';
        }
    }
}
