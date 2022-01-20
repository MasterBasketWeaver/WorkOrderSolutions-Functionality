pageextension 60062 "BBC WOSF P. Transfer Shipments" extends "Posted Transfer Shipments"
{
    layout
    {
        addafter("No.")
        {
            field("BBC WOSFTransfer Order No."; Rec."Transfer Order No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
