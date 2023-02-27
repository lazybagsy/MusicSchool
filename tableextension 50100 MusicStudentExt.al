tableextension 50100 MusicStudentExtension extends Customer
{
    fields
    {
        field(50100; MusicStudentID; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(50101; MusicTeacherID; Code[20])
        {
            TableRelation = MusicTeacher."MusicTeacherID";
            DataClassification = CustomerContent;

        }

        field(50102; InstrumentID; Code[20])
        {
            TableRelation = Instrument."InstrumentID";
            DataClassification = CustomerContent;
        }

    }

    trigger OnAfterModify()
    begin
        rec.MusicCourseMgmt();
    end;

    procedure MusicCourseMgmt();
    var
        UpdateCustomer_MusicCourseMgmt: Codeunit UpdateCustomer_MusicCourseMgmt;
    begin
        UpdateCustomer_MusicCourseMgmt.OnAfterModifyCustomerRecord(Rec);
    end;
}