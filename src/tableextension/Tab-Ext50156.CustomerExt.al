tableextension 50156 "Customer Ext" extends Customer
{
    fields
    {
        field(50150; "Company Bank Account Code"; Code[20])
        {
            Caption = 'Company Bank Account Code';
            TableRelation = "Bank Account";
        }
    }
}
