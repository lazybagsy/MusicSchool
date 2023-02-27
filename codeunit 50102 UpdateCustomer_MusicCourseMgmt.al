codeunit 50102 UpdateCustomer_MusicCourseMgmt
{
    procedure OnAfterModifyCustomerRecord(var Customer: Record Customer)
    var
        studentInstrument: Record StudentInstrument;
        teacherInstrument: Record TeacherInstrument;
    begin
        // Update student instruments table
        studentInstrument.SetRange(MusicStudentID, Customer."No.");
        studentInstrument.SetRange(InstrumentID, '');
        if studentInstrument.FindSet() then begin
            repeat
                studentInstrument.InstrumentID := Customer.InstrumentID;
                studentInstrument.Modify;
            until studentInstrument.Next = 0;
        end
        else begin
            studentInstrument.Init;
            studentInstrument.MusicStudentID := Customer."No.";
            studentInstrument.InstrumentID := Customer.InstrumentID;
            studentInstrument.Insert;
        end;

        // Update teacher instruments table
        teacherInstrument.SetRange(MusicTeacherID, Customer.MusicTeacherID);
        teacherInstrument.SetRange(InstrumentID, '');
        if teacherInstrument.FindSet() then begin
            repeat
                teacherInstrument.InstrumentID := Customer.InstrumentID;
                teacherInstrument.Modify;
            until teacherInstrument.Next = 0;
        end
        else begin
            teacherInstrument.Init;
            teacherInstrument.MusicTeacherID := Customer."No.";
            teacherInstrument.InstrumentID := Customer.InstrumentID;
            teacherInstrument.Insert;
        end;
    end;
}