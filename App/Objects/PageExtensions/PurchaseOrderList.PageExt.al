pageextension 60004 "BBC WOSF Purchase Order List" extends "Purchase Order List"
{
    layout
    {
        addafter("Amount Including VAT")
        {
            field("BBC WOSF Internal Comments"; Rec."BBC WOSF Internal Comments")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF External Comments"; Rec."BBC WOSF External Comments")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        modify(Print)
        {
            trigger OnBeforeAction()
            begin
                if Rec.Status <> Rec.Status::Released then Error(InvalidPrintSendAction);
            end;
        }
        modify(Send)
        {
            trigger OnBeforeAction()
            begin
                if Rec.Status <> Rec.Status::Released then Error(InvalidPrintSendAction);
            end;
        }
        modify(Post)
        {
            trigger OnBeforeAction()
            begin
                if Rec.Status <> Rec.Status::Released then Error(InvalidPostAction);
            end;
        }
        modify(PostAndPrint)
        {
            trigger OnBeforeAction()
            begin
                if Rec.Status <> Rec.Status::Released then Error(InvalidPostAction);
            end;
        }
        modify(PostBatch)
        {
            trigger OnBeforeAction()
            begin
                if Rec.Status <> Rec.Status::Released then Error(InvalidPostAction);
            end;
        }
    }
    var
        InvalidPrintSendAction: Label 'Purchase Order has to be in "Released" status to print/send.';
        InvalidPostAction: Label 'Purchase Order has to be in "Released" status to post.';
}
