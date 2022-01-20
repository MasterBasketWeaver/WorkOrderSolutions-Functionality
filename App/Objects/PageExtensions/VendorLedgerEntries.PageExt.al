pageextension 60067 "BBC WOSF Vend. Ledger Entries" extends "Vendor Ledger Entries"
{
    layout
    {
        addafter("Vendor No.")
        {
            field("BBC WOSF Vendor Name"; Rec."BBC WOSF Vendor Name")
            {
                ApplicationArea = All;
            }
        }
    }
}
