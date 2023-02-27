table 50102 Instrument
{
    fields
    {
        field(50100; InstrumentID; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(50101; InstrumentName; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50102; Description; Text[250])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; InstrumentID)
        {
            Clustered = true;
        }
    }
}