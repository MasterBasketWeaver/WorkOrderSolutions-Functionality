report 60005 "BBC WOSF Transfer Fields"
{
    Caption = 'Transfer Customer Fields';
    ApplicationArea = all;
    UsageCategory = Tasks;
    ProcessingOnly = true;
    UseRequestPage = false;

    trigger OnPostReport()
    var
        InstallData: Codeunit "BBC WOSF Install Data";
    begin
        if not Confirm('Transfer Custom Fields?') then
            exit;

        InstallData.TransferCustomFields();
    end;
}