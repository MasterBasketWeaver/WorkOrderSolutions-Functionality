tableextension 60014 "BBC WOSF SalesLine" extends "Sales Line"
{
    fields
    {
        field(60000; "BBC WOSF Serial No. List"; text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Serial Nos.';
            ObsoleteState = Removed;
        }
        field(60001; "BBC WOSF Serial Quantity List"; text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Serial Quantities';
            ObsoleteState = Removed;
        }
        field(60005; "BBC WOSF PR/RSA"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'PR No./RSA No.';
        }
        field(60006; "BBC WOSF Unit Numbers"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Unit Numbers';
        }
    }
}
