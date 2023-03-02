tableextension 50100 MusicStudentExtension extends Customer
{
    fields
    {

        field(50100; MusicTeacherID; Code[20])
        {
            TableRelation = MusicTeacher."MusicTeacherID";
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                TeacherInstrument: Record TeacherInstrument;
            begin
                if Rec.MusicTeacherID = '' then begin
                    Rec.Modify();
                    exit;
                end;
                TeacherInstrument.Reset();
                TeacherInstrument.SetRange(TeacherInstrument."MusicTeacherID", MusicTeacherID);
                TeacherInstrument.SetRange(TeacherInstrument."InstrumentID", InstrumentID);

                if TeacherInstrument.Find('-') then begin
                    InstrumentID := TeacherInstrument."InstrumentID";
                    Rec.Modify();

                end else
                    // The pair of MusicTeacherID and InstrumentID fields do not exist in the TeacherInstrument table
                    error('The selected pair of MusicTeacherID and InstrumentID fields do not exist in the TeacherInstrument table.');
            end;

        }

        field(50101; InstrumentID; Code[20])
        {
            TableRelation = Instrument."InstrumentID";
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                TeacherInstrument: Record TeacherInstrument;
            begin
                if Rec.MusicTeacherID = '' then begin
                    Rec.Modify();
                    exit;
                end;
                TeacherInstrument.Reset();
                TeacherInstrument.SetRange(TeacherInstrument."MusicTeacherID", MusicTeacherID);
                TeacherInstrument.SetRange(TeacherInstrument."InstrumentID", InstrumentID);

                if TeacherInstrument.Find('-') then begin
                    MusicTeacherID := TeacherInstrument."MusicTeacherID";
                    Rec.Modify();

                end else
                    // The pair of MusicTeacherID and InstrumentID fields do not exist in the TeacherInstrument table
                    error('The selected pair of MusicTeacherID and InstrumentID fields do not exist in the TeacherInstrument table.');
            end;
        }

    }

    // trigger OnAfterModify()
    // begin
    //     rec.MusicCourseMgmt();
    // end;

    // procedure MusicCourseMgmt();
    // var
    //     UpdateCustomer_MusicCourseMgmt: Codeunit UpdateCustomer_MusicCourseMgmt;
    // begin
    //     UpdateCustomer_MusicCourseMgmt.OnAfterModifyCustomerRecord(Rec);
    // end;

}