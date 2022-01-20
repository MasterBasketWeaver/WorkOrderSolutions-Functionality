tableextension 60000 "BBC WOSF Company Info" extends "Company Information"
{
    fields
    {
        field(60000; "BBC WOSF RemitToName"; Text[50])
        {
            Caption = 'Remit-to Name';
            DataClassification = ToBeClassified;
        }
        field(60001; "BBC WOSF RemitToName2"; Text[50])
        {
            Caption = 'Remit-to Name 2';
            DataClassification = ToBeClassified;
        }
        field(60002; "BBC WOSF RemitToAddress"; Text[50])
        {
            Caption = 'Remit-to Address';
            DataClassification = ToBeClassified;
        }
        field(60003; "BBC WOSF RemitToAddress2"; Text[50])
        {
            Caption = 'Remit-to Address 2';
            DataClassification = ToBeClassified;
        }
        field(60004; "BBC WOSF RemitToCity"; Text[30])
        {
            Caption = 'Remit-to City';
            DataClassification = ToBeClassified;
            TableRelation = IF ("BBC WOSF RemitToCountryCode" = CONST()) "Post Code".City
            ELSE
            IF ("BBC WOSF RemitToCountryCode" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("BBC WOSF RemitToCountryCode"));
            ValidateTableRelation = false;

            trigger OnValidate()
            begin
                PostCode.ValidateCity("BBC WOSF RemitToCity", "BBC WOSF RemitToPostCode", "BBC WOSF RemitToCounty", "BBC WOSF RemitToCountryCode", (CurrFieldNo <> 0) AND GUIALLOWED);
            end;
        }
        field(60005; "BBC WOSF RemitToPostCode"; Code[20])
        {
            Caption = 'Remit-to Post Code';
            DataClassification = ToBeClassified;
            TableRelation = IF ("BBC WOSF RemitToCountryCode" = CONST()) "Post Code".City
            ELSE
            IF ("BBC WOSF RemitToCountryCode" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("BBC WOSF RemitToCountryCode"));
            ValidateTableRelation = false;

            trigger OnValidate()
            begin
                PostCode.ValidatePostCode("BBC WOSF RemitToCity", "BBC WOSF RemitToPostCode", "BBC WOSF RemitToCounty", "BBC WOSF RemitToCountryCode", (CurrFieldNo <> 0) AND GUIALLOWED);
            end;
        }
        field(60006; "BBC WOSF RemitToCounty"; Text[30])
        {
            Caption = 'Remit-to State';
            CaptionClass = '5,1,' + "BBC WOSF RemitToCountryCode";
            DataClassification = ToBeClassified;
        }
        field(60007; "BBC WOSF RemitToCountryCode"; Code[10])
        {
            Caption = 'Remit-to Country/Region Code';
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
        field(60008; "BBC WOSF RemitToContact"; Text[50])
        {
            Caption = 'Remit-to Contact';
        }
    }
    var
        PostCode: Record "Post Code";
}
