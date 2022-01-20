pageextension 60033 "BBC WOSF P. Purch. Inv. Sub." extends "Posted Purch. Invoice Subform"
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
    local procedure GetLineNo(Rec: Record "Purch. Inv. Line"): Integer
    var
        lCounter: Integer;
        lPurchaseInvLine: Record "Purch. Inv. Line";
    begin
        lCounter := 1;
        lPurchaseInvLine.RESET;
        lPurchaseInvLine.SETRANGE("Document No.", Rec."Document No.");
        if lPurchaseInvLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lPurchaseInvLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lPurchaseInvLine.Next() = 0;
        end;
        exit(0);
    end;
}
