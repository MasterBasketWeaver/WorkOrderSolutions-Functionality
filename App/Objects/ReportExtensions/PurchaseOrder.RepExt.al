reportextension 60000 "BBC WOSF Purchase Order" extends "Standard Purchase - Order"
{
    WordLayout = './Objects/Reports/Layouts/Purchase Order.docx';

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
            column(DescriptionWithSerial; DescriptionText.ToText()) { }
        }
        modify("Purchase Line")
        {
            trigger OnAfterAfterGetRecord()
            var
                FixedAsset: Record "Fixed Asset";
            begin
                DescriptionText.Clear();
                DescriptionText.AppendLine(Description);
                if (Type = Type::"Fixed Asset") and FixedAsset.Get("No.") then
                    DescriptionText.AppendLine(FixedAsset."Serial No.");
            end;
        }
    }

    var
        DescriptionText: TextBuilder;
        SerialNo: Text;

}