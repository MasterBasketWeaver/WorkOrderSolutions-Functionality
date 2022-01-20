pageextension 60055 "BBC WOSFSalesInvoiceList" extends "Sales Invoice List"
{
    layout
    {
        addafter(Amount)
        {
            field("BBC WOSF TotalTax"; GetTotalTax())
            {
                Caption = 'Total Tax';
                ApplicationArea = All;
                Editable = false;
            }
            field("BBC WOSFAmount Including VAT"; Rec."Amount Including VAT")
            {
                Caption = 'Grand Total';
                ApplicationArea = All;
            }
            field("BBC WOSF Internal Comments"; Rec."BBC WOSF Internal Comments")
            {
                ApplicationArea = All;
                Caption = 'Internal Comments';
            }
            field("BBC WOSF External Comments"; Rec."BBC WOSF External Comments")
            {
                ApplicationArea = All;
                Caption = 'External Comments';
            }
            field("BBC WOSF Creation Date"; Rec."BBC WOSF Creation Date")
            {
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
    }
    local procedure GetTotalTax(): Decimal;
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
