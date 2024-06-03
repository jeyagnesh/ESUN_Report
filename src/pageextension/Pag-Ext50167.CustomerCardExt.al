pageextension 50167 "CustomerCard Ext" extends "Customer Card"
{
    layout
    {
        addafter("Privacy Blocked")
        {
            field("Company Bank Account Code"; Rec."Company Bank Account Code")
            {
                ApplicationArea = All;
            }
        }
        addlast(Payments)
        {
            field("IEC Code"; Rec."IEC Code")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addlast(reporting)
        {
            action(UnshippedItem)
            {
                Caption = 'Unshipped Items';
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Report;

                trigger OnAction()
                var
                    salesLine: Record "Sales Line";
                begin
                    salesLine.Reset();
                    salesLine.SetRange("Document Type", salesLine."Document Type"::Order);
                    salesLine.SetFilter("Outstanding Quantity", '>%1', 0);
                    salesLine.SetRange("Sell-to Customer No.", Rec."No.");
                    if salesLine.FindSet() then
                        Report.Run(Report::"Unshipped Items", true, false, salesLine);

                end;
            }
        }
    }
}
