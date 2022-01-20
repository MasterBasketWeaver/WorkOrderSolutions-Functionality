pageextension 60002 "BBC WOSF Company Info" extends "Company Information"
{
    layout
    {
        addafter(Shipping)
        {
            group("BBC WOSF Remit")
            {
                Caption = 'Remittance';

                field("BBC WOSFRemit-to Name"; Rec."BBC WOSF RemitToName")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to Name 2"; Rec."BBC WOSF RemitToName2")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to Address"; Rec."BBC WOSF RemitToAddress")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to Address 2"; Rec."BBC WOSF RemitToAddress2")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to City"; Rec."BBC WOSF RemitToCity")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to Post Code"; Rec."BBC WOSF RemitToPostCode")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to County"; Rec."BBC WOSF RemitToCounty")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to Country/Region Code"; Rec."BBC WOSF RemitToCountryCode")
                {
                    ApplicationArea = All;
                }
                field("BBC WOSFRemit-to Contact"; Rec."BBC WOSF RemitToContact")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
