codeunit 50103 InstallCodeTeacherInstrument
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertTeacherInstrument('MT020', 'Guitar');
        InsertTeacherInstrument('MT020', 'Bass');
        InsertTeacherInstrument('MT019', 'Piano');
        InsertTeacherInstrument('MT019', 'Guitar');
        InsertTeacherInstrument('MT018', 'Piano');
        InsertTeacherInstrument('MT018', 'Voice');
        InsertTeacherInstrument('MT017', 'Harp');
        InsertTeacherInstrument('MT017', 'Piano');
        InsertTeacherInstrument('MT016', 'Guitar');
        InsertTeacherInstrument('MT016', 'Drums');
        InsertTeacherInstrument('MT015', 'Voice');
        InsertTeacherInstrument('MT015', 'Piano');
        InsertTeacherInstrument('MT014', 'Cello');
        InsertTeacherInstrument('MT014', 'Violin');
        InsertTeacherInstrument('MT013', 'Saxophone');
        InsertTeacherInstrument('MT013', 'Clarinet');
        InsertTeacherInstrument('MT012', 'Guitar');
        InsertTeacherInstrument('MT012', 'Piano');
        InsertTeacherInstrument('MT011', 'Trombone');
        InsertTeacherInstrument('MT011', 'Trumpet');
        InsertTeacherInstrument('MT010', 'Sitar');
        InsertTeacherInstrument('MT010', 'Tabla');
        InsertTeacherInstrument('MT009', 'Bass');
        InsertTeacherInstrument('MT009', 'Guitar');
        InsertTeacherInstrument('MT008', 'Organ');
        InsertTeacherInstrument('MT008', 'Piano');
        InsertTeacherInstrument('MT007', 'Piano');
        InsertTeacherInstrument('MT007', 'Voice');
        InsertTeacherInstrument('MT006', 'Clarinet');
        InsertTeacherInstrument('MT006', 'Flute');
        InsertTeacherInstrument('MT005', 'Guitar');
        InsertTeacherInstrument('MT005', 'Bass');
        InsertTeacherInstrument('MT004', 'Viola');
        InsertTeacherInstrument('MT004', 'Violin');
        InsertTeacherInstrument('MT003', 'Percussion');
        InsertTeacherInstrument('MT003', 'Drums');
        InsertTeacherInstrument('MT002', 'Voice');
        InsertTeacherInstrument('MT002', 'Piano');
        InsertTeacherInstrument('MT001', 'Guitar');
        InsertTeacherInstrument('MT001', 'Piano');
    end;

    local procedure InsertTeacherInstrument(MusicTeacherID: Code[20]; InstrumentID: Code[20])
    var
        TeacherInstrument: Record TeacherInstrument;
    begin
        if TeacherInstrument.Get(MusicTeacherID, InstrumentID) then
            exit;

        TeacherInstrument.MusicTeacherID := MusicTeacherID;
        TeacherInstrument.InstrumentID := InstrumentID;
        TeacherInstrument.Insert;
    end;
}