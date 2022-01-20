pageextension 60046 "BBC WOSF Purch. Order Subform" extends "Purchase Order Subform"
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
        addlast(Control1)
        {
            field("BBC WOSF Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
            {
                ApplicationArea = All;
            }
        }
    }
    local procedure GetLineNo(Rec: Record "Purchase Line"): Integer
    var
        lCounter: Integer;
        lPurchaseLine: Record "Purchase Line";
    begin
        lCounter := 1;
        lPurchaseLine.RESET;
        lPurchaseLine.SETRANGE("Document Type", Rec."Document Type");
        lPurchaseLine.SETRANGE("Document No.", Rec."Document No.");
        if lPurchaseLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lPurchaseLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lPurchaseLine.Next() = 0;
        end;
        exit(0);
    end;
}
