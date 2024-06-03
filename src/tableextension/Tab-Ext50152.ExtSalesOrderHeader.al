tableextension 50152 "Ext Sales Order Header" extends "Sales Header"
{
    fields
    {
        field(50100; "Sales Contract No."; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "Collecting Bank"; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(50102; "Quantity Description"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "Packing"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50104; "Shipment"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50105; "Payment"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50106; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        modify("Sell-to Customer No.")
        {
            trigger OnAfterValidate()
            begin
                if Customer.Get("Sell-to Customer No.") then begin
                    Rec."Company Bank Account Code" := Customer."Company Bank Account Code";
                end;
            end;
        }
    }
    var
        Customer: Record Customer;
}