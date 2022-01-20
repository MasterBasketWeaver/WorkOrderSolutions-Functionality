pageextension 60058 "BBC WOSF Posted Sales Cr.Memos" extends "Posted Sales Credit Memos"
{
    layout
    {
        addafter("No. Printed")
        {
            field("BBC WOSF Internal Comments"; Rec."BBC WOSF Internal Comments")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF External Comments"; Rec."BBC WOSF External Comments")
            {
                ApplicationArea = All;
            }
        }
        addafter("Applies-to Doc. Type")
        {
            field("BBC WOSFApplies-to Doc. No."; Rec."Applies-to Doc. No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
