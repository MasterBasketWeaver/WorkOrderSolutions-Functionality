pageextension 60052 "BBC WOSF P. Purch. Cr.Memos" extends "Posted Purchase Credit Memos"
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
