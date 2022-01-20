pageextension 60054 "BBC WOSFSalesOrderList" extends "Sales Order List"
{
    layout
    {
        addafter("Amount Including VAT")
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
