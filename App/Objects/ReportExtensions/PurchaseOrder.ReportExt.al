reportextension 60000 "BBC WOSF Purchase Order" extends "Standard Purchase - Order"
{
    WordLayout = './Objects/Reports/Layouts/Purchase Order.docx';

    dataset
    {
        add("Purchase Header")
        {
            column(Notes; GetNotesText("Purchase Header")) { }
            column(NoOfArchivedVersions; "No. of Archived Versions") { }
            column(FormattedDocumentDate; FormatMMDDYYYYDate("Purchase Header"."Document Date")) { }
        }
        modify("Purchase Header")
        {
            trigger OnAfterAfterGetRecord()
            begin
                "Purchase Header".CalcFields("No. of Archived Versions");
            end;
        }

        add("Purchase Line")
        {
            column(LineNo; "Line No.") { }
            column(SerialNo; SerialNo) { }
            column(DescriptionWithSerial; DescriptionText.ToText()) { }
            column(FormattedPlannedReceiptDate; FormatMMDDYYYYDate("Purchase Line"."Planned Receipt Date")) { }
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

    local procedure GetNotesText(var PurchHeader: Record "Purchase Header"): Text
    var
        s: Text;
        NewLine: Text[1];
    begin
        s := PurchHeader.ReadFromNotes();
        if PurchHeader."BBC WOSF External Comments" = '' then
            exit(s);
        if s = '' then
            exit(PurchHeader."BBC WOSF External Comments");
        NewLine[1] := 10;
        exit(StrSubstNo('%1%3%2', PurchHeader."BBC WOSF External Comments", s, NewLine));
    end;

    local procedure FormatMMDDYYYYDate(Input: Date): Text
    var
        YYYY: Integer;
        Years: Text;
    begin
        if Input = 0D then
            exit('');
        YYYY := Date2DMY(Input, 3);
        Years := Format(YYYY);
        if YYYY < 99 then
            Years := '20' + Years;
        exit(StrSubstNo('%1/%2', Format(Input, 0, '<Month,2>/<Day,2>'), Years));
    end;

    var
        DescriptionText: TextBuilder;
        SerialNo: Text;

}