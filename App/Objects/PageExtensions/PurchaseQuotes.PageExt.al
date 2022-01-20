pageextension 60048 "BBC WOSF Purchase Quotes" extends "Purchase Quotes"
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
