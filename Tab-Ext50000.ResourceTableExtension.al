tableextension 50000 "Resource Table Extension" extends Resource
{
    fields
    {
        field(50000; "Internal/External"; Option)
        {
            Caption = 'Internal/External';
            DataClassification = ToBeClassified;
            OptionMembers = Internal,External;
        }
        field(50001; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }
    }
}
