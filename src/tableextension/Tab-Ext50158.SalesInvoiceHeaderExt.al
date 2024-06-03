tableextension 50158 "SalesInvoiceHeader Ext" extends "Sales Invoice Header"
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
