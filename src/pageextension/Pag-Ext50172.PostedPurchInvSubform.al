pageextension 50172 PostedPurchInvSubform extends "Posted Purch. Invoice Subform"
{
    actions
    {
        addafter("&Line")
        {
            action("Modify Description")
            {
                ApplicationArea = All;
                RunObject = page "PurchInvLine Edit";
                RunPageLink = "Document No." = field("Document No.");
                RunPageMode = Edit;
            }
        }
    }
}
