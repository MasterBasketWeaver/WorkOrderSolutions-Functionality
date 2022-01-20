pageextension 60066 "BBC WOSF Cust. Ledger Entries" extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Customer No.")
        {
            field("BBC WOSF Customer Name"; Rec."BBC WOSF Customer Name")
            {
                ApplicationArea = All;
            }
        }
    }
}
