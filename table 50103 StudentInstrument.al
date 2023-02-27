table 50103 StudentInstrument
{
    fields
    {
        field(50100; MusicStudentID; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Customer."No.";
        }
        field(50104; InstrumentID; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Instrument."InstrumentID";
        }
    }

    keys
    {
        key(PK; MusicStudentID, InstrumentID)
        {
            Clustered = true;
        }
    }
}