table 50010 "Seminar Comment Line"
{
    Caption = 'Seminar Comment Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document Type"; Enum "Seminar Comment Document Type")
        {
            Caption = 'Document Type';
            DataClassification = CustomerContent;
        }
        field(2; "No."; Code[10])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(5; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }
        field(7; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Document Type", "No.", "Line No.", "Document Line No.")
        {
            Clustered = true;
        }
    }

    procedure SetUpNewLine()
    var
        SeminarCommentLine: Record "Seminar Comment Line";
    begin
        SeminarCommentLine.Reset();
        SeminarCommentLine.SetRange("Document Type", "Document Type");
        SeminarCommentLine.SetRange("No.", "No.");
        SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentLine.SetRange(Date, WorkDate());

        if SeminarCommentLine.IsEmpty then
            Date := WorkDate();
    end;
}
