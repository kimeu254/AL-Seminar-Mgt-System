codeunit 50021 "Seminar-Post(Yes/No)"
{
    TableNo = "Seminar Registration Header";

    trigger OnRun()
    begin
        SeminarRegHeader.COPY(Rec);
        Code;
        Rec := SeminarRegHeader;
    end;

    var
        SeminarRegHeader: Record "Seminar Registration Header";
        SeminarPost: Codeunit "Seminar Post";
        ContinuePostingQst: Label 'Continue to post Seminar Registration No.: %1?';

    local procedure "Code"();
    begin
        if NOT Confirm(ContinuePostingQst, FALSE, SeminarRegHeader."No.") then
            exit;
        SeminarPost.Run(SeminarRegHeader);
        COMMIT;
    end;
}
