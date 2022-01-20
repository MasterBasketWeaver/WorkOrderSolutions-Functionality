pageextension 60027 "BBC WOSF Gen. Ledger Entries" extends "General Ledger Entries"
{
    layout
    {
        addafter("Global Dimension 2 Code")
        {
            field("BBC WSOF ShortcutDimCode3"; ShortcutDimCode[3])
            {
                ApplicationArea = All;
                TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(3), "Dimension Value Type" = CONST(Standard));
                CaptionClass = '1,2,3';
            }
            field("BBC WSOF ShortcutDimCode4"; ShortcutDimCode[4])
            {
                ApplicationArea = All;
                TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4), "Dimension Value Type" = CONST(Standard));
                CaptionClass = '1,2,4';
            }
            field("BBC WSOF ShortcutDimCode5"; ShortcutDimCode[5])
            {
                ApplicationArea = All;
                TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(5), "Dimension Value Type" = CONST(Standard));
                CaptionClass = '1,2,5';
            }
            field("BBC WSOF ShortcutDimCode6"; ShortcutDimCode[6])
            {
                ApplicationArea = All;
                TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(6), "Dimension Value Type" = CONST(Standard));
                CaptionClass = '1,2,6';
            }
            field("BBC WSOF ShortcutDimCode7"; ShortcutDimCode[7])
            {
                ApplicationArea = All;
                TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(7), "Dimension Value Type" = CONST(Standard));
                CaptionClass = '1,2,7';
            }
            field("BBC WSOF ShortcutDimCode8"; ShortcutDimCode[8])
            {
                ApplicationArea = All;
                TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(8), "Dimension Value Type" = CONST(Standard));
                CaptionClass = '1,2,8';
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        DimMgt: Codeunit DimensionManagement;
    begin
        DimMgt.GetShortcutDimensions(Rec."Dimension Set ID", ShortcutDimCode);
    end;

    var
        ShortcutDimCode: array[8] of Code[20];
}
