tableextension 50034 "Res. Journal Line Extension" extends "Res. Journal Line"
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
