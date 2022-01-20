tableextension 60022 "BBC WOSF Vendor Ledger Entry" extends "Vendor Ledger Entry"
{
    fields
    {
        field(60000; "BBC WOSF Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
        }
    }
}
