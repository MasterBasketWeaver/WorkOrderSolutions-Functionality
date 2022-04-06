reportextension 60001 "BBC WOS Bank Acc. Rec" extends 1408
{
    dataset
    {
        modify("Bank Acc. Reconciliation Line")
        {
            trigger OnAfterAfterGetRecord()
            var
                BankAccLedgEntry: Record "Bank Account Ledger Entry";
            begin
                "Document No." := '';
                if "Applied Entries" = 0 then
                    exit;
                BankAccLedgEntry.SetCurrentKey("Bank Account No.", Open);
                BankAccLedgEntry.SetRange("Bank Account No.", "Bank Account No.");
                BankAccLedgEntry.SetRange(Open, true);
                BankAccLedgEntry.SetRange("Statement Status", BankAccLedgEntry."Statement Status"::"Bank Acc. Entry Applied");
                BankAccLedgEntry.SetRange("Statement No.", "Statement No.");
                BankAccLedgEntry.SetRange("Statement Line No.", "Statement Line No.");
                if BankAccLedgEntry.FindFirst() then
                    "Document No." := BankAccLedgEntry."Document No.";
            end;
        }
    }
}