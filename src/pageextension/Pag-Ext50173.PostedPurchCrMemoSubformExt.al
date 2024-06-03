pageextension 50173 PostedPurchCrMemoSubformExt extends "Posted Purch. Cr. Memo Subform"
{
    actions
    {
        addafter("&Line")
        {
            action("Modify Description")
            {
                ApplicationArea = All;
                RunObject = page "PurchCrMemoLine Edit";
                RunPageLink = "Document No." = field("Document No.");
                RunPageMode = Edit;
            }
        }
    }
}
