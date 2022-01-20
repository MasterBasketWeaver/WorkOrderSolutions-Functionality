pageextension 60056 "BBC WOSF Posted Sales Invoices" extends "Posted Sales Invoices"
{
    layout
    {
        addafter(Corrective)
        {
            field("BBC WOSF Internal Comments"; Rec."BBC WOSF Internal Comments")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF External Comments"; Rec."BBC WOSF External Comments")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF Creation Date"; Rec."BBC WOSF Creation Date")
            {
                ApplicationArea = All;
            }
        }
        addafter(Amount)
        {
            field("BBC WOSFTotalTax"; TotalTax)
            {
                Caption = 'Total Tax';
                ApplicationArea = All;
            }
        }
        addafter("Shortcut Dimension 2 Code")
        {
            field("BBC WOSF ShortcutDimCode4"; ShortcutDimCode[4])
            {
                ApplicationArea = All;
                TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4), "Dimension Value Type" = CONST(Standard));
                CaptionClass = '1,2,4';
            }
        }
        modify(Amount)
        {
            Caption = 'Subtotal';
        }
        modify("Amount Including VAT")
        {
            Caption = 'Grand Total';
        }
    }
    local procedure TotalTax(): Decimal;
    begin
        exit(Rec."Amount Including VAT" - Rec.Amount);
    end;

    trigger OnAfterGetRecord()
    var
        DimMgt: Codeunit DimensionManagement;
    begin
        DimMgt.GetShortcutDimensions(Rec."Dimension Set ID", ShortcutDimCode);
    end;

    var
        ShortcutDimCode: array[8] of Code[20];
}
