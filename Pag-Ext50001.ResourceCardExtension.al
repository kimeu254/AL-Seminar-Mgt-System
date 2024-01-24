pageextension 50001 "Resource Card Extension" extends "Resource Card"
{
    layout
    {
        addafter(Type)
        {
            field("Internal/External"; Rec."Internal/External")
            {
                Lookup = true;
                ToolTip = 'Specifies whether the resource is internal/external.';
            }
        }

        addafter("Personal Data")
        {
            group(Room)
            {
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    Lookup = true;
                    ToolTip = 'Specifies the maximum number of participants for the room.';
                }
            }
        }
    }
}
