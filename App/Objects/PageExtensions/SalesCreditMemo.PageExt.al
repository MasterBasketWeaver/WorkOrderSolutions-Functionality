pageextension 60014 "BBC WOSFSalesCreditMemo" extends "Sales Credit Memo"
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
