codeunit 50103 InstallCodeTeacherInstrument
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertTeacherInstrument('MT020', 'MI001');
        InsertTeacherInstrument('MT020', 'MI008');
        InsertTeacherInstrument('MT019', 'MI002');
        InsertTeacherInstrument('MT019', 'MI001');
        InsertTeacherInstrument('MT018', 'MI002');
        InsertTeacherInstrument('MT018', 'MI003');
        InsertTeacherInstrument('MT017', 'MI018');
        InsertTeacherInstrument('MT017', 'MI002');
        InsertTeacherInstrument('MT016', 'MI001');
        InsertTeacherInstrument('MT016', 'MI004');
        InsertTeacherInstrument('MT015', 'MI003');
        InsertTeacherInstrument('MT015', 'MI002');
        InsertTeacherInstrument('MT014', 'MI016');
        InsertTeacherInstrument('MT014', 'MI006');
        InsertTeacherInstrument('MT013', 'MI017');
        InsertTeacherInstrument('MT013', 'MI010');
        InsertTeacherInstrument('MT012', 'MI001');
        InsertTeacherInstrument('MT012', 'MI002');
        InsertTeacherInstrument('MT011', 'MI015');
        InsertTeacherInstrument('MT011', 'MI014');
        InsertTeacherInstrument('MT010', 'MI013');
        InsertTeacherInstrument('MT010', 'MI012');
        InsertTeacherInstrument('MT009', 'MI008');
        InsertTeacherInstrument('MT009', 'MI001');
        InsertTeacherInstrument('MT008', 'MI011');
        InsertTeacherInstrument('MT008', 'MI002');
        InsertTeacherInstrument('MT007', 'MI002');
        InsertTeacherInstrument('MT007', 'MI003');
        InsertTeacherInstrument('MT006', 'MI010');
        InsertTeacherInstrument('MT006', 'MI009');
        InsertTeacherInstrument('MT005', 'MI001');
        InsertTeacherInstrument('MT005', 'MI008');
        InsertTeacherInstrument('MT004', 'MI007');
        InsertTeacherInstrument('MT004', 'MI006');
        InsertTeacherInstrument('MT003', 'MI005');
        InsertTeacherInstrument('MT003', 'MI004');
        InsertTeacherInstrument('MT002', 'MI003');
        InsertTeacherInstrument('MT002', 'MI002');
        InsertTeacherInstrument('MT001', 'MI001');
        InsertTeacherInstrument('MT001', 'MI002');
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