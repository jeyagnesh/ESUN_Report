pageextension 50170 PostedSalesShipmentSubformExt extends "Posted Sales Shpt. Subform"
{
    actions
    {
        addafter("&Line")
        {
            action("Modify Description")
            {
                ApplicationArea = All;
                RunObject = page "SalesShipmentLine Edit";
                RunPageLink = "Document No." = field("Document No.");
                RunPageMode = Edit;
            }
        }
    }
}

