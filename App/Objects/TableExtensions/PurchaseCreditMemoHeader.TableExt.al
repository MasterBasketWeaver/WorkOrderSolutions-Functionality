tableextension 60009 "BBC WSOF Purch. CM. Hdr." extends "Purch. Cr. Memo Hdr."
{
    fields
    {
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
}
