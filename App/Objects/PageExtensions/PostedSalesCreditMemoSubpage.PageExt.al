pageextension 60034 "BBC WOSF P. Sales Cr.Memo Sub." extends "Posted Sales Cr. Memo Subform"
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
    local procedure GetLineNo(Rec: Record "Sales Cr.Memo Line"): Integer
    var
        lCounter: Integer;
        lSalesCrMemoLine: Record "Sales Cr.Memo Line";
    begin
        lCounter := 1;
        lSalesCrMemoLine.RESET;
        lSalesCrMemoLine.SETRANGE("Document No.", Rec."Document No.");
        if lSalesCrMemoLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lSalesCrMemoLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lSalesCrMemoLine.Next() = 0;
        end;
        exit(0);
    end;
}
