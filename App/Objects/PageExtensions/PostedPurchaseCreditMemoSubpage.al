pageextension 60032 "BBC WOSF P. Purc. Cr.Memo Sub." extends "Posted Purch. Cr. Memo Subform"
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
    local procedure GetLineNo(Rec: Record "Purch. Cr. Memo Line"): Integer
    var
        lCounter: Integer;
        lPurchaseCrMemoLine: Record "Purch. Cr. Memo Line";
    begin
        lCounter := 1;
        lPurchaseCrMemoLine.RESET;
        lPurchaseCrMemoLine.SETRANGE("Document No.", Rec."Document No.");
        if lPurchaseCrMemoLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lPurchaseCrMemoLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lPurchaseCrMemoLine.Next() = 0;
        end;
        exit(0);
    end;
}
