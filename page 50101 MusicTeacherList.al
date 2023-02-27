page 50101 MusicTeacherList
{
    PageType = List;
    SourceTable = MusicTeacher;
    CardPageId = "Music Teacher";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Music Teacher ID"; Rec.MusicTeacherID)
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Contact Information"; Rec.ContactInformation)
                {
                    ApplicationArea = All;
                }
                field("Areas of Expertise"; Rec.AreasOfExpertise)
                {
                    ToolTip = 'Enter the areas of expertise for the music teacher';
                }
            }
        }
    }
}
