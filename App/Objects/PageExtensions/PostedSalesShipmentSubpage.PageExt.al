pageextension 60031 "BBC WOSF P. Sales Shpt. Sub." extends "Posted Sales Shpt. Subform"
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
    local procedure GetLineNo(Rec: Record "Sales Shipment Line"): Integer
    var
        lCounter: Integer;
        lSalesShipmentLine: Record "Sales Shipment Line";
    begin
        lCounter := 1;
        lSalesShipmentLine.RESET;
        lSalesShipmentLine.SETRANGE("Document No.", Rec."Document No.");
        if lSalesShipmentLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lSalesShipmentLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lSalesShipmentLine.Next() = 0;
        end;
        exit(0);
    end;
}
