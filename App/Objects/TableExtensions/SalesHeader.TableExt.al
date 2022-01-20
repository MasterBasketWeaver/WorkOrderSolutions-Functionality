tableextension 60006 "BBC WOSF SalesHeader" extends "Sales Header"
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
        field(60002; "BBC WOSF Well"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Well';
        }
        field(60003; "BBC WOSF Rig or CTU"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Rig or CTU';
        }
        field(60004; "BBC WOSF County"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'County';
        }
        field(60005; "BBC WOSF Customer Rep"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Rep';
        }
        field(60006; "BBC WOSF WOS Job"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'WOS Job No.';
        }
        field(60007; "BBC WOSF Service Start Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Service Start Date';
        }
        field(60008; "BBC WOSF Customer Reference"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Reference';
        }
        field(60009; "BBC WOSF Client PO"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Client PO No.';
        }
        field(60010; "BBC WOSF AFE"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'AFE';
        }
        field(60012; "BBC WOSF Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
    }
}
