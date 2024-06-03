tableextension 50151 "Ext Purchase Header" extends "Purchase Header"
{
    fields
    {
        field(50100; "Purchase Contract No."; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "Quantity Description"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50102; "Packing"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "Shipment"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50104; "Payment"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50105; "Work Description"; BLOB)
        {
            Caption = 'Work Description';
        }
        field(50106; "Purchase Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    procedure SetWorkDescription(NewWorkDescription: Text)
    var
        OutStream: OutStream;
    begin
        Clear("Work Description");
        "Work Description".CreateOutStream(OutStream, TEXTENCODING::UTF8);
        OutStream.WriteText(NewWorkDescription);
        Modify();
    end;

    procedure GetWorkDescription() WorkDescription: Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        CalcFields("Work Description");
        "Work Description".CreateInStream(InStream, TEXTENCODING::UTF8);
        exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), FieldName("Work Description")));
    end;
}