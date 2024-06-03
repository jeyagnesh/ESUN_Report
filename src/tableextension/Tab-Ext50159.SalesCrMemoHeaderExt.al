tableextension 50159 "SalesCrMemoHeader Ext" extends "Sales Cr.Memo Header"
{
    fields
    {
        field(50106; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
}
