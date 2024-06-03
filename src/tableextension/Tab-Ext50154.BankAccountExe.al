tableextension 50154 BankAccountExe extends "Bank Account"
{
    fields
    {
        field(50154; "Intermediary Bank"; Code[100])
        {

        }
        field(50155; "Intermediary Bank Swift Code"; Code[100])
        {

        }
        field(50156; "Pay Now"; Code[100])
        {

        }
    }
    keys
    {
        key(key6; "Search Name")
        {

        }
    }
    fieldgroups
    {
        // Add changes to field groups here
    }
    var
        myInt: Integer;
}