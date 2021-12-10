reportextension 50200 "BBC WOSF Purchase Order" extends "Standard Purchase - Order"
{
    dataset
    {
        add("Purchase Header")
        {
            column(Notes; ReadFromNotes()) { }
        }

        add("Purchase Line")
        {
            column(LineNo; "Line No.") { }
            column(SerialNo; SerialNo) { }
        }
        modify("Purchase Line")
        {
            trigger OnAfterAfterGetRecord()
            var
                FixedAsset: Record "Fixed Asset";
            begin
                if (Type = Type::"Fixed Asset") and FixedAsset.Get("No.") then
                    SerialNo := FixedAsset."Serial No."
                else
                    SerialNo := '';
            end;
        }
    }

    var
        SerialNo: Text;
}