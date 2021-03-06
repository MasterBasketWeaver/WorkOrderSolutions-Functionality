codeunit 60001 "BBC WOSF Install Data"
{
    Subtype = Install;
    Permissions = tabledata "Item Ledger Entry" = rimd, tabledata "Cust. Ledger Entry" = rimd, tabledata "Vendor Ledger Entry" = rimd,
    tabledata "Assembly Header" = rimd, tabledata "Posted Assembly Header" = rimd, tabledata "Bin Content" = rimd, tabledata "Company Information" = rimd,
    tabledata "Fixed Asset" = rimd, tabledata "Item Journal Line" = rimd, tabledata "Purch. Cr. Memo Hdr." = rimd, tabledata "Purchase Header" = rimd,
    tabledata "Purch. Inv. Header" = rimd, tabledata "Purch. Rcpt. Header" = rimd, tabledata "Sales Cr.Memo Header" = rimd, tabledata "Sales Invoice Header" = rimd,
    tabledata "Sales Invoice Line" = rimd, tabledata "Sales Shipment Header" = rimd, tabledata "Sales Line" = rimd;

    trigger OnInstallAppPerCompany()
    begin

    end;

    procedure TransferCustomFields()
    var
        TransferredTable: Record "BBC WSOF Transferred Table";
        FldRec, FldRec2 : Record Field;
        RecRef: RecordRef;
        FldRef, FldRef2 : FieldRef;
        TableList: List of [Integer];
        TableNo, FldNo, RecCount, TotalRecCount, i, i2, i3 : Integer;

        Window: Dialog;
    begin
        FldRec.SetRange("No.", 50000, 51000);
        FldRec.SetFilter(ObsoleteState, '<>%1', FldRec.ObsoleteState::Removed);
        FldRec.SetRange(Class, FldRec.Class::Normal);
        FldRec.SetFilter(Type, '<>%1', FldRec.Type::BLOB);

        if GuiAllowed then
            Window.Open('Finding Custom Fields\#1###');
        RecCount := FldRec.Count();
        if FldRec.FindSet() then
            repeat
                if GuiAllowed then begin
                    i += 1;
                    Window.Update(1, StrSubstNo('%1 of %2', i, RecCount));
                end;
                if not TableList.Contains(FldRec.TableNo) then begin
                    TableList.Add(FldRec.TableNo);
                    RecRef.Open(FldRec.TableNo);
                    TotalRecCount += RecRef.Count();
                    RecRef.Close();
                end;
            until FldRec.Next() = 0;
        if GuiAllowed then begin
            Window.Close();
            Window.Open('Updating Records\Table: #1###\Progress: #2###\Total Progress: #3###\Table: #4###');
        end;
        foreach TableNo in TableList do begin
            if GuiAllowed then begin
                i3 += 1;
                Window.Update(4, StrSubstNo('%1 of %2', i3, TableList.Count()));
            end;
            FldRec.SetRange(TableNo, TableNo);
            if not FldRec.IsEmpty() and not TransferredTable.Get(TableNo) then begin
                RecRef.Open(TableNo);
                if GuiAllowed then begin
                    i := 0;
                    RecCount := RecRef.Count();
                    Window.Update(1, RecRef.Caption);
                end;
                if RecRef.FindSet(true) then
                    repeat
                        if GuiAllowed then begin
                            i += 1;
                            i2 += 1;
                            Window.Update(2, StrSubstNo('%1 of %2', i, RecCount));
                            Window.Update(3, StrSubstNo('%1 of %2', i2, TotalRecCount));
                        end;
                        FldRec.FindSet();
                        repeat
                            FldRef := RecRef.Field(FldRec."No.");
                            FldNo := FldRec."No." + 10000;
                            if not RecRef.FieldExist(FldNo) or (FldRec2.Get(RecRef.Number, FldNo) and (FldRec.Type <> FldRec2.Type)) then begin
                                FldRec2.Reset();
                                FldRec2.CopyFilters(FldRec);
                                FldRec2.SetFilter("No.", '>%1', FldNo);
                                FldRec2.SetRange("Field Caption", FldRef.Caption);
                                if FldRec2.FindFirst() then
                                    FldNo := FldRec2."No.";
                            end;
                            if RecRef.FieldExist(FldNo) then begin
                                FldRef2 := RecRef.Field(FldNo);
                                FldRef2.Value(FldRef.Value());
                            end;
                        until FldRec.Next() = 0;
                        RecRef.Modify(false);
                        if not TransferredTable.Get(TableNo) then begin
                            TransferredTable.Validate(ID, TableNo);
                            TransferredTable.Insert(true);
                        end;
                        Commit();
                    until RecRef.Next() = 0;
                RecRef.Close();
            end;
        end;
        if GuiAllowed then
            Window.Close();
        Commit();
    end;
}