
pageextension 50158 "Posted Sales Inv. - Update" extends "Posted Sales Inv. - Update"
{
    layout
    {
        addafter("Company Bank Account Code")
        {
            field("Payment Terms Code"; Rec."Payment Terms Code")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        // Add changes to page actions here
    }
    var
        myInt: Integer;
}