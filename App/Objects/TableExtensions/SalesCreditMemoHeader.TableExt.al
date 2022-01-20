tableextension 60010 "BBC WOSF Sales CM. Header" extends "Sales Cr.Memo Header"
{
    fields
    {
        field(60000; "BBC WOSF Internal Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Internal Comments';
            Editable = false;
        }
        field(60001; "BBC WOSF External Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'External Comments';
            Editable = false;
        }
    }
}
