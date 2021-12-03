report 50200 "BBC WOSF Sales Invoice"
{
    RDLCLayout = './Objects/Reports/Layouts/US - Sales Invoice.rdl';
    WordLayout = './Objects/Reports/Layouts/US - Sales Invoice.docx';

    Caption = 'Sales Invoice';
    DefaultLayout = Word;
    EnableHyperlinks = true;
    Permissions = TableData "Sales Shipment Buffer" = rimd;
    PreviewMode = PrintLayout;
    WordMergeDataItem = Header;

    dataset
    {
        dataitem(Header; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Invoice';

            column(EMail_Lbl; EMailLbl)
            {
            }
            column(Posting_Date; DateFormatMgt.GetDateText("Posting Date"))
            {
            }
            column(HomePage_Lbl; HomePageLbl)
            {
            }
            column(BankDetailLbl; BankDetailLbl)
            {
            }
            column(ExtDocLbl; ExtDocLbl)
            {
            }
            column(ExternalDocumentNo_Header; Header."External Document No.")
            {
            }
            column(CompanyAddress1; CompanyAddr[1])
            {
            }
            column(CompanyAddress2; CompanyAddr[2])
            {
            }
            column(CompanyAddress3; CompanyAddr[3])
            {
            }
            column(CompanyAddress4; CompanyAddr[4])
            {
            }
            column(CompanyAddress5; CompanyAddr[5])
            {
            }
            column(CompanyAddress6; CompanyAddr[6])
            {
            }
            column(CompanyHomePage; CompanyInformation."Home Page")
            {
            }
            column(CompanyEMail; CompanyInformation."E-Mail")
            {
            }
            column(CompanyPicture; CompanyInformation.Picture)
            {
            }
            column(CompanyPhoneNo; CompanyInformation."Phone No.")
            {
            }
            column(CompanyPhoneNo_Lbl; CompanyInformationPhoneNoLbl)
            {
            }
            column(CompanyGiroNo; CompanyInformation."Giro No.")
            {
            }
            column(CompanyGiroNo_Lbl; CompanyInformationGiroNoLbl)
            {
            }
            column(CompanyBankName; CompanyInformation."Bank Name")
            {
            }
            column(CompanyBankName_Lbl; CompanyInformationBankNameLbl)
            {
            }
            column(CompanyBankBranchNo; CompanyInformation."Bank Branch No.")
            {
            }
            column(CompanyBankBranchNo_Lbl; CompanyInformation.FIELDCAPTION("Bank Branch No."))
            {
            }
            column(CompanyBankAccountNo; CompanyInformation."Bank Account No.")
            {
            }
            column(CompanyBankAccountNo_Lbl; CompanyInformationBankAccNoLbl)
            {
            }
            column(CompanyIBAN; CompanyInformation.IBAN)
            {
            }
            column(CompanyIBAN_Lbl; CompanyInformation.FIELDCAPTION(IBAN))
            {
            }
            column(CompanySWIFT; CompanyInformation."SWIFT Code")
            {
            }
            column(CompanySWIFT_Lbl; CompanyInformation.FIELDCAPTION("SWIFT Code"))
            {
            }
            column(CompanyLogoPosition; CompanyLogoPosition)
            {
            }
            column(CompanyRegistrationNumber; CompanyInformation.GetRegistrationNumber())
            {
            }
            column(CompanyRegistrationNumber_Lbl; CompanyInformation.GetRegistrationNumberLbl())
            {
            }
            column(CompanyVATRegNo; CompanyInformation.GetVATRegistrationNumber())
            {
            }
            column(CompanyVATRegNo_Lbl; CompanyInformation.GetVATRegistrationNumberLbl())
            {
            }
            column(CompanyVATRegistrationNo; CompanyInformation.GetVATRegistrationNumber())
            {
            }
            column(CompanyVATRegistrationNo_Lbl; CompanyInformation.GetVATRegistrationNumberLbl())
            {
            }
            column(CompanyLegalOffice; CompanyInformation.GetLegalOffice())
            {
            }
            column(CompanyLegalOffice_Lbl; CompanyInformation.GetLegalOfficeLbl())
            {
            }
            column(CompanyCustomGiro; CompanyInformation.GetCustomGiro())
            {
            }
            column(CompanyCustomGiro_Lbl; CompanyInformation.GetCustomGiroLbl())
            {
            }
            column(CompanyLegalStatement; GetLegalStatement())
            {
            }
            column(DisplayAdditionalFeeNote; DisplayAdditionalFeeNoteBool)
            {
            }
            column(CustomerAddress1; CustAddr[1])
            {
            }
            column(CustomerAddress2; CustAddr[2])
            {
            }
            column(CustomerAddress3; CustAddr[3])
            {
            }
            column(CustomerAddress4; CustAddr[4])
            {
            }
            column(CustomerAddress5; CustAddr[5])
            {
            }
            column(CustomerAddress6; CustAddr[6])
            {
            }
            column(CustomerAddress7; CustAddr[7])
            {
            }
            column(CustomerAddress8; CustAddr[8])
            {
            }
            column(CustomerPostalBarCode; FormatAddress.PostalBarCode(1))
            {
            }
            column(YourReference; "Your Reference")
            {
            }
            column(YourReference_Lbl; FIELDCAPTION("Your Reference"))
            {
            }
            column(ShipmentMethodDescription; ShipmentMethod.Description)
            {
            }
            column(ShipmentMethodDescription_Lbl; ShptMethodDescLbl)
            {
            }
            column(ShipmentDate; DateFormatMgt.GetDateText("Shipment Date"))
            {
            }
            column(ShipmentDate_Lbl; FIELDCAPTION("Shipment Date"))
            {
            }
            column(Shipment_Lbl; ShipmentLbl)
            {
            }
            column(ShowShippingAddress; ShowShippingAddr)
            {
            }
            column(ShipToAddress_Lbl; ShiptoAddrLbl)
            {
            }
            column(ShipToAddress1; ShipToAddr[1])
            {
            }
            column(ShipToAddress2; ShipToAddr[2])
            {
            }
            column(ShipToAddress3; ShipToAddr[3])
            {
            }
            column(ShipToAddress4; ShipToAddr[4])
            {
            }
            column(ShipToAddress5; ShipToAddr[5])
            {
            }
            column(ShipToAddress6; ShipToAddr[6])
            {
            }
            column(ShipToAddress7; ShipToAddr[7])
            {
            }
            column(ShipToAddress8; ShipToAddr[8])
            {
            }
            column(PaymentTermsDescription; PaymentTerms.Description)
            {
            }
            column(PaymentTermsDescription_Lbl; PaymentTermsDescLbl)
            {
            }
            column(PaymentMethodDescription; PaymentMethod.Description)
            {
            }
            column(PaymentMethodDescription_Lbl; PaymentMethodDescLbl)
            {
            }
            column(DocumentCopyText; DocumentCaption())
            {
            }
            column(BilltoCustumerNo; "Bill-to Customer No.")
            {
            }
            column(BilltoCustomerNo_Lbl; FIELDCAPTION("Bill-to Customer No."))
            {
            }
            column(DocumentDate; DateFormatMgt.GetDateText("Document Date"))
            {
            }
            column(DocumentDate_Lbl; FIELDCAPTION("Document Date"))
            {
            }
            column(DueDate; DateFormatMgt.GetDateText("Due Date"))
            {
            }
            column(DueDate_Lbl; FIELDCAPTION("Due Date"))
            {
            }
            column(DocumentNo; "No.")
            {
            }
            column(DocumentNo_Lbl; InvNoLbl)
            {
            }
            column(OrderNo; "Order No.")
            {
            }
            column(OrderNo_Lbl; FIELDCAPTION("Order No."))
            {
            }
            column(PricesIncludingVAT; "Prices Including VAT")
            {
            }
            column(PricesIncludingVAT_Lbl; FIELDCAPTION("Prices Including VAT"))
            {
            }
            column(PricesIncludingVATYesNo; FORMAT("Prices Including VAT"))
            {
            }
            column(SalesPerson_Lbl; SalespersonLbl)
            {
            }
            column(Salesperson_Lbl2; SalespersonLbl)
            {
            }
            column(SalesPersonBlank_Lbl; SalesPersonText)
            {
            }
            column(SalesPersonName; SalespersonPurchaser.Name)
            {
            }
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerNo_Lbl; FIELDCAPTION("Sell-to Customer No."))
            {
            }
            column(VATRegistrationNo; GetCustomerVATRegistrationNumber())
            {
            }
            column(VATRegistrationNo_Lbl; GetCustomerVATRegistrationNumberLbl())
            {
            }
            column(GlobalLocationNumber; GetCustomerGlobalLocationNumber())
            {
            }
            column(GlobalLocationNumber_Lbl; GetCustomerGlobalLocationNumberLbl())
            {
            }
            column(PaymentReference; GetPaymentReference())
            {
            }
            column(PaymentReference_Lbl; GetPaymentReferenceLbl())
            {
            }
            column(LegalEntityType; Customer.GetLegalEntityType())
            {
            }
            column(LegalEntityType_Lbl; Customer.GetLegalEntityTypeLbl())
            {
            }
            column(Copy_Lbl; CopyLbl)
            {
            }
            column(EMail_Header_Lbl; EMailLbl)
            {
            }
            column(HomePage_Header_Lbl; HomePageLbl)
            {
            }
            column(InvoiceDiscountBaseAmount_Lbl; InvDiscBaseAmtLbl)
            {
            }
            column(InvoiceDiscountAmount_Lbl; InvDiscountAmtLbl)
            {
            }
            column(LineAmountAfterInvoiceDiscount_Lbl; LineAmtAfterInvDiscLbl)
            {
            }
            column(LocalCurrency_Lbl; LocalCurrencyLbl)
            {
            }
            column(ExchangeRateAsText; ExchangeRateText)
            {
            }
            column(Page_Lbl; PageLbl)
            {
            }
            column(SalesInvoiceLineDiscount_Lbl; SalesInvLineDiscLbl)
            {
            }
            column(DocumentTitle_Lbl; DocumentTitle)
            {
            }
            column(ShowWorkDescription; ShowWorkDescription)
            {
            }
            column(Subtotal_Lbl; SubtotalLbl)
            {
            }
            column(Total_Lbl; TotalLbl)
            {
            }
            column(VATAmount_Lbl; VATAmtLbl)
            {
            }
            column(VATBase_Lbl; VATBaseLbl)
            {
            }
            column(VATAmountSpecification_Lbl; VATAmtSpecificationLbl)
            {
            }
            column(VATClauses_Lbl; VATClausesLbl)
            {
            }
            column(VATIdentifier_Lbl; VATIdentifierLbl)
            {
            }
            column(VATPercentage_Lbl; VATPercentageLbl)
            {
            }
            column(VATClause_Lbl; VATClause.TABLECAPTION)
            {
            }
            column(PackageTrackingNo; "Package Tracking No.")
            {
            }
            column(PackageTrackingNo_Lbl; FIELDCAPTION("Package Tracking No."))
            {
            }
            column(ShippingAgentCode; "Shipping Agent Code")
            {
            }
            column(ShippingAgentCode_Lbl; FIELDCAPTION("Shipping Agent Code"))
            {
            }
            column(CompanyInfoName; CompanyInformation.Name)
            {
            }
            column(CurrencySymbol; GetCurrencySymbol())
            {
            }
            column(VatRegNoLbl; VatRegNoLbl)
            {
            }

            column(Remaining_Amount; "Remaining Amount")
            {
            }
            column(BillToContactName; BillToContact.Name)
            {
            }
            column(BillToContactPhoneNo; BillToContact."Phone No.")
            {
            }
            column(BillToContactEmail; BillToContact."E-Mail")
            {
            }
            column(NewTotalAmount_Lbl; StrSubstNo('Total %1', LoadCurrencyCode()))
            {
            }
            column(Currency_Code; LoadCurrencyCode()) { }
            column(BankName; BankAccount.Name) { }
            column(BankAddress; BankAccount.Address) { }
            column(BankClientName; BankAccount."Client Name") { }
            column(BankSWIFTCode; BankAccount."SWIFT Code") { }
            column(BankTransitNo; BankAccount."Transit No.") { }
            column(BankAccountNo; BankAccount."Bank Account No.") { }
            column(BankNo; BankAccount."No.") { }
            column(RemiteAddr1; RemiteAddr[1]) { }
            column(RemiteAddr2; RemiteAddr[2]) { }
            column(RemiteAddr3; RemiteAddr[3]) { }
            column(RemiteAddr4; RemiteAddr[4]) { }
            column(RemiteAddr5; RemiteAddr[5]) { }
            column(RemiteAddr6; RemiteAddr[6]) { }
            column(RemiteAddr7; RemiteAddr[7]) { }
            column(RemiteAddr8; RemiteAddr[8]) { }
            column(HeaderWell; "RSMUS Well") { }
            column(HeaderRigOrCTU; "RSMUS Rig or CTU") { }
            column(HeaderCounty; "RSMUS County") { }
            column(HeaderCustomerRep; "RSMUS Customer Rep") { }
            column(HeaderWOSJob; "RSMUS WOS Job") { }
            column(HeaderCustomerReference; "RSMUS Customer Reference") { }
            column(HeaderServiceStartDate; DateFormatMgt.GetDateText("RSMUS Service Start Date")) { }
            column(HeaderClientPO; "RSMUS Client PO") { }
            column(HeaderAFE; "RSMUS AFE") { }
            column(PaymentTerms; PaymentTerms.Code) { }
            column(GetWorkDescription; GetWorkDescription()) { }

            dataitem(Line; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemLinkReference = Header;
                DataItemTableView = SORTING("Document No.", "Line No.");
                column(LineNo_Line; "Line No.")
                {
                }
                column(AmountExcludingVAT_Line; NumberFormatMgt.FormatCurrency(Amount))
                {
                }
                column(AmountExcludingVAT_Line_Lbl; FIELDCAPTION(Amount))
                {
                }
                column(AmountIncludingVAT_Line; NumberFormatMgt.FormatCurrency("Amount Including VAT"))
                {

                }
                column(AmountIncludingVAT_Line_Lbl; FIELDCAPTION("Amount Including VAT"))
                {
                    AutoFormatExpression = GetCurrencyCode();
                    AutoFormatType = 1;
                }
                column(Description_Line; Description)
                {
                }
                column(Description_2; "Description 2")
                {
                }
                column(Description_Line_Lbl; FIELDCAPTION(Description))
                {
                }
                column(LineDiscountPercent_Line; "Line Discount %")
                {
                }
                column(LineDiscountPercentText_Line; LineDiscountPctText)
                {
                }
                column(LineAmount_Line; Round("Line Amount", 0.01, '>'))
                {
                }
                column(LineAmount_Line_Lbl; FIELDCAPTION("Line Amount"))
                {
                }
                column(ItemNo_Line; "No.")
                {
                }
                column(ItemNo_Line_Lbl; FIELDCAPTION("No."))
                {
                }
                column(ShipmentDate_Line; DateFormatMgt.GetDateText(PostedShipmentDate))
                {
                }
                column(ShipmentDate_Line_Lbl; PostedShipmentDateLbl)
                {
                }
                column(Quantity_Line; Quantity)
                {
                }
                column(Quantity_Line_Lbl; FIELDCAPTION(Quantity))
                {
                }
                column(Type_Line; FORMAT(Type))
                {
                }
                column(UnitPrice; Round("Unit Price", 0.01, '>'))
                {
                }
                column(UnitPrice_Lbl; FIELDCAPTION("Unit Price"))
                {
                }
                column(UnitOfMeasure; "Unit of Measure")
                {
                }
                column(UnitOfMeasure_Lbl; UOMLbl)
                {
                }
                column(VATIdentifier_Line; "VAT Identifier")
                {
                }
                column(VATIdentifier_Line_Lbl; FIELDCAPTION("VAT Identifier"))
                {
                }
                column(VATPct_Line; Round("VAT %", 0.001, '>'))
                {
                }
                column(VATPct_Line_Lbl; FIELDCAPTION("VAT %"))
                {
                }
                column(TransHeaderAmount; NumberFormatMgt.FormatCurrency(TransHeaderAmount))
                {

                }
                column(JobTaskNo_Lbl; JobTaskNoText)
                {
                }
                column(JobTaskNo; JobTaskNo)
                {
                }
                column(JobTaskDescription; JobTaskDescription)
                {
                }
                column(JobTaskDesc_Lbl; JobTaskDescLbl)
                {
                }
                column(JobNo_Lbl; JobNoText)
                {
                }
                column(JobNo; JobNo)
                {
                }
                column(SerialNoString; SerialNoString)
                {
                }
                column(WorkType_Line; "Work Type Code")
                {
                }
                column(weekCalc; weekCalc)
                {
                }
                column(WorkTypDesc; WorkType.Description)
                {

                }

                column(QtyText; QtyText) { }
                column(UnitPriceText; UnitPriceText) { }
                column(TaxPercentText; TaxPercentText) { }
                column(LineAmtText; LineAmtText) { }

                dataitem(ShipmentLine; "Sales Shipment Buffer")
                {
                    DataItemTableView = SORTING("Document No.", "Line No.", "Entry No.");
                    UseTemporary = true;
                    column(DocumentNo_ShipmentLine; "Document No.")
                    {
                    }
                    column(PostingDate_ShipmentLine; DateFormatMgt.GetDateText("Posting Date"))
                    {
                    }
                    column(PostingDate_ShipmentLine_Lbl; FIELDCAPTION("Posting Date"))
                    {
                    }
                    column(Quantity_ShipmentLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(Quantity_ShipmentLine_Lbl; FIELDCAPTION(Quantity))
                    {
                    }

                    trigger OnPreDataItem();
                    begin
                        SETRANGE("Line No.", Line."Line No.");
                    end;
                }
                dataitem(AssemblyLine; "Posted Assembly Line")
                {
                    DataItemTableView = SORTING("Document No.", "Line No.");
                    UseTemporary = true;
                    column(LineNo_AssemblyLine; "No.")
                    {
                    }
                    column(Description_AssemblyLine; Description)
                    {
                    }
                    column(Quantity_AssemblyLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(UnitOfMeasure_AssemblyLine; GetUOMText("Unit of Measure Code"))
                    {
                    }
                    column(VariantCode_AssemblyLine; "Variant Code")
                    {
                    }

                    trigger OnPreDataItem();
                    var
                        ValueEntry: Record "Value Entry";
                    begin
                        CLEAR(AssemblyLine);
                        if not DisplayAssemblyInformation then
                            CurrReport.Break();
                        GetAssemblyLinesForDocument(
                          AssemblyLine, ValueEntry."Document Type"::"Sales Invoice", Line."Document No.", Line."Line No.");
                    end;
                }

                trigger OnPreDataItem();
                var
                    EnvironmentInfo: Codeunit "Environment Information";
                begin
                    VATAmountLine.DeleteAll();
                    VATClauseLine.DeleteAll();
                    ShipmentLine.Reset();
                    ShipmentLine.DeleteAll();
                    MoreLines := FIND('+');
                    while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                        MoreLines := NEXT(-1) <> 0;
                    if not MoreLines then
                        CurrReport.Break();
                    SETRANGE("Line No.", 0, "Line No.");
                    TransHeaderAmount := 0;
                    PrevLineAmount := 0;
                    FirstLineHasBeenOutput := false;
                    CompanyInformation.CALCFIELDS(Picture);
                    if ("Job No." <> '') and (not EnvironmentInfo.IsSaas()) then
                        JobNo := ''
                    else
                        JobNo := "Job No.";
                    if ("Job Task No." <> '') and (not EnvironmentInfo.IsSaas()) then
                        JobTaskNo := ''
                    else
                        JobTaskNo := "Job Task No.";
                end;

                trigger OnAfterGetRecord();
                var
                    TempItemLedgerEntry: Record "Item Ledger Entry" temporary;
                    Spacer: Text;
                begin
                    PostedShipmentDate := 0D;
                    if Quantity <> 0 then
                        PostedShipmentDate := FindPostedShipmentDate();

                    if Type = Type::"G/L Account" then
                        "No." := '';

                    if "Line Discount %" = 0 then
                        LineDiscountPctText := ''
                    else
                        LineDiscountPctText := STRSUBSTNO(PercentLbl, -ROUND("Line Discount %", 0.1));

                    VATAmountLine.Init();
                    VATAmountLine."VAT Identifier" := "VAT Identifier";
                    VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                    VATAmountLine."Tax Group Code" := "Tax Group Code";
                    VATAmountLine."VAT %" := "VAT %";
                    VATAmountLine."VAT Base" := Amount;
                    VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                    VATAmountLine."Line Amount" := "Line Amount";
                    if "Allow Invoice Disc." then
                        VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                    VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                    VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                    if ("VAT %" <> 0) or ("VAT Clause Code" <> '') or (Amount <> "Amount Including VAT") then
                        VATAmountLine.InsertLine();

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                    if FirstLineHasBeenOutput then
                        CLEAR(CompanyInformation.Picture);
                    FirstLineHasBeenOutput := true;

                    if JobTaskNo <> '' then begin
                        JobTaskNoText := JobTaskNoLbl;
                        JobTaskDescription := GetJobTaskDescription(JobNo, JobTaskNo);
                    end else begin
                        JobTaskDescription := '';
                        JobTaskNoText := '';
                    end;

                    if JobNo <> '' then
                        JobNoText := JobNoLbl
                    else
                        JobNoText := '';
                    SerialNoString := '';
                    RetrieveEntriesFromPostedInv(TempItemLedgerEntry, RowID1());
                    if not TempItemLedgerEntry.IsEmpty() then begin
                        case SerialNumberAlignment of
                            SerialNumberAlignment::Horizontal:
                                Spacer := '   ';
                            SerialNumberAlignment::Vertical:
                                Spacer[1] := 10;
                        end;
                        SerialNoString := 'Serial No.s:';
                        TempItemLedgerEntry.Findset();
                        repeat
                            SerialNoString += Spacer + TempItemLedgerEntry."Serial No.";
                        until TempItemLedgerEntry.Next() = 0;
                    end;

                    VATBaseLCY := Round(CurrencyExchangeRate.ExchangeAmtFCYToLCY(Header."Posting Date", Header."Currency Code", "Line amount", Header."Currency Factor"));//DM
                    TotalVATBaseLCY += VATBaseLCY;//DM
                    weekCalc := '';
                    if "Shipment Date" <> 0D then begin
                        StartofWeek := CALCDATE('<-CW>', "Shipment Date");
                        EndofWeek := CALCDATE('<+6D>', StartofWeek);
                        weekCalc := format(StartofWeek, 0, '<Day,2>/<Month,2>/<Year4>') + '-' + Format(EndofWeek, 0, '<Day,2>/<Month,2>/<Year4>');
                    end;
                    WorkType.Reset();
                    if WorkType.Get("Work Type Code") then;

                    if Type = Type::" " then begin
                        QtyText := '';
                        UnitPriceText := '';
                        TaxPercentText := '';
                        LineAmtText := '';
                        LineDiscountPctText := ''
                    end else begin
                        QtyText := Format(Quantity);
                        UnitPriceText := NumberFormatMgt.FormatCurrency("Unit Price");
                        TaxPercentText := NumberFormatMgt.FormatTax("VAT %");
                        LineAmtText := NumberFormatMgt.FormatCurrency("Line Amount");
                    end;
                end;
            }
            dataitem(WorkDescriptionLines; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 .. 99999));
                column(WorkDescriptionLineNumber; Number)
                {
                }
                column(WorkDescriptionLine; WorkDescriptionLine)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if WorkDescriptionInstream.EOS then
                        CurrReport.Break();
                    WorkDescriptionInstream.ReadText(WorkDescriptionLine);
                end;

                trigger OnPostDataItem()
                begin
                    Clear(WorkDescriptionInstream)
                end;

                trigger OnPreDataItem()
                begin
                    if not ShowWorkDescription then
                        CurrReport.Break();
                    Header."Work Description".CreateInStream(WorkDescriptionInstream, TEXTENCODING::UTF8);
                end;
            }
            dataitem(VATAmountLine; "VAT Amount Line")
            {
                DataItemTableView = SORTING("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                UseTemporary = true;
                column(InvoiceDiscountAmount_VATAmountLine; NumberFormatMgt.FormatCurrency("Invoice Discount Amount"))
                {
                }
                column(InvoiceDiscountAmount_VATAmountLine_Lbl; FIELDCAPTION("Invoice Discount Amount"))
                {
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine; NumberFormatMgt.FormatCurrency("Inv. Disc. Base Amount"))
                {
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine_Lbl; FIELDCAPTION("Inv. Disc. Base Amount"))
                {
                }
                column(LineAmount_VatAmountLine; NumberFormatMgt.FormatCurrency("Line Amount"))
                {
                }
                column(LineAmount_VatAmountLine_Lbl; FIELDCAPTION("Line Amount"))
                {
                }
                column(VATAmount_VatAmountLine; NumberFormatMgt.FormatCurrency("VAT Amount"))
                {
                }
                column(VATAmount_VatAmountLine_Lbl; FIELDCAPTION("VAT Amount"))
                {
                }
                column(VATAmountLCY_VATAmountLine; NumberFormatMgt.FormatCurrency(VATAmountLCY))
                {
                }
                column(VATAmountLCY_VATAmountLine_Lbl; VATAmountLCYLbl)
                {
                }
                column(VATBase_VatAmountLine; NumberFormatMgt.FormatCurrency("VAT Base"))
                {
                }
                column(VATBase_VatAmountLine_Lbl; FIELDCAPTION("VAT Base"))
                {
                }
                column(VATBaseLCY_VATAmountLine; NumberFormatMgt.FormatCurrency(VATBaseLCY))
                {
                }
                column(VATBaseLCY_VATAmountLine_Lbl; VATBaseLCYLbl)
                {
                }
                column(VATIdentifier_VatAmountLine; "VAT Identifier")
                {
                }
                column(VATIdentifier_VatAmountLine_Lbl; FIELDCAPTION("VAT Identifier"))
                {
                }
                column(VATPct_VatAmountLine; NumberFormatMgt.FormatTax("VAT %"))
                {
                }
                column(VATPct_VatAmountLine_Lbl; FIELDCAPTION("VAT %"))
                {
                }
                column(NoOfVATIdentifiers; COUNT)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    VATBaseLCY :=
                      GetBaseLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");
                    VATAmountLCY :=
                      GetAmountLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");

                    TotalVATBaseLCY += VATBaseLCY;
                    TotalVATAmountLCY += VATAmountLCY;

                    if "VAT Clause Code" <> '' then begin
                        VATClauseLine := VATAmountLine;
                        if VATClauseLine.Insert() then;
                    end;
                end;

                trigger OnPreDataItem();
                begin
                    //CurrReport.CREATETOTALS(
                    //  "Line Amount", "Inv. Disc. Base Amount",
                    //  "Invoice Discount Amount", "VAT Base", "VAT Amount",
                    //VATBaseLCY, VATAmountLCY);

                    TotalVATBaseLCY := 0;
                    TotalVATAmountLCY := 0;
                end;
            }
            dataitem(VATClauseLine; "VAT Amount Line")
            {
                UseTemporary = true;
                column(VATIdentifier_VATClauseLine; "VAT Identifier")
                {
                }
                column(Code_VATClauseLine; VATClause.Code)
                {
                }
                column(Code_VATClauseLine_Lbl; VATClause.FIELDCAPTION(Code))
                {
                }
                column(Description_VATClauseLine; VATClause.Description)
                {
                }
                column(Description2_VATClauseLine; VATClause."Description 2")
                {
                }
                column(VATAmount_VATClauseLine; NumberFormatMgt.FormatCurrency("VAT Amount"))
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(NoOfVATClauses; COUNT)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    if "VAT Clause Code" = '' then
                        CurrReport.Skip();
                    if not VATClause.GET("VAT Clause Code") then
                        CurrReport.Skip();
                    VATClause.TranslateDescription(Header."Language Code");
                end;
            }
            dataitem(ReportTotalsLine; "Report Totals Buffer")
            {
                DataItemTableView = SORTING("Line No.");
                UseTemporary = true;
                column(Description_ReportTotalsLine; Description)
                {
                }
                column(Amount_ReportTotalsLine; NumberFormatMgt.FormatCurrency(Amount))
                {
                }
                column(AmountFormatted_ReportTotalsLine; "Amount Formatted")
                {
                }
                column(FontBold_ReportTotalsLine; "Font Bold")
                {
                }
                column(FontUnderline_ReportTotalsLine; "Font Underline")
                {
                }

                trigger OnPreDataItem();
                begin
                    CreateReportTotalLines();
                end;
            }
            dataitem(LineFee; "Integer")
            {
                DataItemTableView = SORTING(Number) ORDER(Ascending) WHERE(Number = FILTER(1 ..));
                column(LineFeeCaptionText; TempLineFeeNoteOnReportHist.ReportText)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    if not DisplayAdditionalFeeNoteBool then
                        CurrReport.Break();

                    if Number = 1 then begin
                        if not TempLineFeeNoteOnReportHist.Findset() then
                            CurrReport.Break()
                    end else
                        if TempLineFeeNoteOnReportHist.Next() = 0 then
                            CurrReport.Break();
                end;
            }
            dataitem(PaymentReportingArgument; "Payment Reporting Argument")
            {
                DataItemTableView = SORTING(Key);
                UseTemporary = true;
                column(PaymentServiceLogo; Logo)
                {
                }
                column(PaymentServiceLogo_UrlText; "URL Caption")
                {
                }
                column(PaymentServiceLogo_Url; GetTargetURL())
                {
                }
                column(PaymentServiceText_UrlText; "URL Caption")
                {
                }
                column(PaymentServiceText_Url; GetTargetURL())
                {
                }
            }
            dataitem(LeftHeader; "Name/Value Buffer")
            {
                DataItemTableView = SORTING(ID);
                UseTemporary = true;
                column(LeftHeaderName; Name)
                {
                }
                column(LeftHeaderValue; Value)
                {
                }
            }
            dataitem(RightHeader; "Name/Value Buffer")
            {
                DataItemTableView = SORTING(ID);
                UseTemporary = true;
                column(RightHeaderName; Name)
                {
                }
                column(RightHeaderValue; Value)
                {
                }
            }
            dataitem(LetterText; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(GreetingText; GreetingLbl)
                {
                }
                column(BodyText; BodyLbl)
                {
                }
                column(ClosingText; ClosingLbl)
                {
                }
                column(PmtDiscText; PmtDiscText)
                {
                }

                trigger OnPreDataItem();
                begin
                    PmtDiscText := '';
                    if Header."Payment Discount %" <> 0 then
                        PmtDiscText := STRSUBSTNO(PmtDiscTxt, Header."Pmt. Discount Date", Header."Payment Discount %");
                end;
            }
            dataitem(Totals; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(TotalNetAmount; NumberFormatMgt.FormatCurrency(TotalAmount))
                {
                }
                column(TotalVATBaseLCY; NumberFormatMgt.FormatCurrency(TotalVATBaseLCY))
                {
                }
                column(TotalAmountIncludingVAT; Round(TotalAmountInclVAT, 0.01, '>'))
                {
                }
                column(TotalVATAmount; Round(TotalAmountVAT, 0.01, '>'))
                {
                }
                column(TotalVATAmountLCY; NumberFormatMgt.FormatCurrency(TotalVATAmountLCY))
                {
                }
                column(TotalInvoiceDiscountAmount; NumberFormatMgt.FormatCurrency(TotalInvDiscAmount))
                {

                }
                column(TotalPaymentDiscountOnVAT; NumberFormatMgt.FormatCurrency(TotalPaymentDiscOnVAT))
                {
                }
                column(TotalVATAmountText; VATAmountLine.VATAmountText())
                {
                }
                column(TotalExcludingVATText; TotalExclVATText)
                {
                }
                column(TotalIncludingVATText; TotalInclVATText)
                {
                }
                column(TotalSubTotal; Round(TotalSubTotal, 0.01, '>'))
                {
                }
                column(TotalSubTotalMinusInvoiceDiscount; NumberFormatMgt.FormatCurrency(TotalSubTotal + TotalInvDiscAmount))
                {
                }
                column(TotalText; TotalText)
                {
                }
            }

            trigger OnPreDataItem();
            begin
                FirstLineHasBeenOutput := false;
            end;

            trigger OnAfterGetRecord();
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
                PaymentServiceSetup: Record "Payment Service Setup";
            begin
                FillLeftHeader();
                FillRightHeader();

                if not CurrReport.PREVIEW then
                    CODEUNIT.RUN(CODEUNIT::"Sales Inv.-Printed", Header);
                if "Language Code" <> '' then
                    CurrReport.Language := Language.GetLanguageId("Language Code")
                else
                    CurrReport.Language := GlobalLanguage;

                CALCFIELDS("Work Description");
                ShowWorkDescription := "Work Description".HASVALUE;

                DocumentTitle := STRSUBSTNO(SalesInvoiceNoLbl, Header."No.");

                FormatAddressFields(Header);
                FormatDocumentFields(Header);

                if BillToContact.Get("Bill-to Contact No.") then;

                if not Customer.GET("Bill-to Customer No.") then
                    CLEAR(Customer);

                if "Currency Code" <> '' then begin
                    CurrencyExchangeRate.FindCurrency("Posting Date", "Currency Code", 1);
                    CalculatedExchRate :=
                      ROUND(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount", 0.000001);
                    ExchangeRateText := STRSUBSTNO(ExchangeRateTxt, CalculatedExchRate, CurrencyExchangeRate."Exchange Rate Amount");
                end;

                GetLineFeeNoteOnReportHist("No.");

                if LogInteractionBool and not CurrReport.PREVIEW then
                    if "Bill-to Contact No." <> '' then
                        SegManagement.LogDocument(
                          4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                          "Campaign No.", "Posting Description", '')
                    else
                        SegManagement.LogDocument(
                          4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                          "Campaign No.", "Posting Description", '');

                PaymentServiceSetup.CreateReportingArgs(PaymentReportingArgument, Header);

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                TotalPaymentDiscOnVAT := 0;
            end;


        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(LogInteraction; LogInteractionBool)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Assembly Components';
                        ToolTip = 'Shows the components of an assembly item on the report';
                    }
                    field(DisplayShipmentInformation; DisplayShipmentInformationBool)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Shipments';
                        ToolTip = 'Specifies that shipments are shown on the document.';
                    }
                    field(DisplayAdditionalFeeNote; DisplayAdditionalFeeNoteBool)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Additional Fee Note';
                        ToolTip = 'Specifies if you want notes about additional fees to be shown on the document.';
                    }
                    field(BankAccountCode; BankAccount."No.")
                    {
                        ApplicationArea = all;
                        Caption = 'Bank Payment Info';
                        ToolTip = 'Specifies the bank account to be used to show payment information on the document.';

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            BankAccountList: Page "Bank Account List";
                        begin
                            BankAccountList.SetRecord(BankAccount);
                            BankAccountList.LookupMode(true);
                            if BankAccountList.RunModal() <> Action::LookupOK then
                                exit;
                            BankAccountList.GetRecord(BankAccount);
                        end;

                        trigger OnValidate()
                        begin
                            if BankAccount."No." = '' then
                                exit;
                            BankAccount.Reset();
                            BankAccount.SetRange("No.", BankAccount."No.");
                            if not BankAccount.IsEmpty() then
                                exit;
                            BankAccount.SetFilter("No.", BankAccount."No." + '*');
                            if BankAccount.Count() <> 1 then
                                Error('Bank Account %1 does not exist.', BankAccount."No.");
                            BankAccount.FindFirst();
                        end;
                    }
                    field(SerialNumberAlignment; SerialNumberAlignment)
                    {
                        Caption = 'Serial No. Alignment';
                        ToolTip = 'Specifies the alignment of how serial numbers are displayed on the document.';
                        ApplicationArea = all;
                    }
                }
            }
        }

        trigger OnInit();
        begin
            LogInteractionEnable := true;
        end;

        trigger OnOpenPage();
        begin
            InitLogInteraction();
            LogInteractionEnable := LogInteractionBool;
        end;
    }

    trigger OnInitReport();
    begin
        GeneralLedgerSetup.Get();
        CompanyInformation.Get();
        SalesReceivablesSetup.Get();
        CompanyInformation.VerifyAndSetPaymentInfo();
    end;

    trigger OnPreReport();
    begin
        if Header.GetFilters() = '' then
            ERROR(NoFilterSetErr);

        if not CurrReport.UseRequestPage() then
            InitLogInteraction();
    end;

    var

        GeneralLedgerSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PaymentMethod: Record "Payment Method";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        CompanyInformation: Record "Company Information";
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
        Customer: Record Customer;
        ResponsibilityCenter: Record "Responsibility Center";

        VATClause: Record "VAT Clause";
        WorkType: Record "Work Type";

        CurrencyExchangeRate: Record "Currency Exchange Rate";
        //VATAMTLine: Record "VAT Amount Line";
        TempLineFeeNoteonReportHist: Record "Line Fee Note on Report Hist." temporary;
        BillToContact: Record Contact;
        FormatAddress: Codeunit "Format Address";
        Language: Codeunit Language;
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        DateFormatMgt: Codeunit "BBCSRP Date Format Mgt.";
        NumberFormatMgt: Codeunit "BBC USSR Number Format Mgt.";
        WorkDescriptionInStream: InStream;
        JobNo: Code[20];
        JobTaskNo: Code[20];
        PostedShipmentDate: Date;
        WorkDescriptionLine: Text;
        CustAddr: array[8] of Text;
        ShipToAddr: array[8] of Text;
        CompanyAddr: array[8] of Text;
        RemiteAddr: array[8] of Text;
        SalesPersonText: Text[50];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        TotalInclVATText_New: Text[50];
        LineDiscountPctText: Text;
        PmtDiscText: Text;
        JobNoText: Text;
        JobTaskNoText: Text;
        MoreLines: Boolean;
        ShowWorkDescription: Boolean;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        LogInteractionBool: Boolean;
        SalesPrepInvoiceNoLbl: Label 'Sales - Prepayment Invoice %1', Comment = '%1 = Pre-Payment Invoice No.';
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        TransHeaderAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        DisplayShipmentInformationBool: Boolean;
        CompanyLogoPosition: Integer;
        FirstLineHasBeenOutput: Boolean;
        CalculatedExchRate: Decimal;
        ExchangeRateText: Text;
        ExchangeRateTxt: Label 'Exchange rate: %1/%2', Comment = '%1 = Calculated exchange rate, %2 = Exchange rate amount';
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        PrevLineAmount: Decimal;
        PercentLbl: Label '%1%', Comment = '%1 = Decimal Value';
        SalesInvoiceNoLbl: Label 'Sales Invoice %1', Comment = '%1 = Sales Invoice No.';
        SalespersonLbl: Label 'Salesperson';
        CompanyInformationBankAccNoLbl: Label 'Account No.';
        CompanyInformationBankNameLbl: Label 'Bank';
        CompanyInformationGiroNoLbl: Label 'Giro No.';
        CompanyInformationPhoneNoLbl: Label 'Phone No.';
        CopyLbl: Label 'Copy';
        EMailLbl: Label 'Email';
        HomePageLbl: Label 'Home Page';
        InvDiscBaseAmtLbl: Label 'Invoice Discount Base Amount';
        InvDiscountAmtLbl: Label 'Invoice Discount';
        InvNoLbl: Label 'Invoice No.';
        LineAmtAfterInvDiscLbl: Label 'Payment Discount on VAT';
        LocalCurrencyLbl: Label 'Local Currency';
        PageLbl: Label 'Page';
        PaymentTermsDescLbl: Label 'Payment Terms';
        PaymentMethodDescLbl: Label 'Payment Method';
        PostedShipmentDateLbl: Label 'Shipment Date';
        SalesInvLineDiscLbl: Label 'Discount %';
        //SalesInvoiceLbl: Label 'Invoice';
        ShipmentLbl: Label 'Shipment';
        ShiptoAddrLbl: Label 'Ship-to Address';
        ShptMethodDescLbl: Label 'Shipment Method';
        SubtotalLbl: Label 'Subtotal';
        TotalLbl: Label 'Total';
        VATAmtSpecificationLbl: Label 'VAT Amount Specification';
        VATAmtLbl: Label 'VAT Amount';
        VATAmountLCYLbl: Label 'VAT Amount (LCY)';
        VATBaseLbl: Label 'VAT Base';
        VATBaseLCYLbl: Label 'VAT Base (LCY)';
        VATClausesLbl: Label 'VAT Clause';
        VATIdentifierLbl: Label 'VAT Identifier';
        VATPercentageLbl: Label 'VAT %';
        NoFilterSetErr: Label 'You must specify one or more filters to avoid accidently printing all documents.';
        DisplayAdditionalFeeNoteBool: Boolean;
        GreetingLbl: Label 'Hello';
        ClosingLbl: Label 'Sincerely';
        PmtDiscTxt: Label 'If we receive the payment before %1, you are eligible for a %2 payment discount.', Comment = '%1 = payment discount date, %2 = payment discount';
        BodyLbl: Label 'Thank you for your business. Your invoice is attached to this message.';
        JobNoLbl: Label 'Job No.';
        JobTaskNoLbl: Label 'Job Task No.';
        JobTaskDescription: Text[100];
        JobTaskDescLbl: Label 'Job Task Description';
        UOMLbl: Label 'UOM';
        ExtDocLbl: Label 'External Document No.';
        BankDetailLbl: Label 'Bank Details';
        DocumentTitle: Text;
        SerialNoString: Text;
        weekCalc: Text;
        StartofWeek: Date;
        EndofWeek: Date;
        VatRegNoLbl: Label 'VAT Registration No';
        BankAccount: Record "Bank Account";
        SerialNumberAlignment: Option "Horizontal","Vertical";
        QtyText, UnitPriceText, TaxPercentText, LineAmtText : Text;




    local procedure InitLogInteraction();
    begin
        LogInteractionBool := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    local procedure FindPostedShipmentDate(): Date;
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer: Record "Sales Shipment Buffer";
    begin
        if Line."Shipment No." <> '' then
            if SalesShipmentHeader.GET(Line."Shipment No.") then
                exit(SalesShipmentHeader."Posting Date");

        if Line.Type = Line.Type::" " then
            exit(0D);

        ShipmentLine.GetLinesForSalesInvoiceLine(Line, Header);

        ShipmentLine.Reset();
        ShipmentLine.SETRANGE("Line No.", Line."Line No.");
        if ShipmentLine.FIND('-') then begin
            SalesShipmentBuffer := ShipmentLine;
            if not DisplayShipmentInformationBool then
                if ShipmentLine.Next() = 0 then begin
                    ShipmentLine.GET(
                      SalesShipmentBuffer."Document No.", SalesShipmentBuffer."Line No.", SalesShipmentBuffer."Entry No.");
                    ShipmentLine.Delete();
                    exit(SalesShipmentBuffer."Posting Date");
                end;
            ShipmentLine.CALCSUMS(Quantity);
            if ShipmentLine.Quantity <> Line.Quantity then begin
                ShipmentLine.DeleteAll();
                exit(Header."Posting Date");
            end;
        end;
        exit(Header."Posting Date");
    end;

    local procedure DocumentCaption(): Text[250];
    begin
        if Header."Prepayment Invoice" then
            exit(STRSUBSTNO(SalesPrepInvoiceNoLbl, CopyText));
        exit(STRSUBSTNO(SalesInvoiceNoLbl, CopyText));
    end;

    procedure InitializeRequest(NewLogInteraction: Boolean; DisplayAsmInfo: Boolean);
    begin
        LogInteractionBool := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure GetUOMText(UOMCode: Code[10]): Text[50];
    var
        UnitofMeasure: Record "Unit of Measure";
    begin
        if not UnitOfMeasure.GET(UOMCode) then
            exit(UOMCode);
        exit(UnitOfMeasure.Description);
    end;

    local procedure CreateReportTotalLines();
    begin
        ReportTotalsLine.DeleteAll();
        if (TotalInvDiscAmount <> 0) or (TotalAmountVAT <> 0) then
            ReportTotalsLine.Add(SubtotalLbl, TotalSubTotal, true, false, false);
        if TotalInvDiscAmount <> 0 then begin
            ReportTotalsLine.Add(InvDiscountAmtLbl, TotalInvDiscAmount, false, false, false);
            if TotalAmountVAT <> 0 then
                ReportTotalsLine.Add(TotalExclVATText, TotalAmount, true, false, false);
        end;
        if TotalAmountVAT <> 0 then
            ReportTotalsLine.Add(VATAmountLine.VATAmountText(), TotalAmountVAT, false, true, false);
    end;

    local procedure GetLineFeeNoteOnReportHist(SalesInvoiceHeaderNo: Code[20]);
    var
        LineFeeNoteonReportHist: Record "Line Fee Note on Report Hist.";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        LookupCustomer: Record Customer;
    begin
        TempLineFeeNoteOnReportHist.DeleteAll();
        CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::Invoice);
        CustLedgerEntry.SETRANGE("Document No.", SalesInvoiceHeaderNo);
        if not CustLedgerEntry.FindFirst() then
            exit;

        if not LookupCustomer.GET(CustLedgerEntry."Customer No.") then
            exit;

        LineFeeNoteOnReportHist.SETRANGE("Cust. Ledger Entry No", CustLedgerEntry."Entry No.");
        LineFeeNoteOnReportHist.SETRANGE("Language Code", LookupCustomer."Language Code");
        if LineFeeNoteOnReportHist.Findset() then
            repeat
                TempLineFeeNoteOnReportHist.Init();
                TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
                TempLineFeeNoteOnReportHist.Insert();
            until LineFeeNoteOnReportHist.Next() = 0
        else begin
            LineFeeNoteOnReportHist.SETRANGE("Language Code", Language.GetUserLanguageCode());
            if LineFeeNoteOnReportHist.Findset() then
                repeat
                    TempLineFeeNoteOnReportHist.Init();
                    TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
                    TempLineFeeNoteOnReportHist.Insert();
                until LineFeeNoteOnReportHist.Next() = 0;
        end;
    end;

    local procedure FillLeftHeader();
    begin
        LeftHeader.DeleteAll();

        FillNameValueTable(LeftHeader, Header.FIELDCAPTION("Your Reference"), Header."Your Reference");
        FillNameValueTable(LeftHeader, Header.FIELDCAPTION("Bill-to Customer No."), Header."Bill-to Customer No.");
        FillNameValueTable(LeftHeader, Header.GetCustomerVATRegistrationNumberLbl(), Header.GetCustomerVATRegistrationNumber());
        FillNameValueTable(LeftHeader, Header.GetCustomerGlobalLocationNumberLbl(), Header.GetCustomerGlobalLocationNumber());
        FillNameValueTable(LeftHeader, InvNoLbl, Header."No.");
        FillNameValueTable(LeftHeader, Header.FIELDCAPTION("Order No."), Header."Order No.");
        FillNameValueTable(LeftHeader, Header.FIELDCAPTION("Document Date"), FORMAT(Header."Document Date", 0, 4));
        FillNameValueTable(LeftHeader, Header.FIELDCAPTION("Due Date"), FORMAT(Header."Due Date", 0, 4));
        FillNameValueTable(LeftHeader, PaymentTermsDescLbl, PaymentTerms.Description);
        FillNameValueTable(LeftHeader, PaymentMethodDescLbl, PaymentMethod.Description);
        FillNameValueTable(LeftHeader, Customer.GetLegalEntityTypeLbl(), Customer.GetLegalEntityType());
        FillNameValueTable(LeftHeader, ShptMethodDescLbl, ShipmentMethod.Description);
    end;

    local procedure FillRightHeader();
    begin
        RightHeader.DeleteAll();

        FillNameValueTable(RightHeader, EMailLbl, CompanyInformation."E-Mail");
        FillNameValueTable(RightHeader, HomePageLbl, CompanyInformation."Home Page");
        FillNameValueTable(RightHeader, CompanyInformationPhoneNoLbl, CompanyInformation."Phone No.");
        FillNameValueTable(RightHeader, CompanyInformation.GetRegistrationNumberLbl(), CompanyInformation.GetRegistrationNumber());
        FillNameValueTable(RightHeader, CompanyInformationBankNameLbl, CompanyInformation."Bank Name");
        FillNameValueTable(RightHeader, CompanyInformationGiroNoLbl, CompanyInformation."Giro No.");
        FillNameValueTable(RightHeader, CompanyInformation.FIELDCAPTION(IBAN), CompanyInformation.IBAN);
        FillNameValueTable(RightHeader, CompanyInformation.FIELDCAPTION("SWIFT Code"), CompanyInformation."SWIFT Code");
        FillNameValueTable(RightHeader, Header.GetPaymentReferenceLbl(), Header.GetPaymentReference());
    end;

    local procedure FillNameValueTable(var NameValueBuffer: Record "Name/Value Buffer"; Name: Text; Value: Text);
    var
        KeyIndex: Integer;
    begin
        if Value <> '' then begin
            CLEAR(NameValueBuffer);
            if NameValueBuffer.FindLast() then
                KeyIndex := NameValueBuffer.ID + 1;

            NameValueBuffer.Init();
            NameValueBuffer.ID := KeyIndex;
            NameValueBuffer.Name := COPYSTR(Name, 1, MAXSTRLEN(NameValueBuffer.Name));
            NameValueBuffer.Value := COPYSTR(Value, 1, MAXSTRLEN(NameValueBuffer.Value));
            NameValueBuffer.Insert();
        end;
    end;

    local procedure FormatAddressFields(var SalesInvoiceHeader: Record "Sales Invoice Header");
    var
        Location: Record Location;
    begin
        FormatAddress.GetCompanyAddr(SalesInvoiceHeader."Responsibility Center", ResponsibilityCenter, CompanyInformation, CompanyAddr);
        FormatAddress.SalesInvBillTo(CustAddr, SalesInvoiceHeader);
        ShowShippingAddr := FormatAddress.SalesInvShipTo(ShipToAddr, CustAddr, SalesInvoiceHeader);
        ShowShippingAddr := true;
        if (SalesInvoiceHeader."Location Code" <> '') and Location.Get(SalesInvoiceHeader."Location Code") then
            FormatAddress.FormatAddr(RemiteAddr, Location.Name, Location."Name 2", '', Location.Address, Location."Address 2", Location.City,
            Location."Post Code", Location.County, Location."Country/Region Code")
        else
            Clear(RemiteAddr);


    end;

    local procedure FormatDocumentFields(SalesInvoiceHeader: Record "Sales Invoice Header");
    begin
        FormatDocument.SetTotalLabels(SalesInvoiceHeader."Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetSalesPerson(SalespersonPurchaser, SalesInvoiceHeader."Salesperson Code", SalesPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, SalesInvoiceHeader."Payment Terms Code", SalesInvoiceHeader."Language Code");
        SetPaymentMethod(SalesInvoiceHeader."Payment Method Code", SalesInvoiceHeader."Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, SalesInvoiceHeader."Shipment Method Code", SalesInvoiceHeader."Language Code");
    end;

    local procedure SetPaymentMethod(Code: Code[10]; LanguageCode: Code[10])
    begin
        if Code = '' then
            PaymentMethod.Init()
        else begin
            PaymentMethod.get(code);
            TranslateDescription(LanguageCode);
        end;
    end;

    local procedure TranslateDescription(Language: Code[10])
    var
        PaymentMethodTranslation: Record "Payment Method Translation";
    begin
        if PaymentMethodTranslation.GET(PaymentMethod.Code, Language) then
            PaymentMethod.Validate(Description, COPYSTR(PaymentMethodTranslation.Description, 1, MAXSTRLEN(PaymentMethod.Description)));
    end;

    local procedure GetJobTaskDescription(JobNo: Code[20]; JobTaskNo: Code[20]): Text[100];
    var
        JobTask: Record "Job Task";
    begin
        JobTask.SETRANGE("Job No.", JobNo);
        JobTask.SETRANGE("Job Task No.", JobTaskNo);
        if JobTask.FindFirst() then
            exit(JobTask.Description);
        exit('');
    end;

    local procedure RetrieveEntriesFromPostedInv(var TempItemLedgerEntry: Record "Item Ledger Entry" temporary; InvoiceRowID: Text[250])
    var
        ValueEntryRelation: Record "Value Entry Relation";
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        SignFactor: Integer;
    begin
        TempItemLedgerEntry.Reset();
        TempItemLedgerEntry.DeleteAll();
        ValueEntryRelation.SetCurrentKey("Source RowId");
        ValueEntryRelation.SetRange("Source RowId", InvoiceRowID);
        if not ValueEntryRelation.Find('-') then
            exit;
        SignFactor := TableSignFactor2(InvoiceRowID);
        repeat
            ValueEntry.Get(ValueEntryRelation."Value Entry No.");
            if ValueEntry."Invoiced Quantity" <> 0 then begin
                ItemLedgerEntry.Get(ValueEntry."Item Ledger Entry No.");
                if ItemLedgerEntry."Entry Type" in [ItemLedgerEntry."Entry Type"::Purchase, ItemLedgerEntry."Entry Type"::Sale] then begin
                    TempItemLedgerEntry := ItemLedgerEntry;
                    TempItemLedgerEntry.Quantity := ValueEntry."Invoiced Quantity";
                    AddTempRecordToSet(TempItemLedgerEntry, SignFactor);
                end;
            end;
        until ValueEntryRelation.Next() = 0;
    end;

    local procedure TableSignFactor2(RowID: Text): Integer
    var
        TableNo: Integer;
    begin
        RowID := DELCHR(RowID, '<', '"');
        RowID := COPYSTR(RowID, 1, STRPOS(RowID, '"') - 1);
        if EVALUATE(TableNo, RowID) then
            exit(-1);
        exit(1);
    end;

    local procedure AddTempRecordToSet(var TempItemLedgerEntry: Record "Item Ledger Entry" temporary; SignFactor: Integer)
    var
        TempItemLedgerEntry2: Record "Item Ledger Entry" temporary;
        ItemTrackingManagement: Codeunit "Item Tracking Management";
    begin
        if SignFactor <> 1 then begin
            TempItemLedgerEntry.Quantity *= SignFactor;
            TempItemLedgerEntry."Remaining Quantity" *= SignFactor;
            TempItemLedgerEntry."Invoiced Quantity" *= SignFactor;
        end;
        ItemTrackingManagement.RetrieveAppliedExpirationDate(TempItemLedgerEntry);
        TempItemLedgerEntry2 := TempItemLedgerEntry;
        TempItemLedgerEntry.Reset();

        TempItemLedgerEntry.SetTrackingFilterFromItemLedgEntry(TempItemLedgerEntry);
        TempItemLedgerEntry.SETRANGE("Warranty Date", TempItemLedgerEntry2."Warranty Date");
        TempItemLedgerEntry.SETRANGE("Expiration Date", TempItemLedgerEntry2."Expiration Date");
        if TempItemLedgerEntry.FindFirst() then begin
            TempItemLedgerEntry.Quantity += TempItemLedgerEntry2.Quantity;
            TempItemLedgerEntry."Remaining Quantity" += TempItemLedgerEntry2."Remaining Quantity";
            TempItemLedgerEntry."Invoiced Quantity" += TempItemLedgerEntry2."Invoiced Quantity";
            TempItemLedgerEntry.Modify(true);
        end else
            TempItemLedgerEntry.Insert(true);

        TempItemLedgerEntry.Reset();
    end;

    local procedure LoadCurrencyCode(): Code[10]
    begin
        if Header."Currency Code" <> '' then
            exit(Header."Currency Code");
        exit(GeneralLedgerSetup."LCY Code");
    end;
}