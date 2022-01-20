tableextension 60014 "BBC WSOF SalesLine" extends "Sales Line"
{
    fields
    {
        field(60000; "BBC WSOF Serial No. List"; text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Serial Nos.';
            ObsoleteState = Removed;
        }
        field(60001; "BBC WSOF Serial Quantity List"; text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Serial Quantities';
            ObsoleteState = Removed;
        }
        field(60005; "BBC WSOF PR/RSA"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'PR No./RSA No.';
        }
        field(60006; "BBC WSOF Unit Numbers"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Unit Numbers';
        }
    }
}
