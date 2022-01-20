pageextension 60059 "BBC WOSF Posted Sales Shpts." extends "Posted Sales Shipments"
{
    layout
    {
        addafter("No. Printed")
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
