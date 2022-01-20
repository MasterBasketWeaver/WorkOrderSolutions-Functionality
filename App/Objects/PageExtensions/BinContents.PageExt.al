pageextension 60065 "BBC WOSF Bin Contents" extends "Bin Contents"
{
    layout
    {
        addafter("Item No.")
        {
            field("BBC WOSF Item Description"; Rec."BBC WOSF Item Description")
            {
                ApplicationArea = All;
            }
        }
    }
}
