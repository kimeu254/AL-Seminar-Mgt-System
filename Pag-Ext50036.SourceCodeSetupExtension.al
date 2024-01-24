pageextension 50036 "Source Code Setup Extension" extends "Source Code Setup"
{
    layout
    {
        addlast(content)
        {
            group("Seminar Management")
            {
                Caption = 'Seminar Management';
                field(Seminar; Rec.Seminar)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
