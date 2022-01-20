pageextension 60060 "BBC WOSF Assembly Orders" extends "Assembly Orders"
{
    layout
    {
        addafter("Remaining Quantity")
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
