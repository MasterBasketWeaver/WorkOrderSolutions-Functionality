tableextension 60015 "BBC WOSF Sales Inv. Line" extends "Sales Invoice Line"
{
    fields
    {
        field(60000; "BBC WOSF Serial No. List"; text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Serial Nos.';
        }
        field(60001; "BBC WOSF Serial Quantity List"; text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Serial Quantities';
        }
        field(60005; "BBC WOSFPR/RSA"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'PR No./RSA No.';
            Editable = false;
        }
        field(60006; "BBC WOSFUnit Numbers"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Unit Numbers';
            Editable = false;
        }
    }
}
