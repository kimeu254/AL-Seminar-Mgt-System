tableextension 50033 "Res. Ledger Entry Extension" extends "Res. Ledger Entry"
{
    fields
    {
        field(50000; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = CustomerContent;
            TableRelation = Seminar;
        }
        field(50001; "Seminar Registration No."; Code[20])
        {
            Caption = 'Seminar Registration No.';
            DataClassification = CustomerContent;
            TableRelation = "Posted Seminar Reg. Header";
        }
    }
}
