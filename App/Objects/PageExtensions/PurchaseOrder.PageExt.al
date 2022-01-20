pageextension 60000 "BBC WOSF Purchase Order" extends "Purchase Order"
{
    layout
    {
        addlast(General)
        {
            field("BBC WOSF Internal Comments"; Rec."BBC WOSF Internal Comments")
            {
                ApplicationArea = All;
                Caption = 'Internal Comments';
            }
            field("BBC WOSF External Comments"; Rec."BBC WOSF External Comments")
            {
                ApplicationArea = All;
                Caption = 'External Comments';
            }
            field(Notes; Notes)
            {
                ApplicationArea = all;
                MultiLine = true;
                ToolTip = 'Specifies additional information entered by the user.';

                trigger OnValidate()
                begin
                    Rec.WriteToNotes(Notes);
                    Rec.Modify(false);
                end;
            }
        }
    }

    actions
    {
        modify("&Print")
        {
            trigger OnBeforeAction()
            begin
                CheckIfReleased(InvalidPrintSendAction);
            end;
        }
        modify(SendCustom)
        {
            trigger OnBeforeAction()
            begin
                CheckIfReleased(InvalidPrintSendAction);
            end;
        }
        modify(Post)
        {
            trigger OnBeforeAction()
            begin
                CheckIfReleased(InvalidPostAction);
            end;
        }
        modify("Post and &Print")
        {
            trigger OnBeforeAction()
            begin
                CheckIfReleased(InvalidPostAction);
            end;
        }
        modify("Post &Batch")
        {
            trigger OnBeforeAction()
            begin
                CheckIfReleased(InvalidPostAction);
            end;
        }
    }

    local procedure CheckIfReleased(ErrorMsg: Text)
    begin
        if Rec.Status <> Rec.Status::Released then
            Error(ErrorMsg);

    end;

    var
        InvalidPrintSendAction: Label 'Purchase Order has to be in "Released" status to print/send.';
        InvalidPostAction: Label 'Purchase Order has to be in "Released" status to post.';


    trigger OnAfterGetRecord()
    begin
        Notes := Rec.ReadFromNotes();
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Notes := '';
    end;

    var
        Notes: Text;
}