tableextension 60013 "BBC WOSF SalesInvoiceHeader" extends "Sales Invoice Header"
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
        field(60002; "BBC WOSF Well"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Well';
            Editable = false;
        }
        field(60003; "BBC WOSF Rig or CTU"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Rig or CTU';
            Editable = false;
        }
        field(60004; "BBC WOSF County"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'County';
            Editable = false;
        }
        field(60005; "BBC WOSF Customer Rep"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Rep';
            Editable = false;
        }
        field(60006; "BBC WOSF WOS Job"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'WOS Job No.';
            Editable = false;
        }
        field(60007; "BBC WOSF Service Start Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Service Start Date';
            Editable = false;
        }
        field(60008; "BBC WOSF Customer Reference"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Reference';
            Editable = false;
        }
        field(60009; "BBC WOSF Client PO"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Client PO No.';
            Editable = false;
        }
        field(60010; "BBC WOSF AFE"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'AFE';
            Editable = false;
        }
        field(60012; "BBC WOSF Creation Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Creation Date';
            Editable = false;
        }
    }
}
