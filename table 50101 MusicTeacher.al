table 50101 MusicTeacher
{
    fields
    {
        field(50100; MusicTeacherID; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(50101; Name; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50102; ContactInformation; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(50103; AreasOfExpertise; Text[250])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; MusicTeacherID)
        {
            Clustered = true;
        }
    }
}
