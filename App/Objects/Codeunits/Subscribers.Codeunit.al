codeunit 60010 "BBC WOSF Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforeInsertReceiptHeader', '', false, false)]
    local procedure PurchPostOnBeforeInsertReceiptHeader(var PurchHeader: Record "Purchase Header"; var PurchRcptHeader: Record "Purch. Rcpt. Header")
    begin
        PurchRcptHeader.WriteToNotes(PurchHeader.ReadFromNotes());
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforeInsertInvoiceHeader', '', false, false)]
    local procedure PurchPostOnBeforeInsertInvoiceHeader(var PurchHeader: Record "Purchase Header"; var PurchInvHeader: Record "Purch. Inv. Header")
    begin
        PurchInvHeader.WriteToNotes(PurchHeader.ReadFromNotes());
    end;
}