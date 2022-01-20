pageextension 60049 "BBC WOSF Purchase Invoices" extends "Purchase Invoices"
{
    layout
    {
        addafter("Assigned User ID")
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
    }
}
