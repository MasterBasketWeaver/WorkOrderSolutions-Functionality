pageextension 60005 "BBC WOSF Customer List" extends "Customer List"
{
    actions
    {
        modify(Statement)
        {
            Visible = false;
            ApplicationArea = none;
        }
        modify(FinanceReports)
        {
            Visible = false;
        }
        addafter(FinanceReports)
        {
            group("BBC WOSF FinanceReports2")
            {
                Caption = 'Finance Reports';
                Image = Report;

                action("BBC WOSF Statement2")
                {
                    Caption = 'Statement';
                    ApplicationArea = All;
                    Image = Report;

                    trigger OnAction()
                    begin
                        Report.Run(50100, true);
                    end;
                }
                action("BBC WOSF Customer Balance To Date2")
                {
                    Caption = 'Customer - Balance to Date';
                    ApplicationArea = All;
                    Image = Report;

                    trigger OnAction()
                    begin
                        Report.Run(121, true);
                    end;
                }
                action("BBC WOSF Customer Trial Balance2")
                {
                    Caption = 'Customer - Trial Balance';
                    ApplicationArea = All;
                    Image = Report;

                    trigger OnAction()
                    begin
                        Report.Run(129, true);
                    end;
                }
                action("BBC WOSF CustomerDetailTrial2")
                {
                    Caption = 'Customer - Detail Trial Bal.';
                    ApplicationArea = All;
                    Image = Report;

                    trigger OnAction()
                    begin
                        Report.Run(104, true);
                    end;
                }
                action("BBC WOSF CustomerSummaryAging2")
                {
                    Caption = 'Customer - Summary Aging';
                    ApplicationArea = All;
                    Image = Report;

                    trigger OnAction()
                    begin
                        Report.Run(109, true);
                    end;
                }
                action("BBC WOSF AgedACcountsReceivable2")
                {
                    Caption = 'Aged Accounts Receivable';
                    ApplicationArea = All;
                    Image = Report;

                    trigger OnAction()
                    begin
                        Report.Run(50100, true);
                    end;
                }
                action("BBC WOSF CustomerPaymentReceipt2")
                {
                    Caption = 'Customer - Payment Receipt';
                    ApplicationArea = All;
                    Image = Report;

                    trigger OnAction()
                    begin
                        Report.Run(10040, true);
                    end;
                }
            }
        }
        addafter(ReportCustomerDetailTrial)
        {
            action("BBC WOSF Statement")
            {
                Caption = 'Statement';
                ApplicationArea = All;
                Image = Report;

                trigger OnAction()
                begin
                    Report.Run(50100, true);
                end;
            }
        }
    }
}
