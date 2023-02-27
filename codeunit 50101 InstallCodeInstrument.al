codeunit 50101 InstallCodeInstrument
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertInstrument('MI001', 'Guitar', 'Acoustic and electric guitars');
        InsertInstrument('MI002', 'Piano', 'Grand, upright, and digital pianos');
        InsertInstrument('MI003', 'Voice', 'Singing and vocal performance');
        InsertInstrument('MI004', 'Drums', 'Acoustic and electronic drum kits');
        InsertInstrument('MI005', 'Percussion', 'Congas, bongos, djembes, and more');
        InsertInstrument('MI006', 'Violin', 'Acoustic and electric violins');
        InsertInstrument('MI007', 'Viola', 'Acoustic and electric violas');
        InsertInstrument('MI008', 'Bass', 'Electric bass guitars');
        InsertInstrument('MI009', 'Flute', 'Silver and gold concert flutes');
        InsertInstrument('MI010', 'Clarinet', 'Bb and bass clarinets');
        InsertInstrument('MI011', 'Organ', 'Pipe and digital organs');
        InsertInstrument('MI012', 'Tabla', 'North Indian percussion instrument');
        InsertInstrument('MI013', 'Sitar', 'Indian classical string instrument');
        InsertInstrument('MI014', 'Trumpet', 'Bb and C trumpets');
        InsertInstrument('MI015', 'Trombone', 'Tenor and bass trombones');
        InsertInstrument('MI016', 'Cello', 'Acoustic and electric cellos');
        InsertInstrument('MI017', 'Saxophone', 'Alto, tenor, and baritone saxophones');
        InsertInstrument('MI018', 'Harp', 'Concert and lever harps');
    end;

    local procedure InsertInstrument(InstrumentID: Code[20]; InstrumentName: Text; Description: Text)
    var
        Instrument: Record Instrument;
    begin
        if Instrument.Get(InstrumentID) then
            exit;

        Instrument.InstrumentID := InstrumentID;
        Instrument.InstrumentName := InstrumentName;
        Instrument.Description := Description;
        Instrument.Insert;
    end;
}

