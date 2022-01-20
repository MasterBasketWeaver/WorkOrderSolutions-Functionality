pageextension 60043 "BBC WOSF Item Ledger Entries" extends "Item Ledger Entries"
{
    layout
    {
        addafter("Dimension Set ID")
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
        addafter("Item No.")
        {
            field("BBC WOSF Item Description"; Rec."BBC WOSF Item Description")
            {
                ApplicationArea = All;
            }
        }
    }
}
