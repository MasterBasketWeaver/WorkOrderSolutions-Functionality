pageextension 60018 "BBC WOSF Posted Sales Cr.Memo" extends "Posted Sales Credit Memo"
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
        }
    }
}
