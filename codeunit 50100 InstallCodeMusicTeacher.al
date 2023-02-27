codeunit 50100 InstallCode
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertMusicTeacher('MT001', 'John Smith', 'johnsmith@email.com', 'Guitar, Piano');
        InsertMusicTeacher('MT002', 'Jane Doe', 'janedoe@email.com', 'Voice, Piano');
        InsertMusicTeacher('MT003', 'David Lee', 'davidlee@email.com', 'Drums, Percussion');
        InsertMusicTeacher('MT004', 'Alice Chang', 'alicechang@email.com', 'Violin, Viola');
        InsertMusicTeacher('MT005', 'Chris Baker', 'chrisbaker@email.com', 'Bass, Guitar');
        InsertMusicTeacher('MT006', 'Emily Chen', 'emilychen@email.com', 'Flute, Clarinet');
        InsertMusicTeacher('MT007', 'James Lee', 'jameslee@email.com', 'Voice, Piano');
        InsertMusicTeacher('MT008', 'Julia Kim', 'juliakim@email.com', 'Piano, Organ');
        InsertMusicTeacher('MT009', 'Matt Johnson', 'mattjohnson@email.com', 'Guitar, Bass');
        InsertMusicTeacher('MT010', 'Nina Patel', 'ninapatel@email.com', 'Tabla, Sitar');
        InsertMusicTeacher('MT011', 'Oliver Brown', 'oliverbrown@email.com', 'Trumpet, Trombone');
        InsertMusicTeacher('MT012', 'Patrick Lee', 'patricklee@email.com', 'Piano, Guitar');
        InsertMusicTeacher('MT013', 'Rebecca Davis', 'rebeccadavis@email.com', 'Clarinet, Saxophone');
        InsertMusicTeacher('MT014', 'Robert Chen', 'robertchen@email.com', 'Violin, Cello');
        InsertMusicTeacher('MT015', 'Samantha Kim', 'samanthakim@email.com', 'Piano, Voice');
        InsertMusicTeacher('MT016', 'Thomas Wilson', 'thomaswilson@email.com', 'Drums, Guitar');
        InsertMusicTeacher('MT017', 'Victoria Chang', 'victoriachang@email.com', 'Piano, Harp');
        InsertMusicTeacher('MT018', 'William Lee', 'williamlee@email.com', 'Voice, Piano');
        InsertMusicTeacher('MT019', 'Yvonne Lee', 'yvonnelee@email.com', 'Guitar, Piano');
        InsertMusicTeacher('MT020', 'Zack Smith', 'zacksmith@email.com', 'Bass, Guitar');
    end;

    local procedure InsertMusicTeacher(MusicTeacherID: Code[20]; Name: Text; ContactInformation: Text; AreasOfExpertise: Text)
    var
        MusicTeacher: Record MusicTeacher;
    begin
        if MusicTeacher.Get(MusicTeacherID) then
            exit;

        MusicTeacher.MusicTeacherID := MusicTeacherID;
        MusicTeacher.Name := Name;
        MusicTeacher.ContactInformation := ContactInformation;
        MusicTeacher.AreasOfExpertise := AreasOfExpertise;
        MusicTeacher.Insert;
    end;
}

