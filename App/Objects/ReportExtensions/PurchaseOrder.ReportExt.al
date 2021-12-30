reportextension 60000 "BBC WOSF Purchase Order" extends "Standard Purchase - Order"
{
    WordLayout = './Objects/Reports/Layouts/Purchase Order.docx';

    dataset
    {
        add("Purchase Header")
        {
            column(Notes; GetNotesText("Purchase Header")) { }
            column(NoOfArchivedVersions; "No. of Archived Versions") { }
            column(FormattedDocumentDate; FormatDDMMYYYYDate("Purchase Header"."Document Date")) { }
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
        if PurchHeader."RSMUS External Comments" = '' then
            exit(s);
        if s = '' then
            exit(PurchHeader."RSMUS External Comments");
        NewLine[1] := 10;
        exit(StrSubstNo('%1%3%2', PurchHeader."RSMUS External Comments", s, NewLine));
    end;

    local procedure FormatDDMMYYYYDate(Input: Date): Text
    var
        DD, MM, YYYY : Integer;
        Days, Months, Years : Text;
    begin
        DD := Date2DMY(Input, 1);
        MM := Date2DMY(Input, 2);
        YYYY := Date2DMY(Input, 3);
        Days := Format(DD);
        Months := Format(MM);
        Years := Format(YYYY);
        if DD < 10 then
            Days := '0' + Days;
        if MM < 10 then
            Months := '0' + Months;
        if YYYY < 99 then
            Years := '20' + Years;
        exit(StrSubstNo('%1/%2/%3', Days, Months, Years));
    end;

    var
        DescriptionText: TextBuilder;
        SerialNo: Text;

}