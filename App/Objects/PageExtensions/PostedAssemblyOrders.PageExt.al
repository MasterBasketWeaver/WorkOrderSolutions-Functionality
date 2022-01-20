pageextension 60061 "BBC WOSF P. Assembly Orders" extends "Posted Assembly Orders"
{
    layout
    {
        addafter("Unit Cost")
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
