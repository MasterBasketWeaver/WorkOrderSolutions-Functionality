tableextension 60003 "BBC WOSF Item Jnl. Line" extends "Item Journal Line"
{
    fields
    {
        field(60001; "BBC WOSF Internal Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Internal Comments';
        }
        field(60002; "BBC WOSF External Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'External Comments';
        }
    }
}
