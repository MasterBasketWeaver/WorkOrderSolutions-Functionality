tableextension 60019 "BBC WOSF Bin Content" extends "Bin Content"
{
    fields
    {
        field(60000; "BBC WOSF Item Description"; Text[100])
        {
            Caption = 'Item Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Item.Description where("No." = field("Item No.")));
        }
    }
}
