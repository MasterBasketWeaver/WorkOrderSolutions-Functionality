pageextension 60000 "BBC WOSF Purchase Order" extends "Purchase Order"
{
    layout
    {
        addlast(General)
        {
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