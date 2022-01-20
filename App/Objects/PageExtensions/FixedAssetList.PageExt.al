pageextension 60006 "BBC WOSF Fixed Asset List" extends "Fixed Asset List"
{
    layout
    {
        addlast(Control1)
        {
            field("BBC WOSF Serial No."; Rec."Serial No.")
            {
                ApplicationArea = All;
            }
        }
        addafter(Acquired)
        {
            field("BBC WOSF Depreciation Start Date"; Rec."BBC WOSF Depr. Start Date")
            {
                ApplicationArea = All;
            }
        }
    }
}
