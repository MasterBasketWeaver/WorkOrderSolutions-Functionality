pageextension 60002 "BBC WOSF Posted Purch. Inv." extends "Posted Purchase Invoice"
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