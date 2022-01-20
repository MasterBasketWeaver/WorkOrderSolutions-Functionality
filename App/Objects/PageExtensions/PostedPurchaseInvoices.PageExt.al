pageextension 60050 "BBC WOSF Posted Purch. Invs." extends "Posted Purchase Invoices"
{
    layout
    {
        addafter(Amount)
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
        addafter("Posting Date")
        {
            field("BBC WOSFPosting Description"; Rec."Posting Description")
            {
                ApplicationArea = All;
            }
        }
    }
}
