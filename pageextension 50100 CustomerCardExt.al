pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("InstrumentID"; Rec."InstrumentID")
            {
                ApplicationArea = All;
            }
            field("MusicTeacherID"; Rec."MusicTeacherID")
            {
                ApplicationArea = All;
            }
        }
    }
}