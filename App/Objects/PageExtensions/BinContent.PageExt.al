pageextension 60068 "BBC WOSF Bin Content" extends "Bin Content"
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
