pageextension 50002 "Resource List Extension" extends "Resource List"
{
    layout
    {

        addafter(Type)
        {
            field("Internal/External"; Rec."Internal/External")
            {
                ApplicationArea = All;
                Lookup = true;
                ToolTip = 'Specifies whether the resource is internal/external.';
            }
            field("Maximum Participants"; Rec."Maximum Participants")
            {
                ApplicationArea = All;
                Lookup = true;
                ToolTip = 'Specifies the maximum number of participants for the room.';
                Visible = ShowMaxParticipants;
            }
        }
        modify(Type)
        {
            Visible = ShowType;
        }
    }

    trigger OnOpenPage()
    begin
        Rec.FilterGroup(3);
        ShowType := Rec.GetFilter(Type) = '';
        ShowMaxParticipants := Rec.GetFilter(Type) = FORMAT(Rec.Type::Machine);
        Rec.FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxParticipants: Boolean;
}
