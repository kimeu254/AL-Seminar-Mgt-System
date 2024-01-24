tableextension 50035 "Source Code Setup Extension" extends "Source Code Setup"
{
    fields
    {
        field(50000; Seminar; Code[10])
        {
            Caption = 'Seminar';
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
        }
    }
}
