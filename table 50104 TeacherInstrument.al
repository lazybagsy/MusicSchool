table 50104 TeacherInstrument
{
    fields
    {
        field(50100; MusicTeacherID; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = MusicTeacher."MusicTeacherID";
        }
        field(50101; InstrumentID; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Instrument."InstrumentID";
        }
    }

    keys
    {
        key(PK; MusicTeacherID, InstrumentID)
        {
            Clustered = true;
        }
    }
}