pageextension 60030 "BBC WOSF P. Purch. Rcpt. Sub." extends "Posted Purchase Rcpt. Subform"
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
    local procedure GetLineNo(Rec: Record "Purch. Rcpt. Line"): Integer
    var
        lCounter: Integer;
        lPurchaseReceiptLine: Record "Purch. Rcpt. Line";
    begin
        lCounter := 1;
        lPurchaseReceiptLine.RESET;
        lPurchaseReceiptLine.SETRANGE("Document No.", Rec."Document No.");
        if lPurchaseReceiptLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lPurchaseReceiptLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lPurchaseReceiptLine.Next() = 0;
        end;
        exit(0);
    end;
}
