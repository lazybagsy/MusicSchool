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

    // trigger OnInsert()
    // var
    //     StudentInstrument: Record StudentInstrument;
    //     TeacherInstrument: Record TeacherInstrument;
    // begin
    //     // Insert a new record into StudentInstrument table
    //     StudentInstrument.Init;
    //     StudentInstrument.MusicStudentID := Rec."No.";
    //     StudentInstrument.InstrumentID := Rec.InstrumentID;
    //     StudentInstrument.Insert;

    //     // Insert a new record into TeacherInstrument table
    //     TeacherInstrument.Init;
    //     TeacherInstrument.MusicTeacherID := xRec.MusicTeacherID;
    //     TeacherInstrument.InstrumentID := xRec.InstrumentID;
    //     TeacherInstrument.Insert;
    // end;

    // trigger OnModify()
    // var
    //     StudentInstrument: Record StudentInstrument;
    //     TeacherInstrument: Record TeacherInstrument;
    // begin
    //     // Update the record in StudentInstrument table
    //     StudentInstrument.Init();
    //     StudentInstrument.SetRange(StudentInstrument.MusicStudentID, Rec."No.");
    //     StudentInstrument.SetRange(StudentInstrument."InstrumentID", xRec.InstrumentID);
    //     if StudentInstrument.Find('-') then begin
    //         StudentInstrument.MusicStudentID := Rec."No.";
    //         StudentInstrument.InstrumentID := Rec.InstrumentID;
    //         StudentInstrument.Modify;
    //     end;

    //     // Update the record in TeacherInstrument table
    //     TeacherInstrument.Init();
    //     TeacherInstrument.SetRange(MusicTeacherID, Rec.MusicTeacherID);
    //     TeacherInstrument.SetRange("InstrumentID", Rec.InstrumentID);
    //     if TeacherInstrument.FindSet then begin
    //         TeacherInstrument.MusicTeacherID := Rec.MusicTeacherID;
    //         TeacherInstrument.InstrumentID := Rec.InstrumentID;
    //         TeacherInstrument.Modify;
    //     end;
    // end;

    // trigger OnDelete()
    // var
    //     StudentInstrument: Record StudentInstrument;
    //     TeacherInstrument: Record TeacherInstrument;
    // begin
    //     // Delete the record from StudentInstrument table
    //     StudentInstrument.SetRange("MusicStudentID", Rec."No.");
    //     StudentInstrument.SetRange("InstrumentID", Rec.InstrumentID);
    //     if StudentInstrument.FindSet then begin
    //         StudentInstrument.Delete;
    //     end;

    //     // Delete the record from TeacherInstrument table
    //     TeacherInstrument.SetRange("MusicTeacherID", Rec.MusicTeacherID);
    //     TeacherInstrument.SetRange("InstrumentID", Rec.InstrumentID);
    //     if TeacherInstrument.FindSet then begin
    //         TeacherInstrument.Delete;
    //     end;
    // end;

}