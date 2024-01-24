report 50051 "Seminar Reg.-Participant List"
{
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './reports/Seminar Reg.-Participant List.rdl';
    Caption = 'Seminar Reg.-Participant List';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(SeminarRegistrationHeader; "Seminar Registration Header")
        {
            DataItemTableView = SORTING("No.") WHERE("No." = FILTER(<> ''));
            RequestFilterFields = "No.", "Seminar No.";
            PrintOnlyIfDetail = false;
            column(No; "No.")
            {
            }
            column(SeminarNo; "Seminar No.")
            {
            }
            column(SeminarName; "Seminar Name")
            {
            }
            column(StartingDate; "Starting Date")
            {
            }
            column(Duration; "Duration")
            {
            }
            column(InstructorName; "Instructor Name")
            {
            }
            column(RoomName; "Room Name")
            {
            }
            column(CompanyInfo_Name; CompanyInfo.Name)
            {
            }
            column(CompanyInfo_Address; CompanyInfo.Address)
            {
            }
            column(CompanyInfo_Address2; CompanyInfo."Address 2")
            {
            }
            column(CompanyInfo_Email; CompanyInfo."E-Mail")
            {
            }
            column(CompanyInfo_Picture; CompanyInfo.Picture)
            {
            }
            dataitem("Seminar Registration Line"; "Seminar Registration Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = SORTING("Document No.", "Line No.");
                DataItemLinkReference = SeminarRegistrationHeader;
                PrintOnlyIfDetail = false;
                column(Bill_to_Customer_No_; "Bill-to Customer No.")
                {
                    IncludeCaption = true;
                }
                column(Participant_Contact_No_; "Participant Contact No.")
                {
                    IncludeCaption = true;
                }
                column(Participant_Name; "Participant Name")
                {
                    IncludeCaption = true;
                }
            }
            trigger OnAfterGetRecord()
            begin
                //CalcFields("Instructor Name");
            end;

        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    trigger OnPreReport()
    begin
        CompanyInfo.Get();
        FormatAddr.Company(CompanyAddr, CompanyInfo);

    end;

    var
        CompanyInfo: Record "Company Information";
        FormatAddr: Codeunit "Format Address";
        CompanyAddr: array[8] of Text[100];

}
