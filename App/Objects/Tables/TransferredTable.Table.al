table 60000 "BBC WSOF Transferred Table"
{
    DataClassification = CustomerContent;
    Caption = 'Transferred Table';

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = "Table Metadata".ID;
            Editable = false;

            trigger OnValidate()
            var
                TableMetadata: Record "Table Metadata";
            begin
                TableMetadata.Get(ID);
                Caption := TableMetadata.Caption;
            end;
        }
        field(2; Caption; Text[80])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
}