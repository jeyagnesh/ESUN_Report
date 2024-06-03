pageextension 50171 PostedSalesCrMemoSubformExt extends "Posted Sales Cr. Memo Subform"
{
    actions
    {
        addafter("&Line")
        {
            action("Modify Description")
            {
                ApplicationArea = All;
                RunObject = page "SalesCreditMemoLine Edit";
                RunPageLink = "Document No." = field("Document No.");
                RunPageMode = Edit;
            }
        }
    }
}
