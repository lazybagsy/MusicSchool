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

            trigger OnValidate()
            var
                // MusicStudentExt: Record MusicStudentExtension;
                MusicTeacher: Record MusicTeacher;
                Instrument: Record Instrument;
                StudentInstrument: Record StudentInstrument;
                TeacherInstrument: Record TeacherInstrument;
            begin
                // if modifiedfieldno = fieldnum(Customer, "No.") then begin
                //     MusicStudentExt.get(Customer."No.");
                //     MusicTeacher.get(MusicStudentExt.MusicTeacherID);
                //     Instrument.get(MusicTeacher.AreasOfExpertise);
                if MusicTeacher."MusicTeacherID" <> '' then begin
                    StudentInstrument.setrange(StudentInstrument.MusicStudentID, MusicStudentID);
                    StudentInstrument.setrange(StudentInstrument.InstrumentID, Instrument.InstrumentID);
                    StudentInstrument.findfirst();
                    if StudentInstrument."MusicStudentID" <> '' then begin
                        StudentInstrument.Modify(true);
                        StudentInstrument.InstrumentID := Instrument.InstrumentID;
                        StudentInstrument.Insert(true);
                    end;

                    TeacherInstrument.setrange(TeacherInstrument.MusicTeacherID, MusicTeacher."MusicTeacherID");
                    TeacherInstrument.setrange(TeacherInstrument.InstrumentID, Instrument.InstrumentID);
                    TeacherInstrument.findfirst();
                    if TeacherInstrument."MusicTeacherID" <> '' then begin
                        TeacherInstrument.Modify(true);
                        TeacherInstrument.InstrumentID := Instrument.InstrumentID;
                        TeacherInstrument.Insert(true);
                    end;
                end;
                // end;
            end;



        }

        field(50102; InstrumentID; Code[20])
        {
            TableRelation = Instrument."InstrumentID";
            DataClassification = CustomerContent;
        }

    }
}