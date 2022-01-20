pageextension 60051 "BBC WOSF Purch. Credit Memos" extends "Purchase Credit Memos"
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
    }
}
