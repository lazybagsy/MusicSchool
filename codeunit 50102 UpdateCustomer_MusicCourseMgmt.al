codeunit 50102 UpdateCustomer_MusicCourseMgmt
{
    procedure OnAfterModifyCustomerRecord(var Customer: Record Customer)
    var
        studentInstrument: Record StudentInstrument;
    // teacherInstrument: Record TeacherInstrument;
    begin
        // Update student instruments table
        studentInstrument.SetRange(MusicStudentID, Customer."No.");
        studentInstrument.SetRange(InstrumentID, Customer.InstrumentID);
        if studentInstrument.Find('-') then begin
            repeat
                studentInstrument.MusicStudentID := Customer."No.";
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
    end;
}