pageextension 60003 "BBC WOSF Sales Order" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("RSMUS Well"; Rec."RSMUS Well")
            {
                ApplicationArea = all;
            }
            field("RSMUS Rig or CTU"; Rec."RSMUS Rig or CTU")
            {
                ApplicationArea = all;
            }
            field("RSMUS County"; Rec."RSMUS County")
            {
                ApplicationArea = all;
            }
            field("RSMUS Customer Rep"; Rec."RSMUS Customer Rep")
            {
                ApplicationArea = all;
            }
            field("RSMUS WOS Job"; Rec."RSMUS WOS Job")
            {
                ApplicationArea = all;
            }
            field("RSMUS Service Start Date"; Rec."RSMUS Service Start Date")
            {
                ApplicationArea = all;
            }
            field("RSMUS Customer Reference"; Rec."RSMUS Customer Reference")
            {
                ApplicationArea = all;
            }
            field("RSMUS Client PO"; Rec."RSMUS Client PO")
            {
                ApplicationArea = all;
            }
            field("RSMUS AFE"; Rec."RSMUS AFE")
            {
                ApplicationArea = all;
            }
            field("RSMUS Creation Date"; Rec."RSMUS Creation Date")
            {
                ApplicationArea = all;
                Visible = false;
            }
        }
    }
}