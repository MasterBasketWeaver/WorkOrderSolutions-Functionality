tableextension 60021 "BBC WOSF Cust. Ledger Entry" extends "Cust. Ledger Entry"
{
    fields
    {
        field(60000; "BBC WOSF Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));
        }
    }
}
