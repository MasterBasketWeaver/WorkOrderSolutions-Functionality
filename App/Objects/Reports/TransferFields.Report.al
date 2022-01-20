report 60005 "BBC WSOF Transfer Fields"
{
    Caption = 'Transfer Customer Fields';
    ApplicationArea = all;
    UsageCategory = Tasks;
    ProcessingOnly = true;
    UseRequestPage = false;

    trigger OnPostReport()
    var
        InstallData: Codeunit "BBC WSOF Install Data";
    begin
        if not Confirm('Transfer Custom Fields?') then
            exit;

        InstallData.TransferCustomFields();
    end;
}