page 50100 "Music Teacher"
{
    PageType = Card;
    SourceTable = MusicTeacher;

    layout
    {
        area(content)
        {
            group(Information)
            {
                field("Music Teacher ID"; Rec.MusicTeacherID)
                {
                    ApplicationArea = All;
                    Caption = 'Music Teacher ID';
                    ToolTip = 'Enter the unique ID for the music teacher';
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                    ToolTip = 'Enter the name of the music teacher';
                }
                field("Contact Information"; Rec.ContactInformation)
                {
                    ApplicationArea = All;
                    Caption = 'Contact Information';
                    ToolTip = 'Enter the contact information for the music teacher';
                }
                field("Areas of Expertise"; Rec.AreasOfExpertise)
                {
                    ApplicationArea = All;
                    Caption = 'Areas of Expertise';
                    ToolTip = 'Enter the areas of expertise for the music teacher';
                }
            }
        }
    }
}