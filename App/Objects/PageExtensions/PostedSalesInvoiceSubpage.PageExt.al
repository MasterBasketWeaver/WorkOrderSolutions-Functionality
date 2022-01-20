pageextension 60035 "BBC WOSF P. Sales Inv. Subpage" extends "Posted Sales Invoice Subform"
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
        addafter("Amount Including VAT")
        {
            field("BBC WOSF PR/RSA"; Rec."BBC WOSF PR/RSA")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF Unit Numbers"; Rec."BBC WOSF Unit Numbers")
            {
                ApplicationArea = All;
            }
        }
    }
    local procedure GetLineNo(Rec: Record "Sales Invoice Line"): Integer
    var
        lCounter: Integer;
        lSalesInvoiceLine: Record "Sales Invoice Line";
    begin
        lCounter := 1;
        lSalesInvoiceLine.RESET;
        lSalesInvoiceLine.SETRANGE("Document No.", Rec."Document No.");
        if lSalesInvoiceLine.FindSet() then begin
            repeat
                if Rec."Line No." <> lSalesInvoiceLine."Line No." then
                    lCounter += 1
                else
                    exit(lCounter);
            until lSalesInvoiceLine.Next() = 0;
        end;
        exit(0);
    end;
}
