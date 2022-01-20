pageextension 60053 "BBC WOSF SalesQuotes" extends "Sales Quotes"
{
    layout
    {
        addafter("Quote Valid Until Date")
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
