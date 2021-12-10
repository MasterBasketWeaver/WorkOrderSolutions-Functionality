pageextension 50201 "BBC WOSF Posted Purch. Rcpt." extends "Posted Purchase Receipt"
{
    layout
    {
        addlast(General)
        {
            field(Notes; Rec.ReadFromNotes())
            {
                ApplicationArea = all;
                MultiLine = true;
                Editable = false;
                ToolTip = 'Specifies additional information entered by the user.';
            }
        }
    }
}