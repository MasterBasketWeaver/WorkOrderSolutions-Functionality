pageextension 60063 "BBC WOSF P. Transfer Rcpts." extends "Posted Transfer Receipts"
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
