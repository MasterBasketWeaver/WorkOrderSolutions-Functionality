pageextension 60040 "BBC WOSF Sales Inv. Subform" extends "Sales Invoice Subform"
{
    layout
    {
        addbefore(Type)
        {
            field("BBC WOSF NewLineNo"; GetLineNo(Rec))
            {
                ApplicationArea = All;
                Caption = 'Line No.';
                Editable = false;
            }
        }
        addafter(Quantity)
        {
            field("BBC WOSF PR/RSA"; Rec."BBC WOSF PR/RSA")
            {
                ApplicationArea = All;

                trigger OnLookup(var Text: Text): Boolean
                begin
                    Rec.OpenItemTrackingLines();
                end;
            }
            field("BBC WOSF Unit Numbers"; Rec."BBC WOSF Unit Numbers")
            {
                ApplicationArea = All;

                trigger OnLookup(var Text: Text): Boolean
                begin
                    Rec.OpenItemTrackingLines();
                end;
            }
        }
    }
    local procedure GetLineNo(Rec: Record "Sales Line"): Integer
    var
        lCounter: Integer;
        lSalesLine: Record "Sales Line";
    begin
        lCounter := 1;
        lSalesLine.RESET;
        lSalesLine.SETRANGE("Document Type", Rec."Document Type");
        lSalesLine.SETRANGE("Document No.", Rec."Document No.");
        if lSalesLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lSalesLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lSalesLine.Next() = 0;
        end;
        exit(0);
    end;
}
