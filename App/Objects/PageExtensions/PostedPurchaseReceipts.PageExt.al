pageextension 60064 "BBC WOSF Posted Purch. Rcpts." extends "Posted Purchase Receipts"
{
    layout
    {
        addafter("No.")
        {
            field("BBC WOSFOrder No."; Rec."Order No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
