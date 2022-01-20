pageextension 60042 "BBC WOSF Sales Order Subform" extends "Sales Order Subform"
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
