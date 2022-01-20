pageextension 60022 "BBC WOSF Item Journal" extends "Item Journal"
{
    layout
    {
        addafter("Reason Code")
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
