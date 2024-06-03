tableextension 50155 "PurchCrMemoHdr Ext" extends "Purch. Cr. Memo Hdr."
{
    fields
    {
        field(50105; "Work Description"; BLOB)
        {
            Caption = 'Work Description';
        }
        field(50106; "Purchase Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50107; "Vendor Order No."; Code[35])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50108; "Vendor Invoice No."; Code[35])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    procedure SetWorkDescription(NewWorkDescription: Text)
    var
        OutStream: OutStream;
    begin
        Clear("Work Description");
        "Work Description".CreateOutStream(OutStream, TEXTENCODING::UTF8);
        OutStream.WriteText(NewWorkDescription);
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
