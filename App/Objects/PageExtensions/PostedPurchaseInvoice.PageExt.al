pageextension 60082 "BBC WOSF Posted Purch. Inv." extends "Posted Purchase Invoice"
{
    layout
    {
        addlast(General)
        {
            field("BBC WOSF Internal Comments"; Rec."BBC WOSF Internal Comments")
            {
                ApplicationArea = All;
            }
            field("BBC WOSF External Comments"; Rec."BBC WOSF External Comments")
            {
                ApplicationArea = All;
            }
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