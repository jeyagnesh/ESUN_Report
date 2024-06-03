pageextension 50169 "PostedSalesInvoiceSubform Ext" extends "Posted Sales Invoice Subform"
{
    actions
    {
        addafter("&Line")
        {
            action("Modify Description")
            {
                ApplicationArea = All;
                RunObject = page "SalesInvoiceLine Edit";
                RunPageLink = "Document No." = field("Document No.");
                RunPageMode = Edit;
            }
        }
    }
}
