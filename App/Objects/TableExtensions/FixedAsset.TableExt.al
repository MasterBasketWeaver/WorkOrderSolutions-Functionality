tableextension 60020 "BBC WOSF Fixed Asset" extends "Fixed Asset"
{
    fields
    {
        field(60000; "BBC WOSF Depr. Start Date"; Date)
        {
            Caption = 'Depreciation Starting Date';
            FieldClass = FlowField;
            CalcFormula = lookup("FA Depreciation Book"."Depreciation Starting Date" where("FA No." = field("No."), "Depreciation Book Code" = const('BOOK')));
        }
    }
}
