pageextension 60003 "BBC WOSF Sales Order" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("BBC WOSF Internal Comments"; Rec."BBC WOSF Internal Comments")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF External Comments"; Rec."BBC WOSF External Comments")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF Well"; Rec."BBC WOSF Well")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF Rig or CTU"; Rec."BBC WOSF Rig or CTU")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF County"; Rec."BBC WOSF County")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF Customer Rep"; Rec."BBC WOSF Customer Rep")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF WOS Job"; Rec."BBC WOSF WOS Job")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF Service Start Date"; Rec."BBC WOSF Service Start Date")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF Customer Reference"; Rec."BBC WOSF Customer Reference")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF Client PO"; Rec."BBC WOSF Client PO")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF AFE"; Rec."BBC WOSF AFE")
            {
                ApplicationArea = all;
            }
            field("BBC WOSF Creation Date"; Rec."BBC WOSF Creation Date")
            {
                ApplicationArea = all;
                Visible = false;
            }
        }
    }
}